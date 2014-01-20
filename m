Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W5Epu-0007Ec-Rc
 for barebox@lists.infradead.org; Mon, 20 Jan 2014 13:24:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Jan 2014 14:23:54 +0100
Message-Id: <1390224236-11032-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1390224236-11032-1-git-send-email-s.hauer@pengutronix.de>
References: <1390224236-11032-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: dts: Add TQ tqma53/mba53 dts files
To: barebox@lists.infradead.org

Directly taken from Linux-3.13.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/Makefile          |   3 +-
 arch/arm/dts/imx53-mba53.dts   | 236 +++++++++++++++++++++++++++++++++++++++++
 arch/arm/dts/imx53-tqma53.dtsi | 183 ++++++++++++++++++++++++++++++++
 3 files changed, 421 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/imx53-mba53.dts
 create mode 100644 arch/arm/dts/imx53-tqma53.dtsi

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 142b3e2..189394b 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -6,7 +6,8 @@ dtb-$(CONFIG_ARCH_IMX27) += imx27-phytec-phycard-s-rdk.dtb \
 	imx27-phytec-phycard-s-som.dtb
 dtb-$(CONFIG_ARCH_IMX51) += imx51-babbage.dtb \
 	imx51-genesi-efika-sb.dtb
-dtb-$(CONFIG_ARCH_IMX53) += imx53-qsb.dtb \
+dtb-$(CONFIG_ARCH_IMX53) += imx53-mba53.dtb \
+	imx53-qsb.dtb \
 	imx53-qsrb.dtb \
 	imx53-voipac-bsb.dtb
 dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
diff --git a/arch/arm/dts/imx53-mba53.dts b/arch/arm/dts/imx53-mba53.dts
new file mode 100644
index 0000000..a630902
--- /dev/null
+++ b/arch/arm/dts/imx53-mba53.dts
@@ -0,0 +1,236 @@
+/*
+ * Copyright 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright 2012 Steffen Trumtrar <s.trumtrar@pengutronix.de>, Pengutronix
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/dts-v1/;
+#include "imx53-tqma53.dtsi"
+
+/ {
+	model = "TQ MBa53 starter kit";
+	compatible = "tq,mba53", "tq,tqma53", "fsl,imx53";
+
+	reg_backlight: fixed@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "lcd-supply";
+		gpio = <&gpio2 5 0>;
+		startup-delay-us = <5000>;
+		enable-active-low;
+	};
+
+	backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm2 0 50000>;
+		brightness-levels = <0 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100>;
+		default-brightness-level = <10>;
+		enable-gpios = <&gpio7 7 0>;
+		power-supply = <&reg_backlight>;
+	};
+
+	disp1: display@disp1 {
+		compatible = "fsl,imx-parallel-display";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_disp1_1>;
+		crtcs = <&ipu 1>;
+		interface-pix-fmt = "rgb24";
+		status = "disabled";
+	};
+
+	reg_3p2v: 3p2v {
+		compatible = "regulator-fixed";
+		regulator-name = "3P2V";
+		regulator-min-microvolt = <3200000>;
+		regulator-max-microvolt = <3200000>;
+		regulator-always-on;
+	};
+
+	sound {
+		compatible = "tq,imx53-mba53-sgtl5000",
+			     "fsl,imx-audio-sgtl5000";
+		model = "imx53-mba53-sgtl5000";
+		ssi-controller = <&ssi2>;
+		audio-codec = <&codec>;
+		audio-routing =
+			"MIC_IN", "Mic Jack",
+			"Mic Jack", "Mic Bias",
+			"Headphone Jack", "HP_OUT";
+		mux-int-port = <2>;
+		mux-ext-port = <5>;
+	};
+};
+
+&ldb {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lvds1_1>;
+	status = "disabled";
+};
+
+&iomuxc {
+	lvds1 {
+		pinctrl_lvds1_1: lvds1-grp1 {
+			fsl,pins = <
+				MX53_PAD_LVDS0_TX3_P__LDB_LVDS0_TX3 0x80000000
+				MX53_PAD_LVDS0_CLK_P__LDB_LVDS0_CLK 0x80000000
+				MX53_PAD_LVDS0_TX2_P__LDB_LVDS0_TX2 0x80000000
+				MX53_PAD_LVDS0_TX1_P__LDB_LVDS0_TX1 0x80000000
+				MX53_PAD_LVDS0_TX0_P__LDB_LVDS0_TX0 0x80000000
+			>;
+		};
+
+		pinctrl_lvds1_2: lvds1-grp2 {
+			fsl,pins = <
+				MX53_PAD_LVDS1_TX3_P__LDB_LVDS1_TX3 0x80000000
+				MX53_PAD_LVDS1_TX2_P__LDB_LVDS1_TX2 0x80000000
+				MX53_PAD_LVDS1_CLK_P__LDB_LVDS1_CLK 0x80000000
+				MX53_PAD_LVDS1_TX1_P__LDB_LVDS1_TX1 0x80000000
+				MX53_PAD_LVDS1_TX0_P__LDB_LVDS1_TX0 0x80000000
+			>;
+		};
+	};
+
+	disp1 {
+		pinctrl_disp1_1: disp1-grp1 {
+			fsl,pins = <
+				MX53_PAD_EIM_A16__IPU_DI1_DISP_CLK 0x80000000 /* DISP1_CLK */
+				MX53_PAD_EIM_DA10__IPU_DI1_PIN15   0x80000000 /* DISP1_DRDY */
+				MX53_PAD_EIM_D23__IPU_DI1_PIN2     0x80000000 /* DISP1_HSYNC */
+				MX53_PAD_EIM_EB3__IPU_DI1_PIN3     0x80000000 /* DISP1_VSYNC */
+				MX53_PAD_EIM_D26__IPU_DISP1_DAT_22 0x80000000
+				MX53_PAD_EIM_D27__IPU_DISP1_DAT_23 0x80000000
+				MX53_PAD_EIM_D30__IPU_DISP1_DAT_21 0x80000000
+				MX53_PAD_EIM_D31__IPU_DISP1_DAT_20 0x80000000
+				MX53_PAD_EIM_A24__IPU_DISP1_DAT_19 0x80000000
+				MX53_PAD_EIM_A23__IPU_DISP1_DAT_18 0x80000000
+				MX53_PAD_EIM_A22__IPU_DISP1_DAT_17 0x80000000
+				MX53_PAD_EIM_A21__IPU_DISP1_DAT_16 0x80000000
+				MX53_PAD_EIM_A20__IPU_DISP1_DAT_15 0x80000000
+				MX53_PAD_EIM_A19__IPU_DISP1_DAT_14 0x80000000
+				MX53_PAD_EIM_A18__IPU_DISP1_DAT_13 0x80000000
+				MX53_PAD_EIM_A17__IPU_DISP1_DAT_12 0x80000000
+				MX53_PAD_EIM_EB0__IPU_DISP1_DAT_11 0x80000000
+				MX53_PAD_EIM_EB1__IPU_DISP1_DAT_10 0x80000000
+				MX53_PAD_EIM_DA0__IPU_DISP1_DAT_9  0x80000000
+				MX53_PAD_EIM_DA1__IPU_DISP1_DAT_8  0x80000000
+				MX53_PAD_EIM_DA2__IPU_DISP1_DAT_7  0x80000000
+				MX53_PAD_EIM_DA3__IPU_DISP1_DAT_6  0x80000000
+				MX53_PAD_EIM_DA4__IPU_DISP1_DAT_5  0x80000000
+				MX53_PAD_EIM_DA5__IPU_DISP1_DAT_4  0x80000000
+				MX53_PAD_EIM_DA6__IPU_DISP1_DAT_3  0x80000000
+				MX53_PAD_EIM_DA7__IPU_DISP1_DAT_2  0x80000000
+				MX53_PAD_EIM_DA8__IPU_DISP1_DAT_1  0x80000000
+				MX53_PAD_EIM_DA9__IPU_DISP1_DAT_0  0x80000000
+			>;
+		};
+	};
+
+	tve {
+		pinctrl_vga_sync_1: vgasync-grp1 {
+			fsl,pins = <
+				/* VGA_VSYNC, HSYNC with max drive strength */
+				MX53_PAD_EIM_CS1__IPU_DI1_PIN6	   0xe6
+				MX53_PAD_EIM_DA15__IPU_DI1_PIN4	   0xe6
+			>;
+		};
+	};
+};
+
+&cspi {
+	status = "okay";
+};
+
+&audmux {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux_1>;
+};
+
+&i2c2 {
+	codec: sgtl5000@a {
+		compatible = "fsl,sgtl5000";
+		reg = <0x0a>;
+		clocks = <&clks 150>;
+		VDDA-supply = <&reg_3p2v>;
+		VDDIO-supply = <&reg_3p2v>;
+	};
+
+	expander: pca9554@20 {
+		compatible = "pca9554";
+		reg = <0x20>;
+		interrupts = <109>;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+
+	sensor2: lm75@49 {
+		compatible = "lm75";
+		reg = <0x49>;
+	};
+};
+
+&fec {
+	phy-reset-gpios = <&gpio7 6 0>;
+	status = "okay";
+};
+
+&esdhc2 {
+	status = "okay";
+};
+
+&uart3 {
+	status = "okay";
+};
+
+&ecspi1 {
+	status = "okay";
+};
+
+&usbotg {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usbh1 {
+	status = "okay";
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&ssi2 {
+	fsl,mode = "i2s-slave";
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&can1 {
+	status = "okay";
+};
+
+&can2 {
+	status = "okay";
+};
+
+&i2c3 {
+	status = "okay";
+};
+
+&tve {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_vga_sync_1>;
+	ddc = <&i2c3>;
+	fsl,tve-mode = "vga";
+	fsl,hsync-pin = <4>;
+	fsl,vsync-pin = <6>;
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx53-tqma53.dtsi b/arch/arm/dts/imx53-tqma53.dtsi
new file mode 100644
index 0000000..abd72af
--- /dev/null
+++ b/arch/arm/dts/imx53-tqma53.dtsi
@@ -0,0 +1,183 @@
+/*
+ * Copyright 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright 2012 Steffen Trumtrar <s.trumtrar@pengutronix.de>, Pengutronix
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include "imx53.dtsi"
+
+/ {
+	model = "TQ TQMa53";
+	compatible = "tq,tqma53", "fsl,imx53";
+
+	memory {
+		reg = <0x70000000 0x40000000>; /* Up to 1GiB */
+	};
+
+	regulators {
+		compatible = "simple-bus";
+
+		reg_3p3v: 3p3v {
+			compatible = "regulator-fixed";
+			regulator-name = "3P3V";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-always-on;
+		};
+	};
+};
+
+&esdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc2_1>,
+		    <&pinctrl_tqma53_esdhc2_2>;
+	vmmc-supply = <&reg_3p3v>;
+	wp-gpios = <&gpio1 2 0>;
+	cd-gpios = <&gpio1 4 0>;
+	status = "disabled";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3_2>;
+	status = "disabled";
+};
+
+&ecspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1_1>;
+	fsl,spi-num-chipselects = <4>;
+	cs-gpios = <&gpio2 30 0>, <&gpio3 19 0>,
+		   <&gpio3 24 0>, <&gpio3 25 0>;
+	status = "disabled";
+};
+
+&esdhc3 { /* EMMC */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc3_1>;
+	vmmc-supply = <&reg_3p3v>;
+	non-removable;
+	bus-width = <8>;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	esdhc2_2 {
+		pinctrl_tqma53_esdhc2_2: esdhc2-tqma53-grp2 {
+			fsl,pins = <
+				MX53_PAD_GPIO_4__GPIO1_4	0x80000000 /* SD2_CD */
+				MX53_PAD_GPIO_2__GPIO1_2	0x80000000 /* SD2_WP */
+			>;
+		};
+	};
+
+	i2s {
+		pinctrl_i2s_1: i2s-grp1 {
+			fsl,pins = <
+				 MX53_PAD_KEY_COL0__AUDMUX_AUD5_TXC  0x80000000 /* I2S_SCLK */
+				 MX53_PAD_KEY_ROW0__AUDMUX_AUD5_TXD  0x80000000 /* I2S_DOUT */
+				 MX53_PAD_KEY_COL1__AUDMUX_AUD5_TXFS 0x80000000 /* I2S_LRCLK */
+				 MX53_PAD_KEY_ROW1__AUDMUX_AUD5_RXD  0x80000000 /* I2S_DIN */
+			>;
+		};
+	};
+
+	hog {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				 MX53_PAD_GPIO_0__CCM_SSI_EXT1_CLK 0x80000000 /* SSI_MCLK */
+				 MX53_PAD_PATA_DA_1__GPIO7_7     0x80000000 /* LCD_BLT_EN */
+				 MX53_PAD_PATA_DA_2__GPIO7_8     0x80000000 /* LCD_RESET */
+				 MX53_PAD_PATA_DATA5__GPIO2_5    0x80000000 /* LCD_POWER */
+				 MX53_PAD_PATA_DATA6__GPIO2_6    0x80000000 /* PMIC_INT */
+				 MX53_PAD_PATA_DATA14__GPIO2_14  0x80000000 /* CSI_RST */
+				 MX53_PAD_PATA_DATA15__GPIO2_15  0x80000000 /* CSI_PWDN */
+				 MX53_PAD_GPIO_19__GPIO4_5 	 0x80000000 /* #SYSTEM_DOWN */
+				 MX53_PAD_GPIO_3__GPIO1_3        0x80000000
+				 MX53_PAD_PATA_DA_0__GPIO7_6	 0x80000000 /* #PHY_RESET */
+				 MX53_PAD_GPIO_1__PWM2_PWMO	 0x80000000 /* LCD_CONTRAST */
+			>;
+		};
+	};
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1_2>;
+	fsl,uart-has-rtscts;
+	status = "disabled";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2_1>;
+	status = "disabled";
+};
+
+&can1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_can1_2>;
+	status = "disabled";
+};
+
+&can2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_can2_1>;
+	status = "disabled";
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3_1>;
+	status = "disabled";
+};
+
+&cspi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_cspi_1>;
+	fsl,spi-num-chipselects = <3>;
+	cs-gpios = <&gpio1 18 0>, <&gpio1 19 0>,
+		   <&gpio1 21 0>;
+	status = "disabled";
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2_1>;
+	status = "okay";
+
+	pmic: mc34708@8 {
+		compatible = "fsl,mc34708";
+		reg = <0x8>;
+		fsl,mc13xxx-uses-rtc;
+		interrupt-parent = <&gpio2>;
+		interrupts = <6 4>; /* PATA_DATA6, active high */
+	};
+
+	sensor1: lm75@48 {
+		compatible = "lm75";
+		reg = <0x48>;
+	};
+
+	eeprom: 24c64@50 {
+		compatible = "at,24c64";
+		pagesize = <32>;
+		reg = <0x50>;
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec_1>;
+	phy-mode = "rmii";
+	status = "disabled";
+};
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
