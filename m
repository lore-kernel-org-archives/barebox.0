Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x229.google.com ([2a00:1450:4008:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UozkE-0006r2-CN
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 17:31:05 +0000
Received: by mail-bk0-f41.google.com with SMTP id jc3so1928093bkc.14
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2013 10:30:44 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 18 Jun 2013 19:29:58 +0200
Message-Id: <1371576607-8090-14-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 13/22] OF: base: import parent/child functions from Linux OF
 API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This imports of_get_parent, of_get_next_child, of_get_next_available_child,
and of_get_child_by_name and corresponding helpers from Linux OF API.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |   78 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h      |   49 +++++++++++++++++++++++++++++++++
 2 files changed, 127 insertions(+), 0 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 148f832..17364ea 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -862,6 +862,84 @@ int of_device_is_available(const struct device_node *device)
 }
 EXPORT_SYMBOL(of_device_is_available);
 
+/**
+ *	of_get_parent - Get a node's parent if any
+ *	@node:	Node to get parent
+ *
+ *	Returns a pointer to the parent node or NULL if already at root.
+ */
+struct device_node *of_get_parent(const struct device_node *node)
+{
+	if (!node)
+		return NULL;
+
+	return (node == root_node) ? NULL : node->parent;
+}
+EXPORT_SYMBOL(of_get_parent);
+
+/**
+ *	of_get_next_child - Iterate a node childs
+ *	@node:	parent node
+ *	@prev:	previous child of the parent node, or NULL to get first
+ *
+ *	Returns a pointer to the next child or NULL.
+ */
+struct device_node *of_get_next_child(const struct device_node *node,
+	struct device_node *prev)
+{
+	if (!node)
+		return NULL;
+
+	if (!prev)
+		return list_prepare_entry(prev, &node->children, parent_list);
+
+	list_for_each_entry_continue(prev, &node->children, parent_list)
+		return prev;
+
+	return NULL;
+}
+EXPORT_SYMBOL(of_get_next_child);
+
+/**
+ *	of_get_next_available_child - Find the next available child node
+ *	@node:	parent node
+ *	@prev:	previous child of the parent node, or NULL to get first
+ *
+ *      This function is like of_get_next_child(), except that it
+ *      automatically skips any disabled nodes (i.e. status = "disabled").
+ */
+struct device_node *of_get_next_available_child(const struct device_node *node,
+	struct device_node *prev)
+{
+	for_each_child_of_node(node, prev)
+		if (of_device_is_available(prev))
+			return prev;
+	return NULL;
+}
+EXPORT_SYMBOL(of_get_next_available_child);
+
+/**
+ *	of_get_child_by_name - Find the child node by name for a given parent
+ *	@node:	parent node
+ *	@name:	child name to look for.
+ *
+ *      This function looks for child node for given matching name
+ *
+ *	Returns a node pointer if found or NULL.
+ */
+struct device_node *of_get_child_by_name(const struct device_node *node,
+				const char *name)
+{
+	struct device_node *child;
+
+	for_each_child_of_node(node, child)
+		if (child->name && (of_node_cmp(child->name, name) == 0))
+			return child;
+
+	return NULL;
+}
+EXPORT_SYMBOL(of_get_child_by_name);
+
 void of_print_nodes(struct device_node *node, int indent)
 {
 	struct device_node *n;
diff --git a/include/of.h b/include/of.h
index 208b00b..c69b9ad 100644
--- a/include/of.h
+++ b/include/of.h
@@ -195,6 +195,14 @@ extern struct device_node *of_find_node_with_property(
 	struct device_node *from, const char *prop_name);
 extern int of_device_is_available(const struct device_node *device);
 
+extern struct device_node *of_get_parent(const struct device_node *node);
+extern struct device_node *of_get_next_child(const struct device_node *node,
+					     struct device_node *prev);
+extern struct device_node *of_get_next_available_child(
+	const struct device_node *node, struct device_node *prev);
+extern struct device_node *of_get_child_by_name(const struct device_node *node,
+					const char *name);
+
 extern void of_alias_scan(void);
 extern int of_alias_get_id(struct device_node *np, const char *stem);
 extern const char *of_alias_get(struct device_node *np);
@@ -239,6 +247,29 @@ static inline struct device_node *of_get_root_node(void)
 	return NULL;
 }
 
+static inline struct device_node *of_get_parent(const struct device_node *node)
+{
+	return NULL;
+}
+
+static inline struct device_node *of_get_next_child(
+		const struct device_node *node, struct device_node *prev)
+{
+	return NULL;
+}
+
+static inline struct device_node *of_get_next_available_child(
+		const struct device_node *node, struct device_node *prev)
+{
+	return NULL;
+}
+
+static inline struct device_node *of_get_child_by_name(
+			const struct device_node *node, const char *name)
+{
+	return NULL;
+}
+
 static inline struct property *of_find_property(const struct device_node *np,
 						const char *name,
 						int *lenp)
@@ -321,4 +352,22 @@ static inline struct device_node *of_find_matching_node(
 	for (dn = of_find_node_with_property(NULL, prop_name); dn; \
 	     dn = of_find_node_with_property(dn, prop_name))
 
+#define for_each_child_of_node(parent, child) \
+	for (child = of_get_next_child(parent, NULL); child != NULL; \
+	     child = of_get_next_child(parent, child))
+#define for_each_available_child_of_node(parent, child) \
+	for (child = of_get_next_available_child(parent, NULL); child != NULL; \
+	     child = of_get_next_available_child(parent, child))
+
+static inline int of_get_child_count(const struct device_node *np)
+{
+	struct device_node *child;
+	int num = 0;
+
+	for_each_child_of_node(np, child)
+		num++;
+
+	return num;
+}
+
 #endif /* __OF_H */
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
