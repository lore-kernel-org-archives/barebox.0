Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjxFH-0006V8-84
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 02:17:30 +0000
Received: by mail-pg1-x542.google.com with SMTP id d72so3690830pga.9
 for <barebox@lists.infradead.org>; Wed, 16 Jan 2019 18:17:27 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 Jan 2019 18:16:46 -0800
Message-Id: <20190117021700.4443-4-andrew.smirnov@gmail.com>
In-Reply-To: <20190117021700.4443-1-andrew.smirnov@gmail.com>
References: <20190117021700.4443-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 03/17] regulator: Add support for setting regulator's
 voltage
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code needed to implement regulator_set_voltage(). Currently only
bare minmum needed for ANATOP driver (added in follow up commit) is
supported.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/regulator/core.c    | 44 +++++++++++++++++
 drivers/regulator/helpers.c | 99 +++++++++++++++++++++++++++++++++++++
 include/regulator.h         | 24 +++++++++
 3 files changed, 167 insertions(+)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index bcfbda62e3..795dcdb8c1 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -43,6 +43,15 @@ struct regulator {
 	struct device_d *dev;
 };
 
+static int regulator_map_voltage(struct regulator_dev *rdev, int min_uV,
+				 int max_uV)
+{
+	if (rdev->desc->ops->list_voltage == regulator_list_voltage_linear)
+		return regulator_map_voltage_linear(rdev, min_uV, max_uV);
+
+	return -ENOSYS;
+}
+
 static int regulator_enable_internal(struct regulator_internal *ri)
 {
 	int ret;
@@ -86,6 +95,33 @@ static int regulator_disable_internal(struct regulator_internal *ri)
 	return 0;
 }
 
+static int regulator_set_voltage_internal(struct regulator_internal *ri,
+					  int min_uV, int max_uV)
+{
+	struct regulator_dev *rdev = ri->rdev;
+	const struct regulator_ops *ops = rdev->desc->ops;
+	unsigned int selector;
+	int best_val = 0;
+	int ret;
+
+	if (ops->set_voltage_sel) {
+		ret = regulator_map_voltage(rdev, min_uV, max_uV);
+		if (ret >= 0) {
+			best_val = ops->list_voltage(rdev, ret);
+			if (min_uV <= best_val && max_uV >= best_val) {
+				selector = ret;
+				ret = ops->set_voltage_sel(rdev, selector);
+			} else {
+				ret = -EINVAL;
+			}
+		}
+
+		return ret;
+	}
+
+	return -ENOSYS;
+}
+
 static struct regulator_internal * __regulator_register(struct regulator_dev *rd, const char *name)
 {
 	struct regulator_internal *ri;
@@ -320,6 +356,14 @@ int regulator_disable(struct regulator *r)
 	return regulator_disable_internal(r->ri);
 }
 
+int regulator_set_voltage(struct regulator *r, int min_uV, int max_uV)
+{
+	if (!r)
+		return 0;
+
+	return regulator_set_voltage_internal(r->ri, min_uV, max_uV);
+}
+
 static void regulator_print_one(struct regulator_internal *ri)
 {
 	struct regulator *r;
diff --git a/drivers/regulator/helpers.c b/drivers/regulator/helpers.c
index 4495b4403f..f22d21b35d 100644
--- a/drivers/regulator/helpers.c
+++ b/drivers/regulator/helpers.c
@@ -85,3 +85,102 @@ int regulator_disable_regmap(struct regulator_dev *rdev)
 				  rdev->desc->enable_mask, val);
 }
 EXPORT_SYMBOL_GPL(regulator_disable_regmap);
+
+/**
+ * regulator_set_voltage_sel_regmap - standard set_voltage_sel for regmap users
+ *
+ * @rdev: regulator to operate on
+ * @sel: Selector to set
+ *
+ * Regulators that use regmap for their register I/O can set the
+ * vsel_reg and vsel_mask fields in their descriptor and then use this
+ * as their set_voltage_vsel operation, saving some code.
+ */
+int regulator_set_voltage_sel_regmap(struct regulator_dev *rdev, unsigned sel)
+{
+	int ret;
+
+	sel <<= ffs(rdev->desc->vsel_mask) - 1;
+
+	ret = regmap_update_bits(rdev->regmap, rdev->desc->vsel_reg,
+				  rdev->desc->vsel_mask, sel);
+	if (ret)
+		return ret;
+
+	if (rdev->desc->apply_bit)
+		ret = regmap_update_bits(rdev->regmap, rdev->desc->apply_reg,
+					 rdev->desc->apply_bit,
+					 rdev->desc->apply_bit);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(regulator_set_voltage_sel_regmap);
+
+/**
+ * regulator_map_voltage_linear - map_voltage() for simple linear mappings
+ *
+ * @rdev: Regulator to operate on
+ * @min_uV: Lower bound for voltage
+ * @max_uV: Upper bound for voltage
+ *
+ * Drivers providing min_uV and uV_step in their regulator_desc can
+ * use this as their map_voltage() operation.
+ */
+int regulator_map_voltage_linear(struct regulator_dev *rdev,
+				 int min_uV, int max_uV)
+{
+	int ret, voltage;
+
+	/* Allow uV_step to be 0 for fixed voltage */
+	if (rdev->desc->n_voltages == 1 && rdev->desc->uV_step == 0) {
+		if (min_uV <= rdev->desc->min_uV && rdev->desc->min_uV <= max_uV)
+			return 0;
+		else
+			return -EINVAL;
+	}
+
+	if (!rdev->desc->uV_step) {
+		BUG_ON(!rdev->desc->uV_step);
+		return -EINVAL;
+	}
+
+	if (min_uV < rdev->desc->min_uV)
+		min_uV = rdev->desc->min_uV;
+
+	ret = DIV_ROUND_UP(min_uV - rdev->desc->min_uV, rdev->desc->uV_step);
+	if (ret < 0)
+		return ret;
+
+	ret += rdev->desc->linear_min_sel;
+
+	/* Map back into a voltage to verify we're still in bounds */
+	voltage = rdev->desc->ops->list_voltage(rdev, ret);
+	if (voltage < min_uV || voltage > max_uV)
+		return -EINVAL;
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(regulator_map_voltage_linear);
+
+/**
+ * regulator_list_voltage_linear - List voltages with simple calculation
+ *
+ * @rdev: Regulator device
+ * @selector: Selector to convert into a voltage
+ *
+ * Regulators with a simple linear mapping between voltages and
+ * selectors can set min_uV and uV_step in the regulator descriptor
+ * and then use this function as their list_voltage() operation,
+ */
+int regulator_list_voltage_linear(struct regulator_dev *rdev,
+				  unsigned int selector)
+{
+	if (selector >= rdev->desc->n_voltages)
+		return -EINVAL;
+	if (selector < rdev->desc->linear_min_sel)
+		return 0;
+
+	selector -= rdev->desc->linear_min_sel;
+
+	return rdev->desc->min_uV + (rdev->desc->uV_step * selector);
+}
+EXPORT_SYMBOL_GPL(regulator_list_voltage_linear);
diff --git a/include/regulator.h b/include/regulator.h
index 1824e6ea14..cd1d3ccf55 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -5,8 +5,17 @@
 struct regulator;
 
 struct regulator_desc {
+	unsigned n_voltages;
 	const struct regulator_ops *ops;
 
+	unsigned int min_uV;
+	unsigned int uV_step;
+	unsigned int linear_min_sel;
+
+	unsigned int vsel_reg;
+	unsigned int vsel_mask;
+	unsigned int apply_reg;
+	unsigned int apply_bit;
 	unsigned int enable_reg;
 	unsigned int enable_mask;
 	unsigned int enable_val;
@@ -25,6 +34,9 @@ struct regulator_ops {
 	int (*enable) (struct regulator_dev *);
 	int (*disable) (struct regulator_dev *);
 	int (*is_enabled) (struct regulator_dev *);
+
+	int (*list_voltage) (struct regulator_dev *, unsigned int);
+	int (*set_voltage_sel) (struct regulator_dev *, unsigned int);
 };
 
 #ifdef CONFIG_OFDEVICE
@@ -49,6 +61,12 @@ int regulator_disable(struct regulator *);
 int regulator_is_enabled_regmap(struct regulator_dev *);
 int regulator_enable_regmap(struct regulator_dev *);
 int regulator_disable_regmap(struct regulator_dev *);
+int regulator_set_voltage_sel_regmap(struct regulator_dev *, unsigned);
+int regulator_set_voltage(struct regulator *regulator, int min_uV, int max_uV);
+int regulator_map_voltage_linear(struct regulator_dev *rdev,
+				 int min_uV, int max_uV);
+int regulator_list_voltage_linear(struct regulator_dev *rdev,
+				  unsigned int selector);
 #else
 
 static inline struct regulator *regulator_get(struct device_d *dev, const char *id)
@@ -66,6 +84,12 @@ static inline int regulator_disable(struct regulator *r)
 	return 0;
 }
 
+static inline int regulator_set_voltage(struct regulator *regulator,
+					int min_uV, int max_uV)
+{
+	return 0;
+}
+
 #endif
 
 #endif /* __REGULATOR_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
