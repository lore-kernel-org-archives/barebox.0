Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGsZw-0006M5-5T
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 21:26:37 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990392AbeJ1V0YO4Snf (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sun, 28 Oct 2018 22:26:24 +0100
Date: Sun, 28 Oct 2018 22:26:23 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181028212622.GN14788@lenoch>
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
Subject: [PATCH 13/16] mtd: nand_bbt: scan for next free bbt block if writing
 bbt fails
To: barebox@lists.infradead.org

Linux commit 10ffd570f117 adapted for Barebox:

  If erasing or writing the BBT fails, we should mark the current BBT
  block as bad and use the BBT descriptor to scan for the next available
  unused block in the BBT. We should only return a failure if there isn't
  any space left.

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/mtd/nand/nand_bbt.c | 51 ++++++++++++++++++++++++++++++++-----
 1 file changed, 45 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index 1d3551b4e..af992e795 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -662,6 +662,37 @@ static int get_bbt_block(struct nand_chip *this, struct nand_bbt_descr *td,
 	return -ENOSPC;
 }
 
+/**
+ * mark_bbt_block_bad - Mark one of the block reserved for BBT bad
+ * @mtd: the MTD device
+ * @td: the BBT description
+ * @chip: the CHIP selector
+ * @block: the BBT block to mark
+ *
+ * Blocks reserved for BBT can become bad. This functions is an helper to mark
+ * such blocks as bad. It takes care of updating the in-memory BBT, marking the
+ * block as bad using a bad block marker and invalidating the associated
+ * td->pages[] entry.
+ */
+static void mark_bbt_block_bad(struct mtd_info *mtd,
+			       struct nand_bbt_descr *td,
+			       int chip, int block)
+{
+	struct nand_chip *this = mtd->priv;
+	loff_t to;
+	int res;
+
+	bbt_mark_entry(this, block, BBT_BLOCK_WORN);
+
+	to = (loff_t)block << this->bbt_erase_shift;
+	res = this->block_markbad(mtd, to);
+	if (res)
+		pr_warn("nand_bbt: error %d while marking block %d bad\n",
+			res, block);
+
+	td->pages[chip] = -1;
+}
+
 /**
  * write_bbt - [GENERIC] (Re)write the bad block table
  * @mtd: MTD device structure
@@ -710,7 +741,7 @@ static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
 	}
 
 	/* Loop through the chips */
-	for (; chip < nrchips; chip++) {
+	while (chip < nrchips) {
 		int block;
 
 		block = get_bbt_block(this, td, md, chip);
@@ -820,20 +851,28 @@ static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
 		einfo.addr = to;
 		einfo.len = 1 << this->bbt_erase_shift;
 		res = nand_erase_nand(mtd, &einfo, 1);
-		if (res < 0)
-			goto outerr;
+		if (res < 0) {
+			pr_warn("nand_bbt: error while erasing BBT block %d\n",
+				res);
+			mark_bbt_block_bad(mtd, td, chip, block);
+			continue;
+		}
 
 		res = scan_write_bbt(mtd, to, len, buf,
 				td->options & NAND_BBT_NO_OOB ? NULL :
 				&buf[len]);
-		if (res < 0)
-			goto outerr;
+		if (res < 0) {
+			pr_warn("nand_bbt: error while writing BBT block %d\n",
+				res);
+			mark_bbt_block_bad(mtd, td, chip, block);
+			continue;
+		}
 
 		pr_info("Bad block table written to 0x%012llx, version 0x%02X\n",
 			 (unsigned long long)to, td->version[chip]);
 
 		/* Mark it as used */
-		td->pages[chip] = page;
+		td->pages[chip++] = page;
 	}
 	return 0;
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
