Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtkt-0001uw-MA
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:43:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:42:24 +0100
Message-Id: <1392288152-14821-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/14] ARM: i.MX51 karo-tx51: Switch to imximage
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                                  |  1 +
 arch/arm/boards/karo-tx51/Makefile                 |  1 -
 .../boards/karo-tx51/flash-header-karo-tx51.imxcfg | 13 ++++++
 arch/arm/boards/karo-tx51/flash_header.c           | 52 ----------------------
 4 files changed, 14 insertions(+), 53 deletions(-)
 create mode 100644 arch/arm/boards/karo-tx51/flash-header-karo-tx51.imxcfg
 delete mode 100644 arch/arm/boards/karo-tx51/flash_header.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 678819f..a6ed295 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -213,6 +213,7 @@ imxcfg-$(CONFIG_MACH_FREESCALE_MX53_SMD) += $(boarddir)/freescale-mx53-smd/flash
 imxcfg-$(CONFIG_MACH_SABRESD) += $(boarddir)/freescale-mx6-sabresd/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_MX6Q_ARM2) += $(boarddir)/freescale-mx6-arm2/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_CCMX51) += $(boarddir)/ccxmx51/flash-header.imxcfg
+imxcfg-$(CONFIG_MACH_TX51) += $(boarddir)/karo-tx51/flash-header-karo-tx51.imxcfg
 ifneq ($(imxcfg-y),)
 CFG_barebox.imximg := $(imxcfg-y)
 KBUILD_IMAGE  := barebox.imximg
diff --git a/arch/arm/boards/karo-tx51/Makefile b/arch/arm/boards/karo-tx51/Makefile
index 988abea..5afc8e2 100644
--- a/arch/arm/boards/karo-tx51/Makefile
+++ b/arch/arm/boards/karo-tx51/Makefile
@@ -1,3 +1,2 @@
 obj-y += tx51.o
-lwl-$(CONFIG_ARCH_IMX_INTERNAL_BOOT) += flash_header.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/karo-tx51/flash-header-karo-tx51.imxcfg b/arch/arm/boards/karo-tx51/flash-header-karo-tx51.imxcfg
new file mode 100644
index 0000000..ebb7c4f
--- /dev/null
+++ b/arch/arm/boards/karo-tx51/flash-header-karo-tx51.imxcfg
@@ -0,0 +1,13 @@
+soc imx51
+loadaddr 0x90000000
+dcdofs 0x400
+wm 32 0x83fd9000 0x80000000
+wm 32 0x83fd9014 0x04008008
+wm 32 0x83fd9014 0x00008010
+wm 32 0x83fd9014 0x00008010
+wm 32 0x83fd9014 0x00338018
+wm 32 0x83fd9000 0xb2220000
+wm 32 0x83fd9004 0xb08564a9
+wm 32 0x83fd9034 0x20020000
+wm 32 0x83fd9010 0x000a0080
+wm 32 0x83fd9014 0x00000000
diff --git a/arch/arm/boards/karo-tx51/flash_header.c b/arch/arm/boards/karo-tx51/flash_header.c
deleted file mode 100644
index e949bd7..0000000
--- a/arch/arm/boards/karo-tx51/flash_header.c
+++ /dev/null
@@ -1,52 +0,0 @@
-/**
- * Copyright (C) 2012 Christian Kapeller, <christian.kapeller@cmotion.eu>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <asm/barebox-arm-head.h>
-#include <mach/imx-flash-header.h>
-
-void __naked __flash_header_start go(void)
-{
-	barebox_arm_head();
-}
-
-struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
-    { .ptr_type = 4, .addr = 0x83fd9000, .val = 0x80000000, },
-    { .ptr_type = 4, .addr = 0x83fd9014, .val = 0x04008008, },
-    { .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008010, },
-    { .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008010, },
-    { .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00338018, },
-    { .ptr_type = 4, .addr = 0x83fd9000, .val = 0xb2220000, },
-    { .ptr_type = 4, .addr = 0x83fd9004, .val = 0xb08564a9, },
-    { .ptr_type = 4, .addr = 0x83fd9034, .val = 0x20020000, },
-    { .ptr_type = 4, .addr = 0x83fd9010, .val = 0x000a0080, },
-    { .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00000000, },
-};
-
-#define APP_DEST	0x90000000
-
-struct imx_flash_header __flash_header_section flash_header = {
-	.app_code_jump_vector	= APP_DEST + 0x1000,
-	.app_code_barker	= APP_CODE_BARKER,
-	.app_code_csf		= 0,
-	.dcd_ptr_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd),
-	.super_root_key		= 0,
-	.dcd			= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd_barker),
-	.app_dest		= APP_DEST,
-	.dcd_barker		= DCD_BARKER,
-	.dcd_block_len		= sizeof (dcd_entry),
-};
-
-unsigned long __image_len_section barebox_len = DCD_BAREBOX_SIZE;
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
