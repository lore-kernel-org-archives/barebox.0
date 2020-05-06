Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFF4-0005w4-22
 for barebox@lists.infradead.org; Wed, 06 May 2020 08:17:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 May 2020 10:17:09 +0200
Message-Id: <20200506081716.20143-6-s.hauer@pengutronix.de>
In-Reply-To: <20200506081716.20143-1-s.hauer@pengutronix.de>
References: <20200506081716.20143-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/13] clk imx28: Add USB clocks
To: Barebox List <barebox@lists.infradead.org>

The USB clocks are missing, add them to make USB work as part of the
i.MX chipidea driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/mxs/clk-imx28.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
index 241b26c9a2..aa528e109a 100644
--- a/drivers/clk/mxs/clk-imx28.c
+++ b/drivers/clk/mxs/clk-imx28.c
@@ -11,6 +11,7 @@
 #include <linux/clkdev.h>
 #include <linux/err.h>
 #include <mach/imx28-regs.h>
+#include <of_address.h>
 
 #include "clk.h"
 
@@ -38,6 +39,9 @@
 #define FRAC1			(regs + 0x01c0)
 #define CLKSEQ			(regs + 0x01d0)
 
+static void __iomem *digctrl;
+#define DIGCTRL digctrl
+
 static const char *sel_cpu[]  = { "ref_cpu", "ref_xtal", };
 static const char *sel_io0[]  = { "ref_io0", "ref_xtal", };
 static const char *sel_io1[]  = { "ref_io1", "ref_xtal", };
@@ -64,6 +68,8 @@ static struct clk *clks[clk_max];
 
 static int __init mx28_clocks_init(void __iomem *regs)
 {
+	struct device_node *dcnp;
+
 	clks[ref_xtal] = clk_fixed("ref_xtal", 24000000);
 	clks[pll0] = mxs_clk_pll("pll0", "ref_xtal", PLL0CTRL0, 17, 480000000);
 	clks[pll1] = mxs_clk_pll("pll1", "ref_xtal", PLL1CTRL0, 17, 480000000);
@@ -120,6 +126,13 @@ static int __init mx28_clocks_init(void __iomem *regs)
 	clks[lcdif_comp] = mxs_clk_lcdif("lcdif_comp", clks[ref_pix],
 			clks[lcdif_div], clks[lcdif]);
 
+	dcnp = of_find_compatible_node(NULL, NULL, "fsl,imx28-digctl");
+	if (dcnp) {
+		digctrl = of_iomap(dcnp, 0);
+		clks[usb0] = mxs_clk_gate("usb0", "usb0_phy", DIGCTRL, 2);
+		clks[usb1] = mxs_clk_gate("usb1", "usb1_phy", DIGCTRL, 16);
+	}
+
 	clk_set_rate(clks[ref_io0], 480000000);
 	clk_set_rate(clks[ref_io1], 480000000);
 	clk_set_parent(clks[ssp0_sel], clks[ref_io0]);
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
