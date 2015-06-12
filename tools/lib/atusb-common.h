/*
 * lib/atusb-common.h - ATUSB access functions shared by all ATUSB drivers
 *
 * Written 2010-2011, 2013 by Werner Almesberger
 * Copyright 2010-2011, 2013 Werner Almesberger
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 */


#ifndef ATUSB_COMMON_H
#define	ATUSB_COMMON_H

#include <libusb-1.0/libusb.h>

#define FROM_DEV        ATUSB_FROM_DEV(0)
#define TO_DEV          ATUSB_TO_DEV(0)


struct atusb_dsc {
	libusb_device_handle *dev;
	int error;
};


int atusb_error(void *handle);
int atusb_clear_error(void *handle);
void *atusb_open(const char *arg);
void atusb_close(void *handle);
void atusb_reset(void *handle);
void atusb_reset_rf(void *handle);
void atusb_test_mode(void *handle);
void atusb_slp_tr(void *handle, int on, int pulse);
int atusb_interrupt_wait(void *handle, int timeout_ms);
void atusb_rx_mode(void *handle, int on);
int atusb_rx(void *handle, void *buf, int size, int timeout_ms, uint8_t *lqi);
void atusb_tx(void *handle, const void *buf, int size);

int atusb_set_clkm(void *handle, int mhz);

#endif /* !ATUSB_COMMON_H */
