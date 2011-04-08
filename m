Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8CzH-00014Y-LV
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:48:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:48:33 +0200
Message-Id: <1302274116-9215-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302274116-9215-1-git-send-email-s.hauer@pengutronix.de>
References: <1302274116-9215-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] add block support
To: barebox@lists.infradead.org

This adds a simple block layer to barebox. Reading and writing
to block devices can be painfully slow without caching, so
add a simple caching layer here.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig  |    6 ++
 common/Makefile |    1 +
 common/block.c  |  263 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 fs/Makefile     |    2 +-
 include/block.h |   32 +++++++
 5 files changed, 303 insertions(+), 1 deletions(-)
 create mode 100644 common/block.c
 create mode 100644 include/block.h

diff --git a/common/Kconfig b/common/Kconfig
index 9e30579..ac83231 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -31,6 +31,12 @@ config ENV_HANDLING
 config GENERIC_GPIO
 	bool
 
+config BLOCK
+	bool
+
+config BLOCK_WRITE
+	bool
+
 menu "General Settings              "
 
 config LOCALVERSION_AUTO
diff --git a/common/Makefile b/common/Makefile
index d8c302f..3fc66f4 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -6,6 +6,7 @@ obj-$(CONFIG_KALLSYMS)		+= kallsyms.o
 obj-$(CONFIG_ENV_HANDLING)	+= environment.o
 obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
 obj-$(CONFIG_POLLER)		+= poller.o
+obj-$(CONFIG_BLOCK)		+= block.o
 
 obj-y += dlmalloc.o
 obj-y += clock.o
diff --git a/common/block.c b/common/block.c
new file mode 100644
index 0000000..24377c6
--- /dev/null
+++ b/common/block.c
@@ -0,0 +1,263 @@
+/*
+ * block.c - simple block layer
+ *
+ * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+#include <block.h>
+#include <linux/err.h>
+
+#define BLOCKSIZE(blk)	(1 << blk->blockbits)
+
+#define WRBUFFER_LAST(blk)	(blk->wrblock + blk->wrbufblocks - 1)
+
+#ifdef CONFIG_BLOCK_WRITE
+static int writebuffer_flush(struct block_device *blk)
+{
+	if (!blk->wrbufblocks)
+		return 0;
+
+	blk->ops->write(blk, blk->wrbuf, blk->wrblock,
+			blk->wrbufblocks);
+
+	blk->wrbufblocks = 0;
+
+	return 0;
+}
+
+static int block_put(struct block_device *blk, const void *buf, int block)
+{
+	if (block >= blk->num_blocks)
+		return -EIO;
+
+	if (block < blk->wrblock || block > blk->wrblock + blk->wrbufblocks) {
+		writebuffer_flush(blk);
+	}
+
+	if (blk->wrbufblocks == 0) {
+		blk->wrblock = block;
+		blk->wrbufblocks = 1;
+	}
+
+	memcpy(blk->wrbuf + (block - blk->wrblock) * BLOCKSIZE(blk),
+			buf, BLOCKSIZE(blk));
+
+	if (block > WRBUFFER_LAST(blk))
+		blk->wrbufblocks++;
+
+	if (blk->wrbufblocks == blk->wrbufsize)
+		writebuffer_flush(blk);
+
+	return 0;
+}
+
+#else
+static int writebuffer_flush(struct block_device *blk)
+{
+	return 0;
+}
+#endif
+
+static void *block_get(struct block_device *blk, int block)
+{
+	int ret;
+	int num_blocks;
+
+	if (block >= blk->num_blocks)
+		return ERR_PTR(-EIO);
+
+	/* first look into write buffer */
+	if (block >= blk->wrblock && block <= WRBUFFER_LAST(blk))
+		return blk->wrbuf + (block - blk->wrblock) * BLOCKSIZE(blk);
+
+	/* then look into read buffer */
+	if (block >= blk->rdblock && block <= blk->rdblockend)
+		return blk->rdbuf + (block - blk->rdblock) * BLOCKSIZE(blk);
+
+	/*
+	 * If none of the buffers above match read the block from
+	 * the device
+	 */
+	num_blocks = min(blk->rdbufsize, blk->num_blocks - block);
+
+	ret = blk->ops->read(blk, blk->rdbuf, block, num_blocks);
+	if (ret)
+		return ERR_PTR(ret);
+
+	blk->rdblock = block;
+	blk->rdblockend = block + num_blocks - 1;
+
+	return blk->rdbuf;
+}
+
+static ssize_t block_read(struct cdev *cdev, void *buf, size_t count,
+		unsigned long offset, unsigned long flags)
+{
+	struct block_device *blk = cdev->priv;
+	unsigned long mask = BLOCKSIZE(blk) - 1;
+	unsigned long block = offset >> blk->blockbits;
+	size_t icount = count;
+	int blocks;
+
+	if (offset & mask) {
+		size_t now = BLOCKSIZE(blk) - (offset & mask);
+		void *iobuf = block_get(blk, block);
+
+		now = min(count, now);
+
+		if (IS_ERR(iobuf))
+			return PTR_ERR(iobuf);
+
+		memcpy(buf, iobuf + (offset & mask), now);
+		buf += now;
+		count -= now;
+		block++;
+	}
+
+	blocks = count >> blk->blockbits;
+
+	while (blocks) {
+		void *iobuf = block_get(blk, block);
+
+		if (IS_ERR(iobuf))
+			return PTR_ERR(iobuf);
+
+		memcpy(buf, iobuf, BLOCKSIZE(blk));
+		buf += BLOCKSIZE(blk);
+		blocks--;
+		block++;
+		count -= BLOCKSIZE(blk);
+	}
+
+	if (count) {
+		void *iobuf = block_get(blk, block);
+
+		if (IS_ERR(iobuf))
+			return PTR_ERR(iobuf);
+
+		memcpy(buf, iobuf, count);
+	}
+
+	return icount;
+}
+
+#ifdef CONFIG_BLOCK_WRITE
+static ssize_t block_write(struct cdev *cdev, const void *buf, size_t count,
+		unsigned long offset, ulong flags)
+{
+	struct block_device *blk = cdev->priv;
+	unsigned long mask = BLOCKSIZE(blk) - 1;
+	unsigned long block = offset >> blk->blockbits;
+	size_t icount = count;
+	int blocks;
+
+	if (offset & mask) {
+		size_t now = BLOCKSIZE(blk) - (offset & mask);
+		void *iobuf = block_get(blk, block);
+
+		now = min(count, now);
+
+		if (IS_ERR(iobuf))
+			return PTR_ERR(iobuf);
+
+		memcpy(iobuf + (offset & mask), buf, now);
+		block_put(blk, iobuf, block);
+		buf += now;
+		count -= now;
+		block++;
+	}
+
+	blocks = count >> blk->blockbits;
+
+	while (blocks) {
+		block_put(blk, buf, block);
+		buf += BLOCKSIZE(blk);
+		blocks--;
+		block++;
+		count -= BLOCKSIZE(blk);
+	}
+
+	if (count) {
+		void *iobuf = block_get(blk, block);
+
+		if (IS_ERR(iobuf))
+			return PTR_ERR(iobuf);
+
+		memcpy(iobuf, buf, count);
+		block_put(blk, iobuf, block);
+	}
+
+	return icount;
+}
+#endif
+
+static int block_close(struct cdev *cdev)
+{
+	struct block_device *blk = cdev->priv;
+
+	return writebuffer_flush(blk);
+}
+
+static int block_flush(struct cdev *cdev)
+{
+	struct block_device *blk = cdev->priv;
+
+	return writebuffer_flush(blk);
+}
+
+struct file_operations block_ops = {
+	.read	= block_read,
+#ifdef CONFIG_BLOCK_WRITE
+	.write	= block_write,
+#endif
+	.close	= block_close,
+	.flush	= block_flush,
+	.lseek	= dev_lseek_default,
+};
+
+int blockdevice_register(struct block_device *blk)
+{
+	size_t size = blk->num_blocks * BLOCKSIZE(blk);
+	int ret;
+
+	blk->cdev.size = size;
+	blk->cdev.dev = blk->dev;
+	blk->cdev.ops = &block_ops;
+	blk->cdev.priv = blk;
+	blk->rdbufsize = PAGE_SIZE >> blk->blockbits;
+	blk->rdbuf = xmalloc(PAGE_SIZE);
+	blk->rdblock = 1;
+	blk->rdblockend = 0;
+	blk->wrbufsize = PAGE_SIZE >> blk->blockbits;
+	blk->wrbuf = xmalloc(PAGE_SIZE);
+	blk->wrblock = 0;
+	blk->wrbufblocks = 0;
+
+	ret = devfs_create(&blk->cdev);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+int blockdevice_unregister(struct block_device *blk)
+{
+	return 0;
+}
+
diff --git a/fs/Makefile b/fs/Makefile
index 4aa92ef..9e97db3 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -2,4 +2,4 @@ obj-$(CONFIG_FS_CRAMFS)	+= cramfs/
 obj-$(CONFIG_FS_RAMFS)	+= ramfs.o
 obj-y			+= devfs-core.o
 obj-$(CONFIG_FS_DEVFS)	+= devfs.o
-obj-y	+= fs.o
+obj-$(CONFIG_FS_FAT)	+= fat/
diff --git a/include/block.h b/include/block.h
new file mode 100644
index 0000000..aaab4e3
--- /dev/null
+++ b/include/block.h
@@ -0,0 +1,32 @@
+#ifndef __BLOCK_H
+#define __BLOCK_H
+
+#include <driver.h>
+
+struct block_device;
+
+struct block_device_ops {
+	int (*read)(struct block_device *, void *buf, int block, int num_blocks);
+	int (*write)(struct block_device *, const void *buf, int block, int num_blocks);
+};
+
+struct block_device {
+	struct device_d *dev;
+	struct block_device_ops *ops;
+	int blockbits;
+	int num_blocks;
+	void *rdbuf; /* read buffer */
+	int rdbufsize;
+	int rdblock; /* start block in read buffer */
+	int rdblockend; /* end block in read buffer */
+	void *wrbuf; /* write buffer */
+	int wrblock; /* start block in write buffer */
+	int wrbufblocks; /* number of blocks currently in write buffer */
+	int wrbufsize; /* size of write buffer in blocks */
+	struct cdev cdev;
+};
+
+int blockdevice_register(struct block_device *blk);
+int blockdevice_unregister(struct block_device *blk);
+
+#endif /* __BLOCK_H */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
