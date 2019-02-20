Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKV-0003IT-1t
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:30:16 +0000
Received: by mail-pl1-x644.google.com with SMTP id y10so11786827plp.0
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:30:06 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:24 -0800
Message-Id: <20190220072930.14300-20-andrew.smirnov@gmail.com>
In-Reply-To: <20190220072930.14300-1-andrew.smirnov@gmail.com>
References: <20190220072930.14300-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 19/25] clk: Drop separate definitions of clk_put()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Regardless of the value of CONFIG_HAVE_CLK, clk_put() implementation
is always a no-op. Move the definition to linux/clk.h and drop the
rest of the code implementing it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/clkdev.c |  5 -----
 include/linux/clk.h  | 21 ++++-----------------
 2 files changed, 4 insertions(+), 22 deletions(-)

diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index abdc41527..f67a5c4d9 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -189,11 +189,6 @@ struct clk *clk_get(struct device_d *dev, const char *con_id)
 }
 EXPORT_SYMBOL(clk_get);
 
-void clk_put(struct clk *clk)
-{
-}
-EXPORT_SYMBOL(clk_put);
-
 void clkdev_add(struct clk_lookup *cl)
 {
 	if (cl->dev_id)
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 978a0a8a9..38c86e0b4 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -75,19 +75,6 @@ void clk_disable(struct clk *clk);
  */
 unsigned long clk_get_rate(struct clk *clk);
 
-/**
- * clk_put	- "free" the clock source
- * @clk: clock source
- *
- * Note: drivers must ensure that all clk_enable calls made on this
- * clock source are balanced by clk_disable calls prior to calling
- * this function.
- *
- * clk_put should not be called from within interrupt context.
- */
-void clk_put(struct clk *clk);
-
-
 /*
  * The remaining APIs are optional for machine class support.
  */
@@ -180,10 +167,6 @@ static inline unsigned long clk_get_rate(struct clk *clk)
 	return 0;
 }
 
-static inline void clk_put(struct clk *clk)
-{
-}
-
 static inline long clk_round_rate(struct clk *clk, unsigned long rate)
 {
 	return 0;
@@ -195,6 +178,10 @@ static inline int clk_set_rate(struct clk *clk, unsigned long rate)
 }
 #endif
 
+static inline void clk_put(struct clk *clk)
+{
+}
+
 #ifdef CONFIG_COMMON_CLK
 
 #include <linux/list.h>
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
