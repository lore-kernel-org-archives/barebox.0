Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rcdpf-0006W2-3E
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 14:04:49 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 19 Dec 2011 15:04:08 +0100
Message-Id: <1324303449-30045-8-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1324303449-30045-1-git-send-email-robert.jarzmik@free.fr>
References: <1324303449-30045-1-git-send-email-robert.jarzmik@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH V3 7/8] drivers/mtd: split mtd mtdoob devices
To: barebox@lists.infradead.org

Split /dev/mtd and /dev/mtdoob devices.
Remove from mtd structure the mtdoob character device.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

---
Since V1:
 - fix Sascha name
 - rebase on the NAND_READ_OOB / NAND_DEVICE_OOB change
---
 drivers/mtd/Kconfig      |    3 +-
 drivers/mtd/Makefile     |    3 +-
 drivers/mtd/core.c       |   69 +-------------------------------
 drivers/mtd/mtd.h        |    3 +
 drivers/mtd/mtdoob.c     |  100 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/mtd/nand/Kconfig |    6 ---
 include/linux/mtd/mtd.h  |    1 -
 7 files changed, 108 insertions(+), 77 deletions(-)
 create mode 100644 drivers/mtd/mtdoob.c

diff --git a/drivers/mtd/Kconfig b/drivers/mtd/Kconfig
index 81282ab..a130c74 100644
--- a/drivers/mtd/Kconfig
+++ b/drivers/mtd/Kconfig
@@ -8,8 +8,9 @@ config MTD_WRITE
 	default y
 	prompt "Support writing to MTD devices"
 
-config MTD_READ_OOB
+config MTD_OOB_DEVICE
 	bool
+	select NAND_READ_OOB
 	default y
 	prompt "Create a device for reading the OOB data"
 
diff --git a/drivers/mtd/Makefile b/drivers/mtd/Makefile
index 80fe386..d41ffd4 100644
--- a/drivers/mtd/Makefile
+++ b/drivers/mtd/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_NAND)	+= nand/
 obj-$(CONFIG_UBI)	+= ubi/
 obj-$(CONFIG_PARTITION_NEED_MTD)	+= partition.o
-obj-$(CONFIG_MTD)	+= core.o
+obj-$(CONFIG_MTD)			+= core.o
+obj-$(CONFIG_MTD_OOB_DEVICE)		+= mtdoob.o
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index a3cea33..55d845d 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -114,7 +114,7 @@ out:
 }
 #endif
 
-static int mtd_ioctl(struct cdev *cdev, int request, void *buf)
+int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 {
 	struct mtd_info *mtd = cdev->priv;
 	struct mtd_info_user *user = buf;
@@ -186,71 +186,6 @@ static struct file_operations mtd_ops = {
 	.lseek  = dev_lseek_default,
 };
 
-#ifdef CONFIG_NAND_READ_DEVICE
-static ssize_t mtd_read_oob(struct cdev *cdev, void *buf, size_t count,
-			    ulong offset, ulong flags)
-{
-	struct mtd_info *mtd = cdev->priv;
-	struct mtd_oob_ops ops;
-	int ret;
-
-	if (count < mtd->oobsize)
-		return -EINVAL;
-
-	ops.mode = MTD_OOB_RAW;
-	ops.ooboffs = 0;
-	ops.ooblen = mtd->oobsize;
-	ops.oobbuf = buf;
-	ops.datbuf = NULL;
-	ops.len = mtd->oobsize;
-
-	offset /= mtd->oobsize;
-	/*
-	 * This seems suspicious, shouldn't it be :
-	 *   offset / mtd->oobsize * mtd->writesize
-	 */
-	ret = mtd->read_oob(mtd, offset * mtd->writesize, &ops);
-	if (ret)
-		return ret;
-
-	return mtd->oobsize;
-}
-
-static struct file_operations mtd_ops_oob = {
-	.read   = mtd_read_oob,
-	.ioctl  = mtd_ioctl,
-	.lseek  = dev_lseek_default,
-};
-
-static int mtd_init_oob_cdev(struct mtd_info *mtd, char *devname)
-{
-	mtd->cdev_oob.ops = &mtd_ops_oob;
-	mtd->cdev_oob.size = (mtd->size / mtd->writesize) * mtd->oobsize;
-	mtd->cdev_oob.name = asprintf("%s_oob%d", devname, mtd->class_dev.id);
-	mtd->cdev_oob.priv = mtd;
-	mtd->cdev_oob.dev = &mtd->class_dev;
-	devfs_create(&mtd->cdev_oob);
-
-	return 0;
-}
-
-static void mtd_exit_oob_cdev(struct mtd_info *mtd)
-{
-	free(mtd->cdev_oob.name);
-}
-#else
-
-static int mtd_init_oob_cdev(struct mtd_info *mtd, char *devname)
-{
-	return 0;
-}
-
-static void mtd_exit_oob_cdev(struct mtd_info *mtd)
-{
-	return;
-}
-#endif
-
 int add_mtd_device(struct mtd_info *mtd, char *devname)
 {
 	char str[16];
@@ -280,7 +215,6 @@ int add_mtd_device(struct mtd_info *mtd, char *devname)
 
 	devfs_create(&mtd->cdev);
 
-	mtd_init_oob_cdev(mtd, devname);
 	list_for_each_entry(hook, &mtd_register_hooks, hook)
 		if (hook->add_mtd_device)
 			hook->add_mtd_device(mtd, devname);
@@ -296,7 +230,6 @@ int del_mtd_device (struct mtd_info *mtd)
 		if (hook->del_mtd_device)
 			hook->del_mtd_device(mtd);
 	unregister_device(&mtd->class_dev);
-	mtd_exit_oob_cdev(mtd);
 	free(mtd->param_size.value);
 	free(mtd->cdev.name);
 	return 0;
diff --git a/drivers/mtd/mtd.h b/drivers/mtd/mtd.h
index 261cd2b..c8af6e3 100644
--- a/drivers/mtd/mtd.h
+++ b/drivers/mtd/mtd.h
@@ -28,6 +28,7 @@ struct mtddev_hook {
 	int (*add_mtd_device)(struct mtd_info *mtd, char *devname);
 	int (*del_mtd_device)(struct mtd_info *mtd);
 };
+struct cdev;
 
 /**
  * mtdcore_add_hook - add a hook to MTD registration/unregistration
@@ -37,3 +38,5 @@ struct mtddev_hook {
  * mtdraw, ...)
  */
 void mtdcore_add_hook(struct mtddev_hook *hook);
+
+int mtd_ioctl(struct cdev *cdev, int request, void *buf);
diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
new file mode 100644
index 0000000..fdecee6
--- /dev/null
+++ b/drivers/mtd/mtdoob.c
@@ -0,0 +1,100 @@
+/*
+ * MTD oob device
+ *
+ * Copyright (C) 2011 Sascha Hauer
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * Adds a character devices :
+ *  - mtdoob<N>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <ioctl.h>
+#include <errno.h>
+#include <linux/mtd/mtd.h>
+
+#include "mtd.h"
+
+struct mtdoob {
+	struct cdev cdev;
+	struct mtd_info *mtd;
+};
+
+static struct mtd_info *to_mtd(struct cdev *cdev)
+{
+	struct mtdoob *mtdoob = cdev->priv;
+	return mtdoob->mtd;
+}
+
+static ssize_t mtd_read_oob(struct cdev *cdev, void *buf, size_t count,
+			     ulong offset, ulong flags)
+{
+	struct mtd_info *mtd = to_mtd(cdev);
+	struct mtd_oob_ops ops;
+	int ret;
+
+	if (count < mtd->oobsize)
+		return -EINVAL;
+
+	ops.mode = MTD_OOB_RAW;
+	ops.ooboffs = 0;
+	ops.ooblen = mtd->oobsize;
+	ops.oobbuf = buf;
+	ops.datbuf = NULL;
+	ops.len = mtd->oobsize;
+
+	offset /= mtd->oobsize;
+	/*
+	 * This seems suspicious, shouldn't it be :
+	 *   offset / mtd->oobsize * mtd->writesize
+	 */
+	ret = mtd->read_oob(mtd, offset * mtd->writesize, &ops);
+	if (ret)
+		return ret;
+
+	return mtd->oobsize;
+}
+
+static struct file_operations mtd_ops_oob = {
+	.read   = mtd_read_oob,
+	.ioctl  = mtd_ioctl,
+	.lseek  = dev_lseek_default,
+};
+
+static int add_mtdoob_device(struct mtd_info *mtd, char *devname)
+{
+	struct mtdoob *mtdoob;
+
+	mtdoob = xzalloc(sizeof(*mtdoob));
+	mtdoob->cdev.ops = &mtd_ops_oob;
+	mtdoob->cdev.size = (mtd->size / mtd->writesize) * mtd->oobsize;
+	mtdoob->cdev.name = asprintf("%s_oob%d", devname, mtd->class_dev.id);
+	mtdoob->cdev.priv = mtdoob;
+	mtdoob->cdev.dev = &mtd->class_dev;
+	devfs_create(&mtdoob->cdev);
+
+	return 0;
+}
+
+static struct mtddev_hook mtdoob_hook = {
+	.add_mtd_device = add_mtdoob_device,
+};
+
+static int __init register_mtdoob(void)
+{
+	mtdcore_add_hook(&mtdoob_hook);
+	return 0;
+}
+
+coredevice_initcall(register_mtdoob);
diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index b6e38ff..bda0529 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -48,12 +48,6 @@ config NAND_BBT
 	  Say y here to include support for bad block tables. This speeds
 	  up the process of checking for bad blocks
 
-config NAND_OOB_DEVICE
-	bool
-	select NAND_READ_OOB
-	default y
-	prompt "create a device for reading the OOB data"
-
 config NAND_IMX
 	bool
 	prompt "i.MX NAND driver"
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index a985c30..71d3c6f 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -202,7 +202,6 @@ struct mtd_info {
 	struct device_d class_dev;
 	struct device_d *dev;
 	struct cdev cdev;
-	struct cdev cdev_oob;
 
 	struct param_d param_size;
 	char *size_str;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
