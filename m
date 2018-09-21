Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g3JSC-0004sd-L5
 for barebox@lists.infradead.org; Fri, 21 Sep 2018 11:18:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 21 Sep 2018 13:18:19 +0200
Message-Id: <20180921111820.29742-8-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] mtd: mtdraw: replace "block" with "page"
To: Barebox List <barebox@lists.infradead.org>

When the code says "block" it actually means "page" as this is what
the code handles. Rename the functions and variable names accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/mtdraw.c | 38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index fb45c2bbc9..18a94cc07f 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -79,7 +79,7 @@ static struct mtdraw *to_mtdraw(struct cdev *cdev)
 	return cdev->priv;
 }
 
-static unsigned int mtdraw_offset_to_block(struct mtdraw *mtdraw, loff_t offset)
+static unsigned int mtdraw_offset_to_page(struct mtdraw *mtdraw, loff_t offset)
 {
 	u64 ofs64 = offset;
 
@@ -128,16 +128,16 @@ static ssize_t mtdraw_read(struct cdev *cdev, void *buf, size_t count,
 	struct mtdraw *mtdraw = to_mtdraw(cdev);
 	struct mtd_info *mtd = mtdraw->mtd;
 	ssize_t retlen = 0, ret = 1, toread;
-	ulong numblock;
+	ulong numpage;
 	int skip;
 
-	numblock = mtdraw_offset_to_block(mtdraw, offset);
-	skip = offset - numblock * (mtdraw->rps);
+	numpage = mtdraw_offset_to_page(mtdraw, offset);
+	skip = offset - numpage * mtdraw->rps;
 
 	while (ret > 0 && count > 0) {
 		toread = min_t(int, count, mtdraw->rps - skip);
 		ret = mtdraw_read_unaligned(mtdraw, buf, toread,
-					    skip, numblock++ * mtd->writesize);
+					    skip, numpage++ * mtd->writesize);
 		buf += ret;
 		skip = 0;
 		count -= ret;
@@ -155,10 +155,10 @@ static loff_t mtdraw_raw_to_mtd_offset(struct mtdraw *mtdraw, loff_t offset)
 {
 	struct mtd_info *mtd = mtdraw->mtd;
 
-	return (loff_t)mtdraw_offset_to_block(mtdraw, offset) * mtd->writesize;
+	return (loff_t)mtdraw_offset_to_page(mtdraw, offset) * mtd->writesize;
 }
 
-static int mtdraw_blkwrite(struct mtdraw *mtdraw, const void *buf,
+static int mtdraw_pagewrite(struct mtdraw *mtdraw, const void *buf,
 			       ulong offset)
 {
 	struct mtd_info *mtd = mtdraw->mtd;
@@ -187,16 +187,16 @@ static ssize_t mtdraw_write(struct cdev *cdev, const void *buf, size_t count,
 {
 	struct mtdraw *mtdraw = to_mtdraw(cdev);
 	struct mtd_info *mtd = mtdraw->mtd;
-	ulong numblock;
+	ulong numpage;
 	size_t retlen = 0, tofill;
 	int ret = 0;
 
-	numblock = mtdraw_offset_to_block(mtdraw, offset);
+	numpage = mtdraw_offset_to_page(mtdraw, offset);
 
 	if (mtdraw->write_fill &&
 	    mtdraw->write_ofs + mtdraw->write_fill != offset)
 		return -EINVAL;
-	if (mtdraw->write_fill == 0 && offset - numblock * mtd->writesize != 0)
+	if (mtdraw->write_fill == 0 && offset - numpage * mtd->writesize != 0)
 		return -EINVAL;
 
 	if (mtdraw->write_fill) {
@@ -208,23 +208,23 @@ static ssize_t mtdraw_write(struct cdev *cdev, const void *buf, size_t count,
 	}
 
 	if (mtdraw->write_fill == mtdraw->rps) {
-		numblock = mtdraw_offset_to_block(mtdraw, mtdraw->write_ofs);
-		ret = mtdraw_blkwrite(mtdraw, mtdraw->writebuf,
-				      mtd->writesize * numblock);
+		numpage = mtdraw_offset_to_page(mtdraw, mtdraw->write_ofs);
+		ret = mtdraw_pagewrite(mtdraw, mtdraw->writebuf,
+				      mtd->writesize * numpage);
 		if (ret)
 			return ret;
 		mtdraw->write_fill = 0;
 	}
 
-	numblock = mtdraw_offset_to_block(mtdraw, offset);
+	numpage = mtdraw_offset_to_page(mtdraw, offset);
 	while (ret >= 0 && count >= mtdraw->rps) {
-		ret = mtdraw_blkwrite(mtdraw, buf + retlen,
-				   mtd->writesize * numblock++);
+		ret = mtdraw_pagewrite(mtdraw, buf + retlen,
+				   mtd->writesize * numpage++);
 		if (ret)
 			return ret;
-		count -= ret;
-		retlen += ret;
-		offset += ret;
+		count -= mtdraw->rps;
+		retlen += mtdraw->rps;
+		offset += mtdraw->rps;
 	}
 
 	if (count) {
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
