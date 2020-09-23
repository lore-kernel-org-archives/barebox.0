Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL0gy-0004AY-Uf
 for barebox@lists.infradead.org; Wed, 23 Sep 2020 09:04:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2020 11:03:57 +0200
Message-Id: <20200923090358.26942-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] clk: Add clk_bulk_[get|put]_all()
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-bulk.c | 80 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/clk.h    | 42 ++++++++++++++++++++++
 2 files changed, 122 insertions(+)

diff --git a/drivers/clk/clk-bulk.c b/drivers/clk/clk-bulk.c
index ddbe32f9c2..b8db60dcbc 100644
--- a/drivers/clk/clk-bulk.c
+++ b/drivers/clk/clk-bulk.c
@@ -53,6 +53,86 @@ err:
 }
 EXPORT_SYMBOL(clk_bulk_get);
 
+static int __must_check of_clk_bulk_get(struct device_node *np, int num_clks,
+					struct clk_bulk_data *clks)
+{
+	int ret;
+	int i;
+
+	for (i = 0; i < num_clks; i++) {
+		clks[i].id = NULL;
+		clks[i].clk = NULL;
+	}
+
+	for (i = 0; i < num_clks; i++) {
+		of_property_read_string_index(np, "clock-names", i, &clks[i].id);
+		clks[i].clk = of_clk_get(np, i);
+		if (IS_ERR(clks[i].clk)) {
+			ret = PTR_ERR(clks[i].clk);
+			pr_err("%pOF: Failed to get clk index: %d ret: %d\n",
+				np, i, ret);
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
+
+static int __must_check of_clk_bulk_get_all(struct device_node *np,
+					    struct clk_bulk_data **clks)
+{
+	struct clk_bulk_data *clk_bulk;
+	int num_clks;
+	int ret;
+
+	num_clks = of_clk_get_parent_count(np);
+	if (!num_clks)
+		return 0;
+
+	clk_bulk = kmalloc_array(num_clks, sizeof(*clk_bulk), GFP_KERNEL);
+	if (!clk_bulk)
+		return -ENOMEM;
+
+	ret = of_clk_bulk_get(np, num_clks, clk_bulk);
+	if (ret) {
+		kfree(clk_bulk);
+		return ret;
+	}
+
+	*clks = clk_bulk;
+
+	return num_clks;
+}
+
+void clk_bulk_put_all(int num_clks, struct clk_bulk_data *clks)
+{
+	if (IS_ERR_OR_NULL(clks))
+		return;
+
+	clk_bulk_put(num_clks, clks);
+
+	kfree(clks);
+}
+EXPORT_SYMBOL(clk_bulk_put_all);
+
+int __must_check clk_bulk_get_all(struct device_d *dev,
+				  struct clk_bulk_data **clks)
+{
+	struct device_node *np = dev->device_node;
+
+	if (!np)
+		return 0;
+
+	return of_clk_bulk_get_all(np, clks);
+}
+EXPORT_SYMBOL(clk_bulk_get_all);
+
 /**
  * clk_bulk_disable - gate a set of clocks
  * @num_clks: the number of clk_bulk_data
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 3d66343e8d..86056d1c0f 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -82,6 +82,27 @@ struct clk *clk_get(struct device_d *dev, const char *id);
 int __must_check clk_bulk_get(struct device_d *dev, int num_clks,
 			      struct clk_bulk_data *clks);
 
+/**
+ * clk_bulk_get_all - lookup and obtain all available references to clock
+ *                    producer.
+ * @dev: device for clock "consumer"
+ * @clks: pointer to the clk_bulk_data table of consumer
+ *
+ * This helper function allows drivers to get all clk consumers in one
+ * operation. If any of the clk cannot be acquired then any clks
+ * that were obtained will be freed before returning to the caller.
+ *
+ * Returns a positive value for the number of clocks obtained while the
+ * clock references are stored in the clk_bulk_data table in @clks field.
+ * Returns 0 if there're none and a negative value if something failed.
+ *
+ * Drivers must assume that the clock source is not enabled.
+ *
+ * clk_bulk_get should not be called from within interrupt context.
+ */
+int __must_check clk_bulk_get_all(struct device_d *dev,
+				  struct clk_bulk_data **clks);
+
 /**
  * clk_enable - inform the system when the clock source should be running.
  * @clk: clock source
@@ -156,6 +177,19 @@ unsigned long clk_get_rate(struct clk *clk);
  */
 void clk_bulk_put(int num_clks, struct clk_bulk_data *clks);
 
+/**
+ * clk_bulk_put_all - "free" all the clock source
+ * @num_clks: the number of clk_bulk_data
+ * @clks: the clk_bulk_data table of consumer
+ *
+ * Note: drivers must ensure that all clk_bulk_enable calls made on this
+ * clock source are balanced by clk_bulk_disable calls prior to calling
+ * this function.
+ *
+ * clk_bulk_put_all should not be called from within interrupt context.
+ */
+void clk_bulk_put_all(int num_clks, struct clk_bulk_data *clks);
+
 /*
  * The remaining APIs are optional for machine class support.
  */
@@ -240,8 +274,16 @@ static inline int __must_check clk_bulk_get(struct device_d *dev, int num_clks,
 	return 0;
 }
 
+static inline int __must_check clk_bulk_get_all(struct device *dev,
+						struct clk_bulk_data **clks)
+{
+	return 0;
+}
+
 static inline void clk_bulk_put(int num_clks, struct clk_bulk_data *clks) {}
 
+static inline void clk_bulk_put_all(int num_clks, struct clk_bulk_data *clks) {}
+
 static inline int clk_enable(struct clk *clk)
 {
 	return 0;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
