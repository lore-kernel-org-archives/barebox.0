Delivery-date: Tue, 07 May 2024 15:40:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4L3r-000xc4-0e
	for lore@lore.pengutronix.de;
	Tue, 07 May 2024 15:40:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4L3q-0006w5-KY
	for lore@pengutronix.de; Tue, 07 May 2024 15:40:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yaqrqazTxYGm1dU2qrBd707uAWHiouRizl4S9gwu3lI=; b=ZixSarKSNozzNFzTwUZXfTUuV5
	iNIrgGFp7RDMAx16YXDbU0hM/SbePg1GzR/AqvMuYfGAhL/8KdGg81UFOkHS2CLvKc03ANBzm9JCF
	WZN6km/E1vqH/YkAa5L3GMS6AFKg4uhgpJ4wX2e2U2FMvEzvedBhsjaPAY+wR1LoQZfyjM6ru4V+p
	B/fUAyL9VkJih/SDqKEsr9kqF2jzM5xJq8UHRj0B+DmGs39TP37Goxh7u4CpraP4tlFbhoKc9Ens5
	ifQIY3j1Um7Z/MvnzGBeMfrJV0OA2FgZPU1ZO5sh7+yYq1Dle0pHG8mk71gGu/9pG6oT0mood0C/K
	iKXxEjCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4L37-0000000BI8W-3gWz;
	Tue, 07 May 2024 13:40:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4L33-0000000BI6S-2xcX
	for barebox@lists.infradead.org;
	Tue, 07 May 2024 13:40:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1s4L2y-0006ec-Le; Tue, 07 May 2024 15:39:56 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1s4L2y-0006XE-8w; Tue, 07 May 2024 15:39:56 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1s4L2y-00Fatg-0i;
	Tue, 07 May 2024 15:39:56 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue,  7 May 2024 15:39:52 +0200
Message-Id: <20240507133952.3716733-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_064001_763142_924648F0 
X-CRM114-Status: GOOD (  11.19  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: phy: dp83867: reset PHY on probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some PHY variants set the DP83867_PHYCR_FORCE_LINK_GOOD bit by default,
which should be unset if we want to rely on autonegotiation. Port
dp83867_phy_reset() from Linux v6.9-rc7, which already does all
necessary things, and call it in dp83867_probe(). (Keep the functions in
the original order so that the diff stays clean.)

Suggested-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 drivers/net/phy/dp83867.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
index 5dc5bac12536..aefc65148926 100644
--- a/drivers/net/phy/dp83867.c
+++ b/drivers/net/phy/dp83867.c
@@ -362,6 +362,8 @@ static int dp83867_of_init(struct phy_device *phydev)
 	return 0;
 }
 
+static int dp83867_phy_reset(struct phy_device *phydev); /* see below */
+
 static int dp83867_probe(struct phy_device *phydev)
 {
 	struct dp83867_private *dp83867;
@@ -370,6 +372,8 @@ static int dp83867_probe(struct phy_device *phydev)
 
 	phydev->priv = dp83867;
 
+	dp83867_phy_reset(phydev);
+
 	return dp83867_of_init(phydev);
 }
 
@@ -563,6 +567,20 @@ static int dp83867_config_init(struct phy_device *phydev)
 	return 0;
 }
 
+static int dp83867_phy_reset(struct phy_device *phydev)
+{
+	int err;
+
+	err = phy_write(phydev, DP83867_CTRL, DP83867_SW_RESTART);
+	if (err < 0)
+		return err;
+
+	udelay(20);
+
+	return phy_modify(phydev, MII_DP83867_PHYCTRL,
+			 DP83867_PHYCR_FORCE_LINK_GOOD, 0);
+}
+
 static struct phy_driver dp83867_driver[] = {
 	{
 		.phy_id		= DP83867_PHY_ID,
-- 
2.39.2



