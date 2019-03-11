Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3HHO-0008Eo-Ah
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 09:31:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Mar 2019 10:31:19 +0100
Message-Id: <20190311093123.7956-11-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/14] clk: mux: Support CLK_SET_RATE_NO_REPARENT flag
To: Barebox List <barebox@lists.infradead.org>

Since barebox doesn't do reparenting on rate changes we only have
to define the flag.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/rockchip/clk-rk3188.c | 2 --
 drivers/clk/rockchip/clk-rk3288.c | 2 --
 include/linux/clk.h               | 1 +
 3 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3188.c b/drivers/clk/rockchip/clk-rk3188.c
index 8ed3a6d894..9340739945 100644
--- a/drivers/clk/rockchip/clk-rk3188.c
+++ b/drivers/clk/rockchip/clk-rk3188.c
@@ -25,8 +25,6 @@
 #define RK3066_GRF_SOC_STATUS	0x15c
 #define RK3188_GRF_SOC_STATUS	0xac
 
-#define CLK_SET_RATE_NO_REPARENT 0
-
 enum rk3188_plls {
 	apll, cpll, dpll, gpll,
 };
diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
index e7cc9c1b5b..dcfaae2407 100644
--- a/drivers/clk/rockchip/clk-rk3288.c
+++ b/drivers/clk/rockchip/clk-rk3288.c
@@ -25,8 +25,6 @@
 #define RK3288_GRF_SOC_CON(x)	(0x244 + x * 4)
 #define RK3288_GRF_SOC_STATUS1	0x284
 
-#define CLK_SET_RATE_NO_REPARENT 0
-
 enum rk3288_plls {
 	apll, dpll, cpll, gpll, npll,
 };
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 2492608a15..b9c5e0ab04 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -286,6 +286,7 @@ static inline void clk_put(struct clk *clk)
 
 #define CLK_SET_RATE_PARENT     (1 << 0) /* propagate rate change up one level */
 #define CLK_IGNORE_UNUSED       (1 << 3) /* do not gate even if unused */
+#define CLK_SET_RATE_NO_REPARENT (1 << 7) /* don't re-parent on rate change */
 #define CLK_IS_CRITICAL         (1 << 11) /* do not gate, ever */
 /* parents need enable during gate/ungate, set rate and re-parent */
 #define CLK_OPS_PARENT_ENABLE   (1 << 12)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
