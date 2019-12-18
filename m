Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihi3R-0002B6-5D
 for barebox@lists.infradead.org; Wed, 18 Dec 2019 22:44:30 +0000
Received: from astat.fritz.box (a89-183-111-97.net-htp.de [89.183.111.97])
 by lynxeye.de (Postfix) with ESMTPA id 2580FE74217
 for <barebox@lists.infradead.org>; Wed, 18 Dec 2019 23:43:53 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 18 Dec 2019 23:43:46 +0100
Message-Id: <20191218224349.107261-1-dev@lynxeye.de>
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
Subject: [PATCH 1/4] clk: zynq: add QSPI reference clock
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/zynq/clkc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
index 30ca5a60faf3..a6d8ba92cabc 100644
--- a/drivers/clk/zynq/clkc.c
+++ b/drivers/clk/zynq/clkc.c
@@ -414,6 +414,9 @@ static int zynq_clock_probe(struct device_d *dev)
 	clks[ddrpll] = zynq_pll_clk(ZYNQ_PLL_DDR, "ddr_pll", clk_base + 0x4);
 	clks[iopll] = zynq_pll_clk(ZYNQ_PLL_IO,  "io_pll", clk_base + 0x8);
 
+	zynq_periph_clk("lqspi_clk", clk_base + 0x4c);
+	clks[lqspi] = clk_gate("qspi0", "lqspi_clk", clk_base + 0x4c, 0, 0, 0);
+
 	zynq_periph_clk("sdio_clk", clk_base + 0x50);
 	clks[sdio0] = clk_gate("sdio0", "sdio_clk", clk_base + 0x50, 0, 0, 0);
 	clks[sdio1] = clk_gate("sdio1", "sdio_clk", clk_base + 0x50, 1, 0, 0);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
