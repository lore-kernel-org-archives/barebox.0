Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0bEI-0007hs-Jl
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 18:18:21 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1W0b96-0002i2-Lo
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 19:12:56 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  7 Jan 2014 19:12:48 +0100
Message-Id: <1389118376-1740-2-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 02/10] ARM: imx6q: update sabrelite DT
To: barebox@lists.infradead.org

From: Lucas Stach <dev@lynxeye.de>

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/imx6q-sabrelite.dts | 157 +++++++++++++++++++++++++++------------
 1 file changed, 111 insertions(+), 46 deletions(-)

diff --git a/arch/arm/dts/imx6q-sabrelite.dts b/arch/arm/dts/imx6q-sabrelite.dts
index fd3ffa9..5ef994d 100644
--- a/arch/arm/dts/imx6q-sabrelite.dts
+++ b/arch/arm/dts/imx6q-sabrelite.dts
@@ -32,25 +32,30 @@
 
 	regulators {
 		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
 
-		reg_2p5v: 2p5v {
+		reg_2p5v: regulator@0 {
 			compatible = "regulator-fixed";
+			reg = <0>;
 			regulator-name = "2P5V";
 			regulator-min-microvolt = <2500000>;
 			regulator-max-microvolt = <2500000>;
 			regulator-always-on;
 		};
 
-		reg_3p3v: 3p3v {
+		reg_3p3v: regulator@1 {
 			compatible = "regulator-fixed";
+			reg = <1>;
 			regulator-name = "3P3V";
 			regulator-min-microvolt = <3300000>;
 			regulator-max-microvolt = <3300000>;
 			regulator-always-on;
 		};
 
-		reg_usb_otg_vbus: usb_otg_vbus {
+		reg_usb_otg_vbus: regulator@2 {
 			compatible = "regulator-fixed";
+			reg = <2>;
 			regulator-name = "usb_otg_vbus";
 			regulator-min-microvolt = <5000000>;
 			regulator-max-microvolt = <5000000>;
@@ -74,17 +79,24 @@
 	};
 };
 
+&audmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux>;
+	status = "okay";
+};
+
 &ecspi1 {
 	fsl,spi-num-chipselects = <1>;
 	cs-gpios = <&gpio3 19 0>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_ecspi1_1>;
+	pinctrl-0 = <&pinctrl_ecspi1>;
 	status = "okay";
 
 	flash: m25p80@0 {
 		compatible = "sst,sst25vf016b", "m25p80";
 		spi-max-frequency = <20000000>;
 		reg = <0>;
+		
 		#address-cells = <1>;
 		#size-cells = <1>;
 
@@ -100,16 +112,34 @@
 	};
 };
 
-&ssi1 {
-	fsl,mode = "i2s-slave";
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet>;
+	phy-mode = "rgmii";
+	phy-reset-gpios = <&gpio3 23 0>;
 	status = "okay";
 };
 
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	codec: sgtl5000@0a {
+		compatible = "fsl,sgtl5000";
+		reg = <0x0a>;
+		clocks = <&clks 201>;
+		VDDA-supply = <&reg_2p5v>;
+		VDDIO-supply = <&reg_3p3v>;
+	};
+};
+
 &iomuxc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_hog>;
 
-	hog {
+	imx6q-sabrelite {
 		pinctrl_hog: hoggrp {
 			fsl,pins = <
 				MX6QDL_PAD_NANDF_D6__GPIO2_IO06 0x80000000
@@ -122,6 +152,63 @@
 				MX6QDL_PAD_GPIO_0__CCM_CLKO1    0x80000000
 			>;
 		};
+
+		pinctrl_audmux: audmuxgrp {
+			fsl,pins = <MX6QDL_AUDMUX_PINGRP1>;
+		};
+
+		pinctrl_ecspi1: ecspi1grp {
+			fsl,pins = <MX6QDL_ECSPI1_PINGRP1>;
+		};
+
+		pinctrl_enet: enetgrp {
+			fsl,pins = <MX6QDL_ENET_PINGRP1>;
+		};
+
+		pinctrl_i2c1: i2c1grp {
+			fsl,pins = <MX6QDL_I2C1_PINGRP1>;
+		};
+
+		pinctrl_uart2: uart2grp {
+			fsl,pins = <MX6QDL_UART2_PINGRP1>;
+		};
+
+		pinctrl_usbotg: usbotggrp {
+			fsl,pins = <MX6QDL_USBOTG_PINGRP1>;
+		};
+
+		pinctrl_usdhc3: usdhc3grp {
+			fsl,pins = <MX6QDL_USDHC3_PINGRP_D4>;
+		};
+
+		pinctrl_usdhc4: usdhc4grp {
+			fsl,pins = <MX6QDL_USDHC4_PINGRP_D4>;
+		};
+	};
+};
+
+&ldb {
+	status = "okay";
+
+	lvds-channel@0 {
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
 	};
 };
 
@@ -129,13 +216,18 @@
 	barebox,provide-mac-address = <&fec 0x620>;
 };
 
-&usbotg {
-	vbus-supply = <&reg_usb_otg_vbus>;
+&sata {
+	status = "okay";
+};
+
+&ssi1 {
+	fsl,mode = "i2s-slave";
+	status = "okay";
+};
+
+&uart2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usbotg_1>;
-	disable-over-current;
-	phy-mode = "utmi";
-	dr_mode = "host";
+	pinctrl-0 = <&pinctrl_uart2>;
 	status = "okay";
 };
 
@@ -145,17 +237,17 @@
 	status = "okay";
 };
 
-&fec {
+&usbotg {
+	vbus-supply = <&reg_usb_otg_vbus>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_enet_1>;
-	phy-mode = "rgmii";
-	phy-reset-gpios = <&gpio3 23 0>;
+	pinctrl-0 = <&pinctrl_usbotg>;
+	disable-over-current;
 	status = "okay";
 };
 
 &usdhc3 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc3_2>;
+	pinctrl-0 = <&pinctrl_usdhc3>;
 	cd-gpios = <&gpio7 0 0>;
 	wp-gpios = <&gpio7 1 0>;
 	vmmc-supply = <&reg_3p3v>;
@@ -164,36 +256,9 @@
 
 &usdhc4 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc4_2>;
+	pinctrl-0 = <&pinctrl_usdhc4>;
 	cd-gpios = <&gpio2 6 0>;
 	wp-gpios = <&gpio2 7 0>;
 	vmmc-supply = <&reg_3p3v>;
 	status = "okay";
 };
-
-&audmux {
-	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_audmux_1>;
-};
-
-&uart2 {
-	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart2_1>;
-};
-
-&i2c1 {
-	status = "okay";
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c1_1>;
-
-	codec: sgtl5000@0a {
-		compatible = "fsl,sgtl5000";
-		reg = <0x0a>;
-		clocks = <&clks 169>;
-		VDDA-supply = <&reg_2p5v>;
-		VDDIO-supply = <&reg_3p3v>;
-	};
-};
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
