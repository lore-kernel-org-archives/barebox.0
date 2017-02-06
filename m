Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cadBP-0004hQ-42
 for barebox@lists.infradead.org; Mon, 06 Feb 2017 06:53:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Feb 2017 07:50:50 +0100
Message-Id: <20170206065057.19483-3-s.hauer@pengutronix.de>
In-Reply-To: <20170206065057.19483-1-s.hauer@pengutronix.de>
References: <20170206065057.19483-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] clk: implement CLK_OPS_PARENT_ENABLE
To: Barebox List <barebox@lists.infradead.org>

Some clocks may only be modified when their parent clocks are enabled.
The kernel has the CLK_OPS_PARENT_ENABLE flag for this purpose.
Implement it for barebox aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c   | 31 +++++++++++++++++++++++++++----
 include/linux/clk.h |  2 ++
 2 files changed, 29 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 6f3053727..93e000c6e 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -141,6 +141,7 @@ int clk_set_rate(struct clk *clk, unsigned long rate)
 {
 	struct clk *parent;
 	unsigned long parent_rate = 0;
+	int ret;
 
 	if (!clk)
 		return 0;
@@ -148,14 +149,26 @@ int clk_set_rate(struct clk *clk, unsigned long rate)
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
 
+	if (!clk->ops->set_rate)
+		return -ENOSYS;
+
 	parent = clk_get_parent(clk);
-	if (parent)
+	if (parent) {
 		parent_rate = clk_get_rate(parent);
 
-	if (clk->ops->set_rate)
-		return clk->ops->set_rate(clk, rate, parent_rate);
+		if (clk->flags & CLK_OPS_PARENT_ENABLE) {
+			ret = clk_enable(parent);
+			if (ret)
+				return ret;
+		}
+	}
+
+	ret = clk->ops->set_rate(clk, rate, parent_rate);
+
+	if (parent && clk->flags & CLK_OPS_PARENT_ENABLE)
+		clk_disable(parent);
 
-	return -ENOSYS;
+	return ret;
 }
 
 struct clk *clk_lookup(const char *name)
@@ -203,8 +216,18 @@ int clk_set_parent(struct clk *clk, struct clk *newparent)
 	if (clk->enable_count)
 		clk_enable(newparent);
 
+	if (clk->flags & CLK_OPS_PARENT_ENABLE) {
+		clk_enable(curparent);
+		clk_enable(newparent);
+	}
+
 	ret = clk->ops->set_parent(clk, i);
 
+	if (clk->flags & CLK_OPS_PARENT_ENABLE) {
+		clk_disable(curparent);
+		clk_disable(newparent);
+	}
+
 	if (clk->enable_count)
 		clk_disable(curparent);
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 8cb9731f1..697ab4ff4 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -198,6 +198,8 @@ static inline int clk_set_rate(struct clk *clk, unsigned long rate)
 #ifdef CONFIG_COMMON_CLK
 
 #define CLK_SET_RATE_PARENT     (1 << 0) /* propagate rate change up one level */
+/* parents need enable during gate/ungate, set rate and re-parent */
+#define CLK_OPS_PARENT_ENABLE   (1 << 12)
 
 #define CLK_GATE_INVERTED	(1 << 0)
 #define CLK_GATE_HIWORD_MASK	(1 << 1)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
