Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGsW4-0002IP-Mw
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 21:22:38 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990392AbeJ1VWetd2lF (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sun, 28 Oct 2018 22:22:34 +0100
Date: Sun, 28 Oct 2018 22:22:30 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181028212230.GE14788@lenoch>
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
Subject: [PATCH 04/16] mtd: nand: remove NAND_BBT_SCANEMPTY
To: barebox@lists.infradead.org

Relevant part of Linux commit dad2256269cb:

  NAND_BBT_SCANEMPTY is a strange, badly-supported option with omap as its
  single remaining user.

  NAND_BBT_SCANEMPTY was likely used by accident in omap2[1]. And anyway,
  omap2 doesn't scan the chip for bad blocks (courtesy of
  NAND_SKIP_BBTSCAN), and so its use of this option is irrelevant.

  This patch drops the NAND_BBT_SCANEMPTY option.

  [1] http://lists.infradead.org/pipermail/linux-mtd/2012-July/042902.html

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/mtd/nand/nand_bbt.c       | 33 +++++--------------------------
 drivers/mtd/nand/nand_omap_gpmc.c |  2 +-
 include/linux/mtd/bbm.h           |  2 --
 3 files changed, 6 insertions(+), 31 deletions(-)

diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index b54936a43..19888589f 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -106,33 +106,17 @@ static int check_pattern_no_oob(uint8_t *buf, struct nand_bbt_descr *td)
  * @td: search pattern descriptor
  *
  * Check for a pattern at the given place. Used to search bad block tables and
- * good / bad block identifiers. If the SCAN_EMPTY option is set then check, if
- * all bytes except the pattern area contain 0xff.
+ * good / bad block identifiers.
  */
 static int check_pattern(uint8_t *buf, int len, int paglen, struct nand_bbt_descr *td)
 {
-	int end = 0;
-	uint8_t *p = buf;
-
 	if (td->options & NAND_BBT_NO_OOB)
 		return check_pattern_no_oob(buf, td);
 
-	end = paglen + td->offs;
-	if (td->options & NAND_BBT_SCANEMPTY)
-		if (memchr_inv(p, 0xff, end))
-			return -1;
-	p += end;
-
 	/* Compare the pattern */
-	if (memcmp(p, td->pattern, td->len))
+	if (memcmp(buf + paglen + td->offs, td->pattern, td->len))
 		return -1;
 
-	if (td->options & NAND_BBT_SCANEMPTY) {
-		p += td->len;
-		end += td->len;
-		if (memchr_inv(p, 0xff, len - end))
-			return -1;
-	}
 	return 0;
 }
 
@@ -499,15 +483,9 @@ static int create_bbt(struct mtd_info *mtd, uint8_t *buf,
 	else
 		numpages = 1;
 
-	if (!(bd->options & NAND_BBT_SCANEMPTY)) {
-		/* We need only read few bytes from the OOB area */
-		scanlen = 0;
-		readlen = bd->len;
-	} else {
-		/* Full page content should be read */
-		scanlen = mtd->writesize + mtd->oobsize;
-		readlen = numpages * mtd->writesize;
-	}
+	/* We need only read few bytes from the OOB area */
+	scanlen = 0;
+	readlen = bd->len;
 
 	if (chip == -1) {
 		numblocks = mtd->size >> this->bbt_erase_shift;
@@ -869,7 +847,6 @@ static inline int nand_memory_bbt(struct mtd_info *mtd, struct nand_bbt_descr *b
 {
 	struct nand_chip *this = mtd->priv;
 
-	bd->options &= ~NAND_BBT_SCANEMPTY;
 	return create_bbt(mtd, this->buffers->databuf, bd, -1);
 }
 
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index d0b169983..c4de38096 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -125,7 +125,7 @@ static struct nand_ecclayout omap_oobinfo;
  */
 static uint8_t scan_ff_pattern[] = { 0xff };
 static struct nand_bbt_descr bb_descrip_flashbased = {
-	.options = NAND_BBT_SCANEMPTY | NAND_BBT_SCANALLPAGES,
+	.options = NAND_BBT_SCANALLPAGES,
 	.offs = 0,
 	.len = 1,
 	.pattern = scan_ff_pattern,
diff --git a/include/linux/mtd/bbm.h b/include/linux/mtd/bbm.h
index 211ff67e8..95fc482ce 100644
--- a/include/linux/mtd/bbm.h
+++ b/include/linux/mtd/bbm.h
@@ -93,8 +93,6 @@ struct nand_bbt_descr {
 #define NAND_BBT_CREATE_EMPTY	0x00000400
 /* Search good / bad pattern through all pages of a block */
 #define NAND_BBT_SCANALLPAGES	0x00000800
-/* Scan block empty during good / bad block scan */
-#define NAND_BBT_SCANEMPTY	0x00001000
 /* Write bbt if neccecary */
 #define NAND_BBT_WRITE		0x00002000
 /* Read and write back block contents when writing bbt */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
