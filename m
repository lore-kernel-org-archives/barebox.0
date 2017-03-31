Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctpC6-0005H4-2m
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 05:34:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 07:33:17 +0200
Message-Id: <20170331053323.17821-9-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/14] of: partition: Make partition fixup independent from
 mtd devices
To: Barebox List <barebox@lists.infradead.org>

The of partition parser is not only used for mtd device, but also
for regular block devices, so make the of_mtd_fixup code independent
of mtd devices also, so that other devices can be fixed up, too.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/partition.c | 36 +++++++++++++++++++-----------------
 1 file changed, 19 insertions(+), 17 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 30df6b32d1..9b96a39edb 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -98,6 +98,8 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 	if (!node)
 		return -EINVAL;
 
+	cdev->device_node = node;
+
 	subnode = of_get_child_by_name(node, "partitions");
 	if (subnode) {
 		if (!of_device_is_compatible(subnode, "fixed-partitions"))
@@ -124,28 +126,28 @@ static void delete_subnodes(struct device_node *np)
 	}
 }
 
-static int of_mtd_fixup(struct device_node *root, void *ctx)
+static int of_partition_fixup(struct device_node *root, void *ctx)
 {
-	struct cdev *cdev = ctx;
-	struct mtd_info *mtd, *partmtd;
+	struct cdev *cdev = ctx, *partcdev;
 	struct device_node *np, *part, *partnode;
 	int ret;
 	int n_cells;
 
-	mtd = container_of(cdev, struct mtd_info, cdev);
-
 	if (of_partition_binding == MTD_OF_BINDING_DONTTOUCH)
 		return 0;
 
-	if (mtd->size >= 0x100000000)
+	if (!cdev->device_node)
+		return -EINVAL;
+
+	if (cdev->size >= 0x100000000)
 		n_cells = 2;
 	else
 		n_cells = 1;
 
-	np = of_find_node_by_path_from(root, mtd->of_path);
+	np = of_find_node_by_path_from(root, cdev->device_node->full_name);
 	if (!np) {
-		dev_err(&mtd->class_dev, "Cannot find nodepath %s, cannot fixup\n",
-				mtd->of_path);
+		dev_err(cdev->dev, "Cannot find nodepath %s, cannot fixup\n",
+				cdev->device_node->full_name);
 		return -EINVAL;
 	}
 
@@ -180,10 +182,10 @@ static int of_mtd_fixup(struct device_node *root, void *ctx)
 	if (ret)
 		return ret;
 
-	list_for_each_entry(partmtd, &mtd->partitions, partitions_entry) {
+	list_for_each_entry(partcdev, &cdev->partitions, partition_entry) {
 		int na, ns, len = 0;
 		char *name = basprintf("partition@%0llx",
-					 partmtd->master_offset);
+					 partcdev->offset);
 		void *p;
 		u8 tmp[16 * 16]; /* Up to 64-bit address + 64-bit size */
 
@@ -195,24 +197,24 @@ static int of_mtd_fixup(struct device_node *root, void *ctx)
 		if (!part)
 			return -ENOMEM;
 
-		p = of_new_property(part, "label", partmtd->cdev.partname,
-                                strlen(partmtd->cdev.partname) + 1);
+		p = of_new_property(part, "label", partcdev->partname,
+                                strlen(partcdev->partname) + 1);
 		if (!p)
 			return -ENOMEM;
 
 		na = of_n_addr_cells(part);
 		ns = of_n_size_cells(part);
 
-		of_write_number(tmp + len, partmtd->master_offset, na);
+		of_write_number(tmp + len, partcdev->offset, na);
 		len += na * 4;
-		of_write_number(tmp + len, partmtd->size, ns);
+		of_write_number(tmp + len, partcdev->size, ns);
 		len += ns * 4;
 
 		ret = of_set_property(part, "reg", tmp, len, 1);
 		if (ret)
 			return ret;
 
-		if (partmtd->cdev.flags & DEVFS_PARTITION_READONLY) {
+		if (partcdev->flags & DEVFS_PARTITION_READONLY) {
 			ret = of_set_property(part, "read-only", NULL, 0, 1);
 			if (ret)
 				return ret;
@@ -224,7 +226,7 @@ static int of_mtd_fixup(struct device_node *root, void *ctx)
 
 int of_partitions_register_fixup(struct cdev *cdev)
 {
-	return of_register_fixup(of_mtd_fixup, cdev);
+	return of_register_fixup(of_partition_fixup, cdev);
 }
 
 static const char *of_binding_names[] = {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
