Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1audGx-0002gC-7E
 for barebox@lists.infradead.org; Mon, 25 Apr 2016 09:57:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Apr 2016 11:57:20 +0200
Message-Id: <1461578240-2996-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] of: preserve /memreserve/ entries
To: Barebox List <barebox@lists.infradead.org>

Some dts files for the Kernel specify a reserved memory area using the
/memreserve/ dtc directive. These entries get lost during
unflattening/flattening the device tree and are never passed to the
Kernel.

This patch fixes this behaviour. This is done by copying the entries
into a /memreserve node in the unflattened tree and moving them back
during flattening the tree. The entries added by barebox dynamically
are appended to the static entries from the original dtb.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/fdt.c | 106 +++++++++++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 100 insertions(+), 6 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 88f0523..b2253aa 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -46,6 +46,70 @@ static inline char *dt_string(struct fdt_header *f, char *strstart, uint32_t ofs
 		return strstart + ofs;
 }
 
+static int of_reservemap_num_entries(const struct fdt_header *fdt)
+{
+	const struct fdt_reserve_entry *r;
+	int n = 0;
+
+	r = (void *)fdt + be32_to_cpu(fdt->off_mem_rsvmap);
+
+	while (r->size) {
+		n++;
+		r++;
+		if (n == OF_MAX_RESERVE_MAP)
+			return -EINVAL;
+	}
+
+	return n;
+}
+
+/**
+ * of_unflatten_reservemap - store /memreserve/ entries in unflattened tree
+ * @root - The unflattened tree
+ * @fdt - the flattened device tree blob
+ *
+ * This stores the memreserve entries from the dtb in a newly created
+ * /memserve node in the unflattened device tree. The device tree
+ * flatten code moves the entries back to the /memreserve/ area in the
+ * flattened tree.
+ *
+ * Return: 0 for success or negative error code
+ */
+static int of_unflatten_reservemap(struct device_node *root,
+				   const struct fdt_header *fdt)
+{
+	int n;
+	struct property *p;
+	struct device_node *memreserve;
+	__be32 cells;
+
+	n = of_reservemap_num_entries(fdt);
+	if (n <= 0)
+		return n;
+
+	memreserve = of_new_node(root, "memreserve");
+	if (!memreserve)
+		return -ENOMEM;
+
+	cells = cpu_to_be32(2);
+
+	p = of_new_property(memreserve, "#address-cells", &cells, sizeof(__be32));
+	if (!p)
+		return -ENOMEM;
+
+	p = of_new_property(memreserve, "#size-cells", &cells, sizeof(__be32));
+	if (!p)
+		return -ENOMEM;
+
+	p = of_new_property(memreserve, "reg",
+			    (void *)fdt + be32_to_cpu(fdt->off_mem_rsvmap),
+			    n * sizeof(struct fdt_reserve_entry));
+	if (!p)
+		return -ENOMEM;
+
+	return 0;
+}
+
 /**
  * of_unflatten_dtb - unflatten a dtb binary blob
  * @infdt - the fdt blob to unflatten
@@ -103,6 +167,10 @@ struct device_node *of_unflatten_dtb(const void *infdt)
 	if (!root)
 		return ERR_PTR(-ENOMEM);
 
+	ret = of_unflatten_reservemap(root, fdt);
+	if (ret)
+		goto err;
+
 	while (1) {
 		tag = be32_to_cpu(*(uint32_t *)(infdt + dt_struct));
 
@@ -289,7 +357,7 @@ static inline int dt_add_string(struct fdt *fdt, const char *str)
 	return ret;
 }
 
-static int __of_flatten_dtb(struct fdt *fdt, struct device_node *node)
+static int __of_flatten_dtb(struct fdt *fdt, struct device_node *node, int is_root)
 {
 	struct property *p;
 	struct device_node *n;
@@ -322,7 +390,10 @@ static int __of_flatten_dtb(struct fdt *fdt, struct device_node *node)
 	}
 
 	list_for_each_entry(n, &node->children, parent_list) {
-		ret = __of_flatten_dtb(fdt, n);
+		if (is_root && !strcmp(n->name, "memreserve"))
+			continue;
+
+		ret = __of_flatten_dtb(fdt, n, 0);
 		if (ret)
 			return ret;
 	}
@@ -347,8 +418,10 @@ void *of_flatten_dtb(struct device_node *node)
 	int ret;
 	struct fdt_header header = {};
 	struct fdt fdt = {};
-	uint32_t ofs;
+	uint32_t ofs, off_mem_rsvmap;
 	struct fdt_node_header *nh;
+	struct device_node *memreserve;
+	int len;
 
 	header.magic = cpu_to_fdt32(FDT_MAGIC);
 	header.version = cpu_to_fdt32(0x11);
@@ -364,14 +437,24 @@ void *of_flatten_dtb(struct device_node *node)
 
 	ofs = sizeof(struct fdt_header);
 
-	header.off_mem_rsvmap = cpu_to_fdt32(ofs);
+	off_mem_rsvmap = ofs;
+	header.off_mem_rsvmap = cpu_to_fdt32(off_mem_rsvmap);
 	ofs += sizeof(struct fdt_reserve_entry) * OF_MAX_RESERVE_MAP;
 
 	fdt.dt_nextofs = ofs;
 
-	ret = __of_flatten_dtb(&fdt, node);
+	ret = __of_flatten_dtb(&fdt, node, 1);
 	if (ret)
 		goto out_free;
+
+	memreserve = of_find_node_by_name(node, "memreserve");
+	if (memreserve) {
+		const void *entries = of_get_property(memreserve, "reg", &len);
+
+		if (entries)
+			memcpy(fdt.dt + off_mem_rsvmap, entries, len);
+	}
+
 	nh = fdt.dt + fdt.dt_nextofs;
 	nh->tag = cpu_to_fdt32(FDT_END);
 	fdt.dt_nextofs = dt_next_ofs(fdt.dt_nextofs, sizeof(struct fdt_node_header));
@@ -453,7 +536,18 @@ void fdt_add_reserve_map(void *__fdt)
 	struct of_reserve_map *res = &of_reserve_map;
 	struct fdt_reserve_entry *fdt_res =
 		__fdt + be32_to_cpu(fdt->off_mem_rsvmap);
-	int i;
+	int i, n;
+
+	n = of_reservemap_num_entries(fdt);
+	if (n < 0)
+		return;
+
+	if (n + res->num_entries + 2 > OF_MAX_FREE_RESERVE_MAP) {
+		pr_err("Too many entries in reserve map\n");
+		return;
+	}
+
+	fdt_res += n;
 
 	for (i = 0; i < res->num_entries; i++) {
 		of_write_number(&fdt_res->address, res->start[i], 2);
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
