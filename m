Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxDaK-00066a-G4
 for barebox@lists.infradead.org; Thu, 20 Oct 2016 13:40:41 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 4C1DAA003F7
 for <barebox@lists.infradead.org>; Thu, 20 Oct 2016 15:40:40 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Thu, 20 Oct 2016 15:40:06 +0200
Message-Id: <1476970807-43811-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 1/2] nand: imx6: Changed default NAND clock
To: barebox@lists.infradead.org
Cc: Daniel Schultz <d.schultz@phytec.de>

From: Daniel Schultz <d.schultz@phytec.de>

The Barebox recognized false bad erase blocks while booting from a
Spansion NAND (1). This error occurred due a to high clock. The
Kernel sets the default NAND clock to 22Mhz. So, to fix this error and
to be more identical with the Kernel, the Barebox should be too.

1: nand: NAND device: Manufacturer ID: 0x01, Chip ID: 0xd3 (AMD/Spansion
S34ML08G2), 1024MiB, page size: 2048, OOB size: 128

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
Tested-by: Stefan Lengfeld <s.lengfeld@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 drivers/mtd/nand/nand_mxs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 01aa063..fe955e8 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -2145,7 +2145,7 @@ static int mxs_nand_probe(struct device_d *dev)
 
 	if (mxs_nand_is_imx6(nand_info)) {
 		clk_disable(nand_info->clk);
-		clk_set_rate(nand_info->clk, 96000000);
+		clk_set_rate(nand_info->clk, 22000000);
 		clk_enable(nand_info->clk);
 		nand_info->dma_channel_base = 0;
 	} else {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
