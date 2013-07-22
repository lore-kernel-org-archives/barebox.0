Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1Cyo-0003pu-F9
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 10:04:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 12:04:03 +0200
Message-Id: <1374487450-13800-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374487450-13800-1-git-send-email-s.hauer@pengutronix.de>
References: <1374487450-13800-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/8] mtd: nand: write BBM to OOB even with flash-based BBT
To: barebox@lists.infradead.org

This is based on Linux:

commit e2414f4c20bd4dc62186fbfd7bdec50bce6d2ead
Author: Brian Norris <computersforpeace@gmail.com>
Date:   Mon Feb 6 13:44:00 2012 -0800

Currently, the flash-based BBT implementation writes bad block data only
to its flash-based table and not to the OOB marker area. Then, as new bad
blocks are marked over time, the OOB markers become incomplete and the
flash-based table becomes the only source of current bad block
information. This becomes an obvious problem when, for example:

 * code accessing the flash cannot read the flash-based BBT format
 * BBT is corrupted and the flash must be rescanned for bad
   blocks; we want to remember bad blocks that were marked from Linux

So to keep the bad block markers in sync with the flash-based BBT, this
patch changes the default so that we write bad block markers to the proper
OOB area on each block in addition to flash-based BBT. Comments are
updated, expanded, and/or relocated as necessary.

The new flash-based BBT procedure for marking bad blocks:
 (1) erase the affected block, to allow OOB marker to be written cleanly
 (2) update in-memory BBT
 (3) write bad block marker to OOB area of affected block
 (4) update flash-based BBT
Note that we retain the first error encountered in (3) or (4), finish the
procedures, and dump the error in the end.

This should handle power cuts gracefully enough. (1) and (2) are mostly
harmless (note that (1) will not erase an already-recognized bad block).
The OOB and BBT may be "out of sync" if we experience power loss bewteen
(3) and (4), but we can reasonably expect that on next boot, subsequent
I/O operations will discover that the block should be marked bad again,
thus re-syncing the OOB and BBT.

Note that this is a change from the previous default flash-based BBT
behavior.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_write.c | 79 ++++++++++++++++++++++++++++++++-----------
 1 file changed, 60 insertions(+), 19 deletions(-)

diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
index 61b52ba..bb963f9 100644
--- a/drivers/mtd/nand/nand_write.c
+++ b/drivers/mtd/nand/nand_write.c
@@ -56,38 +56,79 @@ void nand_write_buf16(struct mtd_info *mtd, const uint8_t *buf, int len)
 
 /**
  * nand_default_block_markbad - [DEFAULT] mark a block bad
- * @mtd:	MTD device structure
- * @ofs:	offset from device start
+ * @mtd: MTD device structure
+ * @ofs: offset from device start
  *
- * This is the default implementation, which can be overridden by
- * a hardware specific driver.
- */
+ * This is the default implementation, which can be overridden by a hardware
+ * specific driver. We try operations in the following order, according to our
+ * bbt_options (NAND_BBT_NO_OOB_BBM and NAND_BBT_USE_FLASH):
+ *  (1) erase the affected block, to allow OOB marker to be written cleanly
+ *  (2) update in-memory BBT
+ *  (3) write bad block marker to OOB area of affected block
+ *  (4) update flash-based BBT
+ * Note that we retain the first error encountered in (3) or (4), finish the
+ * procedures, and dump the error in the end.
+*/
 int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs)
 {
 	struct nand_chip *chip = mtd->priv;
 	uint8_t buf[2] = { 0, 0 };
-	int block, ret;
+	int block, res, ret = 0, i = 0;
+	int write_oob = 1; /* Currently we do not have NAND_BBT_NO_OOB_BBM */
+
+	if (write_oob) {
+		struct erase_info einfo;
+
+		/* Attempt erase before marking OOB */
+		memset(&einfo, 0, sizeof(einfo));
+		einfo.mtd = mtd;
+		einfo.addr = ofs;
+		einfo.len = 1 << chip->phys_erase_shift;
+		nand_erase_nand(mtd, &einfo, 0);
+	}
 
 	/* Get block number */
 	block = (int)(ofs >> chip->bbt_erase_shift);
+	/* Mark block bad in memory-based BBT */
 	if (chip->bbt)
 		chip->bbt[block >> 2] |= 0x01 << ((block & 0x03) << 1);
 
-	/* Do we have a flash based bad block table ? */
-	if (IS_ENABLED(CONFIG_NAND_BBT) && chip->bbt_options & NAND_BBT_USE_FLASH)
-		ret = nand_update_bbt(mtd, ofs);
-	else {
-		/* We write two bytes, so we dont have to mess with 16 bit
-		 * access
-		 */
-		ofs += mtd->oobsize;
-		chip->ops.len = chip->ops.ooblen = 2;
-		chip->ops.datbuf = NULL;
-		chip->ops.oobbuf = buf;
-		chip->ops.ooboffs = chip->badblockpos & ~0x01;
+	/* Write bad block marker to OOB */
+	if (write_oob) {
+		struct mtd_oob_ops ops;
+		loff_t wr_ofs = ofs;
+
+		ops.datbuf = NULL;
+		ops.oobbuf = buf;
+		ops.ooboffs = chip->badblockpos;
+		if (chip->options & NAND_BUSWIDTH_16) {
+			ops.ooboffs &= ~0x01;
+			ops.len = ops.ooblen = 2;
+		} else {
+			ops.len = ops.ooblen = 1;
+		}
+		ops.mode = MTD_OOB_PLACE;
+
+		/* Write to first/last page(s) if necessary */
+		if (chip->options & NAND_BBT_LASTBLOCK)
+			wr_ofs += mtd->erasesize - mtd->writesize;
+		do {
+			res = nand_do_write_oob(mtd, wr_ofs, &ops);
+			if (!ret)
+				ret = res;
+
+			i++;
+			wr_ofs += mtd->writesize;
+		} while ((chip->options & NAND_BBT_SCAN2NDPAGE) && i < 2);
+	}
 
-		ret = nand_do_write_oob(mtd, ofs, &chip->ops);
+	/* Update flash-based bad block table */
+	if (chip->options & NAND_BBT_USE_FLASH) {
+		res = nand_update_bbt(mtd, ofs);
+		if (!ret)
+			ret = res;
 	}
+
 	if (!ret)
 		mtd->ecc_stats.badblocks++;
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
