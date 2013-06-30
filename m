Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UtOqd-0002Z4-Gh
 for barebox@lists.infradead.org; Sun, 30 Jun 2013 21:07:55 +0000
Received: from tellur.localdomain (p54832945.dip0.t-ipconnect.de
 [84.131.41.69]) by lynxeye.de (Postfix) with ESMTPA id 0654918B424F
 for <barebox@lists.infradead.org>; Sun, 30 Jun 2013 23:06:51 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 30 Jun 2013 23:08:43 +0200
Message-Id: <1372626529-23443-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 1/7] clk: add clock lookup from devicetree
To: barebox@lists.infradead.org

Taken from the Linuxkernel with some small adjustments for barebox.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
v2: introduce new Kconfig symbol COMMON_CLK_OF_PROVIDER to avoid
    increased binary size for systems not using OF clk.
---
 drivers/clk/Kconfig  |  5 +++
 drivers/clk/clk.c    | 97 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/clk/clkdev.c | 74 +++++++++++++++++++++++++++++++++++++++
 include/linux/clk.h  | 33 ++++++++++++++++++
 4 files changed, 209 insertions(+)

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index 4589128..a00e539 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -4,3 +4,8 @@ config CLKDEV_LOOKUP
 
 config COMMON_CLK
 	bool
+
+config COMMON_CLK_OF_PROVIDER
+	bool
+	help
+	 Clock driver provides OF-Tree based clock lookup.
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 690a0c6..7ec3d93 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -16,6 +16,7 @@
  */
 #include <common.h>
 #include <errno.h>
+#include <malloc.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 
@@ -253,6 +254,102 @@ int clk_is_enabled_always(struct clk *clk)
 	return 1;
 }
 
+#if defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK_OF_PROVIDER)
+/**
+ * struct of_clk_provider - Clock provider registration structure
+ * @link: Entry in global list of clock providers
+ * @node: Pointer to device tree node of clock provider
+ * @get: Get clock callback.  Returns NULL or a struct clk for the
+ *       given clock specifier
+ * @data: context pointer to be passed into @get callback
+ */
+struct of_clk_provider {
+	struct list_head link;
+
+	struct device_node *node;
+	struct clk *(*get)(struct of_phandle_args *clkspec, void *data);
+	void *data;
+};
+
+static LIST_HEAD(of_clk_providers);
+
+struct clk *of_clk_src_onecell_get(struct of_phandle_args *clkspec, void *data)
+{
+	struct clk_onecell_data *clk_data = data;
+	unsigned int idx = clkspec->args[0];
+
+	if (idx >= clk_data->clk_num) {
+		pr_err("%s: invalid clock index %d\n", __func__, idx);
+		return ERR_PTR(-EINVAL);
+	}
+
+	return clk_data->clks[idx];
+}
+EXPORT_SYMBOL_GPL(of_clk_src_onecell_get);
+
+/**
+ * of_clk_add_provider() - Register a clock provider for a node
+ * @np: Device node pointer associated with clock provider
+ * @clk_src_get: callback for decoding clock
+ * @data: context pointer for @clk_src_get callback.
+ */
+int of_clk_add_provider(struct device_node *np,
+			struct clk *(*clk_src_get)(struct of_phandle_args *clkspec,
+						   void *data),
+			void *data)
+{
+	struct of_clk_provider *cp;
+
+	cp = kzalloc(sizeof(struct of_clk_provider), GFP_KERNEL);
+	if (!cp)
+		return -ENOMEM;
+
+	cp->node = np;
+	cp->data = data;
+	cp->get = clk_src_get;
+
+	list_add(&cp->link, &of_clk_providers);
+	pr_debug("Added clock from %s\n", np->full_name);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_clk_add_provider);
+
+/**
+ * of_clk_del_provider() - Remove a previously registered clock provider
+ * @np: Device node pointer associated with clock provider
+ */
+void of_clk_del_provider(struct device_node *np)
+{
+	struct of_clk_provider *cp;
+
+	list_for_each_entry(cp, &of_clk_providers, link) {
+		if (cp->node == np) {
+			list_del(&cp->link);
+			kfree(cp);
+			break;
+		}
+	}
+}
+EXPORT_SYMBOL_GPL(of_clk_del_provider);
+
+struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec)
+{
+	struct of_clk_provider *provider;
+	struct clk *clk = ERR_PTR(-ENOENT);
+
+	/* Check if we have such a provider in our array */
+	list_for_each_entry(provider, &of_clk_providers, link) {
+		if (provider->node == clkspec->np)
+			clk = provider->get(clkspec, provider->data);
+		if (!IS_ERR(clk))
+			break;
+	}
+
+	return clk;
+}
+#endif
+
 static void dump_one(struct clk *clk, int verbose, int indent)
 {
 	struct clk *c;
diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index 256927e..66cd832 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -19,10 +19,80 @@
 #include <linux/clkdev.h>
 #include <init.h>
 #include <malloc.h>
+#include <of.h>
 #include <stdio.h>
 
 static LIST_HEAD(clocks);
 
+#if defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK_OF_PROVIDER)
+struct clk *of_clk_get(struct device_node *np, int index)
+{
+	struct of_phandle_args clkspec;
+	struct clk *clk;
+	int rc;
+
+	if (index < 0)
+		return ERR_PTR(-EINVAL);
+
+	rc = of_parse_phandle_with_args(np, "clocks", "#clock-cells", index,
+					&clkspec);
+	if (rc)
+		return ERR_PTR(rc);
+
+	clk = of_clk_get_from_provider(&clkspec);
+	return clk;
+}
+EXPORT_SYMBOL(of_clk_get);
+
+/**
+ * of_clk_get_by_name() - Parse and lookup a clock referenced by a device node
+ * @np: pointer to clock consumer node
+ * @name: name of consumer's clock input, or NULL for the first clock reference
+ *
+ * This function parses the clocks and clock-names properties,
+ * and uses them to look up the struct clk from the registered list of clock
+ * providers.
+ */
+struct clk *of_clk_get_by_name(struct device_node *np, const char *name)
+{
+	struct clk *clk = ERR_PTR(-ENOENT);
+
+	/* Walk up the tree of devices looking for a clock that matches */
+	while (np) {
+		int index = 0;
+
+		/*
+		 * For named clocks, first look up the name in the
+		 * "clock-names" property.  If it cannot be found, then
+		 * index will be an error code, and of_clk_get() will fail.
+		 */
+		if (name)
+			index = of_property_match_string(np, "clock-names",
+							 name);
+		clk = of_clk_get(np, index);
+		if (!IS_ERR(clk))
+			break;
+		else if (name && index >= 0) {
+			pr_err("ERROR: could not get clock %s:%s(%i)\n",
+				np->full_name, name ? name : "", index);
+			return clk;
+		}
+
+		/*
+		 * No matching clock found on this node.  If the parent node
+		 * has a "clock-ranges" property, then we can try one of its
+		 * clocks.
+		 */
+		np = np->parent;
+		if (np && !of_get_property(np, "clock-ranges", NULL))
+			break;
+	}
+
+	return clk;
+}
+EXPORT_SYMBOL(of_clk_get_by_name);
+#endif
+
 /*
  * Find the correct struct clk for the device and connection ID.
  * We do slightly fuzzy matching here:
@@ -109,6 +179,10 @@ struct clk *clk_get(struct device_d *dev, const char *con_id)
 	if (!IS_ERR(clk))
 		return clk;
 
+	clk = of_clk_get_by_name(dev->device_node, con_id);
+		if (!IS_ERR(clk))
+			return clk;
+
 	return clk_get_sys(dev_id, con_id);
 }
 EXPORT_SYMBOL(clk_get);
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 38832ba..1cb661e 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -11,6 +11,8 @@
 #ifndef __LINUX_CLK_H
 #define __LINUX_CLK_H
 
+#include <linux/err.h>
+
 struct device_d;
 
 /*
@@ -228,4 +230,35 @@ void clk_dump(int verbose);
 
 #endif
 
+struct device_node;
+struct of_phandle_args;
+
+#if defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK_OF_PROVIDER)
+int of_clk_add_provider(struct device_node *np,
+			struct clk *(*clk_src_get)(struct of_phandle_args *args,
+						   void *data),
+			void *data);
+void of_clk_del_provider(struct device_node *np);
+
+struct clk_onecell_data {
+	struct clk **clks;
+	unsigned int clk_num;
+};
+struct clk *of_clk_src_onecell_get(struct of_phandle_args *clkspec, void *data);
+
+struct clk *of_clk_get(struct device_node *np, int index);
+struct clk *of_clk_get_by_name(struct device_node *np, const char *name);
+struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec);
+#else
+static inline struct clk *of_clk_get(struct device_node *np, int index)
+{
+	return ERR_PTR(-ENOENT);
+}
+static inline struct clk *of_clk_get_by_name(struct device_node *np,
+					     const char *name)
+{
+	return ERR_PTR(-ENOENT);
+}
+#endif
+
 #endif
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
