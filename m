Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1Wc-0007au-1s
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:54:46 +0000
Received: by mail-pg0-x244.google.com with SMTP id 77so8239661pgc.0
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:21 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:21 -0800
Message-Id: <20170306225356.31475-11-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/45] clk: Port two helper functions from Linux
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of_clk_get_parent_count() and of_clk_parent_fill() from Linux.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/clk.c   | 39 +++++++++++++++++++++++++++++++++++++++
 include/linux/clk.h |  3 +++
 2 files changed, 42 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 93e000c..9189521 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -452,6 +452,24 @@ struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec)
 	return clk;
 }
 
+/**
+ * of_clk_get_parent_count() - Count the number of clocks a device node has
+ * @np: device node to count
+ *
+ * Returns: The number of clocks that are possible parents of this node
+ */
+unsigned int of_clk_get_parent_count(struct device_node *np)
+{
+	int count;
+
+	count = of_count_phandle_with_args(np, "clocks", "#clock-cells");
+	if (count < 0)
+		return 0;
+
+	return count;
+}
+EXPORT_SYMBOL_GPL(of_clk_get_parent_count);
+
 char *of_clk_get_parent_name(struct device_node *np, unsigned int index)
 {
 	struct of_phandle_args clkspec;
@@ -472,6 +490,27 @@ char *of_clk_get_parent_name(struct device_node *np, unsigned int index)
 }
 EXPORT_SYMBOL_GPL(of_clk_get_parent_name);
 
+/**
+ * of_clk_parent_fill() - Fill @parents with names of @np's parents and return
+ * number of parents
+ * @np: Device node pointer associated with clock provider
+ * @parents: pointer to char array that hold the parents' names
+ * @size: size of the @parents array
+ *
+ * Return: number of parents for the clock node.
+ */
+int of_clk_parent_fill(struct device_node *np, const char **parents,
+		       unsigned int size)
+{
+	unsigned int i = 0;
+
+	while (i < size && (parents[i] = of_clk_get_parent_name(np, i)) != NULL)
+		i++;
+
+	return i;
+}
+EXPORT_SYMBOL_GPL(of_clk_parent_fill);
+
 struct clock_provider {
 	of_clk_init_cb_t clk_init_cb;
 	struct device_node *np;
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 7dd5238..f73b029 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -348,7 +348,10 @@ struct clk *of_clk_src_simple_get(struct of_phandle_args *clkspec, void *data);
 struct clk *of_clk_get(struct device_node *np, int index);
 struct clk *of_clk_get_by_name(struct device_node *np, const char *name);
 struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec);
+unsigned int of_clk_get_parent_count(struct device_node *np);
 char *of_clk_get_parent_name(struct device_node *np, unsigned int index);
+int of_clk_parent_fill(struct device_node *np, const char **parents,
+		       unsigned int size);
 int of_clk_init(struct device_node *root, const struct of_device_id *matches);
 #else
 static inline struct clk *of_clk_get(struct device_node *np, int index)
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
