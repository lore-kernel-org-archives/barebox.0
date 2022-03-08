Delivery-date: Tue, 08 Mar 2022 12:52:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYOR-004bto-OB
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 12:52:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYOQ-00074z-1S
	for lore@pengutronix.de; Tue, 08 Mar 2022 12:52:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j5MEUcXghf6OvSYT0ayKF2Dc6CT1cvwET3/igXTg5IQ=; b=xAegFKGOtrD6en
	bIgViaP0CoXUpIXi4mW1wrjqfrl6OLYGX3JCL7dXgGbUBEHBfMP5M6iMCgXKBojdtpOW8M3hgJhQu
	ulYHL5FrPUiTcqao/SFz+DuxN9c3ybBPA7+Id76g9AtzuszkQE6wmzJ24uyvyULU/rg3NVnFEA8SB
	B2EJiyIYKqCfLnAh1MtHWx85aAe+BPUlhDNK1McVq6QI0JmKV9AsSYS5h/Kt628u3Sc6bRFt6jedr
	KBnh9rl/owSP0V62moe0ajSxYD2jz/e+TH6JT11ZgtI0HVOu0OX1UfEsPtVBTC386niTlHOcUfKoO
	ckuqLGKJ52puek7m4VuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRYNA-004DUc-Ao; Tue, 08 Mar 2022 11:51:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRYN0-004DSX-0q
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 11:51:15 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYMq-0006ip-Rc; Tue, 08 Mar 2022 12:51:04 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYMq-00FdcU-4k; Tue, 08 Mar 2022 12:51:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Mar 2022 12:51:01 +0100
Message-Id: <20220308115103.3664883-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220308115103.3664883-1-s.hauer@pengutronix.de>
References: <20220308115103.3664883-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_035114_107901_908827BB 
X-CRM114-Status: GOOD (  15.77  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/5] of: Add of_find_node_by_name() with Linux semantics
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 38 ++++++++++++++++++++++++++++++++++++++
 include/of.h      | 20 ++++++++++++++++++++
 2 files changed, 58 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index d5cbb12a29..83291c4785 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -23,6 +23,21 @@
 
 static struct device_node *root_node;
 
+bool of_node_name_eq(const struct device_node *np, const char *name)
+{
+	const char *node_name;
+	size_t len;
+
+	if (!np)
+		return false;
+
+	node_name = kbasename(np->full_name);
+		len = strchrnul(node_name, '@') - node_name;
+
+	return (strlen(name) == len) && (strncmp(node_name, name, len) == 0);
+}
+EXPORT_SYMBOL(of_node_name_eq);
+
 /*
  * Iterate over all nodes of a tree. As a devicetree does not
  * have a dedicated list head, the start node (usually the root
@@ -560,6 +575,29 @@ struct device_node *of_find_node_by_name_address(struct device_node *from,
 }
 EXPORT_SYMBOL(of_find_node_by_name_address);
 
+/**
+ *	of_find_node_by_name - Find a node by its "name" property
+ *	@from:	The node to start searching from or NULL, the node
+ *		you pass will not be searched, only the next one
+ *		will; typically, you pass what the previous call
+ *		returned.
+ *	@name:	The name string to match against
+ *
+ *	Returns a pointer to the node found or NULL.
+ */
+struct device_node *of_find_node_by_name(struct device_node *from,
+	const char *name)
+{
+	struct device_node *np;
+
+	of_tree_for_each_node_from(np, from)
+		if (np->name && of_node_name_eq(np, name))
+			return np;
+
+	return NULL;
+}
+EXPORT_SYMBOL(of_find_node_by_name);
+
 /**
  *	of_find_node_by_type - Find a node by its "device_type" property
  *	@from:  The node to start searching from, or NULL to start searching
diff --git a/include/of.h b/include/of.h
index 2c1a3f5510..9089409f9f 100644
--- a/include/of.h
+++ b/include/of.h
@@ -120,6 +120,7 @@ extern int of_bus_n_addr_cells(struct device_node *np);
 extern int of_n_addr_cells(struct device_node *np);
 extern int of_bus_n_size_cells(struct device_node *np);
 extern int of_n_size_cells(struct device_node *np);
+extern bool of_node_name_eq(const struct device_node *np, const char *name);
 
 extern struct property *of_find_property(const struct device_node *np,
 					const char *name, int *lenp);
@@ -136,6 +137,8 @@ extern struct property *of_new_property_const(struct device_node *node,
 					      const void *data, int len);
 extern void of_delete_property(struct property *pp);
 
+extern struct device_node *of_find_node_by_name(struct device_node *from,
+	const char *name);
 extern struct device_node *of_find_node_by_name_address(struct device_node *from,
 	const char *name);
 extern struct device_node *of_find_node_by_path_from(struct device_node *from,
@@ -313,6 +316,11 @@ struct device_node *of_find_node_by_path_or_alias(struct device_node *root,
 int of_autoenable_device_by_path(char *path);
 int of_autoenable_i2c_by_component(char *path);
 #else
+static inline bool of_node_name_eq(const struct device_node *np, const char *name)
+{
+	return false;
+}
+
 static inline int of_parse_partitions(struct cdev *cdev,
 					  struct device_node *node)
 {
@@ -653,6 +661,12 @@ static inline struct device_node *of_find_node_by_path(const char *path)
 	return NULL;
 }
 
+static inline struct device_node *of_find_node_by_name(struct device_node *from,
+	const char *name)
+{
+	return NULL;
+}
+
 static inline struct device_node *of_find_node_by_name_address(struct device_node *from,
 	const char *name)
 {
@@ -824,12 +838,18 @@ static inline int of_autoenable_i2c_by_component(char *path)
 
 #define for_each_property_of_node(dn, pp) \
 	list_for_each_entry(pp, &dn->properties, list)
+#define for_each_node_by_name(dn, name) \
+	for (dn = of_find_node_by_name(NULL, name); dn; \
+	     dn = of_find_node_by_name(dn, name))
 #define for_each_node_by_name_address(dn, name) \
 	for (dn = of_find_node_by_name_address(NULL, name); dn; \
 	     dn = of_find_node_by_name_address(dn, name))
 #define for_each_node_by_type(dn, type) \
 	for (dn = of_find_node_by_type(NULL, type); dn; \
 	     dn = of_find_node_by_type(dn, type))
+#define for_each_node_by_name_from(dn, root, name) \
+	for (dn = of_find_node_by_name(root, name); dn; \
+	     dn = of_find_node_by_name(dn, name))
 #define for_each_node_by_name_address_from(dn, root, name) \
 	for (dn = of_find_node_by_name_address(root, name); dn; \
 	     dn = of_find_node_by_name_address(dn, name))
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

