Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjBUS-0004FS-PA
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 16:18:30 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Thu, 13 Dec 2012 17:18:21 +0100
Message-Id: <1355415502-30673-2-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1355415502-30673-1-git-send-email-w.sang@pengutronix.de>
References: <1355415502-30673-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 1/2] mtd: nand: add flag to ignore special handling of bad
 blocks
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

This is needed for a later command to scrub away bad blocks. ONLY USE THIS
FEATURE WHEN YOU KNOW WHAT YOU ARE DOING!

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/mtd/core.c            |    3 ++-
 drivers/mtd/nand/nand_write.c |   37 ++++++++++++++++++++-----------------
 include/linux/mtd/mtd-abi.h   |    1 +
 3 files changed, 23 insertions(+), 18 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 8601787..95db1d6 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -18,6 +18,7 @@
 #include <common.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/mtd.h>
+#include <linux/mtd/mtd-abi.h>
 #include <init.h>
 #include <xfuncs.h>
 #include <driver.h>
@@ -32,7 +33,7 @@ static LIST_HEAD(mtd_register_hooks);
 
 int mtd_block_isbad(struct mtd_info *mtd, loff_t ofs)
 {
-	if (!mtd->block_isbad)
+	if (!mtd->block_isbad || mtd->flags & MTD_IGNORE_BB)
 		return 0;
 	if (ofs < 0 || ofs > mtd->size)
 		return -EINVAL;
diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
index 5ed04ce..a1fa5f7 100644
--- a/drivers/mtd/nand/nand_write.c
+++ b/drivers/mtd/nand/nand_write.c
@@ -567,6 +567,7 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 	struct nand_chip *chip = mtd->priv;
 	int rewrite_bbt[NAND_MAX_CHIPS]={0};
 	unsigned int bbt_masked_page = 0xffffffff;
+	bool do_scrub = mtd->flags & MTD_IGNORE_BB;
 
 	MTD_DEBUG(MTD_DEBUG_LEVEL3, "nand_erase: start = 0x%08x, len = %i\n",
 	      (unsigned int)instr->addr, (unsigned int)instr->len);
@@ -627,9 +628,9 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 
 	while (len) {
 		/*
-		 * heck if we have a bad block, we do not erase bad blocks !
+		 * Check if we have a bad block, if desired
 		 */
-		if (nand_block_checkbad(mtd, ((loff_t) page) <<
+		if (!do_scrub && nand_block_checkbad(mtd, ((loff_t) page) <<
 					chip->page_shift, 0, allowbbt)) {
 			printk(KERN_WARNING "nand_erase: attempt to erase a "
 			       "bad block at page 0x%08x\n", page);
@@ -657,22 +658,24 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 			status = chip->errstat(mtd, chip, FL_ERASING,
 					       status, page);
 
-		/* See if block erase succeeded */
-		if (status & NAND_STATUS_FAIL) {
-			MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_erase: "
-			      "Failed erase, page 0x%08x\n", page);
-			instr->state = MTD_ERASE_FAILED;
-			instr->fail_addr = (page << chip->page_shift);
-			goto erase_exit;
-		}
+		if (!do_scrub) {
+			/* See if block erase succeeded */
+			if (status & NAND_STATUS_FAIL) {
+				MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_erase: "
+				      "Failed erase, page 0x%08x\n", page);
+				instr->state = MTD_ERASE_FAILED;
+				instr->fail_addr = (page << chip->page_shift);
+				goto erase_exit;
+			}
 
-		/*
-		 * If BBT requires refresh, set the BBT rewrite flag to the
-		 * page being erased
-		 */
-		if (bbt_masked_page != 0xffffffff &&
-		    (page & BBT_PAGE_MASK) == bbt_masked_page)
-			    rewrite_bbt[chipnr] = (page << chip->page_shift);
+			/*
+			 * If BBT requires refresh, set the BBT rewrite flag to the
+			 * page being erased
+			 */
+			if (bbt_masked_page != 0xffffffff &&
+			    (page & BBT_PAGE_MASK) == bbt_masked_page)
+				    rewrite_bbt[chipnr] = (page << chip->page_shift);
+		}
 
 		/* Increment page address and decrement length */
 		len -= (1 << chip->phys_erase_shift);
diff --git a/include/linux/mtd/mtd-abi.h b/include/linux/mtd/mtd-abi.h
index 90dee7e..49eb8e6 100644
--- a/include/linux/mtd/mtd-abi.h
+++ b/include/linux/mtd/mtd-abi.h
@@ -32,6 +32,7 @@ struct mtd_oob_buf {
 #define MTD_BIT_WRITEABLE	0x800	/* Single bits can be flipped */
 #define MTD_NO_ERASE		0x1000	/* No erase necessary */
 #define MTD_POWERUP_LOCK	0x2000	/* Always locked after reset */
+#define MTD_IGNORE_BB		0x8000	/* Ignore BadBlocks, treat them normally (DANGEROUS!) */
 
 // Some common devices / combinations of capabilities
 #define MTD_CAP_ROM		0
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
