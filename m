Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9C3J-0005FE-NH
 for barebox@lists.infradead.org; Mon, 08 Feb 2021 19:18:34 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Feb 2021 20:18:26 +0100
Message-Id: <20210208191827.19241-3-a.fatoum@pengutronix.de>
In-Reply-To: <20210208191827.19241-1-a.fatoum@pengutronix.de>
References: <20210208191827.19241-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/4] regulator: add driver for stm32-vrefbuf
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, has@pengutronix.de

This driver supports STMicroelectronics STM32 VREFBUF (voltage
reference buffer) which can be used as voltage reference for
internal ADCs, DACs and also for external components through
dedicated Vref+ pin. Ported from Linux v5.11-rc1.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp151.dtsi      |   4 +
 drivers/regulator/Kconfig         |   9 ++
 drivers/regulator/Makefile        |   1 +
 drivers/regulator/helpers.c       |  25 ++++
 drivers/regulator/stm32-vrefbuf.c | 220 ++++++++++++++++++++++++++++++
 include/regulator.h               |   5 +
 6 files changed, 264 insertions(+)
 create mode 100644 drivers/regulator/stm32-vrefbuf.c

diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
index ca11492de564..b82227fa206e 100644
--- a/arch/arm/dts/stm32mp151.dtsi
+++ b/arch/arm/dts/stm32mp151.dtsi
@@ -62,3 +62,7 @@
 &bsec {
 	barebox,provide-mac-address = <&ethernet0 0x39>;
 };
+
+&vrefbuf {
+	regulator-name = "vref";
+};
diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 1ce057180a01..9be81832f23d 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -28,6 +28,15 @@ config REGULATOR_STM32_PWR
 	  This driver supports internal regulators (1V1, 1V8, 3V3) in the
 	  STMicroelectronics STM32 chips.
 
+config REGULATOR_STM32_VREFBUF
+	tristate "STMicroelectronics STM32 VREFBUF"
+	depends on ARCH_STM32MP || COMPILE_TEST
+	help
+	  This driver supports STMicroelectronics STM32 VREFBUF (voltage
+	  reference buffer) which can be used as voltage reference for
+	  internal ADCs, DACs and also for external components through
+	  dedicated Vref+ pin.
+
 config REGULATOR_STPMIC1
 	tristate "STMicroelectronics STPMIC1 PMIC Regulators"
 	depends on MFD_STPMIC1
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index 4d0bba6c52dd..67859bb79ee4 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_REGULATOR_PFUZE) += pfuze.o
 obj-$(CONFIG_REGULATOR_STPMIC1) += stpmic1_regulator.o
 obj-$(CONFIG_REGULATOR_ANATOP) += anatop-regulator.o
 obj-$(CONFIG_REGULATOR_STM32_PWR) += stm32-pwr.o
+obj-$(CONFIG_REGULATOR_STM32_VREFBUF) += stm32-vrefbuf.o
diff --git a/drivers/regulator/helpers.c b/drivers/regulator/helpers.c
index c4877cecf7e9..e741944ce7cf 100644
--- a/drivers/regulator/helpers.c
+++ b/drivers/regulator/helpers.c
@@ -369,4 +369,29 @@ int regulator_map_voltage_iterate(struct regulator_dev *rdev,
 }
 EXPORT_SYMBOL_GPL(regulator_map_voltage_iterate);
 
+/**
+ * regulator_list_voltage_table - List voltages with table based mapping
+ *
+ * @rdev: Regulator device
+ * @selector: Selector to convert into a voltage
+ *
+ * Regulators with table based mapping between voltages and
+ * selectors can set volt_table in the regulator descriptor
+ * and then use this function as their list_voltage() operation.
+ */
+int regulator_list_voltage_table(struct regulator_dev *rdev,
+				 unsigned int selector)
+{
+	if (!rdev->desc->volt_table) {
+		BUG_ON(!rdev->desc->volt_table);
+		return -EINVAL;
+	}
 
+	if (selector >= rdev->desc->n_voltages)
+		return -EINVAL;
+	if (selector < rdev->desc->linear_min_sel)
+		return 0;
+
+	return rdev->desc->volt_table[selector];
+}
+EXPORT_SYMBOL_GPL(regulator_list_voltage_table);
diff --git a/drivers/regulator/stm32-vrefbuf.c b/drivers/regulator/stm32-vrefbuf.c
new file mode 100644
index 000000000000..3956b1f64f6e
--- /dev/null
+++ b/drivers/regulator/stm32-vrefbuf.c
@@ -0,0 +1,220 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) STMicroelectronics 2017
+ *
+ * Author: Fabrice Gasnier <fabrice.gasnier@st.com>
+ */
+
+#include <common.h>
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/iopoll.h>
+#include <of.h>
+#include <regulator.h>
+
+/* STM32 VREFBUF registers */
+#define STM32_VREFBUF_CSR		0x00
+
+/* STM32 VREFBUF CSR bitfields */
+#define STM32_VRS			GENMASK(6, 4)
+#define STM32_VRR			BIT(3)
+#define STM32_HIZ			BIT(1)
+#define STM32_ENVR			BIT(0)
+
+#define STM32_VREFBUF_AUTO_SUSPEND_DELAY_MS	10
+
+#define readl_relaxed readl
+#define writel_relaxed writel
+
+struct stm32_vrefbuf {
+	void __iomem *base;
+	struct clk *clk;
+	struct device_d *dev;
+	struct regulator_dev rdev;
+};
+
+struct stm32_vrefbuf_desc {
+	struct regulator_desc desc;
+	const char *supply_name;
+};
+
+static inline struct stm32_vrefbuf *to_stm32_vrefbuf(struct regulator_dev *rdev)
+{
+	return container_of(rdev, struct stm32_vrefbuf, rdev);
+}
+
+static const unsigned int stm32_vrefbuf_voltages[] = {
+	/* Matches resp. VRS = 000b, 001b, 010b, 011b */
+	2500000, 2048000, 1800000, 1500000,
+};
+
+static int stm32_vrefbuf_enable(struct regulator_dev *rdev)
+{
+	struct stm32_vrefbuf *priv = to_stm32_vrefbuf(rdev);
+	u32 val;
+	int ret;
+
+	val = readl_relaxed(priv->base + STM32_VREFBUF_CSR);
+	val = (val & ~STM32_HIZ) | STM32_ENVR;
+	writel_relaxed(val, priv->base + STM32_VREFBUF_CSR);
+
+	/*
+	 * Vrefbuf startup time depends on external capacitor: wait here for
+	 * VRR to be set. That means output has reached expected value.
+	 * ~650us sleep should be enough for caps up to 1.5uF. Use 10ms as
+	 * arbitrary timeout.
+	 */
+	ret = readl_poll_timeout(priv->base + STM32_VREFBUF_CSR, val,
+				 val & STM32_VRR, 10000);
+	if (ret) {
+		dev_err(priv->dev, "stm32 vrefbuf timed out!\n");
+		val = readl_relaxed(priv->base + STM32_VREFBUF_CSR);
+		val = (val & ~STM32_ENVR) | STM32_HIZ;
+		writel_relaxed(val, priv->base + STM32_VREFBUF_CSR);
+	}
+
+	return ret;
+}
+
+static int stm32_vrefbuf_disable(struct regulator_dev *rdev)
+{
+	struct stm32_vrefbuf *priv = to_stm32_vrefbuf(rdev);
+	u32 val;
+
+	val = readl_relaxed(priv->base + STM32_VREFBUF_CSR);
+	val &= ~STM32_ENVR;
+	writel_relaxed(val, priv->base + STM32_VREFBUF_CSR);
+
+	return 0;
+}
+
+static int stm32_vrefbuf_is_enabled(struct regulator_dev *rdev)
+{
+	struct stm32_vrefbuf *priv = to_stm32_vrefbuf(rdev);
+	int ret;
+
+	ret = readl_relaxed(priv->base + STM32_VREFBUF_CSR) & STM32_ENVR;
+
+	return ret;
+}
+
+static int stm32_vrefbuf_set_voltage_sel(struct regulator_dev *rdev,
+					 unsigned sel)
+{
+	struct stm32_vrefbuf *priv = to_stm32_vrefbuf(rdev);
+	u32 val;
+
+	val = readl_relaxed(priv->base + STM32_VREFBUF_CSR);
+	val = (val & ~STM32_VRS) | FIELD_PREP(STM32_VRS, sel);
+	writel_relaxed(val, priv->base + STM32_VREFBUF_CSR);
+
+	return 0;
+}
+
+static int stm32_vrefbuf_get_voltage_sel(struct regulator_dev *rdev)
+{
+	struct stm32_vrefbuf *priv = to_stm32_vrefbuf(rdev);
+	u32 val;
+	int ret;
+
+	val = readl_relaxed(priv->base + STM32_VREFBUF_CSR);
+	ret = FIELD_GET(STM32_VRS, val);
+
+	return ret;
+}
+
+static const struct regulator_ops stm32_vrefbuf_volt_ops = {
+	.enable		= stm32_vrefbuf_enable,
+	.disable	= stm32_vrefbuf_disable,
+	.is_enabled	= stm32_vrefbuf_is_enabled,
+	.get_voltage_sel = stm32_vrefbuf_get_voltage_sel,
+	.set_voltage_sel = stm32_vrefbuf_set_voltage_sel,
+	.list_voltage	= regulator_list_voltage_table,
+};
+
+static const struct stm32_vrefbuf_desc stm32_vrefbuf_regu = {
+	.desc = {
+		.volt_table = stm32_vrefbuf_voltages,
+		.n_voltages = ARRAY_SIZE(stm32_vrefbuf_voltages),
+		.ops = &stm32_vrefbuf_volt_ops,
+		.off_on_delay = 1000,
+	},
+	.supply_name = "vdda",
+};
+
+static int stm32_vrefbuf_probe(struct device_d *dev)
+{
+	struct stm32_vrefbuf *priv;
+	struct regulator_dev *rdev;
+	struct regulator *supply;
+	int ret;
+
+	supply = regulator_get(dev, stm32_vrefbuf_regu.supply_name);
+	if (IS_ERR(supply))
+		return PTR_ERR(supply);
+
+	priv = xzalloc(sizeof(*priv));
+	priv->dev = dev;
+
+	priv->base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(priv->base))
+		return PTR_ERR(priv->base);
+
+	priv->clk = clk_get(dev, NULL);
+	if (IS_ERR(priv->clk))
+		return PTR_ERR(priv->clk);
+
+	ret = clk_enable(priv->clk);
+	if (ret) {
+		dev_err(dev, "clk enable failed with error %d\n", ret);
+		return ret;
+	}
+
+	rdev = &priv->rdev;
+
+	rdev->dev = dev;
+	rdev->desc = &stm32_vrefbuf_regu.desc;
+
+	ret = of_regulator_register(rdev, dev->device_node);
+	if (ret) {
+		ret = PTR_ERR(rdev);
+		dev_err(dev, "register failed with error %d\n", ret);
+		goto err_clk_dis;
+	}
+
+	regulator_enable(supply);
+
+	dev->priv = priv;
+
+	return 0;
+
+err_clk_dis:
+	clk_disable(priv->clk);
+
+	return ret;
+}
+
+static void stm32_vrefbuf_remove(struct device_d *dev)
+{
+	struct stm32_vrefbuf *priv = dev->priv;
+
+	clk_disable(priv->clk);
+};
+
+static const struct of_device_id __maybe_unused stm32_vrefbuf_of_match[] = {
+	{ .compatible = "st,stm32-vrefbuf", },
+	{},
+};
+
+static struct driver_d stm32_vrefbuf_driver = {
+	.probe = stm32_vrefbuf_probe,
+	.name  = "stm32-vrefbuf",
+	.remove = stm32_vrefbuf_remove,
+	.of_compatible = stm32_vrefbuf_of_match,
+};
+device_platform_driver(stm32_vrefbuf_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_AUTHOR("Fabrice Gasnier <fabrice.gasnier@st.com>");
+MODULE_DESCRIPTION("STMicroelectronics STM32 VREFBUF driver");
+MODULE_ALIAS("platform:stm32-vrefbuf");
diff --git a/include/regulator.h b/include/regulator.h
index 83a8813265ff..bbe8dd91d84b 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -51,6 +51,7 @@ struct regulator_bulk_data {
  * @disable_val: Disabling value for control when using regmap enable/disable ops
  * @enable_is_inverted: A flag to indicate set enable_mask bits to disable
  *                      when using regulator_enable_regmap and friends APIs.
+ * @volt_table: Voltage mapping table (if table based mapping)
  * @fixed_uV: Fixed voltage of rails.
  * @off_on_delay: guard time (in uS), before re-enabling a regulator
  */
@@ -75,6 +76,7 @@ struct regulator_desc {
 
 	const struct regulator_linear_range *linear_ranges;
 	int n_linear_ranges;
+	const unsigned int *volt_table;
 	int fixed_uV;
 	unsigned int off_on_delay;
 };
@@ -190,6 +192,9 @@ int regulator_get_voltage(struct regulator *regulator);
  */
 int regulator_desc_list_voltage_linear_range(const struct regulator_desc *desc,
 					     unsigned int selector);
+
+int regulator_list_voltage_table(struct regulator_dev *rdev,
+				  unsigned int selector);
 #else
 
 static inline struct regulator *regulator_get(struct device_d *dev, const char *id)
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
