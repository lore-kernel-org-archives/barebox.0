Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkVZx-0006Wy-7K
 for barebox@lists.infradead.org; Fri, 29 Jun 2012 07:25:22 +0000
Date: Fri, 29 Jun 2012 09:25:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120629072517.GZ1623@pengutronix.de>
References: <1340908354-17895-1-git-send-email-antonynpavlov@gmail.com>
 <1340908354-17895-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340908354-17895-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2 1/5] byteorder: fix {BIG,LITTLE}_ENDIAN defines
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 28, 2012 at 10:32:30PM +0400, Antony Pavlov wrote:
> In the Linux kernel sources the only one byteorder macro
> can be defined (__BIG_ENDIAN or __LITTLE_ENDIAN) at a time.
> 
> In barebox we have the __BIG_ENDIAN and __LITTLE_ENDIAN macros
> defined simultaneously introduced in
> 
>     commit 9ad1fe64abb12baac918ec177d9a52bbf2980d16
>     Author: Baruch Siach <baruch@tkos.co.il>
>     Date:   Sun Jun 27 08:46:05 2010 +0300
> 
>       byteorder: add missing {BIG,LITTLE}_ENDIAN defines
> 
>       This fixes build warnings when testing __BYTE_ORDER
>       of the other kin
> 
> But in arch/mips/lib/libgcc.h (from Linux) we have
> 
>  #ifdef __BIG_ENDIAN
>  struct DWstruct {
>          int high, low;
>  };
>  #elif defined(__LITTLE_ENDIAN)
>  struct DWstruct {
>          int low, high;
>  };
>  #else
>  #error I feel sick.
>  #endif
> 
> This means that regardless of current byteorder the big-endian
> DWstruct will be selected. By turn this breaks the __lshrdi3()
> function and the clocksource code on little-endian MIPS.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/ata/disk_ata_drive.c      |    2 +-
>  drivers/nor/cfi_flash.c           |    6 +++---
>  include/cramfs/cramfs_fs.h        |    4 ++--
>  include/envfs.h                   |   16 ++++++++++++----
>  include/linux/byteorder/generic.h |    7 -------
>  include/usb/usb.h                 |    2 +-
>  6 files changed, 19 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
> index 4602af3..d5c5837 100644
> --- a/drivers/ata/disk_ata_drive.c
> +++ b/drivers/ata/disk_ata_drive.c
> @@ -231,7 +231,7 @@ static void __maybe_unused ata_dump_id(uint16_t *id)
>   */
>  static void ata_fix_endianess(uint16_t *buf, unsigned wds)
>  {
> -#if __BYTE_ORDER == __BIG_ENDIAN
> +#ifdef __BIG_ENDIAN
>  	unsigned u;
>  
>  	for (u = 0; u < wds; u++)
> diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
> index 654e647..02340e6 100644
> --- a/drivers/nor/cfi_flash.c
> +++ b/drivers/nor/cfi_flash.c
> @@ -82,7 +82,7 @@ static void flash_add_byte (struct flash_info *info, cfiword_t * cword, uchar c)
>  		return;
>  	}
>  
> -#if __BYTE_ORDER == __BIG_ENDIAN
> +#ifdef __BIG_ENDIAN
>  	*cword = (*cword << 8) | c;
>  #else
>  
> @@ -167,7 +167,7 @@ static void flash_printqry (struct cfi_qry *qry)
>  uchar flash_read_uchar (struct flash_info *info, uint offset)
>  {
>  	uchar *cp = flash_make_addr(info, 0, offset);
> -#if __BYTE_ORDER == __LITTLE_ENDIAN
> +#ifdef __LITTLE_ENDIAN
>  	return flash_read8(cp);
>  #else
>  	return flash_read8(cp + info->portwidth - 1);
> @@ -195,7 +195,7 @@ static ulong flash_read_long (struct flash_info *info, flash_sect_t sect, uint o
>  		debug ("addr[%x] = 0x%x\n", x, flash_read8(addr + x));
>  	}
>  #endif
> -#if __BYTE_ORDER == __LITTLE_ENDIAN
> +#ifdef __LITTLE_ENDIAN
>  	retval = ((flash_read8(addr) << 16) |
>  		  (flash_read8(addr + info->portwidth) << 24) |
>  		  (flash_read8(addr + 2 * info->portwidth)) |
> diff --git a/include/cramfs/cramfs_fs.h b/include/cramfs/cramfs_fs.h
> index af2940b..a7e9504 100644
> --- a/include/cramfs/cramfs_fs.h
> +++ b/include/cramfs/cramfs_fs.h
> @@ -88,7 +88,7 @@ struct cramfs_super {
>  #error "No byte order defined in __BYTE_ORDER"
>  #endif
>  
> -#if __BYTE_ORDER == __LITTLE_ENDIAN
> +#ifdef __LITTLE_ENDIAN
>  #define CRAMFS_16(x)	(x)
>  #define CRAMFS_24(x)	(x)
>  #define CRAMFS_32(x)	(x)
> @@ -96,7 +96,7 @@ struct cramfs_super {
>  #define CRAMFS_GET_OFFSET(x)	((x)->offset)
>  #define CRAMFS_SET_OFFSET(x,y)	((x)->offset = (y))
>  #define CRAMFS_SET_NAMELEN(x,y) ((x)->namelen = (y))
> -#elif __BYTE_ORDER ==__BIG_ENDIAN
> +#elif defined(__BIG_ENDIAN)
>  #ifdef __KERNEL__
>  #define CRAMFS_16(x)	swab16(x)
>  #define CRAMFS_24(x)	((swab32(x)) >> 8)
> diff --git a/include/envfs.h b/include/envfs.h
> index 67b8902..cb1c648 100644
> --- a/include/envfs.h
> +++ b/include/envfs.h
> @@ -38,6 +38,11 @@ struct envfs_super {
>  #error "No byte order defined in __BYTE_ORDER"
>  #endif
>  
> +#if __BYTE_ORDER != __LITTLE_ENDIAN && __BYTE_ORDER != __BIG_ENDIAN
> +#error "__BYTE_ORDER must be __LITTLE_ENDIAN or __BIG_ENDIAN"
> +#endif

On Big Endian systems __LITTLE_ENDIAN is undefined and this results in:

In file included from common/environment.c:37:
include/envfs.h:41:21: warning: "__LITTLE_ENDIAN" is not defined

> +
> +#ifdef __LITTLE_ENDIAN

As said, this file is included from scripts/bareboxenv.c which is
compiled for userspace. __LITTLE_ENDIAN will always be defined in
userspace.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
