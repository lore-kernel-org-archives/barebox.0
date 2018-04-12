Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6Wgh-0007ww-4j
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:30:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:30:15 +0200
Message-Id: <20180412073017.6750-15-s.hauer@pengutronix.de>
In-Reply-To: <20180412073017.6750-1-s.hauer@pengutronix.de>
References: <20180412073017.6750-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/16] ARM: dts: imx6: phyboard-mira: Remove unecessary iomuxc
 subnode
To: Barebox List <barebox@lists.infradead.org>
Cc: Stefan Riedmueller <s.riedmueller@phytec.de>

From: Stefan Riedmueller <s.riedmueller@phytec.de>

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 210 +++++++++++++--------------
 1 file changed, 103 insertions(+), 107 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index 1dd88b5add..c3cfa00ced 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -159,122 +159,118 @@
 };
 
 &iomuxc {
-	pinctrl-names = "default";
-
-	imx6qdl-phytec-phycore-som {
-		pinctrl_ecspi1: ecspi1grp {
-			fsl,pins = <
-				MX6QDL_PAD_EIM_D16__ECSPI1_SCLK		0x100b1
-				MX6QDL_PAD_EIM_D17__ECSPI1_MISO		0x100b1
-				MX6QDL_PAD_EIM_D18__ECSPI1_MOSI		0x100b1
-				MX6QDL_PAD_EIM_D19__GPIO3_IO19		0x80000000
-			>;
-		};
-
-		pinctrl_enet: enetgrp {
-			fsl,pins = <
-				MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
-				MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
-				MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b0b0
-				MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b0b0
-				MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b0b0
-				MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b0b0
-				MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b0b0
-				MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b0b0
-				MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
-				MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b0b0
-				MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b0b0
-				MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b0b0
-				MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b0b0
-				MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b0b0
-				MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b0b0
-				MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN	0x1b0b0
-				MX6QDL_PAD_SD2_DAT1__GPIO1_IO14		0x80000000
-			>;
-		};
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D16__ECSPI1_SCLK		0x100b1
+			MX6QDL_PAD_EIM_D17__ECSPI1_MISO		0x100b1
+			MX6QDL_PAD_EIM_D18__ECSPI1_MOSI		0x100b1
+			MX6QDL_PAD_EIM_D19__GPIO3_IO19		0x80000000
+		>;
+	};
 
-		pinctrl_gpmi_nand: gpmigrp {
-			fsl,pins = <
-				MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
-				MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
-				MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
-				MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
-				MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
-				MX6QDL_PAD_NANDF_CS1__NAND_CE1_B	0xb0b1
-				MX6QDL_PAD_NANDF_CS2__NAND_CE2_B	0xb0b1
-				MX6QDL_PAD_NANDF_CS3__NAND_CE3_B	0xb0b1
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
+	pinctrl_enet: enetgrp {
+		fsl,pins = <
+			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
+			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
+			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b0b0
+			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b0b0
+			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b0b0
+			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b0b0
+			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b0b0
+			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b0b0
+			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
+			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b0b0
+			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b0b0
+			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b0b0
+			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b0b0
+			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b0b0
+			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b0b0
+			MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN	0x1b0b0
+			MX6QDL_PAD_SD2_DAT1__GPIO1_IO14		0x80000000
+		>;
+	};
 
-		pinctrl_i2c3: i2c3grp {
-			fsl,pins = <
-				MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b8b1
-				MX6QDL_PAD_GPIO_5__I2C3_SCL		0x4001b8b1
-			>;
-		};
+	pinctrl_gpmi_nand: gpmigrp {
+		fsl,pins = <
+			MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
+			MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
+			MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
+			MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
+			MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
+			MX6QDL_PAD_NANDF_CS1__NAND_CE1_B	0xb0b1
+			MX6QDL_PAD_NANDF_CS2__NAND_CE2_B	0xb0b1
+			MX6QDL_PAD_NANDF_CS3__NAND_CE3_B	0xb0b1
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
 
-		pinctrl_uart2: uart2grp {
-			fsl,pins = <
-				MX6QDL_PAD_EIM_D26__UART2_TX_DATA	0x1b0b1
-				MX6QDL_PAD_EIM_D27__UART2_RX_DATA	0x1b0b1
-			>;
-		};
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b8b1
+			MX6QDL_PAD_GPIO_5__I2C3_SCL		0x4001b8b1
+		>;
+	};
 
-		pinctrl_usbh1_vbus: usbh1vbusgrp {
-			fsl,pins = <
-				MX6QDL_PAD_EIM_A20__GPIO2_IO18	0xb0b1
-				>;
-		};
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D26__UART2_TX_DATA	0x1b0b1
+			MX6QDL_PAD_EIM_D27__UART2_RX_DATA	0x1b0b1
+		>;
+	};
 
-		pinctrl_usbotg: usbotggrp {
-			fsl,pins = <
-				MX6QDL_PAD_GPIO_1__USB_OTG_ID	0x17059
-				>;
-		};
+	pinctrl_usbh1_vbus: usbh1vbusgrp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_A20__GPIO2_IO18		0xb0b1
+		>;
+	};
 
-		pinctrl_usbotg_vbus: usbotgvbusgrp {
-			fsl,pins = <
-				MX6QDL_PAD_EIM_A19__GPIO2_IO19	0xb0b1
-				>;
-		};
+	pinctrl_usbotg: usbotggrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_1__USB_OTG_ID		0x17059
+		>;
+	};
 
-		pinctrl_usdhc1: usdhc1grp {
-			fsl,pins = <
-				MX6QDL_PAD_SD1_CMD__SD1_CMD		0x170f9
-				MX6QDL_PAD_SD1_CLK__SD1_CLK		0x100f9
-				MX6QDL_PAD_SD1_DAT0__SD1_DATA0		0x170f9
-				MX6QDL_PAD_SD1_DAT1__SD1_DATA1		0x170f9
-				MX6QDL_PAD_SD1_DAT2__SD1_DATA2		0x170f9
-				MX6QDL_PAD_SD1_DAT3__SD1_DATA3		0x170f9
-				MX6QDL_PAD_EIM_BCLK__GPIO6_IO31		0x80000000 /* CD */
+	pinctrl_usbotg_vbus: usbotgvbusgrp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_A19__GPIO2_IO19		0xb0b1
 			>;
-		};
+	};
 
-		pinctrl_usdhc4: usdhc4grp {
-			fsl,pins = <
-				MX6QDL_PAD_SD4_CMD__SD4_CMD		0x17059
-				MX6QDL_PAD_SD4_CLK__SD4_CLK		0x10059
-				MX6QDL_PAD_SD4_DAT0__SD4_DATA0		0x17059
-				MX6QDL_PAD_SD4_DAT1__SD4_DATA1		0x17059
-				MX6QDL_PAD_SD4_DAT2__SD4_DATA2		0x17059
-				MX6QDL_PAD_SD4_DAT3__SD4_DATA3		0x17059
-				MX6QDL_PAD_SD4_DAT4__SD4_DATA4		0x17059
-				MX6QDL_PAD_SD4_DAT5__SD4_DATA5		0x17059
-				MX6QDL_PAD_SD4_DAT6__SD4_DATA6		0x17059
-				MX6QDL_PAD_SD4_DAT7__SD4_DATA7		0x17059
-			>;
-		};
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD1_CMD__SD1_CMD		0x170f9
+			MX6QDL_PAD_SD1_CLK__SD1_CLK		0x100f9
+			MX6QDL_PAD_SD1_DAT0__SD1_DATA0		0x170f9
+			MX6QDL_PAD_SD1_DAT1__SD1_DATA1		0x170f9
+			MX6QDL_PAD_SD1_DAT2__SD1_DATA2		0x170f9
+			MX6QDL_PAD_SD1_DAT3__SD1_DATA3		0x170f9
+			MX6QDL_PAD_EIM_BCLK__GPIO6_IO31		0x80000000 /* CD */
+		>;
+	};
+
+	pinctrl_usdhc4: usdhc4grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD4_CMD__SD4_CMD		0x17059
+			MX6QDL_PAD_SD4_CLK__SD4_CLK		0x10059
+			MX6QDL_PAD_SD4_DAT0__SD4_DATA0		0x17059
+			MX6QDL_PAD_SD4_DAT1__SD4_DATA1		0x17059
+			MX6QDL_PAD_SD4_DAT2__SD4_DATA2		0x17059
+			MX6QDL_PAD_SD4_DAT3__SD4_DATA3		0x17059
+			MX6QDL_PAD_SD4_DAT4__SD4_DATA4		0x17059
+			MX6QDL_PAD_SD4_DAT5__SD4_DATA5		0x17059
+			MX6QDL_PAD_SD4_DAT6__SD4_DATA6		0x17059
+			MX6QDL_PAD_SD4_DAT7__SD4_DATA7		0x17059
+		>;
 	};
 };
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
