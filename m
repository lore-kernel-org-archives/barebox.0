Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1Wb-0007av-5J
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:54:45 +0000
Received: by mail-pf0-x243.google.com with SMTP id j5so18949696pfb.3
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:22 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:22 -0800
Message-Id: <20170306225356.31475-12-andrew.smirnov@gmail.com>
In-Reply-To: <20170306225356.31475-1-andrew.smirnov@gmail.com>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/45] clk: Make COMMON_CLK_OF_PROVIDER depend on OFTREE
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Make COMMON_CLK_OF_PROVIDER depend on OFTREE, this way checking for:

	defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK_OF_PROVIDER)

can be simplified to just:

	defined(CONFIG_COMMON_CLK_OF_PROVIDER)

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/Kconfig            | 1 +
 drivers/clk/clk-fixed-factor.c | 2 +-
 drivers/clk/clk-fixed.c        | 2 +-
 drivers/clk/clk.c              | 2 +-
 drivers/clk/clkdev.c           | 2 +-
 include/linux/clk.h            | 2 +-
 6 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index 1cf0ccb..dedbf6c 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -10,6 +10,7 @@ config COMMON_CLK
 
 config COMMON_CLK_OF_PROVIDER
 	bool
+	depends on OFTREE
 	help
 	  Clock driver provides OF-Tree based clock lookup.
 
diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
index 40b63d6..a3dbf33 100644
--- a/drivers/clk/clk-fixed-factor.c
+++ b/drivers/clk/clk-fixed-factor.c
@@ -93,7 +93,7 @@ struct clk *clk_fixed_factor(const char *name,
 	return &f->clk;
 }
 
-#if defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK_OF_PROVIDER)
+#if defined(CONFIG_COMMON_CLK_OF_PROVIDER)
 /**
  * of_fixed_factor_clk_setup() - Setup function for simple fixed factor clock
  */
diff --git a/drivers/clk/clk-fixed.c b/drivers/clk/clk-fixed.c
index 8164005..f0f7fba 100644
--- a/drivers/clk/clk-fixed.c
+++ b/drivers/clk/clk-fixed.c
@@ -55,7 +55,7 @@ struct clk *clk_fixed(const char *name, int rate)
 	return &fix->clk;
 }
 
-#if defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK_OF_PROVIDER)
+#if defined(CONFIG_COMMON_CLK_OF_PROVIDER)
 /**
  * of_fixed_clk_setup() - Setup function for simple fixed rate clock
  */
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 9189521..5bb147e 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -346,7 +346,7 @@ int clk_parent_set_rate(struct clk *clk, unsigned long rate,
 	return clk_set_rate(clk_get_parent(clk), rate);
 }
 
-#if defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK_OF_PROVIDER)
+#if defined(CONFIG_COMMON_CLK_OF_PROVIDER)
 /**
  * struct of_clk_provider - Clock provider registration structure
  * @link: Entry in global list of clock providers
diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index 1bc5c6d..7f9f8f2 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -24,7 +24,7 @@
 
 static LIST_HEAD(clocks);
 
-#if defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK_OF_PROVIDER)
+#if defined(CONFIG_COMMON_CLK_OF_PROVIDER)
 struct clk *of_clk_get(struct device_node *np, int index)
 {
 	struct of_phandle_args clkspec;
diff --git a/include/linux/clk.h b/include/linux/clk.h
index f73b029..a061398 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -329,7 +329,7 @@ const struct of_device_id __clk_of_table_##name				\
 __attribute__ ((unused,section (".__clk_of_table"))) \
 	= { .compatible = compat, .data = fn }
 
-#if defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK_OF_PROVIDER)
+#if defined(CONFIG_COMMON_CLK_OF_PROVIDER)
 int of_clk_add_provider(struct device_node *np,
 			struct clk *(*clk_src_get)(struct of_phandle_args *args,
 						   void *data),
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
