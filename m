Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g3JSr-0004tU-B2
 for barebox@lists.infradead.org; Fri, 21 Sep 2018 11:19:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 21 Sep 2018 13:18:17 +0200
Message-Id: <20180921111820.29742-6-s.hauer@pengutronix.de>
In-Reply-To: <20180921111820.29742-1-s.hauer@pengutronix.de>
References: <20180921111820.29742-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] mtd: mtdraw: add raw page size to private data
To: Barebox List <barebox@lists.infradead.org>

The raw page size is used many times in the driver, so add a variable
to the private data instead of calculating it each time again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/mtdraw.c | 40 ++++++++++++++++++++--------------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index 089dc54eb4..6518ae34d5 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -48,6 +48,7 @@
  * @write_fill: number of bytes in writebuf
  * @write_ofs: offset in character device (mtdraw) where last write(s) stored
  * bytes because of unaligned writes (ie. remain of writesize+oobsize write)
+ * @rps: raw page size (data + oob)
  *
  * The mtdraw device must allow unaligned writes. This is enabled by a write buffer which gathers data to issue mtd->write_oob() with full page+oob data.
  * Suppose writesize=512, oobsize=16.
@@ -70,6 +71,7 @@ struct mtdraw {
 	void *writebuf;
 	int write_fill;
 	int write_ofs;
+	unsigned int rps;
 };
 
 static struct mtdraw *to_mtdraw(struct cdev *cdev)
@@ -79,27 +81,26 @@ static struct mtdraw *to_mtdraw(struct cdev *cdev)
 
 static unsigned int mtdraw_offset_to_block(struct mtdraw *mtdraw, loff_t offset)
 {
-	struct mtd_info *mtd = mtdraw->mtd;
-
 	u64 ofs64 = offset;
 
-	do_div(ofs64, mtd->writesize + mtd->oobsize);
+	do_div(ofs64, mtdraw->rps);
 
 	return ofs64;
 }
 
-static ssize_t mtdraw_read_unaligned(struct mtd_info *mtd, void *dst,
+static ssize_t mtdraw_read_unaligned(struct mtdraw *mtdraw, void *dst,
 				     size_t count, int skip, ulong offset)
 {
+	struct mtd_info *mtd = mtdraw->mtd;
 	struct mtd_oob_ops ops;
 	ssize_t ret;
 	int partial = 0;
 	void *tmp = dst;
 
-	if (skip || count < mtd->writesize + mtd->oobsize)
+	if (skip || count < mtdraw->rps)
 		partial = 1;
 	if (partial)
-		tmp = malloc(mtd->writesize + mtd->oobsize);
+		tmp = malloc(mtdraw->rps);
 	if (!tmp)
 		return -ENOMEM;
 	ops.mode = MTD_OPS_RAW;
@@ -131,12 +132,11 @@ static ssize_t mtdraw_read(struct cdev *cdev, void *buf, size_t count,
 	int skip;
 
 	numblock = mtdraw_offset_to_block(mtdraw, offset);
-	skip = offset - numblock * (mtd->writesize + mtd->oobsize);
+	skip = offset - numblock * (mtdraw->rps);
 
 	while (ret > 0 && count > 0) {
-		toread = min_t(int, count,
-				mtd->writesize + mtd->oobsize - skip);
-		ret = mtdraw_read_unaligned(mtd, buf, toread,
+		toread = min_t(int, count, mtdraw->rps - skip);
+		ret = mtdraw_read_unaligned(mtdraw, buf, toread,
 					    skip, numblock++ * mtd->writesize);
 		buf += ret;
 		skip = 0;
@@ -158,13 +158,14 @@ static loff_t mtdraw_raw_to_mtd_offset(struct mtdraw *mtdraw, loff_t offset)
 	return (loff_t)mtdraw_offset_to_block(mtdraw, offset) * mtd->writesize;
 }
 
-static ssize_t mtdraw_blkwrite(struct mtd_info *mtd, const void *buf,
+static ssize_t mtdraw_blkwrite(struct mtdraw *mtdraw, const void *buf,
 			       ulong offset)
 {
+	struct mtd_info *mtd = mtdraw->mtd;
 	struct mtd_oob_ops ops;
 	int ret;
 
-	if (mtd_buf_all_ff(buf, mtd->writesize + mtd->oobsize))
+	if (mtd_buf_all_ff(buf, mtdraw->rps))
 		return 0;
 
 	ops.mode = MTD_OPS_RAW;
@@ -190,7 +191,6 @@ static ssize_t mtdraw_write(struct cdev *cdev, const void *buf, size_t count,
 {
 	struct mtdraw *mtdraw = to_mtdraw(cdev);
 	struct mtd_info *mtd = mtdraw->mtd;
-	int bsz = mtd->writesize + mtd->oobsize;
 	ulong numblock;
 	size_t retlen = 0, tofill;
 	int ret = 0;
@@ -204,23 +204,23 @@ static ssize_t mtdraw_write(struct cdev *cdev, const void *buf, size_t count,
 		return -EINVAL;
 
 	if (mtdraw->write_fill) {
-		tofill = min_t(size_t, count, bsz - mtdraw->write_fill);
+		tofill = min_t(size_t, count, mtdraw->rps - mtdraw->write_fill);
 		mtdraw_fillbuf(mtdraw, buf, tofill);
 		offset += tofill;
 		count -= tofill;
 		retlen += tofill;
 	}
 
-	if (mtdraw->write_fill == bsz) {
+	if (mtdraw->write_fill == mtdraw->rps) {
 		numblock = mtdraw_offset_to_block(mtdraw, mtdraw->write_ofs);
-		ret = mtdraw_blkwrite(mtd, mtdraw->writebuf,
+		ret = mtdraw_blkwrite(mtdraw, mtdraw->writebuf,
 				      mtd->writesize * numblock);
 		mtdraw->write_fill = 0;
 	}
 
 	numblock = mtdraw_offset_to_block(mtdraw, offset);
-	while (ret >= 0 && count >= bsz) {
-		ret = mtdraw_blkwrite(mtd, buf + retlen,
+	while (ret >= 0 && count >= mtdraw->rps) {
+		ret = mtdraw_blkwrite(mtdraw, buf + retlen,
 				   mtd->writesize * numblock++);
 		count -= ret;
 		retlen += ret;
@@ -305,12 +305,12 @@ static int add_mtdraw_device(struct mtd_info *mtd, const char *devname, void **p
 		return 0;
 
 	mtdraw = xzalloc(sizeof(*mtdraw));
+	mtdraw->rps = mtd->writesize + mtd->oobsize;
 	mtdraw->writebuf = xmalloc(RAW_WRITEBUF_SIZE);
 	mtdraw->mtd = mtd;
 
 	mtdraw->cdev.ops = (struct cdev_operations *)&mtd_raw_fops;
-	mtdraw->cdev.size = mtd_div_by_wb(mtd->size, mtd) *
-		(mtd->writesize + mtd->oobsize);
+	mtdraw->cdev.size = mtd_div_by_wb(mtd->size, mtd) * mtdraw->rps;
 	mtdraw->cdev.name = basprintf("%s.raw", mtd->cdev.name);
 	mtdraw->cdev.priv = mtdraw;
 	mtdraw->cdev.dev = &mtd->class_dev;
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
