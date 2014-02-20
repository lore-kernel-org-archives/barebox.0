Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x233.google.com ([2607:f8b0:4002:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WGcxf-0007Ph-S2
 for barebox@lists.infradead.org; Thu, 20 Feb 2014 23:23:25 +0000
Received: by mail-yh0-f51.google.com with SMTP id t59so1559662yho.38
 for <barebox@lists.infradead.org>; Thu, 20 Feb 2014 15:23:02 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 20 Feb 2014 20:22:51 -0300
Message-Id: <1392938571-31993-2-git-send-email-festevam@gmail.com>
In-Reply-To: <1392938571-31993-1-git-send-email-festevam@gmail.com>
References: <1392938571-31993-1-git-send-email-festevam@gmail.com>
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
Subject: [PATCH 2/2] ARM: i.MX6: sabresd: switch to multi image support
To: s.hauer@pengutronix.de
Cc: Fabio Estevam <fabio.estevam@freescale.com>, barebox@lists.infradead.org

From: Fabio Estevam <fabio.estevam@freescale.com>

The image will be named after the official name of this board:
    
barebox-freescale-mx6-sabresd.img

Signed-off-by: Fabio Estevam <fabio.estevam@freescale.com>
---
 arch/arm/boards/freescale-mx6-sabresd/Makefile     |   4 +-
 .../boards/freescale-mx6-sabresd/flash_header.c    | 178 ---------------------
 arch/arm/boards/freescale-mx6-sabresd/lowlevel.c   |  11 +-
 arch/arm/dts/Makefile                              |   1 +
 images/Makefile.imx                                |   5 +
 5 files changed, 17 insertions(+), 182 deletions(-)
 delete mode 100644 arch/arm/boards/freescale-mx6-sabresd/flash_header.c

diff --git a/arch/arm/boards/freescale-mx6-sabresd/Makefile b/arch/arm/boards/freescale-mx6-sabresd/Makefile
index d44f697..f72c641 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/Makefile
+++ b/arch/arm/boards/freescale-mx6-sabresd/Makefile
@@ -1,3 +1,3 @@
-obj-y += board.o
-lwl-y += flash_header.o
+obj-y += board.o flash-header-mx6-sabresd.dcd.o
+extra-y += flash-header-mx6-sabresd.dcd.S flash-header-mx6-sabresd.dcd
 lwl-y += lowlevel.o
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
diff --git a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
index aec46fd..c8b542a 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
@@ -3,8 +3,15 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-void __naked barebox_arm_reset_vector(void)
+extern char __dtb_imx6q_sabresd_start[];
+
+ENTRY_FUNCTION(start_imx6q_sabresd, r0, r1, r2)
 {
+	uint32_t fdt;
+
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(0x10000000, SZ_1G, 0);
+
+	fdt = (uint32_t)__dtb_imx6q_sabresd_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 07508e3..ba57be1 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -54,6 +54,7 @@ pbl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
 pbl-$(CONFIG_MACH_SOLIDRUN_HUMMINGBOARD) += imx6dl-hummingboard.dtb.o
 pbl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
+pbl-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o
 pbl-$(CONFIG_MACH_NITROGEN6X) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o
 
 .SECONDARY: $(obj)/$(BUILTIN_DTB).dtb.S
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 9aca871..37b9a99 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -109,6 +109,11 @@ CFG_start_imx6dl_sabrelite.pblx.imximg = $(board)/freescale-mx6-sabrelite/flash-
 FILE_barebox-freescale-imx6dl-sabrelite.img = start_imx6dl_sabrelite.pblx.imximg
 image-$(CONFIG_MACH_SABRELITE) += barebox-freescale-imx6dl-sabrelite.img
 
+pblx-$(CONFIG_MACH_SABRESD) += start_imx6q_sabresd
+CFG_start_imx6q_sabresd.pblx.imximg = $(board)/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg
+FILE_barebox-freescale-imx6q-sabresd.img = start_imx6q_sabresd.pblx.imximg
+image-$(CONFIG_MACH_SABRESD) += barebox-freescale-imx6q-sabresd.img
+
 pblx-$(CONFIG_MACH_SOLIDRUN_HUMMINGBOARD) += start_imx6dl_hummingboard
 CFG_start_imx6dl_hummingboard.pblx.imximg = $(board)/solidrun-hummingboard/flash-header-solidrun-hummingboard.imxcfg
 FILE_barebox-solidrun-imx6dl-hummingboard.img = start_imx6dl_hummingboard.pblx.imximg
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
