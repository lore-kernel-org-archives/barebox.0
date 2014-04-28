Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WegmG-0000bx-7P
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 08:19:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Apr 2014 10:18:40 +0200
Message-Id: <1398673121-6075-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1398673121-6075-1-git-send-email-s.hauer@pengutronix.de>
References: <1398673121-6075-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] Add initial regulator support
To: barebox@lists.infradead.org

Provide minimal regulator support. Only supported operations are enabling
and disabling regulators. Association of devices with their regulators is
limited to devicetree only. If regulator support is disabled the API expands
to static inline stubs so consumers can still use the API.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig           |   8 ++
 commands/Makefile          |   1 +
 commands/regulator.c       |  33 ++++++
 drivers/Kconfig            |   1 +
 drivers/Makefile           |   1 +
 drivers/regulator/Kconfig  |  13 +++
 drivers/regulator/Makefile |   2 +
 drivers/regulator/core.c   | 262 +++++++++++++++++++++++++++++++++++++++++++++
 drivers/regulator/fixed.c  | 103 ++++++++++++++++++
 include/regulator.h        |  47 ++++++++
 10 files changed, 471 insertions(+)
 create mode 100644 commands/regulator.c
 create mode 100644 drivers/regulator/Kconfig
 create mode 100644 drivers/regulator/Makefile
 create mode 100644 drivers/regulator/core.c
 create mode 100644 drivers/regulator/fixed.c
 create mode 100644 include/regulator.h

diff --git a/commands/Kconfig b/commands/Kconfig
index cc014f3..510cc91 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -690,6 +690,14 @@ config CMD_GPIO
 	  include gpio_set_value, gpio_get_value, gpio_direction_input and
 	  gpio_direction_output commands to control gpios.
 
+config CMD_REGULATOR
+	bool
+	depends on REGULATOR
+	prompt "regulator command"
+	help
+	  the regulator command lists the currently registered regulators and
+	  their current state.
+
 config CMD_UNCOMPRESS
 	bool
 	select UNCOMPRESS
diff --git a/commands/Makefile b/commands/Makefile
index e463031..7836515 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -95,3 +95,4 @@ obj-$(CONFIG_CMD_BOOT)		+= boot.o
 obj-$(CONFIG_CMD_DEVINFO)	+= devinfo.o
 obj-$(CONFIG_CMD_READF)		+= readf.o
 obj-$(CONFIG_CMD_MENUTREE)	+= menutree.o
+obj-$(CONFIG_CMD_REGULATOR)	+= regulator.o
diff --git a/commands/regulator.c b/commands/regulator.c
new file mode 100644
index 0000000..42dcd0a
--- /dev/null
+++ b/commands/regulator.c
@@ -0,0 +1,33 @@
+/*
+ * regulator command
+ *
+ * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <command.h>
+#include <regulator.h>
+
+static int do_regulator(int argc, char *argv[])
+{
+	regulators_print();
+
+	return 0;
+}
+
+BAREBOX_CMD_START(regulator)
+	.cmd		= do_regulator,
+	.usage		= "list regulators",
+BAREBOX_CMD_END
diff --git a/drivers/Kconfig b/drivers/Kconfig
index d34d2c7..7a2aa28 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -25,5 +25,6 @@ source "drivers/gpio/Kconfig"
 source "drivers/w1/Kconfig"
 source "drivers/pinctrl/Kconfig"
 source "drivers/bus/Kconfig"
+source "drivers/regulator/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index ba1dc6d..f79da89 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -24,3 +24,4 @@ obj-$(CONFIG_OFTREE) += of/
 obj-$(CONFIG_W1) += w1/
 obj-y += pinctrl/
 obj-y += bus/
+obj-$(CONFIG_REGULATOR) += regulator/
diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
new file mode 100644
index 0000000..55f87a4
--- /dev/null
+++ b/drivers/regulator/Kconfig
@@ -0,0 +1,13 @@
+menuconfig REGULATOR
+	depends on OFDEVICE
+	bool "voltage regulator support"
+
+if REGULATOR
+
+config REGULATOR_FIXED
+	bool "fixed/gpio regulator"
+	help
+	  This enables a simple fixed regulator. It is used for regulators
+	  which are not software controllable or controllable via gpio.
+
+endif
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
new file mode 100644
index 0000000..65e65d8
--- /dev/null
+++ b/drivers/regulator/Makefile
@@ -0,0 +1,2 @@
+obj-$(CONFIG_REGULATOR) += core.o
+obj-$(CONFIG_REGULATOR_FIXED) += fixed.o
diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
new file mode 100644
index 0000000..2808c27
--- /dev/null
+++ b/drivers/regulator/core.c
@@ -0,0 +1,262 @@
+/*
+ * barebox regulator support
+ *
+ * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <regulator.h>
+#include <of.h>
+#include <malloc.h>
+#include <linux/err.h>
+
+static LIST_HEAD(regulator_list);
+
+struct regulator_internal {
+	struct list_head list;
+	struct device_node *node;
+	struct regulator_dev *rdev;
+	int enable_count;
+	int enable_time_us;
+	int min_uv;
+	int max_uv;
+	char *name;
+	struct list_head consumer_list;
+};
+
+struct regulator {
+	struct regulator_internal *ri;
+	struct list_head list;
+	struct device_d *dev;
+};
+
+/*
+ * of_regulator_register - register a regulator corresponding to a device_node
+ * @rd:		the regulator device providing the ops
+ * @node:       the device_node this regulator corresponds to
+ *
+ * Return: 0 for success or a negative error code
+ */
+int of_regulator_register(struct regulator_dev *rd, struct device_node *node)
+{
+	struct regulator_internal *ri;
+	const char *name;
+
+	ri = xzalloc(sizeof(*ri));
+	ri->rdev = rd;
+	ri->node = node;
+
+	INIT_LIST_HEAD(&ri->consumer_list);
+
+	list_add_tail(&ri->list, &regulator_list);
+
+	name = of_get_property(node, "regulator-name", NULL);
+
+	if (name)
+		ri->name = xstrdup(name);
+
+	of_property_read_u32(node, "regulator-enable-ramp-delay",
+			&ri->enable_time_us);
+	of_property_read_u32(node, "regulator-min-microvolt",
+			&ri->min_uv);
+	of_property_read_u32(node, "regulator-max-microvolt",
+			&ri->max_uv);
+
+	return 0;
+}
+
+static struct regulator_internal *of_regulator_get(struct device_d *dev, const char *supply)
+{
+	char *propname;
+	struct regulator_internal *ri;
+	struct device_node *node;
+
+	propname = asprintf("%s-supply", supply);
+
+	/*
+	 * If the device does have a device node return the dummy regulator.
+	 */
+	if (!dev->device_node)
+		return NULL;
+
+	/*
+	 * If the device node does not contain a supply property, this device doesn't
+	 * need a regulator. Return the dummy regulator in this case.
+	 */
+	if (!of_get_property(dev->device_node, propname, NULL)) {
+		dev_dbg(dev, "No %s-supply node found, using dummy regulator\n",
+				supply);
+		ri = NULL;
+		goto out;
+	}
+
+	/*
+	 * The device node specifies a supply, so it's mandatory. Return an error when
+	 * something goes wrong below.
+	 */
+	node = of_parse_phandle(dev->device_node, propname, 0);
+	if (!node) {
+		dev_dbg(dev, "No %s node found\n", propname);
+		ri = ERR_PTR(-EINVAL);
+		goto out;
+	}
+
+	list_for_each_entry(ri, &regulator_list, list) {
+		if (ri->node == node) {
+			dev_dbg(dev, "Using %s regulator from %s\n",
+					propname, node->full_name);
+			goto out;
+		}
+	}
+
+	ri = ERR_PTR(-ENODEV);
+out:
+	free(propname);
+
+	return ri;
+}
+
+/*
+ * regulator_get - get the supply for a device.
+ * @dev:	the device a supply is requested for
+ * @supply:     the supply name
+ *
+ * This returns a supply for a device. Check the result with IS_ERR().
+ * NULL is a valid regulator, the dummy regulator.
+ *
+ * Return: a regulator object or an error pointer
+ */
+struct regulator *regulator_get(struct device_d *dev, const char *supply)
+{
+	struct regulator_internal *ri;
+	struct regulator *r;
+
+	if (!dev->device_node)
+		return NULL;
+
+	ri = of_regulator_get(dev, supply);
+	if (IS_ERR(ri))
+		return ERR_CAST(ri);
+
+	if (!ri)
+		return NULL;
+
+	r = xzalloc(sizeof(*r));
+	r->ri = ri;
+	r->dev = dev;
+
+	list_add_tail(&r->list, &ri->consumer_list);
+
+	return r;
+}
+
+/*
+ * regulator_enable - enable a regulator.
+ * @r:		the regulator to enable
+ *
+ * This enables a regulator. Regulators are reference counted, only the
+ * first enable operation will enable the regulator.
+ *
+ * Return: 0 for success or a negative error code
+ */
+int regulator_enable(struct regulator *r)
+{
+	struct regulator_internal *ri;
+	int ret;
+
+	if (!r)
+		return 0;
+
+	ri = r->ri;
+
+	if (ri->enable_count) {
+		ri->enable_count++;
+		return 0;
+	}
+
+	if (!ri->rdev->ops->enable)
+		return -ENOSYS;
+
+	ret = ri->rdev->ops->enable(ri->rdev);
+	if (ret)
+		return ret;
+
+	if (ri->enable_time_us)
+		udelay(ri->enable_time_us);
+
+	ri->enable_count++;
+
+	return 0;
+}
+
+/*
+ * regulator_disable - disable a regulator.
+ * @r:		the regulator to disable
+ *
+ * This disables a regulator. Regulators are reference counted, only the
+ * when balanced with regulator_enable the regulator will be disabled.
+ *
+ * Return: 0 for success or a negative error code
+ */
+int regulator_disable(struct regulator *r)
+{
+	struct regulator_internal *ri;
+	int ret;
+
+	if (!r)
+		return 0;
+
+	ri = r->ri;
+
+	if (!ri->enable_count)
+		return -EINVAL;
+
+	if (!ri->rdev->ops->disable)
+		return -ENOSYS;
+
+	ret = ri->rdev->ops->disable(ri->rdev);
+	if (ret)
+		return ret;
+
+	ri->enable_count--;
+
+	return 0;
+}
+
+static void regulator_print_one(struct regulator_internal *ri)
+{
+	struct regulator *r;
+
+	printf("%-20s %6d %10d %10d\n", ri->name, ri->enable_count, ri->min_uv, ri->max_uv);
+
+	if (!list_empty(&ri->consumer_list)) {
+		printf(" consumers:\n");
+
+		list_for_each_entry(r, &ri->consumer_list, list)
+			printf("   %s\n", dev_name(r->dev));
+	}
+}
+
+/*
+ * regulators_print - print informations about all regulators
+ */
+void regulators_print(void)
+{
+	struct regulator_internal *ri;
+
+	printf("%-20s %6s %10s %10s\n", "name", "enable", "min_uv", "max_uv");
+	list_for_each_entry(ri, &regulator_list, list)
+		regulator_print_one(ri);
+}
diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
new file mode 100644
index 0000000..892c663
--- /dev/null
+++ b/drivers/regulator/fixed.c
@@ -0,0 +1,103 @@
+/*
+ * fixed regulator support
+ *
+ * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <malloc.h>
+#include <init.h>
+#include <regulator.h>
+#include <of.h>
+#include <of_gpio.h>
+#include <gpio.h>
+
+struct regulator_fixed {
+	int gpio;
+	int active_low;
+	struct regulator_dev rdev;
+};
+
+static int regulator_fixed_enable(struct regulator_dev *rdev)
+{
+	struct regulator_fixed *fix = container_of(rdev, struct regulator_fixed, rdev);
+
+	if (!gpio_is_valid(fix->gpio))
+		return 0;
+
+	return gpio_direction_output(fix->gpio, !fix->active_low);
+}
+
+static int regulator_fixed_disable(struct regulator_dev *rdev)
+{
+	struct regulator_fixed *fix = container_of(rdev, struct regulator_fixed, rdev);
+
+	if (!gpio_is_valid(fix->gpio))
+		return -EINVAL;
+
+	return gpio_direction_output(fix->gpio, fix->active_low);
+}
+
+static struct regulator_ops fixed_ops = {
+	.enable = regulator_fixed_enable,
+	.disable = regulator_fixed_disable,
+};
+
+static int regulator_fixed_probe(struct device_d *dev)
+{
+	struct regulator_fixed *fix;
+	enum of_gpio_flags gpioflags;
+	int ret;
+
+	if (!dev->device_node)
+		return -EINVAL;
+
+	fix = xzalloc(sizeof(*fix));
+
+	if (of_get_property(dev->device_node, "gpio", NULL)) {
+		fix->gpio = of_get_named_gpio_flags(dev->device_node, "gpio", 0, &gpioflags);
+		if (fix->gpio < 0) {
+			ret = fix->gpio;
+			goto err;
+		}
+
+		if (gpioflags & OF_GPIO_ACTIVE_LOW)
+			fix->active_low = 1;
+	}
+
+	fix->rdev.ops = &fixed_ops;
+
+	ret = of_regulator_register(&fix->rdev, dev->device_node);
+	if (ret)
+		return ret;
+
+	return 0;
+err:
+	free(fix);
+
+	return ret;
+}
+
+static struct of_device_id regulator_fixed_of_ids[] = {
+	{ .compatible = "regulator-fixed", },
+	{ }
+};
+
+static struct driver_d regulator_fixed_driver = {
+	.name  = "regulator-fixed",
+	.probe = regulator_fixed_probe,
+	.of_compatible = DRV_OF_COMPAT(regulator_fixed_of_ids),
+};
+coredevice_platform_driver(regulator_fixed_driver);
diff --git a/include/regulator.h b/include/regulator.h
new file mode 100644
index 0000000..26a5e56
--- /dev/null
+++ b/include/regulator.h
@@ -0,0 +1,47 @@
+#ifndef __REGULATOR_H
+#define __REGULATOR_H
+
+/* struct regulator is an opaque object for consumers */
+struct regulator;
+
+struct regulator_dev {
+	struct regulator_ops *ops;
+};
+
+struct regulator_ops {
+	/* enable/disable regulator */
+	int (*enable) (struct regulator_dev *);
+	int (*disable) (struct regulator_dev *);
+	int (*is_enabled) (struct regulator_dev *);
+};
+
+int of_regulator_register(struct regulator_dev *rd, struct device_node *node);
+
+void regulators_print(void);
+
+#ifdef CONFIG_REGULATOR
+
+struct regulator *regulator_get(struct device_d *, const char *);
+int regulator_enable(struct regulator *);
+int regulator_disable(struct regulator *);
+
+#else
+
+static inline struct regulator *regulator_get(struct device_d *dev, const char *id)
+{
+	return NULL;
+}
+
+static inline int regulator_enable(struct regulator *r)
+{
+	return 0;
+}
+
+static inline int regulator_disable(struct regulator *r)
+{
+	return 0;
+}
+
+#endif
+
+#endif /* __REGULATOR_H */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
