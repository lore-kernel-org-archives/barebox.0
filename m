Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGsUs-0002IP-3o
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 21:21:24 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990392AbeJ1VVVjoB2F (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sun, 28 Oct 2018 22:21:21 +0100
Date: Sun, 28 Oct 2018 22:21:20 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181028212120.GB14788@lenoch>
References: <20181028211947.GA14788@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181028211947.GA14788@lenoch>
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
Subject: [PATCH 01/16] mtd: nand: refactor chip->block_markbad interface
To: barebox@lists.infradead.org

Linux commit 5a0edb251ae9 adapted for Barebox:

  The chip->block_markbad pointer should really only be responsible for
  writing a bad block marker for new bad blocks. It should not take care
  of BBT-related functionality, nor should it handle bookkeeping of bad
  block stats.

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/mtd/nand/nand_base.c | 87 +++++++++++++++++++++---------------
 1 file changed, 52 insertions(+), 35 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index ccf961504..2025d176e 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -326,13 +326,58 @@ static int nand_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
 }
 
 /**
- * nand_default_block_markbad - [DEFAULT] mark a block bad
+ * nand_default_block_markbad - [DEFAULT] mark a block bad via bad block marker
  * @mtd: MTD device structure
  * @ofs: offset from device start
  *
  * This is the default implementation, which can be overridden by a hardware
- * specific driver. We try operations in the following order, according to our
- * bbt_options (NAND_BBT_NO_OOB_BBM and NAND_BBT_USE_FLASH):
+ * specific driver. It provides the details for writing a bad block marker to a
+ * block.
+ */
+static int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs)
+{
+	struct nand_chip *chip = mtd->priv;
+	struct mtd_oob_ops ops;
+	uint8_t buf[2] = { 0, 0 };
+	int ret = 0, res, i = 0;
+
+	ops.datbuf = NULL;
+	ops.oobbuf = buf;
+	ops.ooboffs = chip->badblockpos;
+	if (chip->options & NAND_BUSWIDTH_16) {
+		ops.ooboffs &= ~0x01;
+		ops.len = ops.ooblen = 2;
+	} else {
+		ops.len = ops.ooblen = 1;
+	}
+	ops.mode = MTD_OPS_PLACE_OOB;
+
+	/* Write to first/last page(s) if necessary */
+	if (chip->bbt_options & NAND_BBT_SCANLASTPAGE)
+		ofs += mtd->erasesize - mtd->writesize;
+	do {
+		res = nand_do_write_oob(mtd, ofs, &ops);
+		if (!ret)
+			ret = res;
+
+		i++;
+		ofs += mtd->writesize;
+	} while ((chip->bbt_options & NAND_BBT_SCAN2NDPAGE) && i < 2);
+
+	return ret;
+}
+
+/**
+ * nand_block_markbad_lowlevel - mark a block bad
+ * @mtd: MTD device structure
+ * @ofs: offset from device start
+ *
+ * This function performs the generic NAND bad block marking steps (i.e., bad
+ * block table(s) and/or marker(s)). We only allow the hardware driver to
+ * specify how to write bad block markers to OOB (chip->block_markbad).
+ *
+ * We try operations in the following order, according to our bbt_options
+ * (NAND_BBT_NO_OOB_BBM and NAND_BBT_USE_FLASH):
  *  (1) erase the affected block, to allow OOB marker to be written cleanly
  *  (2) update in-memory BBT
  *  (3) write bad block marker to OOB area of affected block
@@ -340,11 +385,10 @@ static int nand_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
  * Note that we retain the first error encountered in (3) or (4), finish the
  * procedures, and dump the error in the end.
 */
-static __maybe_unused  int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs)
+static int nand_block_markbad_lowlevel(struct mtd_info *mtd, loff_t ofs)
 {
 	struct nand_chip *chip = mtd->priv;
-	uint8_t buf[2] = { 0, 0 };
-	int block, res, ret = 0, i = 0;
+	int block, res, ret = 0;
 	int write_oob = !(chip->bbt_options & NAND_BBT_NO_OOB_BBM);
 
 	if (write_oob) {
@@ -366,34 +410,8 @@ static __maybe_unused  int nand_default_block_markbad(struct mtd_info *mtd, loff
 
 	/* Write bad block marker to OOB */
 	if (write_oob) {
-		struct mtd_oob_ops ops;
-		loff_t wr_ofs = ofs;
-
 		nand_get_device(mtd, FL_WRITING);
-
-		ops.datbuf = NULL;
-		ops.oobbuf = buf;
-		ops.ooboffs = chip->badblockpos;
-		if (chip->options & NAND_BUSWIDTH_16) {
-			ops.ooboffs &= ~0x01;
-			ops.len = ops.ooblen = 2;
-		} else {
-			ops.len = ops.ooblen = 1;
-		}
-		ops.mode = MTD_OPS_PLACE_OOB;
-
-		/* Write to first/last page(s) if necessary */
-		if (chip->bbt_options & NAND_BBT_SCANLASTPAGE)
-			wr_ofs += mtd->erasesize - mtd->writesize;
-		do {
-			res = nand_do_write_oob(mtd, wr_ofs, &ops);
-			if (!ret)
-				ret = res;
-
-			i++;
-			wr_ofs += mtd->writesize;
-		} while ((chip->bbt_options & NAND_BBT_SCAN2NDPAGE) && i < 2);
-
+		ret = chip->block_markbad(mtd, ofs);
 		nand_release_device(mtd);
 	}
 
@@ -2786,7 +2804,6 @@ static int nand_block_isbad(struct mtd_info *mtd, loff_t offs)
  */
 static int nand_block_markbad(struct mtd_info *mtd, loff_t ofs)
 {
-	struct nand_chip *chip = mtd->priv;
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_MTD_WRITE))
@@ -2800,7 +2817,7 @@ static int nand_block_markbad(struct mtd_info *mtd, loff_t ofs)
 		return ret;
 	}
 
-	return chip->block_markbad(mtd, ofs);
+	return nand_block_markbad_lowlevel(mtd, ofs);
 }
 
 /**
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
