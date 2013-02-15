Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp35.i.mail.ru ([94.100.177.95])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6IEe-0005p2-9O
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 10:09:41 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 15 Feb 2013 14:09:35 +0400
Message-Id: <1360922975-15256-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] clk-fixed-factor: Using parent flags
To: barebox@lists.infradead.org

This patch allow using parent flags for newly created clocks, so if
parent clock, for example, have flag CLK_ALWAYS_ENABLED, we will use it.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/clk/clk-fixed-factor.c |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
index 52e7c16..56aa63e 100644
--- a/drivers/clk/clk-fixed-factor.c
+++ b/drivers/clk/clk-fixed-factor.c
@@ -43,6 +43,7 @@ struct clk *clk_fixed_factor(const char *name,
 		const char *parent, unsigned int mult, unsigned int div)
 {
 	struct clk_fixed_factor *f = xzalloc(sizeof(*f));
+	struct clk *parent_clk;
 	int ret;
 
 	f->mult = mult;
@@ -53,6 +54,10 @@ struct clk *clk_fixed_factor(const char *name,
 	f->clk.parent_names = &f->parent;
 	f->clk.num_parents = 1;
 
+	parent_clk = clk_lookup(parent);
+	if (!IS_ERR(parent_clk))
+		f->clk.flags = parent_clk->flags;
+
 	ret = clk_register(&f->clk);
 	if (ret) {
 		free(f);
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
