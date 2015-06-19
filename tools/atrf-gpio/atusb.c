/*
 * atrf-gpio/atusb.c - ATUSB-specific GPIO driver
 *
 * Written 2011 by Werner Almesberger
 * Copyright 2011 Werner Almesberger
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 */


#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>

#include <libusb-1.0/libusb.h>

#include "atusb/ep0.h"
#include "atrf.h"

#include "atrf-gpio.h"


#define	FROM_DEV	ATUSB_FROM_DEV(0)
#define	TO_DEV		ATUSB_TO_DEV(0)


static const char *name[24] = {
	"PB0",		"PB1/P16",	"PB2/P15",	"PB3/P14",
	"PB4/SLP_TR",	"PB5",		"PB6/LED",	"PB7",
	"PC0",		"PC1/P13",	"PC2",		"PC3(NC)",
	"PC4",		"PC5",		"PC6",		"PC7/nRST_RF",
	"PD0/IRQ_RF",	"PD1/nSS",	"PD2/MISO",	"PD3/MOSI",
	"PD4",		"PD5/SCLK",	"PD6",		"PD7"
};


static struct atrf_dsc *orig_dsc;
static uint8_t orig_data[3], orig_dir[3];


static void dump_port(int port, uint8_t data, uint8_t dir, uint8_t mask)
{
	int i;

	fprintf(stderr, "name\t\tcfg\n");
	for (i = 0; i != 8; i++) {
		int bit = 1 << (i & 7);

		fprintf(stderr, "%-16s%c\n", name[port*8+i],
		    mask & bit ? dir & bit ? data & bit ? '1' : '0' :
		    data & bit ? 'R' : 'Z' : 'x');
	}
}


static uint8_t gpio(struct atrf_dsc *dsc,
    uint8_t port, uint8_t *data, uint8_t *dir, uint8_t mask)
{
	uint8_t buf[3];
	int res;

	res = libusb_control_transfer(atrf_usb_handle(dsc),
            FROM_DEV, ATUSB_GPIO, *dir << 8 | *data, mask << 8 | port,
	    (void *) buf, sizeof(buf), 1000);
	if (res < 0) {
		dump_port(port-1, *data, *dir, mask);
		fprintf(stderr, "ATUSB_GPIO: %s\n", libusb_strerror(res));
		_exit(1);
	}
	if (res != 3) {
		fprintf(stderr, "ATUSB_GPIO: expected 3 bytes, got %d\n", res);
		_exit(1);
	}
	*data = buf[1];
	*dir = buf[2];
	return buf[0];
}


static void dump(const uint8_t *data, const uint8_t *dir,
    const uint8_t *expect, const uint8_t *got, const uint8_t *read)
{
	int i;

	fprintf(stderr, "name\t\tcfg exp got\n");
	for (i = 0; i != 24; i++) {
		int port = i >> 3;
		int bit = 1 << (i & 7);

		fprintf(stderr, "%-16s%c   %c   %d", name[i],
		    dir[port] & bit ? data[port] & bit ? '1' : '0' :
		    data[port] & bit ? 'R' : 'Z',
		    read[port] & bit ? expect[port] & bit ? '1' : '0' : '-',
		    !!(got[port] & bit));
		if ((expect[port] ^ got[port]) & read[port] & bit)
			fprintf(stderr, "\t***");
		fputc('\n', stderr);
	}
}


/* ----- Decode and apply pattern ------------------------------------------ */


static void restore_gpios(void)
{
	int i, res;

	for (i = 0; i != 3; i++)
		gpio(orig_dsc, i+1, orig_data+i, orig_dir+i, 0xff);

	res = libusb_control_transfer(atrf_usb_handle(orig_dsc),
	    TO_DEV, ATUSB_GPIO_CLEANUP, 0, 0, NULL, 0, 1000);
	if (res < 0) {
		fprintf(stderr, "ATUSB_GPIO_CLEANUP: %s\n", libusb_strerror(res));
		_exit(1);
	}
}


void do_atusb(struct atrf_dsc *dsc, const char *pattern, const char *next)
{
	static int first = 1;
	const char *p;
	int i, pin = 0;
	uint8_t data[3], dir[3], mask[3], read[3], expect[3], got[3];
	uint8_t bit;
	int port;

	data[0] = data[1] = data[2] = 0;
	dir[0] = dir[1] = dir[2] = 0;
	mask[0] = mask[1] = mask[2] = 0;
	read[0] = read[1] = read[2] = 0;
	expect[0] = expect[1] = expect[2] = 0;

	if (first) {
		orig_dsc = dsc;
		for (i = 0; i != 3; i++)
			gpio(dsc, i+1, orig_data+i, orig_dir+i, 0);
		atexit(restore_gpios);
		first = 0;
	}

	for (p = pattern; *p; p++) {
		bit = 1 << (pin & 7);
		port = pin >> 3;
		switch (*p) {
		case '1':
			data[port] |= bit;
			/* fall through */
		case '0':
			dir[port] |= bit;
			mask[port] |= bit;
			break;
		case 'H':
			expect[port] |= bit;
			/* fall through */
		case 'L':
			read[port] |= bit;
			/* fall through */
		case 'Z':
			data[port] |= bit;
			mask[port] |= bit;
			break;
		case 'h':
			expect[port] |= bit;
			/* fall through */
		case 'l':
		case 'o':
			read[port] |= bit;
			/* fall through */
		case 'z':
			mask[port] |= bit;
			break;
		case 'x':
			pin++;
			continue;
		default:
			continue;
		}
		pin++;
	}

	for (i = 0; i <= port; i++)
		got[i] = gpio(dsc, i+1, data+i, dir+i, mask[i]);
	for (i = 0; i <= port; i++)
		if ((got[i] & read[i]) != expect[i]) {
			dump(data, dir, expect, got, read);
			fprintf(stderr, "at \"%s\", next \"%s\"\n", pattern,
			    next);
			exit(1);
		}
}
