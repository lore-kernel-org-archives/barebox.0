Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YTWar-0000PI-0B
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 14:17:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Mar 2015 15:17:17 +0100
Message-Id: <1425565037-9348-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] clk: Treat NULL as dummy clocks
To: Barebox List <barebox@lists.infradead.org>

NULL pointers should be treated as dummy clocks as done in the kernel.
Using a not fully filled in clk * array for of_clk_add_provider may result
in NULL clks. When these are passed into the clk framework we should not
crash.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 584e2f3..1f11bb3 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -44,6 +44,9 @@ int clk_enable(struct clk *clk)
 {
 	int ret;
 
+	if (!clk)
+		return 0;
+
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
 
@@ -68,6 +71,9 @@ int clk_enable(struct clk *clk)
 
 void clk_disable(struct clk *clk)
 {
+	if (!clk)
+		return;
+
 	if (IS_ERR(clk))
 		return;
 
@@ -89,10 +95,15 @@ unsigned long clk_get_rate(struct clk *clk)
 	struct clk *parent;
 	unsigned long parent_rate = 0;
 
+	if (!clk)
+		return 0;
+
 	if (IS_ERR(clk))
 		return 0;
 
 	parent = clk_get_parent(clk);
+
+
 	if (!IS_ERR_OR_NULL(parent))
 		parent_rate = clk_get_rate(parent);
 
@@ -107,6 +118,9 @@ long clk_round_rate(struct clk *clk, unsigned long rate)
 	unsigned long parent_rate = 0;
 	struct clk *parent;
 
+	if (!clk)
+		return 0;
+
 	if (IS_ERR(clk))
 		return 0;
 
@@ -125,6 +139,9 @@ int clk_set_rate(struct clk *clk, unsigned long rate)
 	struct clk *parent;
 	unsigned long parent_rate = 0;
 
+	if (!clk)
+		return 0;
+
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
