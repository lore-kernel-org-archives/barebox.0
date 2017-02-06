Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cadB9-0004gE-Um
 for barebox@lists.infradead.org; Mon, 06 Feb 2017 06:53:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Feb 2017 07:50:49 +0100
Message-Id: <20170206065057.19483-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] clk: Keep enable count consistent over reparent
To: Barebox List <barebox@lists.infradead.org>

When reparenting a clock we have to make sure the new parent is enabled
when the clock was enabled on the old parent. Also we have to decrease
the old parents use counter when the clock was enabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 1566beabd..6f3053727 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -173,14 +173,15 @@ struct clk *clk_lookup(const char *name)
 	return ERR_PTR(-ENODEV);
 }
 
-int clk_set_parent(struct clk *clk, struct clk *parent)
+int clk_set_parent(struct clk *clk, struct clk *newparent)
 {
-	int i;
+	int i, ret;
+	struct clk *curparent = clk_get_parent(clk);
 
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
-	if (IS_ERR(parent))
-		return PTR_ERR(parent);
+	if (IS_ERR(newparent))
+		return PTR_ERR(newparent);
 
 	if (!clk->num_parents)
 		return -EINVAL;
@@ -192,14 +193,22 @@ int clk_set_parent(struct clk *clk, struct clk *parent)
 			clk->parents[i] = clk_lookup(clk->parent_names[i]);
 
 		if (!IS_ERR_OR_NULL(clk->parents[i]))
-			if (clk->parents[i] == parent)
+			if (clk->parents[i] == newparent)
 				break;
 	}
 
 	if (i == clk->num_parents)
 		return -EINVAL;
 
-	return clk->ops->set_parent(clk, i);
+	if (clk->enable_count)
+		clk_enable(newparent);
+
+	ret = clk->ops->set_parent(clk, i);
+
+	if (clk->enable_count)
+		clk_disable(curparent);
+
+	return ret;
 }
 
 struct clk *clk_get_parent(struct clk *clk)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
