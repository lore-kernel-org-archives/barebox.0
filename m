Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubyb-0005hh-Vl
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 12:20:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Aug 2019 14:20:09 +0200
Message-Id: <20190805122015.19220-3-s.hauer@pengutronix.de>
In-Reply-To: <20190805122015.19220-1-s.hauer@pengutronix.de>
References: <20190805122015.19220-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] mtd: nand-mxs: calculate ecc_strength only once
To: Barebox List <barebox@lists.infradead.org>

Instead of calculating the ecc strength multiple times with each page
read just do it once and store the result in chip->ecc.strength.

While at it also store the correct value in chip->ecc.bytes instead of
writing a bogus value into it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 48 +++++++++++++++++++++++++++----------
 1 file changed, 36 insertions(+), 12 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index f753874956..fb3e2b7958 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -232,6 +232,8 @@ struct mxs_nand_info {
 #define GPMI_TIMING_INIT_OK	(1 << 1)
 	unsigned		flags;
 	struct nand_timing	timing;
+
+	int		bb_mark_bit_offset;
 };
 
 struct nand_ecclayout fake_ecc_layout;
@@ -362,6 +364,29 @@ uint32_t mxs_nand_mark_bit_offset(struct mtd_info *mtd)
 	return mxs_nand_get_mark_offset(mtd->writesize, ecc_strength) & 0x7;
 }
 
+static int mxs_nand_calc_geo(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd->priv;
+	struct mxs_nand_info *nand_info = chip->priv;
+	int ecc_chunk_count = mxs_nand_ecc_chunk_cnt(mtd->writesize);
+	int ecc_strength;
+	int gf_len = 13;  /* length of Galois Field for non-DDR nand */
+
+	ecc_strength = ((mtd->oobsize - MXS_NAND_METADATA_SIZE) * 8)
+		/ (gf_len * ecc_chunk_count);
+
+	/* We need the minor even number. */
+	chip->ecc.strength = rounddown(ecc_strength, 2);
+
+	chip->ecc.bytes = DIV_ROUND_UP(13 * chip->ecc.strength, 8);
+	chip->ecc.size = MXS_NAND_CHUNK_DATA_CHUNK_SIZE;
+
+	nand_info->bb_mark_bit_offset = mxs_nand_get_mark_offset(mtd->writesize,
+								 chip->ecc.strength);
+
+	return 0;
+}
+
 /*
  * Wait for BCH complete IRQ and clear the IRQ
  */
@@ -527,8 +552,8 @@ static void mxs_nand_swap_block_mark(struct mtd_info *mtd,
 	if (nand_info->version == GPMI_VERSION_TYPE_MX23)
 		return;
 
-	bit_offset = mxs_nand_mark_bit_offset(mtd);
-	buf_offset = mxs_nand_mark_byte_offset(mtd);
+	bit_offset = nand_info->bb_mark_bit_offset & 0x7;
+	buf_offset = nand_info->bb_mark_bit_offset >> 3;
 
 	/*
 	 * Get the byte from the data area that overlays the block mark. Since
@@ -703,13 +728,13 @@ static void mxs_nand_config_bch(struct mtd_info *mtd, int readlen)
 	writel((mxs_nand_ecc_chunk_cnt(readlen) - 1)
 			<< BCH_FLASHLAYOUT0_NBLOCKS_OFFSET |
 		MXS_NAND_METADATA_SIZE << BCH_FLASHLAYOUT0_META_SIZE_OFFSET |
-		(mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) >> 1)
+		(chip->ecc.strength >> 1)
 			<< IMX6_BCH_FLASHLAYOUT0_ECC0_OFFSET |
 		chunk_size,
 		bch_regs + BCH_FLASH0LAYOUT0);
 
 	writel(readlen	<< BCH_FLASHLAYOUT1_PAGE_SIZE_OFFSET |
-		(mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) >> 1)
+		(chip->ecc.strength >> 1)
 			<< IMX6_BCH_FLASHLAYOUT1_ECCN_OFFSET |
 		chunk_size,
 		bch_regs + BCH_FLASH0LAYOUT1);
@@ -728,15 +753,13 @@ static int __mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *chip
 	uint32_t corrected = 0, failed = 0;
 	uint8_t	*status;
 	unsigned int  max_bitflips = 0;
-	int i, ret, readtotal, nchunks, eccstrength;
-
-	eccstrength = mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize);
+	int i, ret, readtotal, nchunks;
 
 	readlen = roundup(readlen, MXS_NAND_CHUNK_DATA_CHUNK_SIZE);
 	nchunks = mxs_nand_ecc_chunk_cnt(readlen);
 	readtotal =  MXS_NAND_METADATA_SIZE;
 	readtotal += MXS_NAND_CHUNK_DATA_CHUNK_SIZE * nchunks;
-	readtotal += DIV_ROUND_UP(13 * eccstrength * nchunks, 8);
+	readtotal += DIV_ROUND_UP(13 * chip->ecc.strength * nchunks, 8);
 
 	mxs_nand_config_bch(mtd, readtotal);
 
@@ -2194,16 +2217,17 @@ static int mxs_nand_probe(struct device_d *dev)
 
 	chip->ecc.layout	= &fake_ecc_layout;
 	chip->ecc.mode		= NAND_ECC_HW;
-	chip->ecc.bytes		= 9;
-	chip->ecc.size		= 512;
-	chip->ecc.strength	= 8;
 
 	/* first scan to find the device and get the page size */
 	err = nand_scan_ident(mtd, 4, NULL);
 	if (err)
 		goto err2;
 
-	if ((13 * mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) % 8) == 0) {
+	err = mxs_nand_calc_geo(mtd);
+	if (err)
+		goto err2;
+
+	if ((13 * chip->ecc.strength % 8) == 0) {
 		chip->ecc.read_subpage = gpmi_ecc_read_subpage;
 		chip->options |= NAND_SUBPAGE_READ;
 	}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
