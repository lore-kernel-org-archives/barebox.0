Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKW-0003Qu-Rf
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:30:19 +0000
Received: by mail-pf1-x444.google.com with SMTP id s22so11495809pfh.4
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:30:08 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:26 -0800
Message-Id: <20190220072930.14300-22-andrew.smirnov@gmail.com>
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
Subject: [PATCH 21/25] clk: Import a subset of clk_bulk API from Linux
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Import a subset of clk_bulk API from Linux to support porting kernel
code that uses it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/Makefile   |   3 +-
 drivers/clk/clk-bulk.c | 102 +++++++++++++++++++++++++++++++++++++++++
 include/linux/clk.h    |  98 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 202 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/clk-bulk.c

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index cd4026c94..34c44fff9 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -1,7 +1,8 @@
 obj-$(CONFIG_COMMON_CLK)	+= clk.o clk-fixed.o clk-divider.o clk-fixed-factor.o \
 				clk-mux.o clk-gate.o clk-composite.o \
 				clk-fractional-divider.o clk-conf.o \
-				clk-gate-shared.o clk-gpio.o
+				clk-gate-shared.o clk-gpio.o \
+				clk-bulk.o
 obj-$(CONFIG_CLKDEV_LOOKUP)	+= clkdev.o
 
 obj-$(CONFIG_ARCH_MVEBU)	+= mvebu/
diff --git a/drivers/clk/clk-bulk.c b/drivers/clk/clk-bulk.c
new file mode 100644
index 000000000..ddbe32f9c
--- /dev/null
+++ b/drivers/clk/clk-bulk.c
@@ -0,0 +1,102 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2017 NXP
+ *
+ * Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <malloc.h>
+#include <stringlist.h>
+#include <complete.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/clk/clk-conf.h>
+
+void clk_bulk_put(int num_clks, struct clk_bulk_data *clks)
+{
+	while (--num_clks >= 0) {
+		clk_put(clks[num_clks].clk);
+		clks[num_clks].clk = NULL;
+	}
+}
+EXPORT_SYMBOL_GPL(clk_bulk_put);
+
+int __must_check clk_bulk_get(struct device_d *dev, int num_clks,
+			      struct clk_bulk_data *clks)
+{
+	int ret;
+	int i;
+
+	for (i = 0; i < num_clks; i++)
+		clks[i].clk = NULL;
+
+	for (i = 0; i < num_clks; i++) {
+		clks[i].clk = clk_get(dev, clks[i].id);
+		if (IS_ERR(clks[i].clk)) {
+			ret = PTR_ERR(clks[i].clk);
+			if (ret != -EPROBE_DEFER)
+				dev_err(dev, "Failed to get clk '%s': %d\n",
+					clks[i].id, ret);
+			clks[i].clk = NULL;
+			goto err;
+		}
+	}
+
+	return 0;
+
+err:
+	clk_bulk_put(i, clks);
+
+	return ret;
+}
+EXPORT_SYMBOL(clk_bulk_get);
+
+/**
+ * clk_bulk_disable - gate a set of clocks
+ * @num_clks: the number of clk_bulk_data
+ * @clks: the clk_bulk_data table being gated
+ *
+ * clk_bulk_disable must not sleep, which differentiates it from
+ * clk_bulk_unprepare. clk_bulk_disable must be called before
+ * clk_bulk_unprepare.
+ */
+void clk_bulk_disable(int num_clks, const struct clk_bulk_data *clks)
+{
+
+	while (--num_clks >= 0)
+		clk_disable(clks[num_clks].clk);
+}
+EXPORT_SYMBOL_GPL(clk_bulk_disable);
+
+/**
+ * clk_bulk_enable - ungate a set of clocks
+ * @num_clks: the number of clk_bulk_data
+ * @clks: the clk_bulk_data table being ungated
+ *
+ * clk_bulk_enable must not sleep
+ * Returns 0 on success, -EERROR otherwise.
+ */
+int __must_check clk_bulk_enable(int num_clks, const struct clk_bulk_data *clks)
+{
+	int ret;
+	int i;
+
+	for (i = 0; i < num_clks; i++) {
+		ret = clk_enable(clks[i].clk);
+		if (ret) {
+			pr_err("Failed to enable clk '%s': %d\n",
+				clks[i].id, ret);
+			goto err;
+		}
+	}
+
+	return 0;
+
+err:
+	clk_bulk_disable(i, clks);
+
+	return  ret;
+}
+EXPORT_SYMBOL_GPL(clk_bulk_enable);
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 38c86e0b4..961fc89ba 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -25,6 +25,22 @@ struct device_d;
  */
 struct clk;
 
+/**
+ * struct clk_bulk_data - Data used for bulk clk operations.
+ *
+ * @id: clock consumer ID
+ * @clk: struct clk * to store the associated clock
+ *
+ * The CLK APIs provide a series of clk_bulk_() API calls as
+ * a convenience to consumers which require multiple clks.  This
+ * structure is used to manage data for these calls.
+ */
+struct clk_bulk_data {
+	const char		*id;
+	struct clk		*clk;
+};
+
+
 #ifdef CONFIG_HAVE_CLK
 
 /**
@@ -44,6 +60,29 @@ struct clk;
  */
 struct clk *clk_get(struct device_d *dev, const char *id);
 
+/**
+ * clk_bulk_get - lookup and obtain a number of references to clock producer.
+ * @dev: device for clock "consumer"
+ * @num_clks: the number of clk_bulk_data
+ * @clks: the clk_bulk_data table of consumer
+ *
+ * This helper function allows drivers to get several clk consumers in one
+ * operation. If any of the clk cannot be acquired then any clks
+ * that were obtained will be freed before returning to the caller.
+ *
+ * Returns 0 if all clocks specified in clk_bulk_data table are obtained
+ * successfully, or valid IS_ERR() condition containing errno.
+ * The implementation uses @dev and @clk_bulk_data.id to determine the
+ * clock consumer, and thereby the clock producer.
+ * The clock returned is stored in each @clk_bulk_data.clk field.
+ *
+ * Drivers must assume that the clock source is not enabled.
+ *
+ * clk_bulk_get should not be called from within interrupt context.
+ */
+int __must_check clk_bulk_get(struct device_d *dev, int num_clks,
+			      struct clk_bulk_data *clks);
+
 /**
  * clk_enable - inform the system when the clock source should be running.
  * @clk: clock source
@@ -54,6 +93,18 @@ struct clk *clk_get(struct device_d *dev, const char *id);
  */
 int clk_enable(struct clk *clk);
 
+/**
+ * clk_bulk_enable - inform the system when the set of clks should be running.
+ * @num_clks: the number of clk_bulk_data
+ * @clks: the clk_bulk_data table of consumer
+ *
+ * May be called from atomic contexts.
+ *
+ * Returns success (0) or negative errno.
+ */
+int __must_check clk_bulk_enable(int num_clks,
+				 const struct clk_bulk_data *clks);
+
 /**
  * clk_disable - inform the system when the clock source is no longer required.
  * @clk: clock source
@@ -68,6 +119,24 @@ int clk_enable(struct clk *clk);
  */
 void clk_disable(struct clk *clk);
 
+/**
+ * clk_bulk_disable - inform the system when the set of clks is no
+ *		      longer required.
+ * @num_clks: the number of clk_bulk_data
+ * @clks: the clk_bulk_data table of consumer
+ *
+ * Inform the system that a set of clks is no longer required by
+ * a driver and may be shut down.
+ *
+ * May be called from atomic contexts.
+ *
+ * Implementation detail: if the set of clks is shared between
+ * multiple drivers, clk_bulk_enable() calls must be balanced by the
+ * same number of clk_bulk_disable() calls for the clock source to be
+ * disabled.
+ */
+void clk_bulk_disable(int num_clks, const struct clk_bulk_data *clks);
+
 /**
  * clk_get_rate - obtain the current clock rate (in Hz) for a clock source.
  *		  This is only valid once the clock source has been enabled.
@@ -75,6 +144,19 @@ void clk_disable(struct clk *clk);
  */
 unsigned long clk_get_rate(struct clk *clk);
 
+/**
+ * clk_bulk_put	- "free" the clock source
+ * @num_clks: the number of clk_bulk_data
+ * @clks: the clk_bulk_data table of consumer
+ *
+ * Note: drivers must ensure that all clk_bulk_enable calls made on this
+ * clock source are balanced by clk_bulk_disable calls prior to calling
+ * this function.
+ *
+ * clk_bulk_put should not be called from within interrupt context.
+ */
+void clk_bulk_put(int num_clks, struct clk_bulk_data *clks);
+
 /*
  * The remaining APIs are optional for machine class support.
  */
@@ -153,15 +235,31 @@ static inline struct clk *clk_get(struct device_d *dev, const char *id)
 	return NULL;
 }
 
+static inline int __must_check clk_bulk_get(struct device_d *dev, int num_clks,
+					    struct clk_bulk_data *clks)
+{
+	return 0;
+}
+
+static inline void clk_bulk_put(int num_clks, struct clk_bulk_data *clks) {}
+
 static inline int clk_enable(struct clk *clk)
 {
 	return 0;
 }
 
+static inline int __must_check clk_bulk_enable(int num_clks, struct clk_bulk_data *clks)
+{
+	return 0;
+}
+
 static inline void clk_disable(struct clk *clk)
 {
 }
 
+static inline void clk_bulk_disable(int num_clks,
+				    struct clk_bulk_data *clks) {}
+
 static inline unsigned long clk_get_rate(struct clk *clk)
 {
 	return 0;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
