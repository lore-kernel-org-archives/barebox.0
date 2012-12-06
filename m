Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgbWS-0007IF-SN
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 13:29:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Dec 2012 14:29:47 +0100
Message-Id: <1354800588-23053-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354800588-23053-1-git-send-email-s.hauer@pengutronix.de>
References: <1354800588-23053-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/6] ARM i.MX6 clk: remove gate_mask from pllv3
To: barebox@lists.infradead.org

Not needed as we will handle the additional gate bits as gate.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx6.c  |   18 +++++++++---------
 arch/arm/mach-imx/clk-pllv3.c |    8 +++-----
 arch/arm/mach-imx/clk.h       |    2 +-
 3 files changed, 13 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index e2385ad..6f2df17 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -186,15 +186,15 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clks[ckih] = clk_fixed("ckih", ckih_rate);
 	clks[osc] = clk_fixed("osc", osc_rate);
 
-	/*                   type                               name            parent_name base       gate_mask div_mask */
-	clks[pll1_sys]      = imx_clk_pllv3(IMX_PLLV3_SYS,	"pll1_sys",	"osc", base,        0x2000,   0x7f);
-	clks[pll2_bus]      = imx_clk_pllv3(IMX_PLLV3_GENERIC,	"pll2_bus",	"osc", base + 0x30, 0x2000,   0x1);
-	clks[pll3_usb_otg]  = imx_clk_pllv3(IMX_PLLV3_USB,	"pll3_usb_otg",	"osc", base + 0x10, 0x2000,   0x3);
-	clks[pll4_audio]    = imx_clk_pllv3(IMX_PLLV3_AV,	"pll4_audio",	"osc", base + 0x70, 0x2000,   0x7f);
-	clks[pll5_video]    = imx_clk_pllv3(IMX_PLLV3_AV,	"pll5_video",	"osc", base + 0xa0, 0x2000,   0x7f);
-	clks[pll8_mlb]      = imx_clk_pllv3(IMX_PLLV3_MLB,	"pll8_mlb",	"osc", base + 0xd0, 0x2000,   0x0);
-	clks[pll7_usb_host] = imx_clk_pllv3(IMX_PLLV3_USB,	"pll7_usb_host","osc", base + 0x20, 0x2000,   0x3);
-	clks[pll6_enet]     = imx_clk_pllv3(IMX_PLLV3_ENET,	"pll6_enet",	"osc", base + 0xe0, 0x182000, 0x3);
+	/*                   type                               name            parent_name base   div_mask */
+	clks[pll1_sys]      = imx_clk_pllv3(IMX_PLLV3_SYS,	"pll1_sys",	"osc", base,        0x7f);
+	clks[pll2_bus]      = imx_clk_pllv3(IMX_PLLV3_GENERIC,	"pll2_bus",	"osc", base + 0x30, 0x1);
+	clks[pll3_usb_otg]  = imx_clk_pllv3(IMX_PLLV3_USB,	"pll3_usb_otg",	"osc", base + 0x10, 0x3);
+	clks[pll4_audio]    = imx_clk_pllv3(IMX_PLLV3_AV,	"pll4_audio",	"osc", base + 0x70, 0x7f);
+	clks[pll5_video]    = imx_clk_pllv3(IMX_PLLV3_AV,	"pll5_video",	"osc", base + 0xa0, 0x7f);
+	clks[pll8_mlb]      = imx_clk_pllv3(IMX_PLLV3_MLB,	"pll8_mlb",	"osc", base + 0xd0, 0x0);
+	clks[pll7_usb_host] = imx_clk_pllv3(IMX_PLLV3_USB,	"pll7_usb_host","osc", base + 0x20, 0x3);
+	clks[pll6_enet]     = imx_clk_pllv3(IMX_PLLV3_ENET,	"pll6_enet",	"osc", base + 0xe0, 0x3);
 
 	/*                                name               parent_name         reg          idx */
 	clks[pll2_pfd0_352m] = imx_clk_pfd("pll2_pfd0_352m", "pll2_bus",     base + 0x100, 0);
diff --git a/arch/arm/mach-imx/clk-pllv3.c b/arch/arm/mach-imx/clk-pllv3.c
index cc9621c..e38dcdf 100644
--- a/arch/arm/mach-imx/clk-pllv3.c
+++ b/arch/arm/mach-imx/clk-pllv3.c
@@ -35,7 +35,6 @@ struct clk_pllv3 {
 	struct clk	clk;
 	void __iomem	*base;
 	bool		powerup_set;
-	u32		gate_mask;
 	u32		div_mask;
 	const char	*parent;
 };
@@ -66,7 +65,7 @@ static int clk_pllv3_enable(struct clk *clk)
 		return -ETIMEDOUT;
 
 	val = readl(pll->base);
-	val |= pll->gate_mask;
+	val |= BM_PLL_ENABLE;
 	writel(val, pll->base);
 
 	return 0;
@@ -78,7 +77,7 @@ static void clk_pllv3_disable(struct clk *clk)
 	u32 val;
 
 	val = readl(pll->base);
-	val &= ~pll->gate_mask;
+	val &= ~BM_PLL_ENABLE;
 	writel(val, pll->base);
 
 	val |= BM_PLL_BYPASS;
@@ -281,7 +280,7 @@ static const struct clk_ops clk_pllv3_mlb_ops = {
 
 struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
 			  const char *parent, void __iomem *base,
-			  u32 gate_mask, u32 div_mask)
+			  u32 div_mask)
 {
 	struct clk_pllv3 *pll;
 	const struct clk_ops *ops;
@@ -310,7 +309,6 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
 		ops = &clk_pllv3_ops;
 	}
 	pll->base = base;
-	pll->gate_mask = gate_mask;
 	pll->div_mask = div_mask;
 	pll->parent = parent;
 	pll->clk.ops = ops;
diff --git a/arch/arm/mach-imx/clk.h b/arch/arm/mach-imx/clk.h
index 0f30082..4a7298d 100644
--- a/arch/arm/mach-imx/clk.h
+++ b/arch/arm/mach-imx/clk.h
@@ -42,7 +42,7 @@ enum imx_pllv3_type {
 
 struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
 			  const char *parent, void __iomem *base,
-			  u32 gate_mask, u32 div_mask);
+			  u32 div_mask);
 
 struct clk *imx_clk_pfd(const char *name, const char *parent,
 			void __iomem *reg, u8 idx);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
