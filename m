Delivery-date: Mon, 23 Mar 2026 08:24:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w4ZeV-0043EN-0w
	for lore@lore.pengutronix.de;
	Mon, 23 Mar 2026 08:24:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w4ZeU-0001tP-MW
	for lore@pengutronix.de; Mon, 23 Mar 2026 08:24:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oBczXhynaIBP6WUCTW4CGze5tXwLRjY2Xi6OKNO6wSU=; b=nyPxn+cLBzzXExk+ksvBKduFRt
	FcpiA9FF8HSFAh02k3lGq0vlFcazbeEiERXNpbp68XWw5/UfNJisRsHJl9lkQuv0+LopwlYk2LLs2
	cOR8blteZ/Fwg5SYaGDPmaLrH5FEtVuENUzoEhSBUJouMJejuV3pckue2rbdNoXKsj0eZm5iA9hZ5
	Hlt2LxBTiDfUa9ISyTCflEv6A6IkWolMcAwaL32GBZlaIncJBhcwvGm+8bv8kOWxsO9wByEcIvqpF
	S3NSiQYzwgVK0ss3pchtX/yy90HWZZhzlo6hGiFm6zsEmtEK/cNBdpQdImXAmB5sc5erqaSDJXFmH
	R0LXW0pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4Ze2-0000000GBZy-30Ea;
	Mon, 23 Mar 2026 07:24:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4Zdz-0000000GBZc-4A5K
	for barebox@lists.infradead.org;
	Mon, 23 Mar 2026 07:24:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1w4Zdy-0001nR-15; Mon, 23 Mar 2026 08:24:10 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 23 Mar 2026 08:24:07 +0100
Message-ID: <20260323072408.4011172-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_002412_094067_90EE05D1 
X-CRM114-Status: GOOD (  13.60  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] regmap: align dev_get_regmap error return with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dev_get_regmap returns NULL in Linux and not an error pointer as in
barebox. Align the barebox return, so kernel code using it can be ported
unmodified.

Reported-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/base/regmap/regmap.c          | 4 ++--
 drivers/regulator/stpmic1_regulator.c | 4 ++--
 drivers/watchdog/rn5t568_wdt.c        | 4 ++--
 drivers/watchdog/stpmic1_wdt.c        | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index e27ba53dec58..e4b20c07809d 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -148,7 +148,7 @@ struct regmap *regmap_init(struct device *dev,
  * @dev:         The device the maps is attached to
  * @name:        Optional name for the map. If given it must match.
  *
- * Returns a pointer to the regmap or a ERR_PTR value on failure
+ * Returns the regmap for the device if one is present, or NULL.
  */
 struct regmap *dev_get_regmap(struct device *dev, const char *name)
 {
@@ -163,7 +163,7 @@ struct regmap *dev_get_regmap(struct device *dev, const char *name)
 			return map;
 	}
 
-	return ERR_PTR(-ENOENT);
+	return NULL;
 }
 
 struct device *regmap_get_device(struct regmap *map)
diff --git a/drivers/regulator/stpmic1_regulator.c b/drivers/regulator/stpmic1_regulator.c
index 3ed351b5801a..eade6046d603 100644
--- a/drivers/regulator/stpmic1_regulator.c
+++ b/drivers/regulator/stpmic1_regulator.c
@@ -401,8 +401,8 @@ static int stpmic1_regulator_register(struct device *dev, int id,
 	cfg->rdev.desc = &cfg->desc;
 	cfg->rdev.dev = dev;
 	cfg->rdev.regmap = dev_get_regmap(dev->parent, NULL);
-	if (IS_ERR(cfg->rdev.regmap))
-		return PTR_ERR(cfg->rdev.regmap);
+	if (!cfg->rdev.regmap)
+		return -ENOENT;
 
 	ret = of_regulator_register(&cfg->rdev, match->of_node);
 	if (ret) {
diff --git a/drivers/watchdog/rn5t568_wdt.c b/drivers/watchdog/rn5t568_wdt.c
index 2011e3e01c5f..8c3e4175f9c0 100644
--- a/drivers/watchdog/rn5t568_wdt.c
+++ b/drivers/watchdog/rn5t568_wdt.c
@@ -117,8 +117,8 @@ static int rn5t568_wdt_probe(struct device *dev)
 	wdt = xzalloc(sizeof(*wdt));
 
 	wdt->regmap = dev_get_regmap(dev->parent, NULL);
-	if (IS_ERR(wdt->regmap))
-		return PTR_ERR(wdt->regmap);
+	if (!wdt->regmap)
+		return -ENOENT;
 
 	wdd = &wdt->wdd;
 	wdd->hwdev = dev;
diff --git a/drivers/watchdog/stpmic1_wdt.c b/drivers/watchdog/stpmic1_wdt.c
index f25656e75c12..21cf721de790 100644
--- a/drivers/watchdog/stpmic1_wdt.c
+++ b/drivers/watchdog/stpmic1_wdt.c
@@ -169,8 +169,8 @@ static int stpmic1_wdt_probe(struct device *dev)
 	wdt = xzalloc(sizeof(*wdt));
 
 	wdt->regmap = dev_get_regmap(dev->parent, NULL);
-	if (IS_ERR(wdt->regmap))
-		return PTR_ERR(wdt->regmap);
+	if (!wdt->regmap)
+		return -ENOENT;
 
 	wdd = &wdt->wdd;
 	wdd->hwdev = dev;
-- 
2.47.3



