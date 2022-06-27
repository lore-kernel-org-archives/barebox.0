Delivery-date: Mon, 27 Jun 2022 12:35:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5m5Y-00GGp6-9N
	for lore@lore.pengutronix.de; Mon, 27 Jun 2022 12:35:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5m5Z-0002XL-JP
	for lore@pengutronix.de; Mon, 27 Jun 2022 12:35:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ntrZjfjnBVNOv+brU+w+JF0jr+KF2Z9oDO+3gJYxEOE=; b=tq3UWaRj4IR/8bIHPHKSn+exoA
	Cihj2MY+fLQJerBuNyKFYtOLKANafqBJWKHWC6JMgZrtAQ6P2g/I0HDE+ma14TFuH8ifeO3uGr+gD
	SsBAaci6P2xuRPvC1ANT0obzrGIHB0S50fxVofjhgoH2MwPcWsUuYD7CBRQ432q19tZj2nEXafSft
	qH2FrsRy1Fc24GFsFZ5Lm5BTi8jAiNBCTvy2+2Wsxg7RSNPCYcGBXPRCeqJFQJemRY6zC8jKBYaTH
	/SOp225I9iB03AEAObzDMEqsb1zs3+Q2EJ+8HNqOXMomLSxNgyZkdUje7Hn+A83NAoW5YBVWnVRI7
	04Eu4xZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5m4J-0008rt-IP; Mon, 27 Jun 2022 10:34:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5m4E-0008pg-55
	for barebox@lists.infradead.org; Mon, 27 Jun 2022 10:34:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1o5m4C-0002DI-Km; Mon, 27 Jun 2022 12:34:04 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o5m48-002zgf-Ck; Mon, 27 Jun 2022 12:34:03 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o5m4B-001SBH-0S; Mon, 27 Jun 2022 12:34:03 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 27 Jun 2022 12:33:56 +0200
Message-Id: <20220627103358.34487-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1327; h=from:subject; bh=5U29bxHS7Oj40Yl4H0JHqiYZZc3J+DpYQ2498CcgVfA=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBiuYd50gG7/KNBgSUcz9HVSLXJoFVxqUV0IGpwc11d aOpoPtGJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYrmHeQAKCRDB/BR4rcrsCa6WB/ 95uaA+Yz/Rd7is7y36cSoHYviqyE9YGuS00WUkgFwERzJJZnFJzIhEc0A82Gh5HN0M1WejOpBPOYJj 6aO6VkF4BRiGFohWJE421E2gb+rY4xMRtuKAovJqrSfN5ePog/M2v0HAU4PvmqKoAXZl2/TykpLf3W VV6A57sjYMGDuDARM1WJl2boNb7l/Zlg1qUD9Hv2AOF2DpI1uUbDv2WMTCun23vKbeolvSfIBQmUNG 7aj7KbPIBhqO2bumIy52SYEfbc43zw87qKxsgotLy4YAJO/kvfsZQcrk2VAsfY/KJAmYyPLcT6yZPC rg2PBRUXqPEkUF361BvuA1mEY8NH8v
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_033406_258948_6FBE3882 
X-CRM114-Status: GOOD (  11.45  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] watchdog: imxwd: Add error messages for some failure points in .probe()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/watchdog/imxwd.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 31ea388c2cf2..3e596b55f8f7 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -245,12 +245,16 @@ static int imx_wd_probe(struct device_d *dev)
 	}
 
 	clk = clk_get(dev, NULL);
-	if (IS_ERR(clk))
+	if (IS_ERR(clk)) {
+		dev_err(dev, "Failed to get clk: %d\n", PTR_ERR(clk));
 		return PTR_ERR(clk);
+	}
 
 	ret = clk_enable(clk);
-	if (ret)
+	if (ret) {
+		dev_err(dev, "Failed to enable clk: %d\n", ret);
 		return ret;
+	}
 
 	priv->base = IOMEM(iores->start);
 	priv->ops = ops;
@@ -272,14 +276,16 @@ static int imx_wd_probe(struct device_d *dev)
 		}
 
 		ret = watchdog_register(&priv->wd);
-		if (ret)
+		if (ret) {
+			dev_err(dev, "Failed to register watchdog device: %d\n", ret);
 			goto on_error;
+		}
 	}
 
 	if (priv->ops->init) {
 		ret = priv->ops->init(priv);
 		if (ret) {
-			dev_err(dev, "Failed to init watchdog device %d\n", ret);
+			dev_err(dev, "Failed to init watchdog device: %d\n", ret);
 			goto error_unregister;
 		}
 	}

base-commit: 512d036587a38c57a30cc63ce48c19c895b9d729
-- 
2.36.1



