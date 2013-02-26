Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAQzN-0000cB-3q
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 20:19:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 21:18:29 +0100
Message-Id: <1361909936-2665-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
References: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/29] of: export of_find_child
To: barebox@lists.infradead.org

of_find_child is a useful function. Export it and rename it to
of_find_child_by_name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |   16 +++-------------
 include/of.h      |    2 ++
 2 files changed, 5 insertions(+), 13 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index e853add..f016f90 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -854,23 +854,13 @@ int of_probe(void)
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
@@ -919,7 +909,7 @@ int of_unflatten_dtb(struct fdt_header *fdt)
 			if (!node) {
 				node = root;
 			} else {
-				if ((n = of_find_child(node, pathp))) {
+				if ((n = of_find_child_by_name(node, pathp))) {
 					node = n;
 				} else {
 					node = of_new_node(node, pathp);
diff --git a/include/of.h b/include/of.h
index d3a310f..59bdc6e 100644
--- a/include/of.h
+++ b/include/of.h
@@ -58,6 +58,8 @@ struct property *of_find_property(const struct device_node *node, const char *na
 
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
