Delivery-date: Wed, 29 Jun 2022 10:58:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6TWX-0010W0-S6
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 10:58:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6TWa-0003vg-0h
	for lore@pengutronix.de; Wed, 29 Jun 2022 10:58:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x2b/QEUG9MG3b1rsKfz+Da7u/6mlwrSFmNuacg+qPII=; b=2/T2KK3BXfmXSdeobtN//spVeT
	5oz88MXyOmhvmcSeZeIoF5cKLjj7xRup02HDF51Tc75FFnBt8SdAQzaw4sfvlZ/TaCY5TneeoUaeV
	J6ZdDZxSLa1UdmEiJ+Zdv1XV0VvvGMfrsGl9Xcc+aZaGT9DQWiAZtJEhEGq+JFV26USVw3All7IxQ
	XM9NQ/DwbEfbkk5XzxZqdZ6Naib0Z2Ytnl9tD0MoIlUEymPrk66/H9q7jVxtZ7nv0Jz70k7aJzHNw
	Aj/HrXoGTgCTAV5/9JukaSvBDhVMyRbG5I0QeWf91I/ZqOZ+MvFweIRVWTt0FDYwqZ+7V6p/0L7AA
	9WRABrdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6TVI-00AWjM-0b; Wed, 29 Jun 2022 08:56:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6TVA-00AWgp-E5
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 08:56:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1o6TV9-0003gF-9G; Wed, 29 Jun 2022 10:56:47 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o6TV5-003Mai-29; Wed, 29 Jun 2022 10:56:46 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o6TV7-001rGV-Rg; Wed, 29 Jun 2022 10:56:45 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 29 Jun 2022 10:56:28 +0200
Message-Id: <20220629085628.106086-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220629085628.106086-1-u.kleine-koenig@pengutronix.de>
References: <20220629085628.106086-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1106; h=from:subject; bh=3yJbn0GXHQ2gwI18IYNYmsIDzTxF19QY/DZyIq4YAww=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBivBO5PfGmBYqzdz8jwWztoZK9rv8sj9SdskUQSwdq KDxiMluJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYrwTuQAKCRDB/BR4rcrsCeYvB/ 4kAy/PaWMXS6JGwro5zmvgwIb3JpYqVEgTLS/ddoP4Y0ih1KvwkkgUFt7dwk2ORWS6McpV3ngXH77Z 3Jra/gLqdfnFMCJvxuPoOyP2R9OnIyB48QhfRUTbW38K/KWEHQR+W25DdLb5tM8CzeKF0bY7ZgNNyM 5n+9NXi26rggpwV6WWUKTDMhApsYl6+s72+AOwP9kzf850b8NJTDr1UhWxbHsqhYwucvRxTAJKTo9W zdnrIKtwQBPw4/4dQRi0Ir+U47MbGImQgBR8cZ5BzpBBufTtSXrF8ez7ILKf6SGy2OaoX9J/qgTjCY PEnuEblk+nggXF6KRmquGPXJ7q/+FD
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_015648_493954_7CCC2EC9 
X-CRM114-Status: GOOD (  12.17  )
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
Subject: [PATCH v2 2/2] watchdog: imxwd: Add error messages for some failure points in .probe()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
Hello,

as suggested by afa I'm using dev_err_probe() here now.

Best regards
Uwe

 drivers/watchdog/imxwd.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index e9856c94c2fc..dba92cb46afb 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -245,11 +245,11 @@ static int imx_wd_probe(struct device_d *dev)
 
 	clk = clk_get(dev, NULL);
 	if (IS_ERR(clk))
-		return PTR_ERR(clk);
+		return dev_err_probe(dev, PTR_ERR(clk), "Failed to get clk\n");
 
 	ret = clk_enable(clk);
 	if (ret)
-		return ret;
+		return dev_err_probe(dev, ret, "Failed to enable clk\n");
 
 	priv->base = IOMEM(iores->start);
 	priv->ops = ops;
@@ -271,8 +271,10 @@ static int imx_wd_probe(struct device_d *dev)
 		}
 
 		ret = watchdog_register(&priv->wd);
-		if (ret)
+		if (ret) {
+			dev_err_probe(dev, ret, "Failed to register watchdog device\n");
 			goto on_error;
+		}
 	}
 
 	if (priv->ops->init) {
-- 
2.36.1



