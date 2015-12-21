Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aB1fQ-0006xV-Qw
 for barebox@lists.infradead.org; Mon, 21 Dec 2015 14:42:31 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Mon, 21 Dec 2015 15:42:01 +0100
Message-Id: <1450708921-8367-2-git-send-email-mpa@pengutronix.de>
In-Reply-To: <1450708921-8367-1-git-send-email-mpa@pengutronix.de>
References: <1450708921-8367-1-git-send-email-mpa@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] mtd: gpmi: Add erased page bitflip correction
To: barebox@lists.infradead.org

Hardware ECC does not work for erased pages. However as soon as
something that is not 0xff is found in the page, hardware ECC assumes
this is valid data and produces an uncorrectable error ECC status. We
can use that to check for bitflips in erased pages and fix them if the
number of flipped bits is below the ecc_strength.

We need to move the memcpy above the for loop to be able to access the
buffer directly.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 42 ++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 40 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index b3767e6cbeda..7635e2a418df 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -737,6 +737,8 @@ static int mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *nand,
 	/* Read DMA completed, now do the mark swapping. */
 	mxs_nand_swap_block_mark(mtd, nand_info->data_buf, nand_info->oob_buf);
 
+	memcpy(buf, nand_info->data_buf, mtd->writesize);
+
 	/* Loop over status bytes, accumulating ECC status. */
 	status = nand_info->oob_buf + mxs_nand_aux_status_offset();
 	for (i = 0; i < mxs_nand_ecc_chunk_cnt(mtd->writesize); i++) {
@@ -747,6 +749,44 @@ static int mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *nand,
 			continue;
 
 		if (status[i] == 0xfe) {
+			int flips;
+
+			/*
+			 * The ECC hardware has an uncorrectable ECC status
+			 * code in case we have bitflips in an erased page. As
+			 * nothing was written into this subpage the ECC is
+			 * obviously wrong and we can not trust it. We assume
+			 * at this point that we are reading an erased page and
+			 * try to correct the bitflips in buffer up to
+			 * ecc_strength bitflips. If this is a page with random
+			 * data, we exceed this number of bitflips and have a
+			 * ECC failure. Otherwise we use the corrected buffer.
+			 */
+			if (i == 0) {
+				/* The first block includes metadata */
+				flips = nand_check_erased_ecc_chunk(
+						buf + i * MXS_NAND_CHUNK_DATA_CHUNK_SIZE,
+						MXS_NAND_CHUNK_DATA_CHUNK_SIZE,
+						NULL, 0,
+						nand_info->oob_buf,
+						MXS_NAND_METADATA_SIZE,
+						mtd->ecc_strength);
+			} else {
+				flips = nand_check_erased_ecc_chunk(
+						buf + i * MXS_NAND_CHUNK_DATA_CHUNK_SIZE,
+						MXS_NAND_CHUNK_DATA_CHUNK_SIZE,
+						NULL, 0,
+						NULL, 0,
+						mtd->ecc_strength);
+			}
+
+			if (flips > 0) {
+				max_bitflips = max_t(unsigned int,
+						     max_bitflips, flips);
+				corrected += flips;
+				continue;
+			}
+
 			failed++;
 			continue;
 		}
@@ -772,8 +812,6 @@ static int mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *nand,
 
 	nand->oob_poi[0] = nand_info->oob_buf[0];
 
-	memcpy(buf, nand_info->data_buf, mtd->writesize);
-
 	ret = 0;
 rtn:
 	mxs_nand_return_dma_descs(nand_info);
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
