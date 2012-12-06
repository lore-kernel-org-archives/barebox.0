Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgbWS-0007IB-UQ
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 13:29:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Dec 2012 14:29:43 +0100
Message-Id: <1354800588-23053-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] ARM i.MX6: fix ethernet PLL rate
To: barebox@lists.infradead.org

The ethernet PLL has a fixed frequency of 500MHz. What is adjustable
are additional dividers which we better describe separately.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-pllv3.c |   63 +----------------------------------------
 1 file changed, 1 insertion(+), 62 deletions(-)

diff --git a/arch/arm/mach-imx/clk-pllv3.c b/arch/arm/mach-imx/clk-pllv3.c
index e337e87..f400a7c 100644
--- a/arch/arm/mach-imx/clk-pllv3.c
+++ b/arch/arm/mach-imx/clk-pllv3.c
@@ -261,74 +261,13 @@ static const struct clk_ops clk_pllv3_av_ops = {
 static unsigned long clk_pllv3_enet_recalc_rate(struct clk *clk,
 						unsigned long parent_rate)
 {
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
-	u32 div = readl(pll->base) & pll->div_mask;
-
-	switch (div) {
-	case 0:
-		return 25000000;
-	case 1:
-		return 50000000;
-	case 2:
-		return 100000000;
-	case 3:
-		return 125000000;
-	}
-
-	return 0;
-}
-
-static long clk_pllv3_enet_round_rate(struct clk *clk, unsigned long rate,
-				      unsigned long *prate)
-{
-	if (rate >= 125000000)
-		rate = 125000000;
-	else if (rate >= 100000000)
-		rate = 100000000;
-	else if (rate >= 50000000)
-		rate = 50000000;
-	else
-		rate = 25000000;
-	return rate;
-}
-
-static int clk_pllv3_enet_set_rate(struct clk *clk, unsigned long rate,
-		unsigned long parent_rate)
-{
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
-	u32 val, div;
-
-	switch (rate) {
-	case 25000000:
-		div = 0;
-		break;
-	case 50000000:
-		div = 1;
-		break;
-	case 100000000:
-		div = 2;
-		break;
-	case 125000000:
-		div = 3;
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	val = readl(pll->base);
-	val &= ~pll->div_mask;
-	val |= div;
-	writel(val, pll->base);
-
-	return 0;
+	return 500000000;
 }
 
 static const struct clk_ops clk_pllv3_enet_ops = {
 	.enable		= clk_pllv3_enable,
 	.disable	= clk_pllv3_disable,
 	.recalc_rate	= clk_pllv3_enet_recalc_rate,
-	.round_rate	= clk_pllv3_enet_round_rate,
-	.set_rate	= clk_pllv3_enet_set_rate,
 };
 
 static const struct clk_ops clk_pllv3_mlb_ops = {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
