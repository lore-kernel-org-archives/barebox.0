Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5Y-0006Vc-BJ
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:05 +0100
Message-Id: <1362390820-10333-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/37] of: export of_find_child
To: barebox@lists.infradead.org

of_find_child is a useful function. Export it and rename it to
of_find_child_by_name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |   16 +++-------------
 include/of.h      |    2 ++
 2 files changed, 5 insertions(+), 13 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index d134f1e..86dca6a 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -910,23 +910,13 @@ int of_probe(void)
 	return 0;
 }
 
-static struct device_node *of_find_child(struct device_node *node, const char *name)
+struct device_node *of_find_child_by_name(struct device_node *node, const char *name)
 {
 	struct device_node *_n;
 
-	if (!root_node)
-		return NULL;
-
-	if (!node && !*name)
-		return root_node;
-
-	if (!node)
-		node = root_node;
-
-	list_for_each_entry(_n, &node->children, parent_list) {
+	device_node_for_nach_child(node, _n)
 		if (!strcmp(_n->name, name))
 			return _n;
-	}
 
 	return NULL;
 }
@@ -975,7 +965,7 @@ int of_unflatten_dtb(struct fdt_header *fdt)
 			if (!node) {
 				node = root;
 			} else {
-				if ((n = of_find_child(node, pathp))) {
+				if ((n = of_find_child_by_name(node, pathp))) {
 					node = n;
 				} else {
 					node = of_new_node(node, pathp);
diff --git a/include/of.h b/include/of.h
index 95d9702..f3fc2ae 100644
--- a/include/of.h
+++ b/include/of.h
@@ -72,6 +72,8 @@ struct property *of_find_property(const struct device_node *node, const char *na
 
 struct device_node *of_find_node_by_path(const char *path);
 
+struct device_node *of_find_child_by_name(struct device_node *node, const char *name);
+
 struct fdt_header *fdt_get_tree(void);
 
 #define device_node_for_nach_child(node, child) \
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
