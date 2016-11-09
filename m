Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4VWj-0005Er-5d
 for barebox@lists.infradead.org; Wed, 09 Nov 2016 16:15:09 +0000
Received: by mail-pf0-x244.google.com with SMTP id y68so786197pfb.1
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2016 08:14:47 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Nov 2016 08:13:57 -0800
Message-Id: <1478708056-7875-10-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
References: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 09/28] clk: Port of_clk_set_defaults()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of_clk_set_defautls() from Linux kernel in order to support DT
configurations that require it (e. g. Vybrid).

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/Makefile         |   2 +-
 drivers/clk/clk-conf.c       | 144 +++++++++++++++++++++++++++++++++++++++++++
 drivers/clk/clk.c            |   2 +
 include/linux/clk/clk-conf.h |  14 +++++
 4 files changed, 161 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/clk-conf.c
 create mode 100644 include/linux/clk/clk-conf.h

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 47ed7b1..0fe8f1e 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -1,6 +1,6 @@
 obj-$(CONFIG_COMMON_CLK)	+= clk.o clk-fixed.o clk-divider.o clk-fixed-factor.o \
 				clk-mux.o clk-gate.o clk-composite.o \
-				clk-fractional-divider.o
+				clk-fractional-divider.o clk-conf.o
 obj-$(CONFIG_CLKDEV_LOOKUP)	+= clkdev.o
 
 obj-$(CONFIG_ARCH_MVEBU)	+= mvebu/
diff --git a/drivers/clk/clk-conf.c b/drivers/clk/clk-conf.c
new file mode 100644
index 0000000..961fad8
--- /dev/null
+++ b/drivers/clk/clk-conf.c
@@ -0,0 +1,144 @@
+/*
+ * Copyright (C) 2014 Samsung Electronics Co., Ltd.
+ * Sylwester Nawrocki <s.nawrocki@samsung.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <io.h>
+#include <malloc.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/clk/clk-conf.h>
+
+static int __set_clk_parents(struct device_node *node, bool clk_supplier)
+{
+	struct of_phandle_args clkspec;
+	int index, rc, num_parents;
+	struct clk *clk, *pclk;
+
+	num_parents = of_count_phandle_with_args(node, "assigned-clock-parents",
+						 "#clock-cells");
+	if (num_parents == -EINVAL)
+		pr_err("clk: invalid value of clock-parents property at %s\n",
+		       node->full_name);
+
+	for (index = 0; index < num_parents; index++) {
+		rc = of_parse_phandle_with_args(node, "assigned-clock-parents",
+					"#clock-cells",	index, &clkspec);
+		if (rc < 0) {
+			/* skip empty (null) phandles */
+			if (rc == -ENOENT)
+				continue;
+			else
+				return rc;
+		}
+		if (clkspec.np == node && !clk_supplier)
+			return 0;
+		pclk = of_clk_get_from_provider(&clkspec);
+		if (IS_ERR(pclk)) {
+			pr_warn("clk: couldn't get parent clock %d for %s\n",
+				index, node->full_name);
+			return PTR_ERR(pclk);
+		}
+
+		rc = of_parse_phandle_with_args(node, "assigned-clocks",
+					"#clock-cells", index, &clkspec);
+		if (rc < 0)
+			goto err;
+		if (clkspec.np == node && !clk_supplier) {
+			rc = 0;
+			goto err;
+		}
+		clk = of_clk_get_from_provider(&clkspec);
+		if (IS_ERR(clk)) {
+			pr_warn("clk: couldn't get parent clock %d for %s\n",
+				index, node->full_name);
+			rc = PTR_ERR(clk);
+			goto err;
+		}
+
+		rc = clk_set_parent(clk, pclk);
+		if (rc < 0)
+			pr_err("clk: failed to reparent %s to %s: %d\n",
+			       __clk_get_name(clk), __clk_get_name(pclk), rc);
+		clk_put(clk);
+		clk_put(pclk);
+	}
+	return 0;
+err:
+	clk_put(pclk);
+	return rc;
+}
+
+static int __set_clk_rates(struct device_node *node, bool clk_supplier)
+{
+	struct of_phandle_args clkspec;
+	struct property	*prop;
+	const __be32 *cur;
+	int rc, index = 0;
+	struct clk *clk;
+	u32 rate;
+
+	of_property_for_each_u32(node, "assigned-clock-rates", prop, cur, rate) {
+		if (rate) {
+			rc = of_parse_phandle_with_args(node, "assigned-clocks",
+					"#clock-cells",	index, &clkspec);
+			if (rc < 0) {
+				/* skip empty (null) phandles */
+				if (rc == -ENOENT)
+					continue;
+				else
+					return rc;
+			}
+			if (clkspec.np == node && !clk_supplier)
+				return 0;
+
+			clk = of_clk_get_from_provider(&clkspec);
+			if (IS_ERR(clk)) {
+				pr_warn("clk: couldn't get clock %d for %s\n",
+					index, node->full_name);
+				return PTR_ERR(clk);
+			}
+
+			rc = clk_set_rate(clk, rate);
+			if (rc < 0)
+				pr_err("clk: couldn't set %s clk rate to %d (%d), current rate: %ld\n",
+				       __clk_get_name(clk), rate, rc,
+				       clk_get_rate(clk));
+			clk_put(clk);
+		}
+		index++;
+	}
+	return 0;
+}
+
+/**
+ * of_clk_set_defaults() - parse and set assigned clocks configuration
+ * @node: device node to apply clock settings for
+ * @clk_supplier: true if clocks supplied by @node should also be considered
+ *
+ * This function parses 'assigned-{clocks/clock-parents/clock-rates}' properties
+ * and sets any specified clock parents and rates. The @clk_supplier argument
+ * should be set to true if @node may be also a clock supplier of any clock
+ * listed in its 'assigned-clocks' or 'assigned-clock-parents' properties.
+ * If @clk_supplier is false the function exits returning 0 as soon as it
+ * determines the @node is also a supplier of any of the clocks.
+ */
+int of_clk_set_defaults(struct device_node *node, bool clk_supplier)
+{
+	int rc;
+
+	if (!node)
+		return 0;
+
+	rc = __set_clk_parents(node, clk_supplier);
+	if (rc < 0)
+		return rc;
+
+	return __set_clk_rates(node, clk_supplier);
+}
+EXPORT_SYMBOL_GPL(of_clk_set_defaults);
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index a38f339..28a1be5 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -19,6 +19,7 @@
 #include <malloc.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <linux/clk/clk-conf.h>
 
 static LIST_HEAD(clks);
 
@@ -525,6 +526,7 @@ int of_clk_init(struct device_node *root, const struct of_device_id *matches)
 			if (force || parent_ready(clk_provider->np)) {
 
 				clk_provider->clk_init_cb(clk_provider->np);
+				of_clk_set_defaults(clk_provider->np, true);
 
 				list_del(&clk_provider->node);
 				free(clk_provider);
diff --git a/include/linux/clk/clk-conf.h b/include/linux/clk/clk-conf.h
new file mode 100644
index 0000000..0b8a973
--- /dev/null
+++ b/include/linux/clk/clk-conf.h
@@ -0,0 +1,14 @@
+/*
+ * Copyright (C) 2014 Samsung Electronics Co., Ltd.
+ * Sylwester Nawrocki <s.nawrocki@samsung.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <linux/types.h>
+
+struct device_node;
+int of_clk_set_defaults(struct device_node *node, bool clk_supplier);
+
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
