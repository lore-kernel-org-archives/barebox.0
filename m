Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2YAH-0001lc-AF
 for barebox@lists.infradead.org; Thu, 21 Jan 2021 11:30:26 +0000
From: Steffen Trumtrar <str@pengutronix.de>
Date: Thu, 21 Jan 2021 12:29:50 +0100
Message-Id: <20210121112958.25937-5-str@pengutronix.de>
In-Reply-To: <20210121112958.25937-1-str@pengutronix.de>
References: <20210121112958.25937-1-str@pengutronix.de>
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
Subject: [PATCH 05/13] drivers: add fpga bridge framework
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Import the fpga bridge framework from linux v4.10-rc2.

Description from the initial commit adding this to linux:
21aeda950c5f84a8351b862816d832120b217a9b

    fpga: add fpga bridge framework

    This framework adds API functions for enabling/
    disabling FPGA bridges under kernel control.

    This allows the Linux kernel to disable FPGA bridges
    during FPGA reprogramming and to enable FPGA bridges
    when FPGA reprogramming is done.  This framework is
    be manufacturer-agnostic, allowing it to be used in
    interfaces that use the FPGA Manager Framework to
    reprogram FPGA's.

    The functions are:
    * of_fpga_bridge_get
    * fpga_bridge_put
       Get/put an exclusive reference to a FPGA bridge.

    * fpga_bridge_enable
    * fpga_bridge_disable
       Enable/Disable traffic through a bridge.

    * fpga_bridge_register
    * fpga_bridge_unregister
       Register/unregister a device-specific low level FPGA
       Bridge driver.

    Get an exclusive reference to a bridge and add it to a list:
    * fpga_bridge_get_to_list

    To enable/disable/put a set of bridges that are on a list:
    * fpga_bridges_enable
    * fpga_bridges_disable
    * fpga_bridges_put

    Signed-off-by: Alan Tull <atull@opensource.altera.com>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/Kconfig            |   1 +
 drivers/Makefile           |   1 +
 drivers/fpga/Kconfig       |  22 ++++
 drivers/fpga/Makefile      |   6 +
 drivers/fpga/fpga-bridge.c | 226 +++++++++++++++++++++++++++++++++++++
 include/fpga-bridge.h      |  69 +++++++++++
 6 files changed, 325 insertions(+)
 create mode 100644 drivers/fpga/Kconfig
 create mode 100644 drivers/fpga/Makefile
 create mode 100644 drivers/fpga/fpga-bridge.c
 create mode 100644 include/fpga-bridge.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index dda2405780..3bb9c09536 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -36,6 +36,7 @@ source "drivers/reset/Kconfig"
 source "drivers/pci/Kconfig"
 source "drivers/rtc/Kconfig"
 source "drivers/firmware/Kconfig"
+source "drivers/fpga/Kconfig"
 source "drivers/phy/Kconfig"
 source "drivers/crypto/Kconfig"
 source "drivers/memory/Kconfig"
diff --git a/drivers/Makefile b/drivers/Makefile
index 5a03bdceab..5221c2ca55 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -34,6 +34,7 @@ obj-$(CONFIG_RESET_CONTROLLER) += reset/
 obj-$(CONFIG_PCI) += pci/
 obj-y += rtc/
 obj-$(CONFIG_FIRMWARE) += firmware/
+obj-$(CONFIG_FPGA) += fpga/
 obj-$(CONFIG_GENERIC_PHY) += phy/
 obj-$(CONFIG_HAB) += hab/
 obj-$(CONFIG_CRYPTO_HW) += crypto/
diff --git a/drivers/fpga/Kconfig b/drivers/fpga/Kconfig
new file mode 100644
index 0000000000..fccdbff6eb
--- /dev/null
+++ b/drivers/fpga/Kconfig
@@ -0,0 +1,22 @@
+#
+# FPGA framework configuration
+#
+
+menu "FPGA Configuration Support"
+
+config FPGA
+	tristate "FPGA Configuration Framework"
+	help
+	  Say Y here if you want support for configuring FPGAs from barebox.
+
+if FPGA
+
+config FPGA_BRIDGE
+	tristate "FPGA Bridge Framework"
+	help
+	  Say Y here if you want to support bridges connected between host
+	  processors and FPGAs or between FPGAs.
+
+endif # FPGA
+
+endmenu
diff --git a/drivers/fpga/Makefile b/drivers/fpga/Makefile
new file mode 100644
index 0000000000..fc71a29d3b
--- /dev/null
+++ b/drivers/fpga/Makefile
@@ -0,0 +1,6 @@
+#
+# Makefile for the fpga framework and fpga manager drivers.
+#
+
+# FPGA Bridge Drivers
+obj-$(CONFIG_FPGA_BRIDGE)		+= fpga-bridge.o
diff --git a/drivers/fpga/fpga-bridge.c b/drivers/fpga/fpga-bridge.c
new file mode 100644
index 0000000000..edf29b0ecf
--- /dev/null
+++ b/drivers/fpga/fpga-bridge.c
@@ -0,0 +1,226 @@
+/*
+ * FPGA Bridge Framework Driver
+ *
+ *  Copyright (C) 2013-2016 Altera Corporation, All Rights Reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License along with
+ * this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+#include <common.h>
+#include <fpga-bridge.h>
+
+/**
+ * fpga_bridge_enable - Enable transactions on the bridge
+ *
+ * @bridge: FPGA bridge
+ *
+ * Return: 0 for success, error code otherwise.
+ */
+int fpga_bridge_enable(struct fpga_bridge *bridge)
+{
+	dev_dbg(&bridge->dev, "enable\n");
+
+	if (bridge->br_ops && bridge->br_ops->enable_set)
+		return bridge->br_ops->enable_set(bridge, 1);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(fpga_bridge_enable);
+
+/**
+ * fpga_bridge_disable - Disable transactions on the bridge
+ *
+ * @bridge: FPGA bridge
+ *
+ * Return: 0 for success, error code otherwise.
+ */
+int fpga_bridge_disable(struct fpga_bridge *bridge)
+{
+	dev_dbg(&bridge->dev, "disable\n");
+
+	if (bridge->br_ops && bridge->br_ops->enable_set)
+		return bridge->br_ops->enable_set(bridge, 0);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(fpga_bridge_disable);
+
+/**
+ * of_fpga_bridge_get - get an exclusive reference to a fpga bridge
+ *
+ * @np: node pointer of a FPGA bridge
+ *
+ * Return fpga_bridge struct if successful.
+ * Return -EBUSY if someone already has a reference to the bridge.
+ * Return -ENODEV if @np is not a FPGA Bridge.
+ */
+struct fpga_bridge *of_fpga_bridge_get(struct device_node *np)
+
+{
+	struct device_d *dev;
+	struct fpga_bridge *bridge;
+	int ret = -ENODEV;
+
+	dev = of_find_device_by_node(np);
+	if (!dev || !dev->priv)
+		return ERR_PTR(ret);
+
+	bridge = dev->priv;
+
+	return bridge;
+}
+EXPORT_SYMBOL_GPL(of_fpga_bridge_get);
+
+/**
+ * fpga_bridges_enable - enable bridges in a list
+ * @bridge_list: list of FPGA bridges
+ *
+ * Enable each bridge in the list.  If list is empty, do nothing.
+ *
+ * Return 0 for success or empty bridge list; return error code otherwise.
+ */
+int fpga_bridges_enable(struct list_head *bridge_list)
+{
+	struct fpga_bridge *bridge;
+	int ret;
+
+	list_for_each_entry(bridge, bridge_list, node) {
+		ret = fpga_bridge_enable(bridge);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(fpga_bridges_enable);
+
+/**
+ * fpga_bridges_disable - disable bridges in a list
+ *
+ * @bridge_list: list of FPGA bridges
+ *
+ * Disable each bridge in the list.  If list is empty, do nothing.
+ *
+ * Return 0 for success or empty bridge list; return error code otherwise.
+ */
+int fpga_bridges_disable(struct list_head *bridge_list)
+{
+	struct fpga_bridge *bridge;
+	int ret;
+
+	list_for_each_entry(bridge, bridge_list, node) {
+		ret = fpga_bridge_disable(bridge);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(fpga_bridges_disable);
+
+/**
+ * fpga_bridges_get_to_list - get a bridge, add it to a list
+ *
+ * @np: node pointer of a FPGA bridge
+ * @bridge_list: list of FPGA bridges
+ *
+ * Get an exclusive reference to the bridge and and it to the list.
+ *
+ * Return 0 for success, error code from of_fpga_bridge_get() othewise.
+ */
+int fpga_bridge_get_to_list(struct device_node *np,
+			    struct list_head *bridge_list)
+{
+	struct fpga_bridge *bridge;
+
+	bridge = of_fpga_bridge_get(np);
+	if (IS_ERR(bridge))
+		return PTR_ERR(bridge);
+	list_add(&bridge->node, bridge_list);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(fpga_bridge_get_to_list);
+
+static int set_enable(struct param_d *p, void *priv)
+{
+	struct fpga_bridge *bridge = priv;
+
+	if (bridge->enable)
+		fpga_bridge_enable(bridge);
+	else
+		fpga_bridge_disable(bridge);
+
+	return 0;
+}
+
+/**
+ * fpga_bridge_register - register a fpga bridge driver
+ * @dev:	FPGA bridge device from pdev
+ * @name:	FPGA bridge name
+ * @br_ops:	pointer to structure of fpga bridge ops
+ * @priv:	FPGA bridge private data
+ *
+ * Return: 0 for success, error code otherwise.
+ */
+int fpga_bridge_register(struct device_d *dev, const char *name,
+			 const struct fpga_bridge_ops *br_ops, void *priv)
+{
+	struct fpga_bridge *bridge;
+	struct param_d *p;
+	int ret = 0;
+
+	if (!name || !strlen(name)) {
+		dev_err(dev, "Attempt to register with no name!\n");
+		return -EINVAL;
+	}
+
+	bridge = xzalloc(sizeof(*bridge));
+	if (!bridge)
+		return -ENOMEM;
+
+	INIT_LIST_HEAD(&bridge->node);
+
+	bridge->br_ops = br_ops;
+	bridge->priv = priv;
+
+	bridge->dev.parent = dev;
+	bridge->dev.device_node = dev->device_node;
+	bridge->dev.id = DEVICE_ID_DYNAMIC;
+
+	bridge->dev.name = xstrdup(name);
+
+	ret = register_device(&bridge->dev);
+	if (ret)
+		goto out;
+
+	dev->priv = bridge;
+
+	bridge->enable = 0;
+	p = dev_add_param_bool(&bridge->dev, "enable", set_enable,
+			       NULL, &bridge->enable, bridge);
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	of_platform_populate(dev->device_node, NULL, dev);
+
+	dev_info(bridge->dev.parent, "fpga bridge [%s] registered\n",
+		 bridge->dev.name);
+
+	return 0;
+
+out:
+	kfree(bridge);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(fpga_bridge_register);
diff --git a/include/fpga-bridge.h b/include/fpga-bridge.h
new file mode 100644
index 0000000000..8d55043a77
--- /dev/null
+++ b/include/fpga-bridge.h
@@ -0,0 +1,69 @@
+#include <common.h>
+
+#ifndef _LINUX_FPGA_BRIDGE_H
+#define _LINUX_FPGA_BRIDGE_H
+
+struct fpga_bridge;
+
+/**
+ * struct fpga_bridge_ops - ops for low level FPGA bridge drivers
+ * @enable_show: returns the FPGA bridge's status
+ * @enable_set: set a FPGA bridge as enabled or disabled
+ * @fpga_bridge_remove: set FPGA into a specific state during driver remove
+ */
+struct fpga_bridge_ops {
+	int (*enable_show)(struct fpga_bridge *bridge);
+	int (*enable_set)(struct fpga_bridge *bridge, bool enable);
+	void (*fpga_bridge_remove)(struct fpga_bridge *bridge);
+};
+
+/**
+ * struct fpga_bridge - FPGA bridge structure
+ * @name: name of low level FPGA bridge
+ * @dev: FPGA bridge device
+ * @mutex: enforces exclusive reference to bridge
+ * @br_ops: pointer to struct of FPGA bridge ops
+ * @info: fpga image specific information
+ * @node: FPGA bridge list node
+ * @priv: low level driver private date
+ */
+struct fpga_bridge {
+	struct device_d dev;
+	const struct fpga_bridge_ops *br_ops;
+	struct list_head node;
+	unsigned int enable;
+	void *priv;
+};
+
+#define to_fpga_bridge(d) container_of(d, struct fpga_bridge, dev)
+
+struct fpga_bridge *of_fpga_bridge_get(struct device_node *node);
+void fpga_bridge_put(struct fpga_bridge *bridge);
+int fpga_bridge_enable(struct fpga_bridge *bridge);
+int fpga_bridge_disable(struct fpga_bridge *bridge);
+
+#ifdef CONFIG_FPGA_BRIDGE
+int fpga_bridges_enable(struct list_head *bridge_list);
+int fpga_bridges_disable(struct list_head *bridge_list);
+int fpga_bridge_get_to_list(struct device_node *np,
+			    struct list_head *bridge_list);
+#else
+static inline int fpga_bridges_enable(struct list_head *bridge_list)
+{
+	return -ENOSYS;
+};
+static inline int fpga_bridges_disable(struct list_head *bridge_list)
+{
+	return -ENOSYS;
+};
+static inline int fpga_bridge_get_to_list(struct device_node *np,
+			    struct list_head *bridge_list)
+{
+	return -ENOSYS;
+};
+#endif
+
+int fpga_bridge_register(struct device_d *dev, const char *name,
+			 const struct fpga_bridge_ops *br_ops, void *priv);
+
+#endif /* _LINUX_FPGA_BRIDGE_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
