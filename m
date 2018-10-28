Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGsVk-0002IP-GA
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 21:22:18 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990392AbeJ1VWPJ0KAF (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sun, 28 Oct 2018 22:22:15 +0100
Date: Sun, 28 Oct 2018 22:22:13 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181028212213.GD14788@lenoch>
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
Subject: [PATCH 03/16] mtd: nand: hide in-memory BBT implementation details
To: barebox@lists.infradead.org

Linux commit b32843b772db adapted for Barebox:

  nand_base.c shouldn't have to know the implementation details of
  nand_bbt's in-memory BBT. Specifically, nand_base shouldn't perform the
  bit masking and shifting to isolate a BBT entry.

  Instead, just move some of the BBT code into a new nand_markbad_bbt()
  interface. This interface allows external users (i.e., nand_base) to
  mark a single block as bad in the BBT. Then nand_bbt will take care of
  modifying the in-memory BBT and updating the flash-based BBT (if
  applicable).

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/mtd/nand/nand_base.c | 125 ++++++++++++++++++-----------------
 drivers/mtd/nand/nand_bbt.c  |  39 ++++++++++-
 include/linux/mtd/nand.h     |   4 +-
 3 files changed, 104 insertions(+), 64 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 2025d176e..d4b7167f5 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -36,13 +36,13 @@
 #include <clock.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/nand.h>
-#include <linux/err.h>
+#include <linux/mtd/nand_bch.h>
 #include <linux/mtd/nand_ecc.h>
+#include <linux/err.h>
 #include <asm/byteorder.h>
 #include <io.h>
 #include <malloc.h>
 #include <module.h>
-#include <linux/mtd/nand_bch.h>
 
 /* Define default oob placement schemes for large and small page devices */
 static struct nand_ecclayout nand_oob_8 = {
@@ -376,22 +376,20 @@ static int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs)
  * block table(s) and/or marker(s)). We only allow the hardware driver to
  * specify how to write bad block markers to OOB (chip->block_markbad).
  *
- * We try operations in the following order, according to our bbt_options
- * (NAND_BBT_NO_OOB_BBM and NAND_BBT_USE_FLASH):
+ * We try operations in the following order:
  *  (1) erase the affected block, to allow OOB marker to be written cleanly
- *  (2) update in-memory BBT
- *  (3) write bad block marker to OOB area of affected block
- *  (4) update flash-based BBT
- * Note that we retain the first error encountered in (3) or (4), finish the
+ *  (2) write bad block marker to OOB area of affected block (unless flag
+ *      NAND_BBT_NO_OOB_BBM is present)
+ *  (3) update the BBT
+ * Note that we retain the first error encountered in (2) or (3), finish the
  * procedures, and dump the error in the end.
-*/
+ */
 static int nand_block_markbad_lowlevel(struct mtd_info *mtd, loff_t ofs)
 {
 	struct nand_chip *chip = mtd->priv;
-	int block, res, ret = 0;
-	int write_oob = !(chip->bbt_options & NAND_BBT_NO_OOB_BBM);
+	int res, ret = 0;
 
-	if (write_oob) {
+	if (!(chip->bbt_options & NAND_BBT_NO_OOB_BBM)) {
 		struct erase_info einfo;
 
 		/* Attempt erase before marking OOB */
@@ -400,24 +398,16 @@ static int nand_block_markbad_lowlevel(struct mtd_info *mtd, loff_t ofs)
 		einfo.addr = ofs;
 		einfo.len = 1 << chip->phys_erase_shift;
 		nand_erase_nand(mtd, &einfo, 0);
-	}
-
-	/* Get block number */
-	block = (int)(ofs >> chip->bbt_erase_shift);
-	/* Mark block bad in memory-based BBT */
-	if (chip->bbt)
-		chip->bbt[block >> 2] |= 0x01 << ((block & 0x03) << 1);
 
-	/* Write bad block marker to OOB */
-	if (write_oob) {
+		/* Write bad block marker to OOB */
 		nand_get_device(mtd, FL_WRITING);
 		ret = chip->block_markbad(mtd, ofs);
 		nand_release_device(mtd);
 	}
 
-	/* Update flash-based bad block table */
-	if (IS_ENABLED(CONFIG_NAND_BBT) && chip->bbt_options & NAND_BBT_USE_FLASH) {
-		res = nand_update_bbt(mtd, ofs);
+	/* Mark block bad in BBT */
+	if (chip->bbt) {
+		res = nand_markbad_bbt(mtd, ofs);
 		if (!ret)
 			ret = res;
 	}
@@ -428,6 +418,54 @@ static int nand_block_markbad_lowlevel(struct mtd_info *mtd, loff_t ofs)
 	return ret;
 }
 
+/**
+ * nand_block_markgood_lowlevel - mark a block good
+ * @mtd: MTD device structure
+ * @ofs: offset from device start
+ *
+ * We try operations in the following order:
+ *  (1) erase the affected block
+ *  (2) check bad block marker
+ *  (3) update the BBT
+ */
+static int nand_block_markgood_lowlevel(struct mtd_info *mtd, loff_t ofs)
+{
+	struct nand_chip *chip = mtd->priv;
+	bool allow_erasebad;
+	int ret;
+
+	if (!(chip->bbt_options & NAND_BBT_NO_OOB_BBM)) {
+		struct erase_info einfo;
+
+		/* Attempt erase possibly bad block */
+		allow_erasebad = mtd->allow_erasebad;
+		mtd->allow_erasebad = true;
+		memset(&einfo, 0, sizeof(einfo));
+		einfo.mtd = mtd;
+		einfo.addr = ofs;
+		einfo.len = 1 << chip->phys_erase_shift;
+		nand_erase_nand(mtd, &einfo, 0);
+		mtd->allow_erasebad = allow_erasebad;
+
+		/* Still bad? */
+		ret = chip->block_bad(mtd, ofs, 0);
+		if (ret)
+			return ret;
+	}
+
+	/* Mark block good in BBT */
+	if (chip->bbt) {
+		ret = nand_markgood_bbt(mtd, ofs);
+		if (ret)
+			return ret;
+	}
+
+	if (mtd->ecc_stats.badblocks > 0)
+		mtd->ecc_stats.badblocks--;
+
+	return 0;
+}
+
 /**
  * nand_check_wp - [GENERIC] check if the chip is write protected
  * @mtd: MTD device structure
@@ -471,38 +509,6 @@ static int nand_block_checkbad(struct mtd_info *mtd, loff_t ofs, int getchip,
 	return chip->block_bad(mtd, ofs, getchip);
 }
 
-/**
- * nand_default_block_markgood - [DEFAULT] mark a block good
- * @mtd:	MTD device structure
- * @ofs:	offset from device start
- *
- * This is the default implementation, which can be overridden by
- * a hardware specific driver.
-*/
-static __maybe_unused  int nand_default_block_markgood(struct mtd_info *mtd, loff_t ofs)
-{
-	struct nand_chip *chip = mtd->priv;
-	int block, res, ret = 0;
-
-	/* Get block number */
-	block = (int)(ofs >> chip->bbt_erase_shift);
-	/* Mark block good in memory-based BBT */
-	if (chip->bbt)
-		chip->bbt[block >> 2] &= ~(0x01 << ((block & 0x03) << 1));
-
-	/* Update flash-based bad block table */
-	if (IS_ENABLED(CONFIG_NAND_BBT) && chip->bbt_options & NAND_BBT_USE_FLASH) {
-		res = nand_update_bbt(mtd, ofs);
-		if (!ret)
-			ret = res;
-	}
-
-	if (!ret)
-		mtd->ecc_stats.badblocks++;
-
-	return ret;
-}
-
 /* Wait for the ready pin, after a command. The timeout is caught later. */
 void nand_wait_ready(struct mtd_info *mtd)
 {
@@ -2821,13 +2827,12 @@ static int nand_block_markbad(struct mtd_info *mtd, loff_t ofs)
 }
 
 /**
- * nand_block_markgood - [MTD Interface] Mark block at the given offset as bad
+ * nand_block_markgood - [MTD Interface] Mark block at the given offset as good
  * @mtd: MTD device structure
  * @ofs: offset relative to mtd start
  */
 static int nand_block_markgood(struct mtd_info *mtd, loff_t ofs)
 {
-	struct nand_chip *chip = mtd->priv;
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_MTD_WRITE))
@@ -2841,7 +2846,7 @@ static int nand_block_markgood(struct mtd_info *mtd, loff_t ofs)
 	if (!ret)
 		return 0;
 
-	return chip->block_markgood(mtd, ofs);
+	return nand_block_markgood_lowlevel(mtd, ofs);
 }
 
 /**
@@ -2925,8 +2930,6 @@ static void nand_set_defaults(struct nand_chip *chip, int busw)
 #ifdef CONFIG_MTD_WRITE
 	if (!chip->block_markbad)
 		chip->block_markbad = nand_default_block_markbad;
-	if (!chip->block_markgood)
-		chip->block_markgood = nand_default_block_markgood;
 	if (!chip->write_buf)
 		chip->write_buf = busw ? nand_write_buf16 : nand_write_buf;
 #endif
diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index 4a0ee1db6..b54936a43 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -1183,7 +1183,7 @@ int nand_scan_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
 }
 
 /**
- * nand_update_bbt - [NAND Interface] update bad block table(s)
+ * nand_update_bbt - update bad block table(s)
  * @mtd: MTD device structure
  * @offs: the offset of the newly marked block
  *
@@ -1379,6 +1379,43 @@ int nand_isbad_bbt(struct mtd_info *mtd, loff_t offs, int allowbbt)
 	return 1;
 }
 
+static int nand_mark_bbt(struct mtd_info *mtd, loff_t offs, uint8_t mark)
+{
+	struct nand_chip *this = mtd->priv;
+	int block, ret = 0;
+
+	block = (int)(offs >> this->bbt_erase_shift);
+
+	/* Mark bad block in memory */
+	bbt_mark_entry(this, block, mark);
+
+	/* Update flash-based bad block table */
+	if (this->bbt_options & NAND_BBT_USE_FLASH)
+		ret = nand_update_bbt(mtd, offs);
+
+	return ret;
+}
+
+/**
+ * nand_markbad_bbt - [NAND Interface] Mark a block bad in the BBT
+ * @mtd: MTD device structure
+ * @offs: offset of the bad block
+ */
+int nand_markbad_bbt(struct mtd_info *mtd, loff_t offs)
+{
+	return nand_mark_bbt(mtd, offs, BBT_BLOCK_WORN);
+}
+
+/**
+ * nand_markbad_bbt - [NAND Interface] Mark a block good in the BBT
+ * @mtd: MTD device structure
+ * @offs: offset of the good block
+ */
+int nand_markgood_bbt(struct mtd_info *mtd, loff_t offs)
+{
+	return nand_mark_bbt(mtd, offs, BBT_BLOCK_GOOD);
+}
+
 EXPORT_SYMBOL(nand_scan_bbt);
 EXPORT_SYMBOL(nand_default_bbt);
 EXPORT_SYMBOL_GPL(nand_update_bbt);
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index ec2237f7c..8caf5edec 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -398,7 +398,6 @@ struct nand_buffers {
  * @select_chip:	[REPLACEABLE] select chip nr
  * @block_bad:		[REPLACEABLE] check, if the block is bad
  * @block_markbad:	[REPLACEABLE] mark the block bad
- * @block_markgood:	[REPLACEABLE] mark the block good
  * @cmd_ctrl:		[BOARDSPECIFIC] hardwarespecific function for controlling
  *			ALE/CLE/nCE. Also used to write command and address
  * @init_size:		[BOARDSPECIFIC] hardwarespecific function for setting
@@ -484,7 +483,6 @@ struct nand_chip {
 	void (*select_chip)(struct mtd_info *mtd, int chip);
 	int (*block_bad)(struct mtd_info *mtd, loff_t ofs, int getchip);
 	int (*block_markbad)(struct mtd_info *mtd, loff_t ofs);
-	int (*block_markgood)(struct mtd_info *mtd, loff_t ofs);
 	void (*cmd_ctrl)(struct mtd_info *mtd, int dat, unsigned int ctrl);
 	int (*init_size)(struct mtd_info *mtd, struct nand_chip *this,
 			u8 *id_data);
@@ -639,6 +637,8 @@ extern struct nand_manufacturers nand_manuf_ids[];
 extern int nand_scan_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd);
 extern int nand_update_bbt(struct mtd_info *mtd, loff_t offs);
 extern int nand_default_bbt(struct mtd_info *mtd);
+extern int nand_markbad_bbt(struct mtd_info *mtd, loff_t offs);
+extern int nand_markgood_bbt(struct mtd_info *mtd, loff_t offs);
 extern int nand_isbad_bbt(struct mtd_info *mtd, loff_t offs, int allowbbt);
 extern int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 			   int allowbbt);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
