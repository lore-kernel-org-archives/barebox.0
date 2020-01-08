Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9IE-0006v7-QR
 for barebox@lists.infradead.org; Wed, 08 Jan 2020 11:14:32 +0000
Date: Wed, 8 Jan 2020 12:14:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200108111427.6txv5r4hvuhahkug@pengutronix.de>
References: <20200106173540.20367-1-ahmad@a3f.at>
 <20200106173540.20367-3-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106173540.20367-3-ahmad@a3f.at>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH 2/5] fs: fat: extend for in-PBL support
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, lst@pengutronix.de

On Mon, Jan 06, 2020 at 06:35:37PM +0100, Ahmad Fatoum wrote:
> The AT91 BootROM loads a boot.bin file from the first FAT partition
> into SRAM, when booting from MMC. To avoid the need for two barebox
> configurations for each of the bootloader stages, add PBL support
> for reading from FAT. This way each stage need only have a different
> PBL entry point.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  fs/Makefile      |   2 +-
>  fs/fat/Kconfig   |   7 +++
>  fs/fat/Makefile  |   4 +-
>  fs/fat/diskio.h  |   7 ++-
>  fs/fat/fat-pbl.c | 148 +++++++++++++++++++++++++++++++++++++++++++++++
>  fs/fat/ff.c      | 104 +++++++++++++++++++--------------
>  fs/fat/ff.h      |  17 ++++--
>  include/pbl.h    |   1 +
>  8 files changed, 237 insertions(+), 53 deletions(-)
>  create mode 100644 fs/fat/fat-pbl.c
> 
> diff --git a/fs/Makefile b/fs/Makefile
> index 9889a6507c1b..89ccc8947dc0 100644
> --- a/fs/Makefile
> +++ b/fs/Makefile
> @@ -4,7 +4,7 @@ obj-$(CONFIG_FS_RAMFS)	+= ramfs.o
>  obj-y			+= devfs-core.o
>  obj-$(CONFIG_FS_LEGACY) += legacy.o
>  obj-$(CONFIG_FS_DEVFS)	+= devfs.o
> -obj-$(CONFIG_FS_FAT)	+= fat/
> +obj-pbl-$(CONFIG_FS_FAT)	+= fat/
>  obj-y	+= fs.o libfs.o
>  obj-$(CONFIG_FS_UBIFS)	+= ubifs/
>  obj-$(CONFIG_FS_TFTP)	+= tftp.o
> diff --git a/fs/fat/Kconfig b/fs/fat/Kconfig
> index b1def851cfb8..bc3b4b69e870 100644
> --- a/fs/fat/Kconfig
> +++ b/fs/fat/Kconfig
> @@ -8,9 +8,16 @@ if FS_FAT
>  config FS_FAT_WRITE
>  	bool
>  	prompt "FAT write support"
> +	help
> +	  Enable support for writing in FAT partitions.
> +	  Note: This doesn't apply to FAT usage in barebox PBL.
> +
>  
>  config FS_FAT_LFN
>  	bool
>  	prompt "Support long filenames"
> +	help
> +	  Enable support for file names other than 8.3.
> +	  Note: This doesn't apply to FAT usage in barebox PBL.
>  
>  endif
> diff --git a/fs/fat/Makefile b/fs/fat/Makefile
> index efc89ec67db8..2a8a787d5438 100644
> --- a/fs/fat/Makefile
> +++ b/fs/fat/Makefile
> @@ -1 +1,3 @@
> -obj-y += ff.o fat.o
> +obj-y += fat.o
> +pbl-y += fat-pbl.o
> +obj-pbl-y += ff.o
> diff --git a/fs/fat/diskio.h b/fs/fat/diskio.h
> index f0d29dc390d5..aee1ce2b0b3b 100644
> --- a/fs/fat/diskio.h
> +++ b/fs/fat/diskio.h
> @@ -4,7 +4,12 @@
>  
>  #ifndef _DISKIO
>  
> -#define _READONLY	0	/* 1: Remove write functions */
> +#ifdef __PBL__
> +#define _READONLY	1	/* 1: Remove write functions */
> +#else
> +#define _READONLY	0
> +#endif
> +
>  #define _USE_IOCTL	1	/* 1: Use disk_ioctl fucntion */
>  
>  #include "integer.h"
> diff --git a/fs/fat/fat-pbl.c b/fs/fat/fat-pbl.c
> new file mode 100644
> index 000000000000..bd158bff8278
> --- /dev/null
> +++ b/fs/fat/fat-pbl.c
> @@ -0,0 +1,148 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * fat.c - FAT filesystem barebox driver
> + *
> + * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> + */
> +
> +#define pr_fmt(fmt) "fat-pbl: " fmt
> +
> +#include <common.h>
> +#include "integer.h"
> +#include "ff.h"
> +#include "diskio.h"
> +#include "pbl.h"
> +
> +/* ---------------------------------------------------------------*/
> +
> +DRESULT disk_read(FATFS *fat, BYTE *buf, DWORD sector, BYTE count)
> +{
> +	struct pbl_bio *bio = fat->userdata;
> +	int ret;
> +
> +	debug("%s: sector: %ld count: %d\n", __func__, sector, count);
> +
> +	ret = bio->read(bio, sector, buf, count);
> +	if (ret != count)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +DSTATUS disk_status(FATFS *fat)
> +{
> +	return 0;
> +}
> +
> +DWORD get_fattime(void)
> +{
> +	return 0;
> +}
> +
> +DRESULT disk_ioctl (FATFS *fat, BYTE command, void *buf)
> +{
> +	return 0;
> +}
> +
> +WCHAR ff_convert(WCHAR src, UINT dir)
> +{
> +	if (src <= 0x80)
> +		return src;
> +	else
> +		return '?';
> +}
> +
> +WCHAR ff_wtoupper(WCHAR chr)
> +{
> +	if (chr > 0x80)
> +		return '?';
> +
> +	if ('a' <= chr && chr <= 'z')
> +		return  chr + 'A' - 'a';
> +
> +	return chr;
> +}
> +
> +static int fat_loadimage(FATFS *fs, const char *filename, void *dest, unsigned int len)
> +{
> +	FIL	file = {};
> +	UINT	nread;
> +	int	ret;
> +
> +	ret = f_open(fs, &file, filename, FA_OPEN_EXISTING | FA_READ);
> +	if (ret) {
> +		pr_debug("f_open(%s) failed: %d\n", filename, ret);
> +		return ret;
> +	}
> +
> +	ret = f_read(&file, dest, len, &nread);
> +	if (ret) {
> +		pr_debug("f_read failed: %d\n", ret);
> +		return ret;
> +	}
> +
> +	if (f_size(&file) > len)
> +		return -ENOSPC;
> +
> +	return 0;
> +}
> +
> +int pbl_fat_load(struct pbl_bio *bio, const char *filename, void *dest, unsigned int len)
> +{
> +	FATFS	fs = {};
> +	int	ret;
> +
> +	fs.userdata = bio;
> +
> +	/* mount fs */
> +	ret = f_mount(&fs);
> +	if (ret) {
> +		pr_debug("f_mount(%s) failed: %d\n", filename, ret);
> +		return ret;
> +	}
> +
> +	pr_debug("Reading file %s to 0x%p\n", filename, dest);
> +
> +	return fat_loadimage(&fs, filename, dest, len);
> +}
> +
> +#define BS_55AA                     510     /* Boot sector signature (2) */
> +#define BS_FilSysType               54      /* File system type (1) */
> +#define BS_FilSysType32             82      /* File system type (1) */
> +#define MBR_Table           446     /* MBR: Partition table offset (2) */
> +#define MBR_StartSector             8
> +
> +enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec)
> +{
> +	/*
> +	 * bootsec can be used to return index of the first sector in the
> +	 * first partition
> +	 */
> +	if (bootsec)
> +		*bootsec = 0;
> +
> +	/*
> +	 * Check record signature (always placed at offset 510 even if the
> +	 * sector size is > 512)
> +	 */
> +	if (get_unaligned_le16(&sector[BS_55AA]) != 0xAA55)
> +		return filetype_unknown;
> +
> +	/* Check "FAT" string */
> +	if ((get_unaligned_le32(&sector[BS_FilSysType]) & 0xFFFFFF) == 0x544146)
> +		return filetype_fat;
> +
> +	if ((get_unaligned_le32(&sector[BS_FilSysType32]) & 0xFFFFFF) == 0x544146)
> +		return filetype_fat;
> +
> +	if (bootsec)
> +		/*
> +		 * This must be an MBR, so return the starting sector of the
> +		 * first partition so we could check if there is a FAT boot
> +		 * sector there
> +		 */
> +		*bootsec = get_unaligned_le16(&sector[MBR_Table + MBR_StartSector]);
> +
> +	return filetype_mbr;
> +}
> +
> diff --git a/fs/fat/ff.c b/fs/fat/ff.c
> index 4d30433e5f03..29e4c8adb614 100644
> --- a/fs/fat/ff.c
> +++ b/fs/fat/ff.c
> @@ -92,10 +92,24 @@
>  #include <string.h>
>  #include <errno.h>
>  #include <malloc.h>
> -#include <linux/ctype.h>
>  #include <filetype.h>
>  #include "ff.h"			/* FatFs configurations and declarations */
>  #include "diskio.h"		/* Declarations of low level disk I/O functions */
> +#include <pbl.h>
> +
> +#ifndef __PBL__
> +#include <linux/ctype.h>
> +#else
> +static inline int isupper(int ch)
> +{
> +	return 'A' <= ch && ch <= 'Z';
> +}
> +
> +static inline int islower(int ch)
> +{
> +	return 'a' <= ch && ch <= 'z';
> +}
> +#endif

Better compile lib/ctype.c for pbl as well and use standard
linux/ctype.h for pbl?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
