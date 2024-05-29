Delivery-date: Wed, 29 May 2024 11:42:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCFoq-0018bh-0G
	for lore@lore.pengutronix.de;
	Wed, 29 May 2024 11:42:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCFop-0006cn-CQ
	for lore@pengutronix.de; Wed, 29 May 2024 11:42:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=f48RrYNGcLYDh1+7xMULplLpmQ6e3QHjun1fvHdoMfg=; b=snWnu484NQFqUpM0m1juh4vhDC
	Wjs69XrysnlXl17wffJU6hoEos/ZahN4lLcdafaAwGMFphvZlGyQr9eW8c1fSw1Vf/lB/K0OVqZ7A
	hzjUU4ZyGJ3M51IIJMjK7up2acMe7kWDsDKlt/tYYAP7O2Vwwawhv8c0+y2ds+wjvU5Thr5IPpXj6
	GoWCCO0mej5cOh5ANnrHFdEQPaI8wKGyn14LVF8H8TyoFHwA+Os4qu48Ihv6RMSgODtBlqlPhHCTD
	R2rIrfRsgwZ/9mqbMVp7CEtgy0r2z5rwcJeYeuFuy+NvUJhiNP1vxdI+IuRO/IxsI971cUhyB43hS
	PWnHuUeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCFoL-00000003evs-3pzO;
	Wed, 29 May 2024 09:41:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCFoF-00000003esD-0hnL
	for barebox@lists.infradead.org;
	Wed, 29 May 2024 09:41:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sCFoD-0006T2-O0; Wed, 29 May 2024 11:41:25 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sCFoD-003RfD-B3; Wed, 29 May 2024 11:41:25 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sCFoD-0029gd-0w;
	Wed, 29 May 2024 11:41:25 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 29 May 2024 11:41:23 +0200
Message-Id: <20240529094124.513880-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_024127_304913_4252BD52 
X-CRM114-Status: GOOD (  15.53  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 1/2] net: sja1105: split adjust_link into reusable functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Refactor sja1105_adjust_link by moving RGMII delay and speed settings
into separate functions: sja1105_set_rgmii_delay() and
sja1105_set_speed().
This restructuring makes the code more modular and reusable, preparing
for the next patch where the CPU port configuration will be handled in
a separate function.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/sja1105.c | 89 ++++++++++++++++++++++++++-----------------
 1 file changed, 53 insertions(+), 36 deletions(-)

diff --git a/drivers/net/sja1105.c b/drivers/net/sja1105.c
index d88a5e2fcf..c759c40b36 100644
--- a/drivers/net/sja1105.c
+++ b/drivers/net/sja1105.c
@@ -2713,6 +2713,55 @@ static int sja1105_port_set_mode(struct dsa_port *dp, int port,
 	return 0;
 }
 
+static int sja1105_set_rgmii_delay(struct sja1105_private *priv, int port,
+				   phy_interface_t phy_mode)
+{
+	if (phy_mode == PHY_INTERFACE_MODE_RGMII_RXID ||
+	    phy_mode == PHY_INTERFACE_MODE_RGMII_ID)
+		priv->rgmii_rx_delay[port] = true;
+
+	if (phy_mode == PHY_INTERFACE_MODE_RGMII_TXID ||
+	    phy_mode == PHY_INTERFACE_MODE_RGMII_ID)
+		priv->rgmii_tx_delay[port] = true;
+
+	if ((priv->rgmii_rx_delay[port] ||
+	     priv->rgmii_tx_delay[port]) &&
+	     !priv->dcfg->setup_rgmii_delay) {
+		dev_err(priv->dev, "Chip does not support internal RGMII delays\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static void sja1105_set_speed(struct dsa_port *dp, int port, int speed)
+{
+	struct device *dev = dp->ds->dev;
+	struct sja1105_private *priv = dev_get_priv(dev);
+	struct sja1105_xmii_params_entry *mii;
+	struct sja1105_mac_config_entry *mac;
+
+	mii = priv->static_config.tables[BLK_IDX_XMII_PARAMS].entries;
+	mac = priv->static_config.tables[BLK_IDX_MAC_CONFIG].entries;
+
+	if (mii->xmii_mode[port] == XMII_MODE_SGMII) {
+		mac[port].speed =
+			priv->dcfg->port_speed[SJA1105_SPEED_1000MBPS];
+		priv->xpcs_cfg[port].speed = speed;
+	} else if (speed == SPEED_1000) {
+		mac[port].speed =
+			priv->dcfg->port_speed[SJA1105_SPEED_1000MBPS];
+	} else if (speed == SPEED_100) {
+		mac[port].speed =
+			priv->dcfg->port_speed[SJA1105_SPEED_100MBPS];
+	} else if (speed == SPEED_10) {
+		mac[port].speed =
+			priv->dcfg->port_speed[SJA1105_SPEED_10MBPS];
+	} else {
+		mac[port].speed = priv->dcfg->port_speed[SJA1105_SPEED_AUTO];
+	}
+}
+
 static int sja1105_port_pre_enable(struct dsa_port *dp, int port,
 				   phy_interface_t phy_mode)
 {
@@ -2734,13 +2783,10 @@ static void sja1105_adjust_link(struct eth_device *edev)
 	struct sja1105_private *priv = dev_get_priv(dev);
 	struct phy_device *phy = dp->edev.phydev;
 	phy_interface_t phy_mode = phy->interface;
-	struct sja1105_xmii_params_entry *mii;
-	struct sja1105_mac_config_entry *mac;
 	int port = dp->index;
 	int ret;
 
-	mii = priv->static_config.tables[BLK_IDX_XMII_PARAMS].entries;
-	mac = priv->static_config.tables[BLK_IDX_MAC_CONFIG].entries;
+	sja1105_set_speed(dp, port, phy->speed);
 
 	ret = sja1105_port_set_mode(dp, port, phy_mode);
 	if (ret)
@@ -2748,38 +2794,9 @@ static void sja1105_adjust_link(struct eth_device *edev)
 
 	/* Let the PHY handle the RGMII delays, if present. */
 	if (phy->phy_id == 0) {
-		if (phy_mode == PHY_INTERFACE_MODE_RGMII_RXID ||
-		    phy_mode == PHY_INTERFACE_MODE_RGMII_ID)
-			priv->rgmii_rx_delay[port] = true;
-
-		if (phy_mode == PHY_INTERFACE_MODE_RGMII_TXID ||
-		    phy_mode == PHY_INTERFACE_MODE_RGMII_ID)
-			priv->rgmii_tx_delay[port] = true;
-
-		if ((priv->rgmii_rx_delay[port] ||
-		     priv->rgmii_tx_delay[port]) &&
-		     !priv->dcfg->setup_rgmii_delay) {
-			dev_err(priv->dev, "Chip does not support internal RGMII delays\n");
-			return;
-		}
-	}
-
-	if (mii->xmii_mode[port] == XMII_MODE_SGMII) {
-		mac[port].speed =
-			priv->dcfg->port_speed[SJA1105_SPEED_1000MBPS];
-		priv->xpcs_cfg[port].speed = phy->speed;
-	} else if (phy->speed == SPEED_1000) {
-		mac[port].speed =
-			priv->dcfg->port_speed[SJA1105_SPEED_1000MBPS];
-	} else if (phy->speed == SPEED_100) {
-		mac[port].speed =
-			priv->dcfg->port_speed[SJA1105_SPEED_100MBPS];
-	} else if (phy->speed == SPEED_10) {
-		mac[port].speed =
-			priv->dcfg->port_speed[SJA1105_SPEED_10MBPS];
-	} else {
-		mac[port].speed = priv->dcfg->port_speed[SJA1105_SPEED_AUTO];
-		return;
+		ret = sja1105_set_rgmii_delay(priv, port, phy_mode);
+		if (ret)
+			goto error;
 	}
 
 	ret = sja1105_static_config_reload(priv);
-- 
2.39.2



