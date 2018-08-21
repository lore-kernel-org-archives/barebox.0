Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs0AF-0002jy-CT
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 06:29:16 +0000
Received: by mail-pg1-x542.google.com with SMTP id a11-v6so7976026pgw.6
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2018 23:29:05 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: [PATCH 2/2] clk: clk-sccg-pll: Drop prepare/unprepare for SCCG_PLL2
Date: Mon, 20 Aug 2018 23:28:53 -0700
Message-Id: <20180821062853.18301-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180821062853.18301-1-andrew.smirnov@gmail.com>
References: <20180821062853.18301-1-andrew.smirnov@gmail.com>
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
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

A number of PLL pairs (e.g. "sys1_pll1" and "sys1_pll2") share the
same configuration register, so touching PD bit, as is done for
SCCG_PLL2 in its prepare/unprepare methods will result in shut down of
both PLLs. This is very undesireable, since attempting to re-parent a
clock to "sys1_pll2" might result in complete system shutdown due to
"sys1_pll1" being shut-down as a part of re-parenting process.

There might be a better solution, but for now, just drop both methods
for SCCG_PLL2, since this seem to work OK in practice.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/imx/clk-sccg-pll.c | 25 -------------------------
 1 file changed, 25 deletions(-)

diff --git a/drivers/clk/imx/clk-sccg-pll.c b/drivers/clk/imx/clk-sccg-pll.c
index bbfd95a11..cd1079b0c 100644
--- a/drivers/clk/imx/clk-sccg-pll.c
+++ b/drivers/clk/imx/clk-sccg-pll.c
@@ -103,29 +103,6 @@ static int clk_pll1_set_rate(struct clk *clk, unsigned long rate,
 	return 0;
 }
 
-static int clk_pll1_prepare(struct clk *clk)
-{
-	struct clk_sccg_pll *pll = to_clk_sccg_pll(clk);
-	u32 val;
-
-	val = readl(pll->base);
-	val &= ~(1 << PLL_PD);
-	writel(val, pll->base);
-
-	/* FIXME: PLL lock check */
-
-	return 0;
-}
-
-static void clk_pll1_unprepare(struct clk *clk)
-{
-	struct clk_sccg_pll *pll = to_clk_sccg_pll(clk);
-	u32 val;
-	val = readl(pll->base);
-	val |= (1 << PLL_PD);
-	writel(val, pll->base);
-}
-
 static unsigned long clk_pll2_recalc_rate(struct clk *clk,
 					 unsigned long parent_rate)
 {
@@ -198,8 +175,6 @@ static const struct clk_ops clk_sccg_pll1_ops = {
 };
 
 static const struct clk_ops clk_sccg_pll2_ops = {
-	.enable		= clk_pll1_prepare,
-	.disable	= clk_pll1_unprepare,
 	.recalc_rate	= clk_pll2_recalc_rate,
 	.round_rate	= clk_pll2_round_rate,
 	.set_rate	= clk_pll2_set_rate,
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
