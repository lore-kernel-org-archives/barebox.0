Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ViMfb-0007iM-Vd
 for barebox@lists.infradead.org; Mon, 18 Nov 2013 11:07:13 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Mon, 18 Nov 2013 12:06:33 +0100
Message-Id: <1384772798-3297-2-git-send-email-p.zabel@pengutronix.de>
In-Reply-To: <1384772798-3297-1-git-send-email-p.zabel@pengutronix.de>
References: <1384772798-3297-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH 2/6] ARM i.MX6: sabrelite: switch to multi image support
To: barebox@lists.infradead.org
Cc: Philipp Zabel <p.zabel@pengutronix.de>

The image will be named after the official name of this board:

barebox-freescale-mx6-sabreline.img

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/boards/freescale-mx6-sabrelite/Makefile   |   4 +-
 .../flash-header-mx6-sabrelite.imxcfg              | 106 ++++++++++++
 .../boards/freescale-mx6-sabrelite/flash_header.c  | 178 ---------------------
 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c |  13 +-
 arch/arm/configs/freescale-mx6-sabrelite_defconfig |   2 -
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/mach-imx/Kconfig                          |   1 +
 images/Makefile.imx                                |   5 +
 8 files changed, 126 insertions(+), 184 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx6-sabrelite/flash_header.c

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/Makefile b/arch/arm/boards/freescale-mx6-sabrelite/Makefile
index d44f697..6ae9e75 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/Makefile
+++ b/arch/arm/boards/freescale-mx6-sabrelite/Makefile
@@ -1,3 +1,3 @@
-obj-y += board.o
-lwl-y += flash_header.o
+obj-y += board.o flash-header-mx6-sabrelite.dcd.o
+extra-y += flash-header-mx6-sabrelite.dcd.S flash-header-mx6-sabrelite.dcd
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg b/arch/arm/boards/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
new file mode 100644
index 0000000..60a39fe
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
@@ -0,0 +1,106 @@
+soc imx6
+loadaddr 0x20000000
+dcdofs 0x400
+
+wm 32 0x020e05a8 0x00000030
+wm 32 0x020e05b0 0x00000030
+wm 32 0x020e0524 0x00000030
+wm 32 0x020e051c 0x00000030
+wm 32 0x020e0518 0x00000030
+wm 32 0x020e050c 0x00000030
+wm 32 0x020e05b8 0x00000030
+wm 32 0x020e05c0 0x00000030
+wm 32 0x020e05ac 0x00020030
+wm 32 0x020e05b4 0x00020030
+wm 32 0x020e0528 0x00020030
+wm 32 0x020e0520 0x00020030
+wm 32 0x020e0514 0x00020030
+wm 32 0x020e0510 0x00020030
+wm 32 0x020e05bc 0x00020030
+wm 32 0x020e05c4 0x00020030
+wm 32 0x020e056c 0x00020030
+wm 32 0x020e0578 0x00020030
+wm 32 0x020e0588 0x00020030
+wm 32 0x020e0594 0x00020030
+wm 32 0x020e057c 0x00020030
+wm 32 0x020e0590 0x00003000
+wm 32 0x020e0598 0x00003000
+wm 32 0x020e058c 0x00000000
+wm 32 0x020e059c 0x00003030
+wm 32 0x020e05a0 0x00003030
+wm 32 0x020e0784 0x00000030
+wm 32 0x020e0788 0x00000030
+wm 32 0x020e0794 0x00000030
+wm 32 0x020e079c 0x00000030
+wm 32 0x020e07a0 0x00000030
+wm 32 0x020e07a4 0x00000030
+wm 32 0x020e07a8 0x00000030
+wm 32 0x020e0748 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e0758 0x00000000
+wm 32 0x020e0774 0x00020000
+wm 32 0x020e078c 0x00000030
+wm 32 0x020e0798 0x000c0000
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+wm 32 0x021b0018 0x00081740
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b000c 0x555a7975
+wm 32 0x021b0010 0xff538e64
+wm 32 0x021b0014 0x01ff00db
+wm 32 0x021b002c 0x000026d2
+wm 32 0x021b0030 0x005b0e21
+wm 32 0x021b0008 0x09444040
+wm 32 0x021b0004 0x00025576
+wm 32 0x021b0040 0x00000027
+wm 32 0x021b0000 0x831a0000
+wm 32 0x021b001c 0x04088032
+wm 32 0x021b001c 0x0408803a
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x0000803b
+wm 32 0x021b001c 0x00428031
+wm 32 0x021b001c 0x00428039
+wm 32 0x021b001c 0x09408030
+wm 32 0x021b001c 0x09408038
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b001c 0x04008048
+wm 32 0x021b0800 0xa1380003
+wm 32 0x021b4800 0xa1380003
+wm 32 0x021b0020 0x00005800
+wm 32 0x021b0818 0x00022227
+wm 32 0x021b4818 0x00022227
+wm 32 0x021b083c 0x434b0350
+wm 32 0x021b0840 0x034c0359
+wm 32 0x021b483c 0x434b0350
+wm 32 0x021b4840 0x03650348
+wm 32 0x021b0848 0x4436383b
+wm 32 0x021b4848 0x39393341
+wm 32 0x021b0850 0x35373933
+wm 32 0x021b4850 0x48254A36
+wm 32 0x021b080c 0x001f001f
+wm 32 0x021b0810 0x001f001f
+wm 32 0x021b480c 0x00440044
+wm 32 0x021b4810 0x00440044
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+wm 32 0x021b001c 0x00000000
+wm 32 0x021b0404 0x00011006
+wm 32 0x020c4068 0x00c03f3f
+wm 32 0x020c406c 0x0030fc03
+wm 32 0x020c4070 0x0fffc000
+wm 32 0x020c4074 0x3ff00000
+wm 32 0x020c4078 0x00fff300
+wm 32 0x020c407c 0x0f0000c3
+wm 32 0x020c4080 0x000003ff
+/* enable AXI cache for VDOA/VPU/IPU */
+wm 32 0x020e0010 0xf00000cf
+/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7 */
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/flash_header.c b/arch/arm/boards/freescale-mx6-sabrelite/flash_header.c
deleted file mode 100644
index 61d482b..0000000
--- a/arch/arm/boards/freescale-mx6-sabrelite/flash_header.c
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
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
index aec46fd..a68e09a 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
@@ -3,8 +3,17 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-void __naked barebox_arm_reset_vector(void)
+extern char __dtb_imx6q_sabrelite_start[];
+
+ENTRY_FUNCTION(start_imx6_sabrelite)(void)
 {
+	uint32_t fdt;
+
+	__barebox_arm_head();
+
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(0x10000000, SZ_1G, 0);
+
+	fdt = (uint32_t)__dtb_imx6q_sabrelite_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/configs/freescale-mx6-sabrelite_defconfig b/arch/arm/configs/freescale-mx6-sabrelite_defconfig
index 4cbed2a..520c31a 100644
--- a/arch/arm/configs/freescale-mx6-sabrelite_defconfig
+++ b/arch/arm/configs/freescale-mx6-sabrelite_defconfig
@@ -1,5 +1,3 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="imx6q-sabrelite"
 CONFIG_ARCH_IMX=y
 CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_SABRELITE=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 511adf4..9839572 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -33,6 +33,7 @@ pbl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 pbl-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
+pbl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o
 
 .SECONDARY: $(obj)/$(BUILTIN_DTB).dtb.S
 .SECONDARY: $(patsubst %,$(obj)/%.S,$(dtb-y))
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index c7b147e..f7e6b84 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -219,6 +219,7 @@ config MACH_SABRELITE
 	bool "Freescale i.MX6 Sabre Lite"
 	select ARCH_IMX6
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select HAVE_PBL_MULTI_IMAGES
 
 endif
 
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 794e3a3..89d0b3d 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -66,3 +66,8 @@ pblx-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q
 CFG_start_imx6q_dfi_fs700_m60_6q.pblx.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6q.imxcfg
 FILE_barebox-dfi-fs700-m60-6q.img = start_imx6q_dfi_fs700_m60_6q.pblx.imximg
 image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6q.img
+
+pblx-$(CONFIG_MACH_SABRELITE) += start_imx6_sabrelite
+CFG_start_imx6_sabrelite.pblx.imximg = $(board)/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
+FILE_barebox-freescale-imx6q-sabrelite.img = start_imx6_sabrelite.pblx.imximg
+image-$(CONFIG_MACH_SABRELITE) += barebox-freescale-imx6q-sabrelite.img
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
