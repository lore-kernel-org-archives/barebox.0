Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUY4Z-0001kv-UB
 for barebox@lists.infradead.org; Tue, 23 Apr 2013 07:55:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Apr 2013 09:55:26 +0200
Message-Id: <1366703729-1258-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1366703729-1258-1-git-send-email-s.hauer@pengutronix.de>
References: <1366703729-1258-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] Add initial pinctrl support
To: barebox@lists.infradead.org

This is a massively stripped down pinctrl support. The upper API
consists of only of:

int pinctrl_select_state(struct device_d *dev, const char *state);

This is used to setup the pinmux for a device to a certain state.
This function normally does not need to be called manually. The
device core will setup the default state before probing a device.

The pinctrl core has the job of handling the devicetree. It parses
the pinctrl phandles for a device from devicetree, finds the correct
pinctrl device and calls its set_state callback with the pinctrl
setup device node.

The simplicity of this pinctrl framework comes from the fact that
we:

- Limit usage to devicetree only for now. For non devicetree use the
  old legacy SoC specific APIs still can be used.
- Do not parse the devicetree into internal data structures which
  are used by the drivers later. This adds the overhead that we
  may parse the devicetree multiple times for more dynamic setups,
  but on the other hand we do not need to parse devices from the
  devicetree we don't use in barebox
- Do not detect resource conflicts. Since the framework mainly is
  a devicetree parser this would be hard to implement. It should
  be easy for board maintainers to avoid resource conflicts though.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/Kconfig           |   1 +
 drivers/Makefile          |   1 +
 drivers/base/driver.c     |   3 +
 drivers/pinctrl/Kconfig   |  12 ++++
 drivers/pinctrl/Makefile  |   1 +
 drivers/pinctrl/pinctrl.c | 149 ++++++++++++++++++++++++++++++++++++++++++++++
 include/pinctrl.h         |  35 +++++++++++
 7 files changed, 202 insertions(+)
 create mode 100644 drivers/pinctrl/Kconfig
 create mode 100644 drivers/pinctrl/Makefile
 create mode 100644 drivers/pinctrl/pinctrl.c
 create mode 100644 include/pinctrl.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index b213849..3a95e51 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -23,5 +23,6 @@ source "drivers/pwm/Kconfig"
 source "drivers/dma/Kconfig"
 source "drivers/gpio/Kconfig"
 source "drivers/w1/Kconfig"
+source "drivers/pinctrl/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index 03a10fb..daf821c 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -22,3 +22,4 @@ obj-y  += watchdog/
 obj-y	+= gpio/
 obj-$(CONFIG_OFTREE) += of/
 obj-$(CONFIG_W1) += w1/
+obj-y += pinctrl/
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 487f478..edd49b3 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -31,6 +31,7 @@
 #include <fs.h>
 #include <linux/list.h>
 #include <complete.h>
+#include <pinctrl.h>
 
 LIST_HEAD(device_list);
 EXPORT_SYMBOL(device_list);
@@ -79,6 +80,8 @@ int device_probe(struct device_d *dev)
 {
 	int ret;
 
+	pinctrl_select_state_default(dev);
+
 	ret = dev->bus->probe(dev);
 	if (ret) {
 		dev_err(dev, "probe failed: %s\n", strerror(-ret));
diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
new file mode 100644
index 0000000..05adf59
--- /dev/null
+++ b/drivers/pinctrl/Kconfig
@@ -0,0 +1,12 @@
+menu "Pin controllers"
+
+config PINCTRL
+	bool "Pin controller core support"
+	depends on OFDEVICE
+	help
+	  Pincontrollers allow to setup the iomux unit of SoCs. The pin
+	  controller core is needed when pin muxing shall be configured
+	  from the devicetree. Legacy drivers here may not need this core
+	  support but instead provide their own SoC specific APIs
+
+endmenu
diff --git a/drivers/pinctrl/Makefile b/drivers/pinctrl/Makefile
new file mode 100644
index 0000000..59f096a
--- /dev/null
+++ b/drivers/pinctrl/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_PINCTRL)	+= pinctrl.o
diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
new file mode 100644
index 0000000..fa979a1
--- /dev/null
+++ b/drivers/pinctrl/pinctrl.c
@@ -0,0 +1,149 @@
+/*
+ * pinctrl.c - barebox pinctrl support
+ *
+ * Copyright (c) 2013 Sascha Hauer <s.hauer@pengutronix.de>
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
+#include <pinctrl.h>
+
+static LIST_HEAD(pinctrl_list);
+
+static struct pinctrl_device *find_pinctrl(struct device_node *node)
+{
+	struct pinctrl_device *pdev;
+
+	list_for_each_entry(pdev, &pinctrl_list, list)
+		if (pdev->node == node)
+			return pdev;
+	return NULL;
+}
+
+static int pinctrl_config_one(struct device_node *np)
+{
+	struct pinctrl_device *pdev;
+	struct device_node *pinctrl_node = np;
+
+	while (1) {
+		pinctrl_node = pinctrl_node->parent;
+		if (!pinctrl_node)
+			return -ENODEV;
+		pdev = find_pinctrl(pinctrl_node);
+		if (pdev)
+			break;
+	}
+
+	return pdev->ops->set_state(pdev, np);
+}
+
+int pinctrl_select_state(struct device_d *dev, const char *name)
+{
+	int state, ret;
+	char *propname;
+	struct property *prop;
+	const __be32 *list;
+	int size, config;
+	phandle phandle;
+	struct device_node *np_config, *np;
+	const char *statename;
+
+	np = dev->device_node;
+	if (!np)
+		return 0;
+
+	if (!of_find_property(np, "pinctrl-0"))
+		return 0;
+
+	/* For each defined state ID */
+	for (state = 0; ; state++) {
+		/* Retrieve the pinctrl-* property */
+		propname = asprintf("pinctrl-%d", state);
+		prop = of_find_property(np, propname);
+		free(propname);
+
+		if (!prop) {
+			ret = -ENODEV;
+			break;
+		}
+
+		size = prop->length;
+
+		list = prop->value;
+		size /= sizeof(*list);
+
+		/* Determine whether pinctrl-names property names the state */
+		ret = of_property_read_string_index(np, "pinctrl-names",
+						    state, &statename);
+		/*
+		 * If not, statename is just the integer state ID. But rather
+		 * than dynamically allocate it and have to free it later,
+		 * just point part way into the property name for the string.
+		 */
+		if (ret < 0) {
+			/* strlen("pinctrl-") == 8 */
+			statename = prop->name + 8;
+		}
+
+		if (strcmp(name, statename))
+			continue;
+
+		/* For every referenced pin configuration node in it */
+		for (config = 0; config < size; config++) {
+			phandle = be32_to_cpup(list++);
+
+			/* Look up the pin configuration node */
+			np_config = of_find_node_by_phandle(phandle);
+			if (!np_config) {
+				pr_err("prop %s %s index %i invalid phandle\n",
+					np->full_name, prop->name, config);
+				ret = -EINVAL;
+				goto err;
+			}
+
+			/* Parse the node */
+			ret = pinctrl_config_one(np_config);
+			if (ret < 0)
+				goto err;
+		}
+
+		return 0;
+	}
+err:
+	return ret;
+}
+
+int pinctrl_select_state_default(struct device_d *dev)
+{
+	return pinctrl_select_state(dev, "default");
+}
+
+int pinctrl_register(struct pinctrl_device *pdev)
+{
+	BUG_ON(!pdev->dev->device_node);
+
+	list_add_tail(&pdev->list, &pinctrl_list);
+
+	pdev->node = pdev->dev->device_node;
+
+	pinctrl_select_state_default(pdev->dev);
+
+	return 0;
+}
+
+void pinctrl_unregister(struct pinctrl_device *pdev)
+{
+	list_del(&pdev->list);
+}
diff --git a/include/pinctrl.h b/include/pinctrl.h
new file mode 100644
index 0000000..7323f8b
--- /dev/null
+++ b/include/pinctrl.h
@@ -0,0 +1,35 @@
+#ifndef PINCTRL_H
+#define PINCTRL_H
+
+struct pinctrl_device;
+
+struct pinctrl_ops {
+	int (*set_state)(struct pinctrl_device *, struct device_node *);
+};
+
+struct pinctrl_device {
+	struct device_d *dev;
+	struct pinctrl_ops *ops;
+	struct list_head list;
+	struct device_node *node;
+};
+
+int pinctrl_register(struct pinctrl_device *pdev);
+void pinctrl_unregister(struct pinctrl_device *pdev);
+
+#ifdef CONFIG_PINCTRL
+int pinctrl_select_state(struct device_d *dev, const char *state);
+int pinctrl_select_state_default(struct device_d *dev);
+#else
+static inline int pinctrl_select_state(struct device_d *dev, const char *state)
+{
+	return -ENODEV;
+}
+
+static inline int pinctrl_select_state_default(struct device_d *dev)
+{
+	return -ENODEV;
+}
+#endif
+
+#endif /* PINCTRL_H */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
