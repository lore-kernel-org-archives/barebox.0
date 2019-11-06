Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSFTy-000267-CH
 for barebox@lists.infradead.org; Wed, 06 Nov 2019 07:12:02 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2019 08:11:52 +0100
Message-Id: <20191106071155.26389-7-a.fatoum@pengutronix.de>
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
Subject: [PATCH 07/10] regulator: add driver for stpmic1-regulators
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, mgr@pengutronix.de

This commit imports the Linux v5.3 state of the driver. This allows us
to regulate at least the v3v3 voltage rail used by the DK1 and DK2
Ethernet PHY and SD-Card. Eventually, this driver should be used by the
USB host driver to supply the vbus voltage as well.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/Kconfig             |   9 +
 drivers/regulator/Makefile            |   3 +-
 drivers/regulator/stpmic1_regulator.c | 452 ++++++++++++++++++++++++++
 include/linux/mfd/stpmic1.h           | 212 ++++++++++++
 4 files changed, 675 insertions(+), 1 deletion(-)
 create mode 100644 drivers/regulator/stpmic1_regulator.c
 create mode 100644 include/linux/mfd/stpmic1.h

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index c734ef5ef9c7..28bd69a2a534 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -21,6 +21,15 @@ config REGULATOR_PFUZE
 	depends on I2C
 	depends on ARCH_IMX6
 
+config REGULATOR_STPMIC1
+	tristate "STMicroelectronics STPMIC1 PMIC Regulators"
+	depends on MFD_STPMIC1
+	help
+	  This driver supports STMicroelectronics STPMIC1 PMIC voltage
+	  regulators and switches. The STPMIC1 regulators supply power to
+	  an application processor as well as to external system
+	  peripherals such as DDR, Flash memories and system devices.
+
 config REGULATOR_ANATOP
 	tristate "Freescale i.MX on-chip ANATOP LDO regulators"
 	depends on MFD_SYSCON
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index f51e89cd3cc3..e27e155cf624 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -3,4 +3,5 @@ obj-$(CONFIG_OFDEVICE) += of_regulator.o
 obj-$(CONFIG_REGULATOR_FIXED) += fixed.o
 obj-$(CONFIG_REGULATOR_BCM283X) += bcm2835.o
 obj-$(CONFIG_REGULATOR_PFUZE) += pfuze.o
-obj-$(CONFIG_REGULATOR_ANATOP) += anatop-regulator.o
\ No newline at end of file
+obj-$(CONFIG_REGULATOR_STPMIC1) += stpmic1_regulator.o
+obj-$(CONFIG_REGULATOR_ANATOP) += anatop-regulator.o
diff --git a/drivers/regulator/stpmic1_regulator.c b/drivers/regulator/stpmic1_regulator.c
new file mode 100644
index 000000000000..72a5730931e6
--- /dev/null
+++ b/drivers/regulator/stpmic1_regulator.c
@@ -0,0 +1,452 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (C) STMicroelectronics 2018
+// Author: Pascal Paillet <p.paillet@st.com> for STMicroelectronics.
+
+#include <common.h>
+#include <init.h>
+#include <asm/io.h>
+#include <of_device.h>
+#include <mfd/syscon.h>
+#include <regmap.h>
+#include <linux/regulator/of_regulator.h>
+#include <regulator.h>
+#include <linux/mfd/stpmic1.h>
+#include <mfd/syscon.h>
+
+#include <common.h>
+#include <init.h>
+#include <watchdog.h>
+#include <asm/io.h>
+#include <of_device.h>
+#include <linux/iopoll.h>
+#include <poweroff.h>
+#include <mfd/syscon.h>
+#include <restart.h>
+#include <reset_source.h>
+
+
+
+#include <dt-bindings/mfd/st,stpmic1.h>
+
+/**
+ * stpmic1 regulator description: this structure is used as driver data
+ * @desc: regulator framework description
+ * @mask_reset_reg: mask reset register address
+ * @mask_reset_mask: mask rank and mask reset register mask
+ * @icc_reg: icc register address
+ * @icc_mask: icc register mask
+ */
+struct stpmic1_regulator_cfg {
+	struct device_d *dev;
+	struct regulator_dev rdev;
+	struct regulator_desc desc;
+	u8 mask_reset_reg;
+	u8 mask_reset_mask;
+	u8 icc_reg;
+	u8 icc_mask;
+};
+
+enum {
+	STPMIC1_BUCK1 = 0,
+	STPMIC1_BUCK2 = 1,
+	STPMIC1_BUCK3 = 2,
+	STPMIC1_BUCK4 = 3,
+	STPMIC1_LDO1 = 4,
+	STPMIC1_LDO2 = 5,
+	STPMIC1_LDO3 = 6,
+	STPMIC1_LDO4 = 7,
+	STPMIC1_LDO5 = 8,
+	STPMIC1_LDO6 = 9,
+	STPMIC1_VREF_DDR = 10,
+	STPMIC1_BOOST = 11,
+	STPMIC1_VBUS_OTG = 12,
+	STPMIC1_SW_OUT = 13,
+};
+
+/* Enable time worst case is 5000mV/(2250uV/uS) */
+#define PMIC_ENABLE_TIME_US 2200
+
+static const struct regulator_linear_range buck1_ranges[] = {
+	REGULATOR_LINEAR_RANGE(725000, 0, 4, 0),
+	REGULATOR_LINEAR_RANGE(725000, 5, 36, 25000),
+	REGULATOR_LINEAR_RANGE(1500000, 37, 63, 0),
+};
+
+static const struct regulator_linear_range buck2_ranges[] = {
+	REGULATOR_LINEAR_RANGE(1000000, 0, 17, 0),
+	REGULATOR_LINEAR_RANGE(1050000, 18, 19, 0),
+	REGULATOR_LINEAR_RANGE(1100000, 20, 21, 0),
+	REGULATOR_LINEAR_RANGE(1150000, 22, 23, 0),
+	REGULATOR_LINEAR_RANGE(1200000, 24, 25, 0),
+	REGULATOR_LINEAR_RANGE(1250000, 26, 27, 0),
+	REGULATOR_LINEAR_RANGE(1300000, 28, 29, 0),
+	REGULATOR_LINEAR_RANGE(1350000, 30, 31, 0),
+	REGULATOR_LINEAR_RANGE(1400000, 32, 33, 0),
+	REGULATOR_LINEAR_RANGE(1450000, 34, 35, 0),
+	REGULATOR_LINEAR_RANGE(1500000, 36, 63, 0),
+};
+
+static const struct regulator_linear_range buck3_ranges[] = {
+	REGULATOR_LINEAR_RANGE(1000000, 0, 19, 0),
+	REGULATOR_LINEAR_RANGE(1100000, 20, 23, 0),
+	REGULATOR_LINEAR_RANGE(1200000, 24, 27, 0),
+	REGULATOR_LINEAR_RANGE(1300000, 28, 31, 0),
+	REGULATOR_LINEAR_RANGE(1400000, 32, 35, 0),
+	REGULATOR_LINEAR_RANGE(1500000, 36, 55, 100000),
+	REGULATOR_LINEAR_RANGE(3400000, 56, 63, 0),
+};
+
+static const struct regulator_linear_range buck4_ranges[] = {
+	REGULATOR_LINEAR_RANGE(600000, 0, 27, 25000),
+	REGULATOR_LINEAR_RANGE(1300000, 28, 29, 0),
+	REGULATOR_LINEAR_RANGE(1350000, 30, 31, 0),
+	REGULATOR_LINEAR_RANGE(1400000, 32, 33, 0),
+	REGULATOR_LINEAR_RANGE(1450000, 34, 35, 0),
+	REGULATOR_LINEAR_RANGE(1500000, 36, 60, 100000),
+	REGULATOR_LINEAR_RANGE(3900000, 61, 63, 0),
+};
+
+static const struct regulator_linear_range ldo1_ranges[] = {
+	REGULATOR_LINEAR_RANGE(1700000, 0, 7, 0),
+	REGULATOR_LINEAR_RANGE(1700000, 8, 24, 100000),
+	REGULATOR_LINEAR_RANGE(3300000, 25, 31, 0),
+};
+
+static const struct regulator_linear_range ldo2_ranges[] = {
+	REGULATOR_LINEAR_RANGE(1700000, 0, 7, 0),
+	REGULATOR_LINEAR_RANGE(1700000, 8, 24, 100000),
+	REGULATOR_LINEAR_RANGE(3300000, 25, 30, 0),
+};
+
+static const struct regulator_linear_range ldo3_ranges[] = {
+	REGULATOR_LINEAR_RANGE(1700000, 0, 7, 0),
+	REGULATOR_LINEAR_RANGE(1700000, 8, 24, 100000),
+	REGULATOR_LINEAR_RANGE(3300000, 25, 30, 0),
+	/* with index 31 LDO3 is in DDR mode */
+	REGULATOR_LINEAR_RANGE(500000, 31, 31, 0),
+};
+
+static const struct regulator_linear_range ldo5_ranges[] = {
+	REGULATOR_LINEAR_RANGE(1700000, 0, 7, 0),
+	REGULATOR_LINEAR_RANGE(1700000, 8, 30, 100000),
+	REGULATOR_LINEAR_RANGE(3900000, 31, 31, 0),
+};
+
+static const struct regulator_linear_range ldo6_ranges[] = {
+	REGULATOR_LINEAR_RANGE(900000, 0, 24, 100000),
+	REGULATOR_LINEAR_RANGE(3300000, 25, 31, 0),
+};
+
+static const struct regulator_ops stpmic1_ldo_ops = {
+	.list_voltage = regulator_list_voltage_linear_range,
+	.map_voltage = regulator_map_voltage_linear_range,
+	.is_enabled = regulator_is_enabled_regmap,
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.set_voltage_sel = regulator_set_voltage_sel_regmap,
+};
+
+static const struct regulator_ops stpmic1_ldo3_ops = {
+	.list_voltage = regulator_list_voltage_linear_range,
+	.map_voltage = regulator_map_voltage_iterate,
+	.is_enabled = regulator_is_enabled_regmap,
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.set_voltage_sel = regulator_set_voltage_sel_regmap,
+};
+
+static const struct regulator_ops stpmic1_ldo4_fixed_regul_ops = {
+	.is_enabled = regulator_is_enabled_regmap,
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+};
+
+static const struct regulator_ops stpmic1_buck_ops = {
+	.list_voltage = regulator_list_voltage_linear_range,
+	.map_voltage = regulator_map_voltage_linear_range,
+	.is_enabled = regulator_is_enabled_regmap,
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.set_voltage_sel = regulator_set_voltage_sel_regmap,
+};
+
+static const struct regulator_ops stpmic1_vref_ddr_ops = {
+	.is_enabled = regulator_is_enabled_regmap,
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+};
+
+static const struct regulator_ops stpmic1_boost_regul_ops = {
+	.is_enabled = regulator_is_enabled_regmap,
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+};
+
+static const struct regulator_ops stpmic1_switch_regul_ops = {
+	.is_enabled = regulator_is_enabled_regmap,
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+};
+
+#define REG_LDO(ids, base) { \
+	.n_voltages = 32, \
+	.ops = &stpmic1_ldo_ops, \
+	.linear_ranges = base ## _ranges, \
+	.n_linear_ranges = ARRAY_SIZE(base ## _ranges), \
+	.vsel_reg = ids##_ACTIVE_CR, \
+	.vsel_mask = LDO_VOLTAGE_MASK, \
+	.enable_reg = ids##_ACTIVE_CR, \
+	.enable_mask = LDO_ENABLE_MASK, \
+	.enable_val = 1, \
+	.disable_val = 0, \
+}
+
+#define REG_LDO3(ids, base) { \
+	.n_voltages = 32, \
+	.ops = &stpmic1_ldo3_ops, \
+	.linear_ranges = ldo3_ranges, \
+	.n_linear_ranges = ARRAY_SIZE(ldo3_ranges), \
+	.vsel_reg = LDO3_ACTIVE_CR, \
+	.vsel_mask = LDO_VOLTAGE_MASK, \
+	.enable_reg = LDO3_ACTIVE_CR, \
+	.enable_mask = LDO_ENABLE_MASK, \
+	.enable_val = 1, \
+	.disable_val = 0, \
+}
+
+#define REG_LDO4(ids, base) { \
+	.n_voltages = 1, \
+	.ops = &stpmic1_ldo4_fixed_regul_ops, \
+	.min_uV = 3300000, \
+	.enable_reg = LDO4_ACTIVE_CR, \
+	.enable_mask = LDO_ENABLE_MASK, \
+	.enable_val = 1, \
+	.disable_val = 0, \
+}
+
+#define REG_BUCK(ids, base) { \
+	.ops = &stpmic1_buck_ops, \
+	.n_voltages = 64, \
+	.linear_ranges = base ## _ranges, \
+	.n_linear_ranges = ARRAY_SIZE(base ## _ranges), \
+	.vsel_reg = ids##_ACTIVE_CR, \
+	.vsel_mask = BUCK_VOLTAGE_MASK, \
+	.enable_reg = ids##_ACTIVE_CR, \
+	.enable_mask = BUCK_ENABLE_MASK, \
+	.enable_val = 1, \
+	.disable_val = 0, \
+}
+
+#define REG_VREF_DDR(ids, base) { \
+	.n_voltages = 1, \
+	.ops = &stpmic1_vref_ddr_ops, \
+	.min_uV = 500000, \
+	.enable_reg = VREF_DDR_ACTIVE_CR, \
+	.enable_mask = BUCK_ENABLE_MASK, \
+	.enable_val = 1, \
+	.disable_val = 0, \
+}
+
+#define REG_BOOST(ids, base) { \
+	.n_voltages = 1, \
+	.ops = &stpmic1_boost_regul_ops, \
+	.min_uV = 0, \
+	.enable_reg = BST_SW_CR, \
+	.enable_mask = BOOST_ENABLED, \
+	.enable_val = BOOST_ENABLED, \
+	.disable_val = 0, \
+}
+
+#define REG_VBUS_OTG(ids, base) { \
+	.n_voltages = 1, \
+	.ops = &stpmic1_switch_regul_ops, \
+	.min_uV = 0, \
+	.enable_reg = BST_SW_CR, \
+	.enable_mask = USBSW_OTG_SWITCH_ENABLED, \
+	.enable_val = USBSW_OTG_SWITCH_ENABLED, \
+	.disable_val = 0, \
+}
+
+#define REG_SW_OUT(ids, base) { \
+	.n_voltages = 1, \
+	.ops = &stpmic1_switch_regul_ops, \
+	.min_uV = 0, \
+	.enable_reg = BST_SW_CR, \
+	.enable_mask = SWIN_SWOUT_ENABLED, \
+	.enable_val = SWIN_SWOUT_ENABLED, \
+	.disable_val = 0, \
+}
+
+static struct stpmic1_regulator_cfg stpmic1_regulator_cfgs[] = {
+	[STPMIC1_BUCK1] = {
+		.desc = REG_BUCK(BUCK1, buck1),
+		.icc_reg = BUCKS_ICCTO_CR,
+		.icc_mask = BIT(0),
+		.mask_reset_reg = BUCKS_MASK_RESET_CR,
+		.mask_reset_mask = BIT(0),
+	},
+	[STPMIC1_BUCK2] = {
+		.desc = REG_BUCK(BUCK2, buck2),
+		.icc_reg = BUCKS_ICCTO_CR,
+		.icc_mask = BIT(1),
+		.mask_reset_reg = BUCKS_MASK_RESET_CR,
+		.mask_reset_mask = BIT(1),
+	},
+	[STPMIC1_BUCK3] = {
+		.desc = REG_BUCK(BUCK3, buck3),
+		.icc_reg = BUCKS_ICCTO_CR,
+		.icc_mask = BIT(2),
+		.mask_reset_reg = BUCKS_MASK_RESET_CR,
+		.mask_reset_mask = BIT(2),
+	},
+	[STPMIC1_BUCK4] = {
+		.desc = REG_BUCK(BUCK4, buck4),
+		.icc_reg = BUCKS_ICCTO_CR,
+		.icc_mask = BIT(3),
+		.mask_reset_reg = BUCKS_MASK_RESET_CR,
+		.mask_reset_mask = BIT(3),
+	},
+	[STPMIC1_LDO1] = {
+		.desc = REG_LDO(LDO1, ldo1),
+		.icc_reg = LDOS_ICCTO_CR,
+		.icc_mask = BIT(0),
+		.mask_reset_reg = LDOS_MASK_RESET_CR,
+		.mask_reset_mask = BIT(0),
+	},
+	[STPMIC1_LDO2] = {
+		.desc = REG_LDO(LDO2, ldo2),
+		.icc_reg = LDOS_ICCTO_CR,
+		.icc_mask = BIT(1),
+		.mask_reset_reg = LDOS_MASK_RESET_CR,
+		.mask_reset_mask = BIT(1),
+	},
+	[STPMIC1_LDO3] = {
+		.desc = REG_LDO3(LDO3, ldo3),
+		.icc_reg = LDOS_ICCTO_CR,
+		.icc_mask = BIT(2),
+		.mask_reset_reg = LDOS_MASK_RESET_CR,
+		.mask_reset_mask = BIT(2),
+	},
+	[STPMIC1_LDO4] = {
+		.desc = REG_LDO4(LDO4, ldo4),
+		.icc_reg = LDOS_ICCTO_CR,
+		.icc_mask = BIT(3),
+		.mask_reset_reg = LDOS_MASK_RESET_CR,
+		.mask_reset_mask = BIT(3),
+	},
+	[STPMIC1_LDO5] = {
+		.desc = REG_LDO(LDO5, ldo5),
+		.icc_reg = LDOS_ICCTO_CR,
+		.icc_mask = BIT(4),
+		.mask_reset_reg = LDOS_MASK_RESET_CR,
+		.mask_reset_mask = BIT(4),
+	},
+	[STPMIC1_LDO6] = {
+		.desc = REG_LDO(LDO6, ldo6),
+		.icc_reg = LDOS_ICCTO_CR,
+		.icc_mask = BIT(5),
+		.mask_reset_reg = LDOS_MASK_RESET_CR,
+		.mask_reset_mask = BIT(5),
+	},
+	[STPMIC1_VREF_DDR] = {
+		.desc = REG_VREF_DDR(VREF_DDR, vref_ddr),
+		.mask_reset_reg = LDOS_MASK_RESET_CR,
+		.mask_reset_mask = BIT(6),
+	},
+	[STPMIC1_BOOST] = {
+		.desc = REG_BOOST(BOOST, boost),
+		.icc_reg = BUCKS_ICCTO_CR,
+		.icc_mask = BIT(6),
+	},
+	[STPMIC1_VBUS_OTG] = {
+		.desc = REG_VBUS_OTG(VBUS_OTG, pwr_sw1),
+		.icc_reg = BUCKS_ICCTO_CR,
+		.icc_mask = BIT(4),
+	},
+	[STPMIC1_SW_OUT] = {
+		.desc = REG_SW_OUT(SW_OUT, pwr_sw2),
+		.icc_reg = BUCKS_ICCTO_CR,
+		.icc_mask = BIT(5),
+	},
+};
+
+#define MATCH(_name, _id) \
+	[STPMIC1_##_id] = { \
+		.name = #_name, \
+		.desc = &stpmic1_regulator_cfgs[STPMIC1_##_id].desc, \
+	}
+
+static struct of_regulator_match stpmic1_matches[] = {
+	MATCH(buck1, BUCK1),
+	MATCH(buck2, BUCK2),
+	MATCH(buck3, BUCK3),
+	MATCH(buck4, BUCK4),
+	MATCH(ldo1, LDO1),
+	MATCH(ldo2, LDO2),
+	MATCH(ldo3, LDO3),
+	MATCH(ldo4, LDO4),
+	MATCH(ldo5, LDO5),
+	MATCH(ldo6, LDO6),
+	MATCH(vref_ddr, VREF_DDR),
+	MATCH(boost, BOOST),
+	MATCH(pwr_sw1, VBUS_OTG),
+	MATCH(pwr_sw2, SW_OUT),
+};
+
+static int stpmic1_regulator_register(struct device_d *dev, int id,
+				      struct of_regulator_match *match,
+				      struct stpmic1_regulator_cfg *cfg)
+{
+	int ret;
+
+	cfg->dev = dev;
+	cfg->rdev.desc = &cfg->desc;
+	cfg->rdev.regmap = dev_get_regmap(dev->parent, NULL);
+	if (IS_ERR(cfg->rdev.regmap))
+		return PTR_ERR(cfg->rdev.regmap);
+
+	ret = of_regulator_register(&cfg->rdev, match->of_node);
+	if (ret) {
+		dev_err(dev, "failed to register %s regulator\n", match->name);
+		return ret;
+	}
+
+	dev_dbg(dev, "registered %s\n", match->name);
+
+	return 0;
+}
+
+static int stpmic1_regulator_probe(struct device_d *dev)
+{
+	int i, ret;
+
+	ret = of_regulator_match(dev, dev->device_node, stpmic1_matches,
+				 ARRAY_SIZE(stpmic1_matches));
+	if (ret < 0) {
+		dev_err(dev, "Error in PMIC regulator device tree node");
+		return ret;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(stpmic1_regulator_cfgs); i++) {
+		ret = stpmic1_regulator_register(dev, i, &stpmic1_matches[i],
+						 &stpmic1_regulator_cfgs[i]);
+		if (ret < 0)
+			return ret;
+	}
+
+	dev_info(dev, "probed\n");
+
+	return 0;
+}
+
+static __maybe_unused const struct of_device_id stpmic1_regulator_of_match[] = {
+	{ .compatible = "st,stpmic1-regulators" },
+	{ /* sentinel */ },
+};
+
+static struct driver_d stpmic1_regulator_driver = {
+	.name = "stpmic1-regulator",
+	.probe = stpmic1_regulator_probe,
+	.of_compatible = DRV_OF_COMPAT(stpmic1_regulator_of_match),
+};
+device_platform_driver(stpmic1_regulator_driver);
diff --git a/include/linux/mfd/stpmic1.h b/include/linux/mfd/stpmic1.h
new file mode 100644
index 000000000000..fa3f99f7e9a1
--- /dev/null
+++ b/include/linux/mfd/stpmic1.h
@@ -0,0 +1,212 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) STMicroelectronics 2018 - All Rights Reserved
+ * Author: Philippe Peurichard <philippe.peurichard@st.com>,
+ * Pascal Paillet <p.paillet@st.com> for STMicroelectronics.
+ */
+
+#ifndef __LINUX_MFD_STPMIC1_H
+#define __LINUX_MFD_STPMIC1_H
+
+#define TURN_ON_SR		0x1
+#define TURN_OFF_SR		0x2
+#define ICC_LDO_TURN_OFF_SR	0x3
+#define ICC_BUCK_TURN_OFF_SR	0x4
+#define RREQ_STATE_SR		0x5
+#define VERSION_SR		0x6
+
+#define SWOFF_PWRCTRL_CR	0x10
+#define PADS_PULL_CR		0x11
+#define BUCKS_PD_CR		0x12
+#define LDO14_PD_CR		0x13
+#define LDO56_VREF_PD_CR	0x14
+#define VBUS_DET_VIN_CR		0x15
+#define PKEY_TURNOFF_CR		0x16
+#define BUCKS_MASK_RANK_CR	0x17
+#define BUCKS_MASK_RESET_CR	0x18
+#define LDOS_MASK_RANK_CR	0x19
+#define LDOS_MASK_RESET_CR	0x1A
+#define WCHDG_CR		0x1B
+#define WCHDG_TIMER_CR		0x1C
+#define BUCKS_ICCTO_CR		0x1D
+#define LDOS_ICCTO_CR		0x1E
+
+#define BUCK1_ACTIVE_CR		0x20
+#define BUCK2_ACTIVE_CR		0x21
+#define BUCK3_ACTIVE_CR		0x22
+#define BUCK4_ACTIVE_CR		0x23
+#define VREF_DDR_ACTIVE_CR	0x24
+#define LDO1_ACTIVE_CR		0x25
+#define LDO2_ACTIVE_CR		0x26
+#define LDO3_ACTIVE_CR		0x27
+#define LDO4_ACTIVE_CR		0x28
+#define LDO5_ACTIVE_CR		0x29
+#define LDO6_ACTIVE_CR		0x2A
+
+#define BUCK1_STDBY_CR		0x30
+#define BUCK2_STDBY_CR		0x31
+#define BUCK3_STDBY_CR		0x32
+#define BUCK4_STDBY_CR		0x33
+#define VREF_DDR_STDBY_CR	0x34
+#define LDO1_STDBY_CR		0x35
+#define LDO2_STDBY_CR		0x36
+#define LDO3_STDBY_CR		0x37
+#define LDO4_STDBY_CR		0x38
+#define LDO5_STDBY_CR		0x39
+#define LDO6_STDBY_CR		0x3A
+
+#define BST_SW_CR		0x40
+
+#define INT_PENDING_R1		0x50
+#define INT_PENDING_R2		0x51
+#define INT_PENDING_R3		0x52
+#define INT_PENDING_R4		0x53
+
+#define INT_DBG_LATCH_R1	0x60
+#define INT_DBG_LATCH_R2	0x61
+#define INT_DBG_LATCH_R3	0x62
+#define INT_DBG_LATCH_R4	0x63
+
+#define INT_CLEAR_R1		0x70
+#define INT_CLEAR_R2		0x71
+#define INT_CLEAR_R3		0x72
+#define INT_CLEAR_R4		0x73
+
+#define INT_MASK_R1		0x80
+#define INT_MASK_R2		0x81
+#define INT_MASK_R3		0x82
+#define INT_MASK_R4		0x83
+
+#define INT_SET_MASK_R1		0x90
+#define INT_SET_MASK_R2		0x91
+#define INT_SET_MASK_R3		0x92
+#define INT_SET_MASK_R4		0x93
+
+#define INT_CLEAR_MASK_R1	0xA0
+#define INT_CLEAR_MASK_R2	0xA1
+#define INT_CLEAR_MASK_R3	0xA2
+#define INT_CLEAR_MASK_R4	0xA3
+
+#define INT_SRC_R1		0xB0
+#define INT_SRC_R2		0xB1
+#define INT_SRC_R3		0xB2
+#define INT_SRC_R4		0xB3
+
+#define PMIC_MAX_REGISTER_ADDRESS INT_SRC_R4
+
+#define STPMIC1_PMIC_NUM_IRQ_REGS 4
+
+#define TURN_OFF_SR_ICC_EVENT	0x08
+
+#define LDO_VOLTAGE_MASK		GENMASK(6, 2)
+#define BUCK_VOLTAGE_MASK		GENMASK(7, 2)
+#define LDO_BUCK_VOLTAGE_SHIFT		2
+
+#define LDO_ENABLE_MASK			BIT(0)
+#define BUCK_ENABLE_MASK		BIT(0)
+
+#define BUCK_HPLP_ENABLE_MASK		BIT(1)
+#define BUCK_HPLP_SHIFT			1
+
+#define STDBY_ENABLE_MASK  BIT(0)
+
+#define BUCKS_PD_CR_REG_MASK	GENMASK(7, 0)
+#define BUCK_MASK_RANK_REGISTER_MASK	GENMASK(3, 0)
+#define BUCK_MASK_RESET_REGISTER_MASK	GENMASK(3, 0)
+#define LDO1234_PULL_DOWN_REGISTER_MASK	GENMASK(7, 0)
+#define LDO56_VREF_PD_CR_REG_MASK	GENMASK(5, 0)
+#define LDO_MASK_RANK_REGISTER_MASK	GENMASK(5, 0)
+#define LDO_MASK_RESET_REGISTER_MASK	GENMASK(5, 0)
+
+#define BUCK1_PULL_DOWN_REG		BUCKS_PD_CR
+#define BUCK1_PULL_DOWN_MASK		BIT(0)
+#define BUCK2_PULL_DOWN_REG		BUCKS_PD_CR
+#define BUCK2_PULL_DOWN_MASK		BIT(2)
+#define BUCK3_PULL_DOWN_REG		BUCKS_PD_CR
+#define BUCK3_PULL_DOWN_MASK		BIT(4)
+#define BUCK4_PULL_DOWN_REG		BUCKS_PD_CR
+#define BUCK4_PULL_DOWN_MASK		BIT(6)
+
+#define LDO1_PULL_DOWN_REG		LDO14_PD_CR
+#define LDO1_PULL_DOWN_MASK		BIT(0)
+#define LDO2_PULL_DOWN_REG		LDO14_PD_CR
+#define LDO2_PULL_DOWN_MASK		BIT(2)
+#define LDO3_PULL_DOWN_REG		LDO14_PD_CR
+#define LDO3_PULL_DOWN_MASK		BIT(4)
+#define LDO4_PULL_DOWN_REG		LDO14_PD_CR
+#define LDO4_PULL_DOWN_MASK		BIT(6)
+#define LDO5_PULL_DOWN_REG		LDO56_VREF_PD_CR
+#define LDO5_PULL_DOWN_MASK		BIT(0)
+#define LDO6_PULL_DOWN_REG		LDO56_VREF_PD_CR
+#define LDO6_PULL_DOWN_MASK		BIT(2)
+#define VREF_DDR_PULL_DOWN_REG		LDO56_VREF_PD_CR
+#define VREF_DDR_PULL_DOWN_MASK		BIT(4)
+
+#define BUCKS_ICCTO_CR_REG_MASK	GENMASK(6, 0)
+#define LDOS_ICCTO_CR_REG_MASK	GENMASK(5, 0)
+
+#define LDO_BYPASS_MASK			BIT(7)
+
+/* Main PMIC Control Register
+ * SWOFF_PWRCTRL_CR
+ * Address : 0x10
+ */
+#define ICC_EVENT_ENABLED		BIT(4)
+#define PWRCTRL_POLARITY_HIGH		BIT(3)
+#define PWRCTRL_PIN_VALID		BIT(2)
+#define RESTART_REQUEST_ENABLED		BIT(1)
+#define SOFTWARE_SWITCH_OFF_ENABLED	BIT(0)
+
+/* Main PMIC PADS Control Register
+ * PADS_PULL_CR
+ * Address : 0x11
+ */
+#define WAKEUP_DETECTOR_DISABLED	BIT(4)
+#define PWRCTRL_PD_ACTIVE		BIT(3)
+#define PWRCTRL_PU_ACTIVE		BIT(2)
+#define WAKEUP_PD_ACTIVE		BIT(1)
+#define PONKEY_PU_INACTIVE		BIT(0)
+
+/* Main PMIC VINLOW Control Register
+ * VBUS_DET_VIN_CRC DMSC
+ * Address : 0x15
+ */
+#define SWIN_DETECTOR_ENABLED		BIT(7)
+#define SWOUT_DETECTOR_ENABLED		BIT(6)
+#define VINLOW_ENABLED			BIT(0)
+#define VINLOW_CTRL_REG_MASK		GENMASK(7, 0)
+
+/* USB Control Register
+ * Address : 0x40
+ */
+#define BOOST_OVP_DISABLED		BIT(7)
+#define VBUS_OTG_DETECTION_DISABLED	BIT(6)
+#define SW_OUT_DISCHARGE		BIT(5)
+#define VBUS_OTG_DISCHARGE		BIT(4)
+#define OCP_LIMIT_HIGH			BIT(3)
+#define SWIN_SWOUT_ENABLED		BIT(2)
+#define USBSW_OTG_SWITCH_ENABLED	BIT(1)
+#define BOOST_ENABLED			BIT(0)
+
+/* PKEY_TURNOFF_CR
+ * Address : 0x16
+ */
+#define PONKEY_PWR_OFF			BIT(7)
+#define PONKEY_CC_FLAG_CLEAR		BIT(6)
+#define PONKEY_TURNOFF_TIMER_MASK	GENMASK(3, 0)
+#define PONKEY_TURNOFF_MASK		GENMASK(7, 0)
+
+/*
+ * struct stpmic1 - stpmic1 master device for sub-drivers
+ * @dev: master device of the chip (can be used to access platform data)
+ * @irq: main IRQ number
+ * @regmap_irq_chip_data: irq chip data
+ */
+struct stpmic1 {
+	struct device *dev;
+	struct regmap *regmap;
+	int irq;
+	struct regmap_irq_chip_data *irq_data;
+};
+
+#endif /*  __LINUX_MFD_STPMIC1_H */
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
