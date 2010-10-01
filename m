Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pz0-f49.google.com ([209.85.210.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P1WVE-0004Jg-OI
	for barebox@lists.infradead.org; Fri, 01 Oct 2010 03:41:46 +0000
Received: by pzk32 with SMTP id 32so896277pzk.36
	for <barebox@lists.infradead.org>; Thu, 30 Sep 2010 20:41:43 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Fri,  1 Oct 2010 13:40:58 +1000
Message-Id: <1285904458-7015-2-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1285904458-7015-1-git-send-email-marc@cpdesign.com.au>
References: <1285904458-7015-1-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH 2/2] Update flash headers for boards supporting internal boot.
To: barebox@lists.infradead.org

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   15 ++++++++-------
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     |   20 +++++++++++---------
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |   19 +++++++++----------
 .../boards/freescale-mx35-3-stack/flash_header.c   |   20 ++++++++++----------
 4 files changed, 38 insertions(+), 36 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index caeb46e..5a0c988 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -42,13 +42,14 @@
 #include <mach/iomux-mx25.h>
 
 extern unsigned long _stext;
+extern void exception_vectors(void);
 
 void __naked __flash_header_start go(void)
 {
 	__asm__ __volatile__("b exception_vectors\n");
 }
 
-struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
+struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
 	{ .ptr_type = 4, .addr = 0xb8001010, .val = 0x00000004, },
 	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x92100000, },
 	{ .ptr_type = 1, .addr = 0x80000400, .val = 0x12344321, },
@@ -63,21 +64,21 @@ struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
 	{ .ptr_type = 4, .addr = 0x53f80008, .val = 0x20034000, },
 };
 
-struct imx_flash_header __flash_header_0x400 eukrea_cpuimx25_header = {
-	.app_code_jump_vector	= TEXT_BASE + 0x2000,
+struct imx_flash_header __flash_header_section flash_header = {
+	.app_code_jump_vector	= DEST_BASE + ((unsigned int)&exception_vectors - TEXT_BASE),
 	.app_code_barker	= APP_CODE_BARKER,
 	.app_code_csf		= 0,
-	.dcd_ptr_ptr		= TEXT_BASE + 0x400 + offsetof(struct imx_flash_header, dcd),
+	.dcd_ptr_ptr		= FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd),
 	.super_root_key		= 0,
-	.dcd			= TEXT_BASE + 0x400 + offsetof(struct imx_flash_header, dcd_barker),
-	.app_dest		= TEXT_BASE,
+	.dcd			= FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd_barker),
+	.app_dest		= DEST_BASE,
 	.dcd_barker		= DCD_BARKER,
 	.dcd_block_len		= sizeof(dcd_entry),
 };
 
 extern unsigned long __bss_start;
 
-unsigned long __image_len_0x400 barebox_len = 0x40000;
+unsigned long __image_len_section barebox_len = 0x40000;
 
 static struct fec_platform_data fec_info = {
 	.xcv_type	= RMII,
diff --git a/arch/arm/boards/eukrea_cpuimx35/flash_header.c b/arch/arm/boards/eukrea_cpuimx35/flash_header.c
index 78f51f6..285a2d4 100644
--- a/arch/arm/boards/eukrea_cpuimx35/flash_header.c
+++ b/arch/arm/boards/eukrea_cpuimx35/flash_header.c
@@ -1,12 +1,15 @@
 #include <common.h>
 #include <mach/imx-flash-header.h>
+#include <mach/imx-regs.h>
+
+extern void exception_vectors(void);
 
 void __naked __flash_header_start go(void)
 {
 	__asm__ __volatile__("b exception_vectors\n");
 }
 
-struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
+struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
 	{ .ptr_type = 4, .addr = 0x53F80004, .val = 0x00821000, },
 	{ .ptr_type = 4, .addr = 0x53F80004, .val = 0x00821000, },
 	{ .ptr_type = 4, .addr = 0xB8001010, .val = 0x00000004, },
@@ -24,18 +27,17 @@ struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
 	{ .ptr_type = 4, .addr = 0xB8001010, .val = 0x00000004, },
 };
 
-#define APP_DEST	0x80000000
 
-struct imx_flash_header __flash_header_0x400 eukrea_cpuimx35_header = {
-	.app_code_jump_vector	= APP_DEST + 0x1000,
+struct imx_flash_header __flash_header_section flash_header = {
+	.app_code_jump_vector	= DEST_BASE + ((unsigned int)&exception_vectors - TEXT_BASE),
 	.app_code_barker	= APP_CODE_BARKER,
 	.app_code_csf		= 0,
-	.dcd_ptr_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd),
+	.dcd_ptr_ptr		= FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd),
 	.super_root_key		= 0,
-	.dcd			= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd_barker),
-	.app_dest		= APP_DEST,
+	.dcd			= FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd_barker),
+	.app_dest		= DEST_BASE,
 	.dcd_barker		= DCD_BARKER,
-	.dcd_block_len		= sizeof (dcd_entry),
+	.dcd_block_len		= sizeof(dcd_entry),
 };
 
-unsigned long __image_len_0x400 barebox_len = 0x40000;
+unsigned long __image_len_section barebox_len = 0x40000;
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index cd228cc..065cefb 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -42,13 +42,14 @@
 #include <i2c/mc34704.h>
 
 extern unsigned long _stext;
+extern void exception_vectors(void);
 
 void __naked __flash_header_start go(void)
 {
 	__asm__ __volatile__("b exception_vectors\n");
 }
 
-struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
+struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
 	{ .ptr_type = 4, .addr = 0xb8002050, .val = 0x0000d843, },
 	{ .ptr_type = 4, .addr = 0xb8002054, .val = 0x22252521, },
 	{ .ptr_type = 4, .addr = 0xb8002058, .val = 0x22220a00, },
@@ -90,23 +91,21 @@ struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
 	{ .ptr_type = 4, .addr = 0x53f80008, .val = 0x20034000, },
 };
 
-#define APP_DEST	0x80000000
-
-struct imx_flash_header __flash_header_0x400 mx25_3ds_header = {
-	.app_code_jump_vector	= APP_DEST + 0x1000,
+struct imx_flash_header __flash_header_section flash_header = {
+	.app_code_jump_vector	= DEST_BASE + ((unsigned int)&exception_vectors - TEXT_BASE),
 	.app_code_barker	= APP_CODE_BARKER,
 	.app_code_csf		= 0,
-	.dcd_ptr_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd),
+	.dcd_ptr_ptr		= FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd),
 	.super_root_key		= 0,
-	.dcd			= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd_barker),
-	.app_dest		= APP_DEST,
+	.dcd			= FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd_barker),
+	.app_dest		= DEST_BASE,
 	.dcd_barker		= DCD_BARKER,
-	.dcd_block_len		= sizeof (dcd_entry),
+	.dcd_block_len		= sizeof(dcd_entry),
 };
 
 extern unsigned long __bss_start;
 
-unsigned long __image_len_0x400 barebox_len = 0x40000;
+unsigned long __image_len_section barebox_len = 0x40000;
 
 static struct fec_platform_data fec_info = {
 	.xcv_type	= RMII,
diff --git a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
index 171c499..4bee797 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
@@ -1,14 +1,15 @@
 #include <common.h>
 #include <mach/imx-flash-header.h>
+#include <mach/imx-regs.h>
 
-extern unsigned long _stext;
+extern void exception_vectors(void);
 
 void __naked __flash_header_start go(void)
 {
 	__asm__ __volatile__("b exception_vectors\n");
 }
 
-struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
+struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
 	{ .ptr_type = 4, .addr = 0xb8002050, .val = 0x0000d843, },
 	{ .ptr_type = 4, .addr = 0xB8002054, .val = 0x22252521, },
 	{ .ptr_type = 4, .addr = 0xB8002058, .val = 0x22220a00, },
@@ -31,19 +32,18 @@ struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
 	{ .ptr_type = 4, .addr = 0xB8001008, .val = 0x00002000, },
 };
 
-#define APP_DEST	0x80000000
 
-struct imx_flash_header __flash_header_0x400 flash_header = {
-	.app_code_jump_vector	= APP_DEST + 0x1000,
+struct imx_flash_header __flash_header_section flash_header = {
+	.app_code_jump_vector	= DEST_BASE + ((unsigned int)&exception_vectors - TEXT_BASE),
 	.app_code_barker	= APP_CODE_BARKER,
 	.app_code_csf		= 0,
-	.dcd_ptr_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd),
+	.dcd_ptr_ptr		= FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd),
 	.super_root_key		= 0,
-	.dcd			= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd_barker),
-	.app_dest		= APP_DEST,
+	.dcd			= FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd_barker),
+	.app_dest		= DEST_BASE,
 	.dcd_barker		= DCD_BARKER,
-	.dcd_block_len		= sizeof (dcd_entry),
+	.dcd_block_len		= sizeof(dcd_entry),
 };
 
-unsigned long __image_len_0x400 barebox_len = 0x40000;
+unsigned long __image_len_section barebox_len = 0x40000;
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
