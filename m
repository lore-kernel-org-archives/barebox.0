Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAQzO-0000cM-2E
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 20:19:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 21:18:38 +0100
Message-Id: <1361909936-2665-12-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/29] of: let of_unflatten_dtb return the unflattened tree
To: barebox@lists.infradead.org

In order to be able to handle multiple devicetrees, do not assume
the tree to be unflattened is the barebox internal one. Instead,
just return a pointer to it and assign the barebox internal root_node
external to the unflatten function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/oftree.c |   14 ++++++++++++-
 drivers/of/base.c |   57 +++++++++++++++++++++++++++++++++--------------------
 include/of.h      |    3 ++-
 3 files changed, 51 insertions(+), 23 deletions(-)

diff --git a/commands/oftree.c b/commands/oftree.c
index 0ee787e..83ffe12 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -32,6 +32,7 @@
 #include <malloc.h>
 #include <libfdt.h>
 #include <linux/ctype.h>
+#include <linux/err.h>
 #include <asm/byteorder.h>
 #include <errno.h>
 #include <getopt.h>
@@ -52,6 +53,7 @@ static int do_oftree(int argc, char *argv[])
 	int save = 0;
 	int free_of = 0;
 	int ret;
+	struct device_node *n, *root;
 
 	while ((opt = getopt(argc, argv, "dpfn:ls")) > 0) {
 		switch (opt) {
@@ -135,7 +137,17 @@ static int do_oftree(int argc, char *argv[])
 			goto out;
 		}
 
-		ret = of_unflatten_dtb(fdt);
+		n = of_get_root_node();
+
+		root = of_unflatten_dtb(n, fdt);
+		if (IS_ERR(root))
+			ret = PTR_ERR(root);
+		else
+			ret = 0;
+
+		if (!n)
+			ret = of_set_root_node(root);
+
 		if (ret) {
 			printf("parse oftree: %s\n", strerror(-ret));
 			goto out;
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 0eafa39..9f1f3cf 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -26,6 +26,7 @@
 #include <memory.h>
 #include <sizes.h>
 #include <linux/ctype.h>
+#include <linux/err.h>
 
 /**
  * struct alias_prop - Alias property in 'aliases' node
@@ -558,6 +559,18 @@ struct device_node *of_get_root_node(void)
 	return root_node;
 }
 
+int of_set_root_node(struct device_node *node)
+{
+	if (node && root_node)
+		return -EBUSY;
+
+	root_node = node;
+
+	of_alias_scan();
+
+	return 0;
+}
+
 static int of_node_disabled(struct device_node *node)
 {
 	struct property *p;
@@ -608,15 +621,10 @@ struct device_node *of_new_node(struct device_node *parent, const char *name)
 {
 	struct device_node *node;
 
-	if (!parent && root_node)
-		return NULL;
-
 	node = xzalloc(sizeof(*node));
 	node->parent = parent;
 	if (parent)
 		list_add_tail(&node->parent_list, &parent->children);
-	else
-		root_node = node;
 
 	INIT_LIST_HEAD(&node->children);
 	INIT_LIST_HEAD(&node->properties);
@@ -869,9 +877,7 @@ void of_free(struct device_node *node)
 	free(node);
 
 	if (node == root_node)
-		root_node = NULL;
-
-	of_alias_scan();
+		of_set_root_node(NULL);
 }
 
 static void __of_probe(struct device_node *node)
@@ -963,11 +969,15 @@ out:
 	return dn;
 }
 
-/*
- * Parse a flat device tree binary blob and store it in the barebox
- * internal tree format,
+/**
+ * of_unflatten_dtb - unflatten a fdt blob
+ * @root - node in which the fdt blob should be merged into or NULL
+ * @fdt - the fdt blob to unflatten
+ *
+ * Parse a flat device tree binary blob and return a pointer to the
+ * unflattened tree.
  */
-int of_unflatten_dtb(struct fdt_header *fdt)
+struct device_node *of_unflatten_dtb(struct device_node *root, struct fdt_header *fdt)
 {
 	const void *nodep;	/* property node pointer */
 	int  nodeoffset;	/* node offset from libfdt */
@@ -976,8 +986,9 @@ int of_unflatten_dtb(struct fdt_header *fdt)
 	int  len;		/* length of the property */
 	const struct fdt_property *fdt_prop;
 	const char *pathp;
-	struct device_node *node = NULL, *n, *root = NULL;
+	struct device_node *node = NULL, *n;
 	struct property *p;
+	int ret;
 
 	nodeoffset = fdt_path_offset(fdt, "/");
 	if (nodeoffset < 0) {
@@ -986,12 +997,14 @@ int of_unflatten_dtb(struct fdt_header *fdt)
 		 */
 		printf ("libfdt fdt_path_offset() returned %s\n",
 			fdt_strerror(nodeoffset));
-		return -EINVAL;
+		return ERR_PTR(-EINVAL);
 	}
 
-	root = of_new_node(NULL, NULL);
-	if (!root)
-		return -ENOMEM;
+	if (!root) {
+		root = of_new_node(NULL, NULL);
+		if (!root)
+			return ERR_PTR(-ENOMEM);
+	}
 
 	while (1) {
 		tag = fdt_next_tag(fdt, nodeoffset, &nextoffset);
@@ -1035,16 +1048,18 @@ int of_unflatten_dtb(struct fdt_header *fdt)
 		case FDT_NOP:
 			break;
 		case FDT_END:
-			of_alias_scan();
-			return 0;
+			return root;
 		default:
 			printf("Unknown tag 0x%08X\n", tag);
-			return -EINVAL;
+			ret = -EINVAL;
+			goto err;
 		}
 		nodeoffset = nextoffset;
 	}
+err:
+	of_free(root);
 
-	return 0;
+	return ERR_PTR(ret);
 }
 
 static int __of_flatten_dtb(void *fdt, struct device_node *node)
diff --git a/include/of.h b/include/of.h
index c324c74..89ce64c 100644
--- a/include/of.h
+++ b/include/of.h
@@ -119,7 +119,7 @@ void of_print_nodes(struct device_node *node, int indent);
 int of_probe(void);
 int of_parse_dtb(struct fdt_header *fdt);
 void of_free(struct device_node *node);
-int of_unflatten_dtb(struct fdt_header *fdt);
+struct device_node *of_unflatten_dtb(struct device_node *root, struct fdt_header *fdt);
 struct device_node *of_new_node(struct device_node *parent, const char *name);
 struct property *of_new_property(struct device_node *node, const char *name,
 		const void *data, int len);
@@ -136,6 +136,7 @@ int of_parse_partitions(const char *cdevname,
 			    struct device_node *node);
 
 struct device_node *of_get_root_node(void);
+int of_set_root_node(struct device_node *);
 int of_alias_get_id(struct device_node *np, const char *stem);
 int of_device_is_stdout_path(struct device_d *dev);
 const char *of_get_model(void);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
