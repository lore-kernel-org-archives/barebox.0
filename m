Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uwt4X-0001lg-3J
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 12:00:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 14:00:01 +0200
Message-Id: <1373457601-7225-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373457601-7225-1-git-send-email-s.hauer@pengutronix.de>
References: <1373457601-7225-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/11] mtd: nand: gpmi: replace MXS_BCH_BASE with driver
 resources
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 0611d7a..09ee55e 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -140,6 +140,7 @@
 struct mxs_nand_info {
 	struct nand_chip	nand_chip;
 	void __iomem		*io_base;
+	void __iomem		*bch_base;
 	struct clk		*clk;
 	struct mtd_info		mtd;
 	u32		version;
@@ -297,9 +298,9 @@ static uint32_t mxs_nand_mark_bit_offset(struct mtd_info *mtd)
 /*
  * Wait for BCH complete IRQ and clear the IRQ
  */
-static int mxs_nand_wait_for_bch_complete(void)
+static int mxs_nand_wait_for_bch_complete(struct mxs_nand_info *nand_info)
 {
-	void __iomem *bch_regs = (void __iomem *)MXS_BCH_BASE;
+	void __iomem *bch_regs = nand_info->bch_base;
 	int timeout = MXS_NAND_BCH_TIMEOUT;
 	int ret;
 
@@ -706,7 +707,7 @@ static int mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *nand,
 		goto rtn;
 	}
 
-	ret = mxs_nand_wait_for_bch_complete();
+	ret = mxs_nand_wait_for_bch_complete(nand_info);
 	if (ret) {
 		printf("MXS NAND: BCH read timeout\n");
 		goto rtn;
@@ -806,7 +807,7 @@ static void mxs_nand_ecc_write_page(struct mtd_info *mtd,
 		goto rtn;
 	}
 
-	ret = mxs_nand_wait_for_bch_complete();
+	ret = mxs_nand_wait_for_bch_complete(nand_info);
 	if (ret) {
 		printf("MXS NAND: BCH write timeout\n");
 		goto rtn;
@@ -1038,7 +1039,7 @@ static int mxs_nand_scan_bbt(struct mtd_info *mtd)
 {
 	struct nand_chip *nand = mtd->priv;
 	struct mxs_nand_info *nand_info = nand->priv;
-	void __iomem *bch_regs = (void __iomem *)MXS_BCH_BASE;
+	void __iomem *bch_regs = nand_info->bch_base;
 	uint32_t tmp;
 	int ret;
 
@@ -1129,7 +1130,7 @@ int mxs_nand_alloc_buffers(struct mxs_nand_info *nand_info)
 int mxs_nand_hw_init(struct mxs_nand_info *info)
 {
 	void __iomem *gpmi_regs = info->io_base;
-	void __iomem *bch_regs = (void __iomem *)MXS_BCH_BASE;
+	void __iomem *bch_regs = info->bch_base;
 	int i = 0, ret;
 	u32 val;
 
@@ -1194,6 +1195,7 @@ static int mxs_nand_probe(struct device_d *dev)
 	}
 
 	nand_info->io_base = dev_request_mem_region(dev, 0);
+	nand_info->bch_base = dev_request_mem_region(dev, 1);
 
 	nand_info->clk = clk_get(dev, NULL);
 	if (IS_ERR(nand_info->clk))
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
