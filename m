Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubyN-0005VB-Ja
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 12:20:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Aug 2019 14:20:12 +0200
Message-Id: <20190805122015.19220-6-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] mtd: nand-mxs: pass mtd_info to mxs_nand_get_mark_offset()
To: Barebox List <barebox@lists.infradead.org>

struct mtd_info * contains everything mxs_nand_get_mark_offset() needs,
so pass this pointer rather than several integer arguments.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 92d78db6c9..2b2e80d4c5 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -287,9 +287,9 @@ static uint32_t mxs_nand_aux_status_offset(void)
 	return (MXS_NAND_METADATA_SIZE + 0x3) & ~0x3;
 }
 
-static inline uint32_t mxs_nand_get_mark_offset(uint32_t page_data_size,
-						uint32_t ecc_strength)
+static uint32_t mxs_nand_get_mark_offset(struct mtd_info *mtd)
 {
+	struct nand_chip *chip = mtd->priv;
 	uint32_t chunk_data_size_in_bits;
 	uint32_t chunk_ecc_size_in_bits;
 	uint32_t chunk_total_size_in_bits;
@@ -298,13 +298,13 @@ static inline uint32_t mxs_nand_get_mark_offset(uint32_t page_data_size,
 	uint32_t block_mark_bit_offset;
 
 	chunk_data_size_in_bits = MXS_NAND_CHUNK_DATA_CHUNK_SIZE * 8;
-	chunk_ecc_size_in_bits  = mxs_nand_ecc_size_in_bits(ecc_strength);
+	chunk_ecc_size_in_bits  = mxs_nand_ecc_size_in_bits(chip->ecc.strength);
 
 	chunk_total_size_in_bits =
 			chunk_data_size_in_bits + chunk_ecc_size_in_bits;
 
 	/* Compute the bit offset of the block mark within the physical page. */
-	block_mark_bit_offset = page_data_size * 8;
+	block_mark_bit_offset = mtd->writesize * 8;
 
 	/* Subtract the metadata bits. */
 	block_mark_bit_offset -= MXS_NAND_METADATA_SIZE * 8;
@@ -353,8 +353,7 @@ static int mxs_nand_calc_geo(struct mtd_info *mtd)
 	chip->ecc.bytes = DIV_ROUND_UP(13 * chip->ecc.strength, 8);
 	chip->ecc.size = MXS_NAND_CHUNK_DATA_CHUNK_SIZE;
 
-	nand_info->bb_mark_bit_offset = mxs_nand_get_mark_offset(mtd->writesize,
-								 chip->ecc.strength);
+	nand_info->bb_mark_bit_offset = mxs_nand_get_mark_offset(mtd);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
