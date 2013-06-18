Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x236.google.com ([2a00:1450:4008:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uozk3-0006p9-NI
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 17:30:54 +0000
Received: by mail-bk0-f54.google.com with SMTP id it16so1917132bkc.27
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2013 10:30:32 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 18 Jun 2013 19:29:54 +0200
Message-Id: <1371576607-8090-10-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 09/22] OF: base: import of_find_node_by_name from Linux OF API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This imports of_find_node_by_name and corresponding for_each_node_by_name
helper from Linux OF API.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |   26 ++++++++++++++++++++++++++
 include/of.h      |   12 ++++++++++++
 2 files changed, 38 insertions(+), 0 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 827a1db..85358d9 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -312,6 +312,32 @@ int of_device_is_compatible(const struct device_node *device,
 EXPORT_SYMBOL(of_device_is_compatible);
 
 /**
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
+	if (!from)
+		from = root_node;
+
+	of_tree_for_each_node(np, from)
+		if (np->name && !of_node_cmp(np->name, name))
+			return np;
+
+	return NULL;
+}
+EXPORT_SYMBOL(of_find_node_by_name);
+
+/**
  * of_match_node - Tell if an device_node has a matching of_match structure
  *      @matches:       array of of device match structures to search in
  *      @node:          the of device structure to match against
diff --git a/include/of.h b/include/of.h
index 340fb83..d1503de 100644
--- a/include/of.h
+++ b/include/of.h
@@ -182,6 +182,8 @@ struct cdev;
 extern struct property *of_find_property(const struct device_node *np,
 					const char *name, int *lenp);
 
+extern struct device_node *of_find_node_by_name(struct device_node *from,
+	const char *name);
 extern struct device_node *of_find_node_by_path(const char *path);
 extern int of_device_is_available(const struct device_node *device);
 
@@ -241,6 +243,12 @@ static inline struct device_node *of_find_node_by_path(const char *path)
 	return NULL;
 }
 
+static inline struct device_node *of_find_node_by_name(struct device_node *from,
+	const char *name)
+{
+	return NULL;
+}
+
 static inline int of_device_is_available(const struct device_node *device)
 {
 	return 0;
@@ -261,4 +269,8 @@ static inline const char *of_alias_get(struct device_node *np)
 }
 #endif
 
+#define for_each_node_by_name(dn, name) \
+	for (dn = of_find_node_by_name(NULL, name); dn; \
+	     dn = of_find_node_by_name(dn, name))
+
 #endif /* __OF_H */
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
