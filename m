Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xl1S0-0006pP-U0
 for barebox@lists.infradead.org; Sun, 02 Nov 2014 20:08:43 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id 4520B26C2005
 for <barebox@lists.infradead.org>; Sun,  2 Nov 2014 21:06:51 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  2 Nov 2014 21:13:53 +0100
Message-Id: <1414959235-18095-12-git-send-email-dev@lynxeye.de>
In-Reply-To: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
References: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 11/13] add generic PHY framework
To: barebox@lists.infradead.org

This brings in the generix PHY framework from Linux.
I tried to strip it down as much as possible while
keeping it useful.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/Kconfig         |   1 +
 drivers/Makefile        |   1 +
 drivers/phy/Kconfig     |  18 +++
 drivers/phy/Makefile    |   5 +
 drivers/phy/phy-core.c  | 318 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/phy/phy.h | 240 ++++++++++++++++++++++++++++++++++++
 6 files changed, 583 insertions(+)
 create mode 100644 drivers/phy/Kconfig
 create mode 100644 drivers/phy/Makefile
 create mode 100644 drivers/phy/phy-core.c
 create mode 100644 include/linux/phy/phy.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index e126f62..5984ccc 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -30,5 +30,6 @@ source "drivers/reset/Kconfig"
 source "drivers/pci/Kconfig"
 source "drivers/rtc/Kconfig"
 source "drivers/firmware/Kconfig"
+source "drivers/phy/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index cf42190..7ef5e90 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -29,3 +29,4 @@ obj-$(CONFIG_RESET_CONTROLLER) += reset/
 obj-$(CONFIG_PCI) += pci/
 obj-y += rtc/
 obj-$(CONFIG_FIRMWARE) += firmware/
+obj-$(CONFIG_GENERIC_PHY) += phy/
diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
new file mode 100644
index 0000000..e9461e1
--- /dev/null
+++ b/drivers/phy/Kconfig
@@ -0,0 +1,18 @@
+#
+# PHY
+#
+
+menu "PHY Subsystem"
+
+config GENERIC_PHY
+	bool "PHY Core"
+	help
+	  Generic PHY support.
+
+	  This framework is designed to provide a generic interface for PHY
+	  devices present in the kernel. This layer will have the generic
+	  API by which phy drivers can create PHY using the phy framework and
+	  phy users can obtain reference to the PHY. All the users of this
+	  framework should select this config.
+
+endmenu
diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
new file mode 100644
index 0000000..74514ae
--- /dev/null
+++ b/drivers/phy/Makefile
@@ -0,0 +1,5 @@
+#
+# Makefile for the phy drivers.
+#
+
+obj-$(CONFIG_GENERIC_PHY)		+= phy-core.o
diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
new file mode 100644
index 0000000..67af14f
--- /dev/null
+++ b/drivers/phy/phy-core.c
@@ -0,0 +1,318 @@
+/*
+ * phy-core.c  --  Generic Phy framework.
+ *
+ * Copyright (C) 2014 Lucas Stach <l.stach@pengutronix.de>
+ * Copyright (C) 2013 Texas Instruments Incorporated - http://www.ti.com
+ *
+ * Author: Kishon Vijay Abraham I <kishon@ti.com>
+ *
+ * This program is free software; you can redistribute  it and/or modify it
+ * under  the terms of  the GNU General  Public License as published by the
+ * Free Software Foundation;  either version 2 of the  License, or (at your
+ * option) any later version.
+ */
+
+#include <common.h>
+#include <malloc.h>
+#include <linux/phy/phy.h>
+
+static LIST_HEAD(phy_provider_list);
+static int phy_ida;
+
+/**
+ * phy_create() - create a new phy
+ * @dev: device that is creating the new phy
+ * @node: device node of the phy
+ * @ops: function pointers for performing phy operations
+ * @init_data: contains the list of PHY consumers or NULL
+ *
+ * Called to create a phy using phy framework.
+ */
+struct phy *phy_create(struct device_d *dev, struct device_node *node,
+		       const struct phy_ops *ops,
+		       struct phy_init_data *init_data)
+{
+	int ret;
+	int id;
+	struct phy *phy;
+
+	if (WARN_ON(!dev))
+		return ERR_PTR(-EINVAL);
+
+	phy = kzalloc(sizeof(*phy), GFP_KERNEL);
+	if (!phy)
+		return ERR_PTR(-ENOMEM);
+
+	id = phy_ida++;
+
+	snprintf(phy->dev.name, MAX_DRIVER_NAME, "phy");
+	phy->dev.id = id;
+	phy->dev.parent = dev;
+	phy->dev.device_node = node ?: dev->device_node;
+	phy->id = id;
+	phy->ops = ops;
+	phy->init_data = init_data;
+
+	ret = register_device(&phy->dev);
+	if (ret)
+		goto free_ida;
+
+	return phy;
+
+free_ida:
+	phy_ida--;
+	kfree(phy);
+	return ERR_PTR(ret);
+}
+
+/**
+ * __of_phy_provider_register() - create/register phy provider with the framework
+ * @dev: struct device of the phy provider
+ * @owner: the module owner containing of_xlate
+ * @of_xlate: function pointer to obtain phy instance from phy provider
+ *
+ * Creates struct phy_provider from dev and of_xlate function pointer.
+ * This is used in the case of dt boot for finding the phy instance from
+ * phy provider.
+ */
+struct phy_provider *__of_phy_provider_register(struct device_d *dev,
+	struct phy * (*of_xlate)(struct device_d *dev,
+	struct of_phandle_args *args))
+{
+	struct phy_provider *phy_provider;
+
+	phy_provider = kzalloc(sizeof(*phy_provider), GFP_KERNEL);
+	if (!phy_provider)
+		return ERR_PTR(-ENOMEM);
+
+	phy_provider->dev = dev;
+	phy_provider->of_xlate = of_xlate;
+
+	list_add_tail(&phy_provider->list, &phy_provider_list);
+
+	return phy_provider;
+}
+
+/**
+ * of_phy_provider_unregister() - unregister phy provider from the framework
+ * @phy_provider: phy provider returned by of_phy_provider_register()
+ *
+ * Removes the phy_provider created using of_phy_provider_register().
+ */
+void of_phy_provider_unregister(struct phy_provider *phy_provider)
+{
+	if (IS_ERR(phy_provider))
+		return;
+
+	list_del(&phy_provider->list);
+	kfree(phy_provider);
+}
+
+int phy_init(struct phy *phy)
+{
+	int ret;
+
+	if (!phy)
+		return 0;
+
+	if (phy->init_count == 0 && phy->ops->init) {
+		ret = phy->ops->init(phy);
+		if (ret < 0) {
+			dev_err(&phy->dev, "phy init failed --> %d\n", ret);
+			return ret;
+		}
+	}
+	++phy->init_count;
+
+	return 0;
+}
+
+int phy_exit(struct phy *phy)
+{
+	int ret;
+
+	if (!phy)
+		return 0;
+
+	if (phy->init_count == 1 && phy->ops->exit) {
+		ret = phy->ops->exit(phy);
+		if (ret < 0) {
+			dev_err(&phy->dev, "phy exit failed --> %d\n", ret);
+			return ret;
+		}
+	}
+	--phy->init_count;
+
+	return 0;
+}
+
+int phy_power_on(struct phy *phy)
+{
+	int ret;
+
+	if (!phy)
+		return 0;
+
+	if (phy->pwr) {
+		ret = regulator_enable(phy->pwr);
+		if (ret)
+			return ret;
+	}
+
+	if (phy->power_count == 0 && phy->ops->power_on) {
+		ret = phy->ops->power_on(phy);
+		if (ret < 0) {
+			dev_err(&phy->dev, "phy poweron failed --> %d\n", ret);
+			goto out;
+		}
+	} else {
+		ret = 0; /* Override possible ret == -ENOTSUPP */
+	}
+	++phy->power_count;
+
+	return 0;
+
+out:
+	if (phy->pwr)
+		regulator_disable(phy->pwr);
+
+	return ret;
+}
+
+int phy_power_off(struct phy *phy)
+{
+	int ret;
+
+	if (!phy)
+		return 0;
+
+	if (phy->power_count == 1 && phy->ops->power_off) {
+		ret =  phy->ops->power_off(phy);
+		if (ret < 0) {
+			dev_err(&phy->dev, "phy poweroff failed --> %d\n", ret);
+			return ret;
+		}
+	}
+	--phy->power_count;
+
+	if (phy->pwr)
+		regulator_disable(phy->pwr);
+
+	return 0;
+}
+
+static struct phy_provider *of_phy_provider_lookup(struct device_node *node)
+{
+	struct phy_provider *phy_provider;
+	struct device_node *child;
+
+	list_for_each_entry(phy_provider, &phy_provider_list, list) {
+		if (phy_provider->dev->device_node == node)
+			return phy_provider;
+
+		for_each_child_of_node(phy_provider->dev->device_node, child)
+			if (child == node)
+				return phy_provider;
+	}
+
+	return ERR_PTR(-ENODEV);
+}
+
+/**
+ * _of_phy_get() - lookup and obtain a reference to a phy by phandle
+ * @np: device_node for which to get the phy
+ * @index: the index of the phy
+ *
+ * Returns the phy associated with the given phandle value,
+ * after getting a refcount to it or -ENODEV if there is no such phy or
+ * -EPROBE_DEFER if there is a phandle to the phy, but the device is
+ * not yet loaded. This function uses of_xlate call back function provided
+ * while registering the phy_provider to find the phy instance.
+ */
+static struct phy *_of_phy_get(struct device_node *np, int index)
+{
+	int ret;
+	struct phy_provider *phy_provider;
+	struct of_phandle_args args;
+
+	ret = of_parse_phandle_with_args(np, "phys", "#phy-cells",
+		index, &args);
+	if (ret)
+		return ERR_PTR(-ENODEV);
+
+	phy_provider = of_phy_provider_lookup(args.np);
+	if (IS_ERR(phy_provider)) {
+		return ERR_PTR(-ENODEV);
+	}
+
+	return phy_provider->of_xlate(phy_provider->dev, &args);
+}
+
+/**
+ * of_phy_get() - lookup and obtain a reference to a phy using a device_node.
+ * @np: device_node for which to get the phy
+ * @con_id: name of the phy from device's point of view
+ *
+ * Returns the phy driver, after getting a refcount to it; or
+ * -ENODEV if there is no such phy. The caller is responsible for
+ * calling phy_put() to release that count.
+ */
+struct phy *of_phy_get(struct device_node *np, const char *con_id)
+{
+	int index = 0;
+
+	if (con_id)
+		index = of_property_match_string(np, "phy-names", con_id);
+
+	return _of_phy_get(np, index);
+}
+
+/**
+ * phy_get() - lookup and obtain a reference to a phy.
+ * @dev: device that requests this phy
+ * @string: the phy name as given in the dt data or the name of the controller
+ * port for non-dt case
+ *
+ * Returns the phy driver, after getting a refcount to it; or
+ * -ENODEV if there is no such phy.  The caller is responsible for
+ * calling phy_put() to release that count.
+ */
+struct phy *phy_get(struct device_d *dev, const char *string)
+{
+	int index = 0;
+	struct phy *phy = ERR_PTR(-ENODEV);
+
+	if (string == NULL) {
+		dev_warn(dev, "missing string\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	if (dev->device_node) {
+		index = of_property_match_string(dev->device_node, "phy-names",
+			string);
+		phy = _of_phy_get(dev->device_node, index);
+	}
+
+	return phy;
+}
+
+/**
+ * phy_optional_get() - lookup and obtain a reference to an optional phy.
+ * @dev: device that requests this phy
+ * @string: the phy name as given in the dt data or the name of the controller
+ * port for non-dt case
+ *
+ * Returns the phy driver, after getting a refcount to it; or
+ * NULL if there is no such phy.  The caller is responsible for
+ * calling phy_put() to release that count.
+ */
+struct phy *phy_optional_get(struct device_d *dev, const char *string)
+{
+	struct phy *phy = phy_get(dev, string);
+
+	if (PTR_ERR(phy) == -ENODEV)
+		phy = NULL;
+
+	return phy;
+}
+
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
new file mode 100644
index 0000000..94f0044
--- /dev/null
+++ b/include/linux/phy/phy.h
@@ -0,0 +1,240 @@
+/*
+ * phy.h -- generic phy header file
+ *
+ * Copyright (C) 2013 Texas Instruments Incorporated - http://www.ti.com
+ *
+ * Author: Kishon Vijay Abraham I <kishon@ti.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef __DRIVERS_PHY_H
+#define __DRIVERS_PHY_H
+
+#include <linux/err.h>
+#include <of.h>
+#include <regulator.h>
+
+struct phy;
+
+/**
+ * struct phy_ops - set of function pointers for performing phy operations
+ * @init: operation to be performed for initializing phy
+ * @exit: operation to be performed while exiting
+ * @power_on: powering on the phy
+ * @power_off: powering off the phy
+ * @owner: the module owner containing the ops
+ */
+struct phy_ops {
+	int	(*init)(struct phy *phy);
+	int	(*exit)(struct phy *phy);
+	int	(*power_on)(struct phy *phy);
+	int	(*power_off)(struct phy *phy);
+};
+
+/**
+ * struct phy_attrs - represents phy attributes
+ * @bus_width: Data path width implemented by PHY
+ */
+struct phy_attrs {
+	u32			bus_width;
+};
+
+/**
+ * struct phy - represents the phy device
+ * @dev: phy device
+ * @id: id of the phy device
+ * @ops: function pointers for performing phy operations
+ * @init_data: list of PHY consumers (non-dt only)
+ * @mutex: mutex to protect phy_ops
+ * @init_count: used to protect when the PHY is used by multiple consumers
+ * @power_count: used to protect when the PHY is used by multiple consumers
+ * @phy_attrs: used to specify PHY specific attributes
+ */
+struct phy {
+	struct device_d		dev;
+	int			id;
+	const struct phy_ops	*ops;
+	struct phy_init_data	*init_data;
+	int			init_count;
+	int			power_count;
+	struct phy_attrs	attrs;
+	struct regulator	*pwr;
+};
+
+/**
+ * struct phy_provider - represents the phy provider
+ * @dev: phy provider device
+ * @owner: the module owner having of_xlate
+ * @of_xlate: function pointer to obtain phy instance from phy pointer
+ * @list: to maintain a linked list of PHY providers
+ */
+struct phy_provider {
+	struct device_d		*dev;
+	struct list_head	list;
+	struct phy * (*of_xlate)(struct device_d *dev,
+		struct of_phandle_args *args);
+};
+
+/**
+ * struct phy_consumer - represents the phy consumer
+ * @dev_name: the device name of the controller that will use this PHY device
+ * @port: name given to the consumer port
+ */
+struct phy_consumer {
+	const char *dev_name;
+	const char *port;
+};
+
+/**
+ * struct phy_init_data - contains the list of PHY consumers
+ * @num_consumers: number of consumers for this PHY device
+ * @consumers: list of PHY consumers
+ */
+struct phy_init_data {
+	unsigned int num_consumers;
+	struct phy_consumer *consumers;
+};
+
+#define PHY_CONSUMER(_dev_name, _port)				\
+{								\
+	.dev_name	= _dev_name,				\
+	.port		= _port,				\
+}
+
+#define	to_phy(dev)	(container_of((dev), struct phy, dev))
+
+#define	of_phy_provider_register(dev, xlate)	\
+	__of_phy_provider_register((dev), (xlate))
+
+
+static inline void phy_set_drvdata(struct phy *phy, void *data)
+{
+	phy->dev.priv = data;
+}
+
+static inline void *phy_get_drvdata(struct phy *phy)
+{
+	return phy->dev.priv;
+}
+
+#if IS_ENABLED(CONFIG_GENERIC_PHY)
+int phy_init(struct phy *phy);
+int phy_exit(struct phy *phy);
+int phy_power_on(struct phy *phy);
+int phy_power_off(struct phy *phy);
+static inline int phy_get_bus_width(struct phy *phy)
+{
+	return phy->attrs.bus_width;
+}
+static inline void phy_set_bus_width(struct phy *phy, int bus_width)
+{
+	phy->attrs.bus_width = bus_width;
+}
+struct phy *phy_get(struct device_d *dev, const char *string);
+struct phy *phy_optional_get(struct device_d *dev, const char *string);
+void phy_put(struct phy *phy);
+struct phy *of_phy_get(struct device_node *np, const char *con_id);
+struct phy *of_phy_simple_xlate(struct device_d *dev,
+	struct of_phandle_args *args);
+struct phy *phy_create(struct device_d *dev, struct device_node *node,
+		       const struct phy_ops *ops,
+		       struct phy_init_data *init_data);
+void phy_destroy(struct phy *phy);
+struct phy_provider *__of_phy_provider_register(struct device_d *dev,
+	struct phy * (*of_xlate)(struct device_d *dev,
+	struct of_phandle_args *args));
+void of_phy_provider_unregister(struct phy_provider *phy_provider);
+#else
+static inline int phy_init(struct phy *phy)
+{
+	if (!phy)
+		return 0;
+	return -ENOSYS;
+}
+
+static inline int phy_exit(struct phy *phy)
+{
+	if (!phy)
+		return 0;
+	return -ENOSYS;
+}
+
+static inline int phy_power_on(struct phy *phy)
+{
+	if (!phy)
+		return 0;
+	return -ENOSYS;
+}
+
+static inline int phy_power_off(struct phy *phy)
+{
+	if (!phy)
+		return 0;
+	return -ENOSYS;
+}
+
+static inline int phy_get_bus_width(struct phy *phy)
+{
+	return -ENOSYS;
+}
+
+static inline void phy_set_bus_width(struct phy *phy, int bus_width)
+{
+	return;
+}
+
+static inline struct phy *phy_get(struct device_d *dev, const char *string)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline struct phy *phy_optional_get(struct device_d *dev,
+					   const char *string)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline void phy_put(struct phy *phy)
+{
+}
+
+static inline struct phy *of_phy_get(struct device_node *np, const char *con_id)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline struct phy *of_phy_simple_xlate(struct device_d *dev,
+	struct of_phandle_args *args)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline struct phy *phy_create(struct device_d *dev,
+				     struct device_node *node,
+				     const struct phy_ops *ops,
+				     struct phy_init_data *init_data)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline void phy_destroy(struct phy *phy)
+{
+}
+
+static inline struct phy_provider *__of_phy_provider_register(
+	struct device_d *dev, struct phy * (*of_xlate)(
+	struct device_d *dev, struct of_phandle_args *args))
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline void of_phy_provider_unregister(struct phy_provider *phy_provider)
+{
+}
+#endif
+
+#endif /* __DRIVERS_PHY_H */
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
