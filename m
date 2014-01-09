Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Gmn-0007rE-8T
 for barebox@lists.infradead.org; Thu, 09 Jan 2014 14:40:45 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu,  9 Jan 2014 15:40:07 +0100
Message-Id: <1389278408-13112-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: i.MX53: dts: move QSB pmic to own file
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

There are two versions of the i.MX53 LOCO:
	- the MCIMX53-START board
	- the MCIMX53-START-R board

The MCIMX53-START-R has a mc34708 pmic and is otherwise the similar to the
MCIMX53-START. To prepare for the START-R, move all common nodes to a new
	imx53-qsb-common.dtsi
and remove everything but the board name and pmic from the imx53-qsb.dts.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/dts/imx53-qsb-common.dtsi | 225 +++++++++++++++++++++++++++++++++++++
 arch/arm/dts/imx53-qsb.dts         | 210 +---------------------------------
 2 files changed, 226 insertions(+), 209 deletions(-)
 create mode 100644 arch/arm/dts/imx53-qsb-common.dtsi

diff --git a/arch/arm/dts/imx53-qsb-common.dtsi b/arch/arm/dts/imx53-qsb-common.dtsi
new file mode 100644
index 0000000..4ecb3ec
--- /dev/null
+++ b/arch/arm/dts/imx53-qsb-common.dtsi
@@ -0,0 +1,225 @@
+/*
+ * Copyright 2011 Freescale Semiconductor, Inc.
+ * Copyright 2011 Linaro Ltd.
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
+#include "imx53.dtsi"
+
+/ {
+	chosen {
+		linux,stdout-path = "/soc/aips@50000000/serial@53fbc000";
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &esdhc1, "partname:barebox-environment";
+		};
+	};
+
+	display@di0 {
+		compatible = "fsl,imx-parallel-display";
+		crtcs = <&ipu 0>;
+		interface-pix-fmt = "rgb565";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ipu_disp0_1>;
+		status = "disabled";
+		display-timings {
+			claawvga {
+				native-mode;
+				clock-frequency = <27000000>;
+				hactive = <800>;
+				vactive = <480>;
+				hback-porch = <40>;
+				hfront-porch = <60>;
+				vback-porch = <10>;
+				vfront-porch = <10>;
+				hsync-len = <20>;
+				vsync-len = <10>;
+				hsync-active = <0>;
+				vsync-active = <0>;
+				de-active = <1>;
+				pixelclk-active = <0>;
+			};
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		power {
+			label = "Power Button";
+			gpios = <&gpio1 8 0>;
+			linux,code = <116>; /* KEY_POWER */
+			gpio-key,wakeup;
+		};
+
+		volume-up {
+			label = "Volume Up";
+			gpios = <&gpio2 14 0>;
+			linux,code = <115>; /* KEY_VOLUMEUP */
+		};
+
+		volume-down {
+			label = "Volume Down";
+			gpios = <&gpio2 15 0>;
+			linux,code = <114>; /* KEY_VOLUMEDOWN */
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&led_pin_gpio7_7>;
+
+		user {
+			label = "Heartbeat";
+			gpios = <&gpio7 7 0>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	regulators {
+		compatible = "simple-bus";
+
+		reg_3p2v: 3p2v {
+			compatible = "regulator-fixed";
+			regulator-name = "3P2V";
+			regulator-min-microvolt = <3200000>;
+			regulator-max-microvolt = <3200000>;
+			regulator-always-on;
+		};
+	};
+
+	sound {
+		compatible = "fsl,imx53-qsb-sgtl5000",
+			     "fsl,imx-audio-sgtl5000";
+		model = "imx53-qsb-sgtl5000";
+		ssi-controller = <&ssi2>;
+		audio-codec = <&sgtl5000>;
+		audio-routing =
+			"MIC_IN", "Mic Jack",
+			"Mic Jack", "Mic Bias",
+			"Headphone Jack", "HP_OUT";
+		mux-int-port = <2>;
+		mux-ext-port = <5>;
+	};
+};
+
+&esdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc1_1>;
+	cd-gpios = <&gpio3 13 0>;
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox-environment";
+		reg = <0x80000 0x20000>;
+	};
+};
+
+&ssi2 {
+	fsl,mode = "i2s-slave";
+	status = "okay";
+};
+
+&esdhc3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc3_1>;
+	cd-gpios = <&gpio3 11 0>;
+	wp-gpios = <&gpio3 12 0>;
+	status = "okay";
+};
+
+&iim {
+	barebox,provide-mac-address = <&fec 1 9>;
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	hog {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				MX53_PAD_GPIO_0__CCM_SSI_EXT1_CLK 0x80000000
+				MX53_PAD_GPIO_8__GPIO1_8          0x80000000
+				MX53_PAD_PATA_DATA14__GPIO2_14    0x80000000
+				MX53_PAD_PATA_DATA15__GPIO2_15    0x80000000
+				MX53_PAD_EIM_DA11__GPIO3_11       0x80000000
+				MX53_PAD_EIM_DA12__GPIO3_12       0x80000000
+				MX53_PAD_EIM_DA13__GPIO3_13       0x80000000
+				MX53_PAD_PATA_DA_0__GPIO7_6       0x80000000
+				MX53_PAD_GPIO_16__GPIO7_11        0x80000000
+			>;
+		};
+
+		led_pin_gpio7_7: led_gpio7_7@0 {
+			fsl,pins = <
+				MX53_PAD_PATA_DA_1__GPIO7_7 0x80000000
+			>;
+		};
+	};
+
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1_1>;
+	status = "okay";
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2_1>;
+	status = "okay";
+
+	sgtl5000: codec@0a {
+		compatible = "fsl,sgtl5000";
+		reg = <0x0a>;
+		VDDA-supply = <&reg_3p2v>;
+		VDDIO-supply = <&reg_3p2v>;
+		clocks = <&clks 150>;
+	};
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1_1>;
+	status = "okay";
+
+	accelerometer: mma8450@1c {
+		compatible = "fsl,mma8450";
+		reg = <0x1c>;
+	};
+};
+
+&audmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux_1>;
+	status = "okay";
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec_1>;
+	phy-mode = "rmii";
+	phy-reset-gpios = <&gpio7 6 0>;
+	status = "okay";
+};
+
+&usbh1 {
+       status = "okay";
+};
+
+&usbotg {
+       status = "okay";
+};
diff --git a/arch/arm/dts/imx53-qsb.dts b/arch/arm/dts/imx53-qsb.dts
index f988ca9..dc3860d 100644
--- a/arch/arm/dts/imx53-qsb.dts
+++ b/arch/arm/dts/imx53-qsb.dts
@@ -10,200 +10,14 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
-/dts-v1/;
-#include "imx53.dtsi"
+#include "imx53-qsb-common.dtsi"
 
 / {
 	model = "Freescale i.MX53 Quick Start Board";
 	compatible = "fsl,imx53-qsb", "fsl,imx53";
-
-	chosen {
-		linux,stdout-path = "/soc/aips@50000000/serial@53fbc000";
-
-		environment@0 {
-			compatible = "barebox,environment";
-			device-path = &esdhc1, "partname:barebox-environment";
-		};
-	};
-
-	display@di0 {
-		compatible = "fsl,imx-parallel-display";
-		crtcs = <&ipu 0>;
-		interface-pix-fmt = "rgb565";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_ipu_disp0_1>;
-		status = "disabled";
-		display-timings {
-			claawvga {
-				native-mode;
-				clock-frequency = <27000000>;
-				hactive = <800>;
-				vactive = <480>;
-				hback-porch = <40>;
-				hfront-porch = <60>;
-				vback-porch = <10>;
-				vfront-porch = <10>;
-				hsync-len = <20>;
-				vsync-len = <10>;
-				hsync-active = <0>;
-				vsync-active = <0>;
-				de-active = <1>;
-				pixelclk-active = <0>;
-			};
-		};
-	};
-
-	gpio-keys {
-		compatible = "gpio-keys";
-
-		power {
-			label = "Power Button";
-			gpios = <&gpio1 8 0>;
-			linux,code = <116>; /* KEY_POWER */
-			gpio-key,wakeup;
-		};
-
-		volume-up {
-			label = "Volume Up";
-			gpios = <&gpio2 14 0>;
-			linux,code = <115>; /* KEY_VOLUMEUP */
-		};
-
-		volume-down {
-			label = "Volume Down";
-			gpios = <&gpio2 15 0>;
-			linux,code = <114>; /* KEY_VOLUMEDOWN */
-		};
-	};
-
-	leds {
-		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&led_pin_gpio7_7>;
-
-		user {
-			label = "Heartbeat";
-			gpios = <&gpio7 7 0>;
-			linux,default-trigger = "heartbeat";
-		};
-	};
-
-	regulators {
-		compatible = "simple-bus";
-
-		reg_3p2v: 3p2v {
-			compatible = "regulator-fixed";
-			regulator-name = "3P2V";
-			regulator-min-microvolt = <3200000>;
-			regulator-max-microvolt = <3200000>;
-			regulator-always-on;
-		};
-	};
-
-	sound {
-		compatible = "fsl,imx53-qsb-sgtl5000",
-			     "fsl,imx-audio-sgtl5000";
-		model = "imx53-qsb-sgtl5000";
-		ssi-controller = <&ssi2>;
-		audio-codec = <&sgtl5000>;
-		audio-routing =
-			"MIC_IN", "Mic Jack",
-			"Mic Jack", "Mic Bias",
-			"Headphone Jack", "HP_OUT";
-		mux-int-port = <2>;
-		mux-ext-port = <5>;
-	};
-};
-
-&esdhc1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_esdhc1_1>;
-	cd-gpios = <&gpio3 13 0>;
-	status = "okay";
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	partition@0 {
-		label = "barebox-environment";
-		reg = <0x80000 0x20000>;
-	};
-};
-
-&ssi2 {
-	fsl,mode = "i2s-slave";
-	status = "okay";
-};
-
-&esdhc3 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_esdhc3_1>;
-	cd-gpios = <&gpio3 11 0>;
-	wp-gpios = <&gpio3 12 0>;
-	status = "okay";
-};
-
-&iim {
-	barebox,provide-mac-address = <&fec 1 9>;
-};
-
-&iomuxc {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_hog>;
-
-	hog {
-		pinctrl_hog: hoggrp {
-			fsl,pins = <
-				MX53_PAD_GPIO_0__CCM_SSI_EXT1_CLK 0x80000000
-				MX53_PAD_GPIO_8__GPIO1_8          0x80000000
-				MX53_PAD_PATA_DATA14__GPIO2_14    0x80000000
-				MX53_PAD_PATA_DATA15__GPIO2_15    0x80000000
-				MX53_PAD_EIM_DA11__GPIO3_11       0x80000000
-				MX53_PAD_EIM_DA12__GPIO3_12       0x80000000
-				MX53_PAD_EIM_DA13__GPIO3_13       0x80000000
-				MX53_PAD_PATA_DA_0__GPIO7_6       0x80000000
-				MX53_PAD_GPIO_16__GPIO7_11        0x80000000
-			>;
-		};
-
-		led_pin_gpio7_7: led_gpio7_7@0 {
-			fsl,pins = <
-				MX53_PAD_PATA_DA_1__GPIO7_7 0x80000000
-			>;
-		};
-	};
-
-};
-
-&uart1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart1_1>;
-	status = "okay";
-};
-
-&i2c2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c2_1>;
-	status = "okay";
-
-	sgtl5000: codec@0a {
-		compatible = "fsl,sgtl5000";
-		reg = <0x0a>;
-		VDDA-supply = <&reg_3p2v>;
-		VDDIO-supply = <&reg_3p2v>;
-		clocks = <&clks 150>;
-	};
 };
 
 &i2c1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c1_1>;
-	status = "okay";
-
-	accelerometer: mma8450@1c {
-		compatible = "fsl,mma8450";
-		reg = <0x1c>;
-	};
-
 	pmic: dialog@48 {
 		compatible = "dlg,da9053-aa", "dlg,da9052";
 		reg = <0x48>;
@@ -298,25 +112,3 @@
 		};
 	};
 };
-
-&audmux {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_audmux_1>;
-	status = "okay";
-};
-
-&fec {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_fec_1>;
-	phy-mode = "rmii";
-	phy-reset-gpios = <&gpio7 6 0>;
-	status = "okay";
-};
-
-&usbh1 {
-       status = "okay";
-};
-
-&usbotg {
-       status = "okay";
-};
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
