Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek5Ma-0004MX-3a
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 09:53:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Feb 2018 10:52:43 +0100
Message-Id: <20180209095244.12036-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: imx25: clk: add rngb clock
To: Barebox List <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/clk/imx/clk-imx25.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx25.c b/drivers/clk/imx/clk-imx25.c
index 864d06e195..baa42e14f4 100644
--- a/drivers/clk/imx/clk-imx25.c
+++ b/drivers/clk/imx/clk-imx25.c
@@ -103,8 +103,8 @@ static int imx25_ccm_probe(struct device_d *dev)
 			(1 << 26) | (1 << 31),
 			base + CCM_CGCR1);
 
-	writel((1 << 0) | (1 << 1) | (1 << 2) | (1 << 10) | (1 << 13) | (1 << 14) |
-			(1 << 15) | (1 << 16) | (1 << 17) | (1 << 18),
+	writel((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 5) | (1 << 10) |
+	       (1 << 13) | (1 << 14) | (1 << 15) | (1 << 16) | (1 << 17) | (1 << 18),
 			base + CCM_CGCR2);
 
 	clks[dummy] = clk_fixed("dummy", 0);
@@ -152,6 +152,7 @@ static int imx25_ccm_probe(struct device_d *dev)
 	clks[lcdc_ahb] = imx_clk_gate("lcdc_ahb", "ahb", base + CCM_CGCR0, 24);
 	clks[lcdc_ipg] = imx_clk_gate("lcdc_ipg", "ipg", base + CCM_CGCR1, 29);
 	clks[lcdc_ipg_per] = imx_clk_gate("lcdc_ipg_per", "per7", base + CCM_CGCR0, 7);
+	clks[rngb_ipg] = imx_clk_gate("rngb_ipg", "ipg", base + CCM_CGCR2, 3);
 
 	clkdev_add_physbase(clks[per15], MX25_UART1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per15], MX25_UART2_BASE_ADDR, NULL);
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
