Delivery-date: Mon, 15 Dec 2025 09:25:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3tK-00BfzA-2t
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 09:25:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3tK-0008PJ-9b
	for lore@pengutronix.de; Mon, 15 Dec 2025 09:25:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kx6h2UbmI30WqFN1o0ZjBn0sd6OVi+6dfg53W2Du/0M=; b=kSqb7wegB2pZYMAb8cYk1bhP1k
	8uquQpOVzagF05IbO8E7BSFRSxb6q5TvXZEByDChgxyEam76b6vlF42rxq8Y9mwlKNnhehvGWY51Q
	WeLaehdL9Q4E/xy3IGQRA/rjD20HUN65cgptCOeSWijHBBbxqb4yZz04rGxNoLqIPsCe9mMbz3b7I
	ROLFi0XdmzEg3xhv+nY4KnxNqKwyFpGRbATwc61S95kU70mp0ruoL9UoO6MDCrSOnn+A/N/zz81Rz
	+7FFC1LW8IjH8Qe2s4Ghf+CIiTMm8VVsJggrL4bndIUSYKKRZIQLeBsi2/+O7lKvGSzMGKvJKBAXS
	qQuiXmeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3st-00000003G3A-2Tp4;
	Mon, 15 Dec 2025 08:24:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3sr-00000003G1n-19Xs
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 08:24:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3sp-0008GE-GZ; Mon, 15 Dec 2025 09:24:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3sp-005kUQ-13;
	Mon, 15 Dec 2025 09:24:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3sp-00000008IwD-0ydj;
	Mon, 15 Dec 2025 09:24:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Dec 2025 09:24:38 +0100
Message-ID: <20251215082442.1977789-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251215082442.1977789-1-a.fatoum@pengutronix.de>
References: <20251215082442.1977789-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_002445_865503_96916EFF 
X-CRM114-Status: GOOD (  10.07  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] of: implement of_get_machine_vendor()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While of_get_machine_compatible() returns what's after the comma in the
first top-level compatible string, of_get_machine_vendor() will return
what's before the comma. This will be used to report OEM name via
SMBIOS.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 23 +++++++++++++++++++++++
 include/of.h      |  1 +
 2 files changed, 24 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 0a7704ca1045..71c95ad19863 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -3720,6 +3720,29 @@ const char *of_get_machine_compatible(void)
 }
 EXPORT_SYMBOL(of_get_machine_compatible);
 
+/**
+ * of_get_machine_vendor - get first vendor prefix string from the root node.
+ *
+ * Returns the string or NULL.
+ */
+char *of_get_machine_vendor(void)
+{
+	const char *name = NULL;
+	char *p;
+
+	if (!root_node)
+		return NULL;
+
+
+	of_property_read_string(root_node, "compatible", &name);
+
+	p = strdup(name);
+	if (p)
+		*strchrnul(p, ',') = '\0';
+	return p;
+}
+EXPORT_SYMBOL(of_get_machine_vendor);
+
 static int of_init_early_vars(void)
 {
 	struct device_node *bootsource;
diff --git a/include/of.h b/include/of.h
index d1efab13c780..04263e394237 100644
--- a/include/of.h
+++ b/include/of.h
@@ -217,6 +217,7 @@ extern void of_delete_node(struct device_node *node);
 
 extern int of_alias_from_compatible(const struct device_node *node, char *alias, int len);
 extern const char *of_get_machine_compatible(void);
+extern char *of_get_machine_vendor(void);
 extern int of_machine_is_compatible(const char *compat);
 extern int of_device_is_compatible(const struct device_node *device,
 		const char *compat);
-- 
2.47.3



