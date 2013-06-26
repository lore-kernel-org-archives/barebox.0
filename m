Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x233.google.com ([2a00:1450:4008:c01::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrlKq-0003fQ-Nr
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 08:44:20 +0000
Received: by mail-bk0-f51.google.com with SMTP id ji1so4777863bkc.38
 for <barebox@lists.infradead.org>; Wed, 26 Jun 2013 01:43:37 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 26 Jun 2013 10:43:28 +0200
Message-Id: <1372236208-17069-1-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372152047-28134-5-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1372152047-28134-5-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 4/9] OF: import bus/device related functions from Linux OF
 API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This imports some bus and device related functions from Linux OF API
with some modifcations for Barebox.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v1->v2:
- check for existing devices on of_platform_device_create
- remove auxdata lookup from doxygen header
- fix whitespace damage (Reported by Sascha Hauer)

Cc: barebox@lists.infradead.org
Cc: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/Makefile   |    2 +-
 drivers/of/platform.c |  320 +++++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h          |   18 +++
 3 files changed, 339 insertions(+), 1 deletions(-)
 create mode 100644 drivers/of/platform.c

diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index b8add0b..186074e 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -1,4 +1,4 @@
-obj-y += address.o base.o fdt.o
+obj-y += address.o base.o fdt.o platform.o
 obj-$(CONFIG_OFTREE_MEM_GENERIC) += mem_generic.o
 obj-$(CONFIG_GPIOLIB) += gpio.o
 obj-y += partition.o
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
new file mode 100644
index 0000000..0d87ef4
--- /dev/null
+++ b/drivers/of/platform.c
@@ -0,0 +1,320 @@
+/*
+ * platform.c - bus/device related devicetree functions
+ *
+ * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * based on Linux devicetree support
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
+ */
+#include <common.h>
+#include <malloc.h>
+#include <of.h>
+#include <of_address.h>
+#include <linux/amba/bus.h>
+
+/**
+ * of_find_device_by_node - Find the platform_device associated with a node
+ * @np: Pointer to device tree node
+ *
+ * Returns platform_device pointer, or NULL if not found
+ */
+struct device_d *of_find_device_by_node(struct device_node *np)
+{
+	struct device_d *dev;
+	for_each_device(dev)
+		if (dev->device_node == np)
+			return dev;
+	return NULL;
+}
+EXPORT_SYMBOL(of_find_device_by_node);
+
+/**
+ * of_device_make_bus_id - Use the device node data to assign a unique name
+ * @dev: pointer to device structure that is linked to a device tree node
+ *
+ * This routine will first try using either the dcr-reg or the reg property
+ * value to derive a unique name.  As a last resort it will use the node
+ * name followed by a unique number.
+ */
+static void of_device_make_bus_id(struct device_d *dev)
+{
+	static int bus_no_reg_magic;
+	struct device_node *np = dev->device_node;
+	const __be32 *reg, *addrp;
+	u64 addr;
+	char *name, *at;
+
+	name = xstrdup(np->name);
+	at = strchr(name, '@');
+	if (at)
+		*at = '\0';
+
+#ifdef CONFIG_PPC_DCR
+	/*
+	 * If it's a DCR based device, use 'd' for native DCRs
+	 * and 'D' for MMIO DCRs.
+	 */
+	reg = of_get_property(np, "dcr-reg", NULL);
+	if (reg) {
+#ifdef CONFIG_PPC_DCR_NATIVE
+		snprintf(dev->name, MAX_DRIVER_NAME, "d%x.%s", *reg, name);
+#else /* CONFIG_PPC_DCR_NATIVE */
+		u64 addr = of_translate_dcr_address(np, *reg, NULL);
+		if (addr != OF_BAD_ADDR) {
+			snprintf(dev->name, MAX_DRIVER_NAME, "D%llx.%s",
+				(unsigned long long)addr, name);
+			free(name);
+			return;
+		}
+#endif /* !CONFIG_PPC_DCR_NATIVE */
+	}
+#endif /* CONFIG_PPC_DCR */
+
+	/*
+	 * For MMIO, get the physical address
+	 */
+	reg = of_get_property(np, "reg", NULL);
+	if (reg) {
+		if (of_can_translate_address(np)) {
+			addr = of_translate_address(np, reg);
+		} else {
+			addrp = of_get_address(np, 0, NULL, NULL);
+			if (addrp)
+				addr = of_read_number(addrp, 1);
+			else
+				addr = OF_BAD_ADDR;
+		}
+		if (addr != OF_BAD_ADDR) {
+			snprintf(dev->name, MAX_DRIVER_NAME, "%llx.%s",
+				(unsigned long long)addr, name);
+			free(name);
+			return;
+		}
+	}
+
+	/*
+	 * No BusID, use the node name and add a globally incremented counter
+	 */
+	snprintf(dev->name, MAX_DRIVER_NAME, "%s.%d", name, bus_no_reg_magic++);
+	free(name);
+}
+
+/**
+ * of_platform_device_create - Alloc, initialize and register an of_device
+ * @np: pointer to node to create device for
+ * @parent: device model parent device.
+ *
+ * Returns pointer to created platform device, or NULL if a device was not
+ * registered. Unavailable devices will not get registered.
+ */
+static struct device_d *of_platform_device_create(struct device_node *np,
+						struct device_d *parent)
+{
+	struct device_d *dev;
+	struct resource *res = NULL, temp_res;
+	int i, j, ret, num_reg = 0, match;
+
+	if (!of_device_is_available(np))
+		return NULL;
+
+	/* count the io resources */
+	if (of_can_translate_address(np))
+		while (of_address_to_resource(np, num_reg, &temp_res) == 0)
+			num_reg++;
+
+	/* Populate the resource table */
+	if (num_reg) {
+		res = xzalloc(sizeof(*res) * num_reg);
+		for (i = 0; i < num_reg; i++) {
+			ret = of_address_to_resource(np, i, &res[i]);
+			if (ret) {
+				free(res);
+				return NULL;
+			}
+		}
+
+		/*
+		 * A device may already be registered as platform_device.
+		 * Instead of registering the same device again, just
+		 * add this node to the existing device.
+		 */
+		for_each_device(dev) {
+			if (!dev->resource)
+				continue;
+
+			for (i = 0, match = 0; i < num_reg; i++)
+				for (j = 0; j < dev->num_resources; j++)
+					if (dev->resource[j].start ==
+						res[i].start &&
+					    dev->resource[j].end ==
+						res[i].end) {
+						match++;
+						break;
+					}
+
+			/* check if all address resources match */
+			if (match == num_reg) {
+				debug("connecting %s to %s\n",
+					np->name, dev_name(dev));
+				dev->device_node = np;
+				free(res);
+				return dev;
+			}
+		}
+	}
+
+	debug("register device 0x%08x\n", (num_reg) ? dev->resource[0].start : (-1));
+
+	/* setup generic device info */
+	dev = xzalloc(sizeof(*dev));
+	dev->id = DEVICE_ID_SINGLE;
+	dev->device_node = np;
+	dev->parent = parent;
+	dev->resource = res;
+	dev->num_resources = num_reg;
+	of_device_make_bus_id(dev);
+
+	ret = platform_device_register(dev);
+	if (!ret)
+		return dev;
+
+	free(dev);
+	if (num_reg)
+		free(res);
+	return NULL;
+}
+
+#ifdef CONFIG_ARM_AMBA
+static struct device_d *of_amba_device_create(struct device_node *np)
+{
+	struct amba_device *dev;
+	int ret;
+
+	debug("Creating amba device %s\n", np->full_name);
+
+	if (!of_device_is_available(np))
+		return NULL;
+
+	dev = xzalloc(sizeof(*dev));
+
+	/* setup generic device info */
+	dev->dev.id = DEVICE_ID_SINGLE;
+	dev->dev.device_node = np;
+	of_device_make_bus_id(&dev->dev);
+
+	ret = of_address_to_resource(np, 0, &dev->res);
+	if (ret)
+		goto amba_err_free;
+
+	dev->dev.resource = &dev->res;
+	dev->dev.num_resources = 1;
+
+	/* Allow the HW Peripheral ID to be overridden */
+	of_property_read_u32(np, "arm,primecell-periphid", &dev->periphid);
+
+	debug("register device 0x%08x\n", dev->dev.resource[0].start);
+
+	ret = amba_device_add(dev);
+	if (ret)
+		goto amba_err_free;
+
+	return &dev->dev;
+
+amba_err_free:
+	free(dev);
+	return NULL;
+}
+#else /* CONFIG_ARM_AMBA */
+static inline struct amba_device *of_amba_device_create(struct device_node *np)
+{
+	return NULL;
+}
+#endif /* CONFIG_ARM_AMBA */
+
+/**
+ * of_platform_bus_create() - Create a device for a node and its children.
+ * @bus: device node of the bus to instantiate
+ * @matches: match table for bus nodes
+ * @parent: parent for new device, or NULL for top level.
+ *
+ * Creates a platform_device for the provided device_node, and optionally
+ * recursively create devices for all the child nodes.
+ */
+static int of_platform_bus_create(struct device_node *bus,
+				const struct of_device_id *matches,
+				struct device_d *parent)
+{
+	struct device_node *child;
+	struct device_d *dev;
+	int rc = 0;
+
+	/* Make sure it has a compatible property */
+	if (!of_get_property(bus, "compatible", NULL)) {
+		pr_debug("%s() - skipping %s, no compatible prop\n",
+			__func__, bus->full_name);
+		return 0;
+	}
+
+	if (of_device_is_compatible(bus, "arm,primecell")) {
+		of_amba_device_create(bus);
+		return 0;
+	}
+
+	dev = of_platform_device_create(bus, parent);
+	if (!dev || !of_match_node(matches, bus))
+		return 0;
+
+	for_each_child_of_node(bus, child) {
+		pr_debug("   create child: %s\n", child->full_name);
+		rc = of_platform_bus_create(child, matches, dev);
+		if (rc)
+			break;
+	}
+	return rc;
+}
+
+/**
+ * of_platform_populate() - Populate platform_devices from device tree data
+ * @root: parent of the first level to probe or NULL for the root of the tree
+ * @matches: match table, NULL to use the default
+ * @parent: parent to hook devices from, NULL for toplevel
+ *
+ * This function walks the device tree given by @root node and creates devices
+ * from nodes.  It requires all device nodes to have a 'compatible' property,
+ * and it is suitable for creating devices which are children of the root
+ * node.
+ *
+ * Returns 0 on success, < 0 on failure.
+ */
+int of_platform_populate(struct device_node *root,
+			const struct of_device_id *matches,
+			struct device_d *parent)
+{
+	struct device_node *child;
+	int rc = 0;
+
+	if (!root)
+		root = of_find_node_by_path("/");
+	if (!root)
+		return -EINVAL;
+
+	for_each_child_of_node(root, child) {
+		rc = of_platform_bus_create(child, matches, parent);
+		if (rc)
+			break;
+	}
+
+	return rc;
+}
+EXPORT_SYMBOL_GPL(of_platform_populate);
diff --git a/include/of.h b/include/of.h
index 8cab797..f1f555f 100644
--- a/include/of.h
+++ b/include/of.h
@@ -61,6 +61,7 @@ struct of_reserve_map *of_get_reserve_map(void);
 void of_clean_reserve_map(void);
 void fdt_add_reserve_map(void *fdt);
 
+struct device_d;
 struct driver_d;
 
 int of_fix_tree(struct device_node *);
@@ -221,6 +222,11 @@ extern int of_modalias_node(struct device_node *node, char *modalias, int len);
 extern struct device_node *of_get_root_node(void);
 extern int of_set_root_node(struct device_node *node);
 
+extern int of_platform_populate(struct device_node *root,
+				const struct of_device_id *matches,
+				struct device_d *parent);
+extern struct device_d *of_find_device_by_node(struct device_node *np);
+
 int of_parse_partitions(struct cdev *cdev, struct device_node *node);
 int of_device_is_stdout_path(struct device_d *dev);
 const char *of_get_model(void);
@@ -547,6 +553,18 @@ static inline int of_modalias_node(struct device_node *node, char *modalias,
 {
 	return -ENOSYS;
 }
+
+static inline int of_platform_populate(struct device_node *root,
+				const struct of_device_id *matches,
+				struct device_d *parent)
+{
+	return -ENOSYS;
+}
+
+static inline struct device_d *of_find_device_by_node(struct device_node *np)
+{
+	return NULL;
+}
 #endif
 
 #define for_each_node_by_name(dn, name) \
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
