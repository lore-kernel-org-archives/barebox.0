Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtkt-0001us-MH
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:43:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:42:21 +0100
Message-Id: <1392288152-14821-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/14] ARM: i.MX6 sabresd: Switch to imximage
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                                  |   1 +
 arch/arm/boards/freescale-mx6-sabresd/Makefile     |   1 -
 .../freescale-mx6-sabresd/flash-header.imxcfg      | 128 +++++++++++++++
 .../boards/freescale-mx6-sabresd/flash_header.c    | 178 ---------------------
 4 files changed, 129 insertions(+), 179 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx6-sabresd/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx6-sabresd/flash_header.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index b321b5d..be0d7ed 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -210,6 +210,7 @@ barebox.imximg: $(KBUILD_BINARY) FORCE
 
 boarddir = $(srctree)/arch/arm/boards
 imxcfg-$(CONFIG_MACH_FREESCALE_MX53_SMD) += $(boarddir)/freescale-mx53-smd/flash-header.imxcfg
+imxcfg-$(CONFIG_MACH_SABRESD) += $(boarddir)/freescale-mx6-sabresd/flash-header.imxcfg
 ifneq ($(imxcfg-y),)
 CFG_barebox.imximg := $(imxcfg-y)
 KBUILD_IMAGE  := barebox.imximg
diff --git a/arch/arm/boards/freescale-mx6-sabresd/Makefile b/arch/arm/boards/freescale-mx6-sabresd/Makefile
index d44f697..01c7a25 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/Makefile
+++ b/arch/arm/boards/freescale-mx6-sabresd/Makefile
@@ -1,3 +1,2 @@
 obj-y += board.o
-lwl-y += flash_header.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx6-sabresd/flash-header.imxcfg b/arch/arm/boards/freescale-mx6-sabresd/flash-header.imxcfg
new file mode 100644
index 0000000..21f217c
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-sabresd/flash-header.imxcfg
@@ -0,0 +1,128 @@
+loadaddr 0x10000000
+soc imx6
+dcdofs 0x400
+wm 32 0x20e05a8 0x00000030
+wm 32 0x20e05b0 0x00000030
+wm 32 0x20e0524 0x00000030
+wm 32 0x20e051c 0x00000030
+
+wm 32 0x20e0518 0x00000030
+wm 32 0x20e050c 0x00000030
+wm 32 0x20e05b8 0x00000030
+wm 32 0x20e05c0 0x00000030
+
+wm 32 0x20e05ac 0x00020030
+wm 32 0x20e05b4 0x00020030
+wm 32 0x20e0528 0x00020030
+wm 32 0x20e0520 0x00020030
+
+wm 32 0x20e0514 0x00020030
+wm 32 0x20e0510 0x00020030
+wm 32 0x20e05bc 0x00020030
+wm 32 0x20e05c4 0x00020030
+
+wm 32 0x20e056c 0x00020030
+wm 32 0x20e0578 0x00020030
+wm 32 0x20e0588 0x00020030
+wm 32 0x20e0594 0x00020030
+
+wm 32 0x20e057c 0x00020030
+wm 32 0x20e0590 0x00003000
+wm 32 0x20e0598 0x00003000
+wm 32 0x20e058c 0x00000000
+
+wm 32 0x20e059c 0x00003030
+wm 32 0x20e05a0 0x00003030
+wm 32 0x20e0784 0x00000030
+wm 32 0x20e0788 0x00000030
+
+wm 32 0x20e0794 0x00000030
+wm 32 0x20e079c 0x00000030
+wm 32 0x20e07a0 0x00000030
+wm 32 0x20e07a4 0x00000030
+
+wm 32 0x20e07a8 0x00000030
+wm 32 0x20e0748 0x00000030
+wm 32 0x20e074c 0x00000030
+wm 32 0x20e0750 0x00020000
+
+wm 32 0x20e0758 0x00000000
+wm 32 0x20e0774 0x00020000
+wm 32 0x20e078c 0x00000030
+wm 32 0x20e0798 0x000C0000
+
+wm 32 0x21b081c 0x33333333
+wm 32 0x21b0820 0x33333333
+wm 32 0x21b0824 0x33333333
+wm 32 0x21b0828 0x33333333
+
+wm 32 0x21b481c 0x33333333
+wm 32 0x21b4820 0x33333333
+wm 32 0x21b4824 0x33333333
+wm 32 0x21b4828 0x33333333
+
+wm 32 0x21b0018 0x00081740
+
+wm 32 0x21b001c 0x00008000
+wm 32 0x21b000c 0x555A7975
+wm 32 0x21b0010 0xFF538E64
+wm 32 0x21b0014 0x01FF00DB
+wm 32 0x21b002c 0x000026D2
+
+wm 32 0x21b0030 0x005B0E21
+wm 32 0x21b0008 0x09444040
+wm 32 0x21b0004 0x00025576
+wm 32 0x21b0040 0x00000027
+wm 32 0x21b0000 0x831A0000
+
+wm 32 0x21b001c 0x04088032
+wm 32 0x21b001c 0x0408803A
+wm 32 0x21b001c 0x00008033
+wm 32 0x21b001c 0x0000803B
+wm 32 0x21b001c 0x00428031
+wm 32 0x21b001c 0x00428039
+wm 32 0x21b001c 0x09408030
+wm 32 0x21b001c 0x09408038
+
+wm 32 0x21b001c 0x04008040
+wm 32 0x21b001c 0x04008048
+wm 32 0x21b0800 0xA1380003
+wm 32 0x21b4800 0xA1380003
+wm 32 0x21b0020 0x00005800
+wm 32 0x21b0818 0x00022227
+wm 32 0x21b4818 0x00022227
+
+wm 32 0x21b083c 0x434B0350
+wm 32 0x21b0840 0x034C0359
+wm 32 0x21b483c 0x434B0350
+wm 32 0x21b4840 0x03650348
+wm 32 0x21b0848 0x4436383B
+wm 32 0x21b4848 0x39393341
+wm 32 0x21b0850 0x35373933
+wm 32 0x21b4850 0x48254A36
+
+wm 32 0x21b080c 0x001F001F
+wm 32 0x21b0810 0x001F001F
+
+wm 32 0x21b480c 0x00440044
+wm 32 0x21b4810 0x00440044
+
+wm 32 0x21b08b8 0x00000800
+wm 32 0x21b48b8 0x00000800
+
+wm 32 0x21b001c 0x00000000
+wm 32 0x21b0404 0x00011006
+
+wm 32 0x020c4068 0x00c03f3f
+wm 32 0x020c406c 0x0030fc03
+wm 32 0x020c4070 0x0fffc000
+wm 32 0x020c4074 0x3ff00000
+wm 32 0x020c4078 0x00fff300
+wm 32 0x020c407c 0x0f0000c3
+wm 32 0x020c4080 0x000003ff
+
+# enable AXI cache for VDOA/VPU/IPU
+wm 32 0x20e0010 0xf00000cf
+# set IPU AXI-id0 Qos=0xf(bypass) AXI-id1 Qos=0x7
+wm 32 0x20e0018 0x007f007f
+wm 32 0x20e001c 0x007f007f
diff --git a/arch/arm/boards/freescale-mx6-sabresd/flash_header.c b/arch/arm/boards/freescale-mx6-sabresd/flash_header.c
deleted file mode 100644
index 61d482b..0000000
--- a/arch/arm/boards/freescale-mx6-sabresd/flash_header.c
+++ /dev/null
@@ -1,178 +0,0 @@
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
-#include <mach/imx6-regs.h>
-#include <asm/barebox-arm-head.h>
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
-	DCD(MX6_MMDC_P0_BASE_ADDR + 0x000, 0x831A0000),
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
-	DCD(MX6_CCM_BASE_ADDR + 0x068, 0x00c03f3f),
-	DCD(MX6_CCM_BASE_ADDR + 0x06c, 0x0030fc03),
-	DCD(MX6_CCM_BASE_ADDR + 0x070, 0x0fffc000),
-	DCD(MX6_CCM_BASE_ADDR + 0x074, 0x3ff00000),
-	DCD(MX6_CCM_BASE_ADDR + 0x078, 0x00fff300),
-	DCD(MX6_CCM_BASE_ADDR + 0x07c, 0x0f0000c3),
-	DCD(MX6_CCM_BASE_ADDR + 0x080, 0x000003ff),
-
-	/* enable AXI cache for VDOA/VPU/IPU */
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x010, 0xf00000cf),
-	/* set IPU AXI-id0 Qos=0xf(bypass) AXI-id1 Qos=0x7 */
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x018, 0x007f007f),
-	DCD(MX6_IOMUXC_BASE_ADDR + 0x01c, 0x007f007f),
-};
-
-#define APP_DEST	CONFIG_TEXT_BASE
-
-struct imx_flash_header_v2 __flash_header_section flash_header = {
-	.header.tag		= IVT_HEADER_TAG,
-	.header.length		= cpu_to_be16(32),
-	.header.version		= IVT_VERSION,
-	.entry			= (u32)_stext,
-	.dcd_ptr		= APP_DEST + FLASH_HEADER_OFFSET + offsetof(struct imx_flash_header_v2, dcd),
-	.boot_data_ptr		= APP_DEST + FLASH_HEADER_OFFSET + offsetof(struct imx_flash_header_v2, boot_data),
-	.self			= APP_DEST + FLASH_HEADER_OFFSET,
-
-	.boot_data.start	= APP_DEST,
-	.boot_data.size		= barebox_image_size,
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
