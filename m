Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctpC4-0005Gc-6f
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 05:33:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 07:33:13 +0200
Message-Id: <20170331053323.17821-5-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/14] mtd: of: Make used partition binding configurable
To: Barebox List <barebox@lists.infradead.org>

So far we used the legacy partition binding when fixing up the
mtd partition nodes. Change this to default to the new binding
with a "partitions" submode. Make this behaviour configurable
though: This creates a new of_binding device variable for
mtd devices. This can be set to:

- "new": Use the new partition binding (default)
- "legacy": Use the old partition binding
- "donttouch": Do not touch the partition node

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/partition.c  | 84 ++++++++++++++++++++++++++++++++++++++++++++-----
 include/linux/mtd/mtd.h |  1 +
 2 files changed, 78 insertions(+), 7 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 68f3812ed6..f4d6c3322c 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -23,6 +23,16 @@
 #include <linux/mtd/mtd.h>
 #include <linux/err.h>
 #include <nand.h>
+#include <init.h>
+#include <globalvar.h>
+
+static unsigned int of_partition_binding;
+
+enum of_binding_name {
+	MTD_OF_BINDING_NEW,
+	MTD_OF_BINDING_LEGACY,
+	MTD_OF_BINDING_DONTTOUCH,
+};
 
 struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 {
@@ -93,15 +103,36 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 	return 0;
 }
 
+static void delete_subnodes(struct device_node *np)
+{
+	struct device_node *part, *tmp;
+
+	for_each_child_of_node_safe(np, tmp, part) {
+		if (of_get_property(part, "compatible", NULL))
+			continue;
+
+		of_delete_node(part);
+	}
+}
+
 static int of_mtd_fixup(struct device_node *root, void *ctx)
 {
 	struct cdev *cdev = ctx;
 	struct mtd_info *mtd, *partmtd;
-	struct device_node *np, *part, *tmp;
+	struct device_node *np, *part, *partnode;
 	int ret;
+	int n_cells;
 
 	mtd = container_of(cdev, struct mtd_info, cdev);
 
+	if (of_partition_binding == MTD_OF_BINDING_DONTTOUCH)
+		return 0;
+
+	if (mtd->size >= 0x100000000)
+		n_cells = 2;
+	else
+		n_cells = 1;
+
 	np = of_find_node_by_path_from(root, mtd->of_path);
 	if (!np) {
 		dev_err(&mtd->class_dev, "Cannot find nodepath %s, cannot fixup\n",
@@ -109,12 +140,37 @@ static int of_mtd_fixup(struct device_node *root, void *ctx)
 		return -EINVAL;
 	}
 
-	for_each_child_of_node_safe(np, tmp, part) {
-		if (of_get_property(part, "compatible", NULL))
-			continue;
-		of_delete_node(part);
+	partnode = of_get_child_by_name(np, "partitions");
+	if (partnode) {
+		if (of_partition_binding == MTD_OF_BINDING_LEGACY) {
+			of_delete_node(partnode);
+			partnode = np;
+		}
+		delete_subnodes(partnode);
+	} else {
+		delete_subnodes(np);
+
+		if (of_partition_binding == MTD_OF_BINDING_LEGACY)
+			partnode = np;
+		else
+			partnode = of_new_node(np, "partitions");
+	}
+
+	if (of_partition_binding == MTD_OF_BINDING_NEW) {
+		ret = of_property_write_string(partnode, "compatible",
+					       "fixed-partitions");
+		if (ret)
+			return ret;
 	}
 
+	of_property_write_u32(partnode, "#size-cells", n_cells);
+	if (ret)
+		return ret;
+
+	of_property_write_u32(partnode, "#addres-cells", n_cells);
+	if (ret)
+		return ret;
+
 	list_for_each_entry(partmtd, &mtd->partitions, partitions_entry) {
 		int na, ns, len = 0;
 		char *name = basprintf("partition@%0llx",
@@ -125,7 +181,7 @@ static int of_mtd_fixup(struct device_node *root, void *ctx)
 		if (!name)
 			return -ENOMEM;
 
-		part = of_new_node(np, name);
+		part = of_new_node(partnode, name);
 		free(name);
 		if (!part)
 			return -ENOMEM;
@@ -160,4 +216,18 @@ static int of_mtd_fixup(struct device_node *root, void *ctx)
 int of_partitions_register_fixup(struct cdev *cdev)
 {
 	return of_register_fixup(of_mtd_fixup, cdev);
-}
\ No newline at end of file
+}
+
+static const char *of_binding_names[] = {
+	"new", "legacy", "donttouch"
+};
+
+static int of_partition_init(void)
+{
+	dev_add_param_enum(&global_device, "of_partition_binding", NULL, NULL,
+			   &of_partition_binding, of_binding_names,
+			   ARRAY_SIZE(of_binding_names), NULL);
+
+	return 0;
+}
+device_initcall(of_partition_init);
\ No newline at end of file
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index f93fac00f2..fa35c7ef39 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -228,6 +228,7 @@ struct mtd_info {
 	struct list_head partitions_entry;
 
 	char *of_path;
+	unsigned int of_binding;
 };
 
 int mtd_erase(struct mtd_info *mtd, struct erase_info *instr);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
