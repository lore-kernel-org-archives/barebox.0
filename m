Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khnE7-00050M-JX
 for barebox@lists.infradead.org; Wed, 25 Nov 2020 05:20:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Nov 2020 06:20:09 +0100
Message-Id: <20201125052011.20660-3-s.hauer@pengutronix.de>
In-Reply-To: <20201125052011.20660-1-s.hauer@pengutronix.de>
References: <20201125052011.20660-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] of: partitions: export of_fixup_partitions
To: Barebox List <barebox@lists.infradead.org>

of_partitions_register_fixup() tries to automatically determine the
node to fixup. Sometimes this doesn't work, so add of_fixup_partitions()
that can called at fixup time with a device node determined by subsystem
or driver code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/partition.c | 37 +++++++++++++++++++++----------------
 include/of.h           |  6 ++++++
 2 files changed, 27 insertions(+), 16 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 7367073c67..65c24c5426 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -123,20 +123,16 @@ static void delete_subnodes(struct device_node *np)
 	}
 }
 
-static int of_partition_fixup(struct device_node *root, void *ctx)
+int of_fixup_partitions(struct device_node *np, struct cdev *cdev)
 {
-	struct cdev *cdev = ctx, *partcdev;
-	struct device_node *np, *part, *partnode;
-	char *name;
+	struct cdev *partcdev;
+	struct device_node *part, *partnode;
 	int ret;
 	int n_cells, n_parts = 0;
 
 	if (of_partition_binding == MTD_OF_BINDING_DONTTOUCH)
 		return 0;
 
-	if (!cdev->device_node)
-		return -EINVAL;
-
 	list_for_each_entry(partcdev, &cdev->partitions, partition_entry) {
 		if (partcdev->flags & DEVFS_PARTITION_FROM_TABLE)
 			continue;
@@ -151,15 +147,6 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
 	else
 		n_cells = 1;
 
-	name = of_get_reproducible_name(cdev->device_node);
-	np = of_find_node_by_reproducible_name(root, name);
-	free(name);
-	if (!np) {
-		dev_err(cdev->dev, "Cannot find nodepath %s, cannot fixup\n",
-				cdev->device_node->full_name);
-		return -EINVAL;
-	}
-
 	partnode = of_get_child_by_name(np, "partitions");
 	if (partnode) {
 		if (of_partition_binding == MTD_OF_BINDING_LEGACY) {
@@ -242,6 +229,24 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
 	return 0;
 }
 
+static int of_partition_fixup(struct device_node *root, void *ctx)
+{
+	struct cdev *cdev = ctx;
+	struct device_node *np;
+	char *name;
+
+	name = of_get_reproducible_name(cdev->device_node);
+	np = of_find_node_by_reproducible_name(root, name);
+	free(name);
+	if (!np) {
+		dev_err(cdev->dev, "Cannot find nodepath %s, cannot fixup\n",
+				cdev->device_node->full_name);
+		return -EINVAL;
+	}
+
+	return of_fixup_partitions(np, cdev);
+}
+
 int of_partitions_register_fixup(struct cdev *cdev)
 {
 	return of_register_fixup(of_partition_fixup, cdev);
diff --git a/include/of.h b/include/of.h
index 08a02e1105..aebd8384ad 100644
--- a/include/of.h
+++ b/include/of.h
@@ -275,6 +275,7 @@ extern struct device_d *of_device_enable_and_register_by_alias(
 
 struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node);
 int of_parse_partitions(struct cdev *cdev, struct device_node *node);
+int of_fixup_partitions(struct device_node *np, struct cdev *cdev);
 int of_partitions_register_fixup(struct cdev *cdev);
 int of_device_is_stdout_path(struct device_d *dev);
 const char *of_get_model(void);
@@ -303,6 +304,11 @@ static inline int of_parse_partitions(struct cdev *cdev,
 	return -EINVAL;
 }
 
+static inline int of_fixup_partitions(struct device_node *np, struct cdev *cdev)
+{
+	return -ENOSYS;
+}
+
 static inline int of_partitions_register_fixup(struct cdev *cdev)
 {
 	return -ENOSYS;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
