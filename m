Delivery-date: Fri, 19 Jan 2024 17:43:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQrxi-007HZF-2a
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 17:43:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQrxj-0005Rn-Dw
	for lore@pengutronix.de; Fri, 19 Jan 2024 17:43:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xcCp54KYmviLT3ng4k9+J+EIF03txGEbz44wb55hZa4=; b=bgTpl4dIUvlUmko8x1jN6vKzsg
	3a9Y/zd7pb6YXUCFAEG2d0vcTVIcF/Qb6a4HCg/gzsjZzgbEonFb8bF8PVOxeAG7XzQk/xprfu/rJ
	iU7NZXfFOndVbbeozmbQltRWKZVZp+SGPG8NAC+PnbuGwl94XEh3rfTY2VZvJ7PLWEXtAavo1DDh6
	d4qwHX854228+QMxh1sRqmUe6+axRlgLQriUZlqsZXpcs6eUC01I0JnTvhUzgo2vRGZ75hyjqgwuk
	UOks48l05Tr0AioJRb3bRankFGaRxy0lyD/7NWUHZXeLieiB5PR4y4DUrWtXG1s2DSE1xfZAvyz4h
	DFGdYNUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrwn-0069io-24;
	Fri, 19 Jan 2024 16:42:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrwc-0069a3-1D
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 16:42:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrwb-0004z2-8I; Fri, 19 Jan 2024 17:42:13 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrwa-000xYl-S3; Fri, 19 Jan 2024 17:42:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0054dX-24;
	Fri, 19 Jan 2024 17:26:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Jan 2024 17:26:03 +0100
Message-Id: <20240119162610.1014870-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
References: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_084214_420098_2ED5FC00 
X-CRM114-Status: GOOD (  12.00  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 12/19] pmdomain: implement pm_genpd_remove/of_genpd_del_provider for cleanup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have pm_genpd_init/of_genpd_add_provider, but lack functions
to deregister them. Port the deregisteration functions over from Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/power.c | 31 +++++++++++++++++++++++++++++++
 include/pm_domain.h  | 13 +++++++++++++
 2 files changed, 44 insertions(+)

diff --git a/drivers/base/power.c b/drivers/base/power.c
index c4318fa1dfd1..f7629f554a72 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -40,6 +40,19 @@ int pm_genpd_init(struct generic_pm_domain *genpd, void *gov, bool is_off)
 }
 EXPORT_SYMBOL_GPL(pm_genpd_init);
 
+int pm_genpd_remove(struct generic_pm_domain *genpd)
+{
+	if (IS_ERR_OR_NULL(genpd))
+		return -EINVAL;
+
+	list_del(&genpd->gpd_list_node);
+
+	pr_debug("%s: removed %s\n", __func__, genpd->name);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(pm_genpd_remove);
+
 /**
  * struct of_genpd_provider - PM domain provider registration structure
  * @link: Entry in global list of PM domain providers
@@ -209,6 +222,24 @@ int of_genpd_add_provider_onecell(struct device_node *np,
 }
 EXPORT_SYMBOL_GPL(of_genpd_add_provider_onecell);
 
+/**
+ * of_genpd_del_provider() - Remove a previously registered PM domain provider
+ * @np: Device node pointer associated with the PM domain provider
+ */
+void of_genpd_del_provider(struct device_node *np)
+{
+	struct of_genpd_provider *cp, *tmp;
+
+	list_for_each_entry_safe(cp, tmp, &of_genpd_providers, link) {
+		if (cp->node == np) {
+			list_del(&cp->link);
+			kfree(cp);
+			break;
+		}
+	}
+}
+EXPORT_SYMBOL_GPL(of_genpd_del_provider);
+
 /**
  * genpd_get_from_provider() - Look-up PM domain
  * @genpdspec: OF phandle args to use for look-up
diff --git a/include/pm_domain.h b/include/pm_domain.h
index 1fa7f0bdbd3e..f637eb1afa9d 100644
--- a/include/pm_domain.h
+++ b/include/pm_domain.h
@@ -39,6 +39,8 @@ int pm_runtime_resume_and_get_genpd(struct device *dev);
 
 int pm_genpd_init(struct generic_pm_domain *genpd, void *gov, bool is_off);
 
+int pm_genpd_remove(struct generic_pm_domain *genpd);
+
 int of_genpd_add_provider_simple(struct device_node *np,
 				 struct generic_pm_domain *genpd);
 
@@ -51,6 +53,8 @@ struct genpd_onecell_data {
 int of_genpd_add_provider_onecell(struct device_node *np,
 				  struct genpd_onecell_data *data);
 
+void of_genpd_del_provider(struct device_node *np);
+
 void pm_genpd_print(void);
 
 #else
@@ -65,6 +69,11 @@ static inline int pm_genpd_init(struct generic_pm_domain *genpd,
 	return -ENOSYS;
 }
 
+static inline int pm_genpd_remove(struct generic_pm_domain *genpd);
+{
+	return -EOPNOTSUPP;
+}
+
 static inline int genpd_dev_pm_attach(struct device *dev)
 {
 	return 0;
@@ -94,6 +103,10 @@ of_genpd_add_provider_simple(struct device_node *np,
 	return -ENOTSUPP;
 }
 
+static inline void of_genpd_del_provider(struct device_node *np)
+{
+}
+
 #endif
 
 /**
-- 
2.39.2



