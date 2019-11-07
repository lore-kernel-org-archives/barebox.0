Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSp4z-0002Ov-Nc
 for barebox@lists.infradead.org; Thu, 07 Nov 2019 21:12:39 +0000
Received: from astat.fritz.box (a89-183-53-44.net-htp.de [89.183.53.44])
 by lynxeye.de (Postfix) with ESMTPA id 1315BE7426A
 for <barebox@lists.infradead.org>; Thu,  7 Nov 2019 22:11:27 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  7 Nov 2019 22:11:13 +0100
Message-Id: <20191107211119.68064-13-dev@lynxeye.de>
In-Reply-To: <20191107211119.68064-1-dev@lynxeye.de>
References: <20191107211119.68064-1-dev@lynxeye.de>
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
Subject: [PATCH 12/18] clk: zynq: improve PLL enable handling
To: barebox@lists.infradead.org

Ensure that both the powerdown and reset bits are cleared when the PLL
gets enabled, as any of those set would prevent the PLL from working.

Also add a status readback function, so the real status of the PLL is
reflected in the Barebox clock state.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/zynq/clkc.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
index ba441740c585..07152e2ada3f 100644
--- a/drivers/clk/zynq/clkc.c
+++ b/drivers/clk/zynq/clkc.c
@@ -48,6 +48,8 @@ enum zynq_pll_type {
 #define PLL_STATUS_DDR_PLL_STABLE	(1 << 1)
 #define PLL_STATUS_IO_PLL_STABLE	(1 << 2)
 #define PLL_CTRL_BYPASS_FORCE		(1 << 4)
+#define PLL_CTRL_PWRDOWN		(1 << 1)
+#define PLL_CTRL_RESET			(1 << 0)
 
 static struct clk *clks[clks_max];
 
@@ -75,7 +77,7 @@ static int zynq_pll_enable(struct clk *clk)
 	int timeout = 10000;
 
 	val = readl(pll->pll_ctrl);
-	val &= ~PLL_CTRL_BYPASS_FORCE;
+	val &= ~(PLL_CTRL_BYPASS_FORCE | PLL_CTRL_PWRDOWN | PLL_CTRL_RESET);
 	writel(val, pll->pll_ctrl);
 
 	while (timeout--) {
@@ -89,9 +91,18 @@ static int zynq_pll_enable(struct clk *clk)
 	return 0;
 }
 
+static int zynq_pll_is_enabled(struct clk *clk)
+{
+	struct zynq_pll_clk *pll = to_zynq_pll_clk(clk);
+	u32 val = readl(pll->pll_ctrl);
+
+	return !(val & (PLL_CTRL_PWRDOWN | PLL_CTRL_RESET));
+}
+
 static struct clk_ops zynq_pll_clk_ops = {
 	.recalc_rate = zynq_pll_recalc_rate,
 	.enable = zynq_pll_enable,
+	.is_enabled = zynq_pll_is_enabled,
 };
 
 static inline struct clk *zynq_pll_clk(enum zynq_pll_type type,
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
