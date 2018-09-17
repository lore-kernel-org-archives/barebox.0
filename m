Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1qp4-00076J-90
 for barebox@lists.infradead.org; Mon, 17 Sep 2018 10:32:15 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 17 Sep 2018 12:31:51 +0200
Message-Id: <20180917103151.9369-1-o.rempel@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX28: Add APBH clk support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

After this commit iMX28 filed to use DMA and NAND:
|commit 6eb2ba6f1b206bb7d688036a28c98eb4a89be781
|Author: Andrey Smirnov <andrew.smirnov@gmail.com>
|Date:   Sat Mar 31 18:13:57 2018 -0700
|
|dma: apbh: Enable clock as a part of probing
|
|Enable clock as a part of probing in order to avoid problems on SoCs
|that do not have this block ungated out of reset (e.g. i.MX7).
|
|Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
|Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

The reason was missing clock base for APBH.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/clk/mxs/clk-imx28.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
index ffe03c8668..dd17a74d79 100644
--- a/drivers/clk/mxs/clk-imx28.c
+++ b/drivers/clk/mxs/clk-imx28.c
@@ -152,6 +152,7 @@ int __init mx28_clocks_init(void __iomem *regs)
 	clkdev_add_physbase(clks[fec], IMX_FEC0_BASE, NULL);
 	clkdev_add_physbase(clks[xbus], IMX_DBGUART_BASE, NULL);
 	clkdev_add_physbase(clks[hbus], IMX_OCOTP_BASE, NULL);
+	clkdev_add_physbase(clks[hbus], MXS_APBH_BASE, NULL);
 	clkdev_add_physbase(clks[uart], IMX_UART0_BASE, NULL);
 	clkdev_add_physbase(clks[uart], IMX_UART1_BASE, NULL);
 	clkdev_add_physbase(clks[uart], IMX_UART2_BASE, NULL);
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
