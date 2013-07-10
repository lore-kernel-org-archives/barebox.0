Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uwu0a-0003uB-V4
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 13:00:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 15:00:11 +0200
Message-Id: <1373461212-19036-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373461212-19036-1-git-send-email-s.hauer@pengutronix.de>
References: <1373461212-19036-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: dts: Add more pinctrl groups for i.MX6q
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6q.dtsi | 47 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm/dts/imx6q.dtsi b/arch/arm/dts/imx6q.dtsi
index 21e6758..fa8dd43 100644
--- a/arch/arm/dts/imx6q.dtsi
+++ b/arch/arm/dts/imx6q.dtsi
@@ -104,6 +104,14 @@
 							MX6Q_PAD_EIM_D16__ECSPI1_SCLK 0x100b1
 						>;
 					};
+
+					pinctrl_ecspi1_2: ecspi1grp-2 {
+						fsl,pins = <
+							MX6Q_PAD_KEY_COL1__ECSPI1_MISO 0x100b1
+							MX6Q_PAD_KEY_ROW0__ECSPI1_MOSI 0x100b1
+							MX6Q_PAD_KEY_COL0__ECSPI1_SCLK 0x100b1
+						>;
+					};
 				};
 
 				ecspi3 {
@@ -157,6 +165,27 @@
 							MX6Q_PAD_RGMII_RX_CTL__RGMII_RX_CTL 0x1b0b0
 						>;
 					};
+
+					pinctrl_enet_3: enetgrp-3 {
+						fsl,pins = <
+							MX6Q_PAD_ENET_MDIO__ENET_MDIO       0x1b0b0
+							MX6Q_PAD_ENET_MDC__ENET_MDC         0x1b0b0
+							MX6Q_PAD_RGMII_TXC__RGMII_TXC       0x1b0b0
+							MX6Q_PAD_RGMII_TD0__RGMII_TD0       0x1b0b0
+							MX6Q_PAD_RGMII_TD1__RGMII_TD1       0x1b0b0
+							MX6Q_PAD_RGMII_TD2__RGMII_TD2       0x1b0b0
+							MX6Q_PAD_RGMII_TD3__RGMII_TD3       0x1b0b0
+							MX6Q_PAD_RGMII_TX_CTL__RGMII_TX_CTL 0x1b0b0
+							MX6Q_PAD_ENET_REF_CLK__ENET_TX_CLK  0x1b0b0
+							MX6Q_PAD_RGMII_RXC__RGMII_RXC       0x1b0b0
+							MX6Q_PAD_RGMII_RD0__RGMII_RD0       0x1b0b0
+							MX6Q_PAD_RGMII_RD1__RGMII_RD1       0x1b0b0
+							MX6Q_PAD_RGMII_RD2__RGMII_RD2       0x1b0b0
+							MX6Q_PAD_RGMII_RD3__RGMII_RD3       0x1b0b0
+							MX6Q_PAD_RGMII_RX_CTL__RGMII_RX_CTL 0x1b0b0
+							MX6Q_PAD_ENET_TX_EN__ENET_TX_EN     0x1b0b0
+						>;
+					};
 				};
 
 				gpmi-nand {
@@ -192,6 +221,13 @@
 							MX6Q_PAD_EIM_D28__I2C1_SDA 0x4001b8b1
 						>;
 					};
+
+					pinctrl_i2c1_2: i2c1grp-2 {
+						fsl,pins = <
+							MX6Q_PAD_CSI0_DAT8__I2C1_SDA 0x4001b8b1
+							MX6Q_PAD_CSI0_DAT9__I2C1_SCL 0x4001b8b1
+						>;
+					};
 				};
 
 				i2c2 {
@@ -268,6 +304,17 @@
 							MX6Q_PAD_NANDF_D7__SD2_DATA7 0x17059
 						>;
 					};
+
+					pinctrl_usdhc2_2: usdhc2grp-2 {
+						fsl,pins = <
+							MX6Q_PAD_SD2_CMD__SD2_CMD    0x17059
+							MX6Q_PAD_SD2_CLK__SD2_CLK    0x10059
+							MX6Q_PAD_SD2_DAT0__SD2_DATA0 0x17059
+							MX6Q_PAD_SD2_DAT1__SD2_DATA1 0x17059
+							MX6Q_PAD_SD2_DAT2__SD2_DATA2 0x17059
+							MX6Q_PAD_SD2_DAT3__SD2_DATA3 0x17059
+						>;
+					};
 				};
 
 				usdhc3 {
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
