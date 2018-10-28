Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGsXn-0004G5-5H
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 21:24:24 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990392AbeJ1VYWt6cp0 (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sun, 28 Oct 2018 22:24:22 +0100
Date: Sun, 28 Oct 2018 22:24:21 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181028212421.GI14788@lenoch>
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
Subject: [PATCH 08/16] mtd: nand_bbt: kill NAND_BBT_SCANALLPAGES
To: barebox@lists.infradead.org

Linux commit 5961ad2cb4dd adapted for Barebox:

  Now that the last user of NAND_BBT_SCANALLPAGES has been removed, let's
  kill this peculiar BBT feature flag.

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/mtd/nand/nand_bbt.c       | 37 +++----------------------------
 drivers/mtd/nand/nand_omap_gpmc.c |  1 -
 include/linux/mtd/bbm.h           |  2 --
 3 files changed, 3 insertions(+), 37 deletions(-)

diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index 19888589f..e296fe204 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -404,25 +404,6 @@ static void read_abs_bbts(struct mtd_info *mtd, uint8_t *buf,
 	}
 }
 
-/* Scan a given block full */
-static int scan_block_full(struct mtd_info *mtd, struct nand_bbt_descr *bd,
-			   loff_t offs, uint8_t *buf, size_t readlen,
-			   int scanlen, int numpages)
-{
-	int ret, j;
-
-	ret = scan_read_oob(mtd, buf, offs, readlen);
-	/* Ignore ECC errors when checking for BBM */
-	if (ret && !mtd_is_bitflip_or_eccerr(ret))
-		return ret;
-
-	for (j = 0; j < numpages; j++, buf += scanlen) {
-		if (check_pattern(buf, scanlen, mtd->writesize, bd))
-			return 1;
-	}
-	return 0;
-}
-
 /* Scan a given block partially */
 static int scan_block_fast(struct mtd_info *mtd, struct nand_bbt_descr *bd,
 			   loff_t offs, uint8_t *buf, int numpages)
@@ -469,24 +450,17 @@ static int create_bbt(struct mtd_info *mtd, uint8_t *buf,
 	struct nand_bbt_descr *bd, int chip)
 {
 	struct nand_chip *this = mtd->priv;
-	int i, numblocks, numpages, scanlen;
+	int i, numblocks, numpages;
 	int startblock;
 	loff_t from;
-	size_t readlen;
 
 	pr_info("Scanning device for bad blocks\n");
 
-	if (bd->options & NAND_BBT_SCANALLPAGES)
-		numpages = 1 << (this->bbt_erase_shift - this->page_shift);
-	else if (bd->options & NAND_BBT_SCAN2NDPAGE)
+	if (bd->options & NAND_BBT_SCAN2NDPAGE)
 		numpages = 2;
 	else
 		numpages = 1;
 
-	/* We need only read few bytes from the OOB area */
-	scanlen = 0;
-	readlen = bd->len;
-
 	if (chip == -1) {
 		numblocks = mtd->size >> this->bbt_erase_shift;
 		startblock = 0;
@@ -511,12 +485,7 @@ static int create_bbt(struct mtd_info *mtd, uint8_t *buf,
 
 		BUG_ON(bd->options & NAND_BBT_NO_OOB);
 
-		if (bd->options & NAND_BBT_SCANALLPAGES)
-			ret = scan_block_full(mtd, bd, from, buf, readlen,
-					      scanlen, numpages);
-		else
-			ret = scan_block_fast(mtd, bd, from, buf, numpages);
-
+		ret = scan_block_fast(mtd, bd, from, buf, numpages);
 		if (ret < 0)
 			return ret;
 
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index c4de38096..91c2a7a9b 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -125,7 +125,6 @@ static struct nand_ecclayout omap_oobinfo;
  */
 static uint8_t scan_ff_pattern[] = { 0xff };
 static struct nand_bbt_descr bb_descrip_flashbased = {
-	.options = NAND_BBT_SCANALLPAGES,
 	.offs = 0,
 	.len = 1,
 	.pattern = scan_ff_pattern,
diff --git a/include/linux/mtd/bbm.h b/include/linux/mtd/bbm.h
index 95fc482ce..36bb6a503 100644
--- a/include/linux/mtd/bbm.h
+++ b/include/linux/mtd/bbm.h
@@ -91,8 +91,6 @@ struct nand_bbt_descr {
  * with NAND_BBT_CREATE.
  */
 #define NAND_BBT_CREATE_EMPTY	0x00000400
-/* Search good / bad pattern through all pages of a block */
-#define NAND_BBT_SCANALLPAGES	0x00000800
 /* Write bbt if neccecary */
 #define NAND_BBT_WRITE		0x00002000
 /* Read and write back block contents when writing bbt */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
