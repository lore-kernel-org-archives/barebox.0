Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTCh0-00082x-Iu
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 14:21:24 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Tue, 30 Oct 2012 15:21:15 +0100
Message-Id: <1351606875-31558-3-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1351606875-31558-1-git-send-email-w.sang@pengutronix.de>
References: <1351606875-31558-1-git-send-email-w.sang@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3] mtd: nand: mxs: check for errors when resetting ip core
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c |   12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 8aeb14d..906d695 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1039,9 +1039,13 @@ static int mxs_nand_scan_bbt(struct mtd_info *mtd)
 	struct mxs_nand_info *nand_info = nand->priv;
 	void __iomem *bch_regs = (void __iomem *)MXS_BCH_BASE;
 	uint32_t tmp;
+	int ret;
 
 	/* Reset BCH. Don't use SFTRST on MX23 due to Errata #2847 */
-	mxs_reset_block(bch_regs + BCH_CTRL, nand_info->version == GPMI_VERSION_TYPE_MX23);
+	ret = mxs_reset_block(bch_regs + BCH_CTRL,
+				nand_info->version == GPMI_VERSION_TYPE_MX23);
+	if (ret)
+		return ret;
 
 	/* Configure layout 0 */
 	tmp = (mxs_nand_ecc_chunk_cnt(mtd->writesize) - 1)
@@ -1124,7 +1128,7 @@ int mxs_nand_alloc_buffers(struct mxs_nand_info *nand_info)
 int mxs_nand_hw_init(struct mxs_nand_info *info)
 {
 	void __iomem *gpmi_regs = (void *)MXS_GPMI_BASE;
-	int i = 0;
+	int i = 0, ret;
 	u32 val;
 
 	info->desc = malloc(sizeof(struct mxs_dma_desc *) *
@@ -1145,7 +1149,9 @@ int mxs_nand_hw_init(struct mxs_nand_info *info)
 	imx_enable_nandclk();
 
 	/* Reset the GPMI block. */
-	mxs_reset_block(gpmi_regs + GPMI_CTRL0, 0);
+	ret = mxs_reset_block(gpmi_regs + GPMI_CTRL0, 0);
+	if (ret)
+		return ret;
 
 	/*
 	 * Choose NAND mode, set IRQ polarity, disable write protection and
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
