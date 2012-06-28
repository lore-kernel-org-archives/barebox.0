Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkBop-0004mq-Db
 for barebox@lists.infradead.org; Thu, 28 Jun 2012 10:19:25 +0000
Date: Thu, 28 Jun 2012 12:19:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120628101917.GU1623@pengutronix.de>
References: <1340876689-26303-1-git-send-email-antonynpavlov@gmail.com>
 <1340876689-26303-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340876689-26303-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/4] byteorder: fix {BIG,LITTLE}_ENDIAN defines
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Thu, Jun 28, 2012 at 01:44:46PM +0400, Antony Pavlov wrote:
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

Additionally I suggest to add the following to include/common.h:

/*
 * sanity check. The Linux Kernel defines only one of __LITTLE_ENDIAN and
 * __BIG_ENDIAN. Endianess can then be tested with #ifdef __xx_ENDIAN. Userspace
 * always defined both __LITTLE_ENDIAN and __BIG_ENDIAN and byteorder can then
 * be tested with #if __BYTE_ORDER == __xx_ENDIAN.
 *
 * As we tend to use a lot of Kernel code in barebox we use the kernel way of
 * determing the byte order. Make sure here that architecture code properly
 * defines it.
 */
#include <asm/byteorder.h>
#if defined __LITTLE_ENDIAN && defined __BIG_ENDIAN
#error "both __LITTLE_ENDIAN and __BIG_ENDIAN are defined"
#endif
#if !defined __LITTLE_ENDIAN && !defined __BIG_ENDIAN
#error "None of __LITTLE_ENDIAN and __BIG_ENDIAN are defined"
#endif

>  #define CRAMFS_24(x)	((swab32(x)) >> 8)
> diff --git a/include/envfs.h b/include/envfs.h
> index 67b8902..c053f19 100644
> --- a/include/envfs.h
> +++ b/include/envfs.h
> @@ -38,7 +38,7 @@ struct envfs_super {
>  #error "No byte order defined in __BYTE_ORDER"
>  #endif
>  
> -#if __BYTE_ORDER == __LITTLE_ENDIAN
> +#ifdef __LITTLE_ENDIAN

Be careful. This is also included when building the barebox env tool.

Getting the endianess right is tricky. As mentioned above in Userspace
we have:

#define __LITTLE_ENDIAN 1234
#define __BIG_ENDIAN 4321
#define __BYTE_ORDER [__LITTLE_ENDIAN|__BIG_ENDIAN]

Whereas the kernel only defines either __LITTLE_ENDIAN or __BIG_ENDIAN

This means that #ifdef __LITTLE_ENDIAN in userspace will always be true
regardless of the endianess.


> diff --git a/scripts/compiler.h b/scripts/compiler.h
> index 53f84b6..dac7d46 100644
> --- a/scripts/compiler.h
> +++ b/scripts/compiler.h
> @@ -79,7 +79,7 @@ typedef uint32_t __u32;
>  # define uswap_64(x) _uswap_64(x, )
>  #endif
>  
> -#if __BYTE_ORDER == __LITTLE_ENDIAN
> +#ifdef __LITTLE_ENDIAN

So this is also wrong.

>  # define cpu_to_le16(x)		(x)
>  # define cpu_to_le32(x)		(x)
>  # define cpu_to_le64(x)		(x)
> diff --git a/scripts/setupmbr/arch.h b/scripts/setupmbr/arch.h
> index a720dfe..1dc3f50 100644
> --- a/scripts/setupmbr/arch.h
> +++ b/scripts/setupmbr/arch.h
> @@ -32,7 +32,7 @@
>                      | (_x >> 56)); \
>  })
>  
> -#if __BYTE_ORDER == __BIG_ENDIAN
> +#ifdef __BIG_ENDIAN

ditto.

I suggest using the following patch which should do the things I
mentioned right.

Sascha


8<----------------------------------------------------------

Change byte order detection mechanism to kernel style

The Linux Kernel defines only one of __LITTLE_ENDIAN and
__BIG_ENDIAN. Endianess can then be tested with #ifdef __xx_ENDIAN. Userspace
always defined both __LITTLE_ENDIAN and __BIG_ENDIAN and byteorder can then
be tested with #if __BYTE_ORDER == __xx_ENDIAN.

As we tend to use a lot of Kernel code in barebox we switch to use the kernel
way of determing the byte order.

As this always causes a lot of confusion add a check to include/common.h to
make sure only one of __LITTLE_ENDIAN and __BIG_ENDIAN is defined.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/disk_ata_drive.c      |    2 +-
 drivers/nor/cfi_flash.c           |   10 ++++++----
 include/common.h                  |   18 ++++++++++++++++++
 include/cramfs/cramfs_fs.h        |    8 ++------
 include/envfs.h                   |   22 ++++++++++++++++++----
 include/linux/byteorder/generic.h |    7 -------
 include/usb/usb.h                 |    6 ++++--
 7 files changed, 49 insertions(+), 24 deletions(-)

diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index 4602af3..d5c5837 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -231,7 +231,7 @@ static void __maybe_unused ata_dump_id(uint16_t *id)
  */
 static void ata_fix_endianess(uint16_t *buf, unsigned wds)
 {
-#if __BYTE_ORDER == __BIG_ENDIAN
+#ifdef __BIG_ENDIAN
 	unsigned u;
 
 	for (u = 0; u < wds; u++)
diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index 654e647..82c1cae 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -82,9 +82,9 @@ static void flash_add_byte (struct flash_info *info, cfiword_t * cword, uchar c)
 		return;
 	}
 
-#if __BYTE_ORDER == __BIG_ENDIAN
+#ifdef __BIG_ENDIAN
 	*cword = (*cword << 8) | c;
-#else
+#elif defined __LITTLE_ENDIAN
 
 	if (bankwidth_is_2(info))
 		*cword = (*cword >> 8) | (u16)c << 8;
@@ -92,6 +92,8 @@ static void flash_add_byte (struct flash_info *info, cfiword_t * cword, uchar c)
 		*cword = (*cword >> 8) | (u32)c << 24;
 	else if (bankwidth_is_8(info))
 		*cword = (*cword >> 8) | (u64)c << 56;
+#else
+#error "could not determine byte order"
 #endif
 }
 
@@ -167,7 +169,7 @@ static void flash_printqry (struct cfi_qry *qry)
 uchar flash_read_uchar (struct flash_info *info, uint offset)
 {
 	uchar *cp = flash_make_addr(info, 0, offset);
-#if __BYTE_ORDER == __LITTLE_ENDIAN
+#if defined __LITTLE_ENDIAN
 	return flash_read8(cp);
 #else
 	return flash_read8(cp + info->portwidth - 1);
@@ -195,7 +197,7 @@ static ulong flash_read_long (struct flash_info *info, flash_sect_t sect, uint o
 		debug ("addr[%x] = 0x%x\n", x, flash_read8(addr + x));
 	}
 #endif
-#if __BYTE_ORDER == __LITTLE_ENDIAN
+#if defined __LITTLE_ENDIAN
 	retval = ((flash_read8(addr) << 16) |
 		  (flash_read8(addr + info->portwidth) << 24) |
 		  (flash_read8(addr + 2 * info->portwidth)) |
diff --git a/include/common.h b/include/common.h
index d2347f8..9287a7d 100644
--- a/include/common.h
+++ b/include/common.h
@@ -34,6 +34,24 @@
 #include <linux/stddef.h>
 #include <asm/common.h>
 
+/*
+ * sanity check. The Linux Kernel defines only one of __LITTLE_ENDIAN and
+ * __BIG_ENDIAN. Endianess can then be tested with #ifdef __xx_ENDIAN. Userspace
+ * always defined both __LITTLE_ENDIAN and __BIG_ENDIAN and byteorder can then
+ * be tested with #if __BYTE_ORDER == __xx_ENDIAN.
+ *
+ * As we tend to use a lot of Kernel code in barebox we use the kernel way of
+ * determing the byte order. Make sure here that architecture code properly
+ * defines it.
+ */
+#include <asm/byteorder.h>
+#if defined __LITTLE_ENDIAN && defined __BIG_ENDIAN
+#error "both __LITTLE_ENDIAN and __BIG_ENDIAN are defined"
+#endif
+#if !defined __LITTLE_ENDIAN && !defined __BIG_ENDIAN
+#error "None of __LITTLE_ENDIAN and __BIG_ENDIAN are defined"
+#endif
+
 #define pr_info(fmt, arg...)	printf(fmt, ##arg)
 #define pr_notice(fmt, arg...)	printf(fmt, ##arg)
 #define pr_err(fmt, arg...)	printf(fmt, ##arg)
diff --git a/include/cramfs/cramfs_fs.h b/include/cramfs/cramfs_fs.h
index af2940b..8c53fc7 100644
--- a/include/cramfs/cramfs_fs.h
+++ b/include/cramfs/cramfs_fs.h
@@ -84,11 +84,7 @@ struct cramfs_super {
 				| CRAMFS_FLAG_WRONG_SIGNATURE \
 				| CRAMFS_FLAG_SHIFTED_ROOT_OFFSET )
 
-#ifndef __BYTE_ORDER
-#error "No byte order defined in __BYTE_ORDER"
-#endif
-
-#if __BYTE_ORDER == __LITTLE_ENDIAN
+#ifdef __LITTLE_ENDIAN
 #define CRAMFS_16(x)	(x)
 #define CRAMFS_24(x)	(x)
 #define CRAMFS_32(x)	(x)
@@ -96,7 +92,7 @@ struct cramfs_super {
 #define CRAMFS_GET_OFFSET(x)	((x)->offset)
 #define CRAMFS_SET_OFFSET(x,y)	((x)->offset = (y))
 #define CRAMFS_SET_NAMELEN(x,y) ((x)->namelen = (y))
-#elif __BYTE_ORDER ==__BIG_ENDIAN
+#elif defined __BIG_ENDIAN
 #ifdef __KERNEL__
 #define CRAMFS_16(x)	swab16(x)
 #define CRAMFS_24(x)	((swab32(x)) >> 8)
diff --git a/include/envfs.h b/include/envfs.h
index 67b8902..ba976d6 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -34,11 +34,25 @@ struct envfs_super {
 	uint32_t sb_crc;		/* crc for the superblock */
 };
 
-#ifndef __BYTE_ORDER
-#error "No byte order defined in __BYTE_ORDER"
+#ifdef __BAREBOX__
+#  ifdef __LITTLE_ENDIAN
+#    define ENVFS_ORDER_LITTLE
+#  elif defined __BIG_ENDIAN
+#    define ENVFS_ORDER_BIG
+#  else
+#    error "could not determine byte order"
+#  endif
+#else
+#  if __BYTE_ORDER == __LITTLE_ENDIAN
+#    define ENVFS_ORDER_LITTLE
+#  elif __BYTE_ORDER == __BIG_ENDIAN
+#    define ENVFS_ORDER_BIG
+#  else
+#    error "could not determine byte order"
+#  endif
 #endif
 
-#if __BYTE_ORDER == __LITTLE_ENDIAN
+#ifdef ENVFS_ORDER_LITTLE
 #define ENVFS_16(x)	(x)
 #define ENVFS_24(x)	(x)
 #define ENVFS_32(x)	(x)
@@ -46,7 +60,7 @@ struct envfs_super {
 #define ENVFS_GET_OFFSET(x)	((x)->offset)
 #define ENVFS_SET_OFFSET(x,y)	((x)->offset = (y))
 #define ENVFS_SET_NAMELEN(x,y) ((x)->namelen = (y))
-#elif __BYTE_ORDER == __BIG_ENDIAN
+#elif defined ENVFS_ORDER_BIG
 #ifdef __KERNEL__
 #define ENVFS_16(x)	swab16(x)
 #define ENVFS_24(x)	((swab32(x)) >> 8)
diff --git a/include/linux/byteorder/generic.h b/include/linux/byteorder/generic.h
index aab8f4b..2d68d99 100644
--- a/include/linux/byteorder/generic.h
+++ b/include/linux/byteorder/generic.h
@@ -78,13 +78,6 @@
  *
  */
 
-#ifndef __LITTLE_ENDIAN
-#define __LITTLE_ENDIAN	1234
-#endif
-#ifndef __BIG_ENDIAN
-#define __BIG_ENDIAN	4321
-#endif
-
 #if defined(__KERNEL__)
 /*
  * inside the kernel, we can use nicknames;
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 296e4e8..8691400 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -270,12 +270,14 @@ void usb_rescan(void);
 		((x_ & 0xFF000000UL) >> 24)); \
 	})
 
-#if __BYTE_ORDER == __LITTLE_ENDIAN
+#ifdef __LITTLE_ENDIAN
 # define swap_16(x) (x)
 # define swap_32(x) (x)
-#else
+#elif defined BIG_ENDIAN
 # define swap_16(x) __swap_16(x)
 # define swap_32(x) __swap_32(x)
+#else
+#error "could not determine byte order"
 #endif
 
 /*
-- 
1.7.10

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
