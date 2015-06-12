/*
 * lib/atusb_spi.c - ATRF access functions library (USB-SPI version)
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
#include <string.h>
#include <libusb-1.0/libusb.h>

#include "atusb/ep0.h"

#include "usbopen.h"
#include "at86rf230.h"
#include "driver.h"
#include "atusb-common.h"


static void atusb_spi_reg_write(void *handle, uint8_t reg, uint8_t v)
{
	struct atusb_dsc *dsc = handle;
	int res;

	if (dsc->error)
		return;

	res = libusb_control_transfer(dsc->dev, TO_DEV, ATUSB_SPI_WRITE,
	    AT86RF230_REG_WRITE | reg, v, NULL, 0, 1000);
	if (res < 0) {
		fprintf(stderr, "ATUSB_SPI_WRITE: %d\n", res);
		dsc->error = 1;
	}
}


static uint8_t atusb_spi_reg_read(void *handle, uint8_t reg)
{
	struct atusb_dsc *dsc = handle;
	uint8_t value = 0;
	int res;

	if (dsc->error)
		return 0;

	res = libusb_control_transfer(dsc->dev, FROM_DEV, ATUSB_SPI_READ1,
	    AT86RF230_REG_READ | reg, 0, (void *) &value, 1, 1000);
	if (res < 0) {
		fprintf(stderr, "ATUSB_SPI_READ1: %d\n", res);
		dsc->error = 1;
	}
	return value;
}


static void atusb_spi_buf_write(void *handle, const void *buf, int size)
{
	struct atusb_dsc *dsc = handle;
	int res;

	if (dsc->error)
		return;

	res = libusb_control_transfer(dsc->dev, TO_DEV, ATUSB_SPI_WRITE,
	    AT86RF230_BUF_WRITE, size, (void *) buf, size, 1000);
	if (res < 0) {
		fprintf(stderr, "ATUSB_SPI_WRITE: %d\n", res);
		dsc->error = 1;
	}
}


static int atusb_spi_buf_read(void *handle, void *buf, int size)
{
	struct atusb_dsc *dsc = handle;
	uint8_t tmp[SRAM_SIZE];
	int res, got;

	if (dsc->error)
		return -1;

	res = libusb_control_transfer(dsc->dev, FROM_DEV, ATUSB_SPI_READ1,
	    AT86RF230_BUF_READ, 0, tmp, sizeof(tmp), 1000);
	if (res < 0) {
		fprintf(stderr, "ATUSB_SPI_READ1: %d\n", res);
		dsc->error = 1;
		return res;
	}
	got = tmp[0]+1; /* +1 for LQI */
	if (got >= res) {
		fprintf(stderr,
		    "atusb_spi_buf_read: got %d >= received %d bytes\n",
		    got, res);
		return -1;
	}
	if (got > size) {
		fprintf(stderr, "atusb_spi_buf_read: got %d > max %d bytes\n",
		    got, size);
		return -1;
	}
	memcpy(buf, tmp+1, got);

	return got;
}


static void atusb_spi_sram_write(void *handle, uint8_t addr, uint8_t v)
{
	struct atusb_dsc *dsc = handle;
	int res;

	if (dsc->error)
		return;

	res = libusb_control_transfer(dsc->dev, TO_DEV, ATUSB_SPI_WRITE,
	    AT86RF230_SRAM_WRITE, addr, &v, 1, 1000);
	if (res < 0) {
		fprintf(stderr, "ATUSB_SPI_WRITE: %d\n", res);
		dsc->error = 1;
	}
}


static uint8_t atusb_spi_sram_read(void *handle, uint8_t addr)
{
	struct atusb_dsc *dsc = handle;
	uint8_t value = 0;
	int res;

	if (dsc->error)
		return 0;

	res = libusb_control_transfer(dsc->dev, FROM_DEV, ATUSB_SPI_READ2,
	    AT86RF230_SRAM_READ, addr, (void *) &value, 1, 1000);
	if (res < 0) {
		fprintf(stderr, "ATUSB_SPI_READ2: %d\n", res);
		dsc->error = 1;
	}
	return value;
}


/* ----- Driver interface -------------------------------------------------- */


struct atrf_driver atusb_spi_driver = {
	.name		= "usb-spi",
	.open		= atusb_open,
	.close		= atusb_close,
	.reset		= NULL,
	.reset_rf	= atusb_reset_rf,
	.test_mode	= NULL,
	.slp_tr		= atusb_slp_tr,
	.set_clkm	= atusb_set_clkm,
	.reg_write	= atusb_spi_reg_write,
	.reg_read	= atusb_spi_reg_read,
	.buf_write	= atusb_spi_buf_write,
	.buf_read	= atusb_spi_buf_read,
	.sram_write	= atusb_spi_sram_write,
	.sram_read	= atusb_spi_sram_read,
	.interrupt_wait	= atusb_interrupt_wait,
	.rx_mode	= atusb_rx_mode,
	.rx		= atusb_rx,
	.tx		= atusb_tx,
};
