Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAQzO-0000cJ-0X
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 20:19:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 21:18:39 +0100
Message-Id: <1361909936-2665-13-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/29] of: make unflatten independent of libfdt
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |  160 +++++++++++++++++++++++++++++++++++++++++------------
 include/of.h      |    2 +-
 2 files changed, 127 insertions(+), 35 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 9f1f3cf..d6ca949 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -969,92 +969,184 @@ out:
 	return dn;
 }
 
+static inline uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, int size)
+{
+	dt += size;
+	dt = ALIGN(dt, 4);
+
+	if (dt > f->off_dt_struct + f->size_dt_struct)
+		return 0;
+
+	return dt;
+}
+
+static inline char *dt_string(struct fdt_header *f, char *strstart, uint32_t ofs)
+{
+	if (ofs > f->size_dt_strings)
+		return NULL;
+	else
+		return strstart + ofs;
+}
+
 /**
- * of_unflatten_dtb - unflatten a fdt blob
+ * of_unflatten_dtb - unflatten a dtb binary blob
  * @root - node in which the fdt blob should be merged into or NULL
- * @fdt - the fdt blob to unflatten
+ * @infdt - the fdt blob to unflatten
  *
  * Parse a flat device tree binary blob and return a pointer to the
  * unflattened tree.
  */
-struct device_node *of_unflatten_dtb(struct device_node *root, struct fdt_header *fdt)
+struct device_node *of_unflatten_dtb(struct device_node *root, void *infdt)
 {
 	const void *nodep;	/* property node pointer */
-	int  nodeoffset;	/* node offset from libfdt */
-	int  nextoffset;	/* next node offset from libfdt */
 	uint32_t tag;		/* tag */
 	int  len;		/* length of the property */
 	const struct fdt_property *fdt_prop;
-	const char *pathp;
+	const char *pathp, *name;
 	struct device_node *node = NULL, *n;
 	struct property *p;
-	int ret;
+	uint32_t dt_struct;
+	struct fdt_node_header *fnh;
+	void *dt_strings;
+	struct fdt_header f;
+	int ret, merge = 0;
+	unsigned int maxlen;
+	struct fdt_header *fdt = infdt;
+
+	if (fdt->magic != cpu_to_fdt32(FDT_MAGIC)) {
+		pr_err("bad magic: 0x%08x\n", fdt32_to_cpu(fdt->magic));
+		return ERR_PTR(-EINVAL);
+	}
 
-	nodeoffset = fdt_path_offset(fdt, "/");
-	if (nodeoffset < 0) {
-		/*
-		 * Not found or something else bad happened.
-		 */
-		printf ("libfdt fdt_path_offset() returned %s\n",
-			fdt_strerror(nodeoffset));
+	if (fdt->version != cpu_to_fdt32(17)) {
+		pr_err("bad dt version: 0x%08x\n", fdt32_to_cpu(fdt->version));
 		return ERR_PTR(-EINVAL);
 	}
 
-	if (!root) {
+	f.totalsize = fdt32_to_cpu(fdt->totalsize);
+	f.off_dt_struct = fdt32_to_cpu(fdt->off_dt_struct);
+	f.size_dt_struct = fdt32_to_cpu(fdt->size_dt_struct);
+	f.off_dt_strings = fdt32_to_cpu(fdt->off_dt_strings);
+	f.size_dt_strings = fdt32_to_cpu(fdt->size_dt_strings);
+
+	if (f.off_dt_struct + f.size_dt_struct > f.totalsize) {
+		pr_err("unflatten: dt size exceeds total size\n");
+		return ERR_PTR(-ESPIPE);
+	}
+
+	if (f.off_dt_strings + f.size_dt_strings > f.totalsize) {
+		pr_err("unflatten: string size exceeds total size\n");
+		return ERR_PTR(-ESPIPE);
+	}
+
+	dt_struct = f.off_dt_struct;
+	dt_strings = (void *)fdt + f.off_dt_strings;
+
+	if (root) {
+		pr_debug("unflatten: merging into existing tree\n");
+		merge = 1;
+	} else {
 		root = of_new_node(NULL, NULL);
 		if (!root)
 			return ERR_PTR(-ENOMEM);
 	}
 
 	while (1) {
-		tag = fdt_next_tag(fdt, nodeoffset, &nextoffset);
+		tag = be32_to_cpu(*(uint32_t *)(infdt + dt_struct));
+
 		switch (tag) {
 		case FDT_BEGIN_NODE:
-			pathp = fdt_get_name(fdt, nodeoffset, NULL);
+			fnh = infdt + dt_struct;
+			pathp = name = fnh->name;
+			maxlen = (unsigned long)fdt + f.off_dt_struct +
+				f.size_dt_struct - (unsigned long)name;
+
+			len = strnlen(name, maxlen + 1);
+			if (len > maxlen) {
+				ret = -ESPIPE;
+				goto err;
+			}
 
-			if (pathp == NULL)
-				pathp = "/* NULL pointer error */";
+			dt_struct = dt_struct_advance(&f, dt_struct,
+					sizeof(struct fdt_node_header) + len + 1);
+			if (!dt_struct) {
+				ret = -ESPIPE;
+				goto err;
+			}
 
 			if (!node) {
 				node = root;
 			} else {
-				if ((n = of_find_child_by_name(node, pathp))) {
+				if (merge && (n = of_find_child_by_name(node, pathp)))
 					node = n;
-				} else {
+				else
 					node = of_new_node(node, pathp);
-				}
 			}
+
 			break;
+
 		case FDT_END_NODE:
+			if (!node) {
+				pr_err("unflatten: too many end nodes\n");
+				ret = -EINVAL;
+				goto err;
+			}
+
 			node = node->parent;
+
+			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
+			if (!dt_struct) {
+				ret = -ESPIPE;
+				goto err;
+			}
+
 			break;
+
 		case FDT_PROP:
-			fdt_prop = fdt_offset_ptr(fdt, nodeoffset,
-					sizeof(*fdt_prop));
-			pathp    = fdt_string(fdt,
-					fdt32_to_cpu(fdt_prop->nameoff));
-			len      = fdt32_to_cpu(fdt_prop->len);
-			nodep    = fdt_prop->data;
-
-			p = of_find_property(node, pathp);
-			if (p) {
+			fdt_prop = infdt + dt_struct;
+			len = fdt32_to_cpu(fdt_prop->len);
+			nodep = fdt_prop->data;
+
+			name = dt_string(&f, dt_strings, fdt32_to_cpu(fdt_prop->nameoff));
+			if (!name) {
+				ret = -ESPIPE;
+				goto err;
+			}
+
+			dt_struct = dt_struct_advance(&f, dt_struct,
+					sizeof(struct fdt_property) + len);
+			if (!dt_struct) {
+				ret = -ESPIPE;
+				goto err;
+			}
+
+			if (merge && (p = of_find_property(node, name))) {
 				free(p->value);
 				p->value = xzalloc(len);
 				memcpy(p->value, nodep, len);
 			} else {
-				of_new_property(node, pathp, nodep, len);
+				of_new_property(node, name, nodep, len);
 			}
+
 			break;
+
 		case FDT_NOP:
+			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
+			if (!dt_struct) {
+				ret = -ESPIPE;
+				goto err;
+			}
+
 			break;
+
 		case FDT_END:
 			return root;
+
 		default:
-			printf("Unknown tag 0x%08X\n", tag);
+			pr_err("unflatten: Unknown tag 0x%08X\n", tag);
 			ret = -EINVAL;
 			goto err;
 		}
-		nodeoffset = nextoffset;
 	}
 err:
 	of_free(root);
diff --git a/include/of.h b/include/of.h
index 89ce64c..f2fd84b 100644
--- a/include/of.h
+++ b/include/of.h
@@ -119,7 +119,7 @@ void of_print_nodes(struct device_node *node, int indent);
 int of_probe(void);
 int of_parse_dtb(struct fdt_header *fdt);
 void of_free(struct device_node *node);
-struct device_node *of_unflatten_dtb(struct device_node *root, struct fdt_header *fdt);
+struct device_node *of_unflatten_dtb(struct device_node *root, void *fdt);
 struct device_node *of_new_node(struct device_node *parent, const char *name);
 struct property *of_new_property(struct device_node *node, const char *name,
 		const void *data, int len);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
