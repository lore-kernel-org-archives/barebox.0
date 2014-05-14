Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkg4o-0000Eo-MH
 for barebox@lists.infradead.org; Wed, 14 May 2014 20:47:00 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p548307D2.dip0.t-ipconnect.de [84.131.7.210])
 by lynxeye.de (Postfix) with ESMTPA id 43A5C18B4246
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 22:45:57 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 14 May 2014 22:45:28 +0200
Message-Id: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 01/25] reset: add reset controller framework
To: barebox@lists.infradead.org

Add stripped sown version of the reset controller
framework from the Linux kernel.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/Kconfig                  |   1 +
 drivers/Makefile                 |   1 +
 drivers/reset/Kconfig            |  13 +++
 drivers/reset/Makefile           |   1 +
 drivers/reset/core.c             | 236 +++++++++++++++++++++++++++++++++++++++
 include/linux/reset-controller.h |  50 +++++++++
 include/linux/reset.h            |  67 +++++++++++
 7 files changed, 369 insertions(+)
 create mode 100644 drivers/reset/Kconfig
 create mode 100644 drivers/reset/Makefile
 create mode 100644 drivers/reset/core.c
 create mode 100644 include/linux/reset-controller.h
 create mode 100644 include/linux/reset.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 7a2aa2810cb3..53e1e975600c 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -26,5 +26,6 @@ source "drivers/w1/Kconfig"
 source "drivers/pinctrl/Kconfig"
 source "drivers/bus/Kconfig"
 source "drivers/regulator/Kconfig"
+source "drivers/reset/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index f79da89e94f6..ef3604f56cb8 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -25,3 +25,4 @@ obj-$(CONFIG_W1) += w1/
 obj-y += pinctrl/
 obj-y += bus/
 obj-$(CONFIG_REGULATOR) += regulator/
+obj-$(CONFIG_RESET_CONTROLLER) += reset/
diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
new file mode 100644
index 000000000000..c9d04f797862
--- /dev/null
+++ b/drivers/reset/Kconfig
@@ -0,0 +1,13 @@
+config ARCH_HAS_RESET_CONTROLLER
+	bool
+
+menuconfig RESET_CONTROLLER
+	bool "Reset Controller Support"
+	default y if ARCH_HAS_RESET_CONTROLLER
+	help
+	  Generic Reset Controller support.
+
+	  This framework is designed to abstract reset handling of devices
+	  via GPIOs or SoC-internal reset controller modules.
+
+	  If unsure, say no.
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
new file mode 100644
index 000000000000..1e2d83f2b995
--- /dev/null
+++ b/drivers/reset/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_RESET_CONTROLLER) += core.o
diff --git a/drivers/reset/core.c b/drivers/reset/core.c
new file mode 100644
index 000000000000..101913aefe4e
--- /dev/null
+++ b/drivers/reset/core.c
@@ -0,0 +1,236 @@
+/*
+ * Reset Controller framework
+ *
+ * Copyright 2013 Philipp Zabel, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+#include <common.h>
+#include <malloc.h>
+#include <linux/err.h>
+#include <linux/kernel.h>
+#include <linux/reset.h>
+#include <linux/reset-controller.h>
+
+static LIST_HEAD(reset_controller_list);
+
+/**
+ * struct reset_control - a reset control
+ * @rcdev: a pointer to the reset controller device
+ *         this reset control belongs to
+ * @id: ID of the reset controller in the reset
+ *      controller device
+ */
+struct reset_control {
+	struct reset_controller_dev *rcdev;
+	struct device_d *dev;
+	unsigned int id;
+};
+
+/**
+ * of_reset_simple_xlate - translate reset_spec to the reset line number
+ * @rcdev: a pointer to the reset controller device
+ * @reset_spec: reset line specifier as found in the device tree
+ * @flags: a flags pointer to fill in (optional)
+ *
+ * This simple translation function should be used for reset controllers
+ * with 1:1 mapping, where reset lines can be indexed by number without gaps.
+ */
+static int of_reset_simple_xlate(struct reset_controller_dev *rcdev,
+			  const struct of_phandle_args *reset_spec)
+{
+	if (WARN_ON(reset_spec->args_count != rcdev->of_reset_n_cells))
+		return -EINVAL;
+
+	if (reset_spec->args[0] >= rcdev->nr_resets)
+		return -EINVAL;
+
+	return reset_spec->args[0];
+}
+
+/**
+ * reset_controller_register - register a reset controller device
+ * @rcdev: a pointer to the initialized reset controller device
+ */
+int reset_controller_register(struct reset_controller_dev *rcdev)
+{
+	if (!rcdev->of_xlate) {
+		rcdev->of_reset_n_cells = 1;
+		rcdev->of_xlate = of_reset_simple_xlate;
+	}
+
+	list_add(&rcdev->list, &reset_controller_list);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(reset_controller_register);
+
+/**
+ * reset_controller_unregister - unregister a reset controller device
+ * @rcdev: a pointer to the reset controller device
+ */
+void reset_controller_unregister(struct reset_controller_dev *rcdev)
+{
+	list_del(&rcdev->list);
+}
+EXPORT_SYMBOL_GPL(reset_controller_unregister);
+
+/**
+ * reset_control_reset - reset the controlled device
+ * @rstc: reset controller
+ */
+int reset_control_reset(struct reset_control *rstc)
+{
+	if (rstc->rcdev->ops->reset)
+		return rstc->rcdev->ops->reset(rstc->rcdev, rstc->id);
+
+	return -ENOSYS;
+}
+EXPORT_SYMBOL_GPL(reset_control_reset);
+
+/**
+ * reset_control_assert - asserts the reset line
+ * @rstc: reset controller
+ */
+int reset_control_assert(struct reset_control *rstc)
+{
+	if (rstc->rcdev->ops->assert)
+		return rstc->rcdev->ops->assert(rstc->rcdev, rstc->id);
+
+	return -ENOSYS;
+}
+EXPORT_SYMBOL_GPL(reset_control_assert);
+
+/**
+ * reset_control_deassert - deasserts the reset line
+ * @rstc: reset controller
+ */
+int reset_control_deassert(struct reset_control *rstc)
+{
+	if (rstc->rcdev->ops->deassert)
+		return rstc->rcdev->ops->deassert(rstc->rcdev, rstc->id);
+
+	return -ENOSYS;
+}
+EXPORT_SYMBOL_GPL(reset_control_deassert);
+
+/**
+ * of_reset_control_get - Lookup and obtain a reference to a reset controller.
+ * @node: device to be reset by the controller
+ * @id: reset line name
+ *
+ * Returns a struct reset_control or IS_ERR() condition containing errno.
+ *
+ * Use of id names is optional.
+ */
+struct reset_control *of_reset_control_get(struct device_node *node,
+					   const char *id)
+{
+	struct reset_control *rstc = ERR_PTR(-ENODEV);
+	struct reset_controller_dev *r, *rcdev;
+	struct of_phandle_args args;
+	int index = 0;
+	int rstc_id;
+	int ret;
+
+	if (id)
+		index = of_property_match_string(node,
+						 "reset-names", id);
+	ret = of_parse_phandle_with_args(node, "resets", "#reset-cells",
+					 index, &args);
+	if (ret)
+		return ERR_PTR(ret);
+
+	rcdev = NULL;
+	list_for_each_entry(r, &reset_controller_list, list) {
+		if (args.np == r->of_node) {
+			rcdev = r;
+			break;
+		}
+	}
+
+	if (!rcdev) {
+		return ERR_PTR(-ENODEV);
+	}
+
+	rstc_id = rcdev->of_xlate(rcdev, &args);
+	if (rstc_id < 0)
+		return ERR_PTR(rstc_id);
+
+	rstc = kzalloc(sizeof(*rstc), GFP_KERNEL);
+	if (!rstc)
+		return ERR_PTR(-ENOMEM);
+
+	rstc->rcdev = rcdev;
+	rstc->id = rstc_id;
+
+	return rstc;
+}
+EXPORT_SYMBOL_GPL(of_reset_control_get);
+
+/**
+ * reset_control_get - Lookup and obtain a reference to a reset controller.
+ * @dev: device to be reset by the controller
+ * @id: reset line name
+ *
+ * Returns a struct reset_control or IS_ERR() condition containing errno.
+ *
+ * Use of id names is optional.
+ */
+struct reset_control *reset_control_get(struct device_d *dev, const char *id)
+{
+	struct reset_control *rstc;
+
+	if (!dev)
+		return ERR_PTR(-EINVAL);
+
+	rstc = of_reset_control_get(dev->device_node, id);
+	if (!IS_ERR(rstc))
+		rstc->dev = dev;
+
+	return rstc;
+}
+EXPORT_SYMBOL_GPL(reset_control_get);
+
+/**
+ * reset_control_put - free the reset controller
+ * @rstc: reset controller
+ */
+
+void reset_control_put(struct reset_control *rstc)
+{
+	if (IS_ERR(rstc))
+		return;
+
+	kfree(rstc);
+}
+EXPORT_SYMBOL_GPL(reset_control_put);
+
+/**
+ * device_reset - find reset controller associated with the device
+ *                and perform reset
+ * @dev: device to be reset by the controller
+ *
+ * Convenience wrapper for reset_control_get() and reset_control_reset().
+ * This is useful for the common case of devices with single, dedicated reset
+ * lines.
+ */
+int device_reset(struct device_d *dev)
+{
+	struct reset_control *rstc;
+	int ret;
+
+	rstc = reset_control_get(dev, NULL);
+	if (IS_ERR(rstc))
+		return PTR_ERR(rstc);
+
+	ret = reset_control_reset(rstc);
+
+	reset_control_put(rstc);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(device_reset);
diff --git a/include/linux/reset-controller.h b/include/linux/reset-controller.h
new file mode 100644
index 000000000000..d8265486a0dd
--- /dev/null
+++ b/include/linux/reset-controller.h
@@ -0,0 +1,50 @@
+#ifndef _LINUX_RESET_CONTROLLER_H_
+#define _LINUX_RESET_CONTROLLER_H_
+
+#include <linux/list.h>
+
+struct reset_controller_dev;
+
+/**
+ * struct reset_control_ops
+ *
+ * @reset: for self-deasserting resets, does all necessary
+ *         things to reset the device
+ * @assert: manually assert the reset line, if supported
+ * @deassert: manually deassert the reset line, if supported
+ */
+struct reset_control_ops {
+	int (*reset)(struct reset_controller_dev *rcdev, unsigned long id);
+	int (*assert)(struct reset_controller_dev *rcdev, unsigned long id);
+	int (*deassert)(struct reset_controller_dev *rcdev, unsigned long id);
+};
+
+struct device_node;
+struct of_phandle_args;
+
+/**
+ * struct reset_controller_dev - reset controller entity that might
+ *                               provide multiple reset controls
+ * @ops: a pointer to device specific struct reset_control_ops
+ * @owner: kernel module of the reset controller driver
+ * @list: internal list of reset controller devices
+ * @of_node: corresponding device tree node as phandle target
+ * @of_reset_n_cells: number of cells in reset line specifiers
+ * @of_xlate: translation function to translate from specifier as found in the
+ *            device tree to id as given to the reset control ops
+ * @nr_resets: number of reset controls in this reset controller device
+ */
+struct reset_controller_dev {
+	struct reset_control_ops *ops;
+	struct list_head list;
+	struct device_node *of_node;
+	int of_reset_n_cells;
+	int (*of_xlate)(struct reset_controller_dev *rcdev,
+			const struct of_phandle_args *reset_spec);
+	unsigned int nr_resets;
+};
+
+int reset_controller_register(struct reset_controller_dev *rcdev);
+void reset_controller_unregister(struct reset_controller_dev *rcdev);
+
+#endif
diff --git a/include/linux/reset.h b/include/linux/reset.h
new file mode 100644
index 000000000000..f6c475c68be1
--- /dev/null
+++ b/include/linux/reset.h
@@ -0,0 +1,67 @@
+#ifndef _LINUX_RESET_H_
+#define _LINUX_RESET_H_
+
+struct device_d;
+struct reset_control;
+
+#ifdef CONFIG_RESET_CONTROLLER
+
+int reset_control_reset(struct reset_control *rstc);
+int reset_control_assert(struct reset_control *rstc);
+int reset_control_deassert(struct reset_control *rstc);
+
+struct reset_control *reset_control_get(struct device_d *dev, const char *id);
+void reset_control_put(struct reset_control *rstc);
+
+int __must_check device_reset(struct device_d *dev);
+
+static inline int device_reset_optional(struct device_d *dev)
+{
+	return device_reset(dev);
+}
+
+static inline struct reset_control *reset_control_get_optional(
+					struct device_d *dev, const char *id)
+{
+	return reset_control_get(dev, id);
+}
+
+#else
+
+static inline int reset_control_reset(struct reset_control *rstc)
+{
+	WARN_ON(1);
+	return 0;
+}
+
+static inline int reset_control_assert(struct reset_control *rstc)
+{
+	WARN_ON(1);
+	return 0;
+}
+
+static inline int reset_control_deassert(struct reset_control *rstc)
+{
+	WARN_ON(1);
+	return 0;
+}
+
+static inline void reset_control_put(struct reset_control *rstc)
+{
+	WARN_ON(1);
+}
+
+static inline int device_reset_optional(struct device_d *dev)
+{
+	return -ENOSYS;
+}
+
+static inline struct reset_control *reset_control_get_optional(
+					struct device_d *dev, const char *id)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+#endif /* CONFIG_RESET_CONTROLLER */
+
+#endif
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
