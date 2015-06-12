/*
 * lib/usbopen.h - Common USB device lookup and open code
 *
 * Written 2008-2011 by Werner Almesberger
 * Copyright 2008-2011 Werner Almesberger
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 */


#ifndef USB_OPEN_H
#define USB_OPEN_H

#include <stdint.h>
#include <libusb-1.0/libusb.h>


libusb_device_handle *open_usb(uint16_t default_vendor, uint16_t default_product);
void usb_rescan(void);
void parse_usb_id(const char *id);
void restrict_usb_path(const char *path);
void usb_unrestrict(void);

#endif /* !USB_OPEN_H */
