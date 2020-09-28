Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMuOy-0006uK-Nd
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 14:45:21 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Sep 2020 16:45:06 +0200
Message-Id: <20200928144514.14398-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200928144514.14398-1-a.fatoum@pengutronix.de>
References: <20200928144514.14398-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 02/10] drivers: add reboot-mode infrastructure
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reboot modes provide a well-defined way to exchange information between
different stage of the boot process. When configured, users can type
`reboot bootloader` in the OS and barebox can read it out a device
parameter. Likewise barebox can write a reboot mode for the BootROM to
evaluate and then reset to fall into a serial recovery mode for example.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/reboot-mode.rst |  84 +++++++++++++
 drivers/Kconfig                    |   1 +
 drivers/Makefile                   |   1 +
 drivers/power/Kconfig              |   2 +
 drivers/power/Makefile             |   2 +
 drivers/power/reset/Kconfig        |   5 +
 drivers/power/reset/Makefile       |   2 +
 drivers/power/reset/reboot-mode.c  | 185 +++++++++++++++++++++++++++++
 include/linux/reboot-mode.h        |  36 ++++++
 include/of.h                       |   2 +
 10 files changed, 320 insertions(+)
 create mode 100644 Documentation/user/reboot-mode.rst
 create mode 100644 drivers/power/Kconfig
 create mode 100644 drivers/power/Makefile
 create mode 100644 drivers/power/reset/Kconfig
 create mode 100644 drivers/power/reset/Makefile
 create mode 100644 drivers/power/reset/reboot-mode.c
 create mode 100644 include/linux/reboot-mode.h

diff --git a/Documentation/user/reboot-mode.rst b/Documentation/user/reboot-mode.rst
new file mode 100644
index 000000000000..1908da3ed2d7
--- /dev/null
+++ b/Documentation/user/reboot-mode.rst
@@ -0,0 +1,84 @@
+.. _reboot_mode:
+
+Reboot Mode
+-----------
+
+To simplify debugging, many BootROMs sample registers that survive
+a warm reset to customize the boot. These registers can e.g. indicate
+that boot should happen from a different boot medium.
+
+Likewise, many bootloaders reuse such registers, or if unavailable,
+non-volatile memory to determine whether the OS requested a special
+reboot mode, e.g. rebooting into an USB recovery mode. This is
+common on Android systems.
+
+barebox implements the upstream device tree bindings for
+`reboot-modes <https://www.kernel.org/doc/Documentation/devicetree/bindings/power/reset/reboot-mode.txt>`_
+to act upon reboot mode protocols specified in the device tree.
+
+The device tree nodes list a number of reboot modes along with a
+magic value for each. On reboot, an OS implementing the binding
+would take the reboot command's argument and match it against the
+modes in the device tree. If a match is found the associated magic
+is written to the location referenced in the device tree node.
+
+User API
+~~~~~~~~
+
+Devices registered with the reboot mode API gain two parameters:
+
+ - ``$dev_of_reboot_mode.prev`` (read-only): The reboot mode that was
+   set previous to barebox startup
+ - ``$dev_of_reboot_mode.next``: The next reboot mode, for when the
+   system is reset
+
+The reboot mode driver core use the alias name if available to name
+the device. By convention, this should end with ``.reboot_mode``, e.g.::
+
+	/ {
+		aliases {
+			gpr.reboot_name = &reboot_name_gpr;
+		};
+	};
+
+Reboot mode providers have priorities. The provider with the highest
+priority has its parameters aliased as ``$global.system.reboot_mode.prev``
+and ``$global.system.reboot_mode.next``.
+
+Disambiguation
+~~~~~~~~~~~~~~
+
+Some uses of reboot modes partially overlap with other barebox
+functionality. They all ultimately serve different purposes, however.
+
+Comparison to reset reason
+---------------------------
+
+The reset reason ``$global.system.reset`` is populated by different drivers
+to reflect the hardware cause of a reset, e.g. a watchdog. A reboot mode
+describes the OS intention behind a reset, e.g. to fall into a recovery
+mode. Reboot modes besides the default ``normal`` mode usually accompany
+a reset reason of ``RST`` (because the OS intentionally triggered a reset
+to activate the next reboot mode).
+
+Comparison to bootsource
+------------------------
+
+``$bootsource`` reflects the current boot's medium as indicated by the
+SoC. In cases where the reboot mode is used to communicate with the BootROM,
+``$bootsource`` and ``$bootsource_instance`` may describe the same device
+as the reboot mode.
+
+For cases, where the communication instead happens between barebox and an OS,
+they can be completely different, e.g. ``$bootsource`` may say barebox was
+booted from ``spi-nor``, while the reboot mode describes that barebox should
+boot the Kernel off an USB flash drive.
+
+Comparison to barebox state
+---------------------------
+
+barebox state also allows sharing information between barebox and the OS,
+but it does so while providing atomic updates, redundant storage and
+optionally wear leveling. In contrast to state, reboot mode is just that:
+a mode for a single reboot. barebox clears the reboot mode after reading it,
+so this can be reliably used across one reset only.
diff --git a/drivers/Kconfig b/drivers/Kconfig
index 09595433a0e5..dda240578067 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -42,5 +42,6 @@ source "drivers/memory/Kconfig"
 source "drivers/soc/imx/Kconfig"
 source "drivers/nvme/Kconfig"
 source "drivers/ddr/Kconfig"
+source "drivers/power/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index 08a17ff459d3..5a03bdceab81 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -42,3 +42,4 @@ obj-y	+= memory/
 obj-y	+= soc/imx/
 obj-y	+= nvme/
 obj-y	+= ddr/
+obj-y	+= power/
diff --git a/drivers/power/Kconfig b/drivers/power/Kconfig
new file mode 100644
index 000000000000..b56414c49750
--- /dev/null
+++ b/drivers/power/Kconfig
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+source "drivers/power/reset/Kconfig"
diff --git a/drivers/power/Makefile b/drivers/power/Makefile
new file mode 100644
index 000000000000..3009da59bf46
--- /dev/null
+++ b/drivers/power/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-y	+= reset/
diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
new file mode 100644
index 000000000000..5554fc122d92
--- /dev/null
+++ b/drivers/power/reset/Kconfig
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+
+config REBOOT_MODE
+	bool
diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
new file mode 100644
index 000000000000..68231f044a52
--- /dev/null
+++ b/drivers/power/reset/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_REBOOT_MODE) += reboot-mode.o
diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
new file mode 100644
index 000000000000..5992a2acd99a
--- /dev/null
+++ b/drivers/power/reset/reboot-mode.c
@@ -0,0 +1,185 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2016, Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2019, Ahmad Fatoum, Pengutronix
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <of.h>
+#include <linux/reboot-mode.h>
+#include <globalvar.h>
+#include <magicvar.h>
+
+#define PREFIX "mode-"
+
+static int __priority;
+static struct reboot_mode_driver *__boot_mode;
+
+static int reboot_mode_param_set(struct param_d *p, void *priv)
+{
+	struct reboot_mode_driver *reboot = priv;
+	u32 magic;
+
+	magic = reboot->magics[reboot->reboot_mode_next];
+
+	return reboot->write(reboot, magic);
+}
+
+static int reboot_mode_add_param(struct device_d *dev,
+				 const char *prefix,
+				 struct reboot_mode_driver *reboot)
+{
+	char name[sizeof "system.reboot_mode.when"];
+	struct param_d *param;
+
+	scnprintf(name, sizeof(name), "%sprev", prefix);
+
+	param = dev_add_param_enum_ro(dev, name,
+				      &reboot->reboot_mode_prev, reboot->modes,
+				      reboot->nmodes);
+	if (IS_ERR(param))
+		return PTR_ERR(param);
+
+	scnprintf(name, sizeof(name), "%snext", prefix);
+
+	param = dev_add_param_enum(dev, name,
+				   reboot_mode_param_set, NULL,
+				   &reboot->reboot_mode_next, reboot->modes,
+				   reboot->nmodes, reboot);
+
+	return PTR_ERR_OR_ZERO(param);
+}
+
+static int reboot_mode_add_globalvar(void)
+{
+	struct reboot_mode_driver *reboot = __boot_mode;
+
+	if (!reboot)
+		return 0;
+
+	return reboot_mode_add_param(&global_device, "system.reboot_mode.", reboot);
+}
+late_initcall(reboot_mode_add_globalvar);
+
+
+static void reboot_mode_print(struct reboot_mode_driver *reboot,
+			      const char *prefix, u32 magic)
+{
+	dev_dbg(reboot->dev, "%s: %08x\n", prefix, magic);
+}
+
+/**
+ * reboot_mode_register - register a reboot mode driver
+ * @reboot: reboot mode driver
+ * @reboot_mode: reboot mode read from hardware
+ *
+ * Returns: 0 on success or a negative error code on failure.
+ */
+int reboot_mode_register(struct reboot_mode_driver *reboot, u32 reboot_mode)
+{
+	struct property *prop;
+	struct device_node *np = reboot->dev->device_node;
+	size_t len = strlen(PREFIX);
+	const char *alias;
+	size_t nmodes = 0;
+	int i = 0;
+	int ret;
+
+	for_each_property_of_node(np, prop) {
+		u32 magic;
+
+		if (strncmp(prop->name, PREFIX, len))
+			continue;
+		if (of_property_read_u32(np, prop->name, &magic))
+			continue;
+
+		nmodes++;
+	}
+
+	reboot->nmodes = nmodes;
+	reboot->magics = xzalloc(nmodes * sizeof(u32));
+	reboot->modes = xzalloc(nmodes * sizeof(const char *));
+
+	reboot_mode_print(reboot, "registering magic", reboot_mode);
+
+	for_each_property_of_node(np, prop) {
+		const char **mode;
+		u32 *magic;
+
+		magic = &reboot->magics[i];
+		mode = &reboot->modes[i];
+
+		if (strncmp(prop->name, PREFIX, len))
+			continue;
+
+		if (of_property_read_u32(np, prop->name, magic)) {
+			dev_err(reboot->dev, "reboot mode %s without magic number\n",
+				*mode);
+			continue;
+		}
+
+		*mode = prop->name + len;
+		if (*mode[0] == '\0') {
+			ret = -EINVAL;
+			dev_err(reboot->dev, "invalid mode name(%s): too short!\n",
+				prop->name);
+			goto error;
+		}
+
+		reboot_mode_print(reboot, *mode, *magic);
+
+		i++;
+	}
+
+	for (i = 0; i < reboot->nmodes; i++) {
+		if (reboot->magics[i] == reboot_mode) {
+			reboot->reboot_mode_prev = i;
+			break;
+		}
+	}
+
+	reboot_mode_add_param(reboot->dev, "", reboot);
+
+	/* clear mode for next reboot */
+	reboot->write(reboot, 0);
+
+	if (!reboot->priority)
+		reboot->priority = REBOOT_MODE_DEFAULT_PRIORITY;
+
+	if (reboot->priority >= __priority) {
+		__priority = reboot->priority;
+		__boot_mode = reboot;
+	}
+
+
+	alias = of_alias_get(np);
+	if (alias)
+		dev_set_name(reboot->dev, alias);
+
+	return 0;
+
+error:
+	free(reboot->magics);
+	free(reboot->modes);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(reboot_mode_register);
+
+const char *reboot_mode_get(void)
+{
+	if (!__boot_mode)
+		return NULL;
+
+	return __boot_mode->modes[__boot_mode->reboot_mode_prev];
+}
+EXPORT_SYMBOL_GPL(reboot_mode_get);
+
+BAREBOX_MAGICVAR_NAMED(global_system_reboot_mode_prev,
+		       global.system.reboot_mode.prev,
+		       "reboot-mode: Mode set previously, before barebox start");
+BAREBOX_MAGICVAR_NAMED(global_system_reboot_mode_next,
+		       global.system.reboot_mode.next,
+		       "reboot-mode: Mode to set next, to be evaluated after reset");
diff --git a/include/linux/reboot-mode.h b/include/linux/reboot-mode.h
new file mode 100644
index 000000000000..92a1da7b5562
--- /dev/null
+++ b/include/linux/reboot-mode.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __REBOOT_MODE_H__
+#define __REBOOT_MODE_H__
+
+#include <linux/types.h>
+
+struct device_d;
+
+#ifdef CONFIG_REBOOT_MODE
+struct reboot_mode_driver {
+	struct device_d *dev;
+	int (*write)(struct reboot_mode_driver *reboot, u32 magic);
+	int priority;
+
+	/* filled by reboot_mode_register */
+	int reboot_mode_prev, reboot_mode_next;
+	unsigned nmodes;
+	const char **modes;
+	u32 *magics;
+};
+
+int reboot_mode_register(struct reboot_mode_driver *reboot, u32 reboot_mode);
+const char *reboot_mode_get(void);
+
+#define REBOOT_MODE_DEFAULT_PRIORITY 100
+
+#else
+
+static inline const char *reboot_mode_get(void)
+{
+	return NULL;
+}
+
+#endif
+
+#endif
diff --git a/include/of.h b/include/of.h
index d548e517896b..b9b3a102284c 100644
--- a/include/of.h
+++ b/include/of.h
@@ -732,6 +732,8 @@ static inline int of_autoenable_i2c_by_component(char *path)
 
 #endif
 
+#define for_each_property_of_node(dn, pp) \
+	list_for_each_entry(pp, &dn->properties, list)
 #define for_each_node_by_name(dn, name) \
 	for (dn = of_find_node_by_name(NULL, name); dn; \
 	     dn = of_find_node_by_name(dn, name))
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
