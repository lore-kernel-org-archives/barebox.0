Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-tul01m020-f177.google.com ([209.85.214.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RumIT-0003Z0-Mz
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 14:45:31 +0000
Received: by obcuz6 with SMTP id uz6so10045938obc.36
 for <barebox@lists.infradead.org>; Tue, 07 Feb 2012 06:45:28 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 7 Feb 2012 22:45:27 +0800
Message-ID: <CAHjoi4eBPAL=R-E132z3ZsOWVw+VBFtQWUcMAYvmvx5hEkn+4A@mail.gmail.com>
From: Keith Mok <ek9852@gmail.com>
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
Subject: [PATCH] Fix Mac OS cross compile failed.
To: barebox@lists.infradead.org

Fix to avoid using GNU extension on varies areas.

Signed-off-by: Keith Mok <ek9852@gmail.com>
---
 common/Makefile       |    4 +-
 crypto/crc32.c        |   10 ++--
 include/envfs.h       |   12 ++++
 include/image.h       |    3 +-
 scripts/genenv        |    4 +-
 scripts/omap_signGP.c |  143 +++++++++++++++++++++++++-----------------------
 6 files changed, 97 insertions(+), 79 deletions(-)

diff --git a/common/Makefile b/common/Makefile
index d1132c3..ded742b 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -47,7 +47,7 @@ ifneq ($(CONFIG_DEFAULT_ENVIRONMENT_PATH),"")
 DEFAULT_ENVIRONMENT_PATH += $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
 endif

-ENV_FILES := $(shell cd $(srctree); for i in
$(DEFAULT_ENVIRONMENT_PATH); do find $${i} -type f -exec readlink -f
'{}' \;; done)
+ENV_FILES := $(shell for i in $(srctree)/$(DEFAULT_ENVIRONMENT_PATH);
do find $${i} -type f; done)

 endif # ifdef CONFIG_DEFAULT_ENVIRONMENT

@@ -76,7 +76,7 @@ barebox_default_env.lzo: barebox_default_env

 include/generated/barebox_default_env.h:
barebox_default_env$(barebox_default_env_comp)
 	$(Q)cat $< | $(objtree)/scripts/bin2c default_environment > $@
-	$(Q)echo "const int default_environment_uncompress_size=`stat -c%s
barebox_default_env`;" >> $@
+	$(Q)echo "const int default_environment_uncompress_size=`wc -c
barebox_default_env | awk '{print $$1}'`;" >> $@

 CLEAN_FILES += include/generated/barebox_default_env.h barebox_default_env
 CLEAN_FILES += barebox_default_env.gz barebox_default_env.bz2
diff --git a/crypto/crc32.c b/crypto/crc32.c
index 275edb4..a62a410 100644
--- a/crypto/crc32.c
+++ b/crypto/crc32.c
@@ -15,7 +15,7 @@
 #ifdef CONFIG_DYNAMIC_CRC_TABLE

 static int crc_table_empty = 1;
-static ulong crc_table[256];
+static u_long crc_table[256];
 static void make_crc_table(void);

 /*
@@ -44,9 +44,9 @@ static void make_crc_table(void);
 */
 static void make_crc_table(void)
 {
-  ulong c;
+  u_long c;
   int n, k;
-  ulong poly;            /* polynomial exclusive-or pattern */
+  u_long poly;            /* polynomial exclusive-or pattern */
   /* terms of polynomial defining this crc (except x^32): */
   static const char p[] = {0,1,2,4,5,7,8,10,11,12,16,22,23,26};

@@ -57,7 +57,7 @@ static void make_crc_table(void)

   for (n = 0; n < 256; n++)
   {
-    c = (ulong)n;
+    c = (u_long)n;
     for (k = 0; k < 8; k++)
       c = c & 1 ? poly ^ (c >> 1) : c >> 1;
     crc_table[n] = c;
@@ -68,7 +68,7 @@ static void make_crc_table(void)
 /* ========================================================================
  * Table of CRC-32's of all single-byte values (made by make_crc_table)
  */
-static const ulong crc_table[256] = {
+static const u_long crc_table[256] = {
   0x00000000L, 0x77073096L, 0xee0e612cL, 0x990951baL, 0x076dc419L,
   0x706af48fL, 0xe963a535L, 0x9e6495a3L, 0x0edb8832L, 0x79dcb8a4L,
   0xe0d5e91eL, 0x97d2d988L, 0x09b64c2bL, 0x7eb17cbdL, 0xe7b82d07L,
diff --git a/include/envfs.h b/include/envfs.h
index b5849d9..b6e9110 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -1,7 +1,9 @@
 #ifndef _ENVFS_H
 #define _ENVFS_H

+#ifndef __APPLE__
 #include <asm/byteorder.h>
+#endif

 #define ENVFS_MAGIC		    0x798fba79	/* some random number */
 #define ENVFS_INODE_MAGIC	0x67a8c78d
@@ -33,8 +35,18 @@ struct envfs_super {
 };

 #ifndef __BYTE_ORDER
+#ifdef __APPLE__
+#ifdef __LITTLE_ENDIAN__
+#define __BYTE_ORDER __LITTLE_ENDIAN
+#elif defined(__BIG_ENDIAN__)
+#define __BYTE_ORDER __BIG_ENDIAN
+#else
+#error "No byte order defined (either __LITTLE_ENDIAN__ or __BIG_ENDIAN__"
+#endif
+#else
 #error "No byte order defined in __BYTE_ORDER"
 #endif
+#endif

 #if __BYTE_ORDER == __LITTLE_ENDIAN
 #define ENVFS_16(x)	(x)
diff --git a/include/image.h b/include/image.h
index 35ff01b..b219b20 100644
--- a/include/image.h
+++ b/include/image.h
@@ -31,11 +31,12 @@
 #ifndef __IMAGE_H__
 #define __IMAGE_H__

-#include <linux/types.h>
 #ifdef __BAREBOX__
 #include <asm/byteorder.h>
 #include <stdio.h>
 #include <string.h>
+#else
+#include <stdint.h>
 #endif

 /*
diff --git a/scripts/genenv b/scripts/genenv
index 7b279c8..da9de61 100755
--- a/scripts/genenv
+++ b/scripts/genenv
@@ -8,13 +8,13 @@ objtree=$2
 cd $1 || exit 1
 shift 2

-tempdir=$(mktemp -d)
+tempdir=$(mktemp -d tmp.XXXXXXXXXX)

 for i in $*; do
 	cp -r $i/* $tempdir
 done

-find $tempdir -name '.svn' -o -name '*~' | xargs --no-run-if-empty rm -r
+find $tempdir -name '.svn' -o -name '*~' | xargs rm -rf

 $objtree/scripts/bareboxenv -s $tempdir $objtree/barebox_default_env

diff --git a/scripts/omap_signGP.c b/scripts/omap_signGP.c
index d20d357..c892f07 100644
--- a/scripts/omap_signGP.c
+++ b/scripts/omap_signGP.c
@@ -28,90 +28,90 @@
 #include <sys/stat.h>
 #include <string.h>
 #include <malloc.h>
-#include <linux/types.h>
+#include <stdint.h>

 #undef CH_WITH_CHRAM
 struct chsettings {
-	__u32 section_key;
-	__u8 valid;
-	__u8 version;
-	__u16 reserved;
-	__u32 flags;
+	uint32_t section_key;
+	uint8_t valid;
+	uint8_t version;
+	uint16_t reserved;
+	uint32_t flags;
 } __attribute__ ((__packed__));

-/*    __u32  cm_clksel_core;
-    __u32  reserved1;
-    __u32  cm_autoidle_dpll_mpu;
-    __u32  cm_clksel_dpll_mpu;
-    __u32  cm_div_m2_dpll_mpu;
-    __u32  cm_autoidle_dpll_core;
-    __u32  cm_clksel_dpll_core;
-    __u32  cm_div_m2_dpll_core;
-    __u32  cm_div_m3_dpll_core;
-    __u32  cm_div_m4_dpll_core;
-    __u32  cm_div_m5_dpll_core;
-    __u32  cm_div_m6_dpll_core;
-    __u32  cm_div_m7_dpll_core;
-    __u32  cm_autoidle_dpll_per;
-    __u32  cm_clksel_dpll_per;
-    __u32  cm_div_m2_dpll_per;
-    __u32  cm_div_m3_dpll_per;
-    __u32  cm_div_m4_dpll_per;
-    __u32  cm_div_m5_dpll_per;
-    __u32  cm_div_m6_dpll_per;
-    __u32  cm_div_m7_dpll_per;
-    __u32  cm_autoidle_dpll_usb;
-    __u32  cm_clksel_dpll_usb;
-    __u32  cm_div_m2_dpll_usb;
+/*    uint32_t  cm_clksel_core;
+    uint32_t  reserved1;
+    uint32_t  cm_autoidle_dpll_mpu;
+    uint32_t  cm_clksel_dpll_mpu;
+    uint32_t  cm_div_m2_dpll_mpu;
+    uint32_t  cm_autoidle_dpll_core;
+    uint32_t  cm_clksel_dpll_core;
+    uint32_t  cm_div_m2_dpll_core;
+    uint32_t  cm_div_m3_dpll_core;
+    uint32_t  cm_div_m4_dpll_core;
+    uint32_t  cm_div_m5_dpll_core;
+    uint32_t  cm_div_m6_dpll_core;
+    uint32_t  cm_div_m7_dpll_core;
+    uint32_t  cm_autoidle_dpll_per;
+    uint32_t  cm_clksel_dpll_per;
+    uint32_t  cm_div_m2_dpll_per;
+    uint32_t  cm_div_m3_dpll_per;
+    uint32_t  cm_div_m4_dpll_per;
+    uint32_t  cm_div_m5_dpll_per;
+    uint32_t  cm_div_m6_dpll_per;
+    uint32_t  cm_div_m7_dpll_per;
+    uint32_t  cm_autoidle_dpll_usb;
+    uint32_t  cm_clksel_dpll_usb;
+    uint32_t  cm_div_m2_dpll_usb;
 }*/

 struct gp_header {
-	__u32 size;
-	__u32 load_addr;
+	uint32_t size;
+	uint32_t load_addr;
 } __attribute__ ((__packed__));

 struct ch_toc {
-	__u32 section_offset;
-	__u32 section_size;
-	__u8 unused[12];
-	__u8 section_name[12];
+	uint32_t section_offset;
+	uint32_t section_size;
+	uint8_t unused[12];
+	uint8_t section_name[12];
 } __attribute__ ((__packed__));

 struct chram {
 	/* CHRAM */
-	__u32 section_key_chr;
-	__u8 section_disable_chr;
-	__u8 pad_chr[3];
+	uint32_t section_key_chr;
+	uint8_t section_disable_chr;
+	uint8_t pad_chr[3];
 	/* EMIF1 */
-	__u32 config_emif1;
-	__u32 refresh_emif1;
-	__u32 tim1_emif1;
-	__u32 tim2_emif1;
-	__u32 tim3_emif1;
-	__u32 pwrControl_emif1;
-	__u32 phy_cntr1_emif1;
-	__u32 phy_cntr2_emif1;
-	__u8 modereg1_emif1;
-	__u8 modereg2_emif1;
-	__u8 modereg3_emif1;
-	__u8 pad_emif1;
+	uint32_t config_emif1;
+	uint32_t refresh_emif1;
+	uint32_t tim1_emif1;
+	uint32_t tim2_emif1;
+	uint32_t tim3_emif1;
+	uint32_t pwrControl_emif1;
+	uint32_t phy_cntr1_emif1;
+	uint32_t phy_cntr2_emif1;
+	uint8_t modereg1_emif1;
+	uint8_t modereg2_emif1;
+	uint8_t modereg3_emif1;
+	uint8_t pad_emif1;
 	/* EMIF2 */
-	__u32 config_emif2;
-	__u32 refresh_emif2;
-	__u32 tim1_emif2;
-	__u32 tim2_emif2;
-	__u32 tim3_emif2;
-	__u32 pwrControl_emif2;
-	__u32 phy_cntr1_emif2;
-	__u32 phy_cntr2_emif2;
-	__u8 modereg1_emif2;
-	__u8 modereg2_emif2;
-	__u8 modereg3_emif2;
-	__u8 pad_emif2;
-
-	__u32 dmm_lisa_map;
-	__u8 flags;
-	__u8 pad[3];
+	uint32_t config_emif2;
+	uint32_t refresh_emif2;
+	uint32_t tim1_emif2;
+	uint32_t tim2_emif2;
+	uint32_t tim3_emif2;
+	uint32_t pwrControl_emif2;
+	uint32_t phy_cntr1_emif2;
+	uint32_t phy_cntr2_emif2;
+	uint8_t modereg1_emif2;
+	uint8_t modereg2_emif2;
+	uint8_t modereg3_emif2;
+	uint8_t pad_emif2;
+
+	uint32_t dmm_lisa_map;
+	uint8_t flags;
+	uint8_t pad[3];
 } __attribute__ ((__packed__));


@@ -121,7 +121,7 @@ struct ch_chsettings_chram {
 	struct ch_toc toc_terminator;
 	struct chsettings section_chsettings;
 	struct chram section_chram;
-	__u8 padding1[512 -
+	uint8_t padding1[512 -
 		    (sizeof(struct ch_toc) * 3 +
 		     sizeof(struct chsettings) + sizeof(struct chram))];
 	/* struct gp_header gpheader; */
@@ -131,7 +131,7 @@ struct ch_chsettings_nochram {
 	struct ch_toc toc_chsettings;
 	struct ch_toc toc_terminator;
 	struct chsettings section_chsettings;
-	__u8 padding1[512 -
+	uint8_t padding1[512 -
 		    (sizeof(struct ch_toc) * 2 +
 		     sizeof(struct chsettings))];
 	/* struct gp_header gpheader; */
@@ -210,7 +210,12 @@ static const struct ch_chsettings_chram config_header = {
 };
 #else
 static struct ch_chsettings_nochram config_header
+#ifdef __APPLE__
+	__attribute__((section("__DATA, .config_header"))) = {
+#else
 	__attribute__((section(".config_header"))) = {
+#endif
+
 	/* CHSETTINGS TOC */
 	{(sizeof(struct ch_toc)) * 2,
 	 sizeof(struct chsettings),
-- 
1.7.7.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
