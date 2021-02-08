Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9C3J-0005FC-NI
 for barebox@lists.infradead.org; Mon, 08 Feb 2021 19:18:32 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Feb 2021 20:18:24 +0100
Message-Id: <20210208191827.19241-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/4] regulator: add regulator_get_voltage() to API
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, has@pengutronix.de

ADC drivers need to query their reference regulator's voltage to
format their raw readings. Provide regulator_get_voltage() so ADC
drivers need not hardcode a reference voltage. Regulator drivers
that don't support this (i.e. nearly everything in-tree) will
have the function return with -EINVAL.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/core.c | 27 +++++++++++++++++++++++++++
 include/regulator.h      | 21 +++++++++++++++++++++
 2 files changed, 48 insertions(+)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 6ea21a4609d5..7ced283c116c 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -176,6 +176,9 @@ int of_regulator_register(struct regulator_dev *rd, struct device_node *node)
 
 	ri->node = node;
 
+	if (rd->desc->fixed_uV && rd->desc->n_voltages == 1)
+		ri->min_uv = ri->max_uv = rd->desc->fixed_uV;
+
 	of_property_read_u32(node, "regulator-enable-ramp-delay",
 			&ri->enable_time_us);
 	of_property_read_u32(node, "regulator-min-microvolt",
@@ -539,6 +542,30 @@ void regulator_bulk_free(int num_consumers,
 }
 EXPORT_SYMBOL_GPL(regulator_bulk_free);
 
+int regulator_get_voltage(struct regulator *regulator)
+{
+	struct regulator_dev *rdev = regulator->ri->rdev;
+	int sel, ret;
+
+	if (rdev->desc->ops->get_voltage_sel) {
+		sel = rdev->desc->ops->get_voltage_sel(rdev);
+		if (sel < 0)
+			return sel;
+		ret = rdev->desc->ops->list_voltage(rdev, sel);
+	} else if (rdev->desc->ops->get_voltage) {
+		ret = rdev->desc->ops->get_voltage(rdev);
+	} else if (rdev->desc->ops->list_voltage) {
+		ret = rdev->desc->ops->list_voltage(rdev, 0);
+	} else if (rdev->desc->fixed_uV && (rdev->desc->n_voltages == 1)) {
+		ret = rdev->desc->fixed_uV;
+	} else {
+		return -EINVAL;
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(regulator_get_voltage_rdev);
+
 static void regulator_print_one(struct regulator_internal *ri)
 {
 	struct regulator *r;
diff --git a/include/regulator.h b/include/regulator.h
index 7c2a01b6875c..524e53042c92 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -51,6 +51,7 @@ struct regulator_bulk_data {
  * @disable_val: Disabling value for control when using regmap enable/disable ops
  * @enable_is_inverted: A flag to indicate set enable_mask bits to disable
  *                      when using regulator_enable_regmap and friends APIs.
+ * @fixed_uV: Fixed voltage of rails.
  */
 
 struct regulator_desc {
@@ -73,6 +74,7 @@ struct regulator_desc {
 
 	const struct regulator_linear_range *linear_ranges;
 	int n_linear_ranges;
+	int fixed_uV;
 };
 
 struct regulator_dev {
@@ -92,6 +94,9 @@ struct regulator_ops {
 	int (*list_voltage) (struct regulator_dev *, unsigned int);
 	int (*set_voltage_sel) (struct regulator_dev *, unsigned int);
 	int (*map_voltage)(struct regulator_dev *, int min_uV, int max_uV);
+
+	int (*get_voltage) (struct regulator_dev *);
+	int (*get_voltage_sel) (struct regulator_dev *);
 };
 
 /*
@@ -166,6 +171,17 @@ int regulator_bulk_disable(int num_consumers,
 void regulator_bulk_free(int num_consumers,
 			 struct regulator_bulk_data *consumers);
 
+/**
+ * regulator_get_voltage - get regulator output voltage
+ * @regulator: regulator source
+ *
+ * This returns the current regulator voltage in uV.
+ *
+ * NOTE: If the regulator is disabled it will return the voltage value. This
+ * function should not be used to determine regulator state.
+ */
+int regulator_get_voltage(struct regulator *regulator);
+
 /*
  * Helper functions intended to be used by regulator drivers prior registering
  * their regulators.
@@ -223,6 +239,11 @@ static inline void regulator_bulk_free(int num_consumers,
 {
 }
 
+static inline int regulator_get_voltage(struct regulator *regulator)
+{
+	return -EINVAL;
+}
+
 #endif
 
 #endif /* __REGULATOR_H */
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
