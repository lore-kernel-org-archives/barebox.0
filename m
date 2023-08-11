Delivery-date: Fri, 11 Aug 2023 12:28:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUPNk-00GSeC-Hm
	for lore@lore.pengutronix.de; Fri, 11 Aug 2023 12:28:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUPNi-0007Zb-BB
	for lore@pengutronix.de; Fri, 11 Aug 2023 12:28:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=65o6MrzsUj8g3nlXNP+osbZrnVJ5S0Qy+pLH4XjZ+WM=; b=ljhUxY2pbO/D4R6pYSWp/Sn7Cj
	2Eq8yUp2uM74PUlgGkBuDXkskpnCqwlxGamBgepxz1aBQZb2fX78XY+eKlPbaT3NKcyH1uJDviL8M
	A+20tk8q5UkHFAlfm+rZUjL9I34NRVUb1u2h55tRK1g/GPWfvskI+kHABxf+e8vADHY/sM3hJHqr4
	efM2OHg3I8nJlIjcMGhLouSVs6qLImWWbN8Q0ivkwQQwdjrZZ3PfW3Outw6n98+bx2v7i9SrFV34k
	GZjc9/OVQyP3JCjhiq+o2xzO9bDLlugZVKWTKlmz76ethGbwbs4tFfnStx4yclch6C1FCTQ03QGwx
	NBnyn/Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUPMb-00ADOe-1v;
	Fri, 11 Aug 2023 10:27:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUPMI-00AD0l-1D
	for barebox@lists.infradead.org;
	Fri, 11 Aug 2023 10:27:13 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qUPME-00073K-5w
	for barebox@lists.infradead.org; Fri, 11 Aug 2023 12:27:02 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 11 Aug 2023 12:26:53 +0200
Message-Id: <20230811102657.271931-7-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230811102657.271931-1-m.felsch@pengutronix.de>
References: <20230811102657.271931-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_032706_780828_84434D36 
X-CRM114-Status: GOOD (  15.79  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 07/11] net: phy: replace phy_{write,read,modify}_mmd_indirect with phy_{write,read,modify}_mmd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make use of the phy_{write,read,modify}_mmd API to align the code with
Linux. This also fixes the r8169 driver since this driver did not adapt
the parameters while porting from Linux.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- replace phy_*_mmd_indirect with phy_*_mmd

 arch/arm/boards/datamodul-edm-qmx6/board.c   |  6 +--
 arch/arm/boards/embest-marsboard/board.c     |  6 +--
 arch/arm/boards/terasic-de0-nano-soc/board.c |  6 +--
 arch/arm/boards/terasic-de10-nano/board.c    |  6 +--
 arch/arm/boards/tqma6x/board.c               |  6 +--
 drivers/net/phy/at803x.c                     |  4 +-
 drivers/net/phy/dp83867.c                    | 35 ++++++--------
 drivers/net/phy/micrel.c                     | 50 +++++++++-----------
 drivers/net/r8169_phy_config.c               |  2 +-
 9 files changed, 56 insertions(+), 65 deletions(-)

diff --git a/arch/arm/boards/datamodul-edm-qmx6/board.c b/arch/arm/boards/datamodul-edm-qmx6/board.c
index 366b64d35aca..3ef28ac2da30 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/board.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/board.c
@@ -49,9 +49,9 @@ static int ksz9031rn_phy_fixup(struct phy_device *dev)
 	 * min rx data delay, max rx/tx clock delay,
 	 * min rx/tx control delay
 	 */
-	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
-	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
-	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x03ff);
+	phy_write_mmd(dev, MDIO_MMD_WIS, 4, 0);
+	phy_write_mmd(dev, MDIO_MMD_WIS, 5, 0);
+	phy_write_mmd(dev, MDIO_MMD_WIS, 8, 0x03ff);
 
 	return 0;
 }
diff --git a/arch/arm/boards/embest-marsboard/board.c b/arch/arm/boards/embest-marsboard/board.c
index 7274595e2a76..1a5e5a84918f 100644
--- a/arch/arm/boards/embest-marsboard/board.c
+++ b/arch/arm/boards/embest-marsboard/board.c
@@ -20,13 +20,13 @@ static int ar8035_phy_fixup(struct phy_device *dev)
 	/* Ar803x phy SmartEEE feature cause link status generates glitch,
 	 * which cause ethernet link down/up issue, so disable SmartEEE
 	 */
-	val = phy_read_mmd_indirect(dev, 0x805d, MDIO_MMD_PCS);
+	val = phy_read_mmd(dev, MDIO_MMD_PCS, 0x805d);
 	phy_write(dev, MII_MMD_DATA, val & ~(1 << 8));
 
-	val = phy_read_mmd_indirect(dev, 0x4003, MDIO_MMD_PCS);
+	val = phy_read_mmd(dev, MDIO_MMD_PCS, 0x4003);
 	phy_write(dev, MII_MMD_DATA, val & ~(1 << 8));
 
-	val = phy_read_mmd_indirect(dev, 0x4007, MDIO_MMD_PCS);
+	val = phy_read_mmd(dev, MDIO_MMD_PCS, 0x4007);
 	val &= 0xffe3;
 	val |= 0x18;
 	phy_write(dev, MII_MMD_DATA, val);
diff --git a/arch/arm/boards/terasic-de0-nano-soc/board.c b/arch/arm/boards/terasic-de0-nano-soc/board.c
index 832160c595fa..b4502f552a74 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/board.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/board.c
@@ -19,9 +19,9 @@ static int phy_fixup(struct phy_device *dev)
 	 * min rx data delay, max rx/tx clock delay,
 	 * min rx/tx control delay
 	 */
-	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
-	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
-	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x003ff);
+	phy_write_mmd(dev, MDIO_MMD_WIS, 4, 0);
+	phy_write_mmd(dev, MDIO_MMD_WIS, 5, 0);
+	phy_write_mmd(dev, MDIO_MMD_WIS, 8, 0x003ff);
 	return 0;
 }
 
diff --git a/arch/arm/boards/terasic-de10-nano/board.c b/arch/arm/boards/terasic-de10-nano/board.c
index e47d9ac841d1..e553e26da841 100644
--- a/arch/arm/boards/terasic-de10-nano/board.c
+++ b/arch/arm/boards/terasic-de10-nano/board.c
@@ -19,9 +19,9 @@ static int phy_fixup(struct phy_device *dev)
 	 * min rx data delay, max rx/tx clock delay,
 	 * min rx/tx control delay
 	 */
-	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
-	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
-	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x003ff);
+	phy_write_mmd(dev, MDIO_MMD_WIS, 4, 0);
+	phy_write_mmd(dev, MDIO_MMD_WIS, 5, 0);
+	phy_write_mmd(dev, MDIO_MMD_WIS, 8, 0x003ff);
 	return 0;
 }
 
diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
index 8a91ad652a98..d8d6204f0a0a 100644
--- a/arch/arm/boards/tqma6x/board.c
+++ b/arch/arm/boards/tqma6x/board.c
@@ -47,9 +47,9 @@ static int ksz9031rn_phy_fixup(struct phy_device *dev)
 	 * min rx data delay, max rx/tx clock delay,
 	 * min rx/tx control delay
 	 */
-	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
-	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
-	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x003ff);
+	phy_write_mmd(dev, MDIO_MMD_WIS, 4, 0);
+	phy_write_mmd(dev, MDIO_MMD_WIS, 5, 0);
+	phy_write_mmd(dev, MDIO_MMD_WIS, 8, 0x003ff);
 
 	return 0;
 }
diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
index 18182bffc299..f0a14799234b 100644
--- a/drivers/net/phy/at803x.c
+++ b/drivers/net/phy/at803x.c
@@ -229,14 +229,14 @@ static int at803x_clk_out_config(struct phy_device *phydev)
 	if (!priv->clk_25m_mask)
 		return 0;
 
-	val = phy_read_mmd_indirect(phydev, AT803X_MMD7_CLK25M, MDIO_MMD_AN);
+	val = phy_read_mmd(phydev, MDIO_MMD_AN, AT803X_MMD7_CLK25M);
 	if (val < 0)
 		return val;
 
 	val &= ~priv->clk_25m_mask;
 	val |= priv->clk_25m_reg;
 
-	phy_write_mmd_indirect(phydev, AT803X_MMD7_CLK25M, MDIO_MMD_AN, val);
+	phy_write_mmd(phydev, MDIO_MMD_AN, AT803X_MMD7_CLK25M, val);
 
 	return 0;
 }
diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
index d8109172dfa5..d8185940146c 100644
--- a/drivers/net/phy/dp83867.c
+++ b/drivers/net/phy/dp83867.c
@@ -154,14 +154,14 @@ static int dp83867_config_port_mirroring(struct phy_device *phydev)
 	struct dp83867_private *dp83867 = phydev->priv;
 	u16 val;
 
-	val = phy_read_mmd_indirect(phydev, DP83867_CFG4, DP83867_DEVADDR);
+	val = phy_read_mmd(phydev, DP83867_DEVADDR, DP83867_CFG4);
 
 	if (dp83867->port_mirroring == DP83867_PORT_MIRROING_EN)
 		val |= DP83867_CFG4_PORT_MIRROR_EN;
 	else
 		val &= ~DP83867_CFG4_PORT_MIRROR_EN;
 
-	phy_write_mmd_indirect(phydev, DP83867_CFG4, DP83867_DEVADDR, val);
+	phy_write_mmd(phydev, DP83867_DEVADDR, DP83867_CFG4, val);
 
 	return 0;
 }
@@ -256,11 +256,9 @@ static int dp83867_config_init(struct phy_device *phydev)
 	phy_write(phydev, DP83867_CTRL, val | DP83867_SW_RESTART);
 
 	if (dp83867->rxctrl_strap_quirk) {
-		val = phy_read_mmd_indirect(phydev, DP83867_CFG4,
-					    DP83867_DEVADDR);
+		val = phy_read_mmd(phydev, DP83867_DEVADDR, DP83867_CFG4);
 		val &= ~BIT(7);
-		phy_write_mmd_indirect(phydev, DP83867_CFG4,
-				       DP83867_DEVADDR, val);
+		phy_write_mmd(phydev, DP83867_DEVADDR, DP83867_CFG4, val);
 	}
 
 	if (phy_interface_is_rgmii(phydev)) {
@@ -270,8 +268,7 @@ static int dp83867_config_init(struct phy_device *phydev)
 		if (ret)
 			return ret;
 
-		val = phy_read_mmd_indirect(phydev, DP83867_RGMIICTL,
-					    DP83867_DEVADDR);
+		val = phy_read_mmd(phydev, DP83867_DEVADDR, DP83867_RGMIICTL);
 
 		switch (phydev->interface) {
 		case PHY_INTERFACE_MODE_RGMII_ID:
@@ -287,31 +284,29 @@ static int dp83867_config_init(struct phy_device *phydev)
 		default:
 			break;
 		}
-		phy_write_mmd_indirect(phydev, DP83867_RGMIICTL,
-				       DP83867_DEVADDR, val);
+		phy_write_mmd(phydev, DP83867_DEVADDR, DP83867_RGMIICTL, val);
 
 		delay = (dp83867->rx_id_delay |
 			(dp83867->tx_id_delay << DP83867_RGMII_TX_CLK_DELAY_SHIFT));
 
-		phy_write_mmd_indirect(phydev, DP83867_RGMIIDCTL,
-				       DP83867_DEVADDR, delay);
+		phy_write_mmd(phydev, DP83867_DEVADDR,
+			      DP83867_RGMIIDCTL, delay);
 
 		if (dp83867->io_impedance >= 0) {
-			val = phy_read_mmd_indirect(phydev, DP83867_IO_MUX_CFG,
-						    DP83867_DEVADDR);
+			val = phy_read_mmd(phydev, DP83867_DEVADDR,
+					   DP83867_IO_MUX_CFG);
 			val &= ~DP83867_IO_MUX_CFG_IO_IMPEDANCE_CTRL;
 			val |= (dp83867->io_impedance &
 				DP83867_IO_MUX_CFG_IO_IMPEDANCE_CTRL);
 
-			phy_write_mmd_indirect(phydev, DP83867_IO_MUX_CFG,
-					       DP83867_DEVADDR, val);
+			phy_write_mmd(phydev, DP83867_DEVADDR,
+				      DP83867_IO_MUX_CFG, val);
 		}
 	} else if (phy_interface_is_sgmii(phydev)) {
 		phy_write(phydev, MII_BMCR,
 			  BMCR_ANENABLE | BMCR_FULLDPLX | BMCR_SPEED1000);
 
-		phy_write_mmd_indirect(phydev, DP83867_RGMIICTL,
-				       DP83867_DEVADDR, 0x0);
+		phy_write_mmd(phydev, DP83867_DEVADDR, DP83867_RGMIICTL, 0x0);
 
 		val = DP83867_PHYCTRL_SGMIIEN |
 		      DP83867_MDI_CROSSOVER_MDIX << DP83867_MDI_CROSSOVER |
@@ -341,8 +336,8 @@ static int dp83867_config_init(struct phy_device *phydev)
 				DP83867_IO_MUX_CFG_CLK_O_SEL_SHIFT;
 		}
 
-		phy_modify_mmd_indirect(phydev, DP83867_IO_MUX_CFG,
-				DP83867_DEVADDR, mask, val);
+		phy_modify_mmd(phydev, DP83867_DEVADDR,
+			       DP83867_IO_MUX_CFG, mask, val);
 	}
 
 	return 0;
diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 02d474c44250..36cc857a2c36 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -387,7 +387,7 @@ static int ksz9031_of_load_skew_values(struct phy_device *phydev,
 		return 0;
 
 	if (matches < numfields)
-		newval = phy_read_mmd_indirect(phydev, reg, MDIO_MMD_WIS);
+		newval = phy_read_mmd(phydev, MDIO_MMD_WIS, reg);
 	else
 		newval = 0;
 
@@ -401,15 +401,15 @@ static int ksz9031_of_load_skew_values(struct phy_device *phydev,
 				<< (field_sz * i));
 		}
 
-	phy_write_mmd_indirect(phydev, reg, MDIO_MMD_WIS, newval);
+	phy_write_mmd(phydev, MDIO_MMD_WIS, reg, newval);
 	return 0;
 }
 
 static int ksz9031_center_flp_timing(struct phy_device *phydev)
 {
 	/* Center KSZ9031RNX FLP timing at 16ms. */
-	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_FLP_BURST_TX_HI, 0, 0x0006);
-	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_FLP_BURST_TX_LO, 0, 0x1a80);
+	phy_write_mmd(phydev, 0, MII_KSZ9031RN_FLP_BURST_TX_HI, 0x0006);
+	phy_write_mmd(phydev, 0, MII_KSZ9031RN_FLP_BURST_TX_LO, 0x1a80);
 
 	return genphy_restart_aneg(phydev);
 }
@@ -447,29 +447,25 @@ static int ksz9031_config_rgmii_delay(struct phy_device *phydev)
 		return 0;
 	}
 
-	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_CONTROL_PAD_SKEW,
-			       MDIO_MMD_WIS,
-			       FIELD_PREP(MII_KSZ9031RN_RX_CTL_M, rx) |
-			       FIELD_PREP(MII_KSZ9031RN_TX_CTL_M, tx));
-
-	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_RX_DATA_PAD_SKEW,
-			       MDIO_MMD_WIS,
-			       FIELD_PREP(MII_KSZ9031RN_RXD3, rx) |
-			       FIELD_PREP(MII_KSZ9031RN_RXD2, rx) |
-			       FIELD_PREP(MII_KSZ9031RN_RXD1, rx) |
-			       FIELD_PREP(MII_KSZ9031RN_RXD0, rx));
-
-	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_TX_DATA_PAD_SKEW,
-			       MDIO_MMD_WIS,
-			       FIELD_PREP(MII_KSZ9031RN_TXD3, tx) |
-			       FIELD_PREP(MII_KSZ9031RN_TXD2, tx) |
-			       FIELD_PREP(MII_KSZ9031RN_TXD1, tx) |
-			       FIELD_PREP(MII_KSZ9031RN_TXD0, tx));
-
-	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_CLK_PAD_SKEW,
-			       MDIO_MMD_WIS,
-			       FIELD_PREP(MII_KSZ9031RN_GTX_CLK, tx_clk) |
-			       FIELD_PREP(MII_KSZ9031RN_RX_CLK, rx_clk));
+	phy_write_mmd(phydev, MDIO_MMD_WIS, MII_KSZ9031RN_CONTROL_PAD_SKEW,
+		      FIELD_PREP(MII_KSZ9031RN_RX_CTL_M, rx) |
+		      FIELD_PREP(MII_KSZ9031RN_TX_CTL_M, tx));
+
+	phy_write_mmd(phydev, MDIO_MMD_WIS, MII_KSZ9031RN_RX_DATA_PAD_SKEW,
+		      FIELD_PREP(MII_KSZ9031RN_RXD3, rx) |
+		      FIELD_PREP(MII_KSZ9031RN_RXD2, rx) |
+		      FIELD_PREP(MII_KSZ9031RN_RXD1, rx) |
+		      FIELD_PREP(MII_KSZ9031RN_RXD0, rx));
+
+	phy_write_mmd(phydev, MDIO_MMD_WIS, MII_KSZ9031RN_TX_DATA_PAD_SKEW,
+		      FIELD_PREP(MII_KSZ9031RN_TXD3, tx) |
+		      FIELD_PREP(MII_KSZ9031RN_TXD2, tx) |
+		      FIELD_PREP(MII_KSZ9031RN_TXD1, tx) |
+		      FIELD_PREP(MII_KSZ9031RN_TXD0, tx));
+
+	phy_write_mmd(phydev, MDIO_MMD_WIS, MII_KSZ9031RN_CLK_PAD_SKEW,
+		      FIELD_PREP(MII_KSZ9031RN_GTX_CLK, tx_clk) |
+		      FIELD_PREP(MII_KSZ9031RN_RX_CLK, rx_clk));
 	return 0;
 }
 
diff --git a/drivers/net/r8169_phy_config.c b/drivers/net/r8169_phy_config.c
index 0c34a58b05fc..c57c221e1392 100644
--- a/drivers/net/r8169_phy_config.c
+++ b/drivers/net/r8169_phy_config.c
@@ -574,7 +574,7 @@ static void rtl8168e_1_hw_phy_config(struct rtl8169_private *tp,
 	r8168d_modify_extpage(phydev, 0x0020, 0x15, 0x1100, 0x0000);
 	phy_write_paged(phydev, 0x0006, 0x00, 0x5a00);
 
-	phy_write_mmd_indirect(phydev, MDIO_MMD_AN, MDIO_AN_EEE_ADV, 0x0000);
+	phy_write_mmd(phydev, MDIO_MMD_AN, MDIO_AN_EEE_ADV, 0x0000);
 }
 
 static void rtl8168e_2_hw_phy_config(struct rtl8169_private *tp,
-- 
2.39.2



