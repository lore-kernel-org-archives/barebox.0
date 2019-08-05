Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubyj-0005qI-WD
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 12:20:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Aug 2019 14:20:13 +0200
Message-Id: <20190805122015.19220-7-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] mtd: nand-mxs: inline only once used function
To: Barebox List <barebox@lists.infradead.org>

mxs_nand_ecc_size_in_bits() is used only once and is simple enough to
be inlined.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 2b2e80d4c5..7555b1013d 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -277,11 +277,6 @@ static uint32_t mxs_nand_ecc_chunk_cnt(uint32_t page_data_size)
 	return page_data_size / MXS_NAND_CHUNK_DATA_CHUNK_SIZE;
 }
 
-static uint32_t mxs_nand_ecc_size_in_bits(uint32_t ecc_strength)
-{
-	return ecc_strength * 13;
-}
-
 static uint32_t mxs_nand_aux_status_offset(void)
 {
 	return (MXS_NAND_METADATA_SIZE + 0x3) & ~0x3;
@@ -298,7 +293,7 @@ static uint32_t mxs_nand_get_mark_offset(struct mtd_info *mtd)
 	uint32_t block_mark_bit_offset;
 
 	chunk_data_size_in_bits = MXS_NAND_CHUNK_DATA_CHUNK_SIZE * 8;
-	chunk_ecc_size_in_bits  = mxs_nand_ecc_size_in_bits(chip->ecc.strength);
+	chunk_ecc_size_in_bits  = chip->ecc.strength * 13;
 
 	chunk_total_size_in_bits =
 			chunk_data_size_in_bits + chunk_ecc_size_in_bits;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
