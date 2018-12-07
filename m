Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gV9kA-0006iZ-04
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 06:36:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gV9jy-00019v-Jo
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:35:58 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <afa@pengutronix.de>) id 1gV9jy-0002HN-CB
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:35:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  7 Dec 2018 07:34:37 +0100
Message-Id: <20181207063433.7623-4-a.fatoum@pengutronix.de>
In-Reply-To: <20181207063433.7623-1-a.fatoum@pengutronix.de>
References: <20181207063433.7623-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/4] of: partition: add no-fixup device tree property
To: barebox@lists.infradead.org

Users can have reasons to inhibit barebox from fixing up partitions nodes
into the kernel device tree, like if it's a boot0-partitions node, which
doesn't have a kernel binding.
Allow users to specify a no-fixup property to indicate so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devicetree/bindings/mtd/partition.txt | 3 +++
 drivers/of/partition.c                              | 9 +++++++++
 fs/devfs-core.c                                     | 1 +
 3 files changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/partition.txt b/Documentation/devicetree/bindings/mtd/partition.txt
index 4288a82437b4..a2e810276a9c 100644
--- a/Documentation/devicetree/bindings/mtd/partition.txt
+++ b/Documentation/devicetree/bindings/mtd/partition.txt
@@ -4,6 +4,8 @@ In addition to the upstream binding, another property is added:
 
 Optional properties:
 - partuuid : The partition UUID for this partition.
+- no-fixup : empty property, indicates that barebox shouldn't fix up the
+             containing node into the kernel device tree.
 
 Additionally, barebox also supports partitioning the eMMC boot partitions if
 the partition table node is named appropriately:
@@ -28,6 +30,7 @@ flash@0 {
 emmc@1 {
 	boot0-partitions {
 		compatible = "fixed-partitions";
+		no-fixup;
 		#address-cells = <1>;
 		#size-cells = <1>;
 
diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 450dda17dfd7..219a91eeff44 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -77,6 +77,9 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	if (of_get_property(node, "read-only", NULL))
 		flags = DEVFS_PARTITION_READONLY;
 
+	if (of_get_property(node, "no-fixup", NULL))
+		flags |= DEVFS_PARTITION_NO_FIXUP;
+
 	filename = basprintf("%s.%s", cdev->name, partname);
 
 	new = devfs_add_partition(cdev->name, offset, size, flags, filename);
@@ -107,6 +110,9 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 		node = subnode;
 	}
 
+	if (of_get_property(node, "no-fixup", NULL))
+		cdev->flags |= DEVFS_PARTITION_NO_FIXUP;
+
 	for_each_child_of_node(node, n) {
 		of_parse_partition(cdev, n);
 	}
@@ -247,6 +253,9 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
 
 int of_partitions_register_fixup(struct cdev *cdev)
 {
+	if (cdev->flags & DEVFS_PARTITION_NO_FIXUP)
+		return 0;
+
 	return of_register_fixup(of_partition_fixup, cdev);
 }
 
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index f017e1c55d4c..19cea8a7ce56 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -339,6 +339,7 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 	new->priv = cdev->priv;
 	new->size = size;
 	new->offset = cdev->offset + offset;
+	new->flags = partinfo->flags;
 
 	new->dev = cdev->dev;
 	new->master = cdev;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
