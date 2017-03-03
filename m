Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([83.163.252.89])
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cjjor-0002Z0-M3
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 09:48:15 +0000
From: Robin van der Gracht <robin@protonic.nl>
Date: Fri,  3 Mar 2017 10:47:49 +0100
Message-Id: <20170303094749.29319-1-robin@protonic.nl>
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
Subject: [PATCH] clk: imx: clk-imx6ul: Use anatop_base pointer for consistency
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Robin van der Gracht <robin@protonic.nl>

The anatop_base pointer was unused, but instead of removing it, assign
and use it for readability like clk-imx6 and clk-imx6sx do.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 drivers/clk/imx/clk-imx6ul.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
index 0ca0652..f28660d 100644
--- a/drivers/clk/imx/clk-imx6ul.c
+++ b/drivers/clk/imx/clk-imx6ul.c
@@ -91,6 +91,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 	int i;
 	struct device_node *ccm_node = dev->device_node;
 
+	anatop_base = IOMEM(MX6_ANATOP_BASE_ADDR);
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
@@ -100,8 +101,6 @@ static int imx6_ccm_probe(struct device_d *dev)
 
 	clks[IMX6UL_CLK_DUMMY] = clk_fixed("dummy", 0);
 
-	base = IOMEM(MX6_ANATOP_BASE_ADDR);
-
 	clks[IMX6UL_PLL1_BYPASS_SRC] = imx_clk_mux("pll1_bypass_src", base + 0x00, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
 	clks[IMX6UL_PLL2_BYPASS_SRC] = imx_clk_mux("pll2_bypass_src", base + 0x30, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
 	clks[IMX6UL_PLL3_BYPASS_SRC] = imx_clk_mux("pll3_bypass_src", base + 0x10, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
