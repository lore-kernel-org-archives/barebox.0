Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4sz-0002gb-5d
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:52:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 23/23] ARM: i.MX: Add WaRP7 board support
Date: Mon, 16 Jan 2017 11:51:08 +0100
Message-Id: <20170116105108.13617-24-s.hauer@pengutronix.de>
In-Reply-To: <20170116105108.13617-1-s.hauer@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>
Cc: Juergen Borleis <jbe@pengutronix.de>

From: Juergen Borleis <jbe@pengutronix.de>

Signed-off-by Juergen Borleis <jbe@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/imx/Element14-WaRP7.rst       | 54 +++++++++++++++
 arch/arm/boards/Makefile                           |  1 +
 arch/arm/boards/element14-warp7/Makefile           |  2 +
 arch/arm/boards/element14-warp7/board.c            | 35 ++++++++++
 .../element14-warp7/flash-header-mx7-warp.imxcfg   | 81 ++++++++++++++++++++++
 arch/arm/boards/element14-warp7/lowlevel.c         | 48 +++++++++++++
 arch/arm/dts/Makefile                              |  1 +
 arch/arm/dts/imx7s-warp.dts                        | 45 ++++++++++++
 arch/arm/mach-imx/Kconfig                          |  5 ++
 images/Makefile.imx                                |  5 ++
 10 files changed, 277 insertions(+)
 create mode 100644 Documentation/boards/imx/Element14-WaRP7.rst
 create mode 100644 arch/arm/boards/element14-warp7/Makefile
 create mode 100644 arch/arm/boards/element14-warp7/board.c
 create mode 100644 arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg
 create mode 100644 arch/arm/boards/element14-warp7/lowlevel.c
 create mode 100644 arch/arm/dts/imx7s-warp.dts

diff --git a/Documentation/boards/imx/Element14-WaRP7.rst b/Documentation/boards/imx/Element14-WaRP7.rst
new file mode 100644
index 000000000..d4e5e7991
--- /dev/null
+++ b/Documentation/boards/imx/Element14-WaRP7.rst
@@ -0,0 +1,54 @@
+element14 WaRP7
+===============
+
+This CPU card is based on an NXP i.MX7S SoC.
+
+Supported hardware
+==================
+
+- NXP PMIC PFUZE3000
+- Kingston 08EMCP04-EL3AV100 eMCP (eMMC and LPDDR3 memory in one package)
+  - 8 GiB eMMC Triple-Level cell NAND flash, eMMC standard 5.0 (HS400)
+  - 512 MiB LPDDR3 SDRAM starting at address 0x80000000
+
+Bootstrapping barebox
+=====================
+
+The device boots in internal boot mode from eMMC and is shipped with a
+vendor modified u-boot imximage.
+
+Barebox can be used as a drop-in replacement for the shipped bootloader.
+
+The WaRP7 IO Board has a double DIP switch where switch number two defines the
+boot source of the i.MX7 SoC:
+
+  +-----+
+  |     |
+  | | O | <--- on = high level
+  | | | |
+  | O | | <--- off = low level
+  |     |
+  | 1 2 |
+  +-----+
+
+Bootsource is the internal eMMC:
+
+  +-----+
+  |     |
+  | O | |
+  | | | |
+  | | O | <---- eMMC
+  |     |
+  | 1 2 |
+  +-----+
+
+Bootsource is the USB:
+
+  +-----+
+  |     |
+  | O O | <---- USB
+  | | | |
+  | | | |
+  |     |
+  | 1 2 |
+  +-----+
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index ff0a86fcb..2dec84d8c 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -140,4 +140,5 @@ obj-$(CONFIG_MACH_ZYLONITE)			+= zylonite/
 obj-$(CONFIG_MACH_VARISCITE_MX6)		+= variscite-mx6/
 obj-$(CONFIG_MACH_VSCOM_BALTOS)			+= vscom-baltos/
 obj-$(CONFIG_MACH_QEMU_VIRT64)			+= qemu-virt64/
+obj-$(CONFIG_MACH_WARP7)			+= element14-warp7/
 obj-$(CONFIG_MACH_VF610_TWR)			+= freescale-vf610-twr/
diff --git a/arch/arm/boards/element14-warp7/Makefile b/arch/arm/boards/element14-warp7/Makefile
new file mode 100644
index 000000000..01c7a259e
--- /dev/null
+++ b/arch/arm/boards/element14-warp7/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/element14-warp7/board.c b/arch/arm/boards/element14-warp7/board.c
new file mode 100644
index 000000000..84fc885da
--- /dev/null
+++ b/arch/arm/boards/element14-warp7/board.c
@@ -0,0 +1,35 @@
+/*
+ * Copyright (C) 2017 Sascha Hauer, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <environment.h>
+#include <mach/bbu.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <partition.h>
+#include <mach/generic.h>
+#include <linux/sizes.h>
+
+static int warp7_devices_init(void)
+{
+	if (!of_machine_is_compatible("warp,imx7s-warp"))
+		return 0;
+
+	imx6_bbu_internal_mmc_register_handler("mmc", "/dev/mmc2.boot0.barebox",
+					       BBU_HANDLER_FLAG_DEFAULT);
+
+	return 0;
+}
+device_initcall(warp7_devices_init);
diff --git a/arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg b/arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg
new file mode 100644
index 000000000..a3389218d
--- /dev/null
+++ b/arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg
@@ -0,0 +1,81 @@
+/*
+ * Copyright (C) 2016 NXP Semiconductors
+ *
+ * SPDX-License-Identifier:	GPL-2.0
+ *
+ * Refer docs/README.imxmage for more details about how-to configure
+ * and create imximage boot image
+ *
+ * The syntax is taken as close as possible with the kwbimage
+ */
+
+soc imx7
+loadaddr 0x80000000
+dcdofs 0x400
+
+wm 32 0x30340004 0x4F400005
+
+wm 32 0x30391000 0x00000002
+wm 32 0x307a0000 0x03040008
+wm 32 0x307a0064 0x00200038
+wm 32 0x307a0490 0x00000001
+wm 32 0x307a00d0 0x00350001
+wm 32 0x307a00dc 0x00c3000a
+wm 32 0x307a00e0 0x00010000
+wm 32 0x307a00e4 0x00110006
+wm 32 0x307a00f4 0x0000033f
+wm 32 0x307a0100 0x0a0e110b
+wm 32 0x307a0104 0x00020211
+wm 32 0x307a0108 0x03060708
+wm 32 0x307a010c 0x00a0500c
+wm 32 0x307a0110 0x05020307
+wm 32 0x307a0114 0x02020404
+wm 32 0x307a0118 0x02020003
+wm 32 0x307a011c 0x00000202
+wm 32 0x307a0120 0x00000202
+
+wm 32 0x307a0180 0x00600018
+wm 32 0x307a0184 0x00e00100
+wm 32 0x307a0190 0x02098205
+wm 32 0x307a0194 0x00060303
+wm 32 0x307a01a0 0x80400003
+wm 32 0x307a01a4 0x00100020
+wm 32 0x307a01a8 0x80100004
+
+wm 32 0x307a0200 0x00000015
+wm 32 0x307a0204 0x00161616
+wm 32 0x307a0210 0x00000f0f
+wm 32 0x307a0214 0x04040404
+wm 32 0x307a0218 0x0f0f0404
+
+wm 32 0x307a0240 0x06000600
+wm 32 0x307a0244 0x00000000
+wm 32 0x30391000 0x00000000
+wm 32 0x30790000 0x17421e40
+wm 32 0x30790004 0x10210100
+wm 32 0x30790008 0x00010000
+wm 32 0x30790010 0x0007080c
+wm 32 0x307900b0 0x1010007e
+
+wm 32 0x3079001C 0x01010000
+wm 32 0x3079009c 0x00000d6e
+
+wm 32 0x30790030 0x06060606
+wm 32 0x30790020 0x0a0a0a0a
+wm 32 0x30790050 0x01000008
+wm 32 0x30790050 0x00000008
+wm 32 0x30790018 0x0000000f
+wm 32 0x307900c0 0x0e487304
+wm 32 0x307900c0 0x0e4c7304
+wm 32 0x307900c0 0x0e4c7306
+wm 32 0x307900c0 0x0e4c7304
+
+check 32 while_any_bit_clear 0x307900c4 0x1
+
+wm 32 0x307900c0 0x0e487304
+
+wm 32 0x30384130 0x00000000
+wm 32 0x30340020 0x00000178
+wm 32 0x30384130 0x00000002
+
+check 32 while_any_bit_clear 0x307a0004 0x1
diff --git a/arch/arm/boards/element14-warp7/lowlevel.c b/arch/arm/boards/element14-warp7/lowlevel.c
new file mode 100644
index 000000000..98d8b6436
--- /dev/null
+++ b/arch/arm/boards/element14-warp7/lowlevel.c
@@ -0,0 +1,48 @@
+#define DEBUG
+#include <io.h>
+#include <common.h>
+#include <linux/sizes.h>
+#include <mach/generic.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/debug_ll.h>
+#include <asm/cache.h>
+
+extern char __dtb_imx7s_warp_start[];
+
+static noinline void warp7_start(void)
+{
+	void __iomem *iomuxbase = IOMEM(MX7_IOMUX_BASE_ADDR);
+	void __iomem *uart = IOMEM(MX7_UART1_BASE_ADDR);
+	void __iomem *ccmbase = IOMEM(MX7_CCM_BASE_ADDR);
+	void *fdt;
+
+	writel(0x3, ccmbase + 0x4000 + 16 * 148 + 0x8);
+	writel(0x10000000, ccmbase + 0x8000 + 128 * 95);
+	writel(0x3, ccmbase + 0x4000 + 16 * 148 + 0x4);
+	writel(0x0, iomuxbase + 0x128);
+	writel(0x0, iomuxbase + 0x12c);
+
+	imx7_uart_setup(uart);
+
+	pbl_set_putc(imx_uart_putc, uart);
+
+	pr_debug("Element14 i.MX7 Warp\n");
+
+	fdt = __dtb_imx7s_warp_start - get_runtime_offset();
+
+	barebox_arm_entry(0x80000000, SZ_512M, fdt);
+}
+
+ENTRY_FUNCTION(start_imx7s_element14_warp7, r0, r1, r2)
+{
+	imx7_cpu_lowlevel_init();
+
+	arm_early_mmu_cache_invalidate();
+
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
+	warp7_start();
+}
\ No newline at end of file
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 8ba99577e..6b2fa34f2 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -79,6 +79,7 @@ pbl-dtb-$(CONFIG_MACH_UDOO) += imx6q-udoo.dtb.o
 pbl-dtb-$(CONFIG_MACH_USI_TOPKICK) += kirkwood-topkick-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_VARISCITE_MX6) += imx6q-var-custom.dtb.o
 pbl-dtb-$(CONFIG_MACH_VSCOM_BALTOS) += am335x-baltos-minimal.dtb.o
+pbl-dtb-$(CONFIG_MACH_WARP7) += imx7s-warp.dtb.o
 pbl-dtb-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
diff --git a/arch/arm/dts/imx7s-warp.dts b/arch/arm/dts/imx7s-warp.dts
new file mode 100644
index 000000000..8741c1384
--- /dev/null
+++ b/arch/arm/dts/imx7s-warp.dts
@@ -0,0 +1,45 @@
+/*
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include <arm/imx7s-warp.dts>
+#include "imx7s.dtsi"
+
+/ {
+	chosen {
+		stdout-path = &uart1;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &bareboxenv;
+		};
+	};
+
+	memory {
+		device_type = "memory";
+		reg = <0x80000000 0x20000000>;
+	};
+};
+
+&usdhc3 {
+	boot0-partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		barebox@0 {
+			label = "barebox";
+			reg = <0x0 0x300000>;
+		};
+
+		bareboxenv: bareboxenv@300000 {
+			label = "bareboxenv";
+			reg = <0x300000 0x0>;
+		};
+	};
+};
\ No newline at end of file
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index fd1ecb6bb..f371ee075 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -39,6 +39,7 @@ config ARCH_TEXT_BASE
 	default 0x4fc00000 if MACH_UDOO
 	default 0x4fc00000 if MACH_VARISCITE_MX6
 	default 0x4fc00000 if MACH_PHYTEC_SOM_IMX6
+	default 0x9fc00000 if MACH_WARP7
 
 config ARCH_IMX_IMXIMAGE
 	bool
@@ -350,6 +351,10 @@ config MACH_CM_FX6
 	bool "CM FX6"
 	select ARCH_IMX6
 
+config MACH_WARP7
+	bool "NXP i.MX7: element 14 WaRP7 Board"
+	select ARCH_IMX7
+
 config MACH_VF610_TWR
 	bool "Freescale VF610 Tower Board"
 	select ARCH_VF610
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 3b911ec13..08c804888 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -409,6 +409,11 @@ CFG_start_imx6dl_eltec_hipercam.pblx.imximg = $(board)/eltec-hipercam/flash-head
 FILE_barebox-eltec-hipercam.img = start_imx6dl_eltec_hipercam.pblx.imximg
 image-$(CONFIG_MACH_ELTEC_HIPERCAM) += barebox-eltec-hipercam.img
 
+pblx-$(CONFIG_MACH_WARP7) += start_imx7s_element14_warp7
+CFG_start_imx7s_element14_warp7.pblx.imximg = $(board)/element14-warp7/flash-header-mx7-warp.imxcfg
+FILE_barebox-element14-imx7s-warp7.img = start_imx7s_element14_warp7.pblx.imximg
+image-$(CONFIG_MACH_WARP7) += barebox-element14-imx7s-warp7.img
+
 pblx-$(CONFIG_MACH_VF610_TWR) += start_vf610_twr
 CFG_start_vf610_twr.pblx.imximg = $(board)/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
 FILE_barebox-vf610-twr.img = start_vf610_twr.pblx.imximg
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
