/*
 * lib/usbopen.c - Common USB device lookup and open code
 *
 * Written 2008-2011 by Werner Almesberger
 * Copyright 2008-2011 Werner Almesberger
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 */



#include <stdarg.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include <libusb-1.0/libusb.h>

#include "usbopen.h"


#define	USB_PATH_ROOT	"/sys/bus/usb/devices/"
#define	USB_BUS_LEAF	"/busnum"
#define	USB_DEV_LEAF	"/devnum"

static uint16_t vendor = 0;
static uint16_t product = 0;
static const struct usb_device *restricted_path = NULL;
static int initialized = 0;

static libusb_context *libusb_ctx;

static void initialize(void)
{
	int res;

	if (initialized)
		return;
	initialized = 1;

	if ( NULL == libusb_ctx ) {
		res = libusb_init( &libusb_ctx );
		if (res < 0) {
			fprintf(stderr, "libusb_init: %d\n", res);
			exit(1);
		}
	}
//	usb_find_busses();
//	usb_find_devices();
}


void usb_rescan(void)
{
	initialized = 0;
}

libusb_device_handle *open_usb(uint16_t default_vendor, uint16_t default_product)
{
	const struct usb_bus *bus;
	struct usb_device *dev;
	libusb_device_handle *handle;
#ifdef DO_FULL_USB_BUREAUCRACY
	int res;
#endif

	initialize();

	if (!vendor)
		vendor = default_vendor;
	if (!product)
		product = default_product;

	handle = libusb_open_device_with_vid_pid( libusb_ctx, vendor, product );
//
//	for (bus = usb_get_busses(); bus; bus = bus->next)
//		for (dev = bus->devices; dev; dev = dev->next) {
//			if (restricted_path && restricted_path != dev)
//				continue;
//			if (vendor && dev->descriptor.idVendor != vendor)
//				continue;
//			if (product && dev->descriptor.idProduct != product)
//				continue;
//			handle = usb_open(dev);
//#ifdef DO_FULL_USB_BUREAUCRACY
//			if (!handle)
//				return NULL;
//			res = usb_set_configuration(handle, 1);
//			if (res < 0) {
//				fprintf(stderr, "usb_set_configuration: %d\n",
//				    res);
//				return NULL;
//			}
//			res = usb_claim_interface(handle, 0);
//			if (res < 0) {
//				fprintf(stderr, "usb_claim_interface: %d\n",
//				    res);
//				return NULL;
//			}
//			res = usb_set_altinterface(handle, 0);
//			if (res < 0) {
//				fprintf(stderr, "usb_set_altinterface: %d\n",
//				    res);
//				return NULL;
//			}
//#endif
//			return handle;
//		}
//	return NULL;
	return handle;
}


static void bad_id(const char *id)
{
	fprintf(stderr, "\"%s\" is not a valid [vendor]:[product] ID\n", id);
	exit(1);
}


void parse_usb_id(const char *id)
{
	unsigned long tmp;
	char *end;

	if (*id == ':') {
		vendor = 0;
		end = (char *) id; /* ugly */
	} else {
		tmp = strtoul(id, &end, 16);
		if (*end != ':')
			bad_id(id);
		if (tmp > 0xffff)
			bad_id(id);
		vendor = tmp;
	}
	if (!*end)
		bad_id(id);
	if (!end[1])
		product = 0;
	else {
		tmp = strtoul(end+1, &end, 16);
		if (*end)
			bad_id(id);
		if (tmp > 0xffff)
			bad_id(id);
		product = tmp;
	}
}


static void restrict_usb_dev(int bus_num, int dev_num)
{
//	const struct usb_bus *bus;
//	const struct usb_device *dev;
//
//	initialize();
//
//	for (bus = usb_busses; bus; bus = bus->next) {
//		if (atoi(bus->dirname) != bus_num)
//			continue;
//		for (dev = bus->devices; dev; dev = dev->next)
//			if (dev->devnum == dev_num) {
//				restricted_path = dev;
//				return;
//			}
//	}
//	fprintf(stderr, "no device %d/%d\n", bus_num, dev_num);
//	exit(1);
}


static void restrict_usb_by_dev(const char *path)
{
	int bus_num, dev_num;

	if (sscanf(path, "%d/%d", &bus_num, &dev_num) != 2) {
		fprintf(stderr, "invalid device syntax \"%s\"\n", path);
		exit(1);
	}
	restrict_usb_dev(bus_num, dev_num);
}


static int read_num(const char *fmt, ...)
{
	va_list ap;
	FILE *file;
	char *buf;
	int n, num;

	va_start(ap, fmt);
	n = vsnprintf(NULL, 0, fmt, ap);
	va_end(ap);

	buf = malloc(n+1);
	if (!buf) {
		perror("malloc");
		exit(1);
	}

	va_start(ap, fmt);
	vsprintf(buf, fmt, ap);
	va_end(ap);

	file = fopen(buf, "r");
	if (!file) {
		perror(buf);
		exit(1);
	}

	n = fscanf(file, "%d", &num);
	if (n <0) {
		perror(buf);
		exit(1);
	}
	if (n != 1) {
		fprintf(stderr, "%s: can't read number\n", buf);
		exit(1);
	}

	fclose(file);
	free(buf);

	return num;
}


static void restrict_usb_by_port(const char *path)
{
	const char *p;
	int bus_num, dev_num;

	/*
	 * We sanitize the path, in case we're part of a program running with
	 * suid.
	 */
	for (p = path; *p; p++)
		if (!strchr("0123456789-.", *p)) {
			fprintf(stderr,
			    "invalid character \'%c\' in USB path\n", *p);
			exit(1);
		}

	bus_num = read_num("%s%s%s", USB_PATH_ROOT, path, USB_BUS_LEAF);
	dev_num = read_num("%s%s%s", USB_PATH_ROOT, path, USB_DEV_LEAF);
	restrict_usb_dev(bus_num, dev_num);
}


void restrict_usb_path(const char *path)
{
	if (strchr(path, '/'))
		restrict_usb_by_dev(path);
	else
		restrict_usb_by_port(path);
}


void usb_unrestrict(void)
{
	vendor = 0;
	product = 0;
	restricted_path = NULL;
}
