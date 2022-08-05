Delivery-date: Fri, 05 Aug 2022 07:43:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJq7i-00C9Av-8J
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 07:43:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJq7i-00071q-Cv
	for lore@pengutronix.de; Fri, 05 Aug 2022 07:43:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6kAn6kkSN5Teb0FLDh2tZ7OTh60RuMfA5e/IDURCE/s=; b=fZy3fV3YcfhUXiXDsER7F7L6XA
	8Ku7tqBDMAdaKUghraLWad2KHry5wR7JvRb/pBWN2O18/T0Dz+iKzQLHk3N9VVzy1+gJadohvWOxr
	F2E3o9CK1x3dzGKwuBIYqg1tNe3qFdENc81Msh0YMT4FkdQ2AfgNzNwTmP03sbDhMdpI9tHeFb+HR
	Z7NieHvgYLQZqo0oYODo47X0sqPN3Sw8uPTBCFcFiuHpl7dTjyoCMjRuF92ItSjOY6kRysvQXHt9l
	mAzEcJyP7DiKwoVtctShHr+V20PVBfF6z7POg4Z/MOsJd2IY5ZIxRg8FPmF/sSV23oX2CNUOBcJi0
	j996hd4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJq6S-00C7iH-8Y; Fri, 05 Aug 2022 05:42:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJq6G-00C7eR-8y
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 05:42:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oJq6E-0006pF-83; Fri, 05 Aug 2022 07:42:18 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJq6B-001pkH-8B; Fri, 05 Aug 2022 07:42:17 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJq6C-00EC78-P2; Fri, 05 Aug 2022 07:42:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  5 Aug 2022 07:42:13 +0200
Message-Id: <20220805054215.3383099-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220805054215.3383099-1-a.fatoum@pengutronix.de>
References: <20220805054215.3383099-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220804_224220_361574_F34D3E52 
X-CRM114-Status: GOOD (  16.40  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2 2/4] drivers: power: ignore power domains with barebox,allow-dummy
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



