Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RR8qa-0002mo-5o
 for barebox@lists.infradead.org; Thu, 17 Nov 2011 20:46:13 +0000
Date: Thu, 17 Nov 2011 21:46:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111117204604.GU27267@pengutronix.de>
References: <1321435467-19148-1-git-send-email-jbe@pengutronix.de>
 <1321435467-19148-13-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1321435467-19148-13-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCH 12/13] ATA Disk Support: Add support for native ATA type
 drives
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 16, 2011 at 10:24:26AM +0100, Juergen Beisert wrote:
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
>  drivers/ata/Kconfig          |   12 +
>  drivers/ata/Makefile         |    1 +
>  drivers/ata/disk_ata_drive.c |  631 ++++++++++++++++++++++++++++++++++++++++++
>  include/ata_drive.h          |  194 +++++++++++++
>  4 files changed, 838 insertions(+), 0 deletions(-)
>  create mode 100644 drivers/ata/disk_ata_drive.c
>  create mode 100644 include/ata_drive.h
> 
> diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
> index 86b5673..0a15863 100644
> --- a/drivers/ata/Kconfig
> +++ b/drivers/ata/Kconfig
> @@ -24,6 +24,18 @@ config DISK_BIOS
>  	  media to work on. Disadvantage is: Due to its 16 bit nature it is
>  	  slow.
>  
> +config DISK_ATA
> +	bool "ATA type drives"
> +	select DISK_DRIVE
> +	help
> +	  Support for native ATA/IDE drives
> +
> +config DISK_LE_ATTACHED
> +	bool "little endianess attachment"
> +	depends on DISK_ATA
> +	help
> +	  How the drive's data port (16 bit) is connected to the CPU: LE or BE

No. We have platform data for this stuff.

> diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
> new file mode 100644
> index 0000000..cd0dabe
> --- /dev/null
> +++ b/drivers/ata/disk_ata_drive.c
> @@ -0,0 +1,631 @@
> +/*
> + * Copyright (C) 2011 Juergen Beisert, Pengutronix
> + *
> + * Inspired from various soures like http://wiki.osdev.org/ATA_PIO_Mode,
> + * u-boot and the linux kernel
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +
> +#define MAX_TIMEOUT 30000

30s seems a bit much.

> + * Swap little endian data on demand
> + * @param buf Buffer with little endian word data
> + * @param wds 16 bit word count
> + *
> + * ATA disks report their ID data in little endian notation on a 16 bit word
> + * base. So swap the buffer content if the running CPU differs in their
> + * endiaeness.
> + */
> +static void ata_fix_endianess(uint16_t *buf, unsigned wds)
> +{
> +#if __BYTE_ORDER == __BIG_ENDIAN
> +	unsigned u;
> +
> +	for (u = 0; u < wds; u++)
> +		buf[u] = le16_to_cpu(buf[u]);
> +#endif
> +}

Is this correct? I wonder that ata_id_string also works on 16bit bufs.

> +
> +/**
> + * Read the status register of the ATA drive
> + * @param io Register file
> + * @return Register's content
> + */
> +static uint8_t ata_rd_status(struct ata_ioports *io)
> +{
> +	return readb(io->status_addr);
> +}
> +
> +#define ATA_STATUS_BUSY (1 << 7)
> +#define ATA_STATUS_READY (1 << 6)
> +#define ATA_STATUS_WR_FLT (1 << 5)
> +#define ATA_STATUS_DRQ (1 << 4)
> +#define ATA_STATUS_CORR (1 << 3)
> +#define ATA_STATUS_ERROR (1 << 1)
> +
> +/**
> + * Wait until the disk is busy or time out
> + * @param io Register file
> + * @param timeout Timeout in [ms]
> + * @return 0 on success, -ETIMEDOUT else
> + */
> +static int ata_wait_busy(struct ata_ioports *io, unsigned timeout)
> +{
> +	uint8_t status;
> +
> +	timeout *= 100;
> +
> +	while (timeout) {
> +		status = ata_rd_status(io);
> +		if (status & ATA_STATUS_BUSY)
> +			break;
> +		udelay(10);
> +		timeout -= 10;
> +	};

Please use get_time_ns()/is_timeout() for timeout loops. It helps you to
implement straight forward timeout loops which do not take 20us when the
device is ready after 11us.

> +
> +	if (timeout) {
> +		pr_debug("%s: Finished with %u us remaining\n", __func__, timeout);

This seems *very* noisy.

> +		return 0;
> +	}
> +
> +	pr_debug("%s: Waiting timed out!\n", __func__);

We have a pr_debug here and additionally in each function calling this.
I think having it here is enough.

> +	return -ETIMEDOUT;
> +}
> +
> +/**
 +
> +/**
> + * Register an ATA drive behind an IDE like interface
> + * @param dev The interface device
> + * @param io ATA register file description
> + * @return 0 on success
> + */
> +int register_ata_drive(struct device_d *dev, struct ata_ioports *io)
> +{
> +	int rc;
> +	struct ata_id_layout *l;
> +	struct ata_drive_access *drive;
> +
> +	drive = xzalloc(sizeof(struct ata_drive_access));
> +
> +	drive->io = io;
> +	drive->blk.dev = dev;
> +	drive->blk.ops = &ata_ops;
> +	l = (struct ata_id_layout *)&drive->id;
> +
> +	rc = ata_reset(io);
> +	if (rc) {
> +		dev_dbg(dev, "Resetting failed\n");
> +		goto on_error;
> +	}
> +
> +	rc = ata_get_id(drive);
> +	if (rc != 0) {
> +		dev_dbg(dev, "Reading ID failed\n");
> +		goto on_error;
> +	}
> +
> +#ifdef DEBUG
> +	ata_dump_id(drive->id);
> +#endif
> +	rc = cdev_find_free_number("disk");
> +	if (rc == -1)
> +		pr_err("Cannot find a free number for the disk node\n");
> +
> +	drive->blk.num_blocks = ata_rd_capacity(l);

This is the only place where struct ata_id_layout is used.
ata_id_n_sectors seems to read the same fields from the id
block and additionally correctly handles lba48.

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
