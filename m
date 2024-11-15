Delivery-date: Fri, 15 Nov 2024 13:16:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBvFc-002F7N-0x
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 13:16:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBvFb-0004QC-IY
	for lore@pengutronix.de; Fri, 15 Nov 2024 13:16:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MqtFaRLeP00Er92giX/Fa91uBnpUzeWyp+hHwqixclQ=; b=iF71olfMnux0dpBCtVImaIEuOA
	YkpSqfwCXL7JBZ3xPv3fygsXX6eD/NJmHqWocgrzD/L/nb4XkCazrEAsQvocIjtTIk4jVdBrLM3OV
	uBuhzjCt3nTfHZ/X+63FTnnuPz/3fKRJUKjSRs3SAEcXqk/IHoQaAi3zw7JXHbI6Q1H2TtjS2BG4E
	ank+HeYigQfr53iOYR5oteEmiNIJEruhH4JeTFwmYz1kwTsa7YV3MRcdVxLBc1tctej7iVtJP+tMf
	L3ykRRYh3mVQZ072/PMT2LpetXoK+jL2T3Eg6bS8cs2VhhncUuwanot7SWmCqmBHp8ixkwRdptM5d
	1TgOsSaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBvFC-00000002dO9-0VnB;
	Fri, 15 Nov 2024 12:16:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBvF7-00000002dLB-0EVU
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 12:16:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBvF5-0004BC-Gn; Fri, 15 Nov 2024 13:16:03 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBvF5-000u9h-13;
	Fri, 15 Nov 2024 13:16:03 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBvF5-00GmQm-0l;
	Fri, 15 Nov 2024 13:16:03 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: h.assmann@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 15 Nov 2024 13:15:59 +0100
Message-Id: <20241115121602.3999375-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_041605_154109_7A29B18E 
X-CRM114-Status: GOOD (  11.88  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/4] of: add helpers to get alias from device node path + property name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The existing of_find_device and of_find_path helpers require that
barebox has already probed devices. For use in code where this
assumption doesn't always hold true, let's add helpers that return
the alias if it exists.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - fix check for wring variable: rnode = ...; if (!node)
    to if (!rnode)
  - look up property in node at np_name, not in root node
---
 drivers/of/base.c | 57 +++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h      | 32 ++++++++++++++++++++++++++
 2 files changed, 89 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 960a9327aed2..cf850d4bf789 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -318,6 +318,63 @@ const char *of_alias_get(struct device_node *np)
 }
 EXPORT_SYMBOL_GPL(of_alias_get);
 
+static const char *of_get_partition_device_alias(struct device_node *np)
+{
+	const char *alias;
+
+	alias = of_alias_get(np);
+	if (alias)
+		return alias;
+
+	np = of_get_parent(np);
+	if (np && of_device_is_compatible(np, "fixed-partitions"))
+		np = of_get_parent(np);
+
+	return of_alias_get(np);
+}
+
+const char *of_property_get_alias_from(struct device_node *root,
+				       const char *np_name, const char *propname,
+				       int index)
+{
+	struct device_node *node, *rnode;
+	const char *path;
+	int ret;
+
+	node = of_find_node_by_path_or_alias(root, np_name);
+	if (!node)
+		return NULL;
+
+	ret = of_property_read_string_index(node, propname, index, &path);
+	if (ret < 0)
+		return NULL;
+
+	rnode = of_find_node_by_path(path);
+	if (!rnode)
+		return NULL;
+
+	return of_get_partition_device_alias(rnode);
+}
+EXPORT_SYMBOL_GPL(of_property_get_alias_from);
+
+const char *of_parse_phandle_and_get_alias_from(struct device_node *root,
+						const char *np_name, const char *phandle_name,
+						int index)
+{
+	struct device_node *node, *rnode;
+
+	node = of_find_node_by_path_or_alias(root, np_name);
+	if (!node)
+		return NULL;
+
+	rnode = of_parse_phandle_from(node, root, phandle_name, index);
+	if (!rnode)
+		return NULL;
+
+	return of_get_partition_device_alias(rnode);
+}
+EXPORT_SYMBOL_GPL(of_parse_phandle_and_get_alias_from);
+
 /*
  * of_find_node_by_alias - Find a node given an alias name
  * @root:    the root node of the tree. If NULL, use internal tree
diff --git a/include/of.h b/include/of.h
index 3f5e5f9b04bb..e93b1bbf2f0a 100644
--- a/include/of.h
+++ b/include/of.h
@@ -314,6 +314,14 @@ extern int of_alias_get_id_from(struct device_node *root, struct device_node *np
 extern const char *of_alias_get(struct device_node *np);
 extern int of_modalias_node(struct device_node *node, char *modalias, int len);
 
+extern const char *of_property_get_alias_from(struct device_node *root,
+					      const char *np_name, const char *propname,
+					      int index);
+
+extern const char *of_parse_phandle_and_get_alias_from(struct device_node *root,
+						       const char *np_name, const char *phandle_name,
+						       int index);
+
 extern struct device_node *of_get_root_node(void);
 extern int of_set_root_node(struct device_node *node);
 extern int barebox_register_of(struct device_node *root);
@@ -944,6 +952,20 @@ static inline int of_modalias_node(struct device_node *node, char *modalias,
 	return -ENOSYS;
 }
 
+static inline const char *of_property_get_alias_from(struct device_node *root,
+						     const char *np_name, const char *propname,
+						     int index)
+{
+	return NULL;
+}
+
+static inline const char *of_parse_phandle_and_get_alias_from(struct device_node *root,
+							      const char *np_name, const char *phandle_name,
+							      int index)
+{
+	return NULL;
+}
+
 static inline int of_platform_populate(struct device_node *root,
 				const struct of_device_id *matches,
 				struct device *parent)
@@ -1275,6 +1297,16 @@ static inline void of_delete_property_by_name(struct device_node *np, const char
 	of_delete_property(of_find_property(np, name, NULL));
 }
 
+static inline const char *of_property_get_alias(const char *np_name, const char *propname)
+{
+	return of_property_get_alias_from(NULL, np_name, propname, 0);
+}
+
+static inline const char *of_parse_phandle_and_get_alias(const char *np_name, const char *phandle_name)
+{
+	return of_parse_phandle_and_get_alias_from(NULL, np_name, phandle_name, 0);
+}
+
 extern const struct of_device_id of_default_bus_match_table[];
 
 int of_device_enable(struct device_node *node);
-- 
2.39.5



