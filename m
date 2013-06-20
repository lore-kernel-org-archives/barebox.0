Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpYlZ-0004g9-IT
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 06:54:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 08:54:14 +0200
Message-Id: <1371711261-10039-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
References: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/17] mtd: gpmi-nand: switch to clk support
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index dd43a95..56d5ecf 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -21,6 +21,8 @@
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/nand.h>
 #include <linux/types.h>
+#include <linux/clk.h>
+#include <linux/err.h>
 #include <common.h>
 #include <malloc.h>
 #include <errno.h>
@@ -140,6 +142,7 @@
 struct mxs_nand_info {
 	struct nand_chip	nand_chip;
 	void __iomem		*io_base;
+	struct clk		*clk;
 	struct mtd_info		mtd;
 	u32		version;
 
@@ -1147,8 +1150,6 @@ int mxs_nand_hw_init(struct mxs_nand_info *info)
 	/* Init the DMA controller. */
 	mxs_dma_init();
 
-	imx_enable_nandclk();
-
 	/* Reset the GPMI block. */
 	ret = mxs_reset_block(gpmi_regs + GPMI_CTRL0, 0);
 	if (ret)
@@ -1200,6 +1201,12 @@ static int mxs_nand_probe(struct device_d *dev)
 	/* XXX: Remove u-boot specific access pointers and use io_base instead? */
 	nand_info->io_base = dev_request_mem_region(dev, 0);
 
+	nand_info->clk = clk_get(dev, NULL);
+	if (IS_ERR(nand_info->clk))
+		return PTR_ERR(nand_info->clk);
+
+	clk_enable(nand_info->clk);
+
 	err = mxs_nand_alloc_buffers(nand_info);
 	if (err)
 		goto err1;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
