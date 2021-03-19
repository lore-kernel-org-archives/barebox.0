Delivery-date: Fri, 19 Mar 2021 14:11:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNEv1-0007PV-NM
	for lore@lore.pengutronix.de; Fri, 19 Mar 2021 14:11:59 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNEuw-0006tF-Io
	for lore@pengutronix.de; Fri, 19 Mar 2021 14:11:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+sYWFn2wC8YHl8iVPrJO2Vxcp4XxhSGhwCwD5DpFlR0=; b=OoiDBgJWv5cEt037yBLkvNWsJ
	qGl79BjR60mb5hCYjSROVztGbnG9CCfhiX2KG1vgzL2OUb9Du0l3WJW0DAih9gTODNAUH9gcoelya
	81Po9NuTrvlp8ex0cQd21TyE7Qh5N9wmAaZ+T8Pmi+6Be9wk2g06YtF4CF3rlESb90cY79qbGoSRi
	1d71jhtZk8KMA6f91LEUpjxXv7eTY5JvszmewxFC/5DWj1Zjct1ET0ZHqKAlsw4ojuJzcX+4mvIg+
	J/x6QgtNQC24TxM4wYHI9e6eGTX6ks9koFZJXMMPUCR0r3duENdWTb3pw8pQljLWbsnFg4AhuKQBT
	Pp9nr1QqQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNEtY-007SE7-SX; Fri, 19 Mar 2021 13:10:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNEtP-007SAm-7P
 for barebox@lists.infradead.org; Fri, 19 Mar 2021 13:10:22 +0000
Received: from [2a0a:edc0:0:c01:1d::a2]
 (helo=drehscheibe.grey.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtN-0006KI-EQ; Fri, 19 Mar 2021 14:10:17 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtM-0000z0-D5; Fri, 19 Mar 2021 14:10:16 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtM-00AxY8-CU; Fri, 19 Mar 2021 14:10:16 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: m.tretter@pengutronix.de
Date: Fri, 19 Mar 2021 14:10:13 +0100
Message-Id: <20210319131016.2612134-5-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210319131016.2612134-1-m.tretter@pengutronix.de>
References: <20210319131016.2612134-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_131019_382051_B90291AA 
X-CRM114-Status: GOOD (  10.42  )
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
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] net: phy: dp83867: simplify dp83867_config_init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>

Reorder the code in dp83867_config_init to remove duplicated check of
the phy interface.

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/net/phy/dp83867.c | 49 ++++++++++++++++++---------------------
 1 file changed, 23 insertions(+), 26 deletions(-)

diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
index 8a14927071b9..e796498c4a18 100644
--- a/drivers/net/phy/dp83867.c
+++ b/drivers/net/phy/dp83867.c
@@ -213,33 +213,7 @@ static int dp83867_config_init(struct phy_device *phydev)
 		ret = phy_write(phydev, MII_DP83867_PHYCTRL, val);
 		if (ret)
 			return ret;
-	} else if (phy_interface_is_sgmii(phydev)) {
-		phy_write(phydev, MII_BMCR,
-			  BMCR_ANENABLE | BMCR_FULLDPLX | BMCR_SPEED1000);
-
-		cfg2 = phy_read(phydev, MII_DP83867_CFG2);
-		cfg2 &= MII_DP83867_CFG2_MASK;
-		cfg2 |= MII_DP83867_CFG2_SPEEDOPT_10EN |
-			MII_DP83867_CFG2_SGMII_AUTONEGEN |
-			MII_DP83867_CFG2_SPEEDOPT_ENH |
-			MII_DP83867_CFG2_SPEEDOPT_CNT |
-			MII_DP83867_CFG2_SPEEDOPT_INTLOW;
-
-		phy_write(phydev, MII_DP83867_CFG2, cfg2);
-
-		phy_write_mmd_indirect(phydev, DP83867_RGMIICTL,
-				       DP83867_DEVADDR, 0x0);
-
-		val = DP83867_PHYCTRL_SGMIIEN |
-		      DP83867_MDI_CROSSOVER_MDIX << DP83867_MDI_CROSSOVER |
-		      dp83867->fifo_depth << DP83867_PHYCTRL_RXFIFO_SHIFT |
-		      dp83867->fifo_depth << DP83867_PHYCTRL_TXFIFO_SHIFT;
-
-		phy_write(phydev, MII_DP83867_PHYCTRL, val);
-		phy_write(phydev, MII_DP83867_BISCR, 0x0);
-	}
 
-	if (phy_interface_is_rgmii(phydev)) {
 		val = phy_read_mmd_indirect(phydev, DP83867_RGMIICTL,
 					    DP83867_DEVADDR);
 
@@ -276,6 +250,29 @@ static int dp83867_config_init(struct phy_device *phydev)
 			phy_write_mmd_indirect(phydev, DP83867_IO_MUX_CFG,
 					       DP83867_DEVADDR, val);
 		}
+	} else if (phy_interface_is_sgmii(phydev)) {
+		phy_write(phydev, MII_BMCR,
+			  BMCR_ANENABLE | BMCR_FULLDPLX | BMCR_SPEED1000);
+
+		cfg2 = phy_read(phydev, MII_DP83867_CFG2);
+		cfg2 &= MII_DP83867_CFG2_MASK;
+		cfg2 |= MII_DP83867_CFG2_SPEEDOPT_10EN |
+			MII_DP83867_CFG2_SGMII_AUTONEGEN |
+			MII_DP83867_CFG2_SPEEDOPT_ENH |
+			MII_DP83867_CFG2_SPEEDOPT_CNT |
+			MII_DP83867_CFG2_SPEEDOPT_INTLOW;
+		phy_write(phydev, MII_DP83867_CFG2, cfg2);
+
+		phy_write_mmd_indirect(phydev, DP83867_RGMIICTL,
+				       DP83867_DEVADDR, 0x0);
+
+		val = DP83867_PHYCTRL_SGMIIEN |
+		      DP83867_MDI_CROSSOVER_MDIX << DP83867_MDI_CROSSOVER |
+		      dp83867->fifo_depth << DP83867_PHYCTRL_RXFIFO_SHIFT |
+		      dp83867->fifo_depth << DP83867_PHYCTRL_TXFIFO_SHIFT;
+
+		phy_write(phydev, MII_DP83867_PHYCTRL, val);
+		phy_write(phydev, MII_DP83867_BISCR, 0x0);
 	}
 
 	if (dp83867->port_mirroring != DP83867_PORT_MIRROING_KEEP)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

