Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtl2-0001vX-6b
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:43:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:42:31 +0100
Message-Id: <1392288152-14821-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392288152-14821-1-git-send-email-s.hauer@pengutronix.de>
References: <1392288152-14821-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 13/14] ARM: i.MX35: freescale-mx35-3stack: Switch to imx-image
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                                  |  1 +
 arch/arm/boards/freescale-mx35-3ds/Makefile        |  2 -
 .../boards/freescale-mx35-3ds/flash-header.imxcfg  | 34 ++++++++++
 arch/arm/boards/freescale-mx35-3ds/flash_header.c  | 72 ----------------------
 4 files changed, 35 insertions(+), 74 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx35-3ds/flash_header.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 7e40619..bd07e59 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -217,6 +217,7 @@ imxcfg-$(CONFIG_MACH_TX51) += $(boarddir)/karo-tx51/flash-header-karo-tx51.imxcf
 imxcfg-$(CONFIG_MACH_GUF_VINCELL) += $(boarddir)/guf-vincell/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX51SD) += $(boarddir)/eukrea_cpuimx51/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_FREESCALE_MX25_3STACK) += $(boarddir)/freescale-mx25-3-stack/flash-header.imxcfg
+imxcfg-$(CONFIG_MACH_FREESCALE_MX35_3STACK) += $(boarddir)/freescale-mx35-3-stack/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_TQMA53) += $(boarddir)/tqma53/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX25) += $(boarddir)/eukrea_cpuimx25/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX35) += $(boarddir)/eukrea_cpuimx35/flash-header.imxcfg
diff --git a/arch/arm/boards/freescale-mx35-3ds/Makefile b/arch/arm/boards/freescale-mx35-3ds/Makefile
index a1110c2..c0de068 100644
--- a/arch/arm/boards/freescale-mx35-3ds/Makefile
+++ b/arch/arm/boards/freescale-mx35-3ds/Makefile
@@ -1,4 +1,2 @@
-
 obj-y					+= 3stack.o
 lwl-y					+= lowlevel_init.o
-lwl-$(CONFIG_ARCH_IMX_INTERNAL_BOOT)	+= flash_header.o
diff --git a/arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg b/arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg
new file mode 100644
index 0000000..6eb8bc2
--- /dev/null
+++ b/arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg
@@ -0,0 +1,34 @@
+soc imx35
+loadaddr 0x80000000
+dcdofs 0x400
+
+wm 32 0xb8002050 0x0000d843
+wm 32 0xb8002054 0x22252521
+wm 32 0xb8002058 0x22220a00
+wm 32 0xb8001010 0x00000304
+wm 32 0xb8001010 0x0000030c
+wm 32 0xb8001004 0x007ffc3f
+wm 32 0xb800100c 0x007ffc3f
+wm 32 0xb8001000 0x92220000
+wm 32 0xb8001008 0x92220000
+wm 32 0x80000400 0x12345678
+wm 32 0x90000400 0x12345678
+wm 32 0xb8001000 0xa2220000
+wm 32 0xb8001008 0xa2220000
+wm 32 0x80000000 0x87654321
+wm 32 0x90000000 0x87654321
+wm 32 0x80000000 0x87654321
+wm 32 0x90000000 0x87654321
+wm 32 0xb8001000 0xb2220000
+wm 32 0xb8001008 0xb2220000
+wm 8 0x80000233 0xda
+wm 8 0x90000233 0xda
+wm 8 0x82000780 0xda
+wm 8 0x92000780 0xda
+wm 8 0x82000400 0xda
+wm 8 0x92000400 0xda
+wm 32 0xb8001000 0x82226080
+wm 32 0xb8001008 0x82226080
+wm 32 0xb8001004 0x007ffc3f
+wm 32 0xb800100c 0x007ffc3f
+wm 32 0xb8001010 0x00000304
diff --git a/arch/arm/boards/freescale-mx35-3ds/flash_header.c b/arch/arm/boards/freescale-mx35-3ds/flash_header.c
deleted file mode 100644
index 076b816..0000000
--- a/arch/arm/boards/freescale-mx35-3ds/flash_header.c
+++ /dev/null
@@ -1,72 +0,0 @@
-#include <common.h>
-#include <mach/imx-flash-header.h>
-#include <mach/imx35-regs.h>
-#include <asm/barebox-arm-head.h>
-
-void __naked __flash_header_start go(void)
-{
-	barebox_arm_head();
-}
-
-struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
-	{ .ptr_type = 4, .addr = 0xb8002050, .val = 0x0000d843, },
-	{ .ptr_type = 4, .addr = 0xB8002054, .val = 0x22252521, },
-	{ .ptr_type = 4, .addr = 0xB8002058, .val = 0x22220a00, },
-
-	{ .ptr_type = 4, .addr = 0xB8001010, .val = 0x00000304, },
-	{ .ptr_type = 4, .addr = 0xB8001010, .val = 0x0000030C, },
-
-	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc3f, },
-	{ .ptr_type = 4, .addr = 0xB800100C, .val = 0x007ffc3f, },
-
-	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0x92220000, },
-	{ .ptr_type = 4, .addr = 0xB8001008, .val = 0x92220000, },
-
-	{ .ptr_type = 4, .addr = 0x80000400, .val = 0x12345678, },
-	{ .ptr_type = 4, .addr = 0x90000400, .val = 0x12345678, },
-
-	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0xA2220000, },
-	{ .ptr_type = 4, .addr = 0xB8001008, .val = 0xA2220000, },
-
-	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x87654321, },
-	{ .ptr_type = 4, .addr = 0x90000000, .val = 0x87654321, },
-
-	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x87654321, },
-	{ .ptr_type = 4, .addr = 0x90000000, .val = 0x87654321, },
-
-	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0xB2220000, },
-	{ .ptr_type = 4, .addr = 0xB8001008, .val = 0xB2220000, },
-
-	{ .ptr_type = 1, .addr = 0x80000233, .val = 0xda, },
-	{ .ptr_type = 1, .addr = 0x90000233, .val = 0xda, },
-
-	{ .ptr_type = 1, .addr = 0x82000780, .val = 0xda, },
-	{ .ptr_type = 1, .addr = 0x92000780, .val = 0xda, },
-
-	{ .ptr_type = 1, .addr = 0x82000400, .val = 0xda, },
-	{ .ptr_type = 1, .addr = 0x92000400, .val = 0xda, },
-
-	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0x82226080, },
-	{ .ptr_type = 4, .addr = 0xB8001008, .val = 0x82226080, },
-
-	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc3f, },
-	{ .ptr_type = 4, .addr = 0xB800100C, .val = 0x007ffc3f, },
-
-	{ .ptr_type = 4, .addr = 0xB8001010, .val = 0x00000304, },
-};
-
-
-struct imx_flash_header __flash_header_section flash_header = {
-	.app_code_jump_vector	= DEST_BASE + 0x1000,
-	.app_code_barker	= APP_CODE_BARKER,
-	.app_code_csf		= 0,
-	.dcd_ptr_ptr		= FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd),
-	.super_root_key		= 0,
-	.dcd			= FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd_barker),
-	.app_dest		= DEST_BASE,
-	.dcd_barker		= DCD_BARKER,
-	.dcd_block_len		= sizeof(dcd_entry),
-};
-
-unsigned long __image_len_section barebox_len = DCD_BAREBOX_SIZE;
-
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
