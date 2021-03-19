Delivery-date: Fri, 19 Mar 2021 14:12:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNEv9-0007Rd-BL
	for lore@lore.pengutronix.de; Fri, 19 Mar 2021 14:12:07 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNEv6-0006x8-Gf
	for lore@pengutronix.de; Fri, 19 Mar 2021 14:12:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8XOLsdEAWUFN3NlCY62b4djtITiyja4PsVY5nf2CNUg=; b=a24Lu+h5QFf7vvnw85qq3ENJi
	Is7IpULe7uzSMM7zcCgDMfuxHRCnCpvAn04c6vkMD8idPCobZUSKXLxpZ7ujzhi0oH5McSkaLaQic
	tQGnqQ93JI300brV5/TJGaxTjuP/flfITNe0+LfOu/cvAYaaQHrC7GSy4xF8zxr4LCcz2OoIHMOKL
	080Fb6/P28EQExzEPNL1ppc9kb/GIqLNwgQG1qdnpYrbWpebAzgqx6DeRmTNhmIhAiBLlBV2kTeK8
	zu6KVJYW71c7Xh5piilfCb00eGNpHz019sSctpz4a8IFmtv7lsw0IlK8TzcnxkHeZbaZ2n9nBLseL
	EkjbyEH9g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNEtl-007SFs-7R; Fri, 19 Mar 2021 13:10:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNEtP-007SAk-7z
 for barebox@lists.infradead.org; Fri, 19 Mar 2021 13:10:24 +0000
Received: from [2a0a:edc0:0:c01:1d::a2]
 (helo=drehscheibe.grey.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtN-0006KG-BR; Fri, 19 Mar 2021 14:10:17 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtM-0000yv-Ca; Fri, 19 Mar 2021 14:10:16 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtM-00AxY2-Bf; Fri, 19 Mar 2021 14:10:16 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: m.tretter@pengutronix.de
Date: Fri, 19 Mar 2021 14:10:11 +0100
Message-Id: <20210319131016.2612134-3-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210319131016.2612134-1-m.tretter@pengutronix.de>
References: <20210319131016.2612134-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_131019_445703_4C27F644 
X-CRM114-Status: GOOD (  16.09  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/7] net: phy: dp83867: fix checkpatch checks and warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Mostly indentation changes to make checkpatch happy and make the code a
bit easier to the eyes.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/net/phy/dp83867.c | 75 +++++++++++++++++++--------------------
 1 file changed, 37 insertions(+), 38 deletions(-)

diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
index 153b60def320..deee7e3ae7ca 100644
--- a/drivers/net/phy/dp83867.c
+++ b/drivers/net/phy/dp83867.c
@@ -111,7 +111,7 @@ struct dp83867_private {
 
 static int dp83867_config_port_mirroring(struct phy_device *phydev)
 {
-	struct dp83867_private *dp83867 = (struct dp83867_private *)phydev->priv;
+	struct dp83867_private *dp83867 = phydev->priv;
 	u16 val;
 
 	val = phy_read_mmd_indirect(phydev, DP83867_CFG4, DP83867_DEVADDR);
@@ -146,18 +146,18 @@ static int dp83867_of_init(struct phy_device *phydev)
 
 	dp83867->rxctrl_strap_quirk =
 			of_property_read_bool(of_node,
-					"ti,dp83867-rxctrl-strap-quirk");
+					      "ti,dp83867-rxctrl-strap-quirk");
 
 	ret = of_property_read_u32(of_node, "ti,rx-internal-delay",
-			&dp83867->rx_id_delay);
+				   &dp83867->rx_id_delay);
 	if (ret && (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
-			phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID))
+		    phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID))
 		return ret;
 
 	ret = of_property_read_u32(of_node, "ti,tx-internal-delay",
-			&dp83867->tx_id_delay);
+				   &dp83867->tx_id_delay);
 	if (ret && (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
-			phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID))
+		    phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID))
 		return ret;
 
 	if (of_property_read_bool(of_node, "enet-phy-lane-swap"))
@@ -167,13 +167,13 @@ static int dp83867_of_init(struct phy_device *phydev)
 		dp83867->port_mirroring = DP83867_PORT_MIRROING_DIS;
 
 	return of_property_read_u32(of_node, "ti,fifo-depth",
-			&dp83867->fifo_depth);
+				    &dp83867->fifo_depth);
 }
 
 static inline bool phy_interface_is_sgmii(struct phy_device *phydev)
 {
 	return phydev->interface == PHY_INTERFACE_MODE_SGMII ||
-			phydev->interface == PHY_INTERFACE_MODE_QSGMII;
+	       phydev->interface == PHY_INTERFACE_MODE_QSGMII;
 }
 
 static int dp83867_config_init(struct phy_device *phydev)
@@ -192,7 +192,7 @@ static int dp83867_config_init(struct phy_device *phydev)
 		if (ret)
 			return ret;
 	} else {
-		dp83867 = (struct dp83867_private *)phydev->priv;
+		dp83867 = phydev->priv;
 	}
 
 	/* Restart the PHY.  */
@@ -201,22 +201,21 @@ static int dp83867_config_init(struct phy_device *phydev)
 
 	if (dp83867->rxctrl_strap_quirk) {
 		val = phy_read_mmd_indirect(phydev, DP83867_CFG4,
-				DP83867_DEVADDR);
+					    DP83867_DEVADDR);
 		val &= ~BIT(7);
-		phy_write_mmd_indirect(phydev, DP83867_CFG4, DP83867_DEVADDR,
-				val);
+		phy_write_mmd_indirect(phydev, DP83867_CFG4,
+				       DP83867_DEVADDR, val);
 	}
 
 	if (phy_interface_is_rgmii(phydev)) {
 		val = DP83867_MDI_CROSSOVER_AUTO << DP83867_MDI_CROSSOVER |
-			dp83867->fifo_depth << DP83867_PHYCR_FIFO_DEPTH_SHIFT;
+		      dp83867->fifo_depth << DP83867_PHYCR_FIFO_DEPTH_SHIFT;
 		ret = phy_write(phydev, MII_DP83867_PHYCTRL, val);
 		if (ret)
 			return ret;
 	} else if (phy_interface_is_sgmii(phydev)) {
-		phy_write(phydev, MII_BMCR, BMCR_ANENABLE |
-				BMCR_FULLDPLX |
-				BMCR_SPEED1000);
+		phy_write(phydev, MII_BMCR,
+			  BMCR_ANENABLE | BMCR_FULLDPLX | BMCR_SPEED1000);
 
 		cfg2 = phy_read(phydev, MII_DP83867_CFG2);
 		cfg2 &= MII_DP83867_CFG2_MASK;
@@ -229,12 +228,12 @@ static int dp83867_config_init(struct phy_device *phydev)
 		phy_write(phydev, MII_DP83867_CFG2, cfg2);
 
 		phy_write_mmd_indirect(phydev, DP83867_RGMIICTL,
-				DP83867_DEVADDR, 0x0);
+				       DP83867_DEVADDR, 0x0);
 
 		val = DP83867_PHYCTRL_SGMIIEN |
-			DP83867_MDI_CROSSOVER_MDIX << DP83867_MDI_CROSSOVER |
-			dp83867->fifo_depth << DP83867_PHYCTRL_RXFIFO_SHIFT |
-			dp83867->fifo_depth << DP83867_PHYCTRL_TXFIFO_SHIFT;
+		      DP83867_MDI_CROSSOVER_MDIX << DP83867_MDI_CROSSOVER |
+		      dp83867->fifo_depth << DP83867_PHYCTRL_RXFIFO_SHIFT |
+		      dp83867->fifo_depth << DP83867_PHYCTRL_TXFIFO_SHIFT;
 
 		phy_write(phydev, MII_DP83867_PHYCTRL, val);
 		phy_write(phydev, MII_DP83867_BISCR, 0x0);
@@ -242,12 +241,12 @@ static int dp83867_config_init(struct phy_device *phydev)
 
 	if (phy_interface_is_rgmii(phydev)) {
 		val = phy_read_mmd_indirect(phydev, DP83867_RGMIICTL,
-				DP83867_DEVADDR);
+					    DP83867_DEVADDR);
 
 		switch (phydev->interface) {
 		case PHY_INTERFACE_MODE_RGMII_ID:
-			val |= (DP83867_RGMII_TX_CLK_DELAY_EN
-					| DP83867_RGMII_RX_CLK_DELAY_EN);
+			val |= DP83867_RGMII_TX_CLK_DELAY_EN |
+			       DP83867_RGMII_RX_CLK_DELAY_EN;
 			break;
 		case PHY_INTERFACE_MODE_RGMII_TXID:
 			val |= DP83867_RGMII_TX_CLK_DELAY_EN;
@@ -259,23 +258,23 @@ static int dp83867_config_init(struct phy_device *phydev)
 			break;
 		}
 		phy_write_mmd_indirect(phydev, DP83867_RGMIICTL,
-				DP83867_DEVADDR, val);
+				       DP83867_DEVADDR, val);
 
 		delay = (dp83867->rx_id_delay |
 			(dp83867->tx_id_delay << DP83867_RGMII_TX_CLK_DELAY_SHIFT));
 
 		phy_write_mmd_indirect(phydev, DP83867_RGMIIDCTL,
-				DP83867_DEVADDR, delay);
+				       DP83867_DEVADDR, delay);
 
 		if (dp83867->io_impedance >= 0) {
 			val = phy_read_mmd_indirect(phydev, DP83867_IO_MUX_CFG,
-					DP83867_DEVADDR);
+						    DP83867_DEVADDR);
 			val &= ~DP83867_IO_MUX_CFG_IO_IMPEDANCE_CTRL;
-			val |= dp83867->io_impedance
-					& DP83867_IO_MUX_CFG_IO_IMPEDANCE_CTRL;
+			val |= (dp83867->io_impedance &
+				DP83867_IO_MUX_CFG_IO_IMPEDANCE_CTRL);
 
 			phy_write_mmd_indirect(phydev, DP83867_IO_MUX_CFG,
-					DP83867_DEVADDR, val);
+					       DP83867_DEVADDR, val);
 		}
 	}
 
@@ -290,17 +289,17 @@ static int dp83867_config_init(struct phy_device *phydev)
 }
 
 static struct phy_driver dp83867_driver[] = {
-		{
-			.phy_id = DP83867_PHY_ID,
-			.phy_id_mask = 0xfffffff0,
-			.drv.name = "TI DP83867",
-			.features = PHY_GBIT_FEATURES,
+	{
+		.phy_id = DP83867_PHY_ID,
+		.phy_id_mask = 0xfffffff0,
+		.drv.name = "TI DP83867",
+		.features = PHY_GBIT_FEATURES,
 
-			.config_init = dp83867_config_init,
+		.config_init = dp83867_config_init,
 
-			.config_aneg = genphy_config_aneg,
-			.read_status = genphy_read_status,
-		},
+		.config_aneg = genphy_config_aneg,
+		.read_status = genphy_read_status,
+	},
 };
 
 device_phy_drivers(dp83867_driver);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

