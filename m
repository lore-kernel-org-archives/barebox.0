Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WeiCO-0008Fu-HD
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 09:50:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Apr 2014 11:49:37 +0200
Message-Id: <1398678579-17491-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1398678579-17491-1-git-send-email-s.hauer@pengutronix.de>
References: <1398678579-17491-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] mtd: refactor bb device creation
To: barebox@lists.infradead.org

This refactors the code so that we get a mtd_add_bb which can
be used to create a bb dev on a mtd_info.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand-bb.c | 53 +++++++++++++++++++++++++++-------------------
 include/nand.h             |  6 ++++++
 2 files changed, 37 insertions(+), 22 deletions(-)

diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index 06b5824..0d3de41 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -29,6 +29,7 @@
 #include <fcntl.h>
 #include <libgen.h>
 #include <linux/list.h>
+#include <linux/err.h>
 
 struct nand_bb {
 	char *name;
@@ -240,32 +241,18 @@ static struct file_operations nand_bb_ops = {
 
 static LIST_HEAD(bb_list);
 
-/**
- * Add a bad block aware device ontop of another (NAND) device
- * @param[in] dev The device to add a partition on
- * @param[in] name Partition name (can be obtained with devinfo command)
- * @return The device representing the new partition.
- */
-int dev_add_bb_dev(const char *path, const char *name)
+struct cdev *mtd_add_bb(struct mtd_info *mtd, const char *name)
 {
 	struct nand_bb *bb;
-	struct cdev *parent;
-	int ret = -ENOMEM;
-
-	parent = cdev_by_name(path);
-	if (!parent)
-		return -ENODEV;
-
-	if (!parent->mtd)
-		return -EINVAL;
+	int ret;
 
 	bb = xzalloc(sizeof(*bb));
-	bb->mtd = parent->mtd;
+	bb->mtd = mtd;
 
 	if (name)
 		bb->cdev.name = xstrdup(name);
 	else
-		bb->cdev.name = asprintf("%s.bb", path);;
+		bb->cdev.name = asprintf("%s.bb", mtd->cdev.name);
 
 	nand_bb_calc_size(bb);
 	bb->cdev.ops = &nand_bb_ops;
@@ -273,15 +260,37 @@ int dev_add_bb_dev(const char *path, const char *name)
 
 	ret = devfs_create(&bb->cdev);
 	if (ret)
-		goto out4;
+		goto err;
 
 	list_add_tail(&bb->list, &bb_list);
 
-	return 0;
+	return &bb->cdev;
 
-out4:
+err:
 	free(bb);
-	return ret;
+	return ERR_PTR(ret);
+}
+
+/**
+ * Add a bad block aware device ontop of another (NAND) device
+ * @param[in] dev The device to add a partition on
+ * @param[in] name Partition name (can be obtained with devinfo command)
+ * @return The device representing the new partition.
+ */
+int dev_add_bb_dev(const char *path, const char *name)
+{
+	struct cdev *parent, *cdev;
+
+	parent = cdev_by_name(path);
+	if (!parent)
+		return -ENODEV;
+
+	if (!parent->mtd)
+		return -EINVAL;
+
+	cdev = mtd_add_bb(parent->mtd, name);
+
+	return PTR_ERR(cdev);
 }
 
 int dev_remove_bb_dev(const char *name)
diff --git a/include/nand.h b/include/nand.h
index a0e77cc..1da35d0 100644
--- a/include/nand.h
+++ b/include/nand.h
@@ -7,6 +7,7 @@ struct nand_bb;
 #ifdef CONFIG_NAND
 int dev_add_bb_dev(const char *filename, const char *name);
 int dev_remove_bb_dev(const char *name);
+struct cdev *mtd_add_bb(struct mtd_info *mtd, const char *name);
 #else
 static inline int dev_add_bb_dev(const char *filename, const char *name) {
 	return 0;
@@ -15,6 +16,11 @@ static inline int dev_remove_bb_dev(const char *name)
 {
 	return 0;
 }
+
+static inline struct cdev *mtd_add_bb(struct mtd_info *mtd, const char *name)
+{
+	return NULL;
+}
 #endif
 
 #endif /* __NAND_H__ */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
