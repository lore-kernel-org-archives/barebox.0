Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g3JSb-0004su-B4
 for barebox@lists.infradead.org; Fri, 21 Sep 2018 11:18:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 21 Sep 2018 13:18:18 +0200
Message-Id: <20180921111820.29742-7-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] mtd: mtdraw: fail when writing fails
To: Barebox List <barebox@lists.infradead.org>

When writing a block fails then fail the whole write process. There's
no point in returning the written bytes so far as this would only
indicate the caller to write the remaining bytes again which would
then fail.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/mtdraw.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index 6518ae34d5..fb45c2bbc9 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -158,12 +158,11 @@ static loff_t mtdraw_raw_to_mtd_offset(struct mtdraw *mtdraw, loff_t offset)
 	return (loff_t)mtdraw_offset_to_block(mtdraw, offset) * mtd->writesize;
 }
 
-static ssize_t mtdraw_blkwrite(struct mtdraw *mtdraw, const void *buf,
+static int mtdraw_blkwrite(struct mtdraw *mtdraw, const void *buf,
 			       ulong offset)
 {
 	struct mtd_info *mtd = mtdraw->mtd;
 	struct mtd_oob_ops ops;
-	int ret;
 
 	if (mtd_buf_all_ff(buf, mtdraw->rps))
 		return 0;
@@ -174,10 +173,7 @@ static ssize_t mtdraw_blkwrite(struct mtdraw *mtdraw, const void *buf,
 	ops.len = mtd->writesize;
 	ops.oobbuf = (void *)buf + mtd->writesize;
 	ops.ooblen = mtd->oobsize;
-	ret = mtd_write_oob(mtd, offset, &ops);
-	if (!ret)
-		ret = ops.retlen + ops.oobretlen;
-	return ret;
+	return mtd_write_oob(mtd, offset, &ops);
 }
 
 static void mtdraw_fillbuf(struct mtdraw *mtdraw, const void *src, int nbbytes)
@@ -215,6 +211,8 @@ static ssize_t mtdraw_write(struct cdev *cdev, const void *buf, size_t count,
 		numblock = mtdraw_offset_to_block(mtdraw, mtdraw->write_ofs);
 		ret = mtdraw_blkwrite(mtdraw, mtdraw->writebuf,
 				      mtd->writesize * numblock);
+		if (ret)
+			return ret;
 		mtdraw->write_fill = 0;
 	}
 
@@ -222,20 +220,19 @@ static ssize_t mtdraw_write(struct cdev *cdev, const void *buf, size_t count,
 	while (ret >= 0 && count >= mtdraw->rps) {
 		ret = mtdraw_blkwrite(mtdraw, buf + retlen,
 				   mtd->writesize * numblock++);
+		if (ret)
+			return ret;
 		count -= ret;
 		retlen += ret;
 		offset += ret;
 	}
 
-	if (ret >= 0 && count) {
+	if (count) {
 		mtdraw->write_ofs = offset - mtdraw->write_fill;
 		mtdraw_fillbuf(mtdraw, buf + retlen, count);
 		retlen += count;
 	}
 
-	if (ret < 0)
-		return ret;
-
 	return retlen;
 }
 
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
