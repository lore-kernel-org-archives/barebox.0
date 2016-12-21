Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cJobR-00042D-EO
 for barebox@lists.infradead.org; Wed, 21 Dec 2016 21:39:14 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id F232CA0041B
 for <barebox@lists.infradead.org>; Wed, 21 Dec 2016 22:39:33 +0100 (CET)
From: Christian Hemp <c.hemp@phytec.de>
Date: Wed, 21 Dec 2016 22:38:41 +0100
Message-Id: <1482356321-19996-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH] mtd: nand_mxs: fix NAND error when change clk rate
To: barebox@lists.infradead.org

The function "nand_enable_edo_mode" changed the NAND clk rate, without turning
it off. In this case it is posible to get the following errors:
    MXS NAND: Error sending command
    MXS NAND: Error sending command
    MXS NAND: DMA read error

This can be fixed if the NAND clk is disabled before we change the clk
rate.

Tested with:
nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0xdc (Micron
MT29F4G08ABADAWP), 512MiB, page size: 2048, OOB size: 64

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 drivers/mtd/nand/nand_mxs.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index cba0bee..ce79bca 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -2047,7 +2047,9 @@ static int mxs_nand_enable_edo_mode(struct mxs_nand_info *info)
 	nand->select_chip(mtd, -1);
 
 	/* [3] set the main IO clock, 100MHz for mode 5, 80MHz for mode 4. */
+	clk_disable(info->clk);
 	clk_set_rate(info->clk, (mode == 5) ? 100000000 : 80000000);
+	clk_enable(info->clk);
 
 	dev_dbg(info->dev, "using asynchronous EDO mode %d\n", mode);
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
