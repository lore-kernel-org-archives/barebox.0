Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs0AE-0002jw-FM
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 06:29:15 +0000
Received: by mail-pf1-x441.google.com with SMTP id l9-v6so7981243pff.9
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2018 23:29:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: [PATCH 1/2] clk: clk-sccg-pll: Remove leftover debug output
Date: Mon, 20 Aug 2018 23:28:52 -0700
Message-Id: <20180821062853.18301-1-andrew.smirnov@gmail.com>
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

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/imx/clk-sccg-pll.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/clk/imx/clk-sccg-pll.c b/drivers/clk/imx/clk-sccg-pll.c
index 951234367..bbfd95a11 100644
--- a/drivers/clk/imx/clk-sccg-pll.c
+++ b/drivers/clk/imx/clk-sccg-pll.c
@@ -121,11 +121,9 @@ static void clk_pll1_unprepare(struct clk *clk)
 {
 	struct clk_sccg_pll *pll = to_clk_sccg_pll(clk);
 	u32 val;
-printf("%s %p\n", __func__, pll);
 	val = readl(pll->base);
 	val |= (1 << PLL_PD);
 	writel(val, pll->base);
-printf("fuschi\n");
 }
 
 static unsigned long clk_pll2_recalc_rate(struct clk *clk,
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
