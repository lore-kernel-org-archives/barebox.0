Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5a-0006Wu-KI
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:54:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:18 +0100
Message-Id: <1362390820-10333-16-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/37] of: make flatten independent of libfdt
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/oftree.c   |    8 ++-
 drivers/of/base.c |  180 ++++++++++++++++++++++++++++++++++++++++++++---------
 include/of.h      |    6 +-
 3 files changed, 162 insertions(+), 32 deletions(-)

diff --git a/common/oftree.c b/common/oftree.c
index 82e5ddd..555aa0b 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -422,7 +422,13 @@ struct fdt_header *of_get_fixed_tree(struct fdt_header *fdt)
 	int size, align;
 
 	if (!fdt) {
-		fdt = internalfdt = of_flatten_dtb();
+		struct device_node *root_node;
+
+		root_node = of_get_root_node();
+		if (!root_node)
+			return NULL;
+
+		fdt = internalfdt = of_flatten_dtb(root_node);
 		if (!fdt)
 			return NULL;
 	}
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 8bb80e6..0f842e6 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1210,20 +1210,108 @@ err:
 	return ERR_PTR(ret);
 }
 
-static int __of_flatten_dtb(void *fdt, struct device_node *node)
+struct fdt {
+	void *dt;
+	uint32_t dt_nextofs;
+	uint32_t dt_size;
+	char *strings;
+	uint32_t str_nextofs;
+	uint32_t str_size;
+};
+
+static inline uint32_t dt_next_ofs(uint32_t curofs, uint32_t len)
+{
+	return ALIGN(curofs + len, 4);
+}
+
+static int lstrcpy(char *dest, const char *src)
+{
+	int len = 0;
+	int maxlen = 1023;
+
+	while (*src) {
+		*dest++ = *src++;
+		len++;
+		if (!maxlen)
+			return -ENOSPC;
+		maxlen--;
+	}
+
+	return len;
+}
+
+static int fdt_ensure_space(struct fdt *fdt, int dtsize)
+{
+	/*
+	 * We assume strings and names have a maximum length of 1024
+	 * whereas properties can be longer. We allocate new memory
+	 * if we have less than 1024 bytes (+ the property size left.
+	 */
+	if (fdt->str_size - fdt->str_nextofs < 1024) {
+		fdt->strings = realloc(fdt->strings, fdt->str_size * 2);
+		if (!fdt->strings)
+			return -ENOMEM;
+		fdt->str_size *= 2;
+	}
+
+	if (fdt->dt_size - fdt->dt_nextofs < 1024 + dtsize) {
+		fdt->dt = realloc(fdt->dt, fdt->dt_size * 2);
+		if (!fdt->dt)
+			return -ENOMEM;
+		fdt->dt_size *= 2;
+	}
+
+	return 0;
+}
+
+static inline int dt_add_string(struct fdt *fdt, const char *str)
+{
+	uint32_t ret;
+	int len;
+
+	if (fdt_ensure_space(fdt, 0) < 0)
+		return -ENOMEM;
+
+	len = lstrcpy(fdt->strings + fdt->str_nextofs, str);
+	if (len < 0)
+		return -ENOSPC;
+
+	ret = fdt->str_nextofs;
+
+	fdt->str_nextofs += len + 1;
+
+	return ret;
+}
+
+static int __of_flatten_dtb(struct fdt *fdt, struct device_node *node)
 {
 	struct property *p;
 	struct device_node *n;
 	int ret;
+	unsigned int len;
+	struct fdt_node_header *nh = fdt->dt + fdt->dt_nextofs;
 
-	ret = fdt_begin_node(fdt, node->name);
-	if (ret)
-		return ret;
+	if (fdt_ensure_space(fdt, 0) < 0)
+		return -ENOMEM;
+
+	nh->tag = cpu_to_fdt32(FDT_BEGIN_NODE);
+	len = lstrcpy(nh->name, node->name);
+	fdt->dt_nextofs = dt_next_ofs(fdt->dt_nextofs, 4 + len + 1);
 
 	list_for_each_entry(p, &node->properties, list) {
-		ret = fdt_property(fdt, p->name, p->value, p->length);
-		if (ret)
-			return ret;
+		struct fdt_property *fp;
+
+		if (fdt_ensure_space(fdt, p->length) < 0)
+			return -ENOMEM;
+
+		fp = fdt->dt + fdt->dt_nextofs;
+
+		fp->tag = cpu_to_fdt32(FDT_PROP);
+		fp->len = cpu_to_fdt32(p->length);
+		fp->nameoff = cpu_to_fdt32(dt_add_string(fdt, p->name));
+		memcpy(fp->data, p->value, p->length);
+		fdt->dt_nextofs = dt_next_ofs(fdt->dt_nextofs,
+				sizeof(struct fdt_property) + p->length);
 	}
 
 	list_for_each_entry(n, &node->children, parent_list) {
@@ -1232,45 +1320,79 @@ static int __of_flatten_dtb(void *fdt, struct device_node *node)
 			return ret;
 	}
 
-	ret = fdt_end_node(fdt);
+	nh = fdt->dt + fdt->dt_nextofs;
+	nh->tag = cpu_to_fdt32(FDT_END_NODE);
+	fdt->dt_nextofs = dt_next_ofs(fdt->dt_nextofs,
+			sizeof(struct fdt_node_header));
 
-	return ret;
-}
+	if (fdt_ensure_space(fdt, 0) < 0)
+		return -ENOMEM;
 
-#define DTB_SIZE	SZ_128K
+	return 0;
+}
 
-void *of_flatten_dtb(void)
+/**
+ * of_flatten_dtb - flatten a barebox internal devicetree to a dtb
+ * @node - the root node of the tree to be unflattened
+ */
+void *of_flatten_dtb(struct device_node *node)
 {
-	void *fdt;
 	int ret;
+	struct fdt_header header = {};
+	struct fdt fdt = {};
+	uint32_t ofs;
+	struct fdt_node_header *nh;
 
-	if (!root_node)
-		return NULL;
+	header.magic = cpu_to_fdt32(FDT_MAGIC);
+	header.version = cpu_to_fdt32(0x11);
+	header.last_comp_version = cpu_to_fdt32(0x10);
 
-	fdt = malloc(DTB_SIZE);
-	if (!fdt)
-		return NULL;
+	fdt.dt = xzalloc(SZ_64K);
+	fdt.dt_size = SZ_64K;
 
-	memset(fdt, 0, DTB_SIZE);
+	fdt.strings = xzalloc(SZ_64K);
+	fdt.str_size = SZ_64K;
 
-	ret = fdt_create(fdt, DTB_SIZE);
-	if (ret)
-		goto out_free;
+	ofs = sizeof(struct fdt_header);
 
-	ret = fdt_finish_reservemap(fdt);
-	if (ret)
-		goto out_free;
+	header.off_mem_rsvmap = cpu_to_fdt32(ofs);
+	ofs += sizeof(struct fdt_reserve_entry) * OF_MAX_RESERVE_MAP;
+
+	fdt.dt_nextofs = ofs;
 
-	ret = __of_flatten_dtb(fdt, root_node);
+	ret = __of_flatten_dtb(&fdt, node);
 	if (ret)
 		goto out_free;
+	nh = fdt.dt + fdt.dt_nextofs;
+	nh->tag = cpu_to_fdt32(FDT_END);
+	fdt.dt_nextofs = dt_next_ofs(fdt.dt_nextofs, sizeof(struct fdt_node_header));
+
+	header.size_dt_strings = cpu_to_fdt32(fdt.str_nextofs);
+	header.size_dt_struct = cpu_to_fdt32(fdt.dt_nextofs);
+
+	header.off_dt_struct = cpu_to_fdt32(ofs);
+
+	header.off_dt_strings = cpu_to_fdt32(fdt.dt_nextofs);
+
+	if (fdt.dt_size - fdt.dt_nextofs < fdt.str_nextofs) {
+		fdt.dt = realloc(fdt.dt, fdt.dt_nextofs + fdt.str_nextofs);
+		if (!fdt.dt)
+			goto out_free;
+	}
+
+	memcpy(fdt.dt + fdt.dt_nextofs, fdt.strings, fdt.str_nextofs);
+
+	header.totalsize = cpu_to_fdt32(fdt.dt_nextofs + fdt.str_nextofs);
+
+	memcpy(fdt.dt, &header, sizeof(header));
 
-	fdt_finish(fdt);
+	free(fdt.strings);
 
-	return fdt;
+	return fdt.dt;
 
 out_free:
-	free(fdt);
+	free(fdt.strings);
+	free(fdt.dt);
 
 	return NULL;
 }
diff --git a/include/of.h b/include/of.h
index 4622b80..2cd55c0 100644
--- a/include/of.h
+++ b/include/of.h
@@ -64,6 +64,8 @@ struct of_device_id {
 	unsigned long data;
 };
 
+#define OF_MAX_RESERVE_MAP	16
+
 struct driver_d;
 
 int of_match(struct device_d *dev, struct driver_d *drv);
@@ -168,7 +170,7 @@ int of_set_root_node(struct device_node *);
 int of_alias_get_id(struct device_node *np, const char *stem);
 int of_device_is_stdout_path(struct device_d *dev);
 const char *of_get_model(void);
-void *of_flatten_dtb(void);
+void *of_flatten_dtb(struct device_node *node);
 int of_add_memory(struct device_node *node, bool dump);
 #else
 static inline int of_parse_partitions(const char *cdevname,
@@ -197,7 +199,7 @@ static inline const char *of_get_model(void)
 	return NULL;
 }
 
-static inline void *of_flatten_dtb(void)
+static inline void *of_flatten_dtb(struct device_node *node)
 {
 	return NULL;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
