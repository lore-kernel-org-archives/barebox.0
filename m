Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x234.google.com ([2a00:1450:4008:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uu56e-0005aE-97
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 18:15:20 +0000
Received: by mail-bk0-f52.google.com with SMTP id d7so2509468bkh.25
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2013 11:14:50 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue,  2 Jul 2013 20:14:39 +0200
Message-Id: <1372788879-11028-11-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v3 10/10] OF: base: rename of_free to of_delete_node
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

of_free is misleading about the actual purpose of the function. There is
already a of_create_node counterpart, so rename of_free to of_create_node
and update all users accordingly.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 commands/of_node.c |    2 +-
 commands/oftree.c  |    4 +-
 drivers/of/base.c  |   65 +++++++++++++++++++++++++--------------------------
 drivers/of/fdt.c   |    2 +-
 include/of.h       |    4 +-
 5 files changed, 38 insertions(+), 39 deletions(-)

diff --git a/commands/of_node.c b/commands/of_node.c
index e60ef66..b1894b1 100644
--- a/commands/of_node.c
+++ b/commands/of_node.c
@@ -87,7 +87,7 @@ static int do_of_node(int argc, char *argv[])
 			return -ENOENT;
 		}
 
-		of_free(node);
+		of_delete_node(node);
 	}
 
 	return 0;
diff --git a/commands/oftree.c b/commands/oftree.c
index 9149517..00e54dc 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -86,7 +86,7 @@ static int do_oftree(int argc, char *argv[])
 		struct device_node *root = of_get_root_node();
 
 		if (root)
-			of_free(root);
+			of_delete_node(root);
 
 		return 0;
 	}
@@ -162,7 +162,7 @@ static int do_oftree(int argc, char *argv[])
 				goto out;
 			}
 			of_print_nodes(root, 0);
-			of_free(root);
+			of_delete_node(root);
 		} else {
 			struct device_node *n = of_find_node_by_path(node);
 			if (!n) {
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 1cf7a5f..e9f1f79 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1549,39 +1549,6 @@ int of_add_memory(struct device_node *node, bool dump)
 	return 0;
 }
 
-void of_free(struct device_node *node)
-{
-	struct device_node *n, *nt;
-	struct property *p, *pt;
-	struct device_d *dev;
-
-	if (!node)
-		return;
-
-	list_for_each_entry_safe(p, pt, &node->properties, list)
-		of_delete_property(p);
-
-	list_for_each_entry_safe(n, nt, &node->children, parent_list) {
-		of_free(n);
-	}
-
-	if (node->parent) {
-		list_del(&node->parent_list);
-		list_del(&node->list);
-	}
-
-	dev = of_find_device_by_node(node);
-	if (dev)
-		dev->device_node = NULL;
-
-	free(node->name);
-	free(node->full_name);
-	free(node);
-
-	if (node == root_node)
-		of_set_root_node(NULL);
-}
-
 static void __of_parse_phandles(struct device_node *node)
 {
 	struct device_node *n;
@@ -1679,6 +1646,38 @@ out:
 	return dn;
 }
 
+void of_delete_node(struct device_node *node)
+{
+	struct device_node *n, *nt;
+	struct property *p, *pt;
+	struct device_d *dev;
+
+	if (!node)
+		return;
+
+	list_for_each_entry_safe(p, pt, &node->properties, list)
+		of_delete_property(p);
+
+	list_for_each_entry_safe(n, nt, &node->children, parent_list)
+		of_delete_node(n);
+
+	if (node->parent) {
+		list_del(&node->parent_list);
+		list_del(&node->list);
+	}
+
+	dev = of_find_device_by_node(node);
+	if (dev)
+		dev->device_node = NULL;
+
+	free(node->name);
+	free(node->full_name);
+	free(node);
+
+	if (node == root_node)
+		of_set_root_node(NULL);
+}
+
 int of_device_is_stdout_path(struct device_d *dev)
 {
 	struct device_node *dn;
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index afaa4e0..76d6bb1 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -211,7 +211,7 @@ struct device_node *of_unflatten_dtb(struct device_node *root, void *infdt)
 		}
 	}
 err:
-	of_free(root);
+	of_delete_node(root);
 
 	return ERR_PTR(ret);
 }
diff --git a/include/of.h b/include/of.h
index f01d854..ebe8e39 100644
--- a/include/of.h
+++ b/include/of.h
@@ -139,7 +139,7 @@ extern struct device_node *of_new_node(struct device_node *parent,
 				const char *name);
 extern struct device_node *of_create_node(struct device_node *root,
 					const char *path);
-extern void of_free(struct device_node *node);
+extern void of_delete_node(struct device_node *node);
 
 extern int of_machine_is_compatible(const char *compat);
 extern int of_device_is_compatible(const struct device_node *device,
@@ -508,7 +508,7 @@ static inline struct device_node *of_create_node(struct device_node *root,
 	return NULL;
 }
 
-static inline void of_free(struct device_node *node)
+static inline void of_delete_node(struct device_node *node)
 {
 }
 
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
