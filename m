Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i91Pb-0002tm-5U
 for barebox@lists.infradead.org; Sat, 14 Sep 2019 06:20:03 +0000
Received: by mail-pf1-x442.google.com with SMTP id i1so10572254pfa.6
 for <barebox@lists.infradead.org>; Fri, 13 Sep 2019 23:19:56 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 13 Sep 2019 23:19:42 -0700
Message-Id: <20190914061943.4715-7-andrew.smirnov@gmail.com>
In-Reply-To: <20190914061943.4715-1-andrew.smirnov@gmail.com>
References: <20190914061943.4715-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 7/8] ARM: imx8mq-zii-ultra: Use upstream DTS
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Upstream DTS files now contain most of the boilerplate we need. Drop
all unnecessary part from Barebox's DTS.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx8mq-zii-ultra-rmb3.dts |  38 +-
 arch/arm/dts/imx8mq-zii-ultra-zest.dts |   8 +-
 arch/arm/dts/imx8mq-zii-ultra.dtsi     | 511 -------------------------
 3 files changed, 2 insertions(+), 555 deletions(-)

diff --git a/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts b/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
index dd4379bd59..414497b4e8 100644
--- a/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
+++ b/arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
@@ -3,41 +3,5 @@
  * Copyright (C) 2019 Zodiac Inflight Innovations
  */
 
-/dts-v1/;
-
+#include <arm64/freescale/imx8mq-zii-ultra-rmb3.dts>
 #include "imx8mq-zii-ultra.dtsi"
-
-/ {
-	model = "ZII i.MX8MQ Ultra RMB3 Board";
-	compatible = "zii,imx8mq-ultra-rmb3", "zii,imx8mq-ultra", "fsl,imx8mq";
-};
-
-&ecspi1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_ecspi1>;
-	cs-gpios = <&gpio5 9 GPIO_ACTIVE_HIGH>;
-	status = "okay";
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	nor_flash: flash@0 {
-		compatible = "st,m25p128", "jedec,spi-nor";
-		spi-max-frequency = <20000000>;
-		reg = <0>;
-	};
-};
-
-&iomuxc {
-	pinctrl_ecspi1: ecspi1grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_ECSPI1_SS0_GPIO5_IO9	0x19
-			MX8MQ_IOMUXC_ECSPI1_SCLK_ECSPI1_SCLK    0x82
-			MX8MQ_IOMUXC_ECSPI1_MISO_ECSPI1_MISO    0x82
-			MX8MQ_IOMUXC_ECSPI1_MOSI_ECSPI1_MOSI    0x82
-		>;
-	};
-};
-
-&usb_hub {
-	swap-dx-lanes = <0>;
-};
diff --git a/arch/arm/dts/imx8mq-zii-ultra-zest.dts b/arch/arm/dts/imx8mq-zii-ultra-zest.dts
index c2ac05d8e8..491e669080 100644
--- a/arch/arm/dts/imx8mq-zii-ultra-zest.dts
+++ b/arch/arm/dts/imx8mq-zii-ultra-zest.dts
@@ -3,11 +3,5 @@
  * Copyright (C) 2019 Zodiac Inflight Innovations
  */
 
-/dts-v1/;
-
+#include <arm64/freescale/imx8mq-zii-ultra-zest.dts>
 #include "imx8mq-zii-ultra.dtsi"
-
-/ {
-	model = "ZII i.MX8MQ Ultra Zest Board";
-	compatible = "zii,imx8mq-ultra-zest", "zii,imx8mq-ultra", "fsl,imx8mq";
-};
diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
index 6e41e820b8..1a9ba160a3 100644
--- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
+++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
@@ -3,7 +3,6 @@
  * Copyright (C) 2019 Zodiac Inflight Innovations
  */
 
-#include <arm64/freescale/imx8mq.dtsi>
 #include "imx8mq.dtsi"
 #include "imx8mq-ddrc.dtsi"
 
@@ -31,265 +30,13 @@
 		 */
 		switch-eeprom = &switch;
 	};
-
-	mdio0: bitbang-mdio {
-		compatible = "virtual,mdio-gpio";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_mdio_bitbang>, <&pinctrl_fec1_phy_reset>;
-		gpios = <&gpio1 13 GPIO_ACTIVE_HIGH>, /* MDC */
-			<&gpio1 14 GPIO_ACTIVE_HIGH>; /* MDIO */
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		phy0: ethernet-phy@0 {
-			reg = <0>;
-			reset-gpios = <&gpio1 29 GPIO_ACTIVE_LOW>;
-		};
-	};
-
-	reg_usdhc2_vmmc: regulator-vsd-3v3 {
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_reg_usdhc2>;
-		compatible = "regulator-fixed";
-		regulator-name = "VSD_3V3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-	};
-
-	pcie0_refclk: pcie0-refclk {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <100000000>;
-	};
-
-	pcie1_refclk: pcie0-refclk {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <100000000>;
-	};
-};
-
-&fec1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_fec1>;
-
-	phy-handle = <&phy0>;
-	phy-mode = "rmii";
-	status = "okay";
-
-	mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		status = "okay";
-
-		switch: switch@0 {
-			compatible = "marvell,mv88e6085";
-			reg = <0>;
-			dsa,member = <0 0>;
-			eeprom-length = <512>;
-
-			ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				port@0 {
-					reg = <0>;
-					label = "gigabit_proc";
-				};
-
-				port@1 {
-					reg = <1>;
-					label = "netaux";
-				};
-
-				port@2 {
-					reg = <2>;
-					label = "cpu";
-
-					fixed-link {
-						speed = <100>;
-						full-duplex;
-					};
-				};
-
-				port@3 {
-					reg = <3>;
-					label = "netright";
-				};
-
-				port@4 {
-					reg = <4>;
-					label = "netleft";
-				};
-			};
-		};
-	};
-};
-
-&i2c1 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c1>;
-	status = "okay";
-};
-
-&i2c2 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c2>;
-	status = "okay";
-
-	pmic@8 {
-		compatible = "fsl,pfuze100";
-		reg = <0x8>;
-
-		regulators {
-			sw1a_reg: sw1ab {
-				regulator-min-microvolt = <825000>;
-				regulator-max-microvolt = <1100000>;
-			};
-
-			sw1c_reg: sw1c {
-				regulator-min-microvolt = <825000>;
-				regulator-max-microvolt = <1100000>;
-			};
-
-			sw2_reg: sw2 {
-				regulator-min-microvolt = <1100000>;
-				regulator-max-microvolt = <1100000>;
-				regulator-always-on;
-			};
-
-			sw3a_reg: sw3ab {
-				regulator-min-microvolt = <825000>;
-				regulator-max-microvolt = <1100000>;
-				regulator-always-on;
-			};
-
-			sw4_reg: sw4 {
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-always-on;
-			};
-
-			swbst_reg: swbst {
-				regulator-min-microvolt = <5000000>;
-				regulator-max-microvolt = <5150000>;
-			};
-
-			snvs_reg: vsnvs {
-				regulator-min-microvolt = <1000000>;
-				regulator-max-microvolt = <3000000>;
-				regulator-always-on;
-			};
-
-			vref_reg: vrefddr {
-				regulator-always-on;
-			};
-
-			vgen1_reg: vgen1 {
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <1550000>;
-			};
-
-			vgen2_reg: vgen2 {
-				regulator-min-microvolt = <850000>;
-				regulator-max-microvolt = <975000>;
-				regulator-always-on;
-			};
-
-			vgen3_reg: vgen3 {
-				regulator-min-microvolt = <1675000>;
-				regulator-max-microvolt = <1975000>;
-				regulator-always-on;
-			};
-
-			vgen4_reg: vgen4 {
-				regulator-min-microvolt = <1625000>;
-				regulator-max-microvolt = <1875000>;
-				regulator-always-on;
-			};
-
-			vgen5_reg: vgen5 {
-				regulator-min-microvolt = <3075000>;
-				regulator-max-microvolt = <3625000>;
-				regulator-always-on;
-			};
-
-			vgen6_reg: vgen6 {
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-			};
-		};
-	};
-
-	temp-sense@48 {
-		compatible = "national,lm75";
-		reg = <0x48>;
-	};
-
-	eeprom@54 {
-		compatible = "atmel,24c128";
-		reg = <0x54>;
-	};
-
-	ds1341: rtc@68 {
-		compatible = "dallas,ds1341";
-		reg = <0x68>;
-	};
-};
-
-&i2c3 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c3>;
-	status = "okay";
-
-	usb_hub: usb2513b@2c {
-		compatible = "microchip,usb2513b";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_usb2513b>;
-		reg = <0x2c>;
-		reset-gpios = <&gpio3 25 GPIO_ACTIVE_LOW>;
-	};
-};
-
-&i2c4 {
-	clock-frequency = <400000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c4>;
-	status = "okay";
 };
 
 &ocotp {
 	barebox,provide-mac-address = <&fec1 0x640>;
 };
 
-&pcie0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_pcie0>;
-	reset-gpio = <&gpio1 3 GPIO_ACTIVE_LOW>;
-	clocks = <&clk IMX8MQ_CLK_PCIE1_ROOT>,
-		 <&clk IMX8MQ_CLK_PCIE1_AUX>,
-		 <&clk IMX8MQ_CLK_PCIE1_PHY>,
-		 <&pcie0_refclk>;
-	clock-names = "pcie", "pcie_aux", "pcie_phy", "pcie_bus";
-	status = "okay";
-};
-
 &pcie1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_pcie1>;
-	reset-gpio = <&gpio1 6 GPIO_ACTIVE_LOW>;
-	clocks = <&clk IMX8MQ_CLK_PCIE2_ROOT>,
-		 <&clk IMX8MQ_CLK_PCIE2_AUX>,
-		 <&clk IMX8MQ_CLK_PCIE2_PHY>,
-		 <&pcie1_refclk>;
-	clock-names = "pcie", "pcie_aux", "pcie_phy", "pcie_bus";
-	status = "okay";
-
 	host@0 {
 		reg = <0 0 0 0 0>;
 
@@ -302,73 +49,7 @@
 	};
 };
 
-&uart1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart1>;
-	status = "okay";
-};
-
-&uart2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart2>;
-	status = "okay";
-
-	rave-sp {
-		compatible = "zii,rave-sp-rdu2";
-		current-speed = <1000000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		watchdog {
-			compatible = "zii,rave-sp-watchdog";
-		};
-
-		main_eeprom: eeprom@a4 {
-			compatible = "zii,rave-sp-eeprom";
-			reg = <0xa4 0x4000>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			zii,eeprom-name = "main-eeprom";
-		};
-
-		eeprom@a3 {
-			compatible = "zii,rave-sp-eeprom";
-			reg = <0xa3 0x4000>;
-			zii,eeprom-name = "dds-eeprom";
-		};
-	};
-};
-
-&usb_dwc3_0 {
-	status = "okay";
-	dr_mode = "host";
-};
-
-&usb3_phy0 {
-	status = "okay";
-};
-
-&usb_dwc3_1 {
-	status = "okay";
-	dr_mode = "host";
-};
-
-&usb3_phy1 {
-	status = "okay";
-};
-
 &usdhc1 {
-	pinctrl-names = "default", "state_100mhz", "state_200mhz";
-	pinctrl-0 = <&pinctrl_usdhc1>;
-	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
-	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
-	vqmmc-supply = <&sw4_reg>;
-	bus-width = <8>;
-	non-removable;
-	no-sd;
-	no-sdio;
-	status = "okay";
-
 	#address-cells = <1>;
 	#size-cells = <1>;
 
@@ -384,14 +65,6 @@
 };
 
 &usdhc2 {
-	pinctrl-names = "default", "state_100mhz", "state_200mhz";
-	pinctrl-0 = <&pinctrl_usdhc2>;
-	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
-	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
-	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
-	vmmc-supply = <&reg_usdhc2_vmmc>;
-	status = "okay";
-
 	#address-cells = <1>;
 	#size-cells = <1>;
 
@@ -406,187 +79,3 @@
 	};
 };
 
-&iomuxc {
-	pinctrl_mdio_bitbang: bitbangmdiogrp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_GPIO1_IO13_GPIO1_IO13	0x44
-			MX8MQ_IOMUXC_GPIO1_IO14_GPIO1_IO14	0x64
-		>;
-	};
-
-	pinctrl_fec1: fec1grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_ENET_MDC_ENET1_MDC			0x3
-			MX8MQ_IOMUXC_ENET_MDIO_ENET1_MDIO		0x23
-			MX8MQ_IOMUXC_ENET_TD1_ENET1_RGMII_TD1		0x1f
-			MX8MQ_IOMUXC_ENET_TD0_ENET1_RGMII_TD0		0x1f
-			MX8MQ_IOMUXC_ENET_RD1_ENET1_RGMII_RD1		0x91
-			MX8MQ_IOMUXC_ENET_RD0_ENET1_RGMII_RD0		0x91
-			MX8MQ_IOMUXC_ENET_TD2_ENET1_TX_CLK		0x1f
-			MX8MQ_IOMUXC_ENET_RXC_ENET1_RX_ER		0x91
-			MX8MQ_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
-			MX8MQ_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
-		>;
-	};
-
-	pinctrl_fec1_phy_reset: fec1phyresetgrp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_ENET_RD3_GPIO1_IO29		0x11
-		>;
-	};
-
-	pinctrl_i2c1: i2c1grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_I2C1_SCL_I2C1_SCL			0x4000007f
-			MX8MQ_IOMUXC_I2C1_SDA_I2C1_SDA			0x4000007f
-		>;
-	};
-
-	pinctrl_i2c2: i2c2grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_I2C2_SCL_I2C2_SCL			0x4000007f
-			MX8MQ_IOMUXC_I2C2_SDA_I2C2_SDA			0x4000007f
-		>;
-	};
-
-	pinctrl_i2c3: i2c3grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_I2C3_SCL_I2C3_SCL			0x4000007f
-			MX8MQ_IOMUXC_I2C3_SDA_I2C3_SDA			0x4000007f
-		>;
-	};
-
-	pinctrl_i2c4: i2c4grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_I2C4_SCL_I2C4_SCL			0x4000007f
-			MX8MQ_IOMUXC_I2C4_SDA_I2C4_SDA			0x4000007f
-		>;
-	};
-
-	pinctrl_pcie0: pcie0grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_UART4_RXD_PCIE1_CLKREQ_B	0x76
-			MX8MQ_IOMUXC_GPIO1_IO03_GPIO1_IO3	0x16
-		>;
-	};
-
-	pinctrl_pcie1: pcie1grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_UART4_TXD_PCIE2_CLKREQ_B	0x76
-			MX8MQ_IOMUXC_GPIO1_IO06_GPIO1_IO6	0x16
-		>;
-	};
-
-	pinctrl_reg_usdhc2: regusdhc2grpgpio {
-		fsl,pins = <
-			MX8MQ_IOMUXC_SD2_RESET_B_GPIO2_IO19		0x41
-		>;
-	};
-
-	pinctrl_uart1: uart1grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_UART1_RXD_UART1_DCE_RX		0x49
-			MX8MQ_IOMUXC_UART1_TXD_UART1_DCE_TX		0x49
-		>;
-	};
-
-	pinctrl_uart2: uart2grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_UART2_RXD_UART2_DCE_RX		0x49
-			MX8MQ_IOMUXC_UART2_TXD_UART2_DCE_TX		0x49
-		>;
-	};
-
-	pinctrl_usb2513b: usb2513bgrp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_SAI5_MCLK_GPIO3_IO25    0x41
-		>;
-	};
-
-	pinctrl_usdhc1: usdhc1grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x83
-			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xc3
-			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xc3
-			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xc3
-			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xc3
-			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xc3
-			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xc3
-			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xc3
-			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xc3
-			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xc3
-			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE		0x83
-			MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B		0xc1
-		>;
-	};
-
-	pinctrl_usdhc1_100mhz: usdhc1-100grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x85
-			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xc5
-			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xc5
-			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xc5
-			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xc5
-			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xc5
-			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xc5
-			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xc5
-			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xc5
-			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xc5
-			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE		0x85
-			MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B		0xc1
-		>;
-	};
-
-	pinctrl_usdhc1_200mhz: usdhc1-200grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK			0x87
-			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD			0xc7
-			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0		0xc7
-			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1		0xc7
-			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2		0xc7
-			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3		0xc7
-			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4		0xc7
-			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5		0xc7
-			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6		0xc7
-			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7		0xc7
-			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE		0x87
-			MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B		0xc1
-		>;
-	};
-
-	pinctrl_usdhc2: usdhc2grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK			0x83
-			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD			0xc3
-			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0		0xc3
-			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1		0xc3
-			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2		0xc3
-			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3		0xc3
-			MX8MQ_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0xc1
-		>;
-	};
-
-	pinctrl_usdhc2_100mhz: usdhc2-100grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK			0x85
-			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD			0xc5
-			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0		0xc5
-			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1		0xc5
-			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2		0xc5
-			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3		0xc5
-			MX8MQ_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0xc1
-		>;
-	};
-
-	pinctrl_usdhc2_200mhz: usdhc2-200grp {
-		fsl,pins = <
-			MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK			0x87
-			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD			0xc7
-			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0		0xc7
-			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1		0xc7
-			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2		0xc7
-			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3		0xc7
-			MX8MQ_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0xc1
-		>;
-	};
-};
\ No newline at end of file
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
