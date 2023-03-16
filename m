Delivery-date: Thu, 16 Mar 2023 14:43:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcnt5-002jHR-BP
	for lore@lore.pengutronix.de; Thu, 16 Mar 2023 14:43:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcnt5-0004v9-99
	for lore@pengutronix.de; Thu, 16 Mar 2023 14:43:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g8OSB/RI8cACjRhJ7Yl+dAtf2p37o+4oYNHCRW5DIKU=; b=r3K6zoJg1plaGb+JWPNtFdKbPc
	hqR36Punq80/5GVwl1p5FkOyRQc+QlZecQ7tsZaQXB5ThkVchmzbFO4dRL5/erZf7vh6NOC5qXAu1
	76np7+j0rMZpfWKj7+YvyuzdYm01RPvLVTtPtK1PMDgo2Vzb9yg6DUW2O4EqKJxs4xxrVKuQX6HYR
	uVt3drTqoVpVb87JyDqLk8FtL4MquUuDW4PJd2ZzfKa3QdOOJr59bKkZ4LOrd5YOpn6Y4fFyzK3NM
	9vqgd4U2tNHAdXuelwiJTkn0DxMPGul/1UkVfjss/R4o08nadfu4eVwfbxbmx7EoqQjtBwGJ0YZh9
	zyDhJLMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcns1-00GZGk-3D;
	Thu, 16 Mar 2023 13:42:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcnrx-00GZFG-1i
	for barebox@lists.infradead.org;
	Thu, 16 Mar 2023 13:42:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1pcnrw-0004ct-Ai; Thu, 16 Mar 2023 14:42:12 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pcnrv-004YsQ-LF; Thu, 16 Mar 2023 14:42:11 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pcnru-00H4Ug-VF; Thu, 16 Mar 2023 14:42:10 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 16 Mar 2023 14:42:08 +0100
Message-Id: <20230316134209.4068801-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230316134209.4068801-1-o.rempel@pengutronix.de>
References: <20230316134209.4068801-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_064213_567019_FBBAADC6 
X-CRM114-Status: GOOD (  14.66  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/3] net: dsa: sja1105: move port enable to adjust link code.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Execute port enable code dynamically based on link detection status.
This enables proper MAC configuration during link detection events.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/sja1105.c | 26 ++++++++++++++++++--------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/net/sja1105.c b/drivers/net/sja1105.c
index b85184ed92..693730f96c 100644
--- a/drivers/net/sja1105.c
+++ b/drivers/net/sja1105.c
@@ -1432,7 +1432,7 @@ static int sja1105_init_mac_settings(struct sja1105_private *priv)
 		.top  = {0x1FF, 0, 0, 0, 0, 0, 0},
 		.base = {0x0, 0, 0, 0, 0, 0, 0, 0},
 		.enabled = {1, 0, 0, 0, 0, 0, 0, 0},
-		/* Will be overridden in sja1105_port_enable. */
+		/* Will be overridden in sja1105_adjust_link. */
 		.speed = priv->dcfg->port_speed[SJA1105_SPEED_AUTO],
 		.egress = true,
 		.ingress = true,
@@ -2727,14 +2727,16 @@ static int sja1105_port_pre_enable(struct dsa_port *dp, int port,
 	return sja1105_static_config_reload(priv);
 }
 
-static int sja1105_port_enable(struct dsa_port *dp, int port,
-			       struct phy_device *phy)
+static void sja1105_adjust_link(struct eth_device *edev)
 {
+	struct dsa_port *dp = edev->priv;
 	struct device *dev = dp->ds->dev;
 	struct sja1105_private *priv = dev_get_priv(dev);
+	struct phy_device *phy = dp->edev.phydev;
 	phy_interface_t phy_mode = phy->interface;
 	struct sja1105_xmii_params_entry *mii;
 	struct sja1105_mac_config_entry *mac;
+	int port = dp->index;
 	int ret;
 
 	mii = priv->static_config.tables[BLK_IDX_XMII_PARAMS].entries;
@@ -2742,7 +2744,7 @@ static int sja1105_port_enable(struct dsa_port *dp, int port,
 
 	ret = sja1105_port_set_mode(dp, port, phy_mode);
 	if (ret)
-		return ret;
+		goto error;
 
 	/* Let the PHY handle the RGMII delays, if present. */
 	if (phy->phy_id == 0) {
@@ -2758,7 +2760,7 @@ static int sja1105_port_enable(struct dsa_port *dp, int port,
 		     priv->rgmii_tx_delay[port]) &&
 		     !priv->dcfg->setup_rgmii_delay) {
 			dev_err(priv->dev, "Chip does not support internal RGMII delays\n");
-			return -EINVAL;
+			return;
 		}
 	}
 
@@ -2778,10 +2780,18 @@ static int sja1105_port_enable(struct dsa_port *dp, int port,
 	} else {
 		dev_err(priv->dev, "Invalid PHY speed %d on port %d\n",
 			phy->speed, port);
-		return -EINVAL;
+		return;
 	}
 
-	return sja1105_static_config_reload(priv);
+	ret = sja1105_static_config_reload(priv);
+	if (ret)
+		goto error;
+
+	return;
+
+error:
+	dev_err(priv->dev, "Failed to adjust link on port %d, error %pe\n",
+		port, ERR_PTR(ret));
 }
 
 static int sja1105_xmit(struct dsa_port *dp, int port, void *packet, int length)
@@ -2816,7 +2826,7 @@ static int sja1105_rcv(struct dsa_switch *ds, int *port, void *packet,
 
 static const struct dsa_switch_ops sja1105_dsa_ops = {
 	.port_pre_enable	= sja1105_port_pre_enable,
-	.port_enable		= sja1105_port_enable,
+	.adjust_link		= sja1105_adjust_link,
 	.xmit			= sja1105_xmit,
 	.rcv			= sja1105_rcv,
 };
-- 
2.30.2



