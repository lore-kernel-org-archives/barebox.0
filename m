Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtl2-0001vY-7C
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:43:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:42:30 +0100
Message-Id: <1392288152-14821-13-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/14] ARM: i.MX35: eukrea-cpuimx35: Switch to imx-image
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                                  |  1 +
 arch/arm/boards/eukrea_cpuimx35/Makefile           |  1 -
 .../arm/boards/eukrea_cpuimx35/flash-header.imxcfg | 19 ++++++++++
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     | 43 ----------------------
 arch/arm/boards/karo-tx53/Makefile                 |  1 -
 5 files changed, 20 insertions(+), 45 deletions(-)
 create mode 100644 arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/eukrea_cpuimx35/flash_header.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index d479e6a..7e40619 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -219,6 +219,7 @@ imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX51SD) += $(boarddir)/eukrea_cpuimx51/flash-hea
 imxcfg-$(CONFIG_MACH_FREESCALE_MX25_3STACK) += $(boarddir)/freescale-mx25-3-stack/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_TQMA53) += $(boarddir)/tqma53/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX25) += $(boarddir)/eukrea_cpuimx25/flash-header.imxcfg
+imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX35) += $(boarddir)/eukrea_cpuimx35/flash-header.imxcfg
 ifneq ($(imxcfg-y),)
 CFG_barebox.imximg := $(imxcfg-y)
 KBUILD_IMAGE  := barebox.imximg
diff --git a/arch/arm/boards/eukrea_cpuimx35/Makefile b/arch/arm/boards/eukrea_cpuimx35/Makefile
index 227b76b..060f3b1 100644
--- a/arch/arm/boards/eukrea_cpuimx35/Makefile
+++ b/arch/arm/boards/eukrea_cpuimx35/Makefile
@@ -18,4 +18,3 @@
 
 obj-y					+= eukrea_cpuimx35.o
 lwl-y					+= lowlevel.o
-lwl-$(CONFIG_ARCH_IMX_INTERNAL_BOOT)	+= flash_header.o
diff --git a/arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg b/arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg
new file mode 100644
index 0000000..85200bb
--- /dev/null
+++ b/arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg
@@ -0,0 +1,19 @@
+soc imx35
+loadaddr 0x80000000
+dcdofs 0x400
+
+wm 32 0x53F80004 0x00821000
+wm 32 0x53F80004 0x00821000
+wm 32 0xb8001010 0x00000004
+wm 32 0xB8001010 0x0000000C
+wm 32 0xb8001004 0x0009572B
+wm 32 0xb8001000 0x92220000
+wm 8 0x80000400 0xda
+wm 32 0xb8001000 0xa2220000
+wm 32 0x80000000 0x12344321
+wm 32 0x80000000 0x12344321
+wm 32 0xb8001000 0xb2220000
+wm 8 0x80000033 0xda
+wm 8 0x82000000 0xda
+wm 32 0xb8001000 0x82224080
+wm 32 0xb8001010 0x00000004
diff --git a/arch/arm/boards/eukrea_cpuimx35/flash_header.c b/arch/arm/boards/eukrea_cpuimx35/flash_header.c
deleted file mode 100644
index 6fa9c8b..0000000
--- a/arch/arm/boards/eukrea_cpuimx35/flash_header.c
+++ /dev/null
@@ -1,43 +0,0 @@
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
-	{ .ptr_type = 4, .addr = 0x53F80004, .val = 0x00821000, },
-	{ .ptr_type = 4, .addr = 0x53F80004, .val = 0x00821000, },
-	{ .ptr_type = 4, .addr = 0xb8001010, .val = 0x00000004, },
-	{ .ptr_type = 4, .addr = 0xB8001010, .val = 0x0000000C, },
-	{ .ptr_type = 4, .addr = 0xb8001004, .val = 0x0009572B, },
-	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x92220000, },
-	{ .ptr_type = 1, .addr = 0x80000400, .val = 0xda, },
-	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xa2220000, },
-	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x12344321, },
-	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x12344321, },
-	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xb2220000, },
-	{ .ptr_type = 1, .addr = 0x80000033, .val = 0xda, },
-	{ .ptr_type = 1, .addr = 0x82000000, .val = 0xda, },
-	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x82224080, },
-	{ .ptr_type = 4, .addr = 0xb8001010, .val = 0x00000004, },
-};
-
-#define CPUIMX35_DEST_BASE 0x80000000
-#define CPUIMX35_FLASH_HEADER_BASE (CPUIMX35_DEST_BASE + FLASH_HEADER_OFFSET)
-struct imx_flash_header __flash_header_section flash_header = {
-	.app_code_jump_vector	= CPUIMX35_DEST_BASE + 0x1000,
-	.app_code_barker	= APP_CODE_BARKER,
-	.app_code_csf		= 0,
-	.dcd_ptr_ptr		= CPUIMX35_FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd),
-	.super_root_key		= 0,
-	.dcd			= CPUIMX35_FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd_barker),
-	.app_dest		= CPUIMX35_DEST_BASE,
-	.dcd_barker		= DCD_BARKER,
-	.dcd_block_len		= sizeof(dcd_entry),
-};
-
-unsigned long __image_len_section barebox_len = DCD_BAREBOX_SIZE;
diff --git a/arch/arm/boards/karo-tx53/Makefile b/arch/arm/boards/karo-tx53/Makefile
index d44f697..01c7a25 100644
--- a/arch/arm/boards/karo-tx53/Makefile
+++ b/arch/arm/boards/karo-tx53/Makefile
@@ -1,3 +1,2 @@
 obj-y += board.o
-lwl-y += flash_header.o
 lwl-y += lowlevel.o
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
