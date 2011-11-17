Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RR6Br-0003bo-3q
 for barebox@lists.infradead.org; Thu, 17 Nov 2011 17:56:08 +0000
Date: Thu, 17 Nov 2011 18:55:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111117175551.GO27267@pengutronix.de>
References: <1321435467-19148-1-git-send-email-jbe@pengutronix.de>
 <1321435467-19148-10-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1321435467-19148-10-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCH 09/13] Use generic block layer to access the drives and
 do partition parsing
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 16, 2011 at 10:24:23AM +0100, Juergen Beisert wrote:
> Change all relevant blockdevice users to the simplified interface.
> 
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
>  drivers/ata/Kconfig           |    2 +
>  drivers/ata/disk_bios_drive.c |   97 +++++++++++++++++------------
>  drivers/mci/Kconfig           |    1 -
>  drivers/mci/mci-core.c        |  135 ++++++++++++++++++++++++-----------------
>  drivers/usb/storage/Kconfig   |    1 +
>  drivers/usb/storage/usb.c     |  124 ++++++++++++++++++++++----------------
>  drivers/usb/storage/usb.h     |    8 +--
>  include/mci.h                 |    3 +-
>  8 files changed, 216 insertions(+), 155 deletions(-)
> 
> diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
> index f3b2939..a85958c 100644
> --- a/drivers/ata/Kconfig
> +++ b/drivers/ata/Kconfig
> @@ -1,5 +1,7 @@
>  menuconfig DISK
>  	select BLOCK
> +	select PARTITION
> +	select PARTITION_DISK
>  	bool "Disk support                  "
>  	help
>  	  Add support for disk like drives like harddisks, CDROMs, SD cards and
> diff --git a/drivers/ata/disk_bios_drive.c b/drivers/ata/disk_bios_drive.c
> index 6e2377c..28154dc 100644
> --- a/drivers/ata/disk_bios_drive.c
> +++ b/drivers/ata/disk_bios_drive.c
> @@ -1,5 +1,5 @@
>  /*
> - * Copyright (C) 2009 Juergen Beisert, Pengutronix
> + * Copyright (C) 2009...2011 Juergen Beisert, Pengutronix
>   *
>   * Mostly stolen from the GRUB2 project
>   *  Copyright (C) 1999,2000,2001,2002,2003,2004,2005,2006,2007,2008  Free Software Foundation, Inc.
> @@ -43,15 +43,13 @@
>   * Note: This driver does only support LBA addressing. Currently no CHS!
>   */
>  
> -#include <stdio.h>
> -#include <linux/types.h>
> +#include <common.h>
>  #include <init.h>
> -#include <driver.h>
> -#include <string.h>
> -#include <xfuncs.h>
>  #include <asm/syslib.h>
> -#include <ata.h>
>  #include <errno.h>
> +#include <block.h>
> +#include <disks.h>
> +#include <malloc.h>
>  
>  /**
>   * Sector count handled in one count
> @@ -61,9 +59,6 @@
>   */
>  #define SECTORS_AT_ONCE 64
>  
> -/** Size of one sector in bytes */
> -#define SECTOR_SIZE 512
> -
>  /** Command to read sectors from media */
>  #define BIOS_READ_CMD 0
>  
> @@ -89,10 +84,13 @@ struct DAPS
>   * Collection of data we need to know about the connected drive
>   */
>  struct media_access {
> +	struct block_device blk; /**< the main device */
>  	int drive_no;	/**< drive number used by the BIOS */
>  	int is_cdrom;	/**< drive is a CDROM e.g. no write support */
>  };
>  
> +#define to_media_access(x) container_of((x), struct media_access, blk)
> +
>  /**
>   * Scratch memory for BIOS communication to handle data in chunks of 32 kiB
>   *
> @@ -146,19 +144,23 @@ static int biosdisk_bios_call(struct media_access *media, int cmd, uint64_t sect
>  
>  /**
>   * Read a chunk of sectors from media
> - * @param dev our data we need to do the access
> - * @param sector_start Sector's LBA number to start read from
> - * @param sector_count Sectors to read
> + * @param blk All info about the block device we need
>   * @param buffer Buffer to read into
> + * @param block Sector's LBA number to start read from
> + * @param num_blocks Sector count to read
>   * @return 0 on success, anything else on failure
>   *
>   * This routine expects the buffer has the correct size to store all data!
> + *
> + * @note Due to 'block' is of type 'int' only small disks can be handled!
>   */
> -static int biosdisk_read(struct device_d *dev, uint64_t sector_start, unsigned sector_count, void *buffer)
> +static int biosdisk_read(struct block_device *blk, void *buffer, int block,
> +				int num_blocks)
>  {
>  	int rc;
> -	struct ata_interface *intf = dev->platform_data;
> -	struct media_access *media = intf->priv;
> +	uint64_t sector_start = block;
> +	unsigned sector_count = num_blocks;
> +	struct media_access *media = to_media_access(blk);
>  
>  	while (sector_count >= SECTORS_AT_ONCE) {
>  		rc = biosdisk_bios_call(media, BIOS_READ_CMD, sector_start, SECTORS_AT_ONCE, scratch_buffer);
> @@ -182,19 +184,23 @@ static int biosdisk_read(struct device_d *dev, uint64_t sector_start, unsigned s
>  
>  /**
>   * Write a chunk of sectors to media
> - * @param dev our data we need to do the access
> - * @param sector_start Sector's LBA number to start write to
> - * @param sector_count Sectors to write
> + * @param blk All info about the block device we need
>   * @param buffer Buffer to write from
> + * @param block Sector's LBA number to start write to
> + * @param num_blocks Sector count to write
>   * @return 0 on success, anything else on failure
>   *
>   * This routine expects the buffer has the correct size to read all data!
> + *
> + * @note Due to 'block' is of type 'int' only small disks can be handled!
>   */
> -static int biosdisk_write(struct device_d *dev, uint64_t sector_start, unsigned sector_count, const void *buffer)
> +static int __maybe_unused biosdisk_write(struct block_device *blk,
> +				const void *buffer, int block, int num_blocks)
>  {
>  	int rc;
> -	struct ata_interface *intf = dev->platform_data;
> -	struct media_access *media = intf->priv;
> +	uint64_t sector_start = block;
> +	unsigned sector_count = num_blocks;
> +	struct media_access *media = to_media_access(blk);
>  
>  	while (sector_count >= SECTORS_AT_ONCE) {
>  		__builtin_memcpy(scratch_buffer, buffer, sizeof(scratch_buffer));
> @@ -216,6 +222,13 @@ static int biosdisk_write(struct device_d *dev, uint64_t sector_start, unsigned
>  	return rc;
>  }
>  
> +static struct block_device_ops bios_ata = {
> +	.read = biosdisk_read,
> +#ifdef CONFIG_BLOCK_WRITE
> +	.write = biosdisk_write,
> +#endif
> +};
> +
>  /**
>   * Probe for connected drives and register them
>   *
> @@ -228,8 +241,6 @@ static int biosdisk_probe(struct device_d *dev)
>  {
>  	int drive, rc;
>  	struct media_access media, *m;
> -	struct device_d *drive_dev;
> -	struct ata_interface *p;
>  
>  	for (drive = 0x80; drive < 0x90; drive++) {
>  		media.drive_no = drive;
> @@ -240,27 +251,31 @@ static int biosdisk_probe(struct device_d *dev)
>  
>  		printf("BIOSdrive %d seems valid. Registering...\n", media.drive_no);
>  
> -		drive_dev = xzalloc(sizeof(struct device_d) + sizeof(struct media_access) + sizeof(struct ata_interface));
> -		if (drive_dev == NULL) {
> -			dev_err(dev, "Out of memory\n");
> -			return -1;
> -		}
> -		m = (struct media_access*)&drive_dev[1];
> -		p = (struct ata_interface*)&m[1];
> +		m = xzalloc(sizeof(struct media_access));
>  
> -		m->drive_no = drive;
> -		m->is_cdrom = 0;
> +		m->blk.dev = dev;
> +		m->blk.ops = &bios_ata;
> +		m->is_cdrom = 0;	/* don't know yet */
> +		m->blk.num_blocks = 0;	/* we don't know the size of this disk! */

The fields are already initialized to 0 since you used xzalloc.

>  
> -		p->write = biosdisk_write;
> -		p->read = biosdisk_read;
> -		p->priv = m;
> +		rc = cdev_find_free_number("disk");
> +		if (rc == -1)
> +			pr_err("Cannot find a free number for the disk node\n");

Please check for < 0 instead of -1. We should expect error codes
instead.

I wonder whether char *cdev_alloc_free_name(char *base) would be more
what we need?

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
