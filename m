Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giCH3-0004Fw-Sv
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 05:56:05 +0000
Received: by mail-pl1-x642.google.com with SMTP id t13so7711919ply.13
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2019 21:56:01 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 11 Jan 2019 21:55:13 -0800
Message-Id: <20190112055524.7733-8-andrew.smirnov@gmail.com>
In-Reply-To: <20190112055524.7733-1-andrew.smirnov@gmail.com>
References: <20190112055524.7733-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 07/18] regulator: Port ANATOP driver from Linux
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port a subset of Linux driver sufficient enough to support feature
needed for PCIe on i.MX7.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/regulator/Kconfig            |   8 ++
 drivers/regulator/Makefile           |   3 +-
 drivers/regulator/anatop-regulator.c | 161 +++++++++++++++++++++++++++
 3 files changed, 171 insertions(+), 1 deletion(-)
 create mode 100644 drivers/regulator/anatop-regulator.c

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 92db8dc0e0..c734ef5ef9 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -21,4 +21,12 @@ config REGULATOR_PFUZE
 	depends on I2C
 	depends on ARCH_IMX6
 
+config REGULATOR_ANATOP
+	tristate "Freescale i.MX on-chip ANATOP LDO regulators"
+	depends on MFD_SYSCON
+	help
+	  Say y here to support Freescale i.MX on-chip ANATOP LDOs
+	  regulators. It is recommended that this option be
+	  enabled on i.MX6 platform.
+
 endif
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index 36ce3e87f7..b2fc5b79b6 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_REGULATOR) += core.o helpers.o
 obj-$(CONFIG_REGULATOR_FIXED) += fixed.o
 obj-$(CONFIG_REGULATOR_BCM283X) += bcm2835.o
-obj-$(CONFIG_REGULATOR_PFUZE) += pfuze.o
\ No newline at end of file
+obj-$(CONFIG_REGULATOR_PFUZE) += pfuze.o
+obj-$(CONFIG_REGULATOR_ANATOP) += anatop-regulator.o
\ No newline at end of file
diff --git a/drivers/regulator/anatop-regulator.c b/drivers/regulator/anatop-regulator.c
new file mode 100644
index 0000000000..3944fd592c
--- /dev/null
+++ b/drivers/regulator/anatop-regulator.c
@@ -0,0 +1,161 @@
+/*
+ * Copyright (C) 2011 Freescale Semiconductor, Inc. All Rights Reserved.
+ */
+
+/*
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+
+ * You should have received a copy of the GNU General Public License along
+ * with this program; if not, write to the Free Software Foundation, Inc.,
+ * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mfd/syscon.h>
+#include <regmap.h>
+#include <regulator.h>
+
+struct anatop_regulator {
+	u32 control_reg;
+	struct regmap *anatop;
+	int vol_bit_shift;
+	int vol_bit_width;
+	u32 delay_reg;
+	int delay_bit_shift;
+	int delay_bit_width;
+	int min_bit_val;
+	int min_voltage;
+	int max_voltage;
+
+	struct regulator_dev  rdev;
+	struct regulator_desc rdesc;
+
+	bool bypass;
+	int sel;
+};
+
+static struct regulator_ops anatop_rops = {
+	.set_voltage_sel = regulator_set_voltage_sel_regmap,
+	.list_voltage = regulator_list_voltage_linear,
+};
+
+static int anatop_regulator_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	struct device_node *anatop_np;
+	struct regulator_desc *rdesc;
+	struct regulator_dev *rdev;
+	struct anatop_regulator *sreg;
+	int ret = 0;
+
+	sreg  = xzalloc(sizeof(*sreg));
+	rdesc = &sreg->rdesc;
+	rdev  = &sreg->rdev;
+
+	anatop_np = of_get_parent(np);
+	if (!anatop_np)
+		return -ENODEV;
+
+	rdev->desc = rdesc;
+	rdev->regmap = syscon_node_to_regmap(anatop_np);
+	if (IS_ERR(rdev->regmap))
+		return PTR_ERR(rdev->regmap);
+
+	ret = of_property_read_u32(np, "anatop-reg-offset",
+				   &sreg->control_reg);
+	if (ret) {
+		dev_err(dev, "no anatop-reg-offset property set\n");
+		return ret;
+	}
+	ret = of_property_read_u32(np, "anatop-vol-bit-width",
+				   &sreg->vol_bit_width);
+	if (ret) {
+		dev_err(dev, "no anatop-vol-bit-width property set\n");
+		return ret;
+	}
+	ret = of_property_read_u32(np, "anatop-vol-bit-shift",
+				   &sreg->vol_bit_shift);
+	if (ret) {
+		dev_err(dev, "no anatop-vol-bit-shift property set\n");
+		return ret;
+	}
+	ret = of_property_read_u32(np, "anatop-min-bit-val",
+				   &sreg->min_bit_val);
+	if (ret) {
+		dev_err(dev, "no anatop-min-bit-val property set\n");
+		return ret;
+	}
+	ret = of_property_read_u32(np, "anatop-min-voltage",
+				   &sreg->min_voltage);
+	if (ret) {
+		dev_err(dev, "no anatop-min-voltage property set\n");
+		return ret;
+	}
+	ret = of_property_read_u32(np, "anatop-max-voltage",
+				   &sreg->max_voltage);
+	if (ret) {
+		dev_err(dev, "no anatop-max-voltage property set\n");
+		return ret;
+	}
+
+	/* read LDO ramp up setting, only for core reg */
+	of_property_read_u32(np, "anatop-delay-reg-offset",
+			     &sreg->delay_reg);
+	of_property_read_u32(np, "anatop-delay-bit-width",
+			     &sreg->delay_bit_width);
+	of_property_read_u32(np, "anatop-delay-bit-shift",
+			     &sreg->delay_bit_shift);
+
+	rdesc->n_voltages = (sreg->max_voltage - sreg->min_voltage) / 25000 + 1
+			    + sreg->min_bit_val;
+	rdesc->min_uV = sreg->min_voltage;
+	rdesc->uV_step = 25000;
+	rdesc->linear_min_sel = sreg->min_bit_val;
+	rdesc->vsel_reg  = sreg->control_reg;
+	rdesc->vsel_mask = GENMASK(sreg->vol_bit_width + sreg->vol_bit_shift,
+				   sreg->vol_bit_shift);
+
+	/* Only core regulators have the ramp up delay configuration. */
+	if (sreg->control_reg && sreg->delay_bit_width) {
+		free(sreg);
+		return -ENODEV;
+	} else {
+		u32 enable_bit;
+
+		rdesc->ops = &anatop_rops;
+
+		if (!of_property_read_u32(np, "anatop-enable-bit",
+					  &enable_bit)) {
+			anatop_rops.enable  = regulator_enable_regmap;
+			anatop_rops.disable = regulator_disable_regmap;
+			anatop_rops.is_enabled = regulator_is_enabled_regmap;
+
+			rdesc->enable_reg = sreg->control_reg;
+			rdesc->enable_mask = BIT(enable_bit);
+		}
+	}
+
+	return of_regulator_register(rdev, dev->device_node);
+}
+
+static const struct of_device_id of_anatop_regulator_match_tbl[] = {
+	{ .compatible = "fsl,anatop-regulator", },
+	{ /* end */ }
+};
+
+static struct driver_d anatop_regulator_driver = {
+	.name = "anatop_regulator",
+	.probe = anatop_regulator_probe,
+	.of_compatible = DRV_OF_COMPAT(of_anatop_regulator_match_tbl),
+};
+device_platform_driver(anatop_regulator_driver);
+
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
