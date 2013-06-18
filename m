Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x230.google.com ([2a00:1450:4008:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uozk5-0006pB-K9
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 17:31:00 +0000
Received: by mail-bk0-f48.google.com with SMTP id jf17so1935351bkc.35
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2013 10:30:34 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 18 Jun 2013 19:29:55 +0200
Message-Id: <1371576607-8090-11-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 10/22] OF: base: import of_find_compatible_node from Linux OF
 API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This imports of_find_compatible_node and corresponding for_each_compatible_node
helper from Linux OF API.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |   30 ++++++++++++++++++++++++++++++
 include/of.h      |   13 +++++++++++++
 2 files changed, 43 insertions(+), 0 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 85358d9..50a3c22 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -338,6 +338,36 @@ struct device_node *of_find_node_by_name(struct device_node *from,
 EXPORT_SYMBOL(of_find_node_by_name);
 
 /**
+ *	of_find_compatible_node - Find a node based on type and one of the
+ *                                tokens in its "compatible" property
+ *	@from:		The node to start searching from or NULL, the node
+ *			you pass will not be searched, only the next one
+ *			will; typically, you pass what the previous call
+ *			returned.
+ *	@type:		The type string to match "device_type" or NULL to ignore
+ *                      (currently always ignored in barebox)
+ *	@compatible:	The string to match to one of the tokens in the device
+ *			"compatible" list.
+ *
+ *	Returns a pointer to the node found or NULL.
+ */
+struct device_node *of_find_compatible_node(struct device_node *from,
+	const char *type, const char *compatible)
+{
+	struct device_node *np;
+
+	if (!from)
+		from = root_node;
+
+	of_tree_for_each_node(np, from)
+		if (of_device_is_compatible(np, compatible))
+			return np;
+
+	return NULL;
+}
+EXPORT_SYMBOL(of_find_compatible_node);
+
+/**
  * of_match_node - Tell if an device_node has a matching of_match structure
  *      @matches:       array of of device match structures to search in
  *      @node:          the of device structure to match against
diff --git a/include/of.h b/include/of.h
index d1503de..e170e2b 100644
--- a/include/of.h
+++ b/include/of.h
@@ -185,6 +185,8 @@ extern struct property *of_find_property(const struct device_node *np,
 extern struct device_node *of_find_node_by_name(struct device_node *from,
 	const char *name);
 extern struct device_node *of_find_node_by_path(const char *path);
+extern struct device_node *of_find_compatible_node(struct device_node *from,
+	const char *type, const char *compat);
 extern int of_device_is_available(const struct device_node *device);
 
 extern void of_alias_scan(void);
@@ -249,6 +251,14 @@ static inline struct device_node *of_find_node_by_name(struct device_node *from,
 	return NULL;
 }
 
+static inline struct device_node *of_find_compatible_node(
+						struct device_node *from,
+						const char *type,
+						const char *compat)
+{
+	return NULL;
+}
+
 static inline int of_device_is_available(const struct device_node *device)
 {
 	return 0;
@@ -272,5 +282,8 @@ static inline const char *of_alias_get(struct device_node *np)
 #define for_each_node_by_name(dn, name) \
 	for (dn = of_find_node_by_name(NULL, name); dn; \
 	     dn = of_find_node_by_name(dn, name))
+#define for_each_compatible_node(dn, type, compatible) \
+	for (dn = of_find_compatible_node(NULL, type, compatible); dn; \
+	     dn = of_find_compatible_node(dn, type, compatible))
 
 #endif /* __OF_H */
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
