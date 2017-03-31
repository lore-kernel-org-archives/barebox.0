Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctpC6-0005H2-1a
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 05:34:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 07:33:12 +0200
Message-Id: <20170331053323.17821-4-s.hauer@pengutronix.de>
In-Reply-To: <20170331053323.17821-1-s.hauer@pengutronix.de>
References: <20170331053323.17821-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/14] of: partition: Move of_mtd_fixup to drivers/of/
To: Barebox List <barebox@lists.infradead.org>

Move the fixup code where the parser code is already.
Since the code will not only be used for mtd in the future
drivers/of/ is a better place than drivers/mtd/.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c     | 65 +++--------------------------------------------
 drivers/of/partition.c | 69 ++++++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h           |  6 +++++
 3 files changed, 78 insertions(+), 62 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 4e7bfdb3da..1eb8dd36d8 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -556,67 +556,6 @@ static int mtd_part_compare(struct list_head *a, struct list_head *b)
 	return 0;
 }
 
-static int of_mtd_fixup(struct device_node *root, void *ctx)
-{
-	struct mtd_info *mtd = ctx, *partmtd;
-	struct device_node *np, *part, *tmp;
-	int ret;
-
-	np = of_find_node_by_path_from(root, mtd->of_path);
-	if (!np) {
-		dev_err(&mtd->class_dev, "Cannot find nodepath %s, cannot fixup\n",
-				mtd->of_path);
-		return -EINVAL;
-	}
-
-	for_each_child_of_node_safe(np, tmp, part) {
-		if (of_get_property(part, "compatible", NULL))
-			continue;
-		of_delete_node(part);
-	}
-
-	list_for_each_entry(partmtd, &mtd->partitions, partitions_entry) {
-		int na, ns, len = 0;
-		char *name = basprintf("partition@%0llx",
-					 partmtd->master_offset);
-		void *p;
-		u8 tmp[16 * 16]; /* Up to 64-bit address + 64-bit size */
-
-		if (!name)
-			return -ENOMEM;
-
-		part = of_new_node(np, name);
-		free(name);
-		if (!part)
-			return -ENOMEM;
-
-		p = of_new_property(part, "label", partmtd->cdev.partname,
-                                strlen(partmtd->cdev.partname) + 1);
-		if (!p)
-			return -ENOMEM;
-
-		na = of_n_addr_cells(part);
-		ns = of_n_size_cells(part);
-
-		of_write_number(tmp + len, partmtd->master_offset, na);
-		len += na * 4;
-		of_write_number(tmp + len, partmtd->size, ns);
-		len += ns * 4;
-
-		ret = of_set_property(part, "reg", tmp, len, 1);
-		if (ret)
-			return ret;
-
-		if (partmtd->cdev.flags & DEVFS_PARTITION_READONLY) {
-			ret = of_set_property(part, "read-only", NULL, 0, 1);
-			if (ret)
-				return ret;
-		}
-	}
-
-	return 0;
-}
-
 static int mtd_detect(struct device_d *dev)
 {
 	struct mtd_info *mtd = container_of(dev, struct mtd_info, class_dev);
@@ -732,7 +671,9 @@ int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 		of_parse_partitions(&mtd->cdev, mtd->parent->device_node);
 		if (IS_ENABLED(CONFIG_OFDEVICE) && mtd->parent->device_node) {
 			mtd->of_path = xstrdup(mtd->parent->device_node->full_name);
-			of_register_fixup(of_mtd_fixup, mtd);
+			ret = of_partitions_register_fixup(&mtd->cdev);
+			if (ret)
+				goto err1;
 		}
 	}
 
diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 8c2aef2326..68f3812ed6 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -92,3 +92,72 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 
 	return 0;
 }
+
+static int of_mtd_fixup(struct device_node *root, void *ctx)
+{
+	struct cdev *cdev = ctx;
+	struct mtd_info *mtd, *partmtd;
+	struct device_node *np, *part, *tmp;
+	int ret;
+
+	mtd = container_of(cdev, struct mtd_info, cdev);
+
+	np = of_find_node_by_path_from(root, mtd->of_path);
+	if (!np) {
+		dev_err(&mtd->class_dev, "Cannot find nodepath %s, cannot fixup\n",
+				mtd->of_path);
+		return -EINVAL;
+	}
+
+	for_each_child_of_node_safe(np, tmp, part) {
+		if (of_get_property(part, "compatible", NULL))
+			continue;
+		of_delete_node(part);
+	}
+
+	list_for_each_entry(partmtd, &mtd->partitions, partitions_entry) {
+		int na, ns, len = 0;
+		char *name = basprintf("partition@%0llx",
+					 partmtd->master_offset);
+		void *p;
+		u8 tmp[16 * 16]; /* Up to 64-bit address + 64-bit size */
+
+		if (!name)
+			return -ENOMEM;
+
+		part = of_new_node(np, name);
+		free(name);
+		if (!part)
+			return -ENOMEM;
+
+		p = of_new_property(part, "label", partmtd->cdev.partname,
+                                strlen(partmtd->cdev.partname) + 1);
+		if (!p)
+			return -ENOMEM;
+
+		na = of_n_addr_cells(part);
+		ns = of_n_size_cells(part);
+
+		of_write_number(tmp + len, partmtd->master_offset, na);
+		len += na * 4;
+		of_write_number(tmp + len, partmtd->size, ns);
+		len += ns * 4;
+
+		ret = of_set_property(part, "reg", tmp, len, 1);
+		if (ret)
+			return ret;
+
+		if (partmtd->cdev.flags & DEVFS_PARTITION_READONLY) {
+			ret = of_set_property(part, "read-only", NULL, 0, 1);
+			if (ret)
+				return ret;
+		}
+	}
+
+	return 0;
+}
+
+int of_partitions_register_fixup(struct cdev *cdev)
+{
+	return of_register_fixup(of_mtd_fixup, cdev);
+}
\ No newline at end of file
diff --git a/include/of.h b/include/of.h
index 6bff13388d..87d96055a2 100644
--- a/include/of.h
+++ b/include/of.h
@@ -240,6 +240,7 @@ extern struct device_d *of_device_enable_and_register_by_name(const char *name);
 
 struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node);
 int of_parse_partitions(struct cdev *cdev, struct device_node *node);
+int of_partitions_register_fixup(struct cdev *cdev);
 int of_device_is_stdout_path(struct device_d *dev);
 const char *of_get_model(void);
 void *of_flatten_dtb(struct device_node *node);
@@ -264,6 +265,11 @@ static inline int of_parse_partitions(struct cdev *cdev,
 	return -EINVAL;
 }
 
+static inline int of_partitions_register_fixup(struct cdev *cdev)
+{
+	return -ENOSYS;
+}
+
 static inline int of_device_is_stdout_path(struct device_d *dev)
 {
 	return 0;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
