Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4if9-0004Ko-S8
 for barebox@lists.infradead.org; Thu, 20 Feb 2020 10:02:34 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Feb 2020 11:01:10 +0100
Message-Id: <20200220100109.18147-6-a.fatoum@pengutronix.de>
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
Subject: [PATCH 5/6] regulator: port over Linux stm32 PWR regulator driver
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, mgr@pengutronix.de, rcz@pengutronix.de

This driver supports internal regulators (1V1, 1V8, 3V3) in the
STMicroelectronics STM32 chips. Control of these regulators will
be required when adding USB support later on.

Imported here is the Linux v5.6-rc1 state of the driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/Kconfig     |   7 ++
 drivers/regulator/Makefile    |   1 +
 drivers/regulator/stm32-pwr.c | 215 ++++++++++++++++++++++++++++++++++
 3 files changed, 223 insertions(+)
 create mode 100644 drivers/regulator/stm32-pwr.c

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index f47a115da240..1ce057180a01 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -21,6 +21,13 @@ config REGULATOR_PFUZE
 	depends on I2C
 	depends on ARCH_IMX6 || ARCH_IMX8MQ
 
+config REGULATOR_STM32_PWR
+	bool "STMicroelectronics STM32 PWR"
+	depends on ARCH_STM32MP
+	help
+	  This driver supports internal regulators (1V1, 1V8, 3V3) in the
+	  STMicroelectronics STM32 chips.
+
 config REGULATOR_STPMIC1
 	tristate "STMicroelectronics STPMIC1 PMIC Regulators"
 	depends on MFD_STPMIC1
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index e27e155cf624..4d0bba6c52dd 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -5,3 +5,4 @@ obj-$(CONFIG_REGULATOR_BCM283X) += bcm2835.o
 obj-$(CONFIG_REGULATOR_PFUZE) += pfuze.o
 obj-$(CONFIG_REGULATOR_STPMIC1) += stpmic1_regulator.o
 obj-$(CONFIG_REGULATOR_ANATOP) += anatop-regulator.o
+obj-$(CONFIG_REGULATOR_STM32_PWR) += stm32-pwr.o
diff --git a/drivers/regulator/stm32-pwr.c b/drivers/regulator/stm32-pwr.c
new file mode 100644
index 000000000000..296f95bc4c32
--- /dev/null
+++ b/drivers/regulator/stm32-pwr.c
@@ -0,0 +1,215 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (C) STMicroelectronics 2019
+// Authors: Gabriel Fernandez <gabriel.fernandez@st.com>
+//          Pascal Paillet <p.paillet@st.com>.
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/iopoll.h>
+#include <of.h>
+#include <regulator.h>
+
+/*
+ * Registers description
+ */
+#define REG_PWR_CR3 0x0C
+
+#define USB_3_3_EN BIT(24)
+#define USB_3_3_RDY BIT(26)
+#define REG_1_8_EN BIT(28)
+#define REG_1_8_RDY BIT(29)
+#define REG_1_1_EN BIT(30)
+#define REG_1_1_RDY BIT(31)
+
+/* list of supported regulators */
+enum {
+	PWR_REG11,
+	PWR_REG18,
+	PWR_USB33,
+	STM32PWR_REG_NUM_REGS
+};
+
+struct stm32_pwr_desc {
+	struct regulator_desc desc;
+	const char *name;
+	const char *supply_name;
+};
+
+static u32 ready_mask_table[STM32PWR_REG_NUM_REGS] = {
+	[PWR_REG11] = REG_1_1_RDY,
+	[PWR_REG18] = REG_1_8_RDY,
+	[PWR_USB33] = USB_3_3_RDY,
+};
+
+struct stm32_pwr_reg {
+	void __iomem *base;
+	struct device_d *dev;
+	u32 ready_mask;
+	struct regulator_dev rdev;
+	struct regulator *supply;
+};
+
+static inline struct stm32_pwr_reg *to_pwr_reg(struct regulator_dev *rdev)
+{
+	return container_of(rdev, struct stm32_pwr_reg, rdev);
+}
+
+static inline struct stm32_pwr_desc *to_desc(struct regulator_dev *rdev)
+{
+	return container_of(rdev->desc, struct stm32_pwr_desc, desc);
+}
+
+static int stm32_pwr_reg_is_ready(struct regulator_dev *rdev)
+{
+	struct stm32_pwr_reg *priv = to_pwr_reg(rdev);
+	u32 val;
+
+	val = readl(priv->base + REG_PWR_CR3);
+
+	return (val & priv->ready_mask);
+}
+
+static int stm32_pwr_reg_is_enabled(struct regulator_dev *rdev)
+{
+	struct stm32_pwr_reg *priv = to_pwr_reg(rdev);
+	u32 val;
+
+	val = readl(priv->base + REG_PWR_CR3);
+
+	return (val & rdev->desc->enable_mask);
+}
+
+static int stm32_pwr_reg_enable(struct regulator_dev *rdev)
+{
+	struct stm32_pwr_reg *priv = to_pwr_reg(rdev);
+	struct stm32_pwr_desc *desc = to_desc(rdev);
+	int ret;
+	u32 val;
+
+	regulator_enable(priv->supply);
+
+	val = readl(priv->base + REG_PWR_CR3);
+	val |= rdev->desc->enable_mask;
+	writel(val, priv->base + REG_PWR_CR3);
+
+	/* use an arbitrary timeout of 20ms */
+	ret = readx_poll_timeout(stm32_pwr_reg_is_ready, rdev, val, val,
+				 20 * USEC_PER_MSEC);
+	if (ret)
+		dev_err(priv->dev, "%s: regulator enable timed out!\n",
+			desc->name);
+
+	return ret;
+}
+
+static int stm32_pwr_reg_disable(struct regulator_dev *rdev)
+{
+	struct stm32_pwr_reg *priv = to_pwr_reg(rdev);
+	struct stm32_pwr_desc *desc = to_desc(rdev);
+	int ret;
+	u32 val;
+
+	val = readl(priv->base + REG_PWR_CR3);
+	val &= ~rdev->desc->enable_mask;
+	writel(val, priv->base + REG_PWR_CR3);
+
+	/* use an arbitrary timeout of 20ms */
+	ret = readx_poll_timeout(stm32_pwr_reg_is_ready, rdev, val, !val,
+				 20 * USEC_PER_MSEC);
+	if (ret)
+		dev_err(priv->dev, "%s: regulator disable timed out!\n",
+			desc->name);
+
+	regulator_disable(priv->supply);
+
+	return ret;
+}
+
+static const struct regulator_ops stm32_pwr_reg_ops = {
+	.enable		= stm32_pwr_reg_enable,
+	.disable	= stm32_pwr_reg_disable,
+	.is_enabled	= stm32_pwr_reg_is_enabled,
+};
+
+#define PWR_REG(_id, _name, _volt, _en, _supply) \
+	[_id] = { { \
+		.n_voltages = 1, \
+		.ops = &stm32_pwr_reg_ops, \
+		.min_uV = _volt, \
+		.enable_mask = _en, \
+	}, .name = _name, .supply_name = _supply, }
+
+static const struct stm32_pwr_desc stm32_pwr_desc[] = {
+	PWR_REG(PWR_REG11, "reg11", 1100000, REG_1_1_EN, "vdd"),
+	PWR_REG(PWR_REG18, "reg18", 1800000, REG_1_8_EN, "vdd"),
+	PWR_REG(PWR_USB33, "usb33", 3300000, USB_3_3_EN, "vdd_3v3_usbfs"),
+};
+
+static int stm32_pwr_regulator_probe(struct device_d *dev)
+{
+	struct stm32_pwr_reg *priv;
+	struct device_node *child;
+	struct resource *iores;
+	int i, ret;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	for_each_child_of_node(dev->device_node, child) {
+		const struct stm32_pwr_desc *desc = NULL;
+
+		for (i = 0; i < STM32PWR_REG_NUM_REGS; i++) {
+			const char *name;
+
+			name = of_get_property(child, "regulator-name", NULL);
+			if (name && strcmp(stm32_pwr_desc[i].name, name)) {
+				desc = &stm32_pwr_desc[i];
+				break;
+			}
+		}
+
+		if (!desc) {
+			dev_warn(dev, "Skipping unknown child node %s\n",
+				 child->name);
+			continue;
+		}
+
+		priv = xzalloc(sizeof(*priv));
+		priv->base = IOMEM(iores->start);
+		priv->ready_mask = ready_mask_table[i];
+		priv->dev = dev;
+
+		priv->rdev.desc = &desc->desc;
+
+		priv->supply = regulator_get(dev, desc->supply_name);
+		if (IS_ERR(priv->supply))
+			return PTR_ERR(priv->supply);
+
+		ret = of_regulator_register(&priv->rdev, child);
+		if (ret) {
+			dev_err(dev, "%s: Failed to register regulator: %d\n",
+				desc->name, ret);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+static const struct of_device_id stm32_pwr_of_match[] = {
+	{ .compatible = "st,stm32mp1,pwr-reg", },
+	{ /* sentinel */ },
+};
+
+static struct driver_d stm32_pwr_driver = {
+	.probe = stm32_pwr_regulator_probe,
+	.name  = "stm32-pwr-regulator",
+	.of_compatible = stm32_pwr_of_match,
+};
+device_platform_driver(stm32_pwr_driver);
+
+MODULE_DESCRIPTION("STM32MP1 PWR voltage regulator driver");
+MODULE_AUTHOR("Pascal Paillet <p.paillet@st.com>");
+MODULE_LICENSE("GPL v2");
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
