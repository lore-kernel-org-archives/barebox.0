Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3HHS-0008Gb-DW
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 09:31:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Mar 2019 10:31:16 +0100
Message-Id: <20190311093123.7956-8-s.hauer@pengutronix.de>
In-Reply-To: <20190311093123.7956-1-s.hauer@pengutronix.de>
References: <20190311093123.7956-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/14] clk: divider: Support CLK_DIVIDER_READ_ONLY flag
To: Barebox List <barebox@lists.infradead.org>

To support a readonly divider add the CLK_DIVIDER_READ_ONLY flag.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-divider.c         | 7 +++++++
 drivers/clk/rockchip/clk-rk3188.c | 1 -
 drivers/clk/rockchip/clk-rk3288.c | 1 -
 include/linux/clk.h               | 1 +
 4 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 407aae78ea..d9d3407e75 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -203,8 +203,12 @@ static int clk_divider_bestdiv(struct clk *clk, unsigned long rate,
 static long clk_divider_round_rate(struct clk *clk, unsigned long rate,
 		unsigned long *parent_rate)
 {
+	struct clk_divider *divider = container_of(clk, struct clk_divider, clk);
 	int div;
 
+	if (divider->flags & CLK_DIVIDER_READ_ONLY)
+		return clk_divider_recalc_rate(clk, *parent_rate);
+
 	div = clk_divider_bestdiv(clk, rate, parent_rate);
 
 	return *parent_rate / div;
@@ -217,6 +221,9 @@ static int clk_divider_set_rate(struct clk *clk, unsigned long rate,
 	unsigned int div, value;
 	u32 val;
 
+	if (divider->flags & CLK_DIVIDER_READ_ONLY)
+		return 0;
+
 	if (clk->flags & CLK_SET_RATE_PARENT) {
 		unsigned long best_parent_rate = parent_rate;
 		div = clk_divider_bestdiv(clk, rate, &best_parent_rate);
diff --git a/drivers/clk/rockchip/clk-rk3188.c b/drivers/clk/rockchip/clk-rk3188.c
index 7dda2963e3..8ed3a6d894 100644
--- a/drivers/clk/rockchip/clk-rk3188.c
+++ b/drivers/clk/rockchip/clk-rk3188.c
@@ -26,7 +26,6 @@
 #define RK3188_GRF_SOC_STATUS	0xac
 
 #define CLK_SET_RATE_NO_REPARENT 0
-#define CLK_DIVIDER_READ_ONLY 0
 
 enum rk3188_plls {
 	apll, cpll, dpll, gpll,
diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
index bb111e1e0b..e7cc9c1b5b 100644
--- a/drivers/clk/rockchip/clk-rk3288.c
+++ b/drivers/clk/rockchip/clk-rk3288.c
@@ -26,7 +26,6 @@
 #define RK3288_GRF_SOC_STATUS1	0x284
 
 #define CLK_SET_RATE_NO_REPARENT 0
-#define CLK_DIVIDER_READ_ONLY 0
 
 enum rk3288_plls {
 	apll, dpll, cpll, gpll, npll,
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 65d163c78d..2de963e7e9 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -341,6 +341,7 @@ struct clk_divider {
 
 #define CLK_DIVIDER_POWER_OF_TWO	(1 << 1)
 #define CLK_DIVIDER_HIWORD_MASK		(1 << 3)
+#define CLK_DIVIDER_READ_ONLY		(1 << 5)
 
 #define CLK_MUX_HIWORD_MASK		(1 << 2)
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
