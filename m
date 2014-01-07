Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0bEI-0007ht-Jm
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 18:18:21 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1W0b96-0002i2-OG
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 19:12:56 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  7 Jan 2014 19:12:50 +0100
Message-Id: <1389118376-1740-4-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 04/10] ARM: imx6: update phytec-pfla02 DT
To: barebox@lists.infradead.org

From: Lucas Stach <dev@lynxeye.de>

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/imx6q-phytec-pfla02.dtsi | 144 +++++++++++++++++++++++++++++-----
 1 file changed, 125 insertions(+), 19 deletions(-)

diff --git a/arch/arm/dts/imx6q-phytec-pfla02.dtsi b/arch/arm/dts/imx6q-phytec-pfla02.dtsi
index d113f7f..b615491 100644
--- a/arch/arm/dts/imx6q-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6q-phytec-pfla02.dtsi
@@ -22,7 +22,7 @@
 
 &ecspi3 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_ecspi3_1>;
+	pinctrl-0 = <&pinctrl_ecspi3>;
 	status = "okay";
 	fsl,spi-num-chipselects = <1>;
 	cs-gpios = <&gpio4 24 0>;
@@ -35,34 +35,140 @@
 };
 
 &i2c1 {
-	status = "okay";
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c1_1>;
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
 
-	eeprom: m24c32@50 {
-		compatible = "st,24c32", "at24";
+	eeprom@50 {
+		compatible = "atmel,24c32";
 		reg = <0x50>;
 	};
+
+	pmic@58 {
+		compatible = "dialog,da9063";
+		reg = <0x58>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <17 0x8>; /* active-low GPIO4_17 */
+
+		regulators {
+			vddcore_reg: bcore1 {
+				regulator-min-microvolt = <730000>;
+				regulator-max-microvolt = <1380000>;
+				regulator-always-on;
+			};
+
+			vddsoc_reg: bcore2 {
+				regulator-min-microvolt = <730000>;
+				regulator-max-microvolt = <1380000>;
+				regulator-always-on;
+			};
+
+			vdd_ddr3_reg: bpro {
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <1500000>;
+				regulator-always-on;
+			};
+
+			vdd_3v3_reg: bperi {
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vdd_buckmem_reg: bmem {
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vdd_eth_reg: bio {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-always-on;
+			};
+
+			vdd_eth_io_reg: ldo4 {
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <2500000>;
+				regulator-always-on;
+			};
+
+			vdd_mx6_snvs_reg: ldo5 {
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-always-on;
+			};
+
+			vdd_3v3_pmic_io_reg: ldo6 {
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vdd_sd0_reg: ldo9 {
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			vdd_sd1_reg: ldo10 {
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			vdd_mx6_high_reg: ldo11 {
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-always-on;
+			};
+		};
+	};
 };
 
 &iomuxc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_hog>;
 
-	hog {
+	imx6q-phytec-pfla02 {
 		pinctrl_hog: hoggrp {
 			fsl,pins = <
-				MX6QDL_PAD_EIM_D23__GPIO3_IO23    0x80000000
-				MX6QDL_PAD_DISP0_DAT3__GPIO4_IO24	0x80000000 /* SPI NOR chipselect */
+				MX6QDL_PAD_EIM_D23__GPIO3_IO23 0x80000000
+				MX6QDL_PAD_DISP0_DAT3__GPIO4_IO24 0x80000000 /* SPI NOR chipselect */
+				MX6QDL_PAD_DI0_PIN15__GPIO4_IO17  0x80000000 /* PMIC interrupt */
 			>;
 		};
-	};
 
-	pfla02 {
-		pinctrl_usdhc3_pfla02: usdhc3grp-pfla02 {
+		pinctrl_ecspi3: ecspi3grp {
+			fsl,pins = <MX6QDL_ECSPI3_PINGRP1>;
+		};
+
+		pinctrl_enet: enetgrp {
+			fsl,pins = <MX6QDL_ENET_PINGRP3>;
+		};
+
+		pinctrl_gpmi_nand: gpmigrp {
+			fsl,pins = <MX6QDL_GPMI_NAND_PINGRP1>;
+		};
+
+		pinctrl_i2c1: i2c1grp {
+			fsl,pins = <MX6QDL_I2C1_PINGRP1>;
+		};
+
+		pinctrl_uart4: uart4grp {
+			fsl,pins = <MX6QDL_UART4_PINGRP1>;
+		};
+
+		pinctrl_usdhc2: usdhc2grp {
+			fsl,pins = <MX6QDL_USDHC2_PINGRP_D4>;
+		};
+
+		pinctrl_usdhc3: usdhc3grp {
+			fsl,pins = <MX6QDL_USDHC3_PINGRP_D4>;
+		};
+
+		pinctrl_usdhc3_cdwp: usdhc3cdwp {
 			fsl,pins = <
-				MX6QDL_PAD_ENET_RXD0__GPIO1_IO27  0x80000000
-				MX6QDL_PAD_ENET_TXD1__GPIO1_IO29  0x80000000
+				MX6QDL_PAD_ENET_RXD0__GPIO1_IO27 0x80000000
+				MX6QDL_PAD_ENET_TXD1__GPIO1_IO29 0x80000000
 			>;
 		};
 	};
@@ -70,7 +176,7 @@
 
 &fec {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_enet_3>;
+	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rgmii";
 	phy-reset-gpios = <&gpio3 23 0>;
 	status = "disabled";
@@ -93,7 +199,7 @@
 
 &gpmi {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_gpmi_nand_1>;
+	pinctrl-0 = <&pinctrl_gpmi_nand>;
 	nand-on-flash-bbt;
 	status = "okay";
 	#address-cells = <1>;
@@ -116,13 +222,13 @@
 
 &uart4 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart4_1>;
+	pinctrl-0 = <&pinctrl_uart4>;
 	status = "disabled";
 };
 
 &usdhc2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc2_2>;
+	pinctrl-0 = <&pinctrl_usdhc2>;
 	cd-gpios = <&gpio1 4 0>;
 	wp-gpios = <&gpio1 2 0>;
 	status = "disabled";
@@ -130,8 +236,8 @@
 
 &usdhc3 {
         pinctrl-names = "default";
-        pinctrl-0 = <&pinctrl_usdhc3_2
-		     &pinctrl_usdhc3_pfla02>;
+        pinctrl-0 = <&pinctrl_usdhc3
+		     &pinctrl_usdhc3_cdwp>;
         cd-gpios = <&gpio1 27 0>;
         wp-gpios = <&gpio1 29 0>;
         status = "disabled";
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
