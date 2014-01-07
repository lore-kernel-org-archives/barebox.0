Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0bEd-0007iX-S7
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 18:18:40 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1W0b96-0002i2-Mm
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 19:12:56 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  7 Jan 2014 19:12:49 +0100
Message-Id: <1389118376-1740-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1389118376-1740-1-git-send-email-l.stach@pengutronix.de>
References: <1389118376-1740-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 03/10] ARM: imx6: update SabreSD DTs
To: barebox@lists.infradead.org

From: Lucas Stach <dev@lynxeye.de>

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/imx6q-sabresd.dts    |  20 +---
 arch/arm/dts/imx6qdl-sabresd.dtsi | 231 +++++++++++++++++++++++++++++++++++++-
 2 files changed, 228 insertions(+), 23 deletions(-)

diff --git a/arch/arm/dts/imx6q-sabresd.dts b/arch/arm/dts/imx6q-sabresd.dts
index 021b924..efe0e59 100644
--- a/arch/arm/dts/imx6q-sabresd.dts
+++ b/arch/arm/dts/imx6q-sabresd.dts
@@ -20,24 +20,10 @@
 	compatible = "fsl,imx6q-sabresd", "fsl,imx6q";
 
 	chosen {
-		linux,stdout-path = "/soc/aips-bus@02000000/spba-bus@02000000/serial@02020000";
+		linux,stdout-path = &uart1;
 	};
 };
 
-&iomuxc {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_hog>;
-
-	hog {
-		pinctrl_hog: hoggrp {
-			fsl,pins = <
-				MX6QDL_PAD_GPIO_4__GPIO1_IO04   0x80000000
-				MX6QDL_PAD_GPIO_5__GPIO1_IO05   0x80000000
-				MX6QDL_PAD_NANDF_D0__GPIO2_IO00 0x80000000
-				MX6QDL_PAD_NANDF_D1__GPIO2_IO01 0x80000000
-				MX6QDL_PAD_NANDF_D2__GPIO2_IO02 0x80000000
-				MX6QDL_PAD_NANDF_D3__GPIO2_IO03 0x80000000
-			>;
-		};
-	};
+&sata {
+	status = "okay";
 };
diff --git a/arch/arm/dts/imx6qdl-sabresd.dtsi b/arch/arm/dts/imx6qdl-sabresd.dtsi
index 0d32278..b64611c 100644
--- a/arch/arm/dts/imx6qdl-sabresd.dtsi
+++ b/arch/arm/dts/imx6qdl-sabresd.dtsi
@@ -17,15 +17,36 @@
 
 	regulators {
 		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
 
-		reg_usb_otg_vbus: usb_otg_vbus {
+		reg_usb_otg_vbus: regulator@0 {
 			compatible = "regulator-fixed";
+			reg = <0>;
 			regulator-name = "usb_otg_vbus";
 			regulator-min-microvolt = <5000000>;
 			regulator-max-microvolt = <5000000>;
 			gpio = <&gpio3 22 0>;
 			enable-active-high;
 		};
+
+		reg_usb_h1_vbus: regulator@1 {
+			compatible = "regulator-fixed";
+			reg = <1>;
+			regulator-name = "usb_h1_vbus";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			gpio = <&gpio1 29 0>;
+			enable-active-high;
+		};
+
+		reg_audio: regulator@2 {
+			compatible = "regulator-fixed";
+			reg = <2>;
+			regulator-name = "wm8962-supply";
+			gpio = <&gpio4 10 0>;
+			enable-active-high;
+		};
 	};
 
 	gpio-keys {
@@ -34,49 +55,246 @@
 		volume-up {
 			label = "Volume Up";
 			gpios = <&gpio1 4 0>;
+			gpio-key,wakeup;
 			linux,code = <115>; /* KEY_VOLUMEUP */
 		};
 
 		volume-down {
 			label = "Volume Down";
 			gpios = <&gpio1 5 0>;
+			gpio-key,wakeup;
 			linux,code = <114>; /* KEY_VOLUMEDOWN */
 		};
 	};
+
+	sound {
+		compatible = "fsl,imx6q-sabresd-wm8962",
+			   "fsl,imx-audio-wm8962";
+		model = "wm8962-audio";
+		ssi-controller = <&ssi2>;
+		audio-codec = <&codec>;
+		audio-routing =
+			"Headphone Jack", "HPOUTL",
+			"Headphone Jack", "HPOUTR",
+			"Ext Spk", "SPKOUTL",
+			"Ext Spk", "SPKOUTR",
+			"MICBIAS", "AMIC",
+			"IN3R", "MICBIAS",
+			"DMIC", "MICBIAS",
+			"DMICDAT", "DMIC";
+		mux-int-port = <2>;
+		mux-ext-port = <3>;
+	};
+
+	backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm1 0 5000000>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <7>;
+		status = "okay";
+	};
+};
+
+&audmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux>;
+	status = "okay";
+};
+
+&ecspi1 {
+	fsl,spi-num-chipselects = <1>;
+	cs-gpios = <&gpio4 9 0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	status = "okay";
+
+	flash: m25p80@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "st,m25p32";
+		spi-max-frequency = <20000000>;
+		reg = <0>;
+	};
 };
 
 &fec {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_enet_1>;
+	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rgmii";
+	phy-reset-gpios = <&gpio1 25 0>;
+	status = "okay";
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	codec: wm8962@1a {
+		compatible = "wlf,wm8962";
+		reg = <0x1a>;
+		clocks = <&clks 201>;
+		DCVDD-supply = <&reg_audio>;
+		DBVDD-supply = <&reg_audio>;
+		AVDD-supply = <&reg_audio>;
+		CPVDD-supply = <&reg_audio>;
+		MICVDD-supply = <&reg_audio>;
+		PLLVDD-supply = <&reg_audio>;
+		SPKVDD1-supply = <&reg_audio>;
+		SPKVDD2-supply = <&reg_audio>;
+		gpio-cfg = <
+			0x0000 /* 0:Default */
+			0x0000 /* 1:Default */
+			0x0013 /* 2:FN_DMICCLK */
+			0x0000 /* 3:Default */
+			0x8014 /* 4:FN_DMICCDAT */
+			0x0000 /* 5:Default */
+		>;
+	};
+};
+
+&i2c3 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+
+	egalax_ts@04 {
+		compatible = "eeti,egalax_ts";
+		reg = <0x04>;
+		interrupt-parent = <&gpio6>;
+		interrupts = <7 2>;
+		wakeup-gpios = <&gpio6 7 0>;
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx6qdl-sabresd {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_4__GPIO1_IO04   0x80000000
+				MX6QDL_PAD_GPIO_5__GPIO1_IO05   0x80000000
+				MX6QDL_PAD_NANDF_D0__GPIO2_IO00 0x80000000
+				MX6QDL_PAD_NANDF_D1__GPIO2_IO01 0x80000000
+				MX6QDL_PAD_NANDF_D2__GPIO2_IO02 0x80000000
+				MX6QDL_PAD_NANDF_D3__GPIO2_IO03 0x80000000
+				MX6QDL_PAD_GPIO_0__CCM_CLKO1    0x130b0
+				MX6QDL_PAD_NANDF_CLE__GPIO6_IO07 0x80000000
+				MX6QDL_PAD_ENET_TXD1__GPIO1_IO29 0x80000000
+				MX6QDL_PAD_EIM_D22__GPIO3_IO22  0x80000000
+				MX6QDL_PAD_ENET_CRS_DV__GPIO1_IO25 0x80000000
+			>;
+		};
+
+		pinctrl_audmux: audmuxgrp {
+			fsl,pins = <MX6QDL_AUDMUX_PINGRP2>;
+		};
+
+		pinctrl_ecspi1: ecspi1grp {
+			fsl,pins = <MX6QDL_ECSPI1_PINGRP2>;
+		};
+
+		pinctrl_enet: enetgrp {
+			fsl,pins = <MX6QDL_ENET_PINGRP1>;
+		};
+
+		pinctrl_i2c1: i2c1grp {
+			fsl,pins = <MX6QDL_I2C1_PINGRP2>;
+		};
+
+		pinctrl_i2c3: i2c3grp {
+			fsl,pins = <MX6QDL_I2C3_PINGRP2>;
+		};
+
+		pinctrl_pwm1: pwm1grp {
+			fsl,pins = <MX6QDL_PWM1_PINGRP1>;
+		};
+
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <MX6QDL_UART1_PINGRP1>;
+		};
+
+		pinctrl_usbotg: usbotggrp {
+			fsl,pins = <MX6QDL_USBOTG_PINGRP2>;
+		};
+
+		pinctrl_usdhc2: usdhc2grp {
+			fsl,pins = <MX6QDL_USDHC2_PINGRP_D8>;
+		};
+
+		pinctrl_usdhc3: usdhc3grp {
+			fsl,pins = <MX6QDL_USDHC3_PINGRP_D8>;
+		};
+	};
+};
+
+&ldb {
 	status = "okay";
+
+	lvds-channel@1 {
+		fsl,data-mapping = "spwg";
+		fsl,data-width = <18>;
+		status = "okay";
+
+		display-timings {
+			native-mode = <&timing0>;
+			timing0: hsd100pxn1 {
+				clock-frequency = <65000000>;
+				hactive = <1024>;
+				vactive = <768>;
+				hback-porch = <220>;
+				hfront-porch = <40>;
+				vback-porch = <21>;
+				vfront-porch = <7>;
+				hsync-len = <60>;
+				vsync-len = <10>;
+			};
+		};
+	};
 };
 
 &ocotp1 {
 	barebox,provide-mac-address = <&fec 0x620>;
 };
 
+&pwm1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm1>;
+	status = "okay";
+};
+
+&ssi2 {
+	fsl,mode = "i2s-slave";
+	status = "okay";
+};
+
 &uart1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart1_1>;
+	pinctrl-0 = <&pinctrl_uart1>;
 	status = "okay";
 };
 
 &usbh1 {
+	vbus-supply = <&reg_usb_h1_vbus>;
 	status = "okay";
 };
 
 &usbotg {
 	vbus-supply = <&reg_usb_otg_vbus>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usbotg_2>;
+	pinctrl-0 = <&pinctrl_usbotg>;
 	disable-over-current;
 	status = "okay";
 };
 
 &usdhc2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc2_1>;
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	bus-width = <8>;
 	cd-gpios = <&gpio2 2 0>;
 	wp-gpios = <&gpio2 3 0>;
 	status = "okay";
@@ -84,7 +302,8 @@
 
 &usdhc3 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc3_1>;
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	bus-width = <8>;
 	cd-gpios = <&gpio2 0 0>;
 	wp-gpios = <&gpio2 1 0>;
 	status = "okay";
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
