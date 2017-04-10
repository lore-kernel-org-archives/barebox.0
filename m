Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxTXO-0006xn-1m
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 07:15:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Apr 2017 09:14:16 +0200
Message-Id: <20170410071420.26884-7-s.hauer@pengutronix.de>
In-Reply-To: <20170410071420.26884-1-s.hauer@pengutronix.de>
References: <20170410071420.26884-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/10] mtd: use dev_add_param_string
To: Barebox List <barebox@lists.infradead.org>

dev_add_param_string allows to pass a priv * so that the device_d *
argument is not needed and can be removed later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c      | 22 +++++++++++-----------
 include/linux/mtd/mtd.h |  1 +
 2 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 1eb8dd36d8..f071373501 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -449,13 +449,13 @@ static struct file_operations mtd_ops = {
 	.lseek  = dev_lseek_default,
 };
 
-static int mtd_partition_set(struct device_d *dev, struct param_d *p, const char *val)
+static int mtd_partition_set(struct param_d *p, void *priv)
 {
-	struct mtd_info *mtd = container_of(dev, struct mtd_info, class_dev);
+	struct mtd_info *mtd = priv;
 	struct mtd_info *mtdpart, *tmp;
 	int ret;
 
-	if (!val)
+	if (!mtd->partition_string)
 		return -EINVAL;
 
 	list_for_each_entry_safe(mtdpart, tmp, &mtd->partitions, partitions_entry) {
@@ -464,7 +464,7 @@ static int mtd_partition_set(struct device_d *dev, struct param_d *p, const char
 			return ret;
 	}
 
-	return cmdlinepart_do_parse(mtd->cdev.name, val, mtd->size, CMDLINEPART_ADD_DEVNAME);
+	return cmdlinepart_do_parse(mtd->cdev.name, mtd->partition_string, mtd->size, CMDLINEPART_ADD_DEVNAME);
 }
 
 static char *print_size(uint64_t s)
@@ -530,18 +530,18 @@ static int print_parts(char *buf, int bufsize, struct mtd_info *mtd)
 	return ret;
 }
 
-static const char *mtd_partition_get(struct device_d *dev, struct param_d *p)
+static int mtd_partition_get(struct param_d *p, void *priv)
 {
-	struct mtd_info *mtd = container_of(dev, struct mtd_info, class_dev);
+	struct mtd_info *mtd = priv;
 	int len = 0;
 
-	free(p->value);
+	free(mtd->partition_string);
 
 	len = print_parts(NULL, 0, mtd);
-	p->value = xzalloc(len + 1);
-	print_parts(p->value, len + 1, mtd);
+	mtd->partition_string = xzalloc(len + 1);
+	print_parts(mtd->partition_string, len + 1, mtd);
 
-	return p->value;
+	return 0;
 }
 
 static int mtd_part_compare(struct list_head *a, struct list_head *b)
@@ -667,7 +667,7 @@ int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 		mtd->cdev_bb = mtd_add_bb(mtd, NULL);
 
 	if (mtd->parent && !mtd->master) {
-		dev_add_param(&mtd->class_dev, "partitions", mtd_partition_set, mtd_partition_get, 0);
+		dev_add_param_string(&mtd->class_dev, "partitions", mtd_partition_set, mtd_partition_get, &mtd->partition_string, mtd);
 		of_parse_partitions(&mtd->cdev, mtd->parent->device_node);
 		if (IS_ENABLED(CONFIG_OFDEVICE) && mtd->parent->device_node) {
 			mtd->of_path = xstrdup(mtd->parent->device_node->full_name);
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index fa35c7ef39..16725ac4bc 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -226,6 +226,7 @@ struct mtd_info {
 
 	struct list_head partitions;
 	struct list_head partitions_entry;
+	char *partition_string;
 
 	char *of_path;
 	unsigned int of_binding;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
