Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGsa0-0006M5-57
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 21:26:51 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990392AbeJ1V0jxNJGf (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sun, 28 Oct 2018 22:26:39 +0100
Date: Sun, 28 Oct 2018 22:26:38 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181028212638.GO14788@lenoch>
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
Subject: [PATCH 14/16] mtd: nand: Kill the chip->scan_bbt() hook
To: barebox@lists.infradead.org

Linux commit e80eba758151 adapted for Barebox:

  None of the existing drivers are overloading the ->scan_bbt()
  method, let's get rid of it and replace calls to ->scan_bbt()
  by nand_create_bbt() ones.

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/mtd/nand/nand_base.c    |  6 +-----
 drivers/mtd/nand/nand_bbt.c     |  9 +++++----
 drivers/mtd/nand/nand_imx_bbm.c |  2 +-
 drivers/mtd/nand/nand_mxs.c     | 27 +++++++++------------------
 include/linux/mtd/nand.h        |  5 +----
 5 files changed, 17 insertions(+), 32 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 8faf5c587..e20831a2c 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -2935,10 +2935,6 @@ static void nand_set_defaults(struct nand_chip *chip, int busw)
 #endif
 	if (!chip->read_buf)
 		chip->read_buf = busw ? nand_read_buf16 : nand_read_buf;
-#ifdef CONFIG_NAND_BBT
-	if (!chip->scan_bbt)
-		chip->scan_bbt = nand_default_bbt;
-#endif
 	if (!chip->controller) {
 		chip->controller = &chip->hwcontrol;
 	}
@@ -3804,7 +3800,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 		return 0;
 
 	/* Build bad block table */
-	return chip->scan_bbt(mtd);
+	return nand_create_bbt(mtd);
 }
 EXPORT_SYMBOL(nand_scan_tail);
 
diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index af992e795..b4f3b7e95 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -77,6 +77,8 @@
 #define BBT_ENTRY_MASK		0x03
 #define BBT_ENTRY_SHIFT		2
 
+static int nand_update_bbt(struct mtd_info *mtd, loff_t offs);
+
 static inline uint8_t bbt_get_entry(struct nand_chip *chip, int block)
 {
 	uint8_t entry = chip->bbt[block >> BBT_ENTRY_SHIFT];
@@ -1217,7 +1219,7 @@ err:
  *
  * The function updates the bad block table(s).
  */
-int nand_update_bbt(struct mtd_info *mtd, loff_t offs)
+static int nand_update_bbt(struct mtd_info *mtd, loff_t offs)
 {
 	struct nand_chip *this = mtd->priv;
 	int len, res = 0;
@@ -1345,13 +1347,13 @@ static int nand_create_badblock_pattern(struct nand_chip *this)
 }
 
 /**
- * nand_default_bbt - [NAND Interface] Select a default bad block table for the device
+ * nand_create_bbt - [NAND Interface] Select a default bad block table for the device
  * @mtd: MTD device structure
  *
  * This function selects the default bad block table support for the device and
  * calls the nand_scan_bbt function.
  */
-int nand_default_bbt(struct mtd_info *mtd)
+int nand_create_bbt(struct mtd_info *mtd)
 {
 	struct nand_chip *this = mtd->priv;
 	int ret;
@@ -1450,4 +1452,3 @@ int nand_markgood_bbt(struct mtd_info *mtd, loff_t offs)
 
 EXPORT_SYMBOL(nand_scan_bbt);
 EXPORT_SYMBOL(nand_default_bbt);
-EXPORT_SYMBOL_GPL(nand_update_bbt);
diff --git a/drivers/mtd/nand/nand_imx_bbm.c b/drivers/mtd/nand/nand_imx_bbm.c
index 23722a906..4fd5487aa 100644
--- a/drivers/mtd/nand/nand_imx_bbm.c
+++ b/drivers/mtd/nand/nand_imx_bbm.c
@@ -129,7 +129,7 @@ static int attach_bbt(struct mtd_info *mtd, void *bbt)
 	free(chip->bbt);
 	chip->bbt = bbt;
 
-	return nand_update_bbt(mtd, 0);
+	return nand_create_bbt(mtd);
 }
 
 static int do_imx_nand_bbm(int argc, char *argv[])
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 28a07d4cb..f69453aba 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1201,21 +1201,7 @@ static int mxs_nand_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
 	return 0;
 }
 
-/*
- * Nominally, the purpose of this function is to look for or create the bad
- * block table. In fact, since the we call this function at the very end of
- * the initialization process started by nand_scan(), and we doesn't have a
- * more formal mechanism, we "hook" this function to continue init process.
- *
- * At this point, the physical NAND Flash chips have been identified and
- * counted, so we know the physical geometry. This enables us to make some
- * important configuration decisions.
- *
- * The return value of this function propogates directly back to this driver's
- * call to nand_scan(). Anything other than zero will cause this driver to
- * tear everything down and declare failure.
- */
-static int mxs_nand_scan_bbt(struct mtd_info *mtd)
+static int mxs_nand_init_bch(struct mtd_info *mtd)
 {
 	struct nand_chip *nand = mtd->priv;
 	struct mxs_nand_info *nand_info = nand->priv;
@@ -1252,8 +1238,7 @@ static int mxs_nand_scan_bbt(struct mtd_info *mtd)
 		mtd->block_markbad = mxs_nand_hook_block_markbad;
 	}
 
-	/* We use the reference implementation for bad block management. */
-	return nand_default_bbt(mtd);
+	return 0;
 }
 
 /*
@@ -2183,7 +2168,6 @@ static int mxs_nand_probe(struct device_d *dev)
 	nand->dev_ready		= mxs_nand_device_ready;
 	nand->select_chip	= mxs_nand_select_chip;
 	nand->block_bad		= mxs_nand_block_bad;
-	nand->scan_bbt		= mxs_nand_scan_bbt;
 
 	nand->read_byte		= mxs_nand_read_byte;
 
@@ -2215,6 +2199,13 @@ static int mxs_nand_probe(struct device_d *dev)
 
 	mxs_nand_setup_timing(nand_info);
 
+	err = mxs_nand_init_bch(mtd);
+	if (err)
+		goto err2;
+	err = nand_create_bbt(mtd);
+	if (err)
+		goto err2;
+
 	/* second phase scan */
 	err = nand_scan_tail(mtd);
 	if (err)
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index ed70c18a1..e1c7837a8 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -417,7 +417,6 @@ struct nand_buffers {
  * @hwcontrol:		platform-specific hardware control structure
  * @erase_cmd:		[INTERN] erase command write function, selectable due
  *			to AND support.
- * @scan_bbt:		[REPLACEABLE] function to scan bad block table
  * @chip_delay:		[BOARDSPECIFIC] chip dependent delay for transferring
  *			data from array to read regs (tR).
  * @state:		[INTERN] the current state of the NAND device
@@ -491,7 +490,6 @@ struct nand_chip {
 			int page_addr);
 	int(*waitfunc)(struct mtd_info *mtd, struct nand_chip *this);
 	void (*erase_cmd)(struct mtd_info *mtd, int page);
-	int (*scan_bbt)(struct mtd_info *mtd);
 	int (*errstat)(struct mtd_info *mtd, struct nand_chip *this, int state,
 			int status, int page);
 	int (*write_page)(struct mtd_info *mtd, struct nand_chip *chip,
@@ -634,8 +632,7 @@ struct nand_manufacturers {
 extern struct nand_flash_dev nand_flash_ids[];
 extern struct nand_manufacturers nand_manuf_ids[];
 
-extern int nand_update_bbt(struct mtd_info *mtd, loff_t offs);
-extern int nand_default_bbt(struct mtd_info *mtd);
+extern int nand_create_bbt(struct mtd_info *mtd);
 extern int nand_markbad_bbt(struct mtd_info *mtd, loff_t offs);
 extern int nand_markgood_bbt(struct mtd_info *mtd, loff_t offs);
 extern int nand_isbad_bbt(struct mtd_info *mtd, loff_t offs, int allowbbt);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
