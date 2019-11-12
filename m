Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQi3-0002KI-N6
 for barebox@lists.infradead.org; Tue, 12 Nov 2019 07:35:34 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Tue, 12 Nov 2019 08:35:22 +0100
Message-Id: <1573544123-338486-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 1/2] ARM: dts: imx6: phycore: Make use of upstream devicetree
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>

Make use of the upstream devicetree for the phyCORE-i.MX 6 and the
phyBOARD-Mira to reduce code duplication. In this context also add a
Mira devicetree for barebox to better differentiate between phyCORE
related settings and baseboard related settings.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts    |  23 +-
 arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts |  20 +-
 arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts |  14 +-
 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts    |  17 +-
 arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts     |  23 +-
 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts     |  23 +-
 arch/arm/dts/imx6qdl-phytec-mira.dtsi              |  44 ++++
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi       | 286 +++------------------
 arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts    |  23 +-
 9 files changed, 94 insertions(+), 379 deletions(-)
 create mode 100644 arch/arm/dts/imx6qdl-phytec-mira.dtsi

diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
index 21cbb5f944c9..8ce0066c691d 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-emmc.dts
@@ -15,6 +15,7 @@
 #include <arm/imx6dl.dtsi>
 #include "imx6dl.dtsi"
 #include "imx6qdl-phytec-phycore-som.dtsi"
+#include "imx6qdl-phytec-mira.dtsi"
 #include "imx6qdl-phytec-state.dtsi"
 
 / {
@@ -22,10 +23,6 @@
 	compatible = "phytec,imx6dl-pcm058-emmc", "fsl,imx6dl";
 };
 
-&ecspi1 {
-	status = "okay";
-};
-
 &eeprom {
 	status = "okay";
 };
@@ -38,7 +35,7 @@
 	status = "okay";
 };
 
-&flash {
+&m25p80 {
 	status = "okay";
 };
 
@@ -52,22 +49,6 @@
 
 &usdhc1 {
 	status = "okay";
-
-	partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		partition@0 {
-			label = "barebox";
-			reg = <0x0 0xe0000>;
-		};
-
-		partition@e0000 {
-			label = "barebox-environment";
-			reg = <0xe0000 0x20000>;
-		};
-	};
 };
 
 &usdhc4 {
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
index b8efb95ee08a..bf3a03c4f62a 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-emmc.dts
@@ -9,6 +9,7 @@
 #include <arm/imx6dl.dtsi>
 #include "imx6dl.dtsi"
 #include "imx6qdl-phytec-phycore-som.dtsi"
+#include "imx6qdl-phytec-mira.dtsi"
 #include "imx6qdl-phytec-state.dtsi"
 
 / {
@@ -16,10 +17,6 @@
 	compatible = "phytec,imx6dl-pcm058-emmc", "fsl,imx6dl";
 };
 
-&ecspi1 {
-	status = "okay";
-};
-
 &eeprom {
 	status = "okay";
 };
@@ -32,7 +29,7 @@
 	status = "okay";
 };
 
-&flash {
+&m25p80 {
 	status = "okay";
 };
 
@@ -46,19 +43,6 @@
 
 &usdhc1 {
 	status = "okay";
-
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	partition@0 {
-		label = "barebox";
-		reg = <0x0 0xe0000>;
-	};
-
-	partition@e0000 {
-		label = "barebox-environment";
-		reg = <0xe0000 0x20000>;
-	};
 };
 
 &usdhc4 {
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
index 4d38d1698a48..654f6c152dee 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-lc-nand.dts
@@ -9,6 +9,7 @@
 #include <arm/imx6dl.dtsi>
 #include "imx6dl.dtsi"
 #include "imx6qdl-phytec-phycore-som.dtsi"
+#include "imx6qdl-phytec-mira.dtsi"
 #include "imx6qdl-phytec-state.dtsi"
 
 / {
@@ -42,17 +43,4 @@
 
 &usdhc1 {
 	status = "okay";
-
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	partition@0 {
-		label = "barebox";
-		reg = <0x0 0xe0000>;
-	};
-
-	partition@e0000 {
-		label = "barebox-environment";
-		reg = <0xe0000 0x20000>;
-	};
 };
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
index 3ad3723d2893..18d14d6b945c 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
@@ -14,6 +14,7 @@
 #include <arm/imx6dl.dtsi>
 #include "imx6dl.dtsi"
 #include "imx6qdl-phytec-phycore-som.dtsi"
+#include "imx6qdl-phytec-mira.dtsi"
 #include "imx6qdl-phytec-state.dtsi"
 
 / {
@@ -47,20 +48,4 @@
 
 &usdhc1 {
 	status = "okay";
-
-	partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		partition@0 {
-			label = "barebox";
-			reg = <0x0 0xe0000>;
-		};
-
-		partition@e0000 {
-			label = "barebox-environment";
-			reg = <0xe0000 0x20000>;
-		};
-	};
 };
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
index 7a86d5b94daf..2ff4ae7a488a 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-emmc.dts
@@ -14,6 +14,7 @@
 #include <arm/imx6q.dtsi>
 #include "imx6q.dtsi"
 #include "imx6qdl-phytec-phycore-som.dtsi"
+#include "imx6qdl-phytec-mira.dtsi"
 #include "imx6qdl-phytec-state.dtsi"
 
 / {
@@ -21,10 +22,6 @@
 	compatible = "phytec,imx6q-pcm058-emmc", "fsl,imx6q";
 };
 
-&ecspi1 {
-	status = "okay";
-};
-
 &eeprom {
 	status = "okay";
 };
@@ -37,7 +34,7 @@
 	status = "okay";
 };
 
-&flash {
+&m25p80 {
 	status = "okay";
 };
 
@@ -51,22 +48,6 @@
 
 &usdhc1 {
 	status = "okay";
-
-	partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		partition@0 {
-			label = "barebox";
-			reg = <0x0 0xe0000>;
-		};
-
-		partition@e0000 {
-			label = "barebox-environment";
-			reg = <0xe0000 0x20000>;
-		};
-	};
 };
 
 &usdhc4 {
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
index 96d1de224c9e..cc5ef7d11d30 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
@@ -14,6 +14,7 @@
 #include <arm/imx6q.dtsi>
 #include "imx6q.dtsi"
 #include "imx6qdl-phytec-phycore-som.dtsi"
+#include "imx6qdl-phytec-mira.dtsi"
 #include "imx6qdl-phytec-state.dtsi"
 
 / {
@@ -22,10 +23,6 @@
 
 };
 
-&ecspi1 {
-	status = "okay";
-};
-
 &eeprom {
 	status = "okay";
 };
@@ -38,7 +35,7 @@
 	status = "okay";
 };
 
-&flash {
+&m25p80 {
 	status = "okay";
 };
 
@@ -56,20 +53,4 @@
 
 &usdhc1 {
 	status = "okay";
-
-	partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		partition@0 {
-			label = "barebox";
-			reg = <0x0 0xe0000>;
-		};
-
-		partition@e0000 {
-			label = "barebox-environment";
-			reg = <0xe0000 0x20000>;
-		};
-	};
 };
diff --git a/arch/arm/dts/imx6qdl-phytec-mira.dtsi b/arch/arm/dts/imx6qdl-phytec-mira.dtsi
new file mode 100644
index 000000000000..49cbd25fc3ea
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-phytec-mira.dtsi
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright (C) 2019 PHYTEC Messtechnik GmbH
+ * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
+ */
+
+#include <arm/imx6qdl-phytec-mira.dtsi>
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	chosen {
+		stdout-path = &uart2;
+	};
+};
+
+&backlight {
+	status = "disabled";
+};
+
+&ldb {
+	status = "disabled";
+};
+
+&pwm1 {
+	status = "disabled";
+};
+
+&usdhc1 {
+	partitions {
+		compatible = "fixed-partitions";
+                #address-cells = <1>;
+                #size-cells = <1>;
+
+                partition@0 {
+                        label = "barebox";
+                        reg = <0x0 0xe0000>;
+                };
+
+                partition@e0000 {
+                        label = "barebox-environment";
+                        reg = <0xe0000 0x20000>;
+                };
+        };
+};
diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index 1d39368165db..3bb21ce8f761 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -9,12 +9,11 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#include <arm/imx6qdl-phytec-phycore-som.dtsi>
 #include <dt-bindings/gpio/gpio.h>
 
 / {
 	chosen {
-		stdout-path = &uart2;
-
 		environment-sd1 {
 			compatible = "barebox,environment";
 			device-path = &usdhc1, "partname:barebox-environment";
@@ -35,102 +34,20 @@
 
 		environment-spinor {
 			compatible = "barebox,environment";
-			device-path = &flash, "partname:barebox-environment";
+			device-path = &m25p80, "partname:barebox-environment";
 			status = "disabled";
 		};
 	};
 
-	reg_usbh1_vbus: regulator-usbh1 {
-		compatible = "regulator-fixed";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_usbh1_vbus>;
-		regulator-name = "usbh1_vbus";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		gpio = <&gpio2 18 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-	};
-
-	reg_usbotg_vbus: regulator-usbotg {
-		compatible = "regulator-fixed";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_usbotg_vbus>;
-		regulator-name = "usbotg_vbus";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-	};
-};
-
-&ecspi1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_ecspi1>;
-	fsl,spi-num-chipselects = <1>;
-	cs-gpios = <&gpio3 19 0>;
-	status = "disabled";
-
-	flash: flash@0 {
-		compatible = "jedec,spi-nor";
-		spi-max-frequency = <20000000>;
-		reg = <0>;
-		status = "disabled";
-
-		partitions {
-			compatible = "fixed-partitions";
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			partition@0 {
-				label = "barebox";
-				reg = <0x0 0x100000>;
-			};
-
-			partition@100000 {
-				label = "barebox-environment";
-				reg = <0x100000 0x20000>;
-			};
-
-			partition@120000 {
-				label = "oftree";
-				reg = <0x120000 0x20000>;
-			};
-
-			partition@140000 {
-				label = "kernel";
-				reg = <0x140000 0x0>;
-			};
-		};
-	};
+	/delete-node/ memory@10000000;
 };
 
 &fec {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_enet>;
-	phy-handle = <&ethphy>;
-	phy-mode = "rgmii";
-	phy-reset-gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
+	/delete-property/ phy-supply;
 	phy-reset-duration = <10>; /* in msecs */
-	status = "disabled";
-
-	mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		ethphy: ethernet-phy@3 {
-			reg = <3>;
-			txc-skew-ps = <1680>;
-			rxc-skew-ps = <1860>;
-		};
-	};
 };
 
 &gpmi {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_gpmi_nand>;
-	nand-on-flash-bbt;
-	status = "disabled";
-
 	partitions {
 		compatible = "fixed-partitions";
 		#address-cells = <1>;
@@ -154,141 +71,44 @@
 };
 
 &i2c3 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c3>;
-	clock-frequency = <400000>;
-	status = "okay";
-
 	eeprom: eeprom@50 {
 		status = "disabled";
-		compatible = "24c32";
-		reg = <0x50>;
 	};
 
 	pmic@58 {
-		compatible = "dlg,da9062";
-		reg = <0x58>;
-		status = "okay";
-
 		watchdog-priority = <500>;
 		restart-priority = <500>;
 		reset-source-priority = <500>;
 	};
 };
 
-&iomuxc {
-	pinctrl_ecspi1: ecspi1grp {
-		fsl,pins = <
-			MX6QDL_PAD_EIM_D16__ECSPI1_SCLK		0x100b1
-			MX6QDL_PAD_EIM_D17__ECSPI1_MISO		0x100b1
-			MX6QDL_PAD_EIM_D18__ECSPI1_MOSI		0x100b1
-			MX6QDL_PAD_EIM_D19__GPIO3_IO19		0x80000000
-		>;
-	};
-
-	pinctrl_enet: enetgrp {
-		fsl,pins = <
-			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
-			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
-			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b0b0
-			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b0b0
-			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b0b0
-			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b0b0
-			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b0b0
-			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b0b0
-			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
-			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b0b0
-			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b0b0
-			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b0b0
-			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b0b0
-			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b0b0
-			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b0b0
-			MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN	0x1b0b0
-			MX6QDL_PAD_SD2_DAT1__GPIO1_IO14		0x80000000
-		>;
-	};
-
-	pinctrl_gpmi_nand: gpmigrp {
-		fsl,pins = <
-			MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
-			MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
-			MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
-			MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
-			MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
-			MX6QDL_PAD_NANDF_CS1__NAND_CE1_B	0xb0b1
-			MX6QDL_PAD_NANDF_CS2__NAND_CE2_B	0xb0b1
-			MX6QDL_PAD_NANDF_CS3__NAND_CE3_B	0xb0b1
-			MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
-			MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
-			MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
-			MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
-			MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
-			MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
-			MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
-			MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
-			MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
-			MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
-			MX6QDL_PAD_SD4_DAT0__NAND_DQS		0x00b1
-		>;
-	};
-
-	pinctrl_i2c3: i2c3grp {
-		fsl,pins = <
-			MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b8b1
-			MX6QDL_PAD_GPIO_5__I2C3_SCL		0x4001b8b1
-		>;
-	};
-
-	pinctrl_uart2: uart2grp {
-		fsl,pins = <
-			MX6QDL_PAD_EIM_D26__UART2_TX_DATA	0x1b0b1
-			MX6QDL_PAD_EIM_D27__UART2_RX_DATA	0x1b0b1
-		>;
-	};
+&m25p80 {
+	status = "disabled";
 
-	pinctrl_usbh1_vbus: usbh1vbusgrp {
-		fsl,pins = <
-			MX6QDL_PAD_EIM_A20__GPIO2_IO18		0xb0b1
-		>;
-	};
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
 
-	pinctrl_usbotg: usbotggrp {
-		fsl,pins = <
-			MX6QDL_PAD_GPIO_1__USB_OTG_ID		0x17059
-		>;
-	};
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x100000>;
+		};
 
-	pinctrl_usbotg_vbus: usbotgvbusgrp {
-		fsl,pins = <
-			MX6QDL_PAD_EIM_A19__GPIO2_IO19		0xb0b1
-			>;
-	};
+		partition@100000 {
+			label = "barebox-environment";
+			reg = <0x100000 0x20000>;
+		};
 
-	pinctrl_usdhc1: usdhc1grp {
-		fsl,pins = <
-			MX6QDL_PAD_SD1_CMD__SD1_CMD		0x170f9
-			MX6QDL_PAD_SD1_CLK__SD1_CLK		0x100f9
-			MX6QDL_PAD_SD1_DAT0__SD1_DATA0		0x170f9
-			MX6QDL_PAD_SD1_DAT1__SD1_DATA1		0x170f9
-			MX6QDL_PAD_SD1_DAT2__SD1_DATA2		0x170f9
-			MX6QDL_PAD_SD1_DAT3__SD1_DATA3		0x170f9
-			MX6QDL_PAD_EIM_BCLK__GPIO6_IO31		0x80000000 /* CD */
-		>;
-	};
+		partition@120000 {
+			label = "oftree";
+			reg = <0x120000 0x20000>;
+		};
 
-	pinctrl_usdhc4: usdhc4grp {
-		fsl,pins = <
-			MX6QDL_PAD_SD4_CMD__SD4_CMD		0x17059
-			MX6QDL_PAD_SD4_CLK__SD4_CLK		0x10059
-			MX6QDL_PAD_SD4_DAT0__SD4_DATA0		0x17059
-			MX6QDL_PAD_SD4_DAT1__SD4_DATA1		0x17059
-			MX6QDL_PAD_SD4_DAT2__SD4_DATA2		0x17059
-			MX6QDL_PAD_SD4_DAT3__SD4_DATA3		0x17059
-			MX6QDL_PAD_SD4_DAT4__SD4_DATA4		0x17059
-			MX6QDL_PAD_SD4_DAT5__SD4_DATA5		0x17059
-			MX6QDL_PAD_SD4_DAT6__SD4_DATA6		0x17059
-			MX6QDL_PAD_SD4_DAT7__SD4_DATA7		0x17059
-		>;
+		partition@140000 {
+			label = "kernel";
+			reg = <0x140000 0x0>;
+		};
 	};
 };
 
@@ -296,50 +116,20 @@
 	barebox,provide-mac-address = <&fec 0x620>;
 };
 
-&uart2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart2>;
-	status = "okay";
-};
-
-&usbh1 {
-	vbus-supply = <&reg_usbh1_vbus>;
-	disable-over-current;
-	status = "disabled";
-};
-
-&usbotg {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usbotg>;
-	vbus-supply = <&reg_usbotg_vbus>;
-	disable-over-current;
-	status = "disabled";
-};
-
-&usdhc1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc1>;
-	cd-gpios = <&gpio6 31 0>;
-	status = "disabled";
-};
-
 &usdhc4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc4>;
-	bus-width = <8>;
-	non-removable;
-	status = "disabled";
-
-	#address-cells = <1>;
-	#size-cells = <1>;
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
 
-	partition@0 {
-		label = "barebox";
-		reg = <0x0 0xe0000>;
-	};
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0xe0000>;
+		};
 
-	partition@e0000 {
-		label = "barebox-environment";
-		reg = <0xe0000 0x20000>;
+		partition@e0000 {
+			label = "barebox-environment";
+			reg = <0xe0000 0x20000>;
+		};
 	};
 };
diff --git a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
index 437457ce7522..410071192eee 100644
--- a/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6qp-phytec-phycore-som-nand.dts
@@ -13,16 +13,13 @@
 /dts-v1/;
 #include <arm/imx6qp.dtsi>
 #include "imx6qdl-phytec-phycore-som.dtsi"
+#include "imx6qdl-phytec-mira.dtsi"
 
 / {
 	model = "Phytec phyCORE-i.MX6 Quad with NAND";
 	compatible = "phytec,imx6qp-pcm058-nand", "fsl,imx6qp";
 };
 
-&ecspi1 {
-	status = "okay";
-};
-
 &eeprom {
 	status = "okay";
 };
@@ -35,7 +32,7 @@
 	status = "okay";
 };
 
-&flash {
+&m25p80 {
 	status = "okay";
 };
 
@@ -53,20 +50,4 @@
 
 &usdhc1 {
 	status = "okay";
-
-	partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		partition@0 {
-			label = "barebox";
-			reg = <0x0 0xe0000>;
-		};
-
-		partition@e0000 {
-			label = "barebox-environment";
-			reg = <0xe0000 0x20000>;
-		};
-	};
 };
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
