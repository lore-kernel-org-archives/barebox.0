Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkBHZ-0002aI-36
 for barebox@lists.infradead.org; Thu, 28 Jun 2012 09:45:02 +0000
Received: by lbbgg6 with SMTP id gg6so2896754lbb.36
 for <barebox@lists.infradead.org>; Thu, 28 Jun 2012 02:44:59 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 28 Jun 2012 13:44:46 +0400
Message-Id: <1340876689-26303-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1340876689-26303-1-git-send-email-antonynpavlov@gmail.com>
References: <1340876689-26303-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] byteorder: fix {BIG,LITTLE}_ENDIAN defines
To: barebox@lists.infradead.org

In the Linux kernel sources the only one byteorder macro
can be defined (__BIG_ENDIAN or __LITTLE_ENDIAN) at a time.

In barebox we have the __BIG_ENDIAN and __LITTLE_ENDIAN macros
defined simultaneously introduced in

    commit 9ad1fe64abb12baac918ec177d9a52bbf2980d16
    Author: Baruch Siach <baruch@tkos.co.il>
    Date:   Sun Jun 27 08:46:05 2010 +0300

      byteorder: add missing {BIG,LITTLE}_ENDIAN defines

      This fixes build warnings when testing __BYTE_ORDER
      of the other kin

But in arch/mips/lib/libgcc.h (from Linux) we have

 #ifdef __BIG_ENDIAN
 struct DWstruct {
         int high, low;
 };
 #elif defined(__LITTLE_ENDIAN)
 struct DWstruct {
         int low, high;
 };
 #else
 #error I feel sick.
 #endif

This means that regardless of current byteorder the big-endian
DWstruct will be selected. By turn this breaks the __lshrdi3()
function and the clocksource code on little-endian MIPS.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/ata/disk_ata_drive.c      |    2 +-
 drivers/nor/cfi_flash.c           |    6 +++---
 include/cramfs/cramfs_fs.h        |    4 ++--
 include/envfs.h                   |    4 ++--
 include/linux/byteorder/generic.h |    7 -------
 include/usb/usb.h                 |    2 +-
 scripts/compiler.h                |    2 +-
 scripts/setupmbr/arch.h           |    2 +-
 8 files changed, 11 insertions(+), 18 deletions(-)

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
index 654e647..02340e6 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -82,7 +82,7 @@ static void flash_add_byte (struct flash_info *info, cfiword_t * cword, uchar c)
 		return;
 	}
 
-#if __BYTE_ORDER == __BIG_ENDIAN
+#ifdef __BIG_ENDIAN
 	*cword = (*cword << 8) | c;
 #else
 
@@ -167,7 +167,7 @@ static void flash_printqry (struct cfi_qry *qry)
 uchar flash_read_uchar (struct flash_info *info, uint offset)
 {
 	uchar *cp = flash_make_addr(info, 0, offset);
-#if __BYTE_ORDER == __LITTLE_ENDIAN
+#ifdef __LITTLE_ENDIAN
 	return flash_read8(cp);
 #else
 	return flash_read8(cp + info->portwidth - 1);
@@ -195,7 +195,7 @@ static ulong flash_read_long (struct flash_info *info, flash_sect_t sect, uint o
 		debug ("addr[%x] = 0x%x\n", x, flash_read8(addr + x));
 	}
 #endif
-#if __BYTE_ORDER == __LITTLE_ENDIAN
+#ifdef __LITTLE_ENDIAN
 	retval = ((flash_read8(addr) << 16) |
 		  (flash_read8(addr + info->portwidth) << 24) |
 		  (flash_read8(addr + 2 * info->portwidth)) |
diff --git a/include/cramfs/cramfs_fs.h b/include/cramfs/cramfs_fs.h
index af2940b..a7e9504 100644
--- a/include/cramfs/cramfs_fs.h
+++ b/include/cramfs/cramfs_fs.h
@@ -88,7 +88,7 @@ struct cramfs_super {
 #error "No byte order defined in __BYTE_ORDER"
 #endif
 
-#if __BYTE_ORDER == __LITTLE_ENDIAN
+#ifdef __LITTLE_ENDIAN
 #define CRAMFS_16(x)	(x)
 #define CRAMFS_24(x)	(x)
 #define CRAMFS_32(x)	(x)
@@ -96,7 +96,7 @@ struct cramfs_super {
 #define CRAMFS_GET_OFFSET(x)	((x)->offset)
 #define CRAMFS_SET_OFFSET(x,y)	((x)->offset = (y))
 #define CRAMFS_SET_NAMELEN(x,y) ((x)->namelen = (y))
-#elif __BYTE_ORDER ==__BIG_ENDIAN
+#elif defined(__BIG_ENDIAN)
 #ifdef __KERNEL__
 #define CRAMFS_16(x)	swab16(x)
 #define CRAMFS_24(x)	((swab32(x)) >> 8)
diff --git a/include/envfs.h b/include/envfs.h
index 67b8902..c053f19 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -38,7 +38,7 @@ struct envfs_super {
 #error "No byte order defined in __BYTE_ORDER"
 #endif
 
-#if __BYTE_ORDER == __LITTLE_ENDIAN
+#ifdef __LITTLE_ENDIAN
 #define ENVFS_16(x)	(x)
 #define ENVFS_24(x)	(x)
 #define ENVFS_32(x)	(x)
@@ -46,7 +46,7 @@ struct envfs_super {
 #define ENVFS_GET_OFFSET(x)	((x)->offset)
 #define ENVFS_SET_OFFSET(x,y)	((x)->offset = (y))
 #define ENVFS_SET_NAMELEN(x,y) ((x)->namelen = (y))
-#elif __BYTE_ORDER == __BIG_ENDIAN
+#elif defined(__BIG_ENDIAN)
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
index f273983..e13d549 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -271,7 +271,7 @@ void usb_rescan(void);
 		((x_ & 0xFF000000UL) >> 24)); \
 	})
 
-#if __BYTE_ORDER == __LITTLE_ENDIAN
+#ifdef __LITTLE_ENDIAN
 # define swap_16(x) (x)
 # define swap_32(x) (x)
 #else
diff --git a/scripts/compiler.h b/scripts/compiler.h
index 53f84b6..dac7d46 100644
--- a/scripts/compiler.h
+++ b/scripts/compiler.h
@@ -79,7 +79,7 @@ typedef uint32_t __u32;
 # define uswap_64(x) _uswap_64(x, )
 #endif
 
-#if __BYTE_ORDER == __LITTLE_ENDIAN
+#ifdef __LITTLE_ENDIAN
 # define cpu_to_le16(x)		(x)
 # define cpu_to_le32(x)		(x)
 # define cpu_to_le64(x)		(x)
diff --git a/scripts/setupmbr/arch.h b/scripts/setupmbr/arch.h
index a720dfe..1dc3f50 100644
--- a/scripts/setupmbr/arch.h
+++ b/scripts/setupmbr/arch.h
@@ -32,7 +32,7 @@
                     | (_x >> 56)); \
 })
 
-#if __BYTE_ORDER == __BIG_ENDIAN
+#ifdef __BIG_ENDIAN
 
 /* Our target is a ia32 machine, always little endian */
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
