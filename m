Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFSkb-00064u-5t
 for barebox@lists.infradead.org; Wed, 24 Oct 2018 23:39:46 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23994573AbeJXXjouW0X1 (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Thu, 25 Oct 2018 01:39:44 +0200
Date: Thu, 25 Oct 2018 01:39:43 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181024233943.GC17799@lenoch>
References: <20181024233754.GA17799@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181024233754.GA17799@lenoch>
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
Subject: [PATCH 3/3] mtd: nand: don't break long print messages
To: barebox@lists.infradead.org

Linux commit 2ac63d901b11 adapted for Barebox:

  ...However, never break user-visible strings such as printk
  messages, because that breaks the ability to grep for them.

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/mtd/nand/nand_base.c |  6 ++----
 drivers/mtd/nand/nand_bbt.c  | 23 ++++++++++-------------
 2 files changed, 12 insertions(+), 17 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index b321c5918..ccf961504 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -3565,8 +3565,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 		/* Similar to NAND_ECC_HW, but a separate read_page handle */
 		if (!chip->ecc.calculate || !chip->ecc.correct ||
 		     !chip->ecc.hwctl) {
-			pr_warn("No ECC functions supplied; "
-				   "hardware ECC not possible\n");
+			pr_warn("No ECC functions supplied; hardware ECC not possible\n");
 			BUG();
 		}
 		if (!chip->ecc.read_page)
@@ -3681,8 +3680,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 #endif
 #ifdef CONFIG_NAND_ECC_NONE
 	case NAND_ECC_NONE:
-		pr_warn("NAND_ECC_NONE selected by board driver. "
-			   "This is not recommended!\n");
+		pr_warn("NAND_ECC_NONE selected by board driver. This is not recommended!\n");
 		chip->ecc.read_page = nand_read_page_raw;
 		chip->ecc.write_page = nand_write_page_raw;
 		chip->ecc.read_oob = nand_read_oob_std;
diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index ce1d22e5c..94a2e5783 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -213,12 +213,12 @@ static int read_bbt(struct mtd_info *mtd, uint8_t *buf, int page, int num,
 		res = mtd_read(mtd, from, len, &retlen, buf);
 		if (res < 0) {
 			if (mtd_is_eccerr(res)) {
-				pr_info("nand_bbt: ECC error in BBT at "
-					"0x%012llx\n", from & ~mtd->writesize);
+				pr_info("nand_bbt: ECC error in BBT at 0x%012llx\n",
+					from & ~mtd->writesize);
 				return res;
 			} else if (mtd_is_bitflip(res)) {
-				pr_info("nand_bbt: corrected error in BBT at "
-					"0x%012llx\n", from & ~mtd->writesize);
+				pr_info("nand_bbt: corrected error in BBT at 0x%012llx\n",
+					from & ~mtd->writesize);
 				ret = res;
 			} else {
 				pr_info("nand_bbt: error reading BBT\n");
@@ -631,8 +631,8 @@ static int search_bbt(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_descr
 		if (td->pages[i] == -1)
 			pr_warn("Bad block table not found for chip %d\n", i);
 		else
-			pr_info("Bad block table found at page %d, version "
-				 "0x%02X\n", td->pages[i], td->version[i]);
+			pr_info("Bad block table found at page %d, version 0x%02X\n",
+				td->pages[i], td->version[i]);
 	}
 	return 0;
 }
@@ -778,12 +778,10 @@ static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
 			res = mtd_read(mtd, to, len, &retlen, buf);
 			if (res < 0) {
 				if (retlen != len) {
-					pr_info("nand_bbt: error reading block "
-						"for writing the bad block table\n");
+					pr_info("nand_bbt: error reading block for writing the bad block table\n");
 					return res;
 				}
-				pr_warn("nand_bbt: ECC error while reading "
-					"block for writing bad block table\n");
+				pr_warn("nand_bbt: ECC error while reading block for writing bad block table\n");
 			}
 			/* Read oob data */
 			ops.ooblen = (len >> this->page_shift) * mtd->oobsize;
@@ -1380,9 +1378,8 @@ int nand_isbad_bbt(struct mtd_info *mtd, loff_t offs, int allowbbt)
 	block = (int)(offs >> (this->bbt_erase_shift - 1));
 	res = bbt_get_entry(this, block >> 1);
 
-	pr_debug("nand_isbad_bbt(): bbt info for offs 0x%08x: "
-			"(block %d) 0x%02x\n",
-			(unsigned int)offs, block >> 1, res);
+	pr_debug("nand_isbad_bbt(): bbt info for offs 0x%08x: (block %d) 0x%02x\n",
+		 (unsigned int)offs, block >> 1, res);
 
 	switch ((int)res) {
 	case BBT_BLOCK_GOOD:
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
