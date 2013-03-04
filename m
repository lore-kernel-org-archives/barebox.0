Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5Z-0006Vw-5N
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:08 +0100
Message-Id: <1362390820-10333-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/37] of: remove allnodes list
To: barebox@lists.infradead.org

The allnodes list makes it hard to handle multiple devicetrees. Having
a list to iterate over all nodes of a tree is still good to have though.
This patch uses the list_head of the root node as the head of the list.
This way the root node is no longer part of the list, but when iterating
over a tree the root node is not interesting anyway.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |   12 +++++-------
 include/of.h      |    8 ++++++++
 2 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 37d3128..ad278ad 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -51,8 +51,6 @@ static LIST_HEAD(aliases_lookup);
 
 static LIST_HEAD(phandle_list);
 
-static LIST_HEAD(allnodes);
-
 struct device_node *root_node;
 
 struct device_node *of_aliases;
@@ -629,13 +627,13 @@ struct device_node *of_new_node(struct device_node *parent, const char *name)
 	if (parent) {
 		node->name = xstrdup(name);
 		node->full_name = asprintf("%s/%s", node->parent->full_name, name);
+		list_add(&node->list, &parent->list);
 	} else {
 		node->name = xstrdup("");
 		node->full_name = xstrdup("");
+		INIT_LIST_HEAD(&node->list);
 	}
 
-	list_add_tail(&node->list, &allnodes);
-
 	return node;
 }
 
@@ -868,8 +866,6 @@ void of_free(struct device_node *node)
 	if (!node)
 		return;
 
-	list_del(&node->list);
-
 	list_for_each_entry_safe(p, pt, &node->properties, list) {
 		list_del(&p->list);
 		free(p->name);
@@ -881,8 +877,10 @@ void of_free(struct device_node *node)
 		of_free(n);
 	}
 
-	if (node->parent)
+	if (node->parent) {
 		list_del(&node->parent_list);
+		list_del(&node->list);
+	}
 
 	if (node->device)
 		node->device->device_node = NULL;
diff --git a/include/of.h b/include/of.h
index f3fc2ae..8166273 100644
--- a/include/of.h
+++ b/include/of.h
@@ -79,6 +79,14 @@ struct fdt_header *fdt_get_tree(void);
 #define device_node_for_nach_child(node, child) \
 	list_for_each_entry(child, &node->children, parent_list)
 
+/*
+ * Iterate over all nodes of a tree. As a devicetree does not
+ * have a dedicated list head, the start node (usually the root
+ * node) will not be iterated over.
+ */
+#define of_tree_for_each_node(node, root) \
+	list_for_each_entry(node, &root->list, list)
+
 /* Helper to read a big number; size is in cells (not bytes) */
 static inline u64 of_read_number(const __be32 *cell, int size)
 {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
