Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGsXJ-0004G5-Jw
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 21:23:55 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990392AbeJ1VXxTUm86 (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sun, 28 Oct 2018 22:23:53 +0100
Date: Sun, 28 Oct 2018 22:23:50 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181028212349.GH14788@lenoch>
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
Subject: [PATCH 07/16] mtd: nand: simplify nand_bch_init() usage
To: barebox@lists.infradead.org

Linux commit a8c65d504e0b modified for Barebox:

  nand_bch_init() requires several arguments which could directly be deduced
  from the mtd device. Get rid of those useless parameters.

  nand_bch_init() is also requiring the caller to provide a proper eccbytes
  value, while this value could be deduced from the ecc.size and
  ecc.strength value. Fallback to eccbytes calculation when it is set to 0.

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/mtd/nand/nand_base.c |  8 ++------
 drivers/mtd/nand/nand_bch.c  | 27 +++++++++++++++++----------
 include/linux/mtd/nand_bch.h |  8 ++------
 3 files changed, 21 insertions(+), 22 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 24fa0e3a7..8faf5c587 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -3687,12 +3687,8 @@ int nand_scan_tail(struct mtd_info *mtd)
 		}
 
 		/* See nand_bch_init() for details. */
-		chip->ecc.bytes = DIV_ROUND_UP(
-				chip->ecc.strength * fls(8 * chip->ecc.size), 8);
-		chip->ecc.priv = nand_bch_init(mtd,
-					       chip->ecc.size,
-					       chip->ecc.bytes,
-					       &chip->ecc.layout);
+		chip->ecc.bytes = 0;
+		chip->ecc.priv = nand_bch_init(mtd);
 		if (!chip->ecc.priv) {
 			pr_warn("BCH ECC initialization failed!\n");
 			BUG();
diff --git a/drivers/mtd/nand/nand_bch.c b/drivers/mtd/nand/nand_bch.c
index e37135f51..d4f2a8cbe 100644
--- a/drivers/mtd/nand/nand_bch.c
+++ b/drivers/mtd/nand/nand_bch.c
@@ -104,9 +104,6 @@ EXPORT_SYMBOL(nand_bch_correct_data);
 /**
  * nand_bch_init - [NAND Interface] Initialize NAND BCH error correction
  * @mtd:	MTD block structure
- * @eccsize:	ecc block size in bytes
- * @eccbytes:	ecc length in bytes
- * @ecclayout:	output default layout
  *
  * Returns:
  *  a pointer to a new NAND BCH control structure, or NULL upon failure
@@ -120,14 +117,21 @@ EXPORT_SYMBOL(nand_bch_correct_data);
  * @eccsize = 512  (thus, m=13 is the smallest integer such that 2^m-1 > 512*8)
  * @eccbytes = 7   (7 bytes are required to store m*t = 13*4 = 52 bits)
  */
-struct nand_bch_control *
-nand_bch_init(struct mtd_info *mtd, unsigned int eccsize, unsigned int eccbytes,
-	      struct nand_ecclayout **ecclayout)
+struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
 {
+	struct nand_chip *nand = mtd->priv;
 	unsigned int m, t, eccsteps, i;
-	struct nand_ecclayout *layout;
+	struct nand_ecclayout *layout = nand->ecc.layout;
 	struct nand_bch_control *nbc = NULL;
 	unsigned char *erased_page;
+	unsigned int eccsize = nand->ecc.size;
+	unsigned int eccbytes = nand->ecc.bytes;
+	unsigned int eccstrength = nand->ecc.strength;
+
+	if (!eccbytes && eccstrength) {
+		eccbytes = DIV_ROUND_UP(eccstrength * fls(8 * eccsize), 8);
+		nand->ecc.bytes = eccbytes;
+	}
 
 	if (!eccsize || !eccbytes) {
 		printk(KERN_WARNING "ecc parameters not supplied\n");
@@ -155,7 +159,7 @@ nand_bch_init(struct mtd_info *mtd, unsigned int eccsize, unsigned int eccbytes,
 	eccsteps = mtd->writesize/eccsize;
 
 	/* if no ecc placement scheme was provided, build one */
-	if (!*ecclayout) {
+	if (!layout) {
 
 		/* handle large page devices only */
 		if (mtd->oobsize < 64) {
@@ -181,7 +185,7 @@ nand_bch_init(struct mtd_info *mtd, unsigned int eccsize, unsigned int eccbytes,
 		layout->oobfree[0].offset = 2;
 		layout->oobfree[0].length = mtd->oobsize-2-layout->eccbytes;
 
-		*ecclayout = layout;
+		nand->ecc.layout = layout;
 	}
 
 	/* sanity checks */
@@ -189,7 +193,7 @@ nand_bch_init(struct mtd_info *mtd, unsigned int eccsize, unsigned int eccbytes,
 		printk(KERN_WARNING "eccsize %u is too large\n", eccsize);
 		goto fail;
 	}
-	if ((*ecclayout)->eccbytes != (eccsteps*eccbytes)) {
+	if (layout->eccbytes != (eccsteps*eccbytes)) {
 		printk(KERN_WARNING "invalid ecc layout\n");
 		goto fail;
 	}
@@ -213,6 +217,9 @@ nand_bch_init(struct mtd_info *mtd, unsigned int eccsize, unsigned int eccbytes,
 	for (i = 0; i < eccbytes; i++)
 		nbc->eccmask[i] ^= 0xff;
 
+	if (!eccstrength)
+		nand->ecc.strength = (eccbytes * 8) / fls(8 * eccsize);
+
 	return nbc;
 fail:
 	nand_bch_free(nbc);
diff --git a/include/linux/mtd/nand_bch.h b/include/linux/mtd/nand_bch.h
index 61c4607fa..5465ddd13 100644
--- a/include/linux/mtd/nand_bch.h
+++ b/include/linux/mtd/nand_bch.h
@@ -32,9 +32,7 @@ int nand_bch_correct_data(struct mtd_info *mtd, u_char *dat, u_char *read_ecc,
 /*
  * Initialize BCH encoder/decoder
  */
-struct nand_bch_control *
-nand_bch_init(struct mtd_info *mtd, unsigned int eccsize,
-	      unsigned int eccbytes, struct nand_ecclayout **ecclayout);
+struct nand_bch_control *nand_bch_init(struct mtd_info *mtd);
 /*
  * Release BCH encoder/decoder resources
  */
@@ -58,9 +56,7 @@ nand_bch_correct_data(struct mtd_info *mtd, unsigned char *buf,
 	return -1;
 }
 
-static inline struct nand_bch_control *
-nand_bch_init(struct mtd_info *mtd, unsigned int eccsize,
-	      unsigned int eccbytes, struct nand_ecclayout **ecclayout)
+static inline struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
 {
 	return NULL;
 }
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
