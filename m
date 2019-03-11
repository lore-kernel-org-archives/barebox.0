Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3HHL-0003dr-Sf
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 09:31:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 05/14] clk: Support CLK_IS_CRITICAL flag
Date: Mon, 11 Mar 2019 10:31:14 +0100
Message-Id: <20190311093123.7956-6-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

Support CLK_IS_CRITICAL flag. Simply do not disable the clock even when
the enable count is zero.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c   | 3 +++
 include/linux/clk.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 6a2d8ad178..ea3304bc7c 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -87,6 +87,9 @@ void clk_disable(struct clk *clk)
 	clk->enable_count--;
 
 	if (!clk->enable_count) {
+		if (clk->flags & CLK_IS_CRITICAL)
+			return;
+
 		if (clk->ops->disable)
 			clk->ops->disable(clk);
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 5b0a93095d..5ad12c571c 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -286,6 +286,7 @@ static inline void clk_put(struct clk *clk)
 
 #define CLK_SET_RATE_PARENT     (1 << 0) /* propagate rate change up one level */
 #define CLK_IGNORE_UNUSED       (1 << 3) /* do not gate even if unused */
+#define CLK_IS_CRITICAL         (1 << 11) /* do not gate, ever */
 /* parents need enable during gate/ungate, set rate and re-parent */
 #define CLK_OPS_PARENT_ENABLE   (1 << 12)
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
