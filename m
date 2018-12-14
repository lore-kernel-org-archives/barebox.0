Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoHg-00005h-MZ
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:17:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:13 +0100
Message-Id: <20181214141730.26181-7-s.hauer@pengutronix.de>
In-Reply-To: <20181214141730.26181-1-s.hauer@pengutronix.de>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/23] mtd: nand: omap: Use dev_dbg when a struct device * is
 available
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 323a9c7532..8e29bae831 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -162,7 +162,7 @@ static void gpmc_nand_wp(struct gpmc_nand_info *oinfo, int mode)
 {
 	unsigned long config = readl(oinfo->gpmc_base + GPMC_CFG);
 
-	debug("%s: mode=%x\n", __func__, mode);
+	dev_dbg(oinfo->pdev, "%s: mode=%x\n", __func__, mode);
 
 	if (mode)
 		config &= ~(NAND_WP_BIT);	/* WP is ON */
@@ -425,7 +425,7 @@ static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
 
-	debug("%s\n", __func__);
+	dev_dbg(oinfo->pdev, "%s\n", __func__);
 
 	switch (oinfo->ecc_mode) {
 	case OMAP_ECC_HAMMING_CODE_HW_ROMCODE:
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
