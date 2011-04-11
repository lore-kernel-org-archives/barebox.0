Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9HqM-0005zZ-Ao
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:11:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:11:49 +0200
Message-Id: <1302531111-29244-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302531111-29244-1-git-send-email-s.hauer@pengutronix.de>
References: <1302531111-29244-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] nand: move bb handling code to drivers/mtd/nand
To: barebox@lists.infradead.org

It's good to seperate the code which others can use from commands.
This way other users do not depend on the command being compiled in.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/nand.c            |  248 --------------------------------------
 drivers/mtd/nand/Makefile  |    2 +-
 drivers/mtd/nand/nand-bb.c |  282 ++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 283 insertions(+), 249 deletions(-)
 create mode 100644 drivers/mtd/nand/nand-bb.c

diff --git a/commands/nand.c b/commands/nand.c
index dc8fd9b..9a72780 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -32,254 +32,6 @@
 #include <fcntl.h>
 #include <libgen.h>
 
-struct nand_bb {
-	char *devname;
-	char *name;
-	int open;
-	int needs_write;
-
-	struct mtd_info_user info;
-
-	size_t raw_size;
-	size_t size;
-	int fd;
-	off_t offset;
-	void *writebuf;
-
-	struct cdev cdev;
-};
-
-static ssize_t nand_bb_read(struct cdev *cdev, void *buf, size_t count,
-	unsigned long offset, ulong flags)
-{
-	struct nand_bb *bb = cdev->priv;
-	int ret, bytes = 0, now;
-
-	debug("%s %d %d\n", __func__, offset, count);
-
-	while(count) {
-		ret = ioctl(bb->fd, MEMGETBADBLOCK, (void *)bb->offset);
-		if (ret < 0)
-			return ret;
-
-		if (ret) {
-			printf("skipping bad block at 0x%08lx\n", bb->offset);
-			bb->offset += bb->info.erasesize;
-			continue;
-		}
-
-		now = min(count, (size_t)(bb->info.erasesize -
-				(bb->offset % bb->info.erasesize)));
-		lseek(bb->fd, bb->offset, SEEK_SET);
-		ret = read(bb->fd, buf, now);
-		if (ret < 0)
-			return ret;
-		buf += now;
-		count -= now;
-		bb->offset += now;
-		bytes += now;
-	};
-
-	return bytes;
-}
-
-/* Must be a multiple of the largest NAND page size */
-#define BB_WRITEBUF_SIZE	4096
-
-#ifdef CONFIG_NAND_WRITE
-static int nand_bb_write_buf(struct nand_bb *bb, size_t count)
-{
-	int ret, now;
-	void *buf = bb->writebuf;
-	int cur_ofs = bb->offset & ~(BB_WRITEBUF_SIZE - 1);
-
-	while (count) {
-		ret = ioctl(bb->fd, MEMGETBADBLOCK, (void *)cur_ofs);
-		if (ret < 0)
-			return ret;
-
-		if (ret) {
-			debug("skipping bad block at 0x%08x\n", cur_ofs);
-			bb->offset += bb->info.erasesize;
-			cur_ofs += bb->info.erasesize;
-			continue;
-		}
-
-		now = min(count, (size_t)(bb->info.erasesize));
-		lseek(bb->fd, cur_ofs, SEEK_SET);
-		ret = write(bb->fd, buf, now);
-		if (ret < 0)
-			return ret;
-		buf += now;
-		count -= now;
-		cur_ofs += now;
-	};
-
-	return 0;
-}
-
-static ssize_t nand_bb_write(struct cdev *cdev, const void *buf, size_t count,
-	unsigned long offset, ulong flags)
-{
-	struct nand_bb *bb = cdev->priv;
-	int bytes = count, now, wroffs, ret;
-
-	debug("%s offset: 0x%08x count: 0x%08x\n", __func__, offset, count);
-
-	while (count) {
-		wroffs = bb->offset % BB_WRITEBUF_SIZE;
-		now = min((int)count, BB_WRITEBUF_SIZE - wroffs);
-		memcpy(bb->writebuf + wroffs, buf, now);
-
-		if (wroffs + now == BB_WRITEBUF_SIZE) {
-			bb->needs_write = 0;
-			ret = nand_bb_write_buf(bb, BB_WRITEBUF_SIZE);
-			if (ret)
-				return ret;
-		} else {
-			bb->needs_write = 1;
-		}
-
-		bb->offset += now;
-		count -= now;
-		buf += now;
-	}
-
-	return bytes;
-}
-
-static int nand_bb_erase(struct cdev *cdev, size_t count, unsigned long offset)
-{
-	struct nand_bb *bb = cdev->priv;
-
-	if (offset != 0) {
-		printf("can only erase from beginning of device\n");
-		return -EINVAL;
-	}
-
-	lseek(bb->fd, 0, SEEK_SET);
-
-	return erase(bb->fd, bb->raw_size, 0);
-}
-#endif
-
-static int nand_bb_open(struct cdev *cdev)
-{
-	struct nand_bb *bb = cdev->priv;
-
-	if (bb->open)
-		return -EBUSY;
-
-	bb->open = 1;
-	bb->offset = 0;
-	bb->needs_write = 0;
-	bb->writebuf = xmalloc(BB_WRITEBUF_SIZE);
-
-	return 0;
-}
-
-static int nand_bb_close(struct cdev *cdev)
-{
-	struct nand_bb *bb = cdev->priv;
-
-#ifdef CONFIG_NAND_WRITE
-	if (bb->needs_write)
-		nand_bb_write_buf(bb, bb->offset % BB_WRITEBUF_SIZE);
-#endif
-	bb->open = 0;
-	free(bb->writebuf);
-
-	return 0;
-}
-
-static int nand_bb_calc_size(struct nand_bb *bb)
-{
-	ulong pos = 0;
-	int ret;
-
-	while (pos < bb->raw_size) {
-		ret = ioctl(bb->fd, MEMGETBADBLOCK, (void *)pos);
-		if (ret < 0)
-			return ret;
-		if (!ret)
-			bb->cdev.size += bb->info.erasesize;
-
-		pos += bb->info.erasesize;
-	}
-
-	return 0;
-}
-
-static struct file_operations nand_bb_ops = {
-	.open   = nand_bb_open,
-	.close  = nand_bb_close,
-	.read  	= nand_bb_read,
-#ifdef CONFIG_NAND_WRITE
-	.write 	= nand_bb_write,
-	.erase	= nand_bb_erase,
-#endif
-};
-
-/**
- * Add a bad block aware device ontop of another (NAND) device 
- * @param[in] dev The device to add a partition on
- * @param[in] name Partition name (can be obtained with devinfo command)
- * @return The device representing the new partition.
- */
-int dev_add_bb_dev(char *path, const char *name)
-{
-	struct nand_bb *bb;
-	int ret = -ENOMEM;
-	struct stat s;
-
-	bb = xzalloc(sizeof(*bb));
-	bb->devname = asprintf("/dev/%s", basename(path));
-	if (!bb->devname)
-		goto out1;
-
-	if (name)
-		bb->cdev.name = strdup(name);
-	else
-		bb->cdev.name = asprintf("%s.bb", basename(path));
-
-	if (!bb->cdev.name)
-		goto out2;
-
-	ret = stat(bb->devname, &s);
-	if (ret)
-		goto out3;
-
-	bb->raw_size = s.st_size;
-
-	bb->fd = open(bb->devname, O_RDWR);
-	if (bb->fd < 0) {
-		ret = -ENODEV;
-		goto out3;
-	}
-
-	ret = ioctl(bb->fd, MEMGETINFO, &bb->info);
-	if (ret)
-		goto out4;
-
-	nand_bb_calc_size(bb);
-	bb->cdev.ops = &nand_bb_ops;
-	bb->cdev.priv = bb;
-
-	devfs_create(&bb->cdev);
-
-	return 0;
-
-out4:
-	close(bb->fd);
-out3:
-	free(bb->cdev.name);
-out2:
-	free(bb->devname);
-out1:
-	free(bb);
-	return ret;
-}
-
 #define NAND_ADD (1 << 0)
 #define NAND_DEL (1 << 1)
 #define NAND_MARKBAD (1 << 2)
diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index 3a31bc1..149cbbf 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -6,7 +6,7 @@ obj-$(CONFIG_NAND_ECC_SOFT)		+= nand_ecc.o nand_swecc.o
 obj-$(CONFIG_NAND_ECC_HW)		+= nand_hwecc.o
 obj-$(CONFIG_NAND_ECC_HW_SYNDROME)	+= nand_hwecc_syndrome.o
 obj-$(CONFIG_MTD_NAND_IDS)		+= nand_ids.o
-obj-$(CONFIG_NAND)			+= nand_base.o
+obj-$(CONFIG_NAND)			+= nand_base.o nand-bb.o
 obj-$(CONFIG_NAND_BBT)			+= nand_bbt.o
 
 obj-$(CONFIG_MTD_NAND_DISKONCHIP)	+= diskonchip.o
diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
new file mode 100644
index 0000000..233e974
--- /dev/null
+++ b/drivers/mtd/nand/nand-bb.c
@@ -0,0 +1,282 @@
+/*
+ * Copyright (c) 2008 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <linux/stat.h>
+#include <errno.h>
+#include <malloc.h>
+#include <getopt.h>
+#include <xfuncs.h>
+#include <init.h>
+#include <ioctl.h>
+#include <nand.h>
+#include <linux/mtd/mtd-abi.h>
+#include <fcntl.h>
+#include <libgen.h>
+
+struct nand_bb {
+	char *devname;
+	char *name;
+	int open;
+	int needs_write;
+
+	struct mtd_info_user info;
+
+	size_t raw_size;
+	size_t size;
+	int fd;
+	off_t offset;
+	void *writebuf;
+
+	struct cdev cdev;
+};
+
+static ssize_t nand_bb_read(struct cdev *cdev, void *buf, size_t count,
+	unsigned long offset, ulong flags)
+{
+	struct nand_bb *bb = cdev->priv;
+	int ret, bytes = 0, now;
+
+	debug("%s %d %d\n", __func__, offset, count);
+
+	while(count) {
+		ret = ioctl(bb->fd, MEMGETBADBLOCK, (void *)bb->offset);
+		if (ret < 0)
+			return ret;
+
+		if (ret) {
+			printf("skipping bad block at 0x%08lx\n", bb->offset);
+			bb->offset += bb->info.erasesize;
+			continue;
+		}
+
+		now = min(count, (size_t)(bb->info.erasesize -
+				(bb->offset % bb->info.erasesize)));
+		lseek(bb->fd, bb->offset, SEEK_SET);
+		ret = read(bb->fd, buf, now);
+		if (ret < 0)
+			return ret;
+		buf += now;
+		count -= now;
+		bb->offset += now;
+		bytes += now;
+	};
+
+	return bytes;
+}
+
+/* Must be a multiple of the largest NAND page size */
+#define BB_WRITEBUF_SIZE	4096
+
+#ifdef CONFIG_NAND_WRITE
+static int nand_bb_write_buf(struct nand_bb *bb, size_t count)
+{
+	int ret, now;
+	void *buf = bb->writebuf;
+	int cur_ofs = bb->offset & ~(BB_WRITEBUF_SIZE - 1);
+
+	while (count) {
+		ret = ioctl(bb->fd, MEMGETBADBLOCK, (void *)cur_ofs);
+		if (ret < 0)
+			return ret;
+
+		if (ret) {
+			debug("skipping bad block at 0x%08x\n", cur_ofs);
+			bb->offset += bb->info.erasesize;
+			cur_ofs += bb->info.erasesize;
+			continue;
+		}
+
+		now = min(count, (size_t)(bb->info.erasesize));
+		lseek(bb->fd, cur_ofs, SEEK_SET);
+		ret = write(bb->fd, buf, now);
+		if (ret < 0)
+			return ret;
+		buf += now;
+		count -= now;
+		cur_ofs += now;
+	};
+
+	return 0;
+}
+
+static ssize_t nand_bb_write(struct cdev *cdev, const void *buf, size_t count,
+	unsigned long offset, ulong flags)
+{
+	struct nand_bb *bb = cdev->priv;
+	int bytes = count, now, wroffs, ret;
+
+	debug("%s offset: 0x%08x count: 0x%08x\n", __func__, offset, count);
+
+	while (count) {
+		wroffs = bb->offset % BB_WRITEBUF_SIZE;
+		now = min((int)count, BB_WRITEBUF_SIZE - wroffs);
+		memcpy(bb->writebuf + wroffs, buf, now);
+
+		if (wroffs + now == BB_WRITEBUF_SIZE) {
+			bb->needs_write = 0;
+			ret = nand_bb_write_buf(bb, BB_WRITEBUF_SIZE);
+			if (ret)
+				return ret;
+		} else {
+			bb->needs_write = 1;
+		}
+
+		bb->offset += now;
+		count -= now;
+		buf += now;
+	}
+
+	return bytes;
+}
+
+static int nand_bb_erase(struct cdev *cdev, size_t count, unsigned long offset)
+{
+	struct nand_bb *bb = cdev->priv;
+
+	if (offset != 0) {
+		printf("can only erase from beginning of device\n");
+		return -EINVAL;
+	}
+
+	lseek(bb->fd, 0, SEEK_SET);
+
+	return erase(bb->fd, bb->raw_size, 0);
+}
+#endif
+
+static int nand_bb_open(struct cdev *cdev)
+{
+	struct nand_bb *bb = cdev->priv;
+
+	if (bb->open)
+		return -EBUSY;
+
+	bb->open = 1;
+	bb->offset = 0;
+	bb->needs_write = 0;
+	bb->writebuf = xmalloc(BB_WRITEBUF_SIZE);
+
+	return 0;
+}
+
+static int nand_bb_close(struct cdev *cdev)
+{
+	struct nand_bb *bb = cdev->priv;
+
+#ifdef CONFIG_NAND_WRITE
+	if (bb->needs_write)
+		nand_bb_write_buf(bb, bb->offset % BB_WRITEBUF_SIZE);
+#endif
+	bb->open = 0;
+	free(bb->writebuf);
+
+	return 0;
+}
+
+static int nand_bb_calc_size(struct nand_bb *bb)
+{
+	ulong pos = 0;
+	int ret;
+
+	while (pos < bb->raw_size) {
+		ret = ioctl(bb->fd, MEMGETBADBLOCK, (void *)pos);
+		if (ret < 0)
+			return ret;
+		if (!ret)
+			bb->cdev.size += bb->info.erasesize;
+
+		pos += bb->info.erasesize;
+	}
+
+	return 0;
+}
+
+static struct file_operations nand_bb_ops = {
+	.open   = nand_bb_open,
+	.close  = nand_bb_close,
+	.read  	= nand_bb_read,
+#ifdef CONFIG_NAND_WRITE
+	.write 	= nand_bb_write,
+	.erase	= nand_bb_erase,
+#endif
+};
+
+/**
+ * Add a bad block aware device ontop of another (NAND) device
+ * @param[in] dev The device to add a partition on
+ * @param[in] name Partition name (can be obtained with devinfo command)
+ * @return The device representing the new partition.
+ */
+int dev_add_bb_dev(char *path, const char *name)
+{
+	struct nand_bb *bb;
+	int ret = -ENOMEM;
+	struct stat s;
+
+	bb = xzalloc(sizeof(*bb));
+	bb->devname = asprintf("/dev/%s", basename(path));
+	if (!bb->devname)
+		goto out1;
+
+	if (name)
+		bb->cdev.name = strdup(name);
+	else
+		bb->cdev.name = asprintf("%s.bb", basename(path));
+
+	if (!bb->cdev.name)
+		goto out2;
+
+	ret = stat(bb->devname, &s);
+	if (ret)
+		goto out3;
+
+	bb->raw_size = s.st_size;
+
+	bb->fd = open(bb->devname, O_RDWR);
+	if (bb->fd < 0) {
+		ret = -ENODEV;
+		goto out3;
+	}
+
+	ret = ioctl(bb->fd, MEMGETINFO, &bb->info);
+	if (ret)
+		goto out4;
+
+	nand_bb_calc_size(bb);
+	bb->cdev.ops = &nand_bb_ops;
+	bb->cdev.priv = bb;
+
+	devfs_create(&bb->cdev);
+
+	return 0;
+
+out4:
+	close(bb->fd);
+out3:
+	free(bb->cdev.name);
+out2:
+	free(bb->devname);
+out1:
+	free(bb);
+	return ret;
+}
+
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
