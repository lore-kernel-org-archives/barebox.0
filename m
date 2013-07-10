Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uws0d-0000Kj-3b
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 10:52:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 12:52:02 +0200
Message-Id: <1373453528-3723-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
References: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/9] of: partitions: factor out function to parse a single
 partition
To: barebox@lists.infradead.org

To make it usable for other code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/partition.c | 58 ++++++++++++++++++++++++++++----------------------
 include/of.h           |  1 +
 2 files changed, 34 insertions(+), 25 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index e4b7d1e..d69251e 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -23,44 +23,52 @@
 #include <linux/mtd/mtd.h>
 #include <nand.h>
 
-int of_parse_partitions(struct cdev *cdev, struct device_node *node)
+struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 {
-	struct device_node *n;
 	const char *partname;
 	char *filename;
+	struct cdev *new;
+	const __be32 *reg;
+	unsigned long offset, size;
+	const char *name;
+	int len;
+	unsigned long flags = 0;
 
-	for_each_child_of_node(node, n) {
-		const __be32 *reg;
-		unsigned long offset, size;
-		const char *name;
-		int len;
-		unsigned long flags = 0;
+	reg = of_get_property(node, "reg", &len);
+	if (!reg)
+		return NULL;
+
+	offset = be32_to_cpu(reg[0]);
+	size = be32_to_cpu(reg[1]);
+
+	partname = of_get_property(node, "label", &len);
+	if (!partname)
+		partname = of_get_property(node, "name", &len);
+	name = (char *)partname;
 
-		reg = of_get_property(n, "reg", &len);
-		if (!reg)
-			continue;
+	debug("add partition: %s.%s 0x%08lx 0x%08lx\n", cdev->name, partname, offset, size);
 
-		offset = be32_to_cpu(reg[0]);
-		size = be32_to_cpu(reg[1]);
+	if (of_get_property(node, "read-only", &len))
+		flags = DEVFS_PARTITION_READONLY;
 
-		partname = of_get_property(n, "label", &len);
-		if (!partname)
-			partname = of_get_property(n, "name", &len);
-		name = (char *)partname;
+	filename = asprintf("%s.%s", cdev->name, partname);
 
-		debug("add partition: %s.%s 0x%08lx 0x%08lx\n", cdev->name, partname, offset, size);
+	new = devfs_add_partition(cdev->name, offset, size, flags, filename);
 
-		if (of_get_property(n, "read-only", &len))
-			flags = DEVFS_PARTITION_READONLY;
+	if (cdev->mtd && cdev->mtd->type == MTD_NANDFLASH)
+		dev_add_bb_dev(filename, NULL);
 
-		filename = asprintf("%s.%s", cdev->name, partname);
+	free(filename);
 
-		devfs_add_partition(cdev->name, offset, size, flags, filename);
+	return new;
+}
 
-		if (cdev->mtd && cdev->mtd->type == MTD_NANDFLASH)
-			dev_add_bb_dev(filename, NULL);
+int of_parse_partitions(struct cdev *cdev, struct device_node *node)
+{
+	struct device_node *n;
 
-		free(filename);
+	for_each_child_of_node(node, n) {
+		of_parse_partition(cdev, n);
 	}
 
 	return 0;
diff --git a/include/of.h b/include/of.h
index 0d8f6b3..710383c 100644
--- a/include/of.h
+++ b/include/of.h
@@ -221,6 +221,7 @@ extern int of_platform_populate(struct device_node *root,
 				struct device_d *parent);
 extern struct device_d *of_find_device_by_node(struct device_node *np);
 
+struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node);
 int of_parse_partitions(struct cdev *cdev, struct device_node *node);
 int of_device_is_stdout_path(struct device_d *dev);
 const char *of_get_model(void);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
