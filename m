Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward5l.mail.yandex.net ([84.201.143.138])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTFeh-000120-TQ
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 20:12:32 +0000
From: Andrey Panov <rockford@yandex.ru>
Date: Wed,  4 Mar 2015 23:11:34 +0300
Message-Id: <1425499906-32125-7-git-send-email-rockford@yandex.ru>
In-Reply-To: <1425499906-32125-1-git-send-email-rockford@yandex.ru>
References: <1425499906-32125-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH v2 06/18] CLK: clk-divider: Introduce clk_divider_alloc() and
 *_free() routines
To: barebox@lists.infradead.org

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 drivers/clk/clk-divider.c | 27 ++++++++++++++++++++++-----
 include/linux/clk.h       |  3 +++
 2 files changed, 25 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index eb48334..cedcdda 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -212,11 +212,10 @@ struct clk_ops clk_divider_ops = {
 	.round_rate = clk_divider_round_rate,
 };
 
-struct clk *clk_divider(const char *name, const char *parent,
+struct clk *clk_divider_alloc(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, u8 width, unsigned flags)
 {
 	struct clk_divider *div = xzalloc(sizeof(*div));
-	int ret;
 
 	div->shift = shift;
 	div->reg = reg;
@@ -228,13 +227,31 @@ struct clk *clk_divider(const char *name, const char *parent,
 	div->clk.parent_names = &div->parent;
 	div->clk.num_parents = 1;
 
-	ret = clk_register(&div->clk);
+	return &div->clk;
+}
+
+void clk_divider_free(struct clk *clk)
+{
+	struct clk_divider *d =  container_of(clk, struct clk_divider, clk);
+
+	free(d);
+}
+
+struct clk *clk_divider(const char *name, const char *parent,
+		void __iomem *reg, u8 shift, u8 width, unsigned flags)
+{
+	struct clk *d;
+	int ret;
+
+	d = clk_divider_alloc(name , parent, reg, shift, width, flags);
+
+	ret = clk_register(d);
 	if (ret) {
-		free(div);
+		clk_divider_free(d);
 		return ERR_PTR(ret);
 	}
 
-	return &div->clk;
+	return d;
 }
 
 struct clk *clk_divider_one_based(const char *name, const char *parent,
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 258bbe3..65d3e99 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -254,6 +254,9 @@ struct clk_divider {
 
 extern struct clk_ops clk_divider_ops;
 
+struct clk *clk_divider_alloc(const char *name, const char *parent,
+		void __iomem *reg, u8 shift, u8 width, unsigned flags);
+void clk_divider_free(struct clk *clk_divider);
 struct clk *clk_divider(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, u8 width, unsigned flags);
 struct clk *clk_divider_one_based(const char *name, const char *parent,
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
