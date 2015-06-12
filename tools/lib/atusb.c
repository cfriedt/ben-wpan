/*
 * lib/atusb.c - ATUSB access functions library (USB version)
 *
 * Written 2010-2011, 2013 by Werner Almesberger
 * Copyright 2010-2011, 2013 Werner Almesberger
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 */


#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <libusb-1.0/libusb.h>

#include "atusb/ep0.h"

#include "usbopen.h"
#include "driver.h"
#include "atusb-common.h"


/* ----- register access --------------------------------------------------- */


static void atusb_reg_write(void *handle, uint8_t reg, uint8_t value)
{
	struct atusb_dsc *dsc = handle;
	int res;

	if (dsc->error)
		return;

	res = libusb_control_transfer(dsc->dev, TO_DEV, ATUSB_REG_WRITE, value, reg,
	    NULL, 0, 1000);
	if (res < 0) {
		fprintf(stderr, "ATUSB_REG_WRITE: %d\n", res);
		dsc->error = 1;
	}
}


static uint8_t atusb_reg_read(void *handle, uint8_t reg)
{
	struct atusb_dsc *dsc = handle;
	uint8_t value = 0;
	int res;

	if (dsc->error)
		return 0;

	res = libusb_control_transfer(dsc->dev, FROM_DEV, ATUSB_REG_READ, 0, reg,
	    (void *) &value, 1, 1000);
	if (res < 0) {
		fprintf(stderr, "ATUSB_REG_READ: %d\n", res);
		dsc->error = 1;
	}
	return value;
}


/* ----- frame buffer access ----------------------------------------------- */


static void atusb_buf_write(void *handle, const void *buf, int size)
{
	struct atusb_dsc *dsc = handle;
	int res;

	if (dsc->error)
		return;

	res = libusb_control_transfer(dsc->dev, TO_DEV, ATUSB_BUF_WRITE, 0, 0,
	    (void *) buf, size, 1000);
	if (res < 0) {
		fprintf(stderr, "ATUSB_BUF_WRITE: %d\n", res);
		dsc->error = 1;
	}
}


static int atusb_buf_read(void *handle, void *buf, int size)
{
	struct atusb_dsc *dsc = handle;
	int res;

	if (dsc->error)
		return -1;

	res = libusb_control_transfer(dsc->dev, FROM_DEV, ATUSB_BUF_READ, 0, 0,
	    buf, size, 1000);
	if (res < 0) {
		fprintf(stderr, "ATUSB_BUF_READ: %d\n", res);
		dsc->error = 1;
	}

	return res;
}


/* ----- SRAM access ------------------------------------------------------- */


static void atusb_sram_write(void *handle, uint8_t addr, uint8_t value)
{
	struct atusb_dsc *dsc = handle;
	int res;

	if (dsc->error)
		return;

	res = libusb_control_transfer(dsc->dev, TO_DEV, ATUSB_SRAM_WRITE, 0, addr,
	    &value, 1, 1000);
	if (res < 0) {
		fprintf(stderr, "ATUSB_SRAM_WRITE: %d\n", res);
		dsc->error = 1;
	}
}


static uint8_t atusb_sram_read(void *handle, uint8_t addr)
{
	struct atusb_dsc *dsc = handle;
	uint8_t value = 0;
	int res;

	if (dsc->error)
		return 0;

	res = libusb_control_transfer(dsc->dev, FROM_DEV, ATUSB_SRAM_READ, 0, addr,
	    (void *) &value, 1, 1000);
	if (res < 0) {
		fprintf(stderr, "ATUSB_SRAM_READ: %d\n", res);
		dsc->error = 1;
	}
	return value;
}


/* ----- driver interface -------------------------------------------------- */


struct atrf_driver atusb_driver = {
	.name		= "usb",
	.open		= atusb_open,
	.close		= atusb_close,
	.error		= atusb_error,
	.clear_error	= atusb_clear_error,
	.reset		= atusb_reset,
	.reset_rf	= atusb_reset_rf,
	.test_mode	= atusb_test_mode,
	.slp_tr		= atusb_slp_tr,
	.set_clkm	= atusb_set_clkm,
	.reg_write	= atusb_reg_write,
	.reg_read	= atusb_reg_read,
	.buf_write	= atusb_buf_write,
	.buf_read	= atusb_buf_read,
	.sram_write	= atusb_sram_write,
	.sram_read	= atusb_sram_read,
	.interrupt_wait	= atusb_interrupt_wait,
	.rx_mode	= atusb_rx_mode,
	.rx		= atusb_rx,
	.tx		= atusb_tx,
};
