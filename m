Delivery-date: Wed, 09 Jun 2021 11:26:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lquUC-0006QP-Hs
	for lore@lore.pengutronix.de; Wed, 09 Jun 2021 11:26:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lquUA-0001mT-4t
	for lore@pengutronix.de; Wed, 09 Jun 2021 11:26:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JYB2njHrw1kN4J/y30kvREN2MNSqMXnjs7JwebqRUCg=; b=p+VfDGuCosq+/C
	ZpY1feTwJX9q+32pKkg0E1tWSUqzKD1pBIspTivvDwKmFAAQ+D7dWseZUbcAOghmolLh1KD/h7JVN
	OoM8ZldihU2iwgx820wdD03RClmH+zDZkaLNiAPVzHE7QRFTU4Q9Acp1Dkmby5jZDJD4thrx7ix+C
	Ax0jN2aWE/mlmJehHD8Ls0ePUEQ3gwEFbZk+jhB1vR0Fpgs1+75iK+Br1Y8fNVdDfvECQFgqvKYkz
	zWQ13Dd8MRpfYm+HHnSGkFCyAP2NtiGf+bTMuLtRL/VbtNVpTcVMuxIZ2pIAXjo8BjJf+jStRqPRl
	qtAsYIDYOHairWCeYFew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lquSe-00CeiR-LM; Wed, 09 Jun 2021 09:25:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqtzX-00CVXb-Mo
 for barebox@lists.infradead.org; Wed, 09 Jun 2021 08:55:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lqtzW-0005bI-1Q; Wed, 09 Jun 2021 10:55:14 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lqtzV-0006FG-Go; Wed, 09 Jun 2021 10:55:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Jun 2021 10:55:10 +0200
Message-Id: <20210609085512.3865-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210609085512.3865-1-a.fatoum@pengutronix.de>
References: <20210609085512.3865-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210609_015515_854110_B43BA980 
X-CRM114-Status: GOOD (  10.30  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] fixup! net: eqos: Rockchip support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Other network controllers have different clock settings when configuring
link speed for RMII vs. RGMII. Split up the callback like with Linux to
make future extension easier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/designware_rockchip.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/net/designware_rockchip.c b/drivers/net/designware_rockchip.c
index a4c7bfe925db..09b53e2cc08d 100644
--- a/drivers/net/designware_rockchip.c
+++ b/drivers/net/designware_rockchip.c
@@ -18,7 +18,8 @@ struct rk_gmac_ops {
 	void (*set_to_rgmii)(struct eqos *eqos,
 			     int tx_delay, int rx_delay);
 	void (*set_to_rmii)(struct eqos *eqos);
-	void (*set_speed)(struct eqos *eqos, int speed);
+	void (*set_rmii_speed)(struct eqos *eqos, int speed);
+	void (*set_rgmii_speed)(struct eqos *eqos, int speed);
 	void (*integrated_phy_powerup)(struct eqos *eqos);
 
 	const struct clk_bulk_data *extra_clks;
@@ -182,7 +183,8 @@ static void rk3568_set_gmac_speed(struct eqos *eqos, int speed)
 static const struct rk_gmac_ops rk3568_ops = {
 	.set_to_rgmii = rk3568_set_to_rgmii,
 	.set_to_rmii = rk3568_set_to_rmii,
-	.set_speed = rk3568_set_gmac_speed,
+	.set_rmii_speed = rk3568_set_gmac_speed,
+	.set_rgmii_speed = rk3568_set_gmac_speed,
 
 	.extra_clks = rk3568_gmac_clks,
 	.num_extra_clks = ARRAY_SIZE(rk3568_gmac_clks),
@@ -228,7 +230,10 @@ static void eqos_rk_adjust_link(struct eth_device *edev)
 	struct eqos *eqos = edev->priv;
 	struct eqos_rk_gmac *priv = to_rk_gmac(eqos);
 
-	priv->ops->set_speed(eqos, edev->phydev->speed);
+	if (phy_interface_mode_is_rgmii(eqos->interface))
+		priv->ops->set_rgmii_speed(eqos, edev->phydev->speed);
+	else
+		priv->ops->set_rmii_speed(eqos, edev->phydev->speed);
 
 	eqos_adjust_link(edev);
 }
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

