Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4su-0002kN-0d
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:51:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Jan 2017 11:51:01 +0100
Message-Id: <20170116105108.13617-17-s.hauer@pengutronix.de>
In-Reply-To: <20170116105108.13617-1-s.hauer@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/23] clk: i.MX: pllv3: Add support for the i.MX7 enet pll
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-pllv3.c | 23 ++++++++++++++++++-----
 drivers/clk/imx/clk.h       |  1 +
 2 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
index 29c0f1c70..2a08996a6 100644
--- a/drivers/clk/imx/clk-pllv3.c
+++ b/drivers/clk/imx/clk-pllv3.c
@@ -30,6 +30,7 @@
 #define BM_PLL_ENABLE		(0x1 << 13)
 #define BM_PLL_BYPASS		(0x1 << 16)
 #define BM_PLL_LOCK		(0x1 << 31)
+#define IMX7_ENET_PLL_POWER	(0x1 << 5)
 
 struct clk_pllv3 {
 	struct clk	clk;
@@ -38,6 +39,8 @@ struct clk_pllv3 {
 	u32		div_mask;
 	u32		div_shift;
 	const char	*parent;
+	u32		ref_clock;
+	u32		power_bit;
 };
 
 #define to_clk_pllv3(_clk) container_of(_clk, struct clk_pllv3, clk)
@@ -51,9 +54,9 @@ static int clk_pllv3_enable(struct clk *clk)
 	val = readl(pll->base);
 	val &= ~BM_PLL_BYPASS;
 	if (pll->powerup_set)
-		val |= BM_PLL_POWER;
+		val |= pll->power_bit;
 	else
-		val &= ~BM_PLL_POWER;
+		val &= ~pll->power_bit;
 	writel(val, pll->base);
 
 	/* Wait for PLL to lock */
@@ -83,9 +86,9 @@ static void clk_pllv3_disable(struct clk *clk)
 
 	val |= BM_PLL_BYPASS;
 	if (pll->powerup_set)
-		val &= ~BM_PLL_POWER;
+		val &= ~pll->power_bit;
 	else
-		val |= BM_PLL_POWER;
+		val |= pll->power_bit;
 	writel(val, pll->base);
 }
 
@@ -265,7 +268,9 @@ static const struct clk_ops clk_pllv3_av_ops = {
 static unsigned long clk_pllv3_enet_recalc_rate(struct clk *clk,
 						unsigned long parent_rate)
 {
-	return 500000000;
+	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+
+	return pll->ref_clock;
 }
 
 static const struct clk_ops clk_pllv3_enet_ops = {
@@ -289,6 +294,8 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
 
 	pll = xzalloc(sizeof(*pll));
 
+	pll->power_bit = BM_PLL_POWER;
+
 	switch (type) {
 	case IMX_PLLV3_SYS:
 		ops = &clk_pllv3_sys_ops;
@@ -302,7 +309,13 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
 	case IMX_PLLV3_AV:
 		ops = &clk_pllv3_av_ops;
 		break;
+	case IMX_PLLV3_ENET_IMX7:
+		pll->power_bit = IMX7_ENET_PLL_POWER;
+		pll->ref_clock = 1000000000;
+		ops = &clk_pllv3_enet_ops;
+		break;
 	case IMX_PLLV3_ENET:
+		pll->ref_clock = 500000000;
 		ops = &clk_pllv3_enet_ops;
 		break;
 	case IMX_PLLV3_MLB:
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 970f65c7d..7ecb14654 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -82,6 +82,7 @@ enum imx_pllv3_type {
 	IMX_PLLV3_USB_VF610,
 	IMX_PLLV3_AV,
 	IMX_PLLV3_ENET,
+	IMX_PLLV3_ENET_IMX7,
 	IMX_PLLV3_MLB,
 };
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
