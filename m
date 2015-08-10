Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZOlrz-0004kh-0t
 for barebox@lists.infradead.org; Mon, 10 Aug 2015 12:08:00 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 10 Aug 2015 14:07:33 +0200
Message-Id: <1439208453-20375-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] clk: socfpga: don't register fixed clocks
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The fixed clocks are registered from devicetree. Therefore the code path is
not needed, but would instead register the clocks twice, which leads to the
error message:

	clk_register clk f2s_periph_ref_clk is already registered, skipping!
	of_clk_init: failed to init clock for /soc/clkmgr@ffd04000/clocks/f2s_periph_ref_clk: 1
	clk_register clk osc1 is already registered, skipping!
	of_clk_init: failed to init clock for /soc/clkmgr@ffd04000/clocks/osc1: 1

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/clk/socfpga.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/clk/socfpga.c b/drivers/clk/socfpga.c
index be97d13fa68b..3387c0e63451 100644
--- a/drivers/clk/socfpga.c
+++ b/drivers/clk/socfpga.c
@@ -49,15 +49,6 @@
 
 static void __iomem *clk_mgr_base_addr;
 
-static struct clk *socfpga_fixed_clk(struct device_node *node)
-{
-	uint32_t f = 0;
-
-	of_property_read_u32(node, "clock-frequency", &f);
-
-	return clk_fixed(node->name, f);
-}
-
 struct clk_pll {
 	struct clk clk;
 	const char *parent;
@@ -338,9 +329,7 @@ static void socfpga_register_clocks(struct device_d *dev, struct device_node *no
 		socfpga_register_clocks(dev, child);
 	}
 
-	if (of_device_is_compatible(node, "fixed-clock"))
-		clk = socfpga_fixed_clk(node);
-	else if (of_device_is_compatible(node, "altr,socfpga-pll-clock"))
+	if (of_device_is_compatible(node, "altr,socfpga-pll-clock"))
 		clk = socfpga_pll_clk(node);
 	else if (of_device_is_compatible(node, "altr,socfpga-perip-clk"))
 		clk = socfpga_periph_clk(node);
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
