Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ra9SN-0001K6-Pu
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 17:14:30 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 12 Dec 2011 18:14:06 +0100
Message-Id: <1323710046-4455-3-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1323710046-4455-1-git-send-email-robert.jarzmik@free.fr>
References: <1323710046-4455-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 2/2] drivers/mtd: add a core mtd handler
To: barebox@lists.infradead.org

Handles MTD device add and delete, as well as basic file
operations.

Each MTD device addition will bring 2 caracter devices:
 - /dev/mtd<N> : pure data device
 - /dev/mtdoob<N> : data+OOB device
The comment in the core explains the layout of mtdoob
device.

/dev/mtdoob is clearly designed to provide a simple way to
flash and read back a partition with all ECC and OOB filled
in. Some funky IPLs need special OOB to read the SPL, and
this device gives full access to all data of the chip (in
band and out of band).

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/Kconfig  |    5 +
 drivers/mtd/Makefile |    2 +
 drivers/mtd/core.c   |  314 ++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 321 insertions(+), 0 deletions(-)
 create mode 100644 drivers/mtd/core.c

diff --git a/drivers/mtd/Kconfig b/drivers/mtd/Kconfig
index c499a44..3736d93 100644
--- a/drivers/mtd/Kconfig
+++ b/drivers/mtd/Kconfig
@@ -1,6 +1,11 @@
 menuconfig MTD
         bool "Memory Technology Device (MTD) support"
 
+config MTD_WRITE
+	bool
+	default y
+	prompt "Support writing to MTD devices"
+
 if MTD
 
 source "drivers/mtd/devices/Kconfig"
diff --git a/drivers/mtd/Makefile b/drivers/mtd/Makefile
index 85bed11..d3acc12 100644
--- a/drivers/mtd/Makefile
+++ b/drivers/mtd/Makefile
@@ -1,3 +1,5 @@
+obj-$(CONFIG_MTD)	+= core.o
 obj-$(CONFIG_NAND)	+= nand/
 obj-$(CONFIG_UBI)	+= ubi/
+obj-y			+= devices/
 obj-$(CONFIG_PARTITION_NEED_MTD)	+= partition.o
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
new file mode 100644
index 0000000..b26573d
--- /dev/null
+++ b/drivers/mtd/core.c
@@ -0,0 +1,314 @@
+/*
+ * MTD core functions
+ *
+ * Copyright (C) 2011 Robert Jarzmik
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
+ * The core provides 2 functions:
+ *  - add_mtd_device() : add a MTD device
+ *  - del_mtd_device() : removes a previously added MTD device
+ *
+ * Once a device is added, 2 character devices are created :
+ *  - mtd<N>
+ *  - mtdoob<N>
+ *
+ * Device mtd<N> provides access to the MTD "pages", ie. all the real data,
+ * excepting OOB. This means for reads OOB is not given back, and for writes
+ * that devices inner write function decides how to handle OOB of a page (if
+ * applicable).
+ *
+ * Device mtd_oob<N> provides acces to the MTD "pages+OOB". For example if a MTD
+ * has pages of 512 bytes and OOB of 16 bytes, mtd_oob<N> will be made of blocks
+ * of 528 bytes, with page data being followed by OOB.
+ * The layout will be: <page0> <oob0> <page1> <oob1> ... <pageN> <oobN>.
+ * This means that a read at offset 516 of 20 bytes will give the 12 last bytes
+ * of the OOB of page0, and the 8 first bytes of page1.
+ * Same thing applies for writes, which have to be page+oob aligned (ie. offset
+ * and size should be multiples of (mtd->writesize + mtd->oobsize)).
+ */
+
+#include <common.h>
+#include <malloc.h>
+#include <ioctl.h>
+#include <errno.h>
+#include <linux/mtd/mtd.h>
+
+static ssize_t mtd_read(struct cdev *cdev, void *buf, size_t count,
+			ulong offset, ulong flags)
+{
+	struct mtd_info *mtd = cdev->priv;
+	size_t retlen;
+	int ret;
+
+	ret = mtd->read(mtd, offset, count, &retlen, buf);
+	if (ret) {
+		printf("err %d\n", ret);
+		return ret;
+	}
+	return retlen;
+}
+
+static ssize_t mtd_read_unaligned(struct mtd_info *mtd, void *dst, size_t count,
+				  int skip, ulong offset)
+{
+	struct mtd_oob_ops ops;
+	ssize_t ret;
+	int partial = 0;
+	void *tmp = dst;
+
+	if (skip || count < mtd->writesize + mtd->oobsize)
+		partial = 1;
+	if (partial)
+		tmp = malloc(mtd->writesize + mtd->oobsize);
+	if (!tmp)
+		return -ENOMEM;
+	ops.mode = MTD_OOB_RAW;
+	ops.datbuf = tmp;
+	ops.len = mtd->writesize;
+	ops.oobbuf = tmp + mtd->writesize;
+	ops.ooblen = mtd->oobsize;
+	ret = mtd->read_oob(mtd, offset, &ops);
+	if (ret)
+		goto err;
+	if (partial)
+		memcpy(dst, tmp + skip, count);
+	ret = count - skip;
+err:
+	if (partial)
+		free(tmp);
+
+	return ret;
+}
+
+static ssize_t mtd_read_oob(struct cdev *cdev, void *buf, size_t count,
+			    ulong offset, ulong flags)
+{
+	struct mtd_info *mtd = cdev->priv;
+	ssize_t retlen = 0, ret = 1, toread;
+	ulong numpage;
+	int skip;
+
+	numpage = offset / (mtd->writesize + mtd->oobsize);
+	skip = offset % (mtd->writesize + mtd->oobsize);
+
+	while (ret > 0 && count > 0) {
+		toread = min_t(int, count, mtd->writesize + mtd->oobsize);
+		ret = mtd_read_unaligned(mtd, buf, toread,
+					 skip, numpage++ * mtd->writesize);
+		buf += ret;
+		skip = 0;
+		count -= ret;
+		retlen += ret;
+	}
+	if (ret < 0)
+		printf("err %d\n", ret);
+	else
+		ret = retlen;
+	return ret;
+}
+
+#ifdef MTD_WRITE
+static ssize_t mtd_write(struct cdev *cdev, const void *buf, size_t count,
+			 ulong offset, ulong flags)
+{
+	struct mtd_info *mtd = cdev->priv;
+	size_t retlen, now;
+	int ret = 0;
+	void *wrbuf = NULL;
+
+	ret = mtd->write(mtd, offset, count, &retlen, buf);
+	if (ret) {
+		printf("err %d\n", ret);
+		return ret;
+	}
+	return retlen;
+}
+
+static ssize_t mtd_write_oob(struct cdev *cdev, const void *buf, size_t count,
+			     ulong offset, ulong flags)
+{
+	struct mtd_info *mtd = cdev->priv;
+	ulong numpage;
+	struct mtd_oob_ops ops;
+	size_t retlen = 0;
+	int ret = 0;
+
+	if (offset % (mtd->writesize + mtd->oobsize) ||
+	    count % (mtd->writesize + mtd->oobsize))
+		return -EINVAL;
+	numpage = offset / (mtd->writesize + mtd->oobsize);
+
+	while (!ret && count > 0) {
+		ops.mode = MTD_OOB_RAW;
+		ops.datbuf = buf + retlen;
+		ops.len = min_t(int, count, mtd->writesize);
+		ops.oobbuf = buf + retlen + mtd->writesize;
+		ops.ooblen = mtd->oobsize;
+		ret = mtd->write_oob(mtd, mtd->writesize * numpage++, &ops);
+		count -= ops.retlen + ops.oobretlen;
+		retlen += ops.len + ops.oobretlen;
+	}
+	if (ret) {
+		printf("err %d\n", ret);
+		return ret;
+	} else {
+		return retlen;
+	}
+}
+
+static ssize_t mtd_erase(struct cdev *cdev, size_t count, unsigned long offset)
+{
+	struct mtd_info *mtd = cdev->priv;
+	struct erase_mtd erase;
+	int ret;
+
+	memset(&erase, 0, sizeof(erase));
+	erase.mtd = mtd;
+	erase.addr = offset;
+	erase.len = mtd->erasesize;
+
+	while (count > 0) {
+		debug("erase %d %d\n", erase.addr, erase.len);
+
+		ret = mtd->block_isbad(mtd, erase.addr);
+		if (ret > 0) {
+			printf("Skipping bad block at 0x%08x\n", erase.addr);
+		} else {
+			ret = mtd->erase(mtd, &erase);
+			if (ret)
+				return ret;
+		}
+
+		erase.addr += mtd->erasesize;
+		count -= count > mtd->erasesize ? mtd->erasesize : count;
+	}
+
+	return 0;
+}
+
+static ssize_t mtd_erase_oob(struct cdev *cdev, size_t count, ulong offset)
+{
+	offset = offset / (mtd->writesize + mtd->oobsize) * mtd->writesize;
+	count = count / (mtd->writesize + mtd->oobsize) * mtd->writesize;
+	return mtd_erase(cdev, count, offset);
+}
+
+#else
+static ssize_t mtd_write(struct cdev *cdev, const void *buf, size_t _count,
+			 ulong offset, ulong flags)
+{
+	return 0;
+}
+static ssize_t mtd_write_oob(struct cdev *cdev, const void *buf, size_t count,
+			     ulong offset, ulong flags)
+{
+	return 0;
+}
+static ssize_t mtd_erase(struct cdev *cdev, size_t count, ulong offset)
+{
+	return 0;
+}
+static ssize_t mtd_erase_oob(struct cdev *cdev, size_t count, ulong offset)
+{
+	return 0;
+}
+#endif
+
+static int mtd_ioctl(struct cdev *cdev, int request, void *buf)
+{
+	struct mtd_info *mtd = cdev->priv;
+	struct mtd_info_user *user = buf;
+
+	switch (request) {
+	case MEMGETBADBLOCK:
+		debug("MEMGETBADBLOCK: 0x%08lx\n", (off_t)buf);
+		return mtd->block_isbad(mtd, (off_t)buf);
+#ifdef CONFIG_MTD_WRITE
+	case MEMSETBADBLOCK:
+		debug("MEMSETBADBLOCK: 0x%08lx\n", (off_t)buf);
+		return mtd->block_markbad(mtd, (off_t)buf);
+#endif
+	case MEMGETINFO:
+		user->type	= mtd->type;
+		user->flags	= mtd->flags;
+		user->size	= mtd->size;
+		user->erasesize	= mtd->erasesize;
+		user->oobsize	= mtd->oobsize;
+		user->mtd	= mtd;
+		/* The below fields are obsolete */
+		user->ecctype	= -1;
+		user->eccsize	= 0;
+		return 0;
+	}
+
+	return 0;
+}
+
+static const struct file_operations mtd_fops = {
+	.read		= mtd_read,
+	.write		= mtd_write,
+	.erase		= mtd_erase,
+	.ioctl		= mtd_ioctl,
+	.lseek		= dev_lseek_default,
+};
+
+static const struct file_operations mtd_oob_fops = {
+	.read		= mtd_read_oob,
+	.write		= mtd_write_oob,
+	.erase		= mtd_erase_oob,
+	.ioctl		= mtd_ioctl,
+	.lseek		= dev_lseek_default,
+};
+
+int add_mtd_device(struct mtd_info *mtd)
+{
+	char str[16];
+
+	sprintf(mtd->class_dev.name, "mtd");
+	mtd->class_dev.id = -1;
+	register_device(&mtd->class_dev);
+	sprintf(str, "%u", mtd->size);
+	dev_add_param_fixed(&mtd->class_dev, "size", str);
+	sprintf(str, "%u", mtd->erasesize);
+	dev_add_param_fixed(&mtd->class_dev, "erasesize", str);
+	sprintf(str, "%u", mtd->writesize);
+	dev_add_param_fixed(&mtd->class_dev, "writesize", str);
+	sprintf(str, "%u", mtd->oobsize);
+	dev_add_param_fixed(&mtd->class_dev, "oobsize", str);
+
+	mtd->cdev.ops = (struct file_operations *)&mtd_fops;
+	mtd->cdev.size = mtd->size;
+	mtd->cdev.name = asprintf("mtd%d", mtd->class_dev.id);
+	mtd->cdev.priv = mtd;
+	mtd->cdev.dev = &mtd->class_dev;
+	mtd->cdev.mtd = mtd;
+	devfs_create(&mtd->cdev);
+
+	mtd->cdev_oob.ops = (struct file_operations *)&mtd_oob_fops;
+	mtd->cdev_oob.size = mtd->size / mtd->writesize *
+		(mtd->writesize + mtd->oobsize);
+	mtd->cdev_oob.name = asprintf("mtdoob%d", mtd->class_dev.id);
+	mtd->cdev_oob.priv = mtd;
+	mtd->cdev_oob.dev = &mtd->class_dev;
+	mtd->cdev_oob.mtd = mtd;
+	devfs_create(&mtd->cdev_oob);
+
+	return 0;
+}
+
+int del_mtd_device(struct mtd_info *mtd)
+{
+	unregister_device(&mtd->class_dev);
+	free(mtd->param_size.value);
+	free(mtd->cdev.name);
+	return 0;
+}
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
