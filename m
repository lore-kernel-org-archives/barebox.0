Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SAzSo-00029S-QB
 for barebox@lists.infradead.org; Fri, 23 Mar 2012 08:03:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Mar 2012 09:02:42 +0100
Message-Id: <1332489762-28709-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1332489762-28709-1-git-send-email-s.hauer@pengutronix.de>
References: <1332489762-28709-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM i.MX flash header: Fix barebox image sizes
To: barebox@lists.infradead.org

The image sizes have been hardcoded to 256K. This is inefficient
for smaller images and nonfunctional for bigger images. Calculate
the image size during compile time and use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    5 +----
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     |    2 +-
 arch/arm/boards/eukrea_cpuimx51/flash_header.c     |    4 +---
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    5 +----
 .../boards/freescale-mx35-3-stack/flash_header.c   |    2 +-
 arch/arm/boards/freescale-mx51-pdk/flash_header.c  |    4 +---
 arch/arm/boards/freescale-mx53-loco/flash_header.c |    2 +-
 arch/arm/boards/freescale-mx53-smd/flash_header.c  |    2 +-
 arch/arm/boards/tqma53/flash_header.c              |    2 +-
 arch/arm/mach-imx/include/mach/imx-flash-header.h  |   10 ++++++++++
 10 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 1e45779..1e48650 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -49,7 +49,6 @@
 #include <mach/devices-imx25.h>
 #include <asm/barebox-arm-head.h>
 
-extern unsigned long _stext;
 extern void exception_vectors(void);
 
 void __naked __flash_header_start go(void)
@@ -84,9 +83,7 @@ struct imx_flash_header __flash_header_section flash_header = {
 	.dcd_block_len		= sizeof(dcd_entry),
 };
 
-extern unsigned long __bss_start;
-
-unsigned long __image_len_section barebox_len = 0x40000;
+unsigned long __image_len_section barebox_len = DCD_BAREBOX_SIZE;
 
 static struct fec_platform_data fec_info = {
 	.xcv_type	= RMII,
diff --git a/arch/arm/boards/eukrea_cpuimx35/flash_header.c b/arch/arm/boards/eukrea_cpuimx35/flash_header.c
index f8ed5d4..a745442 100644
--- a/arch/arm/boards/eukrea_cpuimx35/flash_header.c
+++ b/arch/arm/boards/eukrea_cpuimx35/flash_header.c
@@ -42,4 +42,4 @@ struct imx_flash_header __flash_header_section flash_header = {
 	.dcd_block_len		= sizeof(dcd_entry),
 };
 
-unsigned long __image_len_section barebox_len = 0x40000;
+unsigned long __image_len_section barebox_len = DCD_BAREBOX_SIZE;
diff --git a/arch/arm/boards/eukrea_cpuimx51/flash_header.c b/arch/arm/boards/eukrea_cpuimx51/flash_header.c
index ac6bbdc..81bd442 100644
--- a/arch/arm/boards/eukrea_cpuimx51/flash_header.c
+++ b/arch/arm/boards/eukrea_cpuimx51/flash_header.c
@@ -2,8 +2,6 @@
 #include <mach/imx-flash-header.h>
 #include <asm/barebox-arm-head.h>
 
-extern unsigned long _stext;
-
 void __naked __flash_header_start go(void)
 {
 	barebox_arm_head();
@@ -82,4 +80,4 @@ struct imx_flash_header __flash_header_section flash_header = {
 	.dcd_block_len		= sizeof (dcd_entry),
 };
 
-unsigned long __image_len_section barebox_len = 0x40000;
+unsigned long __image_len_section barebox_len = DCD_BAREBOX_SIZE;
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index f684864..c63467a 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -45,7 +45,6 @@
 #include <mach/devices-imx25.h>
 #include <asm/barebox-arm-head.h>
 
-extern unsigned long _stext;
 extern void exception_vectors(void);
 
 void __naked __flash_header_start go(void)
@@ -107,9 +106,7 @@ struct imx_flash_header __flash_header_section flash_header = {
 	.dcd_block_len		= sizeof(dcd_entry),
 };
 
-extern unsigned long __bss_start;
-
-unsigned long __image_len_section barebox_len = 0x40000;
+unsigned long __image_len_section barebox_len = DCD_BAREBOX_SIZE;
 
 static struct fec_platform_data fec_info = {
 	.xcv_type	= RMII,
diff --git a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
index 85b52a2..0786836 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
@@ -70,5 +70,5 @@ struct imx_flash_header __flash_header_section flash_header = {
 	.dcd_block_len		= sizeof(dcd_entry),
 };
 
-unsigned long __image_len_section barebox_len = 0x40000;
+unsigned long __image_len_section barebox_len = DCD_BAREBOX_SIZE;
 
diff --git a/arch/arm/boards/freescale-mx51-pdk/flash_header.c b/arch/arm/boards/freescale-mx51-pdk/flash_header.c
index 297dca1..c148eea 100644
--- a/arch/arm/boards/freescale-mx51-pdk/flash_header.c
+++ b/arch/arm/boards/freescale-mx51-pdk/flash_header.c
@@ -2,8 +2,6 @@
 #include <mach/imx-flash-header.h>
 #include <asm/barebox-arm-head.h>
 
-extern unsigned long _stext;
-
 void __naked __flash_header_start go(void)
 {
 	barebox_arm_head();
@@ -82,5 +80,5 @@ struct imx_flash_header __flash_header_section flash_header = {
 	.dcd_block_len		= sizeof (dcd_entry),
 };
 
-unsigned long __image_len_section barebox_len = 0x40000;
+unsigned long __image_len_section barebox_len = DCD_BAREBOX_SIZE;
 
diff --git a/arch/arm/boards/freescale-mx53-loco/flash_header.c b/arch/arm/boards/freescale-mx53-loco/flash_header.c
index b459640..52e6eee 100644
--- a/arch/arm/boards/freescale-mx53-loco/flash_header.c
+++ b/arch/arm/boards/freescale-mx53-loco/flash_header.c
@@ -90,7 +90,7 @@ struct imx_flash_header_v2 __flash_header_section flash_header = {
 	.self			= APP_DEST + 0x400,
 
 	.boot_data.start	= APP_DEST,
-	.boot_data.size		= 0x40000,
+	.boot_data.size		= DCD_BAREBOX_SIZE,
 
 	.dcd.header.tag		= DCD_HEADER_TAG,
 	.dcd.header.length	= cpu_to_be16(sizeof(struct imx_dcd) + sizeof(dcd_entry)),
diff --git a/arch/arm/boards/freescale-mx53-smd/flash_header.c b/arch/arm/boards/freescale-mx53-smd/flash_header.c
index b459640..52e6eee 100644
--- a/arch/arm/boards/freescale-mx53-smd/flash_header.c
+++ b/arch/arm/boards/freescale-mx53-smd/flash_header.c
@@ -90,7 +90,7 @@ struct imx_flash_header_v2 __flash_header_section flash_header = {
 	.self			= APP_DEST + 0x400,
 
 	.boot_data.start	= APP_DEST,
-	.boot_data.size		= 0x40000,
+	.boot_data.size		= DCD_BAREBOX_SIZE,
 
 	.dcd.header.tag		= DCD_HEADER_TAG,
 	.dcd.header.length	= cpu_to_be16(sizeof(struct imx_dcd) + sizeof(dcd_entry)),
diff --git a/arch/arm/boards/tqma53/flash_header.c b/arch/arm/boards/tqma53/flash_header.c
index 73ea0c3..f5e817c 100644
--- a/arch/arm/boards/tqma53/flash_header.c
+++ b/arch/arm/boards/tqma53/flash_header.c
@@ -97,7 +97,7 @@ struct imx_flash_header_v2 __flash_header_section flash_header = {
 	.self			= APP_DEST + 0x400,
 
 	.boot_data.start	= APP_DEST,
-	.boot_data.size		= 0x40000,
+	.boot_data.size		= DCD_BAREBOX_SIZE,
 
 	.dcd.header.tag		= DCD_HEADER_TAG,
 	.dcd.header.length	= cpu_to_be16(sizeof(struct imx_dcd) + sizeof(dcd_entry)),
diff --git a/arch/arm/mach-imx/include/mach/imx-flash-header.h b/arch/arm/mach-imx/include/mach/imx-flash-header.h
index 8744262..ca2fe9f 100644
--- a/arch/arm/mach-imx/include/mach/imx-flash-header.h
+++ b/arch/arm/mach-imx/include/mach/imx-flash-header.h
@@ -1,6 +1,8 @@
 #ifndef __MACH_FLASH_HEADER_H
 #define __MACH_FLASH_HEADER_H
 
+#include <asm-generic/sections.h>
+
 #define __flash_header_start		__section(.flash_header_start)
 
 #if defined(CONFIG_ARCH_IMX_INTERNAL_BOOT_NOR)
@@ -87,6 +89,14 @@ struct imx_flash_header {
 #define DCD_COMMAND_WRITE_TAG	0xcc
 #define DCD_COMMAND_WRITE_PARAM	0x04
 
+/*
+ * At least on i.MX5 the ROM copies only full blocks. Unfortunately
+ * it does not round up to the next full block, we have to do it
+ * ourselves. Use 4095 which should be enough for the largest NAND
+ * pages.
+ */
+#define DCD_BAREBOX_SIZE	(barebox_image_size + 4095)
+
 struct imx_ivt_header {
 	uint8_t tag;
 	__be16 length;
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
