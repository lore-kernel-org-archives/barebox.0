Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSFTy-000265-8R
 for barebox@lists.infradead.org; Wed, 06 Nov 2019 07:12:01 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2019 08:11:50 +0100
Message-Id: <20191106071155.26389-5-a.fatoum@pengutronix.de>
In-Reply-To: <20191106071155.26389-1-a.fatoum@pengutronix.de>
References: <20191106071155.26389-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 05/10] regulator: import linear voltage range helpers
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, mgr@pengutronix.de

The incoming stpmic1 regulator driver makes use of these helpers
internally. Thus port them out of Linux v5.3.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/helpers.c | 186 ++++++++++++++++++++++++++++++++++++
 include/regulator.h         |  46 +++++++++
 2 files changed, 232 insertions(+)

diff --git a/drivers/regulator/helpers.c b/drivers/regulator/helpers.c
index f22d21b35d93..c4877cecf7e9 100644
--- a/drivers/regulator/helpers.c
+++ b/drivers/regulator/helpers.c
@@ -184,3 +184,189 @@ int regulator_list_voltage_linear(struct regulator_dev *rdev,
 	return rdev->desc->min_uV + (rdev->desc->uV_step * selector);
 }
 EXPORT_SYMBOL_GPL(regulator_list_voltage_linear);
+
+/**
+ * regulator_desc_list_voltage_linear_range - List voltages for linear ranges
+ *
+ * @desc: Regulator desc for regulator which volatges are to be listed
+ * @selector: Selector to convert into a voltage
+ *
+ * Regulators with a series of simple linear mappings between voltages
+ * and selectors who have set linear_ranges in the regulator descriptor
+ * can use this function prior regulator registration to list voltages.
+ * This is useful when voltages need to be listed during device-tree
+ * parsing.
+ */
+int regulator_desc_list_voltage_linear_range(const struct regulator_desc *desc,
+					     unsigned int selector)
+{
+	const struct regulator_linear_range *range;
+	int i;
+
+	if (!desc->n_linear_ranges) {
+		BUG_ON(!desc->n_linear_ranges);
+		return -EINVAL;
+	}
+
+	for (i = 0; i < desc->n_linear_ranges; i++) {
+		range = &desc->linear_ranges[i];
+
+		if (!(selector >= range->min_sel &&
+		      selector <= range->max_sel))
+			continue;
+
+		selector -= range->min_sel;
+
+		return range->min_uV + (range->uV_step * selector);
+	}
+
+	return -EINVAL;
+}
+EXPORT_SYMBOL_GPL(regulator_desc_list_voltage_linear_range);
+
+/**
+ * regulator_list_voltage_linear_range - List voltages for linear ranges
+ *
+ * @rdev: Regulator device
+ * @selector: Selector to convert into a voltage
+ *
+ * Regulators with a series of simple linear mappings between voltages
+ * and selectors can set linear_ranges in the regulator descriptor and
+ * then use this function as their list_voltage() operation,
+ */
+int regulator_list_voltage_linear_range(struct regulator_dev *rdev,
+					unsigned int selector)
+{
+	return regulator_desc_list_voltage_linear_range(rdev->desc, selector);
+}
+EXPORT_SYMBOL_GPL(regulator_list_voltage_linear_range);
+
+/**
+ * regulator_map_voltage_linear_range - map_voltage() for multiple linear ranges
+ *
+ * @rdev: Regulator to operate on
+ * @min_uV: Lower bound for voltage
+ * @max_uV: Upper bound for voltage
+ *
+ * Drivers providing linear_ranges in their descriptor can use this as
+ * their map_voltage() callback.
+ */
+int regulator_map_voltage_linear_range(struct regulator_dev *rdev,
+				       int min_uV, int max_uV)
+{
+	const struct regulator_linear_range *range;
+	int ret = -EINVAL;
+	int voltage, i;
+
+	if (!rdev->desc->n_linear_ranges) {
+		BUG_ON(!rdev->desc->n_linear_ranges);
+		return -EINVAL;
+	}
+
+	for (i = 0; i < rdev->desc->n_linear_ranges; i++) {
+		int linear_max_uV;
+
+		range = &rdev->desc->linear_ranges[i];
+		linear_max_uV = range->min_uV +
+			(range->max_sel - range->min_sel) * range->uV_step;
+
+		if (!(min_uV <= linear_max_uV && max_uV >= range->min_uV))
+			continue;
+
+		if (min_uV <= range->min_uV)
+			min_uV = range->min_uV;
+
+		/* range->uV_step == 0 means fixed voltage range */
+		if (range->uV_step == 0) {
+			ret = 0;
+		} else {
+			ret = DIV_ROUND_UP(min_uV - range->min_uV,
+					   range->uV_step);
+			if (ret < 0)
+				return ret;
+		}
+
+		ret += range->min_sel;
+
+		/*
+		 * Map back into a voltage to verify we're still in bounds.
+		 * If we are not, then continue checking rest of the ranges.
+		 */
+		voltage = rdev->desc->ops->list_voltage(rdev, ret);
+		if (voltage >= min_uV && voltage <= max_uV)
+			break;
+	}
+
+	if (i == rdev->desc->n_linear_ranges)
+		return -EINVAL;
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(regulator_map_voltage_linear_range);
+
+/**
+ * regulator_get_voltage_sel_regmap - standard get_voltage_sel for regmap users
+ *
+ * @rdev: regulator to operate on
+ *
+ * Regulators that use regmap for their register I/O can set the
+ * vsel_reg and vsel_mask fields in their descriptor and then use this
+ * as their get_voltage_vsel operation, saving some code.
+ */
+int regulator_get_voltage_sel_regmap(struct regulator_dev *rdev)
+{
+	unsigned int val;
+	int ret;
+
+	ret = regmap_read(rdev->regmap, rdev->desc->vsel_reg, &val);
+	if (ret != 0)
+		return ret;
+
+	val &= rdev->desc->vsel_mask;
+	val >>= ffs(rdev->desc->vsel_mask) - 1;
+
+	return val;
+}
+EXPORT_SYMBOL_GPL(regulator_get_voltage_sel_regmap);
+
+/**
+ * regulator_map_voltage_iterate - map_voltage() based on list_voltage()
+ *
+ * @rdev: Regulator to operate on
+ * @min_uV: Lower bound for voltage
+ * @max_uV: Upper bound for voltage
+ *
+ * Drivers implementing set_voltage_sel() and list_voltage() can use
+ * this as their map_voltage() operation.  It will find a suitable
+ * voltage by calling list_voltage() until it gets something in bounds
+ * for the requested voltages.
+ */
+int regulator_map_voltage_iterate(struct regulator_dev *rdev,
+				  int min_uV, int max_uV)
+{
+	int best_val = INT_MAX;
+	int selector = 0;
+	int i, ret;
+
+	/* Find the smallest voltage that falls within the specified
+	 * range.
+	 */
+	for (i = 0; i < rdev->desc->n_voltages; i++) {
+		ret = rdev->desc->ops->list_voltage(rdev, i);
+		if (ret < 0)
+			continue;
+
+		if (ret < best_val && ret >= min_uV && ret <= max_uV) {
+			best_val = ret;
+			selector = i;
+		}
+	}
+
+	if (best_val != INT_MAX)
+		return selector;
+	else
+		return -EINVAL;
+}
+EXPORT_SYMBOL_GPL(regulator_map_voltage_iterate);
+
+
diff --git a/include/regulator.h b/include/regulator.h
index 28ae25652a43..156acb82f8df 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -32,6 +32,7 @@ struct regulator;
  * @enable_is_inverted: A flag to indicate set enable_mask bits to disable
  *                      when using regulator_enable_regmap and friends APIs.
  */
+
 struct regulator_desc {
 	unsigned n_voltages;
 	const struct regulator_ops *ops;
@@ -49,6 +50,9 @@ struct regulator_desc {
 	unsigned int enable_val;
 	unsigned int disable_val;
 	bool enable_is_inverted;
+
+	const struct regulator_linear_range *linear_ranges;
+	int n_linear_ranges;
 };
 
 struct regulator_dev {
@@ -65,8 +69,36 @@ struct regulator_ops {
 
 	int (*list_voltage) (struct regulator_dev *, unsigned int);
 	int (*set_voltage_sel) (struct regulator_dev *, unsigned int);
+	int (*map_voltage)(struct regulator_dev *, int min_uV, int max_uV);
+};
+
+/*
+ * struct regulator_linear_range - specify linear voltage ranges
+ *
+ * Specify a range of voltages for regulator_map_linear_range() and
+ * regulator_list_linear_range().
+ *
+ * @min_uV:  Lowest voltage in range
+ * @min_sel: Lowest selector for range
+ * @max_sel: Highest selector for range
+ * @uV_step: Step size
+ */
+struct regulator_linear_range {
+	unsigned int min_uV;
+	unsigned int min_sel;
+	unsigned int max_sel;
+	unsigned int uV_step;
 };
 
+/* Initialize struct regulator_linear_range */
+#define REGULATOR_LINEAR_RANGE(_min_uV, _min_sel, _max_sel, _step_uV)	\
+{									\
+	.min_uV		= _min_uV,					\
+	.min_sel	= _min_sel,					\
+	.max_sel	= _max_sel,					\
+	.uV_step	= _step_uV,					\
+}
+
 #ifdef CONFIG_OFDEVICE
 int of_regulator_register(struct regulator_dev *rd, struct device_node *node);
 #else
@@ -93,8 +125,22 @@ int regulator_set_voltage_sel_regmap(struct regulator_dev *, unsigned);
 int regulator_set_voltage(struct regulator *regulator, int min_uV, int max_uV);
 int regulator_map_voltage_linear(struct regulator_dev *rdev,
 				 int min_uV, int max_uV);
+int regulator_map_voltage_linear_range(struct regulator_dev *rdev,
+				       int min_uV, int max_uV);
 int regulator_list_voltage_linear(struct regulator_dev *rdev,
 				  unsigned int selector);
+int regulator_list_voltage_linear_range(struct regulator_dev *rdev,
+					unsigned int selector);
+int regulator_get_voltage_sel_regmap(struct regulator_dev *rdev);
+int regulator_map_voltage_iterate(struct regulator_dev *rdev,
+				  int min_uV, int max_uV);
+
+/*
+ * Helper functions intended to be used by regulator drivers prior registering
+ * their regulators.
+ */
+int regulator_desc_list_voltage_linear_range(const struct regulator_desc *desc,
+					     unsigned int selector);
 #else
 
 static inline struct regulator *regulator_get(struct device_d *dev, const char *id)
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
