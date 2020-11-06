Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xL-00054E-3l
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:38:38 +0100
Message-Id: <20201106133900.2656-5-s.hauer@pengutronix.de>
In-Reply-To: <20201106133900.2656-1-s.hauer@pengutronix.de>
References: <20201106133900.2656-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/26] mtd: nand: drop unused errstat hook
To: Barebox List <barebox@lists.infradead.org>

chip->errstat is never set by any driver, so remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c | 15 ---------------
 include/linux/mtd/nand.h     |  5 -----
 2 files changed, 20 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 999d56c5bd..064b36201e 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -2289,13 +2289,6 @@ static int nand_write_page(struct mtd_info *mtd, struct nand_chip *chip,
 
 		chip->cmdfunc(mtd, NAND_CMD_PAGEPROG, -1, -1);
 		status = chip->waitfunc(mtd, chip);
-		/*
-		 * See if operation failed and additional status checks are
-		 * available.
-		 */
-		if ((status & NAND_STATUS_FAIL) && (chip->errstat))
-			status = chip->errstat(mtd, chip, FL_WRITING, status,
-					       page);
 
 		if (status & NAND_STATUS_FAIL)
 			return -EIO;
@@ -2750,14 +2743,6 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 
 		status = chip->waitfunc(mtd, chip);
 
-		/*
-		 * See if operation failed and additional status checks are
-		 * available
-		 */
-		if ((status & NAND_STATUS_FAIL) && (chip->errstat))
-			status = chip->errstat(mtd, chip, FL_ERASING,
-					       status, page);
-
 		/* See if block erase succeeded */
 		if (status & NAND_STATUS_FAIL) {
 			pr_debug("%s: failed erase, page 0x%08x\n",
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index c4bdddc61e..a8a22210ca 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -466,9 +466,6 @@ struct nand_buffers {
  *			structure which is shared among multiple independent
  *			devices.
  * @priv:		[OPTIONAL] pointer to private chip data
- * @errstat:		[OPTIONAL] hardware specific function to perform
- *			additional error status checks (determine if errors are
- *			correctable).
  * @write_page:		[REPLACEABLE] High-level page write function
  */
 
@@ -491,8 +488,6 @@ struct nand_chip {
 			int page_addr);
 	int(*waitfunc)(struct mtd_info *mtd, struct nand_chip *this);
 	int (*scan_bbt)(struct mtd_info *mtd);
-	int (*errstat)(struct mtd_info *mtd, struct nand_chip *this, int state,
-			int status, int page);
 	int (*write_page)(struct mtd_info *mtd, struct nand_chip *chip,
 			uint32_t offset, int data_len, const uint8_t *buf,
 			int oob_required, int page, int cached, int raw);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
