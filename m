Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9WBI-0008Mg-MU
 for barebox@lists.infradead.org; Wed, 14 Aug 2013 08:11:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Aug 2013 10:11:22 +0200
Message-Id: <1376467885-29489-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376467885-29489-1-git-send-email-s.hauer@pengutronix.de>
References: <1376467885-29489-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] of: introduce some new helpers
To: barebox@lists.infradead.org

of_get_tree_max_phandle - get the maximum phandle of a tree. Needed for
                          creating new phandles without conflicts.
of_node_create_phandle - create a phandle for a node which doesn't have one.
of_find_node_by_alias - find a node by alias name
of_find_node_by_path_or_alias - find a node by full path or alias name
of_find_root_node - find the root node for a given device node

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 101 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h      |  14 ++++++++
 2 files changed, 115 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 3ebd672..8e9d384 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -241,6 +241,32 @@ const char *of_alias_get(struct device_node *np)
 EXPORT_SYMBOL_GPL(of_alias_get);
 
 /*
+ * of_find_node_by_alias - Find a node given an alias name
+ * @root:    the root node of the tree. If NULL, use internal tree
+ * @alias:   the alias name to find
+ */
+struct device_node *of_find_node_by_alias(struct device_node *root, const char *alias)
+{
+	struct device_node *aliasnp;
+	int ret;
+	const char *path;
+
+	if (!root)
+		root = root_node;
+
+	aliasnp = of_find_node_by_path_from(root, "/aliases");
+	if (!aliasnp)
+		return NULL;
+
+	ret = of_property_read_string(aliasnp, alias, &path);
+	if (ret)
+		return NULL;
+
+	return of_find_node_by_path_from(root, path);
+}
+EXPORT_SYMBOL_GPL(of_find_node_by_alias);
+
+/*
  * of_find_node_by_phandle - Find a node given a phandle
  * @handle:    phandle of the node to find
  */
@@ -256,6 +282,62 @@ struct device_node *of_find_node_by_phandle(phandle phandle)
 EXPORT_SYMBOL(of_find_node_by_phandle);
 
 /*
+ * of_get_tree_max_phandle - Find the maximum phandle of a tree
+ * @root:    root node of the tree to search in. If NULL use the
+ *           internal tree.
+ */
+phandle of_get_tree_max_phandle(struct device_node *root)
+{
+	struct device_node *n;
+	phandle max;
+
+	if (!root)
+		root = root_node;
+
+	if (!root)
+		return 0;
+
+	max = root->phandle;
+
+	of_tree_for_each_node_from(n, root) {
+		if (n->phandle > max)
+			max = n->phandle;
+	}
+
+	return max;
+}
+EXPORT_SYMBOL(of_get_tree_max_phandle);
+
+/*
+ * of_node_create_phandle - create a phandle for a node
+ * @node:    The node to create a phandle in
+ *
+ * returns the new phandle or the existing phandle if the node
+ * already has a phandle.
+ */
+phandle of_node_create_phandle(struct device_node *node)
+{
+	phandle p;
+	struct device_node *root;
+
+	if (node->phandle)
+		return node->phandle;
+
+	root = of_find_root_node(node);
+
+	p = of_get_tree_max_phandle(root) + 1;
+
+	node->phandle = p;
+
+	p = cpu_to_be32(p);
+
+	of_set_property(node, "phandle", &p, sizeof(p), 1);
+
+	return node->phandle;
+}
+EXPORT_SYMBOL(of_node_create_phandle);
+
+/*
  * Find a property with a given name for a given node
  * and return the value.
  */
@@ -1258,6 +1340,25 @@ struct device_node *of_find_node_by_path(const char *path)
 EXPORT_SYMBOL(of_find_node_by_path);
 
 /**
+ *	of_find_node_by_path_or_alias - Find a node matching a full OF path
+ *	or an alias
+ *	@root:	The root node. If NULL the internal tree is used
+ *	@str:	the full path or alias
+ *
+ *	Returns a pointer to the node found or NULL.
+ */
+struct device_node *of_find_node_by_path_or_alias(struct device_node *root,
+		const char *str)
+{
+	if (*str ==  '/')
+		return of_find_node_by_path_from(root, str);
+	else
+		return of_find_node_by_alias(root, str);
+
+}
+EXPORT_SYMBOL(of_find_node_by_path_or_alias);
+
+/**
  * of_modalias_node - Lookup appropriate modalias for a device node
  * @node:	pointer to a device tree node
  * @modalias:	Pointer to buffer that modalias value will be copied into
diff --git a/include/of.h b/include/of.h
index b99f0b2..2c77ee6 100644
--- a/include/of.h
+++ b/include/of.h
@@ -689,4 +689,18 @@ int of_device_enable_path(const char *path);
 int of_device_disable(struct device_node *node);
 int of_device_disable_path(const char *path);
 
+phandle of_get_tree_max_phandle(struct device_node *root);
+phandle of_node_create_phandle(struct device_node *node);
+struct device_node *of_find_node_by_alias(struct device_node *root,
+		const char *alias);
+struct device_node *of_find_node_by_path_or_alias(struct device_node *root,
+		const char *str);
+
+static inline struct device_node *of_find_root_node(struct device_node *node)
+{
+	while (node->parent)
+		node = node->parent;
+
+	return node;
+}
 #endif /* __OF_H */
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
