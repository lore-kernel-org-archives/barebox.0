Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEvX-0001H2-Nh
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 09:02:02 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Mon, 9 Dec 2019 10:01:42 +0100
Message-Id: <1575882108-108853-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 1/7] ARM: dts: imx6: pcaaxl3: Order nodes alphabetically
To: barebox@lists.infradead.org

Bring the device tree nodes in alphabetical order and in this context
also remove the deprecated iomux group.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi | 182 ++++++++++++++++-----------------
 1 file changed, 90 insertions(+), 92 deletions(-)

diff --git a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
index 66b547ad8eef..db986f87ef26 100644
--- a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
+++ b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
@@ -17,104 +17,16 @@
 	compatible = "phytec,imx6q-pcaaxl3", "fsl,imx6q";
 
 	chosen {
-		environment-sd3 {
-			compatible = "barebox,environment";
-			device-path = &environment_usdhc3;
-			status = "disabled";
-		};
-
 		environment-nand {
 			compatible = "barebox,environment";
 			device-path = &environment_nand;
 			status = "disabled";
 		};
-	};
-};
-
-&i2c1 {
-	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c1>;
-
-	eeprom: m24c32@50 {
-		compatible = "st,24c32", "at24";
-		reg = <0x50>;
-	};
-};
-
-&iomuxc {
-	pinctrl-names = "default";
-
-	imx6q-phytec-pcaaxl3 {
-		pinctrl_enet: enetgrp {
-			fsl,pins = <
-				MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
-				MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
-				MX6QDL_PAD_ENET_RXD0__ENET_RX_DATA0	0x1b0b0
-				MX6QDL_PAD_ENET_RXD1__ENET_RX_DATA1	0x1b0b0
-				MX6QDL_PAD_ENET_RX_ER__ENET_RX_ER	0x1b0b0
-				MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN	0x1b0b0
-				MX6QDL_PAD_ENET_TXD0__ENET_TX_DATA0	0x1b0b0
-				MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1	0x1b0b0
-				MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN	0x1b0b0
-				MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
-				MX6QDL_PAD_KEY_COL0__ENET_RX_DATA3	0x1b0b0
-				MX6QDL_PAD_KEY_ROW0__ENET_TX_DATA3	0x1b0b0
-				MX6QDL_PAD_KEY_ROW1__ENET_COL		0x1b0b0
-				MX6QDL_PAD_KEY_COL2__ENET_RX_DATA2	0x1b0b0
-				MX6QDL_PAD_KEY_ROW2__ENET_TX_DATA2	0x1b0b0
-				MX6QDL_PAD_KEY_COL3__ENET_CRS		0x1b0b0
-				MX6QDL_PAD_GPIO_18__ENET_RX_CLK		0x1b0b0
-				MX6QDL_PAD_GPIO_19__ENET_TX_ER		0x1b0b0
-			>;
-		};
-
-		pinctrl_gpmi_nand: gpmigrp {
-			fsl,pins = <
-				MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
-				MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
-				MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
-				MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
-				MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
-				MX6QDL_PAD_NANDF_CS1__NAND_CE1_B	0xb0b1
-				MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
-				MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
-				MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
-				MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
-				MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
-				MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
-				MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
-				MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
-				MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
-				MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
-				MX6QDL_PAD_SD4_DAT0__NAND_DQS		0x00b1
-			>;
-		};
-
-		pinctrl_i2c1: i2c1grp {
-			fsl,pins = <
-				MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
-				MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
-			>;
-		};
-
-		pinctrl_uart3: uart3grp {
-			fsl,pins = <
-				MX6QDL_PAD_EIM_D24__UART3_TX_DATA	0x1b0b1
-				MX6QDL_PAD_EIM_D25__UART3_RX_DATA	0x1b0b1
-			>;
-		};
 
-		pinctrl_usdhc3: usdhc3grp {
-			fsl,pins = <
-				MX6QDL_PAD_SD3_CMD__SD3_CMD		0x17059
-				MX6QDL_PAD_SD3_CLK__SD3_CLK		0x10059
-				MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x17059
-				MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17059
-				MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17059
-				MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17059
-				MX6QDL_PAD_CSI0_DAT4__GPIO5_IO22	0x80000000 /* CD */
-			>;
+		environment-sd3 {
+			compatible = "barebox,environment";
+			device-path = &environment_usdhc3;
+			status = "disabled";
 		};
 	};
 };
@@ -154,6 +66,92 @@
 	};
 };
 
+&i2c1 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+
+	eeprom: m24c32@50 {
+		compatible = "st,24c32", "at24";
+		reg = <0x50>;
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+
+	pinctrl_enet: enetgrp {
+		fsl,pins = <
+			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
+			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
+			MX6QDL_PAD_ENET_RXD0__ENET_RX_DATA0	0x1b0b0
+			MX6QDL_PAD_ENET_RXD1__ENET_RX_DATA1	0x1b0b0
+			MX6QDL_PAD_ENET_RX_ER__ENET_RX_ER	0x1b0b0
+			MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN	0x1b0b0
+			MX6QDL_PAD_ENET_TXD0__ENET_TX_DATA0	0x1b0b0
+			MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1	0x1b0b0
+			MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN	0x1b0b0
+			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
+			MX6QDL_PAD_KEY_COL0__ENET_RX_DATA3	0x1b0b0
+			MX6QDL_PAD_KEY_ROW0__ENET_TX_DATA3	0x1b0b0
+			MX6QDL_PAD_KEY_ROW1__ENET_COL		0x1b0b0
+			MX6QDL_PAD_KEY_COL2__ENET_RX_DATA2	0x1b0b0
+			MX6QDL_PAD_KEY_ROW2__ENET_TX_DATA2	0x1b0b0
+			MX6QDL_PAD_KEY_COL3__ENET_CRS		0x1b0b0
+			MX6QDL_PAD_GPIO_18__ENET_RX_CLK		0x1b0b0
+			MX6QDL_PAD_GPIO_19__ENET_TX_ER		0x1b0b0
+		>;
+	};
+
+	pinctrl_gpmi_nand: gpmigrp {
+		fsl,pins = <
+			MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
+			MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
+			MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
+			MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
+			MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
+			MX6QDL_PAD_NANDF_CS1__NAND_CE1_B	0xb0b1
+			MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
+			MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
+			MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
+			MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
+			MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
+			MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
+			MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
+			MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
+			MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
+			MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
+			MX6QDL_PAD_SD4_DAT0__NAND_DQS		0x00b1
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
+			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D24__UART3_TX_DATA	0x1b0b1
+			MX6QDL_PAD_EIM_D25__UART3_RX_DATA	0x1b0b1
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x17059
+			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x10059
+			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x17059
+			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17059
+			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17059
+			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17059
+			MX6QDL_PAD_CSI0_DAT4__GPIO5_IO22	0x80000000 /* CD */
+		>;
+	};
+};
+
 &ocotp {
 	barebox,provide-mac-address = <&fec 0x620>;
 };
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
