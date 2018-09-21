Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g3JSb-0004sV-B3
 for barebox@lists.infradead.org; Fri, 21 Sep 2018 11:18:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 21 Sep 2018 13:18:16 +0200
Message-Id: <20180921111820.29742-5-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] mtd: mtdraw: pass mtdraw around
To: Barebox List <barebox@lists.infradead.org>

Pass mtdraw around internally instead of mtd. mtd can be accessed
easily from mtdraw, so we can also drop to_mtd().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/mtdraw.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index bfae795bd7..089dc54eb4 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -77,14 +77,10 @@ static struct mtdraw *to_mtdraw(struct cdev *cdev)
 	return cdev->priv;
 }
 
-static struct mtd_info *to_mtd(struct cdev *cdev)
+static unsigned int mtdraw_offset_to_block(struct mtdraw *mtdraw, loff_t offset)
 {
-	struct mtdraw *mtdraw = to_mtdraw(cdev);
-	return mtdraw->mtd;
-}
+	struct mtd_info *mtd = mtdraw->mtd;
 
-static unsigned int mtdraw_offset_to_block(struct mtd_info *mtd, loff_t offset)
-{
 	u64 ofs64 = offset;
 
 	do_div(ofs64, mtd->writesize + mtd->oobsize);
@@ -128,12 +124,13 @@ err:
 static ssize_t mtdraw_read(struct cdev *cdev, void *buf, size_t count,
 			    loff_t offset, ulong flags)
 {
-	struct mtd_info *mtd = to_mtd(cdev);
+	struct mtdraw *mtdraw = to_mtdraw(cdev);
+	struct mtd_info *mtd = mtdraw->mtd;
 	ssize_t retlen = 0, ret = 1, toread;
 	ulong numblock;
 	int skip;
 
-	numblock = mtdraw_offset_to_block(mtd, offset);
+	numblock = mtdraw_offset_to_block(mtdraw, offset);
 	skip = offset - numblock * (mtd->writesize + mtd->oobsize);
 
 	while (ret > 0 && count > 0) {
@@ -154,9 +151,11 @@ static ssize_t mtdraw_read(struct cdev *cdev, void *buf, size_t count,
 }
 
 #ifdef CONFIG_MTD_WRITE
-static loff_t mtdraw_raw_to_mtd_offset(struct mtd_info *mtd, loff_t offset)
+static loff_t mtdraw_raw_to_mtd_offset(struct mtdraw *mtdraw, loff_t offset)
 {
-	return (loff_t)mtdraw_offset_to_block(mtd, offset) * mtd->writesize;
+	struct mtd_info *mtd = mtdraw->mtd;
+
+	return (loff_t)mtdraw_offset_to_block(mtdraw, offset) * mtd->writesize;
 }
 
 static ssize_t mtdraw_blkwrite(struct mtd_info *mtd, const void *buf,
@@ -190,13 +189,13 @@ static ssize_t mtdraw_write(struct cdev *cdev, const void *buf, size_t count,
 			    loff_t offset, ulong flags)
 {
 	struct mtdraw *mtdraw = to_mtdraw(cdev);
-	struct mtd_info *mtd = to_mtd(cdev);
+	struct mtd_info *mtd = mtdraw->mtd;
 	int bsz = mtd->writesize + mtd->oobsize;
 	ulong numblock;
 	size_t retlen = 0, tofill;
 	int ret = 0;
 
-	numblock = mtdraw_offset_to_block(mtd, offset);
+	numblock = mtdraw_offset_to_block(mtdraw, offset);
 
 	if (mtdraw->write_fill &&
 	    mtdraw->write_ofs + mtdraw->write_fill != offset)
@@ -213,13 +212,13 @@ static ssize_t mtdraw_write(struct cdev *cdev, const void *buf, size_t count,
 	}
 
 	if (mtdraw->write_fill == bsz) {
-		numblock = mtdraw_offset_to_block(mtd, mtdraw->write_ofs);
+		numblock = mtdraw_offset_to_block(mtdraw, mtdraw->write_ofs);
 		ret = mtdraw_blkwrite(mtd, mtdraw->writebuf,
 				      mtd->writesize * numblock);
 		mtdraw->write_fill = 0;
 	}
 
-	numblock = mtdraw_offset_to_block(mtd, offset);
+	numblock = mtdraw_offset_to_block(mtdraw, offset);
 	while (ret >= 0 && count >= bsz) {
 		ret = mtdraw_blkwrite(mtd, buf + retlen,
 				   mtd->writesize * numblock++);
@@ -242,12 +241,13 @@ static ssize_t mtdraw_write(struct cdev *cdev, const void *buf, size_t count,
 
 static int mtdraw_erase(struct cdev *cdev, loff_t count, loff_t offset)
 {
-	struct mtd_info *mtd = to_mtd(cdev);
+	struct mtdraw *mtdraw = to_mtdraw(cdev);
+	struct mtd_info *mtd = mtdraw->mtd;
 	struct erase_info erase;
 	int ret;
 
-	offset = mtdraw_raw_to_mtd_offset(mtd, offset);
-	count = mtdraw_raw_to_mtd_offset(mtd, count);
+	offset = mtdraw_raw_to_mtd_offset(mtdraw, offset);
+	count = mtdraw_raw_to_mtd_offset(mtdraw, count);
 
 	memset(&erase, 0, sizeof(erase));
 	erase.mtd = mtd;
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
