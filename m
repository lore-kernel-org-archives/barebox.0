Delivery-date: Wed, 29 Jun 2022 10:58:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6TWT-0010VZ-0k
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 10:58:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6TWV-0003tO-4T
	for lore@pengutronix.de; Wed, 29 Jun 2022 10:58:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Tr0i5tZ1XvcMVWuO3DMqr41u4FL7Pjmw82TfJuQvY1U=; b=ChLFm5tOMzFle9fY6+1W6n7dLO
	Z8ozX2stvlEGoesA63mG2umRDjB5ZSxcFiLBewCoHP+4FZyAAvJxQb9x+mqcQmjaYJ5PnwACRCT3k
	9ogDtdYP/2TvaKmUgodsHcPoNf6xolbxK4Cx23+RJznD7VQNqZ/QBkWAo8M0uvGsaig6UkgN9LmZl
	MyPlmuD1HDQnO/EL4KfQYeiyQ2n6qYLPZoyz1dc7QC/DaB0qSnXp2RSGlW4CwXKvBNxSlq2sL58h5
	w2xC5h+h5yrrh0mBY2krvBN2N43vyVISXarRjQ4Odpx943mGUAdm5q0v9tTHK/Uhmpf2zMRT31aJL
	fVr8/3AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6TVF-00AWhl-Bk; Wed, 29 Jun 2022 08:56:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6TV8-00AWfu-II
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 08:56:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1o6TV7-0003fm-Bi; Wed, 29 Jun 2022 10:56:45 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o6TV3-003Mad-3c; Wed, 29 Jun 2022 10:56:44 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o6TV5-001rGR-SQ; Wed, 29 Jun 2022 10:56:43 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 29 Jun 2022 10:56:27 +0200
Message-Id: <20220629085628.106086-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1102; h=from:subject; bh=r7OVacKRUksUFFl/5+cp47Ov760FrCepCIPFeZpybSo=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBivBO1WTd6y/ZU2rQVAPKc6/lcXyQVqV9aFU/Iiaos 4ccWgH+JATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYrwTtQAKCRDB/BR4rcrsCXNjB/ kBmx1sMEauAgXHjNjxLONQ28v38Qq0LnqapuI9Pv6/S5x7LFtR0mgky227w4gYugxQhGD+DVkthRQ+ bzQLQWLATctEswvUFyIvP0bpitI6mQSZFoW2AhUzHCcYHYkpeZzpNetfod6a9jfKq44aTUbu/yxzlE KpfdtCXMK87sQt1Qo77OS5kHLKzOTORdoY0sJL745iO75oeduSP9b3XLecfin6eVHJD8GGasAAGWoo bQK5FlMEzZ8bLRTDfVBXLJyXrWB0YP2lePuQwTCclsRd6pHeAUhgIUG0TlQw+KsotT7AVz95MH0HkQ ipGz1yYCjPjl4ASQN6GOTLKgGBhJ8T
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_015646_676736_F3ED13A0 
X-CRM114-Status: GOOD (  12.03  )
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
Subject: [PATCH v2 1/2] watchdog: imxwd: Convert error messages in .probe to dev_err_probe()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/watchdog/imxwd.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 31ea388c2cf2..e9856c94c2fc 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -239,10 +239,9 @@ static int imx_wd_probe(struct device_d *dev)
 
 	priv = xzalloc(sizeof(struct imx_wd));
 	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores)) {
-		dev_err(dev, "could not get memory region\n");
-		return PTR_ERR(iores);
-	}
+	if (IS_ERR(iores))
+		return dev_err_probe(dev, PTR_ERR(iores),
+				     "could not get memory region\n");
 
 	clk = clk_get(dev, NULL);
 	if (IS_ERR(clk))
@@ -279,7 +278,8 @@ static int imx_wd_probe(struct device_d *dev)
 	if (priv->ops->init) {
 		ret = priv->ops->init(priv);
 		if (ret) {
-			dev_err(dev, "Failed to init watchdog device %d\n", ret);
+			dev_err_probe(dev, ret,
+				      "Failed to init watchdog device\n");
 			goto error_unregister;
 		}
 	}
-- 
2.36.1



