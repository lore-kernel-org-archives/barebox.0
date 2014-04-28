Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WeiCJ-0008FM-PI
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 09:50:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Apr 2014 11:49:36 +0200
Message-Id: <1398678579-17491-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] mtd: nand: bb: use mtd api directly
To: barebox@lists.infradead.org

The devfs layer just adds an addition indirection between mtd
and the bb devices with no purpose. Drop it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand-bb.c | 122 +++++++++++++++++++--------------------------
 1 file changed, 50 insertions(+), 72 deletions(-)

diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index f387ef6..06b5824 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -25,22 +25,18 @@
 #include <init.h>
 #include <ioctl.h>
 #include <nand.h>
-#include <linux/mtd/mtd-abi.h>
+#include <linux/mtd/mtd.h>
 #include <fcntl.h>
 #include <libgen.h>
 #include <linux/list.h>
 
 struct nand_bb {
-	char cdevname[MAX_DRIVER_NAME];
-	struct cdev *cdev_parent;
 	char *name;
 	int open;
 	int needs_write;
 
-	struct mtd_info_user info;
+	struct mtd_info *mtd;
 
-	loff_t raw_size;
-	loff_t size;
 	loff_t offset;
 	unsigned long flags;
 	void *writebuf;
@@ -54,31 +50,28 @@ static ssize_t nand_bb_read(struct cdev *cdev, void *buf, size_t count,
 	loff_t offset, ulong flags)
 {
 	struct nand_bb *bb = cdev->priv;
-	struct cdev *parent = bb->cdev_parent;
+	size_t retlen;
 	int ret, bytes = 0, now;
 
 	debug("%s 0x%08llx %d\n", __func__, offset, count);
 
-	while(count) {
-		ret = cdev_ioctl(parent, MEMGETBADBLOCK, &bb->offset);
-		if (ret < 0)
-			return ret;
-
-		if (ret) {
+	while (count) {
+		if (mtd_block_isbad(bb->mtd, offset)) {
 			printf("skipping bad block at 0x%08llx\n", bb->offset);
-			bb->offset += bb->info.erasesize;
+			bb->offset += bb->mtd->erasesize;
 			continue;
 		}
 
-		now = min(count, (size_t)(bb->info.erasesize -
-				((size_t)bb->offset % bb->info.erasesize)));
-		ret = cdev_read(parent, buf, now, bb->offset, 0);
+		now = min(count, (size_t)(bb->mtd->erasesize -
+				((size_t)bb->offset % bb->mtd->erasesize)));
+
+		ret = mtd_read(bb->mtd, bb->offset, now, &retlen, buf);
 		if (ret < 0)
 			return ret;
-		buf += now;
-		count -= now;
-		bb->offset += now;
-		bytes += now;
+		buf += retlen;
+		count -= retlen;
+		bb->offset += retlen;
+		bytes += retlen;
 	};
 
 	return bytes;
@@ -91,29 +84,25 @@ static ssize_t nand_bb_read(struct cdev *cdev, void *buf, size_t count,
 static int nand_bb_write_buf(struct nand_bb *bb, size_t count)
 {
 	int ret, now;
-	struct cdev *parent = bb->cdev_parent;
+	size_t retlen;
 	void *buf = bb->writebuf;
 	loff_t cur_ofs = bb->offset & ~(BB_WRITEBUF_SIZE - 1);
 
 	while (count) {
-		ret = cdev_ioctl(parent, MEMGETBADBLOCK, &cur_ofs);
-		if (ret < 0)
-			return ret;
-
-		if (ret) {
+		if (mtd_block_isbad(bb->mtd, cur_ofs)) {
 			debug("skipping bad block at 0x%08llx\n", cur_ofs);
-			bb->offset += bb->info.erasesize;
-			cur_ofs += bb->info.erasesize;
+			bb->offset += bb->mtd->erasesize;
+			cur_ofs += bb->mtd->erasesize;
 			continue;
 		}
 
-		now = min(count, (size_t)(bb->info.erasesize));
-		ret = cdev_write(parent, buf, now, cur_ofs, 0);
+		now = min(count, (size_t)(bb->mtd->erasesize));
+		ret = mtd_write(bb->mtd, cur_ofs, now, &retlen, buf);
 		if (ret < 0)
 			return ret;
-		buf += now;
-		count -= now;
-		cur_ofs += now;
+		buf += retlen;
+		count -= retlen;
+		cur_ofs += retlen;
 	};
 
 	return 0;
@@ -152,13 +141,17 @@ static ssize_t nand_bb_write(struct cdev *cdev, const void *buf, size_t count,
 static int nand_bb_erase(struct cdev *cdev, size_t count, loff_t offset)
 {
 	struct nand_bb *bb = cdev->priv;
+	struct erase_info erase = {};
 
 	if (offset != 0) {
 		printf("can only erase from beginning of device\n");
 		return -EINVAL;
 	}
 
-	return cdev_erase(bb->cdev_parent, bb->raw_size, 0);
+	erase.addr = 0;
+	erase.len = bb->mtd->size;
+
+	return mtd_erase(bb->mtd, &erase);
 }
 #endif
 
@@ -195,16 +188,12 @@ static int nand_bb_close(struct cdev *cdev)
 static int nand_bb_calc_size(struct nand_bb *bb)
 {
 	loff_t pos = 0;
-	int ret;
 
-	while (pos < bb->raw_size) {
-		ret = cdev_ioctl(bb->cdev_parent, MEMGETBADBLOCK, &pos);
-		if (ret < 0)
-			return ret;
-		if (!ret)
-			bb->cdev.size += bb->info.erasesize;
+	while (pos < bb->mtd->size) {
+		if (!mtd_block_isbad(bb->mtd, pos))
+			bb->cdev.size += bb->mtd->erasesize;
 
-		pos += bb->info.erasesize;
+		pos += bb->mtd->erasesize;
 	}
 
 	return 0;
@@ -215,22 +204,18 @@ static loff_t nand_bb_lseek(struct cdev *cdev, loff_t __offset)
 	struct nand_bb *bb = cdev->priv;
 	loff_t raw_pos = 0;
 	uint32_t offset = __offset;
-	int ret;
 
 	/* lseek only in readonly mode */
 	if (bb->flags & O_ACCMODE)
 		return -ENOSYS;
-	while (raw_pos < bb->raw_size) {
-		off_t now = min(offset, bb->info.erasesize);
+	while (raw_pos < bb->mtd->size) {
+		off_t now = min(offset, bb->mtd->erasesize);
 
-		ret = cdev_ioctl(bb->cdev_parent, MEMGETBADBLOCK, &raw_pos);
-		if (ret < 0)
-			return ret;
-		if (!ret) {
+		if (mtd_block_isbad(bb->mtd, raw_pos)) {
+			raw_pos += bb->mtd->erasesize;
+		} else {
 			offset -= now;
 			raw_pos += now;
-		} else {
-			raw_pos += bb->info.erasesize;
 		}
 
 		if (!offset) {
@@ -264,28 +249,23 @@ static LIST_HEAD(bb_list);
 int dev_add_bb_dev(const char *path, const char *name)
 {
 	struct nand_bb *bb;
+	struct cdev *parent;
 	int ret = -ENOMEM;
 
-	bb = xzalloc(sizeof(*bb));
-
-	bb->cdev_parent = cdev_open(path, O_RDWR);
-	if (!bb->cdev_parent)
-		goto out1;
-
-	if (name) {
-		strcpy(bb->cdevname, name);
-	} else {
-		strcpy(bb->cdevname, path);
-		strcat(bb->cdevname, ".bb");
-	}
+	parent = cdev_by_name(path);
+	if (!parent)
+		return -ENODEV;
 
-	bb->cdev.name = bb->cdevname;
+	if (!parent->mtd)
+		return -EINVAL;
 
-	bb->raw_size = bb->cdev_parent->size;
+	bb = xzalloc(sizeof(*bb));
+	bb->mtd = parent->mtd;
 
-	ret = cdev_ioctl(bb->cdev_parent, MEMGETINFO, &bb->info);
-	if (ret)
-		goto out4;
+	if (name)
+		bb->cdev.name = xstrdup(name);
+	else
+		bb->cdev.name = asprintf("%s.bb", path);;
 
 	nand_bb_calc_size(bb);
 	bb->cdev.ops = &nand_bb_ops;
@@ -300,8 +280,6 @@ int dev_add_bb_dev(const char *path, const char *name)
 	return 0;
 
 out4:
-	cdev_close(bb->cdev_parent);
-out1:
 	free(bb);
 	return ret;
 }
@@ -313,8 +291,8 @@ int dev_remove_bb_dev(const char *name)
 	list_for_each_entry(bb, &bb_list, list) {
 		if (!strcmp(bb->cdev.name, name)) {
 			devfs_remove(&bb->cdev);
-			cdev_close(bb->cdev_parent);
 			list_del_init(&bb->list);
+			free(bb->name);
 			free(bb);
 			return 0;
 		}
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
