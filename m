Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMxrd-0003DM-Ge
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 14:41:16 +0000
Received: by mail-pf0-x242.google.com with SMTP id w12so17388978pfk.0
 for <barebox@lists.infradead.org>; Mon, 19 Jun 2017 07:40:53 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 19 Jun 2017 07:40:38 -0700
Message-Id: <20170619144039.20552-3-andrew.smirnov@gmail.com>
In-Reply-To: <20170619144039.20552-1-andrew.smirnov@gmail.com>
References: <20170619144039.20552-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/3] i.MX: clk-pllv3: Do not touch PLL_BYPASS bit
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, cphealy@gmail.com

Do not touch PLL_BYPASS bit as a part of clk_pll3_enable/disable
execution. For a number of platforms (e.g. Vybrid, i.MX6SL) PLL_BYPASS
is specified as a bit controlling a clock MUX represented by a
dedicated 'struct clk'. Altering that bit as a part of
clk_pll3_enable/disable is equivalent to calling clk_set_parent() and
it makes in the following code:

clk_enable(clk_disable(<some pll>))

change clock chain instead of being a no-op.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/imx/clk-pllv3.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
index 6d4399b..a14d36e 100644
--- a/drivers/clk/imx/clk-pllv3.c
+++ b/drivers/clk/imx/clk-pllv3.c
@@ -56,7 +56,6 @@ static int clk_pllv3_enable(struct clk *clk)
 	int timeout = 10000;
 
 	val = readl(pll->base);
-	val &= ~BM_PLL_BYPASS;
 	if (pll->powerup_set)
 		val |= pll->power_bit;
 	else
@@ -88,7 +87,6 @@ static void clk_pllv3_disable(struct clk *clk)
 	val &= ~BM_PLL_ENABLE;
 	writel(val, pll->base);
 
-	val |= BM_PLL_BYPASS;
 	if (pll->powerup_set)
 		val &= ~pll->power_bit;
 	else
-- 
2.9.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
