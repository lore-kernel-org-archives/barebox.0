Delivery-date: Wed, 11 Jun 2025 00:51:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP7o9-005x53-1V
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 00:51:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP7o8-0007QS-Ol
	for lore@pengutronix.de; Wed, 11 Jun 2025 00:51:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ePGI0AeajKgPFUAUfuZKgBjCw0N0YuEqzisur0PjalQ=; b=Aj8sT4vSb9Ly39o40Njc6wZPr/
	nLJUrgfd1KH5v+qZfz35rwOayo8TgpIq+Wh8x/empL5BIr7uR9exeroNlgwNG2i3/5pta7dm+Z8O/
	icCdxNlayLPuRUr51kjrBe1SFnK7Fylm8yMEjuCc60FEw7Y/nOlT18M3xtnCefGURy2BelgPTTnT9
	rrZ6uS2uMXyYz2J5fJUpAfpyoTk8U3D0su8nUwYjDz0nMyzpAUZBHlk8OjfHeVNXw1mrHz2ugDkzN
	HHyTQMpSSLMfiiNgx63zPl1Cx6agUr1qZ6sprzdf3OX+PrwgrwR9/9fG9rd9F0tRDB/z+cPhLC3BU
	l0cwAdKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP7nc-00000008IpL-3Zg8;
	Tue, 10 Jun 2025 22:50:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP5ir-0000000830A-1XO0
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 20:37:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uP5ip-00011o-VL; Tue, 10 Jun 2025 22:37:27 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uP5ip-002pkn-2V;
	Tue, 10 Jun 2025 22:37:27 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uP5ip-00BcUr-2E;
	Tue, 10 Jun 2025 22:37:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Jun 2025 22:37:25 +0200
Message-Id: <20250610203726.2769570-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_133729_402599_1E49C454 
X-CRM114-Status: GOOD (  16.22  )
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
Subject: [PATCH v2 1/2] hw_random: omap-rng: ignore clocks for OMAP3/4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We do not have clock drivers for OMAP, including the AM33xx.
The omap-rng driver calls clk_get_optional and so far this returned
NULL, because CONFIG_COMMON_CLK_OF_PROVIDER was disabled.

In configurations with the option enabled, we get understandably an
error code, which makes the drive defer probe indefinitely.

We are unlikely to add clock drivers for am33xx after all these years,
so just tweak the RNG driver to require clock driver support only on K3
SoCs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - add missing hunks for actually acting on ignore_clocks..
---
 drivers/hw_random/omap-rng.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/hw_random/omap-rng.c b/drivers/hw_random/omap-rng.c
index 6b69994aad0b..e6974d7769f4 100644
--- a/drivers/hw_random/omap-rng.c
+++ b/drivers/hw_random/omap-rng.c
@@ -133,6 +133,7 @@ struct omap_rng_dev;
  * @data_present: Callback to determine if data is available.
  * @init: Callback for IP specific initialization sequence.
  * @cleanup: Callback for IP specific cleanup sequence.
+ * @ignore_clocks: assume clocks are enabled (barebox-specific)
  */
 struct omap_rng_pdata {
 	u16	*regs;
@@ -140,6 +141,7 @@ struct omap_rng_pdata {
 	u32	(*data_present)(struct omap_rng_dev *priv);
 	int	(*init)(struct omap_rng_dev *priv);
 	void	(*cleanup)(struct omap_rng_dev *priv);
+	bool	ignore_clocks;
 };
 
 struct omap_rng_dev {
@@ -230,6 +232,7 @@ static struct omap_rng_pdata omap2_rng_pdata = {
 	.data_present	= omap2_rng_data_present,
 	.init		= omap2_rng_init,
 	.cleanup	= omap2_rng_cleanup,
+	.ignore_clocks	= true,
 };
 
 static inline u32 omap4_rng_data_present(struct omap_rng_dev *priv)
@@ -299,6 +302,7 @@ static struct omap_rng_pdata omap4_rng_pdata = {
 	.data_present	= omap4_rng_data_present,
 	.init		= omap4_rng_init,
 	.cleanup	= omap4_rng_cleanup,
+	.ignore_clocks	= true,
 };
 
 static struct omap_rng_pdata eip76_rng_pdata = {
@@ -336,10 +340,14 @@ static int of_get_omap_rng_device_details(struct omap_rng_dev *priv,
 	return 0;
 }
 
-static struct clk *ti_sysc_clk_get_enabled(struct device *dev, const char *clk_id)
+static struct clk *ti_sysc_clk_get_enabled(struct omap_rng_dev *priv,
+					   struct device *dev, const char *clk_id)
 {
 	struct clk *clk;
 
+	if (priv->pdata->ignore_clocks)
+		return NULL;
+
 	clk = clk_get_optional_enabled(dev, clk_id);
 	if (!clk)
 		clk = clk_get_optional_enabled(dev->parent, clk_id);
@@ -377,22 +385,22 @@ static int omap_rng_probe(struct device *dev)
 		goto err_ioremap;
 	}
 
-	priv->clk = ti_sysc_clk_get_enabled(dev, NULL);
+	ret = of_get_omap_rng_device_details(priv, dev);
+	if (ret)
+		goto err_ioremap;
+
+	priv->clk = ti_sysc_clk_get_enabled(priv, dev, NULL);
 	if (IS_ERR(priv->clk)) {
 		ret = PTR_ERR(priv->clk);
 		goto err_ioremap;
 	}
 
-	priv->clk_reg = ti_sysc_clk_get_enabled(dev, "reg");
+	priv->clk_reg = ti_sysc_clk_get_enabled(priv, dev, "reg");
 	if (IS_ERR(priv->clk_reg)) {
 		ret = PTR_ERR(priv->clk_reg);
 		goto err_ioremap;
 	}
 
-	ret = of_get_omap_rng_device_details(priv, dev);
-	if (ret)
-		goto err_register;
-
 	ret = hwrng_register(dev, &priv->rng);
 	if (ret)
 		goto err_register;
-- 
2.39.5



