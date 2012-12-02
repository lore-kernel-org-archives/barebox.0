Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfGN9-0000jV-7b
 for barebox@lists.infradead.org; Sun, 02 Dec 2012 20:42:44 +0000
Received: by mail-lb0-f177.google.com with SMTP id n10so1611563lbo.36
 for <barebox@lists.infradead.org>; Sun, 02 Dec 2012 12:42:39 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  3 Dec 2012 00:42:24 +0400
Message-Id: <1354480945-19214-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1354480945-19214-1-git-send-email-antonynpavlov@gmail.com>
References: <1354480945-19214-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] clk: add always enabled clocks
To: barebox@lists.infradead.org

Current barebox clk framework allow disable any clock
and there is no means to prevent that.

But there are the clocks that can't be disabled
by software at all.

This patch allow registration of a clock immune to clk_disable().

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/clk/clk.c   |   10 ++++++++++
 include/linux/clk.h |    3 +++
 2 files changed, 13 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index ea93ff8..2ff7586 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -46,6 +46,9 @@ int clk_enable(struct clk *clk)
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
 
+	if (clk->flags & CLK_ALWAYS_ENABLED)
+		return 0;
+
 	if (!clk->enable_count) {
 		ret = clk_parent_enable(clk);
 		if (ret)
@@ -70,6 +73,9 @@ void clk_disable(struct clk *clk)
 	if (IS_ERR(clk))
 		return;
 
+	if (clk->flags & CLK_ALWAYS_ENABLED)
+		return;
+
 	if (!clk->enable_count)
 		return;
 
@@ -205,6 +211,10 @@ int clk_register(struct clk *clk)
 
 	list_add_tail(&clk->list, &clks);
 
+	if (clk->flags & CLK_ALWAYS_ENABLED) {
+		clk->enable_count = 1;
+	}
+
 	return 0;
 }
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 00588bf..1030b50 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -179,8 +179,11 @@ struct clk {
 	int num_parents;
 
 	struct clk **parents;
+	unsigned long flags;
 };
 
+#define CLK_ALWAYS_ENABLED	(1 << 0)
+
 struct clk *clk_fixed(const char *name, int rate);
 struct clk *clk_divider(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, u8 width);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
