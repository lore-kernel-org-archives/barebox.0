Delivery-date: Thu, 11 Jun 2026 13:22:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXdUb-004gVC-08
	for lore@lore.pengutronix.de;
	Thu, 11 Jun 2026 13:22:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXdUa-0007EN-DP
	for lore@pengutronix.de; Thu, 11 Jun 2026 13:22:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IHJ8t4nKHYeAGV9GSadrr6tTFEUBF7GNAGupVlasUDo=; b=LmcojYGr9km/HyKbrp8k2721s5
	+769X+xLyyQLTIgBI+wNH90JXFFDcd1a3+jZzwekCE322bNeA+6fwiyhmQLoZtJLawRh+tmMW/q2n
	VNKdtEcEl04Pp9HBXUOxLAWQKF2jDryuvFmAJAfDUQL2ycP1dhoVJG+ewjFHSscEioctu4DJZkJQi
	IMHhT1l+0hAHaYonfBKd7edKC8HKYHRDgVkF8hEBIs4HPcmYwvwLpbr8mbpUiEMjuh5R0f23n1H0k
	KCeh+f2XoULMgPcAFOWkYCLX8nuEeK1R/NMazAeoix/PAdo4ecZau97uVqnM8xZ1+rX7CUFvwJsaW
	dYpJe2+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdTP-00000009Id8-2bfx;
	Thu, 11 Jun 2026 11:21:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdTK-00000009IZw-3IfN
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 11:21:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1wXdTI-0006m4-A3
	for barebox@lists.infradead.org; Thu, 11 Jun 2026 13:21:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <l.stach@pengutronix.de>)
	id 1wXdTI-002Cuo-0q
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 13:21:16 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 11 Jun 2026 13:21:15 +0200
Message-ID: <20260611112115.670073-6-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260611112115.670073-1-l.stach@pengutronix.de>
References: <20260611112115.670073-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_042118_832531_6F108FA8 
X-CRM114-Status: GOOD (  12.65  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] rn5t618: mfd/watchdog: switch to mfd device population
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The upstream binding for the rn5t618 does not describe a
separate watchdog node. Switch to MFD device population to
probe the watchdog without DT matching.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mfd/rn5t618.c          | 8 +++++++-
 drivers/watchdog/rn5t618_wdt.c | 5 -----
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/mfd/rn5t618.c b/drivers/mfd/rn5t618.c
index d757802b5363..5fd9fe6e6ac2 100644
--- a/drivers/mfd/rn5t618.c
+++ b/drivers/mfd/rn5t618.c
@@ -13,11 +13,17 @@
 #include <i2c/i2c.h>
 #include <init.h>
 #include <of.h>
+#include <linux/mfd/core.h>
 #include <linux/regmap.h>
 #include <reset_source.h>
 #include <restart.h>
 #include <mfd/rn5t618.h>
 
+static const struct mfd_cell rn5t618_cells[] = {
+        { .name = "rn5t618-regulator" },
+        { .name = "rn5t618-wdt" },
+};
+
 struct rn5t618 {
 	struct restart_handler restart;
 	struct regmap *regmap;
@@ -129,7 +135,7 @@ static int __init rn5t618_i2c_probe(struct device *dev)
 	if (ret)
 		dev_warn(dev, "Failed to query reset reason\n");
 
-	return of_platform_populate(dev->of_node, NULL, dev);
+	return mfd_add_devices(dev, rn5t618_cells, ARRAY_SIZE(rn5t618_cells));
 }
 
 static __maybe_unused const struct of_device_id rn5t618_of_match[] = {
diff --git a/drivers/watchdog/rn5t618_wdt.c b/drivers/watchdog/rn5t618_wdt.c
index 95089ac7c885..53da358d451e 100644
--- a/drivers/watchdog/rn5t618_wdt.c
+++ b/drivers/watchdog/rn5t618_wdt.c
@@ -126,15 +126,10 @@ static int rn5t618_wdt_probe(struct device *dev)
 	return watchdog_register(wdd);
 }
 
-static __maybe_unused const struct of_device_id rn5t618_wdt_of_match[] = {
-	{ .compatible = "ricoh,rn5t568-wdt" },
-	{ /* sentinel */ }
-};
 MODULE_DEVICE_TABLE(of, rn5t618_wdt_of_match);
 
 static struct driver rn5t618_wdt_driver = {
 	.name  = "rn5t618-wdt",
 	.probe = rn5t618_wdt_probe,
-	.of_compatible = DRV_OF_COMPAT(rn5t618_wdt_of_match),
 };
 device_platform_driver(rn5t618_wdt_driver);
-- 
2.47.3



