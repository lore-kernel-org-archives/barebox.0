Delivery-date: Thu, 03 Aug 2023 12:51:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvW-004wMv-3Y
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:51:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvS-0001m4-KT
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:51:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y4VSj9u3mwZkNEHEAWxBk9Kf2GXD1SeQOY341MSxN7o=; b=zD2IxJ4YZSKKIcJrj1jRntJgt7
	JPFrB0F56xsj5lvRcYWhuKjjZVoK3FzG+cSls0Pm1LFPu8lOUYy5TFYngj7DuqHHRmU2hOK59e8Kx
	bILzaiVTuJ52eDMTKNof6zH2KwTzsi/TbRaFB7alcjBWGP/ml1mPinf7qQePzRT2CQTbNQVRC1P9w
	FIZacaZwZuKOXEdN0QUP0nbQ2+k7ib/ZkTxrsP6EWGZx1qJdKeiMrpryfjF4ZyQrgYu7wjZ8VzIr1
	fgUhYFQSAy21FPGDzagOS+JBmrjpXUa8o5lFxFxGxiykC+MBbxb8Frh7zicgFl+ujo6KJ/XmC1+3B
	5MLmxpZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuH-007UcR-05;
	Thu, 03 Aug 2023 10:50:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuC-007UWw-0X
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuA-0000uX-So; Thu, 03 Aug 2023 12:50:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuA-000ov2-44; Thu, 03 Aug 2023 12:50:06 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HAyp-6s; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:49:42 +0200
Message-Id: <20230803105003.4088205-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_035008_199338_E540D201 
X-CRM114-Status: GOOD (  18.78  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 01/22] pm_domain: Add onecell support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far we only have simple translation support. Add support for onecell
translation taken straight from Linux. This is needed for upcoming TI K3
support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/power.c | 76 ++++++++++++++++++++++++++++++++++++++++++++
 include/pm_domain.h  |  9 ++++++
 2 files changed, 85 insertions(+)

diff --git a/drivers/base/power.c b/drivers/base/power.c
index 2db24329dd..699af3e5a9 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -79,6 +79,37 @@ static struct generic_pm_domain *genpd_xlate_simple(
 	return data;
 }
 
+/**
+ * genpd_xlate_onecell() - Xlate function using a single index.
+ * @genpdspec: OF phandle args to map into a PM domain
+ * @data: xlate function private data - pointer to struct genpd_onecell_data
+ *
+ * This is a generic xlate function that can be used to model simple PM domain
+ * controllers that have one device tree node and provide multiple PM domains.
+ * A single cell is used as an index into an array of PM domains specified in
+ * the genpd_onecell_data struct when registering the provider.
+ */
+static struct generic_pm_domain *genpd_xlate_onecell(
+					struct of_phandle_args *genpdspec,
+					void *data)
+{
+	struct genpd_onecell_data *genpd_data = data;
+	unsigned int idx = genpdspec->args[0];
+
+	if (genpdspec->args_count != 1)
+		return ERR_PTR(-EINVAL);
+
+	if (idx >= genpd_data->num_domains) {
+		pr_err("%s: invalid domain index %u\n", __func__, idx);
+		return ERR_PTR(-EINVAL);
+	}
+
+	if (!genpd_data->domains[idx])
+		return ERR_PTR(-ENOENT);
+
+	return genpd_data->domains[idx];
+}
+
 /**
  * genpd_add_provider() - Register a PM domain provider for a node
  * @np: Device node pointer associated with the PM domain provider.
@@ -124,6 +155,51 @@ int of_genpd_add_provider_simple(struct device_node *np,
 }
 EXPORT_SYMBOL_GPL(of_genpd_add_provider_simple);
 
+/**
+ * of_genpd_add_provider_onecell() - Register a onecell PM domain provider
+ * @np: Device node pointer associated with the PM domain provider.
+ * @data: Pointer to the data associated with the PM domain provider.
+ */
+int of_genpd_add_provider_onecell(struct device_node *np,
+				  struct genpd_onecell_data *data)
+{
+	struct generic_pm_domain *genpd;
+	unsigned int i;
+	int ret = -EINVAL;
+
+	if (!np || !data)
+		return -EINVAL;
+
+	if (!data->xlate)
+		data->xlate = genpd_xlate_onecell;
+
+	for (i = 0; i < data->num_domains; i++) {
+		genpd = data->domains[i];
+
+		if (!genpd)
+			continue;
+		if (!genpd_present(genpd))
+			goto error;
+	}
+
+	ret = genpd_add_provider(np, data->xlate, data);
+	if (ret < 0)
+		goto error;
+
+	return 0;
+
+error:
+	while (i--) {
+		genpd = data->domains[i];
+
+		if (!genpd)
+			continue;
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(of_genpd_add_provider_onecell);
+
 /**
  * genpd_get_from_provider() - Look-up PM domain
  * @genpdspec: OF phandle args to use for look-up
diff --git a/include/pm_domain.h b/include/pm_domain.h
index d297053531..a7e46c86b9 100644
--- a/include/pm_domain.h
+++ b/include/pm_domain.h
@@ -56,6 +56,15 @@ int pm_genpd_init(struct generic_pm_domain *genpd, void *gov, bool is_off);
 int of_genpd_add_provider_simple(struct device_node *np,
 				 struct generic_pm_domain *genpd);
 
+struct genpd_onecell_data {
+	struct generic_pm_domain **domains;
+	unsigned int num_domains;
+	genpd_xlate_t xlate;
+};
+
+int of_genpd_add_provider_onecell(struct device_node *np,
+				  struct genpd_onecell_data *data);
+
 void pm_genpd_print(void);
 
 #else
-- 
2.39.2



