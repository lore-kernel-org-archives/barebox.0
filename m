Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGsaV-0006M5-GV
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 21:27:13 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23991063AbeJ1V1KW2sef (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sun, 28 Oct 2018 22:27:10 +0100
Date: Sun, 28 Oct 2018 22:27:02 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181028212702.GP14788@lenoch>
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
Subject: [PATCH 15/16] mtd: nand: Kill cellinfo
To: barebox@lists.infradead.org

The only information used from cellinfo field is whenever flash is SLC
or MLC, therefore eliminate it completely. This patch is based on Linux
commit 7db906b79f69.

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/mtd/nand/nand_base.c | 29 ++++++++++++++++++++---------
 include/linux/mtd/nand.h     |  3 +--
 2 files changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index e20831a2c..9b2d3f1cf 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -3098,6 +3098,16 @@ static int nand_id_len(u8 *id_data, int arrlen)
 	return arrlen;
 }
 
+/* Extract the bits of per cell from the 3rd byte of the extended ID */
+static int nand_get_bits_per_cell(u8 cellinfo)
+{
+	int bits;
+
+	bits = cellinfo & NAND_CI_CELLTYPE_MSK;
+	bits >>= NAND_CI_CELLTYPE_SHIFT;
+	return bits + 1;
+}
+
 /*
  * Many new NAND share similar device ID codes, which represent the size of the
  * chip. The rest of the parameters must be decoded according to generic or
@@ -3108,7 +3118,7 @@ static void nand_decode_ext_id(struct mtd_info *mtd, struct nand_chip *chip,
 {
 	int extid, id_len;
 	/* The 3rd id byte holds MLC / multichip data */
-	chip->cellinfo = id_data[2];
+	chip->bits_per_cell = nand_get_bits_per_cell(id_data[2]);
 	/* The 4th id byte is the important one */
 	extid = id_data[3];
 
@@ -3124,8 +3134,7 @@ static void nand_decode_ext_id(struct mtd_info *mtd, struct nand_chip *chip,
 	 * ID to decide what to do.
 	 */
 	if (id_len == 6 && id_data[0] == NAND_MFR_SAMSUNG &&
-			(chip->cellinfo & NAND_CI_CELLTYPE_MSK) &&
-			id_data[5] != 0x00) {
+			!nand_is_slc(chip) && id_data[5] != 0x00) {
 		/* Calc pagesize */
 		mtd->writesize = 2048 << (extid & 0x03);
 		extid >>= 2;
@@ -3157,7 +3166,7 @@ static void nand_decode_ext_id(struct mtd_info *mtd, struct nand_chip *chip,
 			(((extid >> 1) & 0x04) | (extid & 0x03));
 		*busw = 0;
 	} else if (id_len == 6 && id_data[0] == NAND_MFR_HYNIX &&
-			(chip->cellinfo & NAND_CI_CELLTYPE_MSK)) {
+			!nand_is_slc(chip)) {
 		unsigned int tmp;
 
 		/* Calc pagesize */
@@ -3229,6 +3238,9 @@ static void nand_decode_id(struct mtd_info *mtd, struct nand_chip *chip,
 	mtd->oobsize = mtd->writesize / 32;
 	*busw = type->options & NAND_BUSWIDTH_16;
 
+	/* All legacy ID NAND are small-page, SLC */
+	chip->bits_per_cell = 1;
+
 	/*
 	 * Check for Spansion/AMD ID + repeating 5th, 6th byte since
 	 * some Spansion chips have erasesize that conflicts with size
@@ -3265,11 +3277,11 @@ static void nand_decode_bbm_options(struct mtd_info *mtd,
 	 * Micron devices with 2KiB pages and on SLC Samsung, Hynix, Toshiba,
 	 * AMD/Spansion, and Macronix.  All others scan only the first page.
 	 */
-	if ((chip->cellinfo & NAND_CI_CELLTYPE_MSK) &&
+	if (!nand_is_slc(chip) &&
 			(maf_id == NAND_MFR_SAMSUNG ||
 			 maf_id == NAND_MFR_HYNIX))
 		chip->bbt_options |= NAND_BBT_SCANLASTPAGE;
-	else if ((!(chip->cellinfo & NAND_CI_CELLTYPE_MSK) &&
+	else if ((nand_is_slc(chip) &&
 				(maf_id == NAND_MFR_SAMSUNG ||
 				 maf_id == NAND_MFR_HYNIX ||
 				 maf_id == NAND_MFR_TOSHIBA ||
@@ -3293,7 +3305,7 @@ static bool find_full_id_nand(struct mtd_info *mtd, struct nand_chip *chip,
 		mtd->erasesize = type->erasesize;
 		mtd->oobsize = type->oobsize;
 
-		chip->cellinfo = id_data[2];
+		chip->bits_per_cell = nand_get_bits_per_cell(id_data[2]);
 		chip->chipsize = (uint64_t)type->chipsize << 20;
 		chip->options |= type->options;
 
@@ -3739,8 +3751,7 @@ int nand_scan_tail(struct mtd_info *mtd)
 	chip->ecc.total = chip->ecc.steps * chip->ecc.bytes;
 
 	/* Allow subpage writes up to ecc.steps. Not possible for MLC flash */
-	if (!(chip->options & NAND_NO_SUBPAGE_WRITE) &&
-	    !(chip->cellinfo & NAND_CI_CELLTYPE_MSK)) {
+	if (!(chip->options & NAND_NO_SUBPAGE_WRITE) && nand_is_slc(chip)) {
 		switch (chip->ecc.steps) {
 		case 2:
 			mtd->subpage_sft = 1;
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index e1c7837a8..c3eb16f90 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -203,6 +203,7 @@ typedef enum {
 /* Cell info constants */
 #define NAND_CI_CHIPNR_MSK	0x03
 #define NAND_CI_CELLTYPE_MSK	0x0C
+#define NAND_CI_CELLTYPE_SHIFT	2
 
 /* Keep gcc happy */
 struct nand_chip;
@@ -439,7 +440,6 @@ struct nand_buffers {
  *			bad block marker position; i.e., BBM == 11110111b is
  *			not bad when badblockbits == 7
  * @bits_per_cell:	[INTERN] number of bits per cell. i.e., 1 means SLC.
- * @cellinfo:		[INTERN] MLC/multichip data from chip ident
  * @numchips:		[INTERN] number of physical chips
  * @chipsize:		[INTERN] the size of one chip for multichip arrays
  * @pagemask:		[INTERN] page number mask = number of (pages / chip) - 1
@@ -515,7 +515,6 @@ struct nand_chip {
 	unsigned int pagebuf_bitflips;
 	int subpagesize;
 	uint8_t bits_per_cell;
-	uint8_t cellinfo;
 	int badblockpos;
 	int badblockbits;
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
