Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqwc0-0008TG-Eb
 for barebox@lists.infradead.org; Fri, 26 Jul 2019 09:34:05 +0000
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Fri, 26 Jul 2019 11:34:00 +0200
Message-Id: <20190726093400.4957-2-m.felsch@pengutronix.de>
In-Reply-To: <20190726093400.4957-1-m.felsch@pengutronix.de>
References: <20190726093400.4957-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 2/2] mtd: nand: mxs: sync page_size information
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de

Since commit 51061a9884a3 ("mtd: nand: nand_mxs: Add subpage read
support") the ecc_read_page and ecc_write_page page_size can be differ
if the calculation is not writesize+oobsize. So during write more bytes
are passed trough the bch than during the read operation.

It seems that there are no problems for typical nand flashes using the
"normal" layout e.g. 2048+64 (user+oob) but if it gets a bit atypical
e.g. 2048+128 (user+oob) this leads into ecc errors.

Anyway the linux driver uses the 'struct bch_geometry' to share all
required nand information during read/write/bch_setup. So we should do
it here too by passing the same amount of bytes to the bch during a
write and read operation. Also we have to fix the flashlayout setup to
set the correct page size.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 762c751fa7..fd4b784f7e 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -747,7 +747,7 @@ static int __mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *nand
 	uint32_t corrected = 0, failed = 0;
 	uint8_t	*status;
 	unsigned int  max_bitflips = 0;
-	int i, ret, readtotal, nchunks;
+	int i, ret, readtotal, nchunks, pagesize;
 
 	readlen = roundup(readlen, MXS_NAND_CHUNK_DATA_CHUNK_SIZE);
 	nchunks = mxs_nand_ecc_chunk_cnt(readlen);
@@ -922,7 +922,8 @@ static int __mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *nand
 rtn:
 	mxs_nand_return_dma_descs(nand_info);
 
-	mxs_nand_config_bch(mtd, mtd->writesize + mtd->oobsize);
+	pagesize = mxs_nand_get_page_size(mtd, mtd->writesize);
+	mxs_nand_config_bch(mtd, pagesize);
 
 	return ret ? ret : max_bitflips;
 }
@@ -960,11 +961,14 @@ static int mxs_nand_ecc_write_page(struct mtd_info *mtd,
 	struct mxs_nand_info *nand_info = nand->priv;
 	struct mxs_dma_desc *d;
 	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
+	unsigned int writelen;
 	int ret = 0;
 
 	memcpy(nand_info->data_buf, buf, mtd->writesize);
 	memcpy(nand_info->oob_buf, nand->oob_poi, mtd->oobsize);
 
+	writelen = mxs_nand_get_page_size(mtd, mtd->writesize);
+
 	/* Handle block mark swapping. */
 	mxs_nand_swap_block_mark(mtd, nand_info->data_buf, nand_info->oob_buf);
 
@@ -987,7 +991,7 @@ static int mxs_nand_ecc_write_page(struct mtd_info *mtd,
 		GPMI_ECCCTRL_ENABLE_ECC |
 		GPMI_ECCCTRL_ECC_CMD_ENCODE |
 		GPMI_ECCCTRL_BUFFER_MASK_BCH_PAGE;
-	d->cmd.pio_words[3] = (mtd->writesize + mtd->oobsize);
+	d->cmd.pio_words[3] = writelen;
 	d->cmd.pio_words[4] = (dma_addr_t)nand_info->data_buf;
 	d->cmd.pio_words[5] = (dma_addr_t)nand_info->oob_buf;
 
@@ -1235,6 +1239,7 @@ static int mxs_nand_scan_bbt(struct mtd_info *mtd)
 	struct nand_chip *nand = mtd->priv;
 	struct mxs_nand_info *nand_info = nand->priv;
 	void __iomem *bch_regs = nand_info->bch_base;
+	unsigned int pagesize;
 	int ret;
 
 	/* Reset BCH. Don't use SFTRST on MX23 due to Errata #2847 */
@@ -1243,7 +1248,8 @@ static int mxs_nand_scan_bbt(struct mtd_info *mtd)
 	if (ret)
 		return ret;
 
-	mxs_nand_config_bch(mtd, mtd->writesize + mtd->oobsize);
+	pagesize = mxs_nand_get_page_size(mtd, mtd->writesize);
+	mxs_nand_config_bch(mtd, pagesize);
 
 	/* Set *all* chip selects to use layout 0 */
 	writel(0, bch_regs + BCH_LAYOUTSELECT);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
