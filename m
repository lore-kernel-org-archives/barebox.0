Delivery-date: Tue, 22 Jun 2021 08:48:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvaDR-00056Q-B6
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 08:48:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvaDP-00074Q-UU
	for lore@pengutronix.de; Tue, 22 Jun 2021 08:48:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xf6rJiTEm/jMESoNGBk7ldo/P+SC8Md9SUnckZ6MSDU=; b=ptiLKLWlsSQ81w
	d6XVM4eedSF1wD+ge3q6B95SKXJIrmeUlJse90L6iSnyJh2a5XyqjA31tnv2w13WWzUcq/Khhdu/r
	Tj2xSjNVlfdOXP6vevaiqrTW1OGQpD9xBnYQ4OouS5VtpftgY2MU9v5loPBJ4TcnoABs2fxqSqaAM
	KA3ZfB3UhsmVuPMFAyJuP4Uxs+N2W0DfefjkMUt26MVkwPH0lsnzvW2iaNOkhybkI9zU17S+KJ2Qh
	sWWVyQQV/EeVrpKHQhVJYfqPnKG0fl7V+/74YpkPyLeFrGTSDYWeNDUninfJ2UBJIwJ2qMUCtbM8Q
	ReVpSUvhsO1a+5kd1pUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvaBx-005sZU-Ew; Tue, 22 Jun 2021 06:47:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvaBr-005sXZ-GT
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 06:47:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvaBn-0006oh-LK; Tue, 22 Jun 2021 08:47:15 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvaBn-0004Nx-8g; Tue, 22 Jun 2021 08:47:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 22 Jun 2021 08:47:11 +0200
Message-Id: <20210622064711.14058-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210622064711.14058-1-s.hauer@pengutronix.de>
References: <20210622064711.14058-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_234719_591512_E2ABBEED 
X-CRM114-Status: GOOD (  11.71  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/7] fixup! phy: rockchip: Add naneng-combphy support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

---
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index a8d7fd13d8..af4340f90d 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -401,17 +401,10 @@ static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
 	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
 	struct clk *refclk = NULL;
 	unsigned long rate;
-	int i;
 	u32 val;
 
 	/* Configure PHY reference clock frequency */
-	for (i = 0; i < priv->num_clks; i++) {
-		if (!strncmp(priv->clks[i].id, "refclk", 6)) {
-			refclk = priv->clks[i].clk;
-			break;
-		}
-	}
-
+	refclk = priv->clks[0].clk;
 	if (!refclk) {
 		dev_err(priv->dev, "No refclk found\n");
 		return -EINVAL;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

