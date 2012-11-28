Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TdeOT-0002ql-JT
 for barebox@lists.infradead.org; Wed, 28 Nov 2012 09:57:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Nov 2012 10:57:19 +0100
Message-Id: <1354096639-13936-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] clk: check for invalid clocks
To: barebox@lists.infradead.org

Checking for invalid clocks on function entry allows users
to for example do a clk_set_rate(clk_lookup("myclk"), x) without
checking for validity of the result of clk_lookup first.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c |   23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index bf61e5d..ea93ff8 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -43,6 +43,9 @@ int clk_enable(struct clk *clk)
 {
 	int ret;
 
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
 	if (!clk->enable_count) {
 		ret = clk_parent_enable(clk);
 		if (ret)
@@ -64,6 +67,9 @@ int clk_enable(struct clk *clk)
 
 void clk_disable(struct clk *clk)
 {
+	if (IS_ERR(clk))
+		return;
+
 	if (!clk->enable_count)
 		return;
 
@@ -82,6 +88,9 @@ unsigned long clk_get_rate(struct clk *clk)
 	struct clk *parent;
 	unsigned long parent_rate = 0;
 
+	if (IS_ERR(clk))
+		return 0;
+
 	parent = clk_get_parent(clk);
 	if (!IS_ERR_OR_NULL(parent))
 		parent_rate = clk_get_rate(parent);
@@ -94,6 +103,9 @@ unsigned long clk_get_rate(struct clk *clk)
 
 long clk_round_rate(struct clk *clk, unsigned long rate)
 {
+	if (IS_ERR(clk))
+		return 0;
+
 	return clk_get_rate(clk);
 }
 
@@ -102,6 +114,9 @@ int clk_set_rate(struct clk *clk, unsigned long rate)
 	struct clk *parent;
 	unsigned long parent_rate = 0;
 
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
 	parent = clk_get_parent(clk);
 	if (parent)
 		parent_rate = clk_get_rate(parent);
@@ -131,6 +146,11 @@ int clk_set_parent(struct clk *clk, struct clk *parent)
 {
 	int i;
 
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+	if (IS_ERR(parent))
+		return PTR_ERR(parent);
+
 	if (!clk->num_parents)
 		return -EINVAL;
 	if (!clk->ops->set_parent)
@@ -155,6 +175,9 @@ struct clk *clk_get_parent(struct clk *clk)
 {
 	int idx;
 
+	if (IS_ERR(clk))
+		return clk;
+
 	if (!clk->num_parents)
 		return ERR_PTR(-ENODEV);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
