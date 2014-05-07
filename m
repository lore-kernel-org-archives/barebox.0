Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wi2OL-000156-1D
 for barebox@lists.infradead.org; Wed, 07 May 2014 14:00:15 +0000
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  7 May 2014 15:59:50 +0200
Message-Id: <1399471190-15639-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH v2] ARM: i.MX6: dts: edmqmx6: use new dts approach
To: barebox@lists.infradead.org
Cc: Silvio Fricke <silvio.fricke@gmail.com>

From: Silvio Fricke <silvio.fricke@gmail.com>

Signed-off-by: Silvio Fricke <silvio.fricke@gmail.com>
---
v2 (lst): rebased to current master
---
 arch/arm/dts/imx6q-dmo-edmqmx6.dts | 331 ++-----------------------------------
 1 file changed, 11 insertions(+), 320 deletions(-)

diff --git a/arch/arm/dts/imx6q-dmo-edmqmx6.dts b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
index f4f0bd6c14ba..071f5f5c5e48 100644
--- a/arch/arm/dts/imx6q-dmo-edmqmx6.dts
+++ b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
@@ -1,6 +1,7 @@
 /*
  * Copyright 2011 Freescale Semiconductor, Inc.
  * Copyright 2011 Linaro Ltd.
+ * Copyright 2013-2014 Data-Modul AG
  *
  * The code contained herein is licensed under the GNU General Public
  * License. You may obtain a copy of the GNU General Public License
@@ -9,16 +10,12 @@
  * http://www.opensource.org/licenses/gpl-license.html
  * http://www.gnu.org/copyleft/gpl.html
  */
-/dts-v1/;
 
-#include "imx6q.dtsi"
+#include <arm/imx6q-dmo-edmqmx6.dts>
 
 / {
-	model = "Data Modul eDM-QMX6 Board";
-	compatible = "dmo,imx6q-edmqmx6", "fsl,imx6q";
-
 	chosen {
-		linux,stdout-path = "/soc/aips-bus@02100000/serial@021e8000";
+		linux,stdout-path = &uart2;
 
 		environment-sd {
 			compatible = "barebox,environment";
@@ -38,60 +35,6 @@
 			status = "disabled";
 		};
 	};
-
-	aliases {
-		stmpe0 = &stmpe_1;
-		stmpe1 = &stmpe_2;
-		gpio7 = &stmpe_gpio_1;
-		gpio8 = &stmpe_gpio_2;
-	};
-
-	memory {
-		reg = <0x10000000 0x80000000>;
-	};
-
-	di0 {
-		compatible = "fsl,imx-parallel-display";
-		interface-pix-fmt = "rgb24";
-		crtcs = <&ipu1 0>;
-	};
-
-	regulators {
-		compatible = "simple-bus";
-
-		reg_2p5v: 2p5v {
-			compatible = "regulator-fixed";
-			regulator-name = "2P5V";
-			regulator-min-microvolt = <2500000>;
-			regulator-max-microvolt = <2500000>;
-			regulator-always-on;
-		};
-
-		reg_3p3v: 3p3v {
-			compatible = "regulator-fixed";
-			regulator-name = "3P3V";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-		};
-
-		reg_usb_otg_vbus: usb_otg_vbus {
-			compatible = "regulator-fixed";
-			regulator-name = "usb_otg_vbus";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			gpio = <&gpio7 12 0>;
-		};
-
-		reg_usb_host1: usb_host1_en {
-			compatible = "regulator-fixed";
-			regulator-name = "usb_host1_en";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			gpio = <&gpio3 31 0>;
-			enable-active-high;
-		};
-	};
 };
 
 &ecspi5 {
@@ -120,186 +63,7 @@
 	};
 };
 
-&fec {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_enet>;
-	phy-mode = "rgmii";
-	phy-reset-gpios = <&gpio3 23 0>;
-	status = "okay";
-};
-
-&i2c2 {
-	status = "okay";
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c2
-		     &pinctrl_stmpe_1_1
-		     &pinctrl_stmpe_2_1>;
-
-	stmpe_1: stmpe1601@40 {
-		compatible = "stmpe1601";
-		reg = <0x40>;
-		interrupts = <30 0>;
-		interrupt-parent = <&gpio3>;
-		stmpe_gpio_1: stmpe_gpio {
-			compatible = "st,stmpe-gpio";
-		};
-	};
-
-	stmpe_2: stmpe1601@44 {
-		compatible = "stmpe1601";
-		reg = <0x44>;
-		interrupts = <2 0>;
-		interrupt-parent = <&gpio5>;
-		stmpe_gpio_2: stmpe_gpio {
-			compatible = "st,stmpe-gpio";
-		};
-	};
-
-	temp1: ad7414@4c {
-		compatible = "ad7414";
-		reg = <0x4c>;
-	};
-
-	temp2: ad7414@4d {
-		compatible = "ad7414";
-		reg = <0x4d>;
-	};
-
-	rtc: m41t62@68 {
-		compatible = "m41t62";
-		reg = <0x68>;
-	};
-
-	pmic: pf0100@08 {
-		compatible = "pf0100-regulator";
-		reg = <0x08>;
-		interrupt-parent = <&gpio3>;
-		interrupts = <20 8>;
-
-		regulators {
-			reg_vddcore: sw1ab {
-				regulator-min-microvolt = <300000>;
-				regulator-max-microvolt = <1875000>;
-				regulator-always-on;
-			};
-
-			reg_vddsoc: sw1c {
-				regulator-min-microvolt = <300000>;
-				regulator-max-microvolt = <1875000>;
-				regulator-always-on;
-			};
-
-			reg_gen_3v3: sw2 {
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-			};
-
-			reg_ddr_1v5a: sw3a {
-				regulator-min-microvolt = <400000>;
-				regulator-max-microvolt = <1975000>;
-				regulator-always-on;
-			};
-
-			reg_ddr_1v5b: sw3b {
-				regulator-min-microvolt = <400000>;
-				regulator-max-microvolt = <1975000>;
-				regulator-always-on;
-			};
-
-			reg_ddr_vtt: sw4 {
-				regulator-min-microvolt = <400000>;
-				regulator-max-microvolt = <1975000>;
-				regulator-always-on;
-			};
-
-			reg_5v_600mA: swbst {
-				regulator-min-microvolt = <5000000>;
-				regulator-max-microvolt = <5150000>;
-				regulator-always-on;
-			};
-
-			reg_snvs_3v: vsnvs {
-				regulator-min-microvolt = <1500000>;
-				regulator-max-microvolt = <3000000>;
-				regulator-always-on;
-			};
-
-			reg_vrefddr: vrefddr {
-				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <750000>;
-				regulator-always-on;
-			};
-
-			reg_vgen1_1v5: vgen1 {
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <1550000>;
-				/* not used */
-			};
-
-			reg_vgen2_1v2_eth: vgen2 {
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <1550000>;
-				regulator-always-on;
-			};
-
-			reg_vgen3_2v8: vgen3 {
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-			};
-
-			reg_vgen4_1v8: vgen4 {
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-			};
-
-			reg_vgen5_1v8_eth: vgen5 {
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-			};
-
-			reg_vgen6_3v3: vgen6 {
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-			};
-		};
-	};
-};
-
 &iomuxc {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_hog>, <&pinctrl_pfuze_1>;
-
-	hog {
-		pinctrl_hog: hoggrp-1 {
-			fsl,pins = <
-				MX6QDL_PAD_EIM_A16__GPIO2_IO22 0x80000000
-				MX6QDL_PAD_EIM_A17__GPIO2_IO21 0x80000000
-			>;
-		};
-	};
-
-	i2c2 {
-		pinctrl_i2c2: i2c2grp {
-			fsl,pins = <MX6QDL_I2C2_PINGRP3>;
-		};
-	};
-
-	uart {
-		pinctrl_uart1: uart1grp {
-			fsl,pins = <MX6QDL_UART1_PINGRP2>;
-		};
-
-                pinctrl_uart2: uart2grp {
-			fsl,pins = <MX6QDL_UART2_PINGRP1>;
-		};
-	};
-
 	pfuze {
 		pinctrl_pfuze_1: pfuze100grp1 {
 			fsl,pins = <
@@ -308,92 +72,26 @@
 		};
 	};
 
-	stmpe_1 {
-		pinctrl_stmpe_1_1: stmpe1grp-1 {
-			fsl,pins = <
-				MX6QDL_PAD_EIM_D30__GPIO3_IO30 0x80000000
-			>;
-		};
-	};
-
-	stmpe_2 {
-		pinctrl_stmpe_2_1: stmpe2grp-1 {
-			fsl,pins = <
-				MX6QDL_PAD_EIM_A25__GPIO5_IO02 0x80000000
-			>;
-		};
-	};
-
 	ecspi5 {
 		pinctrl_ecspi_5_1: ecspi5rp-1 {
 			fsl,pins = <
 				MX6QDL_PAD_SD1_DAT0__ECSPI5_MISO 0x80000000
-				MX6QDL_PAD_SD1_CMD__ECSPI5_MOSI 0x80000000
-				MX6QDL_PAD_SD1_CLK__ECSPI5_SCLK 0x80000000
-				MX6QDL_PAD_SD2_DAT3__GPIO1_IO12 0x80000000 /* cs0: m25p80 */
+				MX6QDL_PAD_SD1_CMD__ECSPI5_MOSI  0x80000000
+				MX6QDL_PAD_SD1_CLK__ECSPI5_SCLK  0x80000000
+				MX6QDL_PAD_SD2_DAT3__GPIO1_IO12  0x80000000
 			>;
 		};
 	};
-
-	enet {
-		pinctrl_enet: enetgrp {
-			fsl,pins = <MX6QDL_ENET_PINGRP1>;
-		};
-	};
-
-	usb {
-		pinctrl_usbotg: usbotggrp {
-			fsl,pins = <MX6QDL_USBOTG_PINGRP1>;
-		};
-	};
-
-	usdhc {
-		pinctrl_usdhc3: usdhc3grp {
-			fsl,pins = <MX6QDL_USDHC3_PINGRP_D4>;
-		};
-
-		pinctrl_usdhc4: usdhc4grp {
-			fsl,pins = <MX6QDL_USDHC4_PINGRP_D8>;
-		};
-	};
-};
-
-&sata {
-	status = "okay";
 };
 
-&uart1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart1>;
-	status = "okay";
-};
-
-&uart2 {
-	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart2>;
-};
-
-&usbh1 {
-	vbus-supply = <&reg_usb_host1>;
-	status = "okay";
-	disable-over-current;
-};
-
-&usbotg {
-	vbus-supply = <&reg_usb_otg_vbus>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usbotg>;
-	disable-over-current;
-	status = "okay";
+&i2c2 {
+	pinctrl-0 = <&pinctrl_i2c2
+	             &pinctrl_stmpe1
+	             &pinctrl_stmpe2
+	             &pinctrl_pfuze_1>;
 };
 
 &usdhc3 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc3>;
-	vmmc-supply = <&reg_3p3v>;
-	status = "okay";
-
 	#address-cells = <1>;
 	#size-cells = <1>;
 
@@ -408,13 +106,6 @@
 };
 
 &usdhc4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc4>;
-	vmmc-supply = <&reg_3p3v>;
-	non-removable;
-	bus-width = <8>;
-	status = "okay";
-
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
