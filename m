Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from down.free-electrons.com ([37.187.137.238]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1av80E-0008VY-JL
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 18:46:31 +0000
From: Boris Brezillon <boris.brezillon@free-electrons.com>
Date: Tue, 26 Apr 2016 20:46:06 +0200
Message-Id: <1461696366-21604-1-git-send-email-boris.brezillon@free-electrons.com>
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
Subject: [PATCH] of: fix of_tree_for_each_node_from() macro
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Boris Brezillon <boris.brezillon@free-electrons.com>

of_tree_for_each_node_from() is supposed to iterate over all DT nodes
after the one pointed by the from parameter, but with the current
of_next_node() implementation we cannot access the root node.

Patch of_next_node() to point to root_node when from is NULL.

Doing that also simplifies users of of_tree_for_each_node_from() which
were duplicating the logic to point to the root_node when from is NULL.

Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
---
Hi Sacha,

Not sure this patch is doing exactly what we want, but it fixes a bug
in the sunxi clk driver I'm working on. This driver declares a
clk provider using CLK_OF_DECLARE() with the SoC compatible (the
compatible attached to the root node), which means the clk core code has
to match the root_node, and with the current of_tree_for_each_node() it
never tests the root_node.

Let me know if you have a different fix.

Thanks,

Boris
---
 drivers/of/base.c | 38 ++++++--------------------------------
 1 file changed, 6 insertions(+), 32 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index aadd228..c2cc0e6 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -30,6 +30,8 @@
 #include <linux/amba/bus.h>
 #include <linux/err.h>
 
+static struct device_node *root_node;
+
 /*
  * Iterate over all nodes of a tree. As a devicetree does not
  * have a dedicated list head, the start node (usually the root
@@ -39,6 +41,9 @@ static inline struct device_node *of_next_node(struct device_node *node)
 {
 	struct device_node *next;
 
+	if (!node)
+		return root_node;
+
 	next = list_first_entry(&node->list, struct device_node, list);
 
 	return next->parent ? next : NULL;
@@ -68,8 +73,6 @@ struct alias_prop {
 
 static LIST_HEAD(aliases_lookup);
 
-static struct device_node *root_node;
-
 static struct device_node *of_aliases;
 
 #define OF_ROOT_NODE_SIZE_CELLS_DEFAULT 1
@@ -277,12 +280,6 @@ struct device_node *of_find_node_by_phandle_from(phandle phandle,
 {
 	struct device_node *node;
 
-	if (!root)
-		root = root_node;
-
-	if (!root)
-		return NULL;
-
 	of_tree_for_each_node_from(node, root)
 		if (node->phandle == phandle)
 			return node;
@@ -309,15 +306,7 @@ EXPORT_SYMBOL(of_find_node_by_phandle);
 phandle of_get_tree_max_phandle(struct device_node *root)
 {
 	struct device_node *n;
-	phandle max;
-
-	if (!root)
-		root = root_node;
-
-	if (!root)
-		return 0;
-
-	max = root->phandle;
+	phandle max = 0;
 
 	of_tree_for_each_node_from(n, root) {
 		if (n->phandle > max)
@@ -430,9 +419,6 @@ struct device_node *of_find_node_by_name(struct device_node *from,
 {
 	struct device_node *np;
 
-	if (!from)
-		from = root_node;
-
 	of_tree_for_each_node_from(np, from)
 		if (np->name && !of_node_cmp(np->name, name))
 			return np;
@@ -458,9 +444,6 @@ struct device_node *of_find_node_by_type(struct device_node *from,
 	const char *device_type;
 	int ret;
 
-	if (!from)
-		from = root_node;
-
 	of_tree_for_each_node_from(np, from) {
 		ret = of_property_read_string(np, "device_type", &device_type);
 		if (!ret && !of_node_cmp(device_type, type))
@@ -489,9 +472,6 @@ struct device_node *of_find_compatible_node(struct device_node *from,
 {
 	struct device_node *np;
 
-	if (!from)
-		from = root_node;
-
 	of_tree_for_each_node_from(np, from)
 		if (of_device_is_compatible(np, compatible))
 			return np;
@@ -516,9 +496,6 @@ struct device_node *of_find_node_with_property(struct device_node *from,
 {
 	struct device_node *np;
 
-	if (!from)
-		from = root_node;
-
 	of_tree_for_each_node_from(np, from) {
 		struct property *pp = of_find_property(np, prop_name, NULL);
 		if (pp)
@@ -572,9 +549,6 @@ struct device_node *of_find_matching_node_and_match(struct device_node *from,
 	if (match)
 		*match = NULL;
 
-	if (!from)
-		from = root_node;
-
 	of_tree_for_each_node_from(np, from) {
 		const struct of_device_id *m = of_match_node(matches, np);
 		if (m) {
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
