Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUaV8-0003Gc-LT
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 15:21:34 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dUaUm-0004uG-4Z
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 17:21:08 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 10 Jul 2017 17:21:08 +0200
Message-Id: <20170710152108.23601-1-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: imx: phyCORE i.MX7 on phyBOARD-Zeta support
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

This adds preliminary support for the phyCORE i.MX7 module on a
phyBOARD-Zeta baseboard. The DTs will likely change in the future
when PHYTEC finalizes their BSP.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
lst: Rebased and fixed for upstream pinfunc changes. Tested PSCI
kernel booting.
---
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/phytec-phycore-imx7/Makefile       |   2 +
 arch/arm/boards/phytec-phycore-imx7/board.c        |  42 ++++
 .../flash-header-phytec-phycore-imx7.imxcfg        |  76 ++++++
 arch/arm/boards/phytec-phycore-imx7/lowlevel.c     |  48 ++++
 arch/arm/configs/imx_v7_defconfig                  |   4 +-
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx7d-pba-c-09.dtsi                   | 272 +++++++++++++++++++++
 arch/arm/dts/imx7d-peb-av-02.dtsi                  | 104 ++++++++
 arch/arm/dts/imx7d-peb-eval-02.dtsi                | 130 ++++++++++
 arch/arm/dts/imx7d-phyboard-zeta.dts               | 144 +++++++++++
 arch/arm/dts/imx7d-phycore-som.dtsi                | 272 +++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |   4 +
 images/Makefile.imx                                |   5 +
 14 files changed, 1104 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/phytec-phycore-imx7/Makefile
 create mode 100644 arch/arm/boards/phytec-phycore-imx7/board.c
 create mode 100644 arch/arm/boards/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
 create mode 100644 arch/arm/boards/phytec-phycore-imx7/lowlevel.c
 create mode 100644 arch/arm/dts/imx7d-pba-c-09.dtsi
 create mode 100644 arch/arm/dts/imx7d-peb-av-02.dtsi
 create mode 100644 arch/arm/dts/imx7d-peb-eval-02.dtsi
 create mode 100644 arch/arm/dts/imx7d-phyboard-zeta.dts
 create mode 100644 arch/arm/dts/imx7d-phycore-som.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 9bbdd684fa6c..c6840a633c0d 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -89,6 +89,7 @@ obj-$(CONFIG_MACH_PCM043)			+= phytec-phycore-imx35/
 obj-$(CONFIG_MACH_PCM049)			+= phytec-phycore-omap4460/
 obj-$(CONFIG_MACH_PHYTEC_SOM_AM335X)		+= phytec-som-am335x/
 obj-$(CONFIG_MACH_PHYTEC_SOM_IMX6)		+= phytec-som-imx6/
+obj-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7)		+= phytec-phycore-imx7/
 obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
 obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6)	+= plathome-openblocks-a6/
 obj-$(CONFIG_MACH_PM9261)			+= pm9261/
diff --git a/arch/arm/boards/phytec-phycore-imx7/Makefile b/arch/arm/boards/phytec-phycore-imx7/Makefile
new file mode 100644
index 000000000000..01c7a259e9a5
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-imx7/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/phytec-phycore-imx7/board.c b/arch/arm/boards/phytec-phycore-imx7/board.c
new file mode 100644
index 000000000000..d4451602b047
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-imx7/board.c
@@ -0,0 +1,42 @@
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
+#include <asm/psci.h>
+#include <io.h>
+#include <mach/imx7-regs.h>
+#include <serial/imx-uart.h>
+#include <asm/secure.h>
+
+static int warp7_devices_init(void)
+{
+	if (!of_machine_is_compatible("phytec,imx7d-phycore-som"))
+		return 0;
+
+	imx6_bbu_internal_mmc_register_handler("mmc", "/dev/mmc2.boot0.barebox",
+					       BBU_HANDLER_FLAG_DEFAULT);
+
+	psci_set_putc(imx_uart_putc, IOMEM(MX7_UART5_BASE_ADDR));
+
+	return 0;
+}
+mem_initcall(warp7_devices_init);
diff --git a/arch/arm/boards/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg b/arch/arm/boards/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
new file mode 100644
index 000000000000..b1608dd9c730
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
@@ -0,0 +1,76 @@
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
+/* Clear then set bit30 to ensure exit from DDR retention */
+wm 32 0x30360388 0x40000000
+wm 32 0x30360384 0x40000000
+
+wm 32 0x30391000 0x00000002
+wm 32 0x307a0000 0x01040001
+wm 32 0x307a01a0 0x80400003
+wm 32 0x307a01a4 0x00100020
+wm 32 0x307a01a8 0x80100004
+wm 32 0x307a0064 0x00400046
+wm 32 0x307a0490 0x00000001
+wm 32 0x307a00d0 0x00020083
+wm 32 0x307a00d4 0x00690000
+wm 32 0x307a00dc 0x09300004
+wm 32 0x307a00e0 0x04080000
+wm 32 0x307a00e4 0x00100004
+wm 32 0x307a00f4 0x0000033f
+wm 32 0x307a0100 0x09081109
+wm 32 0x307a0104 0x0007020d
+wm 32 0x307a0108 0x03040407
+wm 32 0x307a010c 0x00002006
+wm 32 0x307a0110 0x04020205
+wm 32 0x307a0114 0x03030202
+wm 32 0x307a0120 0x00000803
+wm 32 0x307a0180 0x00800020
+wm 32 0x307a0184 0x02000100
+wm 32 0x307a0190 0x02098204
+wm 32 0x307a0194 0x00030303
+wm 32 0x307a0200 0x00000016
+wm 32 0x307a0204 0x00171717
+wm 32 0x307a0214 0x04040404
+wm 32 0x307a0218 0x0f040404
+wm 32 0x307a0240 0x06000604
+wm 32 0x307a0244 0x00000001
+wm 32 0x30391000 0x00000000
+wm 32 0x30790000 0x17420f40
+wm 32 0x30790004 0x10210100
+wm 32 0x30790010 0x00060807
+wm 32 0x307900b0 0x1010007e
+wm 32 0x3079009c 0x00000d6e
+wm 32 0x30790020 0x08080808
+wm 32 0x30790030 0x08080808
+wm 32 0x30790050 0x01000010
+wm 32 0x30790050 0x00000010
+
+wm 32 0x307900c0 0x0e407304
+wm 32 0x307900c0 0x0e447304
+wm 32 0x307900c0 0x0e447306
+
+check 32 while_any_bit_clear 0x307900c4 0x1
+
+wm 32 0x307900c0 0x0e447304
+wm 32 0x307900c0 0x0e407304
+
+wm 32 0x30384130 0x00000000
+wm 32 0x30340020 0x00000178
+wm 32 0x30384130 0x00000002
+wm 32 0x30790018 0x0000000f
+
+check 32 while_any_bit_clear 0x307a0004 0x1
diff --git a/arch/arm/boards/phytec-phycore-imx7/lowlevel.c b/arch/arm/boards/phytec-phycore-imx7/lowlevel.c
new file mode 100644
index 000000000000..ee2d7ae553f2
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-imx7/lowlevel.c
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
+extern char __dtb_imx7d_phyboard_zeta_start[];
+
+static noinline void phytec_phycore_imx7_start(void)
+{
+	void __iomem *iomuxbase = IOMEM(0x302c0000);
+	void __iomem *uart = IOMEM(MX7_UART5_BASE_ADDR);
+	void __iomem *ccmbase = IOMEM(MX7_CCM_BASE_ADDR);
+	void *fdt;
+
+	writel(0x3, ccmbase + 0x4000 + 16 * 152 + 0x8);
+	writel(0x10000000, ccmbase + 0x8000 + 128 * 99);
+	writel(0x3, ccmbase + 0x4000 + 16 * 152 + 0x4);
+	writel(0x3, iomuxbase + 0x18);
+	writel(0x3, iomuxbase + 0x1c);
+
+	imx7_uart_setup(uart);
+
+	pbl_set_putc(imx_uart_putc, uart);
+
+	pr_debug("Phytec phyCORE i.MX7\n");
+
+	fdt = __dtb_imx7d_phyboard_zeta_start - get_runtime_offset();
+
+	barebox_arm_entry(0x80000000, SZ_512M, fdt);
+}
+
+ENTRY_FUNCTION(start_phytec_phycore_imx7, r0, r1, r2)
+{
+	imx7_cpu_lowlevel_init();
+
+	arm_early_mmu_cache_invalidate();
+
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
+	phytec_phycore_imx7_start();
+}
\ No newline at end of file
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 7bbd93240d62..62d623806cb3 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -1,7 +1,7 @@
 CONFIG_ARCH_IMX=y
 CONFIG_IMX_MULTI_BOARDS=y
-CONFIG_MACH_EFIKA_MX_SMARTBOOK=y
 CONFIG_MACH_KINDLE_MX50=y
+CONFIG_MACH_EFIKA_MX_SMARTBOOK=y
 CONFIG_MACH_EMBEDSKY_E9=y
 CONFIG_MACH_FREESCALE_MX51_PDK=y
 CONFIG_MACH_CCMX53=y
@@ -30,12 +30,14 @@ CONFIG_MACH_UDOO=y
 CONFIG_MACH_VARISCITE_MX6=y
 CONFIG_MACH_GW_VENTANA=y
 CONFIG_MACH_CM_FX6=y
+CONFIG_MACH_PHYTEC_PHYCORE_IMX7=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_IMX_OCOTP=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
+CONFIG_ARM_PSCI=y
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x0
 CONFIG_MALLOC_SIZE=0x0
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index d8abe452b40b..41777ef21ec0 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -55,6 +55,7 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
 				imx6dl-phytec-phycore-som-emmc.dtb.o \
 				imx6ul-phytec-phycore-som.dtb.o \
 				imx6ull-phytec-phycore-som.dtb.o
+pbl-dtb-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += imx7d-phyboard-zeta.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
diff --git a/arch/arm/dts/imx7d-pba-c-09.dtsi b/arch/arm/dts/imx7d-pba-c-09.dtsi
new file mode 100644
index 000000000000..c5e77a707290
--- /dev/null
+++ b/arch/arm/dts/imx7d-pba-c-09.dtsi
@@ -0,0 +1,272 @@
+/*
+ * Copyright (C) 2015 PHYTEC America, LLC
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+/ {
+	model = "Phytec i.MX7 phyBOARD-Zeta";
+	compatible = "phytec,imx7d-pba-c-09", "phytec,imx7d-phycore-som", "fsl,imx7d";
+
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reg_usb_otg1_vbus: regulator@0 {
+			compatible = "regulator-fixed";
+			reg = <0>;
+			regulator-name = "usb_otg1_vbus";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			gpio = <&gpio1 5 GPIO_ACTIVE_HIGH>;
+			enable-active-high;
+		};
+
+		reg_usb_otg2_vbus: regulator@1 {
+			compatible = "regulator-fixed";
+			reg = <1>;
+			regulator-name = "usb_otg2_vbus";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			gpio = <&gpio4 7 GPIO_ACTIVE_HIGH>;
+			enable-active-high;
+		};
+
+		/* Enable if R9 is populated. Conflicts with userbtn2 on PEB-EVAL-02 */
+		/*
+		reg_can1_3v3: regulator@2 {
+			compatible = "regulator-fixed";
+			reg = <2>;
+			regulator-name = "can1-3v3";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&gpio5 2 GPIO_ACTIVE_HIGH>;
+			enable-active-high;
+		};
+		*/
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog_1 &pinctrl_hog_2 &pinctrl_hog_lcd>;
+
+	pinctrl_hog_2: hoggrp-2 {
+		fsl,pins = <
+			MX7D_PAD_SD1_CD_B__GPIO5_IO0		0x59 /* SD1 CD */
+			MX7D_PAD_SD1_WP__GPIO5_IO1		0x59 /* PCIe Disable */
+			MX7D_PAD_SAI1_RX_BCLK__GPIO6_IO17	0x59 /* PCIe Reset */
+			MX7D_PAD_UART3_CTS_B__GPIO4_IO7		0x14 /* USB2 pwr */
+			MX7D_PAD_GPIO1_IO09__GPIO1_IO9 		0x59 /* ETH2 Int_N */
+			MX7D_PAD_EPDC_PWR_COM__GPIO2_IO30	0x59 /* ETH2 Reset_n */
+			MX7D_PAD_EPDC_DATA10__GPIO2_IO10	0x59 /* User Button */
+			MX7D_PAD_EPDC_DATA13__GPIO2_IO13	0x39 /* Boot Circuit Buffer Enable
+									5K pull-up  */
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX7D_PAD_SD1_CMD__SD1_CMD		0x59
+			MX7D_PAD_SD1_CLK__SD1_CLK		0x19
+			MX7D_PAD_SD1_DATA0__SD1_DATA0		0x59
+			MX7D_PAD_SD1_DATA1__SD1_DATA1		0x59
+			MX7D_PAD_SD1_DATA2__SD1_DATA2		0x59
+			MX7D_PAD_SD1_DATA3__SD1_DATA3		0x59
+		>;
+	};
+
+	pinctrl_flexcan1: flexcan1grp {
+		fsl,pins = <
+			MX7D_PAD_GPIO1_IO12__FLEXCAN1_RX	0x59
+			MX7D_PAD_GPIO1_IO13__FLEXCAN1_TX	0x59
+		>;
+	};
+
+	pinctrl_enet2: enet2grp {
+		fsl,pins = <
+			MX7D_PAD_EPDC_SDCE0__ENET2_RGMII_RX_CTL	0x5
+			MX7D_PAD_EPDC_SDCE1__ENET2_RGMII_RXC 	0x5
+			MX7D_PAD_EPDC_SDCLK__ENET2_RGMII_RD0	0x5
+			MX7D_PAD_EPDC_SDLE__ENET2_RGMII_RD1	0x5
+			MX7D_PAD_EPDC_SDOE__ENET2_RGMII_RD2	0x5
+			MX7D_PAD_EPDC_SDSHR__ENET2_RGMII_RD3	0x5
+			MX7D_PAD_EPDC_SDCE2__ENET2_RGMII_TD0	0x5
+			MX7D_PAD_EPDC_SDCE3__ENET2_RGMII_TD1	0x5
+			MX7D_PAD_EPDC_GDCLK__ENET2_RGMII_TD2	0x5
+			MX7D_PAD_EPDC_GDOE__ENET2_RGMII_TD3	0x5
+			MX7D_PAD_EPDC_GDRL__ENET2_RGMII_TX_CTL	0x5
+			MX7D_PAD_EPDC_GDSP__ENET2_RGMII_TXC	0x5
+		>;
+	};
+};
+
+&iomuxc_lpsr {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog_lpsr_1 &pinctrl_hog_lpsr_lcd>;
+
+	pinctrl_hog_lpsr_1: hoggrp-lpsr_1 {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO05__GPIO1_IO5	0x14 /* USB1 pwr */
+		>;
+	};
+
+	pinctrl_uart5: uart5grp {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO06__UART5_DCE_RX	0x79
+			MX7D_PAD_LPSR_GPIO1_IO07__UART5_DCE_TX	0x79
+		>;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO00__WDOD1_WDOG_B	0x74
+		>;
+	};
+};
+
+&uart5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart5>;
+	assigned-clocks = <&clks IMX7D_UART5_ROOT_SRC>;
+	assigned-clock-parents = <&clks IMX7D_OSC_24M_CLK>;
+	status = "disabled";
+};
+
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	cd-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
+	no-1-8-v; /* Fixed voltage supply, doesn't support vsel */
+	enable-sdio-wakeup;
+	keep-power-in-suspend;
+	status = "disabled";
+};
+
+&flexcan1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+	/* Enable the following if SD1_RESET_B is used to enable/disable CAN xceiver
+	 *  xceiver-supply = <&reg_can1_3v3>;
+	 */
+	status = "disabled";
+};
+
+&fec2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet2>;
+	assigned-clocks = <&clks IMX7D_ENET2_TIME_ROOT_SRC>,
+			<&clks IMX7D_ENET2_TIME_ROOT_CLK>;
+	assigned-clock-parents = <&clks IMX7D_PLL_ENET_MAIN_100M_CLK>;
+	assigned-clock-rates = <0>, <100000000>;
+	phy-mode = "rgmii";
+	phy-handle = <&ethphy1>;
+	fsl,magic-packet;
+	phy-reset-gpios = <&gpio2 30 GPIO_ACTIVE_LOW>;
+	status = "disabled";
+};
+
+/* same MDIO bus as PHY on phyCORE SOM */
+&mdio {
+	ethphy1: ethernet-phy@2 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		interrupt-parent = <&gpio1>;
+		interrupts = <9 0>;
+		reg = <2>;
+		rxdv-skew-ps = <0>;
+		txen-skew-ps = <0>;
+		rxd0-skew-ps = <0>;
+		rxd1-skew-ps = <0>;
+		rxd2-skew-ps = <0>;
+		rxd3-skew-ps = <0>;
+		rxc-skew-ps = <1860>;
+		txc-skew-ps = <1860>;
+	};
+};
+
+&usbotg1 {
+	vbus-supply = <&reg_usb_otg1_vbus>;
+	dr_mode = "host";
+	status = "disabled";
+};
+
+&usbotg2 {
+	vbus-supply = <&reg_usb_otg2_vbus>;
+	status = "disabled";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,wdog_b;
+};
+
+/* DTS pinmuxing and bindings for LCD adapter PEB-AV-02 */
+
+&iomuxc {
+	pinctrl_hog_lcd: hog_lcdgrp {
+		fsl,pins = <
+			MX7D_PAD_LCD_RESET__GPIO3_IO4		0x79
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX7D_PAD_I2C2_SCL__I2C2_SCL		0x4000007f
+			MX7D_PAD_I2C2_SDA__I2C2_SDA		0x4000007f
+		>;
+	};
+
+	pinctrl_edt_ts_irq: tsirqgrp {
+		fsl,pins = <
+			MX7D_PAD_EPDC_DATA14__GPIO2_IO14	0x59
+		>;
+	};
+};
+
+&iomuxc_lpsr {
+	pinctrl_pwm3: pwmgrp {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO03__PWM3_OUT	0x30
+		>;
+	};
+
+	pinctrl_hog_lpsr_lcd: hoggrp_lpsr_lcd {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO01__GPIO1_IO1	0x59
+		>;
+	};
+};
+
+&i2c2 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "disabled";
+
+	ft5406: ft5406@38 {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_edt_ts_irq>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <14 0>;
+		reset-gpios = <&gpio3 4 GPIO_ACTIVE_LOW>;
+		status = "disabled";
+	};
+};
+
+#include "imx7d-peb-av-02.dtsi"
+
+&pwm3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm3>;
+	status = "disabled";
+};
+
+&backlight {
+	pwms = <&pwm3 0 5000000>;
+	enable-gpios = <&gpio1 1 0>;
+	status = "disabled";
+};
diff --git a/arch/arm/dts/imx7d-peb-av-02.dtsi b/arch/arm/dts/imx7d-peb-av-02.dtsi
new file mode 100644
index 000000000000..dcf117c71a92
--- /dev/null
+++ b/arch/arm/dts/imx7d-peb-av-02.dtsi
@@ -0,0 +1,104 @@
+/*
+ * Copyright (C) 2015 PHYTEC America, LLC
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+/ {
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <6>;
+		power-supply = <&lcd_3v3>;
+		status = "disabled";
+	};
+
+	lcd_3v3: fixedregulator-lcd {
+		compatible = "regulator-fixed";
+		regulator-name = "lcd_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+	};
+};
+
+&iomuxc {
+	pinctrl_lcdif_ctrl: lcdifctrlgrp {
+		fsl,pins = <
+			MX7D_PAD_LCD_CLK__LCD_CLK	0x7e
+			MX7D_PAD_LCD_ENABLE__LCD_ENABLE	0x7e
+			MX7D_PAD_LCD_HSYNC__LCD_HSYNC	0x7e
+			MX7D_PAD_LCD_VSYNC__LCD_VSYNC	0x7e
+		>;
+	};
+
+	pinctrl_lcdif_dat: lcdifdatgrp {
+		fsl,pins = <
+			MX7D_PAD_LCD_DATA00__LCD_DATA0	0x7e
+			MX7D_PAD_LCD_DATA01__LCD_DATA1	0x7e
+			MX7D_PAD_LCD_DATA02__LCD_DATA2	0x7e
+			MX7D_PAD_LCD_DATA03__LCD_DATA3	0x7e
+			MX7D_PAD_LCD_DATA04__LCD_DATA4	0x7e
+			MX7D_PAD_LCD_DATA05__LCD_DATA5	0x7e
+			MX7D_PAD_LCD_DATA06__LCD_DATA6	0x7e
+			MX7D_PAD_LCD_DATA07__LCD_DATA7	0x7e
+			MX7D_PAD_LCD_DATA08__LCD_DATA8	0x7e
+			MX7D_PAD_LCD_DATA09__LCD_DATA9	0x7e
+			MX7D_PAD_LCD_DATA10__LCD_DATA10	0x7e
+			MX7D_PAD_LCD_DATA11__LCD_DATA11	0x7e
+			MX7D_PAD_LCD_DATA12__LCD_DATA12	0x7e
+			MX7D_PAD_LCD_DATA13__LCD_DATA13	0x7e
+			MX7D_PAD_LCD_DATA14__LCD_DATA14	0x7e
+			MX7D_PAD_LCD_DATA15__LCD_DATA15	0x7e
+			MX7D_PAD_LCD_DATA16__LCD_DATA16	0x7e
+			MX7D_PAD_LCD_DATA17__LCD_DATA17	0x7e
+			MX7D_PAD_LCD_DATA18__LCD_DATA18	0x7e
+			MX7D_PAD_LCD_DATA19__LCD_DATA19	0x7e
+			MX7D_PAD_LCD_DATA20__LCD_DATA20	0x7e
+			MX7D_PAD_LCD_DATA21__LCD_DATA21	0x7e
+			MX7D_PAD_LCD_DATA22__LCD_DATA22	0x7e
+			MX7D_PAD_LCD_DATA23__LCD_DATA23	0x7e
+		>;
+	};
+};
+
+&lcdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lcdif_dat
+		&pinctrl_lcdif_ctrl>;
+	display = <&display0>;
+	lcd-supply = <&lcd_3v3>;
+	status = "disabled";
+
+	display0: display {
+		bits-per-pixel = <32>;
+		bus-width = <24>;
+
+		display-timings {
+			native-mode = <&timing0>;
+			timing0: ETM0700G0DH6 {
+				clock-frequency = <33000000>;
+				hactive = <800>;
+				vactive = <480>;
+				hfront-porch = <40>;
+				hback-porch = <216>;
+				hsync-len = <128>;
+				vback-porch = <35>;
+				vfront-porch = <10>;
+				vsync-len = <2>;
+				hsync-active = <0>;
+				vsync-active = <0>;
+				de-active = <1>;
+				pixelclk-active = <1>;
+			};
+		};
+	};
+};
+
+&ft5406 {
+	compatible = "edt,edt-ft5406", "edt,edt-ft5x06";
+	reg = <0x38>;
+	status = "disabled";
+};
\ No newline at end of file
diff --git a/arch/arm/dts/imx7d-peb-eval-02.dtsi b/arch/arm/dts/imx7d-peb-eval-02.dtsi
new file mode 100644
index 000000000000..8bde5b13e702
--- /dev/null
+++ b/arch/arm/dts/imx7d-peb-eval-02.dtsi
@@ -0,0 +1,130 @@
+/*
+ * Copyright (C) 2015 PHYTEC America, LLC
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+/ {
+	phytec_leds: leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_leds_eval>;
+		status = "disabled";
+
+		led@0 {
+			label = "eval_led_1";
+			gpios = <&gpio2 8 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "gpio";
+			default-state = "on";
+		};
+
+		led@1 {
+			label = "eval_led_2";
+			gpios = <&gpio4 4 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "gpio";
+			default-state = "on";
+		};
+
+		led@2 {
+			label = "eval_led_3";
+			gpios = <&gpio2 15 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "gpio";
+			default-state = "on";
+		};
+	};
+
+	phytec_buttons: gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_btns_eval>;
+		status = "disabled";
+
+		userbtn@0 {
+			label = "eval_button_1";
+			gpios = <&gpio2 9 GPIO_ACTIVE_HIGH>;
+			linux,code = <0x100>;	/* BTN_MISC */
+		};
+		userbtn@1 {
+			label = "eval_button_2";
+			gpios = <&gpio4 5 GPIO_ACTIVE_HIGH>;
+			linux,code = <0x100>;   /* BTN_MISC */
+		};
+
+		userbtn@2 {
+			label = "eval_button_3";
+			gpios = <&gpio5 2 GPIO_ACTIVE_HIGH>;
+			linux,code = <0x100>;	/* BTN_MISC */
+		};
+	};
+};
+
+&iomuxc {
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <
+			MX7D_PAD_I2C4_SCL__I2C4_SCL		0x4000007f
+			MX7D_PAD_I2C4_SDA__I2C4_SDA		0x4000007f
+		>;
+	};
+
+	pinctrl_leds_eval: leds_evalgrp {
+		fsl,pins = <
+			MX7D_PAD_EPDC_DATA08__GPIO2_IO8		0x79	/* Labeled UART6_RX on schematic */
+			MX7D_PAD_UART3_RX_DATA__GPIO4_IO4	0x79
+			MX7D_PAD_EPDC_DATA15__GPIO2_IO15	0x79	/* Labeled EXP_CONN_MUX5 on schematic */
+		>;
+	};
+
+	pinctrl_btns_eval: btns_evalgrp {
+		fsl,pins = <
+			MX7D_PAD_EPDC_DATA09__GPIO2_IO9		0x79	/* Labeled UART6_TX on schematic */
+			MX7D_PAD_UART3_TX_DATA__GPIO4_IO5	0x79
+			MX7D_PAD_SD1_RESET_B__GPIO5_IO2		0x79	/* Labeled EXP_CONN_MUX3 on schematic */
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX7D_PAD_UART1_RX_DATA__UART1_DCE_RX	0x79
+			MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX	0x79
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX7D_PAD_UART2_RX_DATA__UART2_DCE_RX	0x79
+			MX7D_PAD_UART2_TX_DATA__UART2_DCE_TX	0x79
+		>;
+	};
+};
+
+&i2c4 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	status = "disabled";
+
+	i2c4_eeprom: eeprom@56 {
+		compatible = "onnn,24c32";
+		reg = <0x56>;
+		pagesize = <32>;
+		status = "disabled";
+	};
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	assigned-clocks = <&clks IMX7D_UART1_ROOT_SRC>;
+	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
+	status = "disabled";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	assigned-clocks = <&clks IMX7D_UART2_ROOT_SRC>;
+	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
+	status = "disabled";
+};
\ No newline at end of file
diff --git a/arch/arm/dts/imx7d-phyboard-zeta.dts b/arch/arm/dts/imx7d-phyboard-zeta.dts
new file mode 100644
index 000000000000..16cf12244f16
--- /dev/null
+++ b/arch/arm/dts/imx7d-phyboard-zeta.dts
@@ -0,0 +1,144 @@
+/*
+ * Copyright (C) 2015 PHYTEC America, LLC
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+/dts-v1/;
+
+#include "imx7d-phycore-som.dtsi"
+#include "imx7d-pba-c-09.dtsi"
+#include "imx7d-peb-eval-02.dtsi"
+
+#include "imx7s.dtsi"
+
+/ {
+	chosen {
+		stdout-path = &uart5;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &bareboxenv;
+		};
+	};
+
+	memory {
+		device_type = "memory";
+		reg = <0x80000000 0x40000000>;
+	};
+};
+
+/**** SOM - PCM-061 ****/
+
+&fec1 {
+	status = "okay";
+};
+
+/* eMMC */
+&usdhc3 {
+	status = "okay";
+
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
+
+&i2c_eeprom {
+	status = "okay";
+};
+
+&i2c_rtc {
+	status = "okay";
+};
+
+/**** Carrier Board - PBA-C-09 ****/
+
+&uart5 {
+	status = "okay";
+};
+
+&usdhc1 {
+	status = "okay";
+};
+
+&fec2 {
+	status = "okay";
+};
+
+/* Host mode */
+&usbotg1 {
+	status = "okay";
+};
+
+/* OTG mode */
+&usbotg2 {
+	status = "okay";
+};
+
+&flexcan1 {
+	status = "okay";
+};
+
+&wdog1 {
+	status = "okay";
+};
+
+/**** PEB-AV-02: touch controller ft5406, LCD and PWM backlight control ****/
+&i2c2 {
+	status = "okay";
+};
+
+&ft5406 {
+	status = "okay";
+};
+
+&lcdif {
+	status = "okay";
+};
+
+&pwm3 {
+	status = "okay";
+};
+
+&backlight {
+	status = "okay";
+};
+
+/**** Interfaces on PEB-EVAL-02 ****/
+
+&i2c4 {
+	status = "okay";
+};
+
+&i2c4_eeprom {
+	status = "okay";
+};
+
+&phytec_leds {
+	status = "okay";
+};
+
+&phytec_buttons {
+	status = "okay";
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
\ No newline at end of file
diff --git a/arch/arm/dts/imx7d-phycore-som.dtsi b/arch/arm/dts/imx7d-phycore-som.dtsi
new file mode 100644
index 000000000000..ea8c801f3852
--- /dev/null
+++ b/arch/arm/dts/imx7d-phycore-som.dtsi
@@ -0,0 +1,272 @@
+/*
+ * Copyright (C) 2015 PHYTEC America, LLC
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <dt-bindings/input/input.h>
+#include <arm/imx7d.dtsi>
+
+/ {
+	model = "Phytec i.MX7D phyCORE";
+	compatible = "phytec,imx7d-phycore-som", "fsl,imx7d";
+
+	memory {
+		reg = <0x80000000 0x80000000>;
+	};
+};
+
+&cpu0 {
+	arm-supply = <&sw1a_reg>;
+};
+
+&i2c1 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	pmic: pfuze3000@08 {
+		compatible = "fsl,pfuze3000";
+		reg = <0x08>;
+
+		regulators {
+			sw1a_reg: sw1a {
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <6250>;
+			};
+
+			/* use sw1c_reg to align with pfuze100/pfuze200 */
+			sw1c_reg: sw1b {
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1475000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <6250>;
+			};
+
+			sw2_reg: sw2 {
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <1850000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw3a_reg: sw3 {
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1650000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			swbst_reg: swbst {
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5150000>;
+			};
+
+			snvs_reg: vsnvs {
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vref_reg: vrefddr {
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vgen1_reg: vldo1 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen2_reg: vldo2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+				regulator-always-on;
+			};
+
+			vgen3_reg: vccsd {
+				regulator-min-microvolt = <2850000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen4_reg: v33 {
+				regulator-min-microvolt = <2850000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen5_reg: vldo3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen6_reg: vldo4 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+		};
+	};
+	i2c_eeprom: eeprom@50 {
+		compatible = "atmel,24c32";
+		pagesize = <32>;
+		reg = <0x50>;
+		status = "disabled";
+	};
+
+	i2c_rtc: rtc@68 {
+		compatible = "mc,rv4162";
+		reg=<0x68>;
+		status = "disabled";
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog_1>;
+
+	pinctrl_hog_1: hoggrp-1 {
+		fsl,pins = <
+			MX7D_PAD_GPIO1_IO08__SD1_VSELECT	0x59 /* PMIC VSELECT */
+			MX7D_PAD_EPDC_BDR0__GPIO2_IO28		0x59 /* ENET1_RESET_B */
+			MX7D_PAD_EPDC_BDR1__GPIO2_IO29		0x59 /* ENET1_INT_B */
+		>;
+	};
+
+	pinctrl_enet1: enet1grp {
+		fsl,pins = <
+			MX7D_PAD_GPIO1_IO10__ENET1_MDIO			0x7
+			MX7D_PAD_GPIO1_IO11__ENET1_MDC			0x7
+			MX7D_PAD_ENET1_RGMII_TXC__ENET1_RGMII_TXC	0x5
+			MX7D_PAD_ENET1_RGMII_TD0__ENET1_RGMII_TD0	0x5
+			MX7D_PAD_ENET1_RGMII_TD1__ENET1_RGMII_TD1	0x5
+			MX7D_PAD_ENET1_RGMII_TD2__ENET1_RGMII_TD2	0x5
+			MX7D_PAD_ENET1_RGMII_TD3__ENET1_RGMII_TD3	0x5
+			MX7D_PAD_ENET1_RGMII_TX_CTL__ENET1_RGMII_TX_CTL	0x5
+			MX7D_PAD_ENET1_RGMII_RXC__ENET1_RGMII_RXC	0x5
+			MX7D_PAD_ENET1_RGMII_RD0__ENET1_RGMII_RD0	0x5
+			MX7D_PAD_ENET1_RGMII_RD1__ENET1_RGMII_RD1	0x5
+			MX7D_PAD_ENET1_RGMII_RD2__ENET1_RGMII_RD2	0x5
+			MX7D_PAD_ENET1_RGMII_RD3__ENET1_RGMII_RD3	0x5
+			MX7D_PAD_ENET1_RGMII_RX_CTL__ENET1_RGMII_RX_CTL	0x5
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX7D_PAD_I2C1_SDA__I2C1_SDA	0x4000007f
+			MX7D_PAD_I2C1_SCL__I2C1_SCL	0x4000007f
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX7D_PAD_SD3_CMD__SD3_CMD	0x5d
+			MX7D_PAD_SD3_CLK__SD3_CLK	0x1d
+			MX7D_PAD_SD3_DATA0__SD3_DATA0	0x5d
+			MX7D_PAD_SD3_DATA1__SD3_DATA1	0x5d
+			MX7D_PAD_SD3_DATA2__SD3_DATA2	0x5d
+			MX7D_PAD_SD3_DATA3__SD3_DATA3	0x5d
+			MX7D_PAD_SD3_DATA4__SD3_DATA4	0x5d
+			MX7D_PAD_SD3_DATA5__SD3_DATA5	0x5d
+			MX7D_PAD_SD3_DATA6__SD3_DATA6	0x5d
+			MX7D_PAD_SD3_DATA7__SD3_DATA7	0x5d
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3grp_100mhz {
+		fsl,pins = <
+			MX7D_PAD_SD3_CMD__SD3_CMD	0x5e
+			MX7D_PAD_SD3_CLK__SD3_CLK	0x1e
+			MX7D_PAD_SD3_DATA0__SD3_DATA0	0x5e
+			MX7D_PAD_SD3_DATA1__SD3_DATA1	0x5e
+			MX7D_PAD_SD3_DATA2__SD3_DATA2	0x5e
+			MX7D_PAD_SD3_DATA3__SD3_DATA3	0x5e
+			MX7D_PAD_SD3_DATA4__SD3_DATA4	0x5e
+			MX7D_PAD_SD3_DATA5__SD3_DATA5	0x5e
+			MX7D_PAD_SD3_DATA6__SD3_DATA6	0x5e
+			MX7D_PAD_SD3_DATA7__SD3_DATA7	0x5e
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3grp_200mhz {
+		fsl,pins = <
+			MX7D_PAD_SD3_CMD__SD3_CMD	0x5f
+			MX7D_PAD_SD3_CLK__SD3_CLK	0x1f
+			MX7D_PAD_SD3_DATA0__SD3_DATA0	0x5f
+			MX7D_PAD_SD3_DATA1__SD3_DATA1	0x5f
+			MX7D_PAD_SD3_DATA2__SD3_DATA2	0x5f
+			MX7D_PAD_SD3_DATA3__SD3_DATA3	0x5f
+			MX7D_PAD_SD3_DATA4__SD3_DATA4	0x5f
+			MX7D_PAD_SD3_DATA5__SD3_DATA5	0x5f
+			MX7D_PAD_SD3_DATA6__SD3_DATA6	0x5f
+			MX7D_PAD_SD3_DATA7__SD3_DATA7	0x5f
+		>;
+	};
+
+	pinctrl_qspi1_1: qspi1grp_1 {
+		fsl,pins = <
+			MX7D_PAD_EPDC_DATA00__QSPI_A_DATA0	0x51
+			MX7D_PAD_EPDC_DATA01__QSPI_A_DATA1	0x51
+			MX7D_PAD_EPDC_DATA02__QSPI_A_DATA2	0x51
+			MX7D_PAD_EPDC_DATA03__QSPI_A_DATA3	0x51
+			MX7D_PAD_EPDC_DATA05__QSPI_A_SCLK	0x51
+			MX7D_PAD_EPDC_DATA06__QSPI_A_SS0_B	0x51
+		>;
+	};
+};
+
+&sdma {
+	status = "okay";
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet1>;
+	assigned-clocks = <&clks IMX7D_ENET1_TIME_ROOT_SRC>,
+			<&clks IMX7D_ENET1_TIME_ROOT_CLK>;
+	assigned-clock-parents = <&clks IMX7D_PLL_ENET_MAIN_100M_CLK>;
+	assigned-clock-rates = <0>, <100000000>;
+	phy-mode = "rgmii";
+	phy-handle = <&ethphy0>;
+	fsl,magic-packet;
+	phy-reset-gpios = <&gpio2 28 GPIO_ACTIVE_LOW>;
+	status = "disabled";
+
+	mdio: mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		/*ETH1 PHY on SOM, 25MHz crystal */
+		ethphy0: ethernet-phy@1 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			interrupt-parent = <&gpio2>;
+			interrupts = <29 0>;
+			reg = <1>;
+		};
+	};
+};
+
+&usdhc3 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	assigned-clocks = <&clks IMX7D_USDHC3_ROOT_CLK>;
+	assigned-clock-rates = <400000000>;
+	bus-width = <8>;
+	tuning-step = <2>;
+	non-removable;
+	status = "disabled";
+};
\ No newline at end of file
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 6110924af642..49149e334d43 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -395,6 +395,10 @@ config MACH_ZII_VF610_DEV
 	select ARCH_VF610
 	select CLKDEV_LOOKUP
 
+config MACH_PHYTEC_PHYCORE_IMX7
+	bool "Phytec phyCORE i.MX7"
+	select ARCH_IMX7
+
 endif
 
 # ----------------------------------------------------------
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 88d3e5e339ac..3e26667c52c1 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -465,6 +465,11 @@ CFG_start_imx7s_element14_warp7.pblx.imximg = $(board)/element14-warp7/flash-hea
 FILE_barebox-element14-imx7s-warp7.img = start_imx7s_element14_warp7.pblx.imximg
 image-$(CONFIG_MACH_WARP7) += barebox-element14-imx7s-warp7.img
 
+pblx-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += start_phytec_phycore_imx7
+CFG_start_phytec_phycore_imx7.pblx.imximg = $(board)/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
+FILE_barebox-phytec-phycore-imx7.img = start_phytec_phycore_imx7.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += barebox-phytec-phycore-imx7.img
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
