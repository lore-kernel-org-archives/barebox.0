Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZRcna-00047Q-MH
 for barebox@lists.infradead.org; Tue, 18 Aug 2015 09:03:15 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue, 18 Aug 2015 11:02:40 +0200
Message-Id: <1439888561-9841-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: pfla02: align with and include mainline DT
To: barebox@lists.infradead.org

Align with the mainline device tree, include it,
and remove all unchanged nodes and properties.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/dts/imx6dl-phytec-pfla02.dtsi  |   4 -
 arch/arm/dts/imx6q-phytec-pfla02.dtsi   |   4 -
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 136 +++-----------------------------
 3 files changed, 11 insertions(+), 133 deletions(-)

diff --git a/arch/arm/dts/imx6dl-phytec-pfla02.dtsi b/arch/arm/dts/imx6dl-phytec-pfla02.dtsi
index 0f801ae..47154d5 100644
--- a/arch/arm/dts/imx6dl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6dl-phytec-pfla02.dtsi
@@ -16,7 +16,3 @@
 	model = "Phytec phyFLEX-i.MX6 Dual Lite";
 	compatible = "phytec,imx6dl-pfla02", "fsl,imx6dl";
 };
-
-&ecspi3 {
-	status = "okay";
-};
diff --git a/arch/arm/dts/imx6q-phytec-pfla02.dtsi b/arch/arm/dts/imx6q-phytec-pfla02.dtsi
index 0aec5d0..e8afe7a 100644
--- a/arch/arm/dts/imx6q-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6q-phytec-pfla02.dtsi
@@ -16,7 +16,3 @@
 	model = "Phytec phyFLEX-i.MX6 Quad";
 	compatible = "phytec,imx6q-pfla02", "fsl,imx6q";
 };
-
-&ecspi3 {
-	status = "okay";
-};
diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 5ac0ef9..63c1e7f 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -9,7 +9,14 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#include <arm/imx6qdl-phytec-pfla02.dtsi>
+
 / {
+	memory {
+		/* let barebox fill the memory node */
+		reg = <0 0>;
+	};
+
 	chosen {
 		environment-nand {
 			compatible = "barebox,environment";
@@ -50,17 +57,7 @@
 };
 
 &ecspi3 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_ecspi3>;
-	status = "disabled";
-	fsl,spi-num-chipselects = <1>;
-	cs-gpios = <&gpio4 24 0>;
-
-	flash: m25p80@0 {
-		compatible = "m25p80";
-		spi-max-frequency = <20000000>;
-		reg = <0>;
-
+	flash: flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 
@@ -87,12 +84,7 @@
 };
 
 &fec {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_enet>;
 	phy-handle = <&ethphy>;
-	phy-mode = "rgmii";
-	phy-reset-gpios = <&gpio3 23 0>;
-	status = "disabled";
 
 	mdio {
 		#address-cells = <1>;
@@ -108,10 +100,6 @@
 };
 
 &gpmi {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_gpmi_nand>;
-	nand-on-flash-bbt;
-	status = "okay";
 	#address-cells = <1>;
 	#size-cells = <1>;
 
@@ -142,45 +130,8 @@
 };
 
 &iomuxc {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_hog>;
-
-	ecspi3 {
-		pinctrl_ecspi3: ecspi3grp {
-			fsl,pins = <
-				MX6QDL_PAD_DISP0_DAT2__ECSPI3_MISO 0x100b1
-				MX6QDL_PAD_DISP0_DAT1__ECSPI3_MOSI 0x100b1
-				MX6QDL_PAD_DISP0_DAT0__ECSPI3_SCLK 0x100b1
-				MX6QDL_PAD_DISP0_DAT3__GPIO4_IO24 0x80000000 /* SPI NOR chipselect */
-			>;
-		};
-	};
-
-	enet {
-		pinctrl_enet: enetgrp {
-			fsl,pins = <
-				MX6QDL_PAD_ENET_MDIO__ENET_MDIO       0x1b0b0
-				MX6QDL_PAD_ENET_MDC__ENET_MDC         0x1b0b0
-				MX6QDL_PAD_RGMII_TXC__RGMII_TXC       0x1b0b0
-				MX6QDL_PAD_RGMII_TD0__RGMII_TD0       0x1b0b0
-				MX6QDL_PAD_RGMII_TD1__RGMII_TD1       0x1b0b0
-				MX6QDL_PAD_RGMII_TD2__RGMII_TD2       0x1b0b0
-				MX6QDL_PAD_RGMII_TD3__RGMII_TD3       0x1b0b0
-				MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL 0x1b0b0
-				MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK  0x1b0b0
-				MX6QDL_PAD_RGMII_RXC__RGMII_RXC       0x1b0b0
-				MX6QDL_PAD_RGMII_RD0__RGMII_RD0       0x1b0b0
-				MX6QDL_PAD_RGMII_RD1__RGMII_RD1       0x1b0b0
-				MX6QDL_PAD_RGMII_RD2__RGMII_RD2       0x1b0b0
-				MX6QDL_PAD_RGMII_RD3__RGMII_RD3       0x1b0b0
-				MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL 0x1b0b0
-				MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN     0x1b0b0
-			>;
-		};
-	};
-
-	gpmi-nand {
-		pinctrl_gpmi_nand: gpmi-nand {
+	imx6q-phytec-pfla02 {
+		pinctrl_gpmi_nand: gpminandgrp {
 			fsl,pins = <
 				MX6QDL_PAD_NANDF_CLE__NAND_CLE     0xb0b1
 				MX6QDL_PAD_NANDF_ALE__NAND_ALE     0xb0b1
@@ -204,79 +155,13 @@
 			>;
 		};
 	};
-
-	hog {
-		pinctrl_hog: hoggrp {
-			fsl,pins = <
-				MX6QDL_PAD_EIM_D23__GPIO3_IO23  0x80000000
-				MX6QDL_PAD_SD4_DAT3__GPIO2_IO11 0x80000000
-			>;
-		};
-	};
-
-	uart4 {
-		pinctrl_uart4: uart4grp {
-			fsl,pins = <
-				MX6QDL_PAD_KEY_COL0__UART4_TX_DATA 0x1b0b1
-				MX6QDL_PAD_KEY_ROW0__UART4_RX_DATA 0x1b0b1
-			>;
-		};
-	};
-
-	usdhc2 {
-		pinctrl_usdhc2: usdhc2grp {
-			fsl,pins = <
-				MX6QDL_PAD_SD2_CMD__SD2_CMD    0x17059
-				MX6QDL_PAD_SD2_CLK__SD2_CLK    0x10059
-				MX6QDL_PAD_SD2_DAT0__SD2_DATA0 0x17059
-				MX6QDL_PAD_SD2_DAT1__SD2_DATA1 0x17059
-				MX6QDL_PAD_SD2_DAT2__SD2_DATA2 0x17059
-				MX6QDL_PAD_SD2_DAT3__SD2_DATA3 0x17059
-			>;
-		};
-	};
-
-	usdhc3 {
-		pinctrl_usdhc3: usdhc3grp {
-			fsl,pins = <
-				MX6QDL_PAD_SD3_CMD__SD3_CMD    0x17059
-				MX6QDL_PAD_SD3_CLK__SD3_CLK    0x10059
-				MX6QDL_PAD_SD3_DAT0__SD3_DATA0 0x17059
-				MX6QDL_PAD_SD3_DAT1__SD3_DATA1 0x17059
-				MX6QDL_PAD_SD3_DAT2__SD3_DATA2 0x17059
-				MX6QDL_PAD_SD3_DAT3__SD3_DATA3 0x17059
-				MX6QDL_PAD_ENET_RXD0__GPIO1_IO27 0x80000000
-				MX6QDL_PAD_ENET_TXD1__GPIO1_IO29 0x80000000
-			>;
-		};
-	};
 };
 
 &ocotp {
 	barebox,provide-mac-address = <&fec 0x620>;
 };
 
-&uart4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart4>;
-	status = "disabled";
-};
-
-&usdhc2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc2>;
-	cd-gpios = <&gpio1 4 0>;
-	wp-gpios = <&gpio1 2 0>;
-	status = "disabled";
-};
-
 &usdhc3 {
-        pinctrl-names = "default";
-        pinctrl-0 = <&pinctrl_usdhc3>;
-        cd-gpios = <&gpio1 27 0>;
-        wp-gpios = <&gpio1 29 0>;
-        status = "disabled";
-
 	#address-cells = <1>;
 	#size-cells = <1>;
 
@@ -284,6 +169,7 @@
 		label = "barebox";
 		reg = <0x0 0x80000>;
 	};
+
 	partition@1 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
