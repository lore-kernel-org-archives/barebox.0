Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9WBI-0008Me-MS
 for barebox@lists.infradead.org; Wed, 14 Aug 2013 08:11:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Aug 2013 10:11:20 +0200
Message-Id: <1376467885-29489-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] of: parse phandles during unflatten
To: barebox@lists.infradead.org

With this node->phandle becomes valid after unflattening a tree
and not during of_probe later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 22 ++++------------------
 drivers/of/fdt.c  |  4 +++-
 2 files changed, 7 insertions(+), 19 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 33dfd5a..b8cdec5 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1568,22 +1568,6 @@ int of_add_memory(struct device_node *node, bool dump)
 	return 0;
 }
 
-static void __of_parse_phandles(struct device_node *node)
-{
-	struct device_node *n;
-	phandle phandle;
-	int ret;
-
-	ret = of_property_read_u32(node, "phandle", &phandle);
-	if (!ret) {
-		node->phandle = phandle;
-		list_add_tail(&node->phandles, &phandle_list);
-	}
-
-	list_for_each_entry(n, &node->children, parent_list)
-		__of_parse_phandles(n);
-}
-
 struct device_node *of_chosen;
 const char *of_model;
 
@@ -1602,7 +1586,7 @@ const struct of_device_id of_default_bus_match_table[] = {
 
 int of_probe(void)
 {
-	struct device_node *memory;
+	struct device_node *memory, *node;
 
 	if(!root_node)
 		return -ENODEV;
@@ -1610,7 +1594,9 @@ int of_probe(void)
 	of_chosen = of_find_node_by_path("/chosen");
 	of_property_read_string(root_node, "model", &of_model);
 
-	__of_parse_phandles(root_node);
+	of_tree_for_each_node_from(node, root_node)
+		if (node->phandle)
+			list_add_tail(&node->phandles, &phandle_list);
 
 	memory = of_find_node_by_path("/memory");
 	if (memory)
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 8481cf7..5055eee 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -188,7 +188,9 @@ struct device_node *of_unflatten_dtb(struct device_node *root, void *infdt)
 				p->length = len;
 				memcpy(p->value, nodep, len);
 			} else {
-				of_new_property(node, name, nodep, len);
+				p = of_new_property(node, name, nodep, len);
+				if (!strcmp(name, "phandle") && len == 4)
+					node->phandle = be32_to_cpup(p->value);
 			}
 
 			break;
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
