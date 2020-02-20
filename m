Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4if9-0004Km-SA
 for barebox@lists.infradead.org; Thu, 20 Feb 2020 10:02:33 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Feb 2020 11:01:06 +0100
Message-Id: <20200220100109.18147-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200220100109.18147-1-a.fatoum@pengutronix.de>
References: <20200220100109.18147-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/6] regulator: import Linux regulator_bulk API
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, mgr@pengutronix.de, rcz@pengutronix.de

Linux v5.6-rc1 contains 168 references to regultor_bulk_get, which
allows getting multiple regulators to set at once. Instead of open
coding them when porting code, port over the helpers to barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/core.c | 139 +++++++++++++++++++++++++++++++++++++++
 include/regulator.h      |  49 ++++++++++++++
 2 files changed, 188 insertions(+)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index f0de7a52e391..f459d072a987 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -397,6 +397,145 @@ int regulator_set_voltage(struct regulator *r, int min_uV, int max_uV)
 	return regulator_set_voltage_internal(r->ri, min_uV, max_uV);
 }
 
+/**
+ * regulator_bulk_get - get multiple regulator consumers
+ *
+ * @dev:           Device to supply
+ * @num_consumers: Number of consumers to register
+ * @consumers:     Configuration of consumers; clients are stored here.
+ *
+ * @return 0 on success, an errno on failure.
+ *
+ * This helper function allows drivers to get several regulator
+ * consumers in one operation.  If any of the regulators cannot be
+ * acquired then any regulators that were allocated will be freed
+ * before returning to the caller.
+ */
+int regulator_bulk_get(struct device_d *dev, int num_consumers,
+		       struct regulator_bulk_data *consumers)
+{
+	int i;
+	int ret;
+
+	for (i = 0; i < num_consumers; i++)
+		consumers[i].consumer = NULL;
+
+	for (i = 0; i < num_consumers; i++) {
+		consumers[i].consumer = regulator_get(dev,
+						      consumers[i].supply);
+		if (IS_ERR(consumers[i].consumer)) {
+			ret = PTR_ERR(consumers[i].consumer);
+			consumers[i].consumer = NULL;
+			goto err;
+		}
+	}
+
+	return 0;
+
+err:
+	if (ret != -EPROBE_DEFER)
+		dev_err(dev, "Failed to get supply '%s': %d\n",
+			consumers[i].supply, ret);
+	else
+		dev_dbg(dev, "Failed to get supply '%s', deferring\n",
+			consumers[i].supply);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(regulator_bulk_get);
+
+/**
+ * regulator_bulk_enable - enable multiple regulator consumers
+ *
+ * @num_consumers: Number of consumers
+ * @consumers:     Consumer data; clients are stored here.
+ * @return         0 on success, an errno on failure
+ *
+ * This convenience API allows consumers to enable multiple regulator
+ * clients in a single API call.  If any consumers cannot be enabled
+ * then any others that were enabled will be disabled again prior to
+ * return.
+ */
+int regulator_bulk_enable(int num_consumers,
+			  struct regulator_bulk_data *consumers)
+{
+	int ret;
+	int i;
+
+	for (i = 0; i < num_consumers; i++) {
+		ret = regulator_enable(consumers[i].consumer);
+		if (ret)
+			goto err;
+	}
+
+	return 0;
+
+err:
+	while (--i >= 0)
+		regulator_disable(consumers[i].consumer);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(regulator_bulk_enable);
+
+/**
+ * regulator_bulk_disable - disable multiple regulator consumers
+ *
+ * @num_consumers: Number of consumers
+ * @consumers:     Consumer data; clients are stored here.
+ * @return         0 on success, an errno on failure
+ *
+ * This convenience API allows consumers to disable multiple regulator
+ * clients in a single API call.  If any consumers cannot be disabled
+ * then any others that were disabled will be enabled again prior to
+ * return.
+ */
+int regulator_bulk_disable(int num_consumers,
+			   struct regulator_bulk_data *consumers)
+{
+	int i;
+	int ret, r;
+
+	for (i = num_consumers - 1; i >= 0; --i) {
+		ret = regulator_disable(consumers[i].consumer);
+		if (ret != 0)
+			goto err;
+	}
+
+	return 0;
+
+err:
+	pr_err("Failed to disable %s: %d\n", consumers[i].supply, ret);
+	for (++i; i < num_consumers; ++i) {
+		r = regulator_enable(consumers[i].consumer);
+		if (r != 0)
+			pr_err("Failed to re-enable %s: %d\n",
+			       consumers[i].supply, r);
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(regulator_bulk_disable);
+
+/**
+ * regulator_bulk_free - free multiple regulator consumers
+ *
+ * @num_consumers: Number of consumers
+ * @consumers:     Consumer data; clients are stored here.
+ *
+ * This convenience API allows consumers to free multiple regulator
+ * clients in a single API call.
+ */
+void regulator_bulk_free(int num_consumers,
+			 struct regulator_bulk_data *consumers)
+{
+	int i;
+
+	for (i = 0; i < num_consumers; i++)
+		consumers[i].consumer = NULL;
+}
+EXPORT_SYMBOL_GPL(regulator_bulk_free);
+
 static void regulator_print_one(struct regulator_internal *ri)
 {
 	struct regulator *r;
diff --git a/include/regulator.h b/include/regulator.h
index d01535df5207..dfa808d662bd 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -5,6 +5,23 @@
 /* struct regulator is an opaque object for consumers */
 struct regulator;
 
+/**
+ * struct regulator_bulk_data - Data used for bulk regulator operations.
+ *
+ * @supply:   The name of the supply.  Initialised by the user before
+ *            using the bulk regulator APIs.
+ * @consumer: The regulator consumer for the supply.  This will be managed
+ *            by the bulk API.
+ *
+ * The regulator APIs provide a series of regulator_bulk_() API calls as
+ * a convenience to consumers which require multiple supplies.  This
+ * structure is used to manage data for these calls.
+ */
+struct regulator_bulk_data {
+	const char *supply;
+	struct regulator *consumer;
+};
+
 /**
  * struct regulator_desc - Static regulator descriptor
  *
@@ -136,6 +153,14 @@ int regulator_list_voltage_linear_range(struct regulator_dev *rdev,
 int regulator_get_voltage_sel_regmap(struct regulator_dev *rdev);
 int regulator_map_voltage_iterate(struct regulator_dev *rdev,
 				  int min_uV, int max_uV);
+int regulator_bulk_get(struct device_d *dev, int num_consumers,
+		       struct regulator_bulk_data *consumers);
+int regulator_bulk_enable(int num_consumers,
+			  struct regulator_bulk_data *consumers);
+int regulator_bulk_disable(int num_consumers,
+			   struct regulator_bulk_data *consumers);
+void regulator_bulk_free(int num_consumers,
+			 struct regulator_bulk_data *consumers);
 
 /*
  * Helper functions intended to be used by regulator drivers prior registering
@@ -166,6 +191,30 @@ static inline int regulator_set_voltage(struct regulator *regulator,
 	return 0;
 }
 
+static inline int regulator_bulk_get(struct device_d *dev, int num_consumers,
+				     struct regulator_bulk_data *consumers)
+{
+	return 0;
+}
+
+static inline int regulator_bulk_enable(int num_consumers,
+					struct regulator_bulk_data *consumers)
+{
+	return 0;
+}
+
+static inline int regulator_bulk_disable(int num_consumers,
+					 struct regulator_bulk_data *consumers)
+{
+	return 0;
+}
+
+static inline void regulator_bulk_free(int num_consumers,
+				       struct regulator_bulk_data *consumers)
+{
+	return 0;
+}
+
 #endif
 
 #endif /* __REGULATOR_H */
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
