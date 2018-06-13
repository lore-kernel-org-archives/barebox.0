Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fT3du-0003QJ-S2
 for barebox@lists.infradead.org; Wed, 13 Jun 2018 11:08:59 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 13 Jun 2018 13:08:33 +0200
Message-Id: <20180613110833.19760-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] ARM: i.MX6SX SDB: drop deprecated DT overwrites
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Latest kernel ./dts/ is providing proper pin and fec
configs. This overwrites are preventing kernel from
net boot if barebox is DT source.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/imx6sx-sdb.dts | 58 -------------------------------------
 1 file changed, 58 deletions(-)

diff --git a/arch/arm/dts/imx6sx-sdb.dts b/arch/arm/dts/imx6sx-sdb.dts
index 7b60f9326..643039f4a 100644
--- a/arch/arm/dts/imx6sx-sdb.dts
+++ b/arch/arm/dts/imx6sx-sdb.dts
@@ -19,31 +19,6 @@
 	};
 };
 
-&fec1 {
-	phy-handle = <&phy1>;
-
-	mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		phy1: phy@1 {
-			reg = <1>;
-		};
-
-		phy2: phy@2 {
-			reg = <2>;
-		};
-	};
-};
-
-&fec2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_enet2>;
-	phy-mode = "rgmii";
-	status = "okay";
-	phy-handle = <&phy2>;
-};
-
 &ocotp {
 	barebox,provide-mac-address = <&fec1 0x620 &fec2 0x632>;
 };
@@ -57,36 +32,3 @@
 		reg = <0xe0000 0x20000>;
 	};
 };
-
-&iomuxc {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_hog>;
-
-	imx6x-sdb {
-		pinctrl_hog: hoggrp {
-			fsl,pins = <
-				MX6SX_PAD_QSPI1A_DATA0__GPIO4_IO_16	0x17059 /* PERI_3V3 */
-				MX6SX_PAD_ENET2_COL__GPIO2_IO_6		0x17059 /* ENET PHY Power */
-				MX6SX_PAD_ENET2_CRS__GPIO2_IO_7		0x17059 /* AR8031 PHY Reset. */
-				MX6SX_PAD_ENET2_RX_CLK__ENET2_REF_CLK_25M	0x17059 /* Phy 25M Clock */
-			>;
-		};
-
-		pinctrl_enet2: enet2grp {
-			fsl,pins = <
-				MX6SX_PAD_RGMII2_TXC__ENET2_RGMII_TXC	0xa0b1
-				MX6SX_PAD_RGMII2_TD0__ENET2_TX_DATA_0	0xa0b1
-				MX6SX_PAD_RGMII2_TD1__ENET2_TX_DATA_1	0xa0b1
-				MX6SX_PAD_RGMII2_TD2__ENET2_TX_DATA_2	0xa0b1
-				MX6SX_PAD_RGMII2_TD3__ENET2_TX_DATA_3	0xa0b1
-				MX6SX_PAD_RGMII2_TX_CTL__ENET2_TX_EN	0xa0b1
-				MX6SX_PAD_RGMII2_RXC__ENET2_RX_CLK	0x3081
-				MX6SX_PAD_RGMII2_RD0__ENET2_RX_DATA_0	0x3081
-				MX6SX_PAD_RGMII2_RD1__ENET2_RX_DATA_1	0x3081
-				MX6SX_PAD_RGMII2_RD2__ENET2_RX_DATA_2	0x3081
-				MX6SX_PAD_RGMII2_RD3__ENET2_RX_DATA_3	0x3081
-				MX6SX_PAD_RGMII2_RX_CTL__ENET2_RX_EN	0x3081
-			>;
-		};
-	};
-};
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
