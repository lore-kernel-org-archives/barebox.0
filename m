Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gj5JX-0006yh-AT
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 16:42:26 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gj5JU-0007Zj-08
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 17:42:12 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 14 Jan 2019 17:42:06 +0100
Message-Id: <20190114164211.10871-3-l.stach@pengutronix.de>
In-Reply-To: <20190114164211.10871-1-l.stach@pengutronix.de>
References: <20190114164211.10871-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/8] clk: move struct clk_mux into header
To: barebox@lists.infradead.org

To make it reusable in a composite clock.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/clk/clk-mux.c | 11 +----------
 include/linux/clk.h   | 11 +++++++++++
 2 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index 22e131faae61..d5fe640dce1b 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -20,15 +20,6 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 
-struct clk_mux {
-	struct clk clk;
-	void __iomem *reg;
-	int shift;
-	int width;
-};
-
-#define to_clk_mux(_clk) container_of(_clk, struct clk_mux, clk)
-
 static int clk_mux_get_parent(struct clk *clk)
 {
 	struct clk_mux *m = container_of(clk, struct clk_mux, clk);
@@ -53,7 +44,7 @@ static int clk_mux_set_parent(struct clk *clk, u8 idx)
 	return 0;
 }
 
-static struct clk_ops clk_mux_ops = {
+struct clk_ops clk_mux_ops = {
 	.set_rate = clk_parent_set_rate,
 	.round_rate = clk_parent_round_rate,
 	.get_parent = clk_mux_get_parent,
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 419a2c4c86b8..13b1e529f57b 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -282,6 +282,17 @@ struct clk *clk_fractional_divider(
 		u8 clk_divider_flags);
 void clk_fractional_divider_free(struct clk *clk_fd);
 
+struct clk_mux {
+	struct clk clk;
+	void __iomem *reg;
+	int shift;
+	int width;
+};
+
+#define to_clk_mux(_clk) container_of(_clk, struct clk_mux, clk)
+
+extern struct clk_ops clk_mux_ops;
+
 struct clk *clk_mux_alloc(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char **parents, u8 num_parents,
 		unsigned flags);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
