Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD2GZ-0003LP-AM
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 06:58:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Oct 2018 08:58:09 +0200
Message-Id: <20181018065827.19973-3-s.hauer@pengutronix.de>
In-Reply-To: <20181018065827.19973-1-s.hauer@pengutronix.de>
References: <20181018065827.19973-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/20] mtd: nand: mxs: make locally used functions static
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 0e0f5e68b2..28a07d4cba 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1259,7 +1259,7 @@ static int mxs_nand_scan_bbt(struct mtd_info *mtd)
 /*
  * Allocate DMA buffers
  */
-int mxs_nand_alloc_buffers(struct mxs_nand_info *nand_info)
+static int mxs_nand_alloc_buffers(struct mxs_nand_info *nand_info)
 {
 	uint8_t *buf;
 	const int size = NAND_MAX_PAGESIZE + NAND_MAX_OOBSIZE;
@@ -1293,7 +1293,7 @@ int mxs_nand_alloc_buffers(struct mxs_nand_info *nand_info)
 /*
  * Initializes the NFC hardware.
  */
-int mxs_nand_hw_init(struct mxs_nand_info *info)
+static int mxs_nand_hw_init(struct mxs_nand_info *info)
 {
 	void __iomem *gpmi_regs = info->io_base;
 	void __iomem *bch_regs = info->bch_base;
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
