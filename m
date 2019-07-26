Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqwc0-0008TE-CW
 for barebox@lists.infradead.org; Fri, 26 Jul 2019 09:34:05 +0000
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Fri, 26 Jul 2019 11:33:59 +0200
Message-Id: <20190726093400.4957-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 1/2] mtd: nand: mxs: add helper to calculate the page size
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de

Since commit 51061a9884a3 ("mtd: nand: nand_mxs: Add subpage read
support") the ecc_read_page and ecc_write_page page_size can be differ.
Because during ecc_read_page the page_size() is based on the ecc
calculation. Unlike to the ecc_write_page() which uses the nand
writesize and oobsize information.

This commit factor out the page size calculation during ecc_read_page to
a helper function. So we can reuse it during ecc_write_page().

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 27 +++++++++++++++++++++------
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index c3b07aa3f6..762c751fa7 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -688,6 +688,25 @@ static uint8_t mxs_nand_read_byte(struct mtd_info *mtd)
 	return buf;
 }
 
+/*
+ * Determine the page size including user data + ecc data
+ */
+static unsigned int mxs_nand_get_page_size(struct mtd_info *mtd,
+					   unsigned int bytes)
+{
+	unsigned int eccstrength, nchunks, pagesize;
+
+	eccstrength = mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize);
+
+	bytes = roundup(bytes, MXS_NAND_CHUNK_DATA_CHUNK_SIZE);
+	nchunks = mxs_nand_ecc_chunk_cnt(bytes);
+	pagesize =  MXS_NAND_METADATA_SIZE;
+	pagesize += MXS_NAND_CHUNK_DATA_CHUNK_SIZE * nchunks;
+	pagesize += DIV_ROUND_UP(13 * eccstrength * nchunks, 8);
+
+	return pagesize;
+}
+
 static void mxs_nand_config_bch(struct mtd_info *mtd, int readlen)
 {
 	struct nand_chip *nand = mtd->priv;
@@ -728,15 +747,11 @@ static int __mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *nand
 	uint32_t corrected = 0, failed = 0;
 	uint8_t	*status;
 	unsigned int  max_bitflips = 0;
-	int i, ret, readtotal, nchunks, eccstrength;
-
-	eccstrength = mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize);
+	int i, ret, readtotal, nchunks;
 
 	readlen = roundup(readlen, MXS_NAND_CHUNK_DATA_CHUNK_SIZE);
 	nchunks = mxs_nand_ecc_chunk_cnt(readlen);
-	readtotal =  MXS_NAND_METADATA_SIZE;
-	readtotal += MXS_NAND_CHUNK_DATA_CHUNK_SIZE * nchunks;
-	readtotal += DIV_ROUND_UP(13 * eccstrength * nchunks, 8);
+	readtotal = mxs_nand_get_page_size(mtd, readlen);
 
 	mxs_nand_config_bch(mtd, readtotal);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
