Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1b9T-0001Xm-17
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 20:29:30 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1b9R-0007nD-RM
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:29:25 +0100
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1b9R-0000wr-Fj
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:29:25 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Jan 2021 21:29:21 +0100
Message-Id: <20210118202922.3581-5-m.felsch@pengutronix.de>
In-Reply-To: <20210118202922.3581-1-m.felsch@pengutronix.de>
References: <20210118202922.3581-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/6] ARM: dts: imx6qdl-samx6i: use upstream device tree files
To: barebox@lists.infradead.org

Make use of upstream available device tree files to avoid duplications.
A few interfaces had a "default on" behaviour which is dropped now.
Enabling those interfaces within the SoM dtsi seems to be wrong anyway.
Since boards have to turn it off again if those interfaces are unused.

I've adapted all upstream boards which are using the the
imx6qdl-smarc-samx6i.dtsi so the behaviour for those boards is
unchanged.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/dts/imx6dl-samx6i.dts         |  28 +-
 arch/arm/dts/imx6q-samx6i.dts          |  28 +-
 arch/arm/dts/imx6qdl-smarc-samx6i.dtsi | 422 +------------------------
 3 files changed, 62 insertions(+), 416 deletions(-)

diff --git a/arch/arm/dts/imx6dl-samx6i.dts b/arch/arm/dts/imx6dl-samx6i.dts
index c94573d0a8..da648ef5b8 100644
--- a/arch/arm/dts/imx6dl-samx6i.dts
+++ b/arch/arm/dts/imx6dl-samx6i.dts
@@ -1,14 +1,34 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2018 (C) Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
+ * Copyright 2019 (C) Pengutronix, Marco Felsch <kernel@pengutronix.de>
  */
 
 /dts-v1/;
-#include <arm/imx6dl.dtsi>
+#include <arm/imx6dl-kontron-samx6i.dtsi>
 #include "imx6dl.dtsi"
 #include "imx6qdl-smarc-samx6i.dtsi"
 
-/ {
-	model = "Kontron sAMX6i";
-	compatible = "kontron,imx6dl-samx6i", "fsl,imx6dl";
+&fec {
+	status = "okay";
+};
+
+&ecspi4 {
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usbotg {
+	status = "okay";
+};
+
+&usbh1 {
+	status = "okay";
+};
+
+&usdhc4 {
+	status = "okay";
 };
diff --git a/arch/arm/dts/imx6q-samx6i.dts b/arch/arm/dts/imx6q-samx6i.dts
index 0f269aa287..a2ea076edf 100644
--- a/arch/arm/dts/imx6q-samx6i.dts
+++ b/arch/arm/dts/imx6q-samx6i.dts
@@ -1,14 +1,34 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2018 (C) Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
+ * Copyright 2019 (C) Pengutronix, Marco Felsch <kernel@pengutronix.de>
  */
 
 /dts-v1/;
-#include <arm/imx6q.dtsi>
+#include <arm/imx6q-kontron-samx6i.dtsi>
 #include "imx6q.dtsi"
 #include "imx6qdl-smarc-samx6i.dtsi"
 
-/ {
-	model = "Kontron sAMX6i";
-	compatible = "kontron,imx6q-samx6i", "fsl,imx6q";
+&fec {
+	status = "okay";
+};
+
+&ecspi4 {
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usbotg {
+	status = "okay";
+};
+
+&usbh1 {
+	status = "okay";
+};
+
+&usdhc4 {
+	status = "okay";
 };
diff --git a/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi b/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
index 759cd694e8..197b5cbf8b 100644
--- a/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
+++ b/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
@@ -2,6 +2,7 @@
 /*
  * Copyright 2017 (C) Priit Laes <plaes@plaes.org>
  * Copyright 2018 (C) Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
+ * Copyright 2019 (C) Pengutronix, Marco Felsch <kernel@pengutronix.de>
  *
  * Based on initial work by Nikita Yushchenko <nyushchenko at dev.rtsoft.ru>
  */
@@ -24,71 +25,6 @@
 			status = "disabled";
 		};
 	};
-
-	reg_3v3_s5: regulator@0 {
-		compatible = "regulator-fixed";
-		regulator-name = "V_3V3_S5";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-boot-on;
-		regulator-always-on;
-	};
-
-	reg_1v8_s5: regulator@1 {
-		compatible = "regulator-fixed";
-		regulator-name = "V_1V8_S5";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		regulator-boot-on;
-		regulator-always-on;
-	};
-
-	reg_3v3_s0: regulator@2 {
-		compatible = "regulator-fixed";
-		regulator-name = "V_3V3_S0";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-boot-on;
-		regulator-always-on;
-	};
-
-	reg_1v0_s0: regulator@3 {
-		compatible = "regulator-fixed";
-		regulator-name = "V_1V0_S0";
-		regulator-min-microvolt = <1000000>;
-		regulator-max-microvolt = <1000000>;
-		regulator-boot-on;
-		regulator-always-on;
-	};
-
-	i2c_pfuze: i2c-gpio-0 {
-		compatible = "i2c-gpio";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_i2c_gpio_0>;
-		sda-gpios = <&gpio1 28 0>;
-		scl-gpios = <&gpio1 30 0>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		i2c-gpio,delay-us = <2>;
-	};
-};
-
-&can1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_flexcan1>;
-};
-
-&can2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_flexcan2>;
-};
-
-&fec {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_enet_smarc>;
-	phy-reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
-	phy-mode = "rgmii";
-	status = "okay";
 };
 
 &gpio2 {
@@ -101,214 +37,27 @@
 	pinctrl-0 = <&pinctrl_gpio6_hog>;
 };
 
-&i2c_pfuze {
-	pfuze100@08 {
-		compatible = "fsl,pfuze100";
-		reg = <0x08>;
-
-		/* Looks unused by pfuze100 driver */
-		interrupt-parent = <&gpio7>;
-		interrupts = <13 IRQ_TYPE_LEVEL_LOW>;
-
-		regulators {
-			reg_v_core_s0: sw1ab {
-				regulator-name = "V_CORE_S0";
-				regulator-min-microvolt = <300000>;
-				regulator-max-microvolt = <1875000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			reg_vddsoc_s0: sw1c {
-				regulator-name = "V_VDDSOC_S0";
-				regulator-min-microvolt = <300000>;
-				regulator-max-microvolt = <1875000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			reg_3v15_s0: sw2 {
-				regulator-name = "V_3V15_S0";
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			/* sw3a/b is used in dual mode, but driver does not
-			 * support it? Although, there's no need to control
-			 * DDR power - so just leaving dummy entries for sw3a
-			 * and sw3b for now.
-			 */
-			sw3a {
-				regulator-min-microvolt = <400000>;
-				regulator-max-microvolt = <1975000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			sw3b {
-				regulator-min-microvolt = <400000>;
-				regulator-max-microvolt = <1975000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			reg_1v8_s0: sw4 {
-				regulator-name = "V_1V8_S0";
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			/* Regulator for USB */
-			reg_5v0_s0: swbst {
-				regulator-name = "V_5V0_S0";
-				regulator-min-microvolt = <5000000>;
-				regulator-max-microvolt = <5150000>;
-				regulator-boot-on;
-			};
-
-			reg_vsnvs: vsnvs {
-				regulator-min-microvolt = <1000000>;
-				regulator-max-microvolt = <3000000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			reg_vrefddr: vrefddr {
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			/* Per schematics, of all VGEN's, only VGEN5 has some
-			 * usage ... but even that - over DNI resistor
-			 */
-			vgen1 {
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <1550000>;
-			};
-
-			vgen2 {
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <1550000>;
-			};
-
-			vgen3 {
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-			};
-
-			vgen4 {
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-			};
-
-			reg_2v5_s0: vgen5 {
-				regulator-name = "V_2V5_S0";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-			};
+&smarc_flash {
+	#address-cells = <1>;
+	#size-cells = <1>;
 
-			vgen6 {
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-			};
-		};
+	partition@0 {
+		label = "bootloader";
+		reg = <0x000000 0x0c0000>;
 	};
-};
 
-&ecspi4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_ecspi4>;
-	fsl,spi-num-chipselects = <3>;
-	cs-gpios = <&gpio3 24 0>, <&gpio3 29 0>, <&gpio3 25 0>;
-	status = "okay";
-
-	flash: m25p80@0 {
-		compatible = "winbond,w25q16dw", "jedec,spi-nor";
-		spi-max-frequency = <20000000>;
-		reg = <0>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		partition@0 {
-			label = "bootloader";
-			reg = <0x000000 0x0c0000>;
-		};
-
-		flash_bareboxenv: partition@c0000 {
-			label = "environment";
-			reg = <0x0c0000 0x010000>;
-		};
-
-		partition@d0000 {
-			label = "user";
-			reg = <0x0d0000 0x130000>;
-		};
+	flash_bareboxenv: partition@c0000 {
+		label = "environment";
+		reg = <0x0c0000 0x010000>;
 	};
-};
-
-&i2c3 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c3>;
-};
-
-&pcie {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_pcie>;
-	wake-up-gpio = <&gpio6 18 GPIO_ACTIVE_HIGH>;
-	reset-gpio = <&gpio3 13 GPIO_ACTIVE_HIGH>;
-};
 
-&uart1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart1_smarc>;
-	fsl,uart-has-rtscts;
-};
-
-&uart2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart2_smarc>;
-	status = "okay";
-};
-
-&uart4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart4_smarc>;
-	fsl,uart-has-rtscts;
-};
-
-&uart5 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart5_smarc>;
-};
-
-&usbotg {
-	/*
-	 * no 'imx6-usb-charger-detection'
-	 * since USB_OTG_CHD_B pin is not wired
-	 */
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usbotg>;
-	status = "okay";
-};
-
-&usbh1 {
-	vbus-supply = <&reg_5v0_s0>;
-	status = "okay";
+	partition@d0000 {
+		label = "user";
+		reg = <0x0d0000 0x130000>;
+	};
 };
 
 &usdhc4 {
-	/* Internal eMMC, optional on some boards */
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc4>;
-	bus-width = <8>;
-	no-1-8-v;
-	non-removable;
-	status = "okay";
 	#address-cells = <1>;
 	#size-cells = <1>;
 
@@ -324,20 +73,6 @@
 };
 
 &iomuxc {
-	pinctrl_flexcan1: flexcan1-smarc {
-		fsl,pins = <
-			MX6QDL_PAD_GPIO_7__FLEXCAN1_TX 0x80000000
-			MX6QDL_PAD_GPIO_8__FLEXCAN1_RX 0x80000000
-		>;
-	};
-
-	pinctrl_flexcan2: flexcan2-smarc {
-		fsl,pins = <
-			MX6QDL_PAD_KEY_COL4__FLEXCAN2_TX 0x80000000
-			MX6QDL_PAD_KEY_ROW4__FLEXCAN2_RX 0x80000000
-		>;
-	};
-
 	pinctrl_gpio2_hog: gpio2-hog {
 		fsl,pins = <
 			/* GPIO for version detection */
@@ -352,133 +87,4 @@
 			MX6QDL_PAD_NANDF_WP_B__GPIO6_IO09	0xb0b0
 		>;
 	};
-
-	pinctrl_enet_smarc: fecgrp-smarc {
-		fsl,pins = <
-			MX6QDL_PAD_ENET_MDIO__ENET_MDIO       0x1b0b0
-			MX6QDL_PAD_ENET_MDC__ENET_MDC         0x1b0b0
-			MX6QDL_PAD_RGMII_TXC__RGMII_TXC       0x1b0b0
-			MX6QDL_PAD_RGMII_TD0__RGMII_TD0       0x1b0b0
-			MX6QDL_PAD_RGMII_TD1__RGMII_TD1       0x1b0b0
-			MX6QDL_PAD_RGMII_TD2__RGMII_TD2       0x1b0b0
-			MX6QDL_PAD_RGMII_TD3__RGMII_TD3       0x1b0b0
-			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL 0x1b0b0
-			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK  0x1b0b0
-			MX6QDL_PAD_RGMII_RXC__RGMII_RXC       0x1b0b0
-			MX6QDL_PAD_RGMII_RD0__RGMII_RD0       0x1b0b0
-			MX6QDL_PAD_RGMII_RD1__RGMII_RD1       0x1b0b0
-			MX6QDL_PAD_RGMII_RD2__RGMII_RD2       0x1b0b0
-			MX6QDL_PAD_RGMII_RD3__RGMII_RD3       0x1b0b0
-			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL 0x1b0b0
-			MX6QDL_PAD_ENET_CRS_DV__GPIO1_IO25    0x80000000
-		>;
-	};
-
-	pinctrl_i2c_gpio_0: i2c-gpio-0-smarc {
-		fsl,pins = <
-			/* SCL GPIO */
-			MX6QDL_PAD_ENET_TXD0__GPIO1_IO30  0x80000000
-			/* SDA GPIO */
-			MX6QDL_PAD_ENET_TX_EN__GPIO1_IO28 0x80000000
-		>;
-	};
-
-	pinctrl_i2c3: i2c3-smarc {
-		fsl,pins = <
-			MX6QDL_PAD_EIM_D17__I2C3_SCL		0x4001b8b1
-			MX6QDL_PAD_EIM_D18__I2C3_SDA		0x4001b8b1
-		>;
-	};
-
-	pinctrl_ecspi4: ecspi4-smarc {
-		fsl,pins = <
-			MX6QDL_PAD_EIM_D21__ECSPI4_SCLK 0x80000000
-			MX6QDL_PAD_EIM_D28__ECSPI4_MOSI 0x80000000
-			MX6QDL_PAD_EIM_D22__ECSPI4_MISO 0x80000000
-			MX6QDL_PAD_EIM_D29__ECSPI4_SS0  0x80000000
-
-			/* In hardware, ECSPI4's SS0,SS1,SS3 are wired.
-			   But spi-imx driver support only continuous
-			   numbering, and only can use GPIOs (and not
-			   ECSPI's hardware SS) for CS. So linux view
-			   of CS numbers differs from hw view, and
-			   pins are configured as GPIOs */
-
-			/* physical - CS2, in linux - CS0, either internal flash or SMARC CS0 */
-			MX6QDL_PAD_EIM_D24__GPIO3_IO24 0x80000000
-			/* physical - CS0, in linux - CS1, either SMARC CS0 or not-connected */
-			MX6QDL_PAD_EIM_D29__GPIO3_IO29 0x80000000
-			/* physical - CS3, in linux - CS2, SMARC CS1 */
-			MX6QDL_PAD_EIM_D25__GPIO3_IO25 0x80000000
-		>;
-	};
-
-	pinctrl_pcie: pcie-smarc {
-		fsl,pins = <
-			/* RST_PCIE_A# */
-			MX6QDL_PAD_EIM_DA13__GPIO3_IO13 0x80000000
-			/* PCIE_WAKE# */
-			MX6QDL_PAD_SD3_DAT6__GPIO6_IO18 0x80000000
-		>;
-	};
-
-	pinctrl_uart1_smarc: uart1grp-smarc {
-		fsl,pins = <
-			MX6QDL_PAD_CSI0_DAT11__UART1_RX_DATA 0x1b0b1
-			MX6QDL_PAD_CSI0_DAT10__UART1_TX_DATA 0x1b0b1
-			MX6QDL_PAD_EIM_D20__UART1_RTS_B 0x1b0b1
-			MX6QDL_PAD_EIM_D19__UART1_CTS_B 0x1b0b1
-		>;
-	};
-
-	pinctrl_uart2_smarc: uart2grp-smarc {
-		fsl,pins = <
-			MX6QDL_PAD_EIM_D27__UART2_RX_DATA 0x1b0b1
-			MX6QDL_PAD_EIM_D26__UART2_TX_DATA 0x1b0b1
-		>;
-	};
-
-	pinctrl_uart4_smarc: uart4grp-smarc {
-		fsl,pins = <
-			MX6QDL_PAD_CSI0_DAT13__UART4_RX_DATA 0x1b0b1
-			MX6QDL_PAD_CSI0_DAT12__UART4_TX_DATA 0x1b0b1
-			MX6QDL_PAD_CSI0_DAT16__UART4_RTS_B 0x1b0b1
-			MX6QDL_PAD_CSI0_DAT17__UART4_CTS_B 0x1b0b1
-		>;
-	};
-
-	pinctrl_uart5_smarc: uart5grp-smarc {
-		fsl,pins = <
-			MX6QDL_PAD_CSI0_DAT15__UART5_RX_DATA 0x1b0b1
-			MX6QDL_PAD_CSI0_DAT14__UART5_TX_DATA 0x1b0b1
-		>;
-	};
-
-	pinctrl_usbotg: usbotg-grp-smarc {
-		fsl,pins = <
-			MX6QDL_PAD_GPIO_1__USB_OTG_ID 0x1f8b0
-			/* TODO: Comment out power and OC gpio's for now, since
-			 * these are not used by driver
-			 */
-			/* USB power */
-			// MX6QDL_PAD_CSI0_PIXCLK__GPIO5_IO18 0x80000000
-			/* USB OC */
-			// MX6QDL_PAD_CSI0_DATA_EN__GPIO5_IO20 0x80000000
-		>;
-	};
-
-	pinctrl_usdhc4: usdhc4grp-smarc {
-		fsl,pins = <
-			MX6QDL_PAD_SD4_CLK__SD4_CLK 0x17059
-			MX6QDL_PAD_SD4_CMD__SD4_CMD 0x17059
-			MX6QDL_PAD_SD4_DAT0__SD4_DATA0 0x17059
-			MX6QDL_PAD_SD4_DAT1__SD4_DATA1 0x17059
-			MX6QDL_PAD_SD4_DAT2__SD4_DATA2 0x17059
-			MX6QDL_PAD_SD4_DAT3__SD4_DATA3 0x17059
-			MX6QDL_PAD_SD4_DAT4__SD4_DATA4 0x17059
-			MX6QDL_PAD_SD4_DAT5__SD4_DATA5 0x17059
-			MX6QDL_PAD_SD4_DAT6__SD4_DATA6 0x17059
-			MX6QDL_PAD_SD4_DAT7__SD4_DATA7 0x17059
-		>;
-	};
 };
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
