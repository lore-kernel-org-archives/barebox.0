Delivery-date: Mon, 08 Aug 2022 16:02:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL3Ke-00GEod-E0
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 16:02:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL3Kf-0007Vp-6y
	for lore@pengutronix.de; Mon, 08 Aug 2022 16:02:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9WucUtwlbhtmNbaZHHAO5gkR3WScmRd01LEYwV1B+cs=; b=MWPKCw8vGDdvLR2ONQ+jyOubaz
	h2dATl2pGKkRvIsOlP3MtmPbNgqZU5seMIbBvyYL9q0REM7SAWmPJfkuI9aOBm9ofsolFluhkhE9U
	faYIi2CKp0xBqV7uBJK2NdGy9RGexuzEkbhG4M7sCmqKJGE+tVNJPNJdvMjoYVtYFIrikndAlptLn
	xSXz1U9E5RPGdYeQThwMSHS1ZfFrQUJmYSelaNUJqL9dcuPN3FnGgVMC/LilLVRf4U+AOUPfnQ6D9
	h3fHetM2EoVbsTXQx/QCJcbY0QFLNzP1glHC3BT5qB/kXSn+A2eq0sUGVVaXMkJxVIKG6UUT4bHIl
	mAbdXPVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL3JI-00EFdX-IY; Mon, 08 Aug 2022 14:00:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL3JB-00EFb8-I2
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 14:00:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oL3JA-0006st-0F; Mon, 08 Aug 2022 16:00:40 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oL3J6-002Vim-Uj; Mon, 08 Aug 2022 16:00:39 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oL3J8-0071Dt-45; Mon, 08 Aug 2022 16:00:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Aug 2022 16:00:33 +0200
Message-Id: <20220808140035.1672733-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220808140035.1672733-1-a.fatoum@pengutronix.de>
References: <20220808140035.1672733-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_070041_614164_8DEC5BD2 
X-CRM114-Status: GOOD (  16.38  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master v3 2/4] drivers: power: ignore power domains with barebox,allow-dummy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With deep probe enabled, we can know for certain whether a driver will
be found for a device or not. This allows us to specially handle devices
that lack a driver. We already do that for regulators, where the device
tree can specify barebox,allow-dummy-supply for regulators that are
known to be enabled by the time barebox runs. Add the same functionality
for power domains as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
  - no change
v1 -> v2:
  - no change
---
 drivers/base/power.c | 24 +++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/base/power.c b/drivers/base/power.c
index 96cac1a091f3..4a206051b137 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -139,14 +139,32 @@ static struct generic_pm_domain *genpd_get_from_provider(
 					struct of_phandle_args *genpdspec)
 {
 	struct generic_pm_domain *genpd = ERR_PTR(-ENOENT);
+	struct device_node *node = genpdspec->np;
 	struct of_genpd_provider *provider;
+	int ret;
 
 	if (!genpdspec)
 		return ERR_PTR(-EINVAL);
 
+	ret = of_device_ensure_probed(node);
+	if (ret) {
+		struct device_node *parent;
+
+		/*
+		 * If "barebox,allow-dummy" property is set for power domain
+		 * provider, assume it's turned on.
+		 */
+		parent = of_get_parent(node);
+		if (of_get_property(node, "barebox,allow-dummy", NULL) ||
+		    of_get_property(parent, "barebox,allow-dummy", NULL))
+			return NULL;
+
+		return ERR_PTR(ret);
+	}
+
 	/* Check if we have such a provider in our array */
 	list_for_each_entry(provider, &of_genpd_providers, link) {
-		if (provider->node == genpdspec->np)
+		if (provider->node == node)
 			genpd = provider->xlate(genpdspec, provider->data);
 		if (!IS_ERR(genpd))
 			break;
@@ -175,7 +193,7 @@ static int genpd_power_on(struct generic_pm_domain *genpd, unsigned int depth)
 {
 	int ret;
 
-	if (genpd_status_on(genpd))
+	if (!genpd || genpd_status_on(genpd))
 		return 0;
 
 	ret = _genpd_power_on(genpd, true);
@@ -211,7 +229,7 @@ static int __genpd_dev_pm_attach(struct device_d *dev, struct device_node *np,
 		return (ret == -ENOENT) ? -EPROBE_DEFER : ret;
 	}
 
-	dev_dbg(dev, "adding to PM domain %s\n", pd->name);
+	dev_dbg(dev, "adding to PM domain %s\n", pd ? pd->name : "dummy");
 
 	if (power_on)
 		ret = genpd_power_on(pd, 0);
-- 
2.30.2



