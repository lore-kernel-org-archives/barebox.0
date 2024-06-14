Delivery-date: Fri, 14 Jun 2024 14:52:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sI6PW-005vzl-2B
	for lore@lore.pengutronix.de;
	Fri, 14 Jun 2024 14:52:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sI6PW-0008NG-1E
	for lore@pengutronix.de; Fri, 14 Jun 2024 14:52:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pczS5YjyC2Eg5n2DJckCDGacUqGm02hek6avpYTGlFk=; b=MtOTqe8/VX8DNkWTNoS/o2B/WD
	QFNyy17/qwdXDXsweoD9hwKXHU7chld3466YxJYEGTSLgoctcd69NXn25Bx9tWVLj7MbXJksrqEQp
	kv0xIxnBHPncsQpitN83OnhjWULVyhJ2TLY4rQWbwB4qHekXbK2Fwaz2iLsNQwspZsr8hh7sil4GF
	BZdYr3SbPUB2/t1o68Wg5dAMGnsbdQoakdUA2WP7YYUkAwVyLW6Co/nxXbFTqqMhKHxj+VZi2lSvC
	p9g1JZ1dN3HUPSEomW6VTuAe+6TJ00K9iecJGYTcAL0zUoszpzfHLYsf8fj29dVupJiEDpY4XCpLY
	aOpc61Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI6Os-00000002nqq-3Kk9;
	Fri, 14 Jun 2024 12:51:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI6Oo-00000002nqG-3FIe
	for barebox@lists.infradead.org;
	Fri, 14 Jun 2024 12:51:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sI6Ol-0008HC-OE; Fri, 14 Jun 2024 14:51:19 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sI6Ol-002GuR-BW; Fri, 14 Jun 2024 14:51:19 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sI6Ol-007AGY-0y;
	Fri, 14 Jun 2024 14:51:19 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 14 Jun 2024 14:51:17 +0200
Message-Id: <20240614125117.1707748-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_055122_936293_2FF12350 
X-CRM114-Status: GOOD (  13.61  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1] net: phy: dp83tg720: Decouple PHY reset frequency from link polling interval
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Reduce PHY reset frequency to allow for more frequent link polling in
certain cases. This is necessary to ensure barebox can establish a link on
"ifup -a".

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/dp83tg720.c | 34 +++++++++++++++++++++++-----------
 1 file changed, 23 insertions(+), 11 deletions(-)

diff --git a/drivers/net/phy/dp83tg720.c b/drivers/net/phy/dp83tg720.c
index 7e807314ce..385b32046e 100644
--- a/drivers/net/phy/dp83tg720.c
+++ b/drivers/net/phy/dp83tg720.c
@@ -29,6 +29,10 @@
 
 #define DP83TG720S_POLL_TIMEOUT_MS		100
 
+struct dp83tg720_priv {
+	uint64_t last_reset;
+};
+
 static int dp83tg720_config_rgmii_delay(struct phy_device *phydev)
 {
 	u16 rgmii_delay_mask;
@@ -62,6 +66,7 @@ static int dp83tg720_config_rgmii_delay(struct phy_device *phydev)
 
 static int dp83tg720_phy_init(struct phy_device *phydev)
 {
+	struct dp83tg720_priv *priv = phydev->priv;
 	int ret = 0;
 
 	/* HW reset is needed to recover link if previous link was lost. SW
@@ -71,6 +76,12 @@ static int dp83tg720_phy_init(struct phy_device *phydev)
 
 	phydev->supported = SUPPORTED_1000baseT_Full;
 	phydev->advertising = SUPPORTED_1000baseT_Full;
+	priv->last_reset = get_time_ns();
+	/* Randomize the polling interval to avoid reset synchronization with
+	 * the link partner.  The polling interval is set to 150ms +/- 50ms.
+	 */
+	phydev->polling_interval = (DP83TG720S_POLL_TIMEOUT_MS +
+				    (rand() % 10) * 10) * MSECOND;
 
 	/* According to the "DP83TG720R-Q1 1000BASE-T1 Automotive Ethernet PHY
 	 * datasheet (Rev. C)" - "T6.2 Post reset stabilization-time prior to
@@ -93,14 +104,9 @@ static int dp83tg720_phy_init(struct phy_device *phydev)
 
 static int dp83tg720_read_status(struct phy_device *phydev)
 {
+	struct dp83tg720_priv *priv = phydev->priv;
 	u16 phy_sts;
 
-	/* Randomize the polling interval to avoid reset synchronization with
-	 * the link partner.  The polling interval is set to 150ms +/- 50ms.
-	 */
-	phydev->polling_interval = (DP83TG720S_POLL_TIMEOUT_MS +
-				    (rand() % 10) * 10) * MSECOND;
-
 	phy_sts = phy_read(phydev, DP83TG720S_MII_REG_10);
 	phydev->link = !!(phy_sts & DP83TG720S_LINK_STATUS);
 	if (!phydev->link) {
@@ -111,18 +117,24 @@ static int dp83tg720_read_status(struct phy_device *phydev)
 		 * Implementation Guide", the PHY needs to be reset after a
 		 * link loss or if no link is created after at least 100ms.
 		 */
-		dp83tg720_phy_init(phydev);
-		return 0;
+		if (!priv->last_reset ||
+		    is_timeout(priv->last_reset, phydev->polling_interval))
+			dp83tg720_phy_init(phydev);
+	} else {
+		phydev->duplex = DUPLEX_FULL;
+		phydev->speed = SPEED_1000;
 	}
 
-	phydev->duplex = DUPLEX_FULL;
-	phydev->speed = SPEED_1000;
-
 	return 0;
 }
 
 static int dp83tg720_probe(struct phy_device *phydev)
 {
+	struct dp83tg720_priv *priv;
+
+	priv = xzalloc(sizeof(*priv));
+
+	phydev->priv = priv;
 	phydev->polling_interval = DP83TG720S_POLL_TIMEOUT_MS * MSECOND;
 
 	return 0;
-- 
2.39.2



