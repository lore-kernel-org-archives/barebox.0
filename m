Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtku-0001v2-9e
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:43:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:42:32 +0100
Message-Id: <1392288152-14821-15-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/14] ARM: i.MX53 karo-tx53: Switch to imximage
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                                  |   2 +
 .../karo-tx53/flash-header-tx53-rev1011.imxcfg     |  97 ++++++++++++++++
 .../karo-tx53/flash-header-tx53-revxx30.imxcfg     | 127 +++++++++++++++++++++
 arch/arm/boards/karo-tx53/flash_header.c           |  73 ------------
 4 files changed, 226 insertions(+), 73 deletions(-)
 create mode 100644 arch/arm/boards/karo-tx53/flash-header-tx53-rev1011.imxcfg
 create mode 100644 arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg
 delete mode 100644 arch/arm/boards/karo-tx53/flash_header.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index bd07e59..87e8d4a 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -221,6 +221,8 @@ imxcfg-$(CONFIG_MACH_FREESCALE_MX35_3STACK) += $(boarddir)/freescale-mx35-3-stac
 imxcfg-$(CONFIG_MACH_TQMA53) += $(boarddir)/tqma53/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX25) += $(boarddir)/eukrea_cpuimx25/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX35) += $(boarddir)/eukrea_cpuimx35/flash-header.imxcfg
+imxcfg-$(CONFIG_TX53_REV_1011) += $(boarddir)/karo-tx53/flash-header-tx53-rev1011.imxcfg
+imxcfg-$(CONFIG_TX53_REV_XX30) += $(boarddir)/karo-tx53/flash-header-tx53-revxx30.imxcfg
 ifneq ($(imxcfg-y),)
 CFG_barebox.imximg := $(imxcfg-y)
 KBUILD_IMAGE  := barebox.imximg
diff --git a/arch/arm/boards/karo-tx53/flash-header-tx53-rev1011.imxcfg b/arch/arm/boards/karo-tx53/flash-header-tx53-rev1011.imxcfg
new file mode 100644
index 0000000..d5e6454
--- /dev/null
+++ b/arch/arm/boards/karo-tx53/flash-header-tx53-rev1011.imxcfg
@@ -0,0 +1,97 @@
+loadaddr 0x71000000
+soc imx53
+dcdofs 0x400
+
+wm 32 0x53fd406c 0xffffffff
+wm 32 0x53fd4070 0xffffffff
+wm 32 0x53fd4074 0xffffffff
+wm 32 0x53fd4078 0xffffffff
+wm 32 0x53fd407c 0xffffffff
+wm 32 0x53fd4080 0xffffffff
+wm 32 0x53fd4088 0xffffffff
+wm 32 0x53fa8174 0x00000011
+wm 32 0x63fd800c 0x00000000
+wm 32 0x53fa8554 0x00200000
+wm 32 0x53fa8560 0x00200000
+wm 32 0x53fa8594 0x00200000
+wm 32 0x53fa8584 0x00200000
+wm 32 0x53fa8558 0x00200040
+wm 32 0x53fa8568 0x00200040
+wm 32 0x53fa8590 0x00200040
+wm 32 0x53fa857c 0x00200040
+wm 32 0x53fa8564 0x00200040
+wm 32 0x53fa8580 0x00200040
+wm 32 0x53fa8570 0x00200000
+wm 32 0x53fa8578 0x00200000
+wm 32 0x53fa872c 0x00200000
+wm 32 0x53fa8728 0x00200000
+wm 32 0x53fa871c 0x00200000
+wm 32 0x53fa8718 0x00200000
+wm 32 0x53fa8574 0x00280000
+wm 32 0x53fa8588 0x00280000
+wm 32 0x53fa86f0 0x00280000
+wm 32 0x53fa8720 0x00280000
+wm 32 0x53fa86fc 0x00000000
+wm 32 0x53fa86f4 0x00000200
+wm 32 0x53fa8714 0x00000000
+wm 32 0x53fa8724 0x06000000
+wm 32 0x63fd9088 0x36353b38
+wm 32 0x63fd9090 0x49434942
+wm 32 0x63fd90f8 0x00000800
+wm 32 0x63fd907c 0x01350138
+wm 32 0x63fd9080 0x01380139
+wm 32 0x63fd9018 0x00001710
+wm 32 0x63fd9000 0x84110000
+wm 32 0x63fd900c 0x4d5122d2
+wm 32 0x63fd9010 0xb6f18a22
+wm 32 0x63fd9014 0x00c700db
+wm 32 0x63fd902c 0x000026d2
+wm 32 0x63fd9030 0x009f000e
+wm 32 0x63fd9008 0x12272000
+wm 32 0x63fd9004 0x00030012
+wm 32 0x63fd901c 0x04008010
+wm 32 0x63fd901c 0x00008020
+wm 32 0x63fd901c 0x00008020
+wm 32 0x63fd901c 0x0a528030
+wm 32 0x63fd901c 0x03868031
+wm 32 0x63fd901c 0x00068031
+wm 32 0x63fd901c 0x00008032
+wm 32 0x63fd9020 0x00005800
+wm 32 0x63fd9058 0x00033332
+wm 32 0x63fd901c 0x00000000
+wm 32 0x63fd901c 0x00448031
+wm 32 0x63fd901c 0x04008018
+wm 32 0x63fd901c 0x00000000
+wm 32 0x63fd9040 0x04b80003
+wm 32 0x53fa8004 0x00194005
+wm 32 0x53fa819c 0x00000000
+wm 32 0x53fa81a0 0x00000000
+wm 32 0x53fa81a4 0x00000000
+wm 32 0x53fa81a8 0x00000000
+wm 32 0x53fa81ac 0x00000000
+wm 32 0x53fa81b0 0x00000000
+wm 32 0x53fa81b4 0x00000000
+wm 32 0x53fa81b8 0x00000000
+wm 32 0x53fa81dc 0x00000000
+wm 32 0x53fa81e0 0x00000000
+wm 32 0x53fa8228 0x00000000
+wm 32 0x53fa822c 0x00000000
+wm 32 0x53fa8230 0x00000000
+wm 32 0x53fa8234 0x00000000
+wm 32 0x53fa8238 0x00000000
+wm 32 0x53fa84ec 0x000000e4
+wm 32 0x53fa84f0 0x000000e4
+wm 32 0x53fa84f4 0x000000e4
+wm 32 0x53fa84f8 0x000000e4
+wm 32 0x53fa84fc 0x000000e4
+wm 32 0x53fa8500 0x000000e4
+wm 32 0x53fa8504 0x000000e4
+wm 32 0x53fa8508 0x000000e4
+wm 32 0x53fa852c 0x00000004
+wm 32 0x53fa8530 0x00000004
+wm 32 0x53fa85a0 0x00000004
+wm 32 0x53fa85a4 0x00000004
+wm 32 0x53fa85a8 0x000000e4
+wm 32 0x53fa85ac 0x000000e4
+wm 32 0x53fa85b0 0x00000004
+
diff --git a/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg b/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg
new file mode 100644
index 0000000..aec88ad
--- /dev/null
+++ b/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg
@@ -0,0 +1,127 @@
+loadaddr 0x71000000
+soc imx53
+dcdofs 0x400
+wm 32 0x53fd4068 0xffcc0fff
+wm 32 0x53fd406c 0x000fffc3
+wm 32 0x53fd4070 0x033c0000
+wm 32 0x53fd4074 0x00000000
+wm 32 0x53fd4078 0x00000000
+wm 32 0x53fd407c 0x00fff033
+wm 32 0x53fd4080 0x0f00030f
+wm 32 0x53fd4084 0xfff00000
+wm 32 0x53fd4088 0x00000000
+wm 32 0x53fa8174 0x00000011
+wm 32 0x53fa8318 0x00000011
+wm 32 0x63fd800c 0x00000000
+wm 32 0x53fd4014 0x00888944
+wm 32 0x53fd4018 0x00016154
+wm 32 0x53fa8724 0x04000000
+wm 32 0x53fa86f4 0x00000000
+wm 32 0x53fa8714 0x00000000
+wm 32 0x53fa86fc 0x00000080
+wm 32 0x53fa8710 0x00000000
+wm 32 0x53fa8708 0x00000040
+wm 32 0x53fa8584 0x00280000
+wm 32 0x53fa8594 0x00280000
+wm 32 0x53fa8560 0x00280000
+wm 32 0x53fa8554 0x00280000
+wm 32 0x53fa857c 0x00a80040
+wm 32 0x53fa8590 0x00a80040
+wm 32 0x53fa8568 0x00a80040
+wm 32 0x53fa8558 0x00a80040
+wm 32 0x53fa8580 0x00280040
+wm 32 0x53fa8578 0x00280000
+wm 32 0x53fa8564 0x00280040
+wm 32 0x53fa8570 0x00280000
+wm 32 0x53fa858c 0x000000c0
+wm 32 0x53fa855c 0x000000c0
+wm 32 0x53fa8574 0x00280000
+wm 32 0x53fa8588 0x00280000
+wm 32 0x53fa86f0 0x00280000
+wm 32 0x53fa8720 0x00280000
+wm 32 0x53fa8718 0x00280000
+wm 32 0x53fa871c 0x00280000
+wm 32 0x53fa8728 0x00280000
+wm 32 0x53fa872c 0x00280000
+wm 32 0x63fd904c 0x001f001f
+wm 32 0x63fd9050 0x001f001f
+wm 32 0x63fd907c 0x011e011e
+wm 32 0x63fd9080 0x011f0120
+wm 32 0x63fd9088 0x3a393d3b
+wm 32 0x63fd9090 0x3f3f3f3f
+wm 32 0x63fd9018 0x00011740
+wm 32 0x63fd9000 0x83190000
+wm 32 0x63fd900c 0x3f435316
+wm 32 0x63fd9010 0xb66e0a63
+wm 32 0x63fd9014 0x01ff00db
+wm 32 0x63fd902c 0x000026d2
+wm 32 0x63fd9030 0x00430f24
+wm 32 0x63fd9008 0x1b221010
+wm 32 0x63fd9004 0x00030012
+wm 32 0x63fd901c 0x00008032
+wm 32 0x63fd901c 0x00008033
+wm 32 0x63fd901c 0x00408031
+wm 32 0x63fd901c 0x055080b0
+wm 32 0x63fd9020 0x00005800
+wm 32 0x63fd9058 0x00011112
+wm 32 0x63fd90d0 0x00000003
+wm 32 0x63fd901c 0x04008010
+wm 32 0x63fd901c 0x00008040
+wm 32 0x63fd9040 0x0539002b
+check 32 while_all_bits_set 0x63fd9040 0x00010000
+wm 32 0x63fd901c 0x00048033
+wm 32 0x63fd901c 0x00848231
+wm 32 0x63fd901c 0x00000000
+wm 32 0x63fd9048 0x00000001
+check 32 while_all_bits_set 0x63fd9048 0x00000001
+wm 32 0x63fd901c 0x00048031
+wm 32 0x63fd901c 0x00008033
+wm 32 0x63fd901c 0x04008010
+wm 32 0x63fd901c 0x00048033
+wm 32 0x63fd907c 0x90000000
+check 32 while_all_bits_set 0x63fd907c 0x90000000
+wm 32 0x63fd901c 0x00008033
+wm 32 0x63fd901c 0x00000000
+wm 32 0x63fd901c 0x04008010
+wm 32 0x63fd901c 0x00048033
+wm 32 0x63fd90a4 0x00000010
+check 32 while_all_bits_set 0x63fd90a4 0x00000010
+wm 32 0x63fd901c 0x00008033
+wm 32 0x63fd901c 0x04008010
+wm 32 0x63fd901c 0x00048033
+wm 32 0x63fd90a0 0x00000010
+check 32 while_all_bits_set 0x63fd90a0 0x00000010
+wm 32 0x63fd901c 0x00008033
+wm 32 0x63fd901c 0x00000000
+wm 32 0x53fa8004 0x00194005
+wm 32 0x53fa819c 0x00000000
+wm 32 0x53fa81a0 0x00000000
+wm 32 0x53fa81a4 0x00000000
+wm 32 0x53fa81a8 0x00000000
+wm 32 0x53fa81ac 0x00000000
+wm 32 0x53fa81b0 0x00000000
+wm 32 0x53fa81b4 0x00000000
+wm 32 0x53fa81b8 0x00000000
+wm 32 0x53fa81dc 0x00000000
+wm 32 0x53fa81e0 0x00000000
+wm 32 0x53fa8228 0x00000000
+wm 32 0x53fa822c 0x00000000
+wm 32 0x53fa8230 0x00000000
+wm 32 0x53fa8234 0x00000000
+wm 32 0x53fa8238 0x00000000
+wm 32 0x53fa84ec 0x000000e4
+wm 32 0x53fa84f0 0x000000e4
+wm 32 0x53fa84f4 0x000000e4
+wm 32 0x53fa84f8 0x000000e4
+wm 32 0x53fa84fc 0x000000e4
+wm 32 0x53fa8500 0x000000e4
+wm 32 0x53fa8504 0x000000e4
+wm 32 0x53fa8508 0x000000e4
+wm 32 0x53fa852c 0x00000004
+wm 32 0x53fa8530 0x00000004
+wm 32 0x53fa85a0 0x00000004
+wm 32 0x53fa85a4 0x00000004
+wm 32 0x53fa85a8 0x000000e4
+wm 32 0x53fa85ac 0x000000e4
+wm 32 0x53fa85b0 0x00000004
+
diff --git a/arch/arm/boards/karo-tx53/flash_header.c b/arch/arm/boards/karo-tx53/flash_header.c
deleted file mode 100644
index 5c6aa53..0000000
--- a/arch/arm/boards/karo-tx53/flash_header.c
+++ /dev/null
@@ -1,73 +0,0 @@
-/*
- * Copyright (C) 2011 Marc Kleine-Budde <mkl@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <asm/byteorder.h>
-#include <mach/imx-flash-header.h>
-#include <asm/barebox-arm-head.h>
-
-void __naked __flash_header_start go(void)
-{
-	barebox_arm_imx_fcb_head();
-}
-
-/*
- * FIXME: These are the dcd values for a Ka-Ro TX53 1011 which
- *        is not in production. It has 1GB DDR2 memory.
- */
-#ifdef CONFIG_TX53_REV_1011
-
-#define DCD_NAME_1011 struct imx_dcd_v2_entry __dcd_entry_section dcd_entry
-
-#include "dcd-data-1011.h"
-
-#elif defined(CONFIG_TX53_REV_XX30)
-
-#define DCD_NAME_XX30 u32 __dcd_entry_section dcd_entry
-
-#include "dcd-data-xx30.h"
-
-#endif
-
-#define APP_DEST	0x71000000
-
-int tx53_dcdentry_size = sizeof(dcd_entry);
-void *tx53_dcd_entry = &dcd_entry;
-
-struct imx_flash_header_v2 __flash_header_section flash_header = {
-	.header.tag		= IVT_HEADER_TAG,
-	.header.length		= cpu_to_be16(32),
-	.header.version		= IVT_VERSION,
-
-	.entry			= APP_DEST + 0x1000,
-	.dcd_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, dcd),
-	.boot_data_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, boot_data),
-	.self			= APP_DEST + 0x400,
-
-	.boot_data.start	= APP_DEST,
-	.boot_data.size		= DCD_BAREBOX_SIZE,
-
-	.dcd.header.tag		= DCD_HEADER_TAG,
-	.dcd.header.length	= cpu_to_be16(sizeof(struct imx_dcd) + sizeof(dcd_entry)),
-	.dcd.header.version	= DCD_VERSION,
-
-	.dcd.command.tag	= DCD_COMMAND_WRITE_TAG,
-#ifdef CONFIG_TX53_REV_1011
-	.dcd.command.length	= cpu_to_be16(sizeof(struct imx_dcd_command) + sizeof(dcd_entry)),
-#elif defined(CONFIG_TX53_REV_XX30)
-	.dcd.command.length	= cpu_to_be16(0x21c),
-#endif
-	.dcd.command.param	= DCD_COMMAND_WRITE_PARAM,
-};
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
