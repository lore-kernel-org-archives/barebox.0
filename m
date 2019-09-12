Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8KZZ-0001bW-Qg
 for barebox@lists.infradead.org; Thu, 12 Sep 2019 08:35:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Sep 2019 10:35:04 +0200
Message-Id: <20190912083505.4162-2-s.hauer@pengutronix.de>
In-Reply-To: <20190912083505.4162-1-s.hauer@pengutronix.de>
References: <20190912083505.4162-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] of: add of_diff()
To: Barebox List <barebox@lists.infradead.org>

of_diff compares two device trees against each other and prints a
diff-like result.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 141 ++++++++++++++++++++++++++++++++++++++++++----
 include/of.h      |   1 +
 2 files changed, 132 insertions(+), 10 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 22077fa397..63e0879f06 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1776,24 +1776,21 @@ struct device_node *of_get_child_by_name(const struct device_node *node,
 }
 EXPORT_SYMBOL(of_get_child_by_name);
 
-void of_print_nodes(struct device_node *node, int indent)
+static void __of_print_nodes(struct device_node *node, int indent, const char *prefix)
 {
 	struct device_node *n;
 	struct property *p;
-	int i;
 
 	if (!node)
 		return;
 
-	for (i = 0; i < indent; i++)
-		printf("\t");
+	if (!prefix)
+		prefix = "";
 
-	printf("%s%s\n", node->name, node->name ? " {" : "{");
+	printf("%s%*s%s%s\n", prefix, indent * 8, "", node->name, node->name ? " {" : "{");
 
 	list_for_each_entry(p, &node->properties, list) {
-		for (i = 0; i < indent + 1; i++)
-			printf("\t");
-		printf("%s", p->name);
+		printf("%s%*s%s", prefix, (indent + 1) * 8, "", p->name);
 		if (p->length) {
 			printf(" = ");
 			of_print_property(of_property_get_value(p), p->length);
@@ -1802,12 +1799,136 @@ void of_print_nodes(struct device_node *node, int indent)
 	}
 
 	list_for_each_entry(n, &node->children, parent_list) {
-		of_print_nodes(n, indent + 1);
+		__of_print_nodes(n, indent + 1, prefix);
+	}
+
+	printf("%s%*s};\n", prefix, indent * 8, "");
+}
+
+void of_print_nodes(struct device_node *node, int indent)
+{
+	__of_print_nodes(node, indent, NULL);
+}
+
+static void __of_print_property(struct property *p, int indent)
+{
+	int i;
+
+	for (i = 0; i < indent; i++)
+		printf("\t");
+
+	printf("%s", p->name);
+	if (p->length) {
+		printf(" = ");
+		of_print_property(of_property_get_value(p), p->length);
 	}
+	printf(";\n");
+}
+
+static int __of_print_parents(struct device_node *node)
+{
+	int indent, i;
+
+	if (!node->parent)
+		return 0;
+
+	indent = __of_print_parents(node->parent);
 
 	for (i = 0; i < indent; i++)
 		printf("\t");
-	printf("};\n");
+
+	printf("%s {\n", node->name);
+
+	return indent + 1;
+}
+
+static void of_print_parents(struct device_node *node, int *printed)
+{
+	if (*printed)
+		return;
+
+	__of_print_parents(node);
+
+	*printed = 1;
+}
+
+static void of_print_close(struct device_node *node, int *printed)
+{
+	int depth = 0, i, j;
+
+	if (!*printed)
+		return;
+
+	while ((node = node->parent))
+		depth++;
+
+	for (i = depth; i > 0; i--) {
+		for (j = 0; j + 1 < i; j++)
+			printf("\t");
+		printf("};\n");
+	}
+}
+
+/**
+ * of_diff - compare two device trees against each other
+ * @a: The first device tree
+ * @b: The second device tree
+ * @indent: The initial indentation level when printing
+ *
+ * This function compares two device trees against each other and prints
+ * a diff-like result.
+ */
+void of_diff(struct device_node *a, struct device_node *b, int indent)
+{
+	struct property *ap, *bp;
+	struct device_node *ca, *cb;
+	int printed = 0;
+
+	list_for_each_entry(ap, &a->properties, list) {
+		bp = of_find_property(b, ap->name, NULL);
+		if (!bp) {
+			of_print_parents(a, &printed);
+			printf("- ");
+			__of_print_property(ap, indent);
+			continue;
+		}
+
+		if (ap->length != bp->length || memcmp(of_property_get_value(ap), of_property_get_value(bp), bp->length)) {
+			of_print_parents(a, &printed);
+			printf("- ");
+			__of_print_property(ap, indent);
+			printf("+ ");
+			__of_print_property(bp, indent);
+		}
+	}
+
+	list_for_each_entry(bp, &b->properties, list) {
+		ap = of_find_property(a, bp->name, NULL);
+		if (!ap) {
+			of_print_parents(a, &printed);
+			printf("+ ");
+			__of_print_property(bp, indent);
+		}
+	}
+
+	for_each_child_of_node(a, ca) {
+		cb = of_get_child_by_name(b, ca->name);
+		if (cb) {
+			of_diff(ca, cb, indent + 1);
+		} else {
+			of_print_parents(a, &printed);
+			__of_print_nodes(ca, indent, "-");
+		}
+	}
+
+	for_each_child_of_node(b, cb) {
+		if (!of_get_child_by_name(a, cb->name)) {
+			of_print_parents(a, &printed);
+			__of_print_nodes(cb, indent, "+");
+		}
+	}
+
+	of_print_close(a, &printed);
 }
 
 struct device_node *of_new_node(struct device_node *parent, const char *name)
diff --git a/include/of.h b/include/of.h
index b5f54dd4e5..c8275e169b 100644
--- a/include/of.h
+++ b/include/of.h
@@ -104,6 +104,7 @@ void of_print_property(const void *data, int len);
 void of_print_cmdline(struct device_node *root);
 
 void of_print_nodes(struct device_node *node, int indent);
+void of_diff(struct device_node *a, struct device_node *b, int indent);
 int of_probe(void);
 int of_parse_dtb(struct fdt_header *fdt);
 struct device_node *of_unflatten_dtb(const void *fdt);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
