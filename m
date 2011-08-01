Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QnoF1-00006x-IJ
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 08:52:57 +0000
Date: Mon, 1 Aug 2011 10:52:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110801085243.GE31404@pengutronix.de>
References: <1312057472-31809-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1312057472-31809-1-git-send-email-franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] [RFC] nor: Add SPI flash chips driver
To: franck.jullien@gmail.com
Cc: barebox@lists.infradead.org

On Sat, Jul 30, 2011 at 10:24:32PM +0200, franck.jullien@gmail.com wrote:
> From: Franck Jullien <franck.jullien@gmail.com>
> 
> This patch adds the m25p80 driver. It has been ported from
> Linux. MTD code has been removed. It has been tested with
> a m25p40 chip and the Altera SPI master driver.
> 
> This driver has been placed in drivers/nor and CFI config
> has been moved to a submenu in Kconfig. Should I create a CFI
> folder in drivers/nor ?
> 
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  drivers/nor/Kconfig  |   41 +++-
>  drivers/nor/Makefile |    1 +
>  drivers/nor/m25p80.c |  829 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/nor/m25p80.h |   90 ++++++
>  include/spi/flash.h  |   30 ++
>  5 files changed, 986 insertions(+), 5 deletions(-)
>  create mode 100644 drivers/nor/m25p80.c
>  create mode 100644 drivers/nor/m25p80.h
>  create mode 100644 include/spi/flash.h
> 
> diff --git a/drivers/nor/Kconfig b/drivers/nor/Kconfig
> index 43a6b84..84ce0d0 100644
> --- a/drivers/nor/Kconfig
> +++ b/drivers/nor/Kconfig
> @@ -1,14 +1,16 @@
>  menu "flash drivers                 "
>  
> -config HAS_CFI
> -	bool
> -
> -config DRIVER_CFI
> -	bool "cfi flash driver"
> +menuconfig DRIVER_CFI
> +	bool "CFI            "
>  	help
>  	  If you have NOR Flash devices connected to your system and wish
>  	  to use them say yes here.
>  
> +if DRIVER_CFI
> +
> +config HAS_CFI
> +	bool
> +
>  config DRIVER_CFI_INTEL
>  	default y
>  	depends on DRIVER_CFI
> @@ -55,4 +57,33 @@ config CFI_BUFFER_WRITE
>  	bool "use cfi driver with buffer write"
>  	depends on DRIVER_CFI || DRIVER_CFI
>  
> +endif
> +
> +config MTD_M25P80
> +	tristate "SPI Flash chips (AT26DF, M25P, W25X, ...)"
> +	depends on SPI
> +	help
> +	  This enables access to most modern SPI flash chips, used for
> +	  program and data storage.   Series supported include Atmel AT26DF,
> +	  Spansion S25SL, SST 25VF, ST M25P, and Winbond W25X.  Other chips
> +	  are supported as well.  See the driver source for the current list,
> +	  or to add other chips.
> +
> +	  Note that the original DataFlash chips (AT45 series, not AT26DF),
> +	  need an entirely different driver.
> +
> +	  Set up your spi devices with the right board-specific platform data,
> +	  if you want to specify device partitioning or to use a device which
> +	  doesn't support the JEDEC ID instruction.
> +
> +config MTD_SST25L
> +	tristate "Support SST25L (non JEDEC) SPI Flash chips"
> +	depends on MTD_M25P80
> +	help
> +	  This enables access to the non JEDEC SST25L SPI flash chips, used
> +	  for program and data storage.
> +
> +	  Set up your spi devices with the right board-specific platform data,
> +	  if you want to specify device partitioning.
> +
>  endmenu
> diff --git a/drivers/nor/Makefile b/drivers/nor/Makefile
> index d255043..d676c55 100644
> --- a/drivers/nor/Makefile
> +++ b/drivers/nor/Makefile
> @@ -1,4 +1,5 @@
>  obj-$(CONFIG_DRIVER_CFI) += cfi_flash.o
>  obj-$(CONFIG_DRIVER_CFI_INTEL) += cfi_flash_intel.o
>  obj-$(CONFIG_DRIVER_CFI_AMD) += cfi_flash_amd.o
> +obj-$(CONFIG_MTD_M25P80) += m25p80.o
>  
> diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
> new file mode 100644
> index 0000000..9c57f16
> --- /dev/null
> +++ b/drivers/nor/m25p80.c
> @@ -0,0 +1,829 @@
> +/*
> + * MTD SPI driver for ST M25Pxx (and similar) serial flash chips
> + *
> + * Author: Mike Lavender, mike@steroidmicros.com
> + * Adapted to barebox :  Franck JULLIEN <elec4fun@gmail.com>
> + *
> + * Copyright (c) 2005, Intec Automation Inc.
> + *
> + * Some parts are based on lart.c by Abraham Van Der Merwe
> + *
> + * Cleaned up and generalized based on mtd_dataflash.c
> + *
> + * This code is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <spi/spi.h>
> +#include <spi/flash.h>
> +#include <xfuncs.h>
> +#include <malloc.h>
> +#include <errno.h>
> +#include <linux/err.h>
> +#include <clock.h>
> +#include <linux/mtd/mtd.h>
> +#include <progress.h>
> +#include "m25p80.h"
> +
> +/****************************************************************************/
> +
> +/*
> + * Internal helper functions
> + */
> +
> +/*
> + * Read the status register, returning its value in the location
> + * Return the status register value.
> + * Returns negative if error occurred.
> + */
> +static int read_sr(struct m25p *flash)
> +{
> +	ssize_t retval;
> +	u8 code = OPCODE_RDSR;
> +	u8 val;
> +
> +	retval = spi_write_then_read(flash->spi, &code, 1, &val, 1);
> +
> +	if (retval < 0) {
> +		dev_err(&flash->spi->dev, "error %d reading SR\n",
> +				(int) retval);
> +		return retval;
> +	}
> +
> +	return val;
> +}
> +
> +/*
> + * Write status register 1 byte
> + * Returns negative if error occurred.
> + */
> +static int write_sr(struct m25p *flash, u8 val)
> +{
> +	flash->command[0] = OPCODE_WRSR;
> +	flash->command[1] = val;
> +
> +	return spi_write(flash->spi, flash->command, 2);
> +}
> +
> +/*
> + * Set write enable latch with Write Enable command.
> + * Returns negative if error occurred.
> + */
> +static inline int write_enable(struct m25p *flash)
> +{
> +	u8	code = OPCODE_WREN;
> +
> +	return spi_write_then_read(flash->spi, &code, 1, NULL, 0);
> +}
> +
> +/*
> + * Send write disble instruction to the chip.
> + */
> +static inline int write_disable(struct m25p *flash)
> +{
> +	u8	code = OPCODE_WRDI;
> +
> +	return spi_write_then_read(flash->spi, &code, 1, NULL, 0);
> +}
> +
> +/*
> + * Enable/disable 4-byte addressing mode.
> + */
> +static inline int set_4byte(struct m25p *flash, int enable)
> +{
> +	u8	code = enable ? OPCODE_EN4B : OPCODE_EX4B;
> +
> +	return spi_write_then_read(flash->spi, &code, 1, NULL, 0);
> +}
> +
> +/*
> + * Service routine to read status register until ready, or timeout occurs.
> + * Returns non-zero if error.
> + */
> +static int wait_till_ready(struct m25p *flash)
> +{
> +	int sr;
> +	uint64_t timer_start;
> +
> +	timer_start = get_time_ns();
> +
> +	do {
> +		if ((sr = read_sr(flash)) < 0)
> +			break;
> +		else if (!(sr & SR_WIP))
> +			return 0;
> +
> +	} while (!(is_timeout(timer_start, MAX_READY_WAIT * SECOND)));
> +
> +	return 1;
> +}

Pleas return -ETIMEDOUT here and just forward this error in the
functions calling this function.

> +
> +/*
> + * Erase the whole flash memory
> + *
> + * Returns 0 if successful, non-zero otherwise.
> + */
> +static int erase_chip(struct m25p *flash)
> +{
> +	debug("%s: %s %lldKiB\n",
> +		dev_name(&flash->spi->dev), __func__,
> +		(long long)(flash->size >> 10));

dev_dbg and friends here and for all other printfs please

> +
> +	/* Wait until finished previous write command. */
> +	if (wait_till_ready(flash))
> +		return 1;
> +
> +	/* Send write enable, then erase commands. */
> +	write_enable(flash);
> +
> +	/* Set up command buffer. */
> +	flash->command[0] = OPCODE_CHIP_ERASE;
> +
> +	spi_write(flash->spi, flash->command, 1);
> +
> +	return 0;
> +}
> +
> +static void m25p_addr2cmd(struct m25p *flash, unsigned int addr, u8 *cmd)
> +{
> +	/* opcode is in cmd[0] */
> +	cmd[1] = addr >> (flash->addr_width * 8 -  8);
> +	cmd[2] = addr >> (flash->addr_width * 8 - 16);
> +	cmd[3] = addr >> (flash->addr_width * 8 - 24);
> +	cmd[4] = addr >> (flash->addr_width * 8 - 32);
> +}
> +
> +static int m25p_cmdsz(struct m25p *flash)
> +{
> +	return 1 + flash->addr_width;
> +}
> +
> +/*
> + * Erase one sector of flash memory at offset ``offset'' which is any
> + * address within the sector which should be erased.
> + *
> + * Returns 0 if successful, non-zero otherwise.
> + */
> +static int erase_sector(struct m25p *flash, u32 offset)
> +{
> +	debug("%s: %s %dKiB at 0x%08x\n",
> +		dev_name(&flash->spi->dev), __func__,
> +		flash->erasesize / 1024, offset);
> +
> +	/* Wait until finished previous write command. */
> +	if (wait_till_ready(flash))
> +		return 1;
> +
> +	/* Send write enable, then erase commands. */
> +	write_enable(flash);
> +
> +	/* Set up command buffer. */
> +	flash->command[0] = flash->erase_opcode;
> +	m25p_addr2cmd(flash, offset, flash->command);
> +
> +	spi_write(flash->spi, flash->command, m25p_cmdsz(flash));
> +
> +	return 0;
> +}
> +
> +/*
> + * Erase an address range on the flash chip.  The address range may extend
> + * one or more erase sectors.  Return an error is there is a problem erasing.
> + */
> +static ssize_t m25p80_erase(struct cdev *cdev, size_t count, unsigned long offset)
> +{
> +	struct m25p *flash = cdev->priv;
> +	u32 addr, len;
> +	u32 start_sector;
> +	u32 end_sector;
> +	u32 progress = 0;
> +
> +	debug("%s: %s %s 0x%llx, len %lld\n",
> +		dev_name(&flash->spi->dev), __func__, "at",
> +	      (long long)offset, (long long)count);
> +
> +	/* sanity checks */
> +	if (offset + count > flash->size)
> +		return -EINVAL;
> +
> +	addr = offset;
> +	len = count;
> +
> +	start_sector = offset / flash->erasesize;
> +	end_sector = (offset + count - 1) / flash->erasesize;
> +	init_progression_bar(end_sector - start_sector);
> +
> +	/* whole-chip erase? */
> +	if (len == flash->size) {
> +
> +		show_progress(start_sector);
> +		if (erase_chip(flash))
> +			return -EIO;
> +		show_progress(end_sector);
> +
> +	/* REVISIT in some cases we could speed up erasing large regions
> +	 * by using OPCODE_SE instead of OPCODE_BE_4K.  We may have set up
> +	 * to use "small sector erase", but that's not always optimal.
> +	 */
> +
> +	/* "sector"-at-a-time erase */
> +	} else {
> +		while (len) {
> +			if (erase_sector(flash, addr))
> +				return -EIO;
> +
> +			addr += flash->erasesize;
> +			len -= flash->erasesize;
> +			show_progress(progress++);
> +		}
> +	}
> +
> +	printf("\n");
> +
> +	return 0;
> +}
> +
> +ssize_t m25p80_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags)
> +{
> +	struct m25p *flash = cdev->priv;
> +	struct spi_transfer t[2];
> +	struct spi_message m;
> +	ssize_t retlen;
> +
> +	/* sanity checks */
> +	if (!count)
> +		return 0;
> +
> +	if (offset + count > flash->size)
> +		return -EINVAL;
> +
> +	spi_message_init(&m);
> +	memset(t, 0, (sizeof t));
> +
> +	/* NOTE:
> +	 * OPCODE_FAST_READ (if available) is faster.
> +	 * Should add 1 byte DUMMY_BYTE.
> +	 */
> +	t[0].tx_buf = flash->command;
> +	t[0].len = m25p_cmdsz(flash) + FAST_READ_DUMMY_BYTE;
> +	spi_message_add_tail(&t[0], &m);
> +
> +	t[1].rx_buf = buf;
> +	t[1].len = count;
> +	spi_message_add_tail(&t[1], &m);
> +
> +	/* Byte count starts at zero. */
> +	retlen = 0;
> +
> +	/* Wait till previous write/erase is done. */
> +	if (wait_till_ready(flash))
> +		return -ETIME;

We usually return -ETIMEDOUT instead of -ETIME.

> +
> +	/* FIXME switch to OPCODE_FAST_READ.  It's required for higher
> +	 * clocks; and at this writing, every chip this driver handles
> +	 * supports that opcode.
> +	 */
> +
> +	/* Set up the write data buffer. */
> +	flash->command[0] = OPCODE_READ;
> +	m25p_addr2cmd(flash, offset, flash->command);
> +
> +	spi_sync(flash->spi, &m);
> +
> +	retlen = m.actual_length - m25p_cmdsz(flash) - FAST_READ_DUMMY_BYTE;
> +
> +	return retlen;
> +}
> +
> +ssize_t m25p80_write(struct cdev *cdev, const void *buf, size_t count, ulong offset, ulong flags)
> +{
> +	struct m25p *flash = cdev->priv;
> +	struct spi_transfer t[2];
> +	struct spi_message m;
> +	ssize_t retlen = 0;
> +	u32 page_offset, page_size;
> +
> +	debug("m25p80_write %ld bytes at 0x%08lX\n", (unsigned long)count, offset);
> +
> +	if (offset + count > flash->size)
> +		return -EINVAL;
> +
> +	spi_message_init(&m);
> +	memset(t, 0, (sizeof t));
> +
> +	t[0].tx_buf = flash->command;
> +	t[0].len = m25p_cmdsz(flash);
> +	spi_message_add_tail(&t[0], &m);
> +
> +	t[1].tx_buf = buf;
> +	spi_message_add_tail(&t[1], &m);
> +
> +	/* Wait until finished previous write command. */
> +	if (wait_till_ready(flash))
> +		return -ETIME;
> +
> +	write_enable(flash);
> +
> +	/* Set up the opcode in the write buffer. */
> +	flash->command[0] = OPCODE_PP;
> +	m25p_addr2cmd(flash, offset, flash->command);
> +
> +	page_offset = offset & (flash->page_size - 1);
> +
> +	/* do all the bytes fit onto one page? */
> +	if (page_offset + count <= flash->page_size) {
> +		t[1].len = count;
> +
> +		spi_sync(flash->spi, &m);
> +
> +		retlen = m.actual_length - m25p_cmdsz(flash);
> +	} else {
> +		u32 i;
> +
> +		/* the size of data remaining on the first page */
> +		page_size = flash->page_size - page_offset;
> +
> +		t[1].len = page_size;
> +		spi_sync(flash->spi, &m);
> +
> +		retlen = m.actual_length - m25p_cmdsz(flash);
> +
> +		/* write everything in flash->page_size chunks */
> +		for (i = page_size; i < count; i += page_size) {
> +			page_size = count - i;
> +			if (page_size > flash->page_size)
> +				page_size = flash->page_size;
> +
> +			/* write the next page to flash */
> +			m25p_addr2cmd(flash, offset + i, flash->command);
> +
> +			t[1].tx_buf = buf + i;
> +			t[1].len = page_size;
> +
> +			wait_till_ready(flash);
> +
> +			write_enable(flash);
> +
> +			spi_sync(flash->spi, &m);
> +
> +			retlen += m.actual_length - m25p_cmdsz(flash);
> +
> +		}
> +	}
> +
> +	return retlen;
> +}
> +#ifdef CONFIG_MTD_SST25L
> +ssize_t sst_write(struct cdev *cdev, const void *buf, size_t count, ulong offset, ulong flags)
> +{
> +	struct m25p *flash = cdev->priv;
> +	struct spi_transfer t[2];
> +	struct spi_message m;
> +	size_t actual;
> +	ssize_t retlen;
> +	int cmd_sz, ret;
> +
> +	debug("sst_write %ld bytes at 0x%08lX\n", (unsigned long)count, offset);
> +
> +	retlen = 0;
> +
> +	/* sanity checks */
> +	if (!count)
> +		return 0;
> +
> +	if (offset + count > flash->size)
> +		return -EINVAL;
> +
> +	spi_message_init(&m);
> +	memset(t, 0, (sizeof t));
> +
> +	t[0].tx_buf = flash->command;
> +	t[0].len = m25p_cmdsz(flash);
> +	spi_message_add_tail(&t[0], &m);
> +
> +	t[1].tx_buf = buf;
> +	spi_message_add_tail(&t[1], &m);
> +
> +	/* Wait until finished previous write command. */
> +	ret = wait_till_ready(flash);
> +	if (ret)
> +		goto time_out;
> +
> +	write_enable(flash);
> +
> +	actual = offset % 2;
> +	/* Start write from odd address. */
> +	if (actual) {
> +		flash->command[0] = OPCODE_BP;
> +		m25p_addr2cmd(flash, offset, flash->command);
> +
> +		/* write one byte. */
> +		t[1].len = 1;
> +		spi_sync(flash->spi, &m);
> +		ret = wait_till_ready(flash);
> +		if (ret)
> +			goto time_out;
> +		retlen += m.actual_length - m25p_cmdsz(flash);
> +	}
> +	offset += actual;
> +
> +	flash->command[0] = OPCODE_AAI_WP;
> +	m25p_addr2cmd(flash, offset, flash->command);
> +
> +	/* Write out most of the data here. */
> +	cmd_sz = m25p_cmdsz(flash);
> +	for (; actual < count - 1; actual += 2) {
> +		t[0].len = cmd_sz;
> +		/* write two bytes. */
> +		t[1].len = 2;
> +		t[1].tx_buf = buf + actual;
> +
> +		spi_sync(flash->spi, &m);
> +		ret = wait_till_ready(flash);
> +		if (ret)
> +			goto time_out;
> +		retlen += m.actual_length - cmd_sz;
> +		cmd_sz = 1;
> +		offset += 2;
> +	}
> +	write_disable(flash);
> +	ret = wait_till_ready(flash);
> +	if (ret)
> +		goto time_out;
> +
> +	/* Write out trailing byte if it exists. */
> +	if (actual != count) {
> +		write_enable(flash);
> +		flash->command[0] = OPCODE_BP;
> +		m25p_addr2cmd(flash, offset, flash->command);
> +		t[0].len = m25p_cmdsz(flash);
> +		t[1].len = 1;
> +		t[1].tx_buf = buf + actual;
> +
> +		spi_sync(flash->spi, &m);
> +		ret = wait_till_ready(flash);
> +		if (ret)
> +			goto time_out;
> +		retlen += m.actual_length - m25p_cmdsz(flash);
> +		write_disable(flash);
> +	}
> +
> +time_out:
> +	return retlen;
> +}
> +#endif
> +
> +static void m25p80_info(struct device_d *dev)
> +{
> +	struct m25p		*flash = dev->priv;
> +	struct flash_info	*info = flash->info;
> +
> +	printf("Flash type        : %s\n", flash->name);
> +	printf("Size              : %lldKiB\n", (long long)flash->size / 1024);
> +	printf("Number of sectors : %d\n", info->n_sectors);
> +	printf("Sector size       : %dKiB\n", info->sector_size / 1024);
> +	printf("\n");
> +}
> +
> +
> +/****************************************************************************/
> +
> +/*
> + * SPI device driver setup and teardown
> + */
> +
> +#define INFO(_jedec_id, _ext_id, _sector_size, _n_sectors, _flags)	\
> +	((unsigned long)&(struct flash_info) {				\
> +		.jedec_id = (_jedec_id),				\
> +		.ext_id = (_ext_id),					\
> +		.sector_size = (_sector_size),				\
> +		.n_sectors = (_n_sectors),				\
> +		.page_size = 256,					\
> +		.flags = (_flags),					\
> +	})
> +
> +#define CAT25_INFO(_sector_size, _n_sectors, _page_size, _addr_width)	\
> +	((unsigned long)&(struct flash_info) {				\
> +		.sector_size = (_sector_size),				\
> +		.n_sectors = (_n_sectors),				\
> +		.page_size = (_page_size),				\
> +		.addr_width = (_addr_width),				\
> +		.flags = M25P_NO_ERASE,					\
> +	})
> +
> +/* NOTE: double check command sets and memory organization when you add
> + * more flash chips.  This current list focusses on newer chips, which
> + * have been converging on command sets which including JEDEC ID.
> + */
> +static const struct spi_device_id m25p_ids[] = {
> +	/* Atmel -- some are (confusingly) marketed as "DataFlash" */
> +	{ "at25fs010",  INFO(0x1f6601, 0, 32 * 1024,   4, SECT_4K) },
> +	{ "at25fs040",  INFO(0x1f6604, 0, 64 * 1024,   8, SECT_4K) },
> +
> +	{ "at25df041a", INFO(0x1f4401, 0, 64 * 1024,   8, SECT_4K) },
> +	{ "at25df641",  INFO(0x1f4800, 0, 64 * 1024, 128, SECT_4K) },
> +
> +	{ "at26f004",   INFO(0x1f0400, 0, 64 * 1024,  8, SECT_4K) },
> +	{ "at26df081a", INFO(0x1f4501, 0, 64 * 1024, 16, SECT_4K) },
> +	{ "at26df161a", INFO(0x1f4601, 0, 64 * 1024, 32, SECT_4K) },
> +	{ "at26df321",  INFO(0x1f4700, 0, 64 * 1024, 64, SECT_4K) },
> +
> +	/* EON -- en25xxx */
> +	{ "en25f32", INFO(0x1c3116, 0, 64 * 1024,  64, SECT_4K) },
> +	{ "en25p32", INFO(0x1c2016, 0, 64 * 1024,  64, 0) },
> +	{ "en25p64", INFO(0x1c2017, 0, 64 * 1024, 128, 0) },
> +
> +	/* Intel/Numonyx -- xxxs33b */
> +	{ "160s33b",  INFO(0x898911, 0, 64 * 1024,  32, 0) },
> +	{ "320s33b",  INFO(0x898912, 0, 64 * 1024,  64, 0) },
> +	{ "640s33b",  INFO(0x898913, 0, 64 * 1024, 128, 0) },
> +
> +	/* Macronix */
> +	{ "mx25l4005a",  INFO(0xc22013, 0, 64 * 1024,   8, SECT_4K) },
> +	{ "mx25l8005",   INFO(0xc22014, 0, 64 * 1024,  16, 0) },
> +	{ "mx25l3205d",  INFO(0xc22016, 0, 64 * 1024,  64, 0) },
> +	{ "mx25l6405d",  INFO(0xc22017, 0, 64 * 1024, 128, 0) },
> +	{ "mx25l12805d", INFO(0xc22018, 0, 64 * 1024, 256, 0) },
> +	{ "mx25l12855e", INFO(0xc22618, 0, 64 * 1024, 256, 0) },
> +	{ "mx25l25635e", INFO(0xc22019, 0, 64 * 1024, 512, 0) },
> +	{ "mx25l25655e", INFO(0xc22619, 0, 64 * 1024, 512, 0) },
> +
> +	/* Spansion -- single (large) sector size only, at least
> +	 * for the chips listed here (without boot sectors).
> +	 */
> +	{ "s25sl004a",  INFO(0x010212,      0,  64 * 1024,   8, 0) },
> +	{ "s25sl008a",  INFO(0x010213,      0,  64 * 1024,  16, 0) },
> +	{ "s25sl016a",  INFO(0x010214,      0,  64 * 1024,  32, 0) },
> +	{ "s25sl032a",  INFO(0x010215,      0,  64 * 1024,  64, 0) },
> +	{ "s25sl032p",  INFO(0x010215, 0x4d00,  64 * 1024,  64, SECT_4K) },
> +	{ "s25sl064a",  INFO(0x010216,      0,  64 * 1024, 128, 0) },
> +	{ "s25sl12800", INFO(0x012018, 0x0300, 256 * 1024,  64, 0) },
> +	{ "s25sl12801", INFO(0x012018, 0x0301,  64 * 1024, 256, 0) },
> +	{ "s25fl129p0", INFO(0x012018, 0x4d00, 256 * 1024,  64, 0) },
> +	{ "s25fl129p1", INFO(0x012018, 0x4d01,  64 * 1024, 256, 0) },
> +	{ "s25fl016k",  INFO(0xef4015,      0,  64 * 1024,  32, SECT_4K) },
> +	{ "s25fl064k",  INFO(0xef4017,      0,  64 * 1024, 128, SECT_4K) },
> +
> +	/* SST -- large erase sizes are "overlays", "sectors" are 4K */
> +	{ "sst25vf040b", INFO(0xbf258d, 0, 64 * 1024,  8, SECT_4K) },
> +	{ "sst25vf080b", INFO(0xbf258e, 0, 64 * 1024, 16, SECT_4K) },
> +	{ "sst25vf016b", INFO(0xbf2541, 0, 64 * 1024, 32, SECT_4K) },
> +	{ "sst25vf032b", INFO(0xbf254a, 0, 64 * 1024, 64, SECT_4K) },
> +	{ "sst25wf512",  INFO(0xbf2501, 0, 64 * 1024,  1, SECT_4K) },
> +	{ "sst25wf010",  INFO(0xbf2502, 0, 64 * 1024,  2, SECT_4K) },
> +	{ "sst25wf020",  INFO(0xbf2503, 0, 64 * 1024,  4, SECT_4K) },
> +	{ "sst25wf040",  INFO(0xbf2504, 0, 64 * 1024,  8, SECT_4K) },
> +
> +	/* ST Microelectronics -- newer production may have feature updates */
> +	{ "m25p05",  INFO(0x202010,  0,  32 * 1024,   2, 0) },
> +	{ "m25p10",  INFO(0x202011,  0,  32 * 1024,   4, 0) },
> +	{ "m25p20",  INFO(0x202012,  0,  64 * 1024,   4, 0) },
> +	{ "m25p40",  INFO(0x202013,  0,  64 * 1024,   8, 0) },
> +	{ "m25p80",  INFO(0x202014,  0,  64 * 1024,  16, 0) },
> +	{ "m25p16",  INFO(0x202015,  0,  64 * 1024,  32, 0) },
> +	{ "m25p32",  INFO(0x202016,  0,  64 * 1024,  64, 0) },
> +	{ "m25p64",  INFO(0x202017,  0,  64 * 1024, 128, 0) },
> +	{ "m25p128", INFO(0x202018,  0, 256 * 1024,  64, 0) },
> +
> +	{ "m25p05-nonjedec",  INFO(0, 0,  32 * 1024,   2, 0) },
> +	{ "m25p10-nonjedec",  INFO(0, 0,  32 * 1024,   4, 0) },
> +	{ "m25p20-nonjedec",  INFO(0, 0,  64 * 1024,   4, 0) },
> +	{ "m25p40-nonjedec",  INFO(0, 0,  64 * 1024,   8, 0) },
> +	{ "m25p80-nonjedec",  INFO(0, 0,  64 * 1024,  16, 0) },
> +	{ "m25p16-nonjedec",  INFO(0, 0,  64 * 1024,  32, 0) },
> +	{ "m25p32-nonjedec",  INFO(0, 0,  64 * 1024,  64, 0) },
> +	{ "m25p64-nonjedec",  INFO(0, 0,  64 * 1024, 128, 0) },
> +	{ "m25p128-nonjedec", INFO(0, 0, 256 * 1024,  64, 0) },
> +
> +	{ "m45pe10", INFO(0x204011,  0, 64 * 1024,    2, 0) },
> +	{ "m45pe80", INFO(0x204014,  0, 64 * 1024,   16, 0) },
> +	{ "m45pe16", INFO(0x204015,  0, 64 * 1024,   32, 0) },
> +
> +	{ "m25pe80", INFO(0x208014,  0, 64 * 1024, 16,       0) },
> +	{ "m25pe16", INFO(0x208015,  0, 64 * 1024, 32, SECT_4K) },
> +
> +	{ "m25px64", INFO(0x207117,  0, 64 * 1024, 128, 0) },
> +
> +	/* Winbond -- w25x "blocks" are 64K, "sectors" are 4KiB */
> +	{ "w25x10", INFO(0xef3011, 0, 64 * 1024,  2,  SECT_4K) },
> +	{ "w25x20", INFO(0xef3012, 0, 64 * 1024,  4,  SECT_4K) },
> +	{ "w25x40", INFO(0xef3013, 0, 64 * 1024,  8,  SECT_4K) },
> +	{ "w25x80", INFO(0xef3014, 0, 64 * 1024,  16, SECT_4K) },
> +	{ "w25x16", INFO(0xef3015, 0, 64 * 1024,  32, SECT_4K) },
> +	{ "w25x32", INFO(0xef3016, 0, 64 * 1024,  64, SECT_4K) },
> +	{ "w25q32", INFO(0xef4016, 0, 64 * 1024,  64, SECT_4K) },
> +	{ "w25x64", INFO(0xef3017, 0, 64 * 1024, 128, SECT_4K) },
> +	{ "w25q64", INFO(0xef4017, 0, 64 * 1024, 128, SECT_4K) },
> +
> +	/* Catalyst / On Semiconductor -- non-JEDEC */
> +	{ "cat25c11", CAT25_INFO(  16, 8, 16, 1) },
> +	{ "cat25c03", CAT25_INFO(  32, 8, 16, 2) },
> +	{ "cat25c09", CAT25_INFO( 128, 8, 32, 2) },
> +	{ "cat25c17", CAT25_INFO( 256, 8, 32, 2) },
> +	{ "cat25128", CAT25_INFO(2048, 8, 64, 2) },
> +	{ },
> +};
> +
> +static const struct spi_device_id *jedec_probe(struct spi_device *spi)
> +{
> +	int			tmp;
> +	u8			code = OPCODE_RDID;
> +	u8			id[5];
> +	u32			jedec;
> +	u16			ext_jedec;
> +	struct flash_info	*info;
> +
> +	/* JEDEC also defines an optional "extended device information"
> +	 * string for after vendor-specific data, after the three bytes
> +	 * we use here.  Supporting some chips might require using it.
> +	 */
> +	spi_write_then_read(spi, &code, 1, id, 5);
> +
> +	jedec = id[0];
> +	jedec = jedec << 8;
> +	jedec |= id[1];
> +	jedec = jedec << 8;
> +	jedec |= id[2];
> +
> +	ext_jedec = id[3] << 8 | id[4];
> +
> +	for (tmp = 0; tmp < ARRAY_SIZE(m25p_ids) - 1; tmp++) {
> +		info = (void *)m25p_ids[tmp].driver_data;
> +		if (info->jedec_id == jedec) {
> +			if (info->ext_id != 0 && info->ext_id != ext_jedec)
> +				continue;
> +			return &m25p_ids[tmp];
> +		}
> +	}
> +	debug("unrecognized JEDEC id %06x\n", jedec);
> +
> +	return NULL;
> +}
> +
> +
> +static struct file_operations m25p80_ops = {
> +	.read   = m25p80_read,
> +	.write  = m25p80_write,
> +	.erase  = m25p80_erase,
> +	.lseek  = dev_lseek_default,
> +};
> +
> +/*
> + * board specific setup should have ensured the SPI clock used here
> + * matches what the READ command supports, at least until this driver
> + * understands FAST_READ (for clocks over 25 MHz).
> + */
> +static int m25p_probe(struct device_d *dev)
> +{
> +	struct spi_device *spi = (struct spi_device *)dev->type_data;
> +	const struct spi_device_id	*id = NULL;
> +	struct flash_info		*info = NULL;
> +	struct flash_platform_data	*data;
> +	struct m25p			*flash;
> +	unsigned			i;
> +	unsigned			do_jdec_probe = 1;
> +
> +	/* Platform data helps sort out which chip type we have, as
> +	 * well as how this board partitions it.  If we don't have
> +	 * a chip ID, try the JEDEC id commands; they'll work for most
> +	 * newer chips, even if we don't recognize the particular chip.
> +	 */
> +	data = dev->platform_data;
> +
> +	if (data && data->type) {
> +		const struct spi_device_id *plat_id;
> +
> +		for (i = 0; i < ARRAY_SIZE(m25p_ids) - 1; i++) {
> +			plat_id = &m25p_ids[i];
> +			if (strcmp(data->type, plat_id->name))
> +				continue;
> +			break;
> +		}
> +
> +		if (i < ARRAY_SIZE(m25p_ids) - 1) {
> +			id = plat_id;
> +			info = (void *)id->driver_data;
> +			/* If flash type is provided but the memory is not
> +			 * JEDEC compliant, don't try to probe the JEDEC id */
> +			if (!info->jedec_id)
> +				do_jdec_probe = 0;
> +		} else
> +			dev_warn(&spi->dev, "unrecognized id %s\n", data->type);
> +	}
> +
> +	if (do_jdec_probe) {
> +		const struct spi_device_id *jid;
> +
> +		jid = jedec_probe(spi);
> +		if (!jid) {
> +			return -ENODEV;
> +		} else if (jid != id) {
> +
> +			/*
> +			 * JEDEC knows better, so overwrite platform ID. We
> +			 * can't trust partitions any longer, but we'll let
> +			 * mtd apply them anyway, since some partitions may be
> +			 * marked read-only, and we don't want to lose that
> +			 * information, even if it's not 100% accurate.
> +			 */
> +			if (id)
> +				printf("%s: found %s, expected %s\n", dev->name,
> +					 jid->name, id->name);
> +
> +			id = jid;
> +			info = (void *)jid->driver_data;
> +		}
> +	}
> +
> +	flash = xzalloc(sizeof *flash);
> +	if (!flash)
> +		return -ENOMEM;

the x*alloc functions guarantee to return mem, no need to check.

> +
> +	flash->command = xmalloc(MAX_CMD_SIZE + FAST_READ_DUMMY_BYTE);
> +	if (!flash->command) {
> +		free(flash);
> +		return -ENOMEM;
> +	}
> +
> +	flash->spi = spi;
> +	dev->priv = (void *)flash;
> +	/*
> +	 * Atmel, SST and Intel/Numonyx serial flash tend to power
> +	 * up with the software protection bits set
> +	 */
> +
> +	if (info->jedec_id >> 16 == 0x1f ||
> +	    info->jedec_id >> 16 == 0x89 ||
> +	    info->jedec_id >> 16 == 0xbf) {
> +		write_enable(flash);
> +		write_sr(flash, 0);
> +	}
> +
> +	flash->name = (char *)id->name;

Shouldn't flash->name be const aswell?

> +	flash->info = info;
> +	flash->size = info->sector_size * info->n_sectors;
> +	flash->erasesize = info->sector_size;
> +	flash->cdev.size = info->sector_size * info->n_sectors;
> +	flash->cdev.dev = dev;
> +	flash->cdev.ops = &m25p80_ops;
> +	flash->cdev.priv = flash;
> +
> +	if (data && data->name)
> +		flash->cdev.name = asprintf("%s%d", data->name, dev->id);
> +	else
> +		flash->cdev.name = asprintf("%s", (char *)dev_name(&spi->dev));
> +
> +#ifdef CONFIG_MTD_SST25L
> +	/* sst flash chips use AAI word program */
> +	if (info->jedec_id >> 16 == 0xbf)
> +		m25p80_ops.write = sst_write;
> +	else
> +#endif
> +		m25p80_ops.write = m25p80_write;
> +
> +	/* prefer "small sector" erase if possible */
> +	if (info->flags & SECT_4K)
> +		flash->erase_opcode = OPCODE_BE_4K;
> +	else
> +		flash->erase_opcode = OPCODE_SE;
> +
> +	flash->page_size = info->page_size;
> +
> +	if (info->addr_width)
> +		flash->addr_width = info->addr_width;
> +	else {
> +		/* enable 4-byte addressing if the device exceeds 16MiB */
> +		if (flash->size > 0x1000000) {
> +			flash->addr_width = 4;
> +			set_4byte(flash, 1);
> +		} else
> +			flash->addr_width = 3;
> +	}
> +
> +	printf("%s: %s (%lld Kbytes)\n", flash->cdev.name, id->name,
> +			(long long)flash->size >> 10);
> +
> +	devfs_create(&flash->cdev);
> +
> +	return 0;
> +}
> +
> +static struct driver_d epcs_flash_driver = {
> +	.name  = "m25p",
> +	.probe = m25p_probe,
> +	.info = m25p80_info,
> +};
> +
> +static int epcs_init(void)
> +{
> +	register_driver(&epcs_flash_driver);
> +	return 0;
> +}
> +
> +device_initcall(epcs_init);
> +
> diff --git a/drivers/nor/m25p80.h b/drivers/nor/m25p80.h
> new file mode 100644
> index 0000000..3f9dd9c
> --- /dev/null
> +++ b/drivers/nor/m25p80.h
> @@ -0,0 +1,90 @@
> +#ifndef _M25P80_H_
> +#define _M25P80_H_
> +
> +/* Flash opcodes. */
> +#define	OPCODE_WREN		0x06	/* Write enable */
> +#define	OPCODE_RDSR		0x05	/* Read status register */
> +#define	OPCODE_WRSR		0x01	/* Write status register 1 byte */
> +#define	OPCODE_NORM_READ	0x03	/* Read data bytes (low frequency) */
> +#define	OPCODE_FAST_READ	0x0b	/* Read data bytes (high frequency) */
> +#define	OPCODE_PP		0x02	/* Page program (up to 256 bytes) */
> +#define	OPCODE_BE_4K		0x20	/* Erase 4KiB block */
> +#define	OPCODE_BE_32K		0x52	/* Erase 32KiB block */
> +#define	OPCODE_CHIP_ERASE	0xc7	/* Erase whole flash chip */
> +#define	OPCODE_SE		0xd8	/* Sector erase (usually 64KiB) */
> +#define	OPCODE_RDID		0x9f	/* Read JEDEC ID */
> +
> +/* Used for SST flashes only. */
> +#define	OPCODE_BP		0x02	/* Byte program */
> +#define	OPCODE_WRDI		0x04	/* Write disable */
> +#define	OPCODE_AAI_WP		0xad	/* Auto address increment word program */
> +
> +/* Used for Macronix flashes only. */
> +#define	OPCODE_EN4B		0xb7	/* Enter 4-byte mode */
> +#define	OPCODE_EX4B		0xe9	/* Exit 4-byte mode */
> +
> +/* Status Register bits. */
> +#define	SR_WIP			1	/* Write in progress */
> +#define	SR_WEL			2	/* Write enable latch */
> +/* meaning of other SR_* bits may differ between vendors */
> +#define	SR_BP0			4	/* Block protect 0 */
> +#define	SR_BP1			8	/* Block protect 1 */
> +#define	SR_BP2			0x10	/* Block protect 2 */
> +#define	SR_SRWD			0x80	/* SR write protect */
> +
> +/* Define max times to check status register before we give up. */
> +#define	MAX_READY_WAIT		40	/* M25P16 specs 40s max chip erase */
> +#define MAX_CMD_SIZE		5
> +
> +#ifdef CONFIG_M25PXX_USE_FAST_READ
> +#define OPCODE_READ		OPCODE_FAST_READ
> +#define FAST_READ_DUMMY_BYTE	1
> +#else
> +#define OPCODE_READ		OPCODE_NORM_READ
> +#define FAST_READ_DUMMY_BYTE	0
> +#endif
> +
> +#define SPI_NAME_SIZE   32
> +
> +struct spi_device_id {
> +	char name[SPI_NAME_SIZE];
> +	unsigned long driver_data;
> +};
> +
> +struct m25p {
> +	struct spi_device	*spi;
> +	struct flash_info	*info;
> +	struct mtd_info	mtd;
> +	struct cdev		cdev;
> +	char			*name;
> +	u32			erasesize;
> +	u16			page_size;
> +	u16			addr_width;
> +	u8			erase_opcode;
> +	u8			*command;
> +	u32			size;
> +};
> +
> +struct flash_info {
> +	/* JEDEC id zero means "no ID" (most older chips); otherwise it has
> +	 * a high byte of zero plus three data bytes: the manufacturer id,
> +	 * then a two byte device id.
> +	 */
> +	u32		jedec_id;
> +	u16		ext_id;
> +
> +	/* The size listed here is what works with OPCODE_SE, which isn't
> +	 * necessarily called a "sector" by the vendor.
> +	 */
> +	unsigned	sector_size;
> +	u16		n_sectors;
> +
> +	u16		page_size;
> +	u16		addr_width;
> +
> +	u16		flags;
> +#define	SECT_4K		0x01		/* OPCODE_BE_4K works uniformly */
> +#define	M25P_NO_ERASE	0x02		/* No erase command needed */
> +};
> +
> +#endif
> diff --git a/include/spi/flash.h b/include/spi/flash.h
> new file mode 100644
> index 0000000..cbd0203
> --- /dev/null
> +++ b/include/spi/flash.h
> @@ -0,0 +1,30 @@
> +#ifndef LINUX_SPI_FLASH_H
> +#define LINUX_SPI_FLASH_H
> +
> +struct mtd_partition;
> +
> +/**
> + * struct flash_platform_data: board-specific flash data
> + * @name: optional flash device name (eg, as used with mtdparts=)
> + * @parts: optional array of mtd_partitions for static partitioning
> + * @nr_parts: number of mtd_partitions for static partitoning
> + * @type: optional flash device type (e.g. m25p80 vs m25p64), for use
> + *	with chips that can't be queried for JEDEC or other IDs
> + *
> + * Board init code (in arch/.../mach-xxx/board-yyy.c files) can
> + * provide information about SPI flash parts (such as DataFlash) to
> + * help set up the device and its appropriate default partitioning.
> + *
> + * Note that for DataFlash, sizes for pages, blocks, and sectors are
> + * rarely powers of two; and partitions should be sector-aligned.
> + */
> +struct flash_platform_data {
> +	char			*name;
> +	struct mtd_partition	*parts;
> +	unsigned int		nr_parts;
> +	char			*type;
> +
> +	/* we'll likely add more ... use JEDEC IDs, etc */
> +};
> +
> +#endif
> -- 
> 1.7.6
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
