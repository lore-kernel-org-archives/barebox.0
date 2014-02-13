Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtl2-0001vW-1T
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:43:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:42:22 +0100
Message-Id: <1392288152-14821-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/14] ARM: i.MX6 arm2: Switch to imximage
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                                  |   1 +
 arch/arm/boards/freescale-mx6-arm2/Makefile        |   1 -
 .../boards/freescale-mx6-arm2/flash-header.imxcfg  | 122 +++++++++++++++
 arch/arm/boards/freescale-mx6-arm2/flash_header.c  | 171 ---------------------
 4 files changed, 123 insertions(+), 172 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx6-arm2/flash_header.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index be0d7ed..316c355 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -211,6 +211,7 @@ barebox.imximg: $(KBUILD_BINARY) FORCE
 boarddir = $(srctree)/arch/arm/boards
 imxcfg-$(CONFIG_MACH_FREESCALE_MX53_SMD) += $(boarddir)/freescale-mx53-smd/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_SABRESD) += $(boarddir)/freescale-mx6-sabresd/flash-header.imxcfg
+imxcfg-$(CONFIG_MACH_MX6Q_ARM2) += $(boarddir)/freescale-mx6-arm2/flash-header.imxcfg
 ifneq ($(imxcfg-y),)
 CFG_barebox.imximg := $(imxcfg-y)
 KBUILD_IMAGE  := barebox.imximg
diff --git a/arch/arm/boards/freescale-mx6-arm2/Makefile b/arch/arm/boards/freescale-mx6-arm2/Makefile
index d44f697..01c7a25 100644
--- a/arch/arm/boards/freescale-mx6-arm2/Makefile
+++ b/arch/arm/boards/freescale-mx6-arm2/Makefile
@@ -1,3 +1,2 @@
 obj-y += board.o
-lwl-y += flash_header.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx6-arm2/flash-header.imxcfg b/arch/arm/boards/freescale-mx6-arm2/flash-header.imxcfg
new file mode 100644
index 0000000..403d184
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-arm2/flash-header.imxcfg
@@ -0,0 +1,122 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+wm 32 0x020e05a8 0x00000030
+wm 32 0x020e05b0 0x00000030
+wm 32 0x020e0524 0x00000030
+wm 32 0x020e051c 0x00000030
+
+wm 32 0x020e0518 0x00000030
+wm 32 0x020e050c 0x00000030
+wm 32 0x020e05b8 0x00000030
+wm 32 0x020e05c0 0x00000030
+
+wm 32 0x020e05ac 0x00020030
+wm 32 0x020e05b4 0x00020030
+wm 32 0x020e0528 0x00020030
+wm 32 0x020e0520 0x00020030
+
+wm 32 0x020e0514 0x00020030
+wm 32 0x020e0510 0x00020030
+wm 32 0x020e05bc 0x00020030
+wm 32 0x020e05c4 0x00020030
+
+wm 32 0x020e056c 0x00020030
+wm 32 0x020e0578 0x00020030
+wm 32 0x020e0588 0x00020030
+wm 32 0x020e0594 0x00020030
+
+wm 32 0x020e057c 0x00020030
+wm 32 0x020e0590 0x00003000
+wm 32 0x020e0598 0x00003000
+wm 32 0x020e058c 0x00000000
+
+wm 32 0x020e059c 0x00003030
+wm 32 0x020e05a0 0x00003030
+wm 32 0x020e0784 0x00000030
+wm 32 0x020e0788 0x00000030
+
+wm 32 0x020e0794 0x00000030
+wm 32 0x020e079c 0x00000030
+wm 32 0x020e07a0 0x00000030
+wm 32 0x020e07a4 0x00000030
+
+wm 32 0x020e07a8 0x00000030
+wm 32 0x020e0748 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e0750 0x00020000
+
+wm 32 0x020e0758 0x00000000
+wm 32 0x020e0774 0x00020000
+wm 32 0x020e078c 0x00000030
+wm 32 0x020e0798 0x000C0000
+
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+wm 32 0x021b0018 0x00081740
+
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b000c 0x555A7975
+wm 32 0x021b0010 0xFF538E64
+wm 32 0x021b0014 0x01FF00DB
+wm 32 0x021b002c 0x000026D2
+
+wm 32 0x021b0030 0x005B0E21
+wm 32 0x021b0008 0x09444040
+wm 32 0x021b0004 0x00025576
+wm 32 0x021b0040 0x00000027
+wm 32 0x021b0000 0xC31A0000
+
+wm 32 0x021b001c 0x04088032
+wm 32 0x021b001c 0x0408803A
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x0000803B
+wm 32 0x021b001c 0x00428031
+wm 32 0x021b001c 0x00428039
+wm 32 0x021b001c 0x09408030
+wm 32 0x021b001c 0x09408038
+
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b001c 0x04008048
+wm 32 0x021b0800 0xA1380003
+wm 32 0x021b4800 0xA1380003
+wm 32 0x021b0020 0x00005800
+wm 32 0x021b0818 0x00022227
+wm 32 0x021b4818 0x00022227
+
+wm 32 0x021b083c 0x434B0350
+wm 32 0x021b0840 0x034C0359
+wm 32 0x021b483c 0x434B0350
+wm 32 0x021b4840 0x03650348
+wm 32 0x021b0848 0x4436383B
+wm 32 0x021b4848 0x39393341
+wm 32 0x021b0850 0x35373933
+wm 32 0x021b4850 0x48254A36
+
+wm 32 0x021b080c 0x001F001F
+wm 32 0x021b0810 0x001F001F
+
+wm 32 0x021b480c 0x00440044
+wm 32 0x021b4810 0x00440044
+
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+
+wm 32 0x021b001c 0x00000000
+wm 32 0x021b0404 0x00011006
+
+/* enable AXI cache for VDOA/VPU/IPU */
+wm 32 0x020e0010 0xf00000ff
+
+/* set IPU AXI-id0 Qos=0xf(bypass) AXI-id1 Qos=0x7 */
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
diff --git a/arch/arm/boards/freescale-mx6-arm2/flash_header.c b/arch/arm/boards/freescale-mx6-arm2/flash_header.c
deleted file mode 100644
index 60cf9cd..0000000
--- a/arch/arm/boards/freescale-mx6-arm2/flash_header.c
+++ /dev/null
@@ -1,171 +0,0 @@
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
-#include <asm/barebox-arm-head.h>
-#include <mach/imx-flash-header.h>
-#include <mach/imx6-regs.h>
-
-void __naked __flash_header_start go(void)
-{
-	barebox_arm_head();
-}
-
-#define DCD(a, v) { .addr = cpu_to_be32(a), .val = cpu_to_be32(v), }
-
-struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x5a8, 0x00000030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x5b0, 0x00000030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x524, 0x00000030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x51c, 0x00000030),
-
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x518, 0x00000030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x50c, 0x00000030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x5b8, 0x00000030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x5c0, 0x00000030),
-
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x5ac, 0x00020030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x5b4, 0x00020030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x528, 0x00020030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x520, 0x00020030),
-
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x514, 0x00020030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x510, 0x00020030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x5bc, 0x00020030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x5c4, 0x00020030),
-
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x56c, 0x00020030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x578, 0x00020030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x588, 0x00020030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x594, 0x00020030),
-
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x57c, 0x00020030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x590, 0x00003000),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x598, 0x00003000),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x58c, 0x00000000),
-
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x59c, 0x00003030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x5a0, 0x00003030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x784, 0x00000030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x788, 0x00000030),
-
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x794, 0x00000030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x79c, 0x00000030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x7a0, 0x00000030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x7a4, 0x00000030),
-
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x7a8, 0x00000030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x748, 0x00000030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x74c, 0x00000030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x750, 0x00020000),
-
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x758, 0x00000000),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x774, 0x00020000),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x78c, 0x00000030),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x798, 0x000C0000),
-
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x81c, 0x33333333),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x820, 0x33333333),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x824, 0x33333333),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x828, 0x33333333),
-
-	DCD(MX6_MMDC_P1_BASE_ADDR + 0x81c, 0x33333333),
-	DCD(MX6_MMDC_P1_BASE_ADDR + 0x820, 0x33333333),
-	DCD(MX6_MMDC_P1_BASE_ADDR + 0x824, 0x33333333),
-	DCD(MX6_MMDC_P1_BASE_ADDR + 0x828, 0x33333333),
-
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x018, 0x00081740),
-
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00008000),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x00c, 0x555A7975),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x010, 0xFF538E64),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x014, 0x01FF00DB),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x02c, 0x000026D2),
-
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x030, 0x005B0E21),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x008, 0x09444040),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x004, 0x00025576),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x040, 0x00000027),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x000, 0xC31A0000),
-
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x04088032),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x0408803A),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00008033),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x0000803B),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00428031),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00428039),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x09408030),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x09408038),
-
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x04008040),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x04008048),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x800, 0xA1380003),
-	DCD(MX6_MMDC_P1_BASE_ADDR + 0x800, 0xA1380003),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x020, 0x00005800),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x818, 0x00022227),
-	DCD(MX6_MMDC_P1_BASE_ADDR + 0x818, 0x00022227),
-
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x83c, 0x434B0350),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x840, 0x034C0359),
-	DCD(MX6_MMDC_P1_BASE_ADDR + 0x83c, 0x434B0350),
-	DCD(MX6_MMDC_P1_BASE_ADDR + 0x840, 0x03650348),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x848, 0x4436383B),
-	DCD(MX6_MMDC_P1_BASE_ADDR + 0x848, 0x39393341),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x850, 0x35373933),
-	DCD(MX6_MMDC_P1_BASE_ADDR + 0x850, 0x48254A36),
-
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x80c, 0x001F001F),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x810, 0x001F001F),
-
-	DCD(MX6_MMDC_P1_BASE_ADDR + 0x80c, 0x00440044),
-	DCD(MX6_MMDC_P1_BASE_ADDR + 0x810, 0x00440044),
-
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x8b8, 0x00000800),
-	DCD(MX6_MMDC_P1_BASE_ADDR + 0x8b8, 0x00000800),
-
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x01c, 0x00000000),
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x404, 0x00011006),
-
-	/* enable AXI cache for VDOA/VPU/IPU */
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x010, 0xf00000ff),
-	/* set IPU AXI-id0 Qos=0xf(bypass) AXI-id1 Qos=0x7 */
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x018, 0x007f007f),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x01c, 0x007f007f),
-};
-
-#define APP_DEST	0x10000000
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
-	.boot_data.size		= 0x40000,
-
-	.dcd.header.tag		= DCD_HEADER_TAG,
-	.dcd.header.length	= cpu_to_be16(sizeof(struct imx_dcd) + sizeof(dcd_entry)),
-	.dcd.header.version	= DCD_VERSION,
-
-	.dcd.command.tag	= DCD_COMMAND_WRITE_TAG,
-	.dcd.command.length	= cpu_to_be16(sizeof(struct imx_dcd_command) + sizeof(dcd_entry)),
-	.dcd.command.param	= DCD_COMMAND_WRITE_PARAM,
-};
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
