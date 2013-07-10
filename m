Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uwt4S-0001ld-3G
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 12:00:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 13:59:58 +0200
Message-Id: <1373457601-7225-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/11] mtd: nand: gpmi: use io_base instead of MXS_GPMI_BASE
To: barebox@lists.infradead.org

we have io_base, so use it instead of hardcoded base
address.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 2086f80..52a4959 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -408,7 +408,7 @@ static int mxs_nand_device_ready(struct mtd_info *mtd)
 {
 	struct nand_chip *chip = mtd->priv;
 	struct mxs_nand_info *nand_info = chip->priv;
-	void __iomem *gpmi_regs = (void *)MXS_GPMI_BASE;
+	void __iomem *gpmi_regs = nand_info->io_base;
 	uint32_t tmp;
 
 	if (nand_info->version > GPMI_VERSION_TYPE_MX23) {
@@ -1130,7 +1130,7 @@ int mxs_nand_alloc_buffers(struct mxs_nand_info *nand_info)
  */
 int mxs_nand_hw_init(struct mxs_nand_info *info)
 {
-	void __iomem *gpmi_regs = (void *)MXS_GPMI_BASE;
+	void __iomem *gpmi_regs = info->io_base;
 	void __iomem *bch_regs = (void __iomem *)MXS_BCH_BASE;
 	int i = 0, ret;
 	u32 val;
@@ -1195,7 +1195,6 @@ static int mxs_nand_probe(struct device_d *dev)
 		return -ENOMEM;
 	}
 
-	/* XXX: Remove u-boot specific access pointers and use io_base instead? */
 	nand_info->io_base = dev_request_mem_region(dev, 0);
 
 	nand_info->clk = clk_get(dev, NULL);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
