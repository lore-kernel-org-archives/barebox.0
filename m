Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOTAh-00055d-Um
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:37 +0100
Message-Id: <1394807569-23620-18-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
References: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/29] clk: Add parent round/set rate for mux and gate
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-gate.c |  2 ++
 drivers/clk/clk-mux.c  |  2 ++
 drivers/clk/clk.c      | 20 ++++++++++++++++++++
 include/linux/clk.h    |  4 ++++
 4 files changed, 28 insertions(+)

diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index f356de7..b298b19 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -77,6 +77,8 @@ static int clk_gate_is_enabled(struct clk *clk)
 }
 
 static struct clk_ops clk_gate_ops = {
+	.set_rate = clk_parent_set_rate,
+	.round_rate = clk_parent_round_rate,
 	.enable = clk_gate_enable,
 	.disable = clk_gate_disable,
 	.is_enabled = clk_gate_is_enabled,
diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index 9dcd39c..4ce86f4 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -51,6 +51,8 @@ static int clk_mux_set_parent(struct clk *clk, u8 idx)
 }
 
 static struct clk_ops clk_mux_ops = {
+	.set_rate = clk_parent_set_rate,
+	.round_rate = clk_parent_round_rate,
 	.get_parent = clk_mux_get_parent,
 	.set_parent = clk_mux_set_parent,
 };
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index c67b2f4..0d25941 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -259,11 +259,31 @@ int clk_is_enabled(struct clk *clk)
 	return clk_is_enabled(clk);
 }
 
+/*
+ * Generic struct clk_ops callbacks
+ */
 int clk_is_enabled_always(struct clk *clk)
 {
 	return 1;
 }
 
+long clk_parent_round_rate(struct clk *clk, unsigned long rate,
+				unsigned long *prate)
+{
+	if (!(clk->flags & CLK_SET_RATE_PARENT))
+		return *prate;
+
+	return clk_round_rate(clk_get_parent(clk), rate);
+}
+
+int clk_parent_set_rate(struct clk *clk, unsigned long rate,
+				unsigned long parent_rate)
+{
+	if (!(clk->flags & CLK_SET_RATE_PARENT))
+		return 0;
+	return clk_set_rate(clk_get_parent(clk), rate);
+}
+
 #if defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK_OF_PROVIDER)
 /**
  * struct of_clk_provider - Clock provider registration structure
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 71b0466..07b27cf 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -276,6 +276,10 @@ struct clk *clk_gate_inverted(const char *name, const char *parent, void __iomem
 int clk_is_enabled(struct clk *clk);
 
 int clk_is_enabled_always(struct clk *clk);
+long clk_parent_round_rate(struct clk *clk, unsigned long rate,
+				unsigned long *prate);
+int clk_parent_set_rate(struct clk *clk, unsigned long rate,
+				unsigned long parent_rate);
 
 int clk_register(struct clk *clk);
 
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
