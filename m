Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sjbqt-0006N3-Ly
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 19:55:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Jun 2012 21:54:54 +0200
Message-Id: <1340740503-7003-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340740503-7003-1-git-send-email-s.hauer@pengutronix.de>
References: <1340740503-7003-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] mtd: fix arguments to bad block ioctls
To: barebox@lists.infradead.org

In the Kernel the mtd ioctls expect a pointer to the offset, whereas
barebox interprets the pointer itself as an offset. Since we want
to add 64bit support for file sizes a pointer may not be sufficient,
so align with the kernel and convert it to a pointer to the offset.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c         |    5 +++--
 drivers/mtd/nand/nand-bb.c |   18 +++++++++---------
 fs/devfs-core.c            |    6 +++---
 3 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 87dcba6..2ce08a6 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -123,16 +123,17 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 	struct mtd_ecc_stats *ecc = buf;
 #endif
 	struct region_info_user *reg = buf;
+	off_t *offset = buf;
 
 	switch (request) {
 	case MEMGETBADBLOCK:
 		dev_dbg(cdev->dev, "MEMGETBADBLOCK: 0x%08lx\n", (off_t)buf);
-		ret = mtd->block_isbad(mtd, (off_t)buf);
+		ret = mtd->block_isbad(mtd, *offset);
 		break;
 #ifdef CONFIG_MTD_WRITE
 	case MEMSETBADBLOCK:
 		dev_dbg(cdev->dev, "MEMSETBADBLOCK: 0x%08lx\n", (off_t)buf);
-		ret = mtd->block_markbad(mtd, (off_t)buf);
+		ret = mtd->block_markbad(mtd, *offset);
 		break;
 #endif
 	case MEMGETINFO:
diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index bd30438..fcc4821 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -42,9 +42,9 @@ struct nand_bb {
 
 	struct mtd_info_user info;
 
-	size_t raw_size;
-	size_t size;
-	off_t offset;
+	loff_t raw_size;
+	loff_t size;
+	loff_t offset;
 	unsigned long flags;
 	void *writebuf;
 
@@ -63,12 +63,12 @@ static ssize_t nand_bb_read(struct cdev *cdev, void *buf, size_t count,
 	debug("%s %d %d\n", __func__, offset, count);
 
 	while(count) {
-		ret = cdev_ioctl(parent, MEMGETBADBLOCK, (void *)bb->offset);
+		ret = cdev_ioctl(parent, MEMGETBADBLOCK, &bb->offset);
 		if (ret < 0)
 			return ret;
 
 		if (ret) {
-			printf("skipping bad block at 0x%08lx\n", bb->offset);
+			printf("skipping bad block at 0x%08llx\n", bb->offset);
 			bb->offset += bb->info.erasesize;
 			continue;
 		}
@@ -96,10 +96,10 @@ static int nand_bb_write_buf(struct nand_bb *bb, size_t count)
 	int ret, now;
 	struct cdev *parent = bb->cdev_parent;
 	void *buf = bb->writebuf;
-	int cur_ofs = bb->offset & ~(BB_WRITEBUF_SIZE - 1);
+	off_t cur_ofs = bb->offset & ~(BB_WRITEBUF_SIZE - 1);
 
 	while (count) {
-		ret = cdev_ioctl(parent, MEMGETBADBLOCK, (void *)cur_ofs);
+		ret = cdev_ioctl(parent, MEMGETBADBLOCK, &cur_ofs);
 		if (ret < 0)
 			return ret;
 
@@ -197,11 +197,11 @@ static int nand_bb_close(struct cdev *cdev)
 
 static int nand_bb_calc_size(struct nand_bb *bb)
 {
-	ulong pos = 0;
+	loff_t pos = 0;
 	int ret;
 
 	while (pos < bb->raw_size) {
-		ret = cdev_ioctl(bb->cdev_parent, MEMGETBADBLOCK, (void *)pos);
+		ret = cdev_ioctl(bb->cdev_parent, MEMGETBADBLOCK, &pos);
 		if (ret < 0)
 			return ret;
 		if (!ret)
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index ff6a976..6a56d34 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -123,15 +123,15 @@ int cdev_flush(struct cdev *cdev)
 static int partition_ioctl(struct cdev *cdev, int request, void *buf)
 {
 	int ret = 0;
-	size_t offset;
+	loff_t offset, *_buf = buf;
 	struct mtd_info_user *user = buf;
 
 	switch (request) {
 	case MEMSETBADBLOCK:
 	case MEMGETBADBLOCK:
-		offset = (off_t)buf;
+		offset = *_buf;
 		offset += cdev->offset;
-		ret = cdev->ops->ioctl(cdev, request, (void *)offset);
+		ret = cdev->ops->ioctl(cdev, request, &offset);
 		break;
 	case MEMGETINFO:
 		if (cdev->mtd) {
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
