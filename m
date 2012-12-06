Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgbWS-0007IE-T6
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 13:29:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Dec 2012 14:29:46 +0100
Message-Id: <1354800588-23053-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] ARM i.MX6 pllv3: Do not use delay functions
To: barebox@lists.infradead.org

We may be called very early, before the timer is available,
so don't use it here.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-pllv3.c |   12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/clk-pllv3.c b/arch/arm/mach-imx/clk-pllv3.c
index f400a7c..cc9621c 100644
--- a/arch/arm/mach-imx/clk-pllv3.c
+++ b/arch/arm/mach-imx/clk-pllv3.c
@@ -46,7 +46,7 @@ static int clk_pllv3_enable(struct clk *clk)
 {
 	struct clk_pllv3 *pll = to_clk_pllv3(clk);
 	u32 val;
-	int ret;
+	int timeout = 10000;
 
 	val = readl(pll->base);
 	val &= ~BM_PLL_BYPASS;
@@ -57,9 +57,13 @@ static int clk_pllv3_enable(struct clk *clk)
 	writel(val, pll->base);
 
 	/* Wait for PLL to lock */
-	ret = wait_on_timeout(10 * MSECOND, !(readl(pll->base) & BM_PLL_LOCK));
-	if (ret)
-		return ret;
+	while (timeout--) {
+		if (readl(pll->base) & BM_PLL_LOCK)
+			break;
+	}
+
+	if (!timeout)
+		return -ETIMEDOUT;
 
 	val = readl(pll->base);
 	val |= pll->gate_mask;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
