Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNXlg-000870-Rs
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 08:47:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kNXlf-0003Vc-VT
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 10:47:19 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kNXlf-000177-DI
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 10:47:19 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 30 Sep 2020 10:47:13 +0200
Message-Id: <20200930084716.4200-6-m.felsch@pengutronix.de>
In-Reply-To: <20200930084716.4200-1-m.felsch@pengutronix.de>
References: <20200930084716.4200-1-m.felsch@pengutronix.de>
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
Subject: [PATCH v2 5/8] common: add initial barebox deep-probe support
To: barebox@lists.infradead.org

The barebox 'deep probe' or 'probe on demand' mechanism is the answer of
unwanted -EPROBE_DEFER failures. The EPROBE_DEFER error code was
introduced by commit ab3da15bc14c ("base: Introduce deferred probing")
and since then it causes a few problems.

The error is returned if either the device is not yet present or the
driver is not yet registered. This makes sense on linux systems where
modules and hot-plug devices are used very often but not for barebox.
The module support is rarely used and devices aren't hot pluggable.

The current barebox behaviour populates all devices before the drivers
are registered so all devices are present during the driver
registration. So the driver probe() function gets called immediately
after the driver registration and causes the -EPROBE_DEFER error if this
driver depends on an other not yet registered driver.

To get rid of the EPROBE_DEFER error code we need to reorder the device
population and the driver registration. All drivers must be registered
first. In an ideal world all driver can be registered by the same
initcall level. Then devices are getting populated which causes calling
the driver probe() function but this time resources/devices are created
on demand if not yet available.

Dependencies between devices are normally expressed as references to
other device nodes. With deep probe barebox provides helper functions
which take a device node and probe the device behind that node if
necessary. This means instead of returning -EPROBE_DEFER, we can now
make the desired resources available once we need them.

If the resource can't be created we are returning -ENODEV since we are
not supporting hot-plugging. Dropping EPROBE_DEFER is the long-term
goal, avoid initcall shifting is the short-term goal.

Call it deep-probe since the on-demand device creation can greate very
deep stacks. This commit adds the initial support for: spi, i2c, reset,
regulator and clk resource on-demand creation. The deep-probe mechanism
must be enabled for each board to avoid breaking changes using
deep_probe_enable(). This can be changed later after all boards are
converted to the new mechanism.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- add deep-probe state to verify it once
- use a linker list array instead of initcalls and runtime allocation
- make of_device_create_on_demand an internal function
- convert to of_device_ensure_probed* and of_devices_ensure_probed*
- add missing function docs
- force the existence of the driver to avoid EPROBE_DEFER (see long-term
  goal)
- return int instead of device_d
- fix stub funcs
- add BUG_ON() to track undefined behaviour
- add comment to of_platform_device_create() to make it clear that
  calling it again for an already populated device is not allowed
- i2c: only set of_node->dev if it is available

 common/Makefile                   |   1 +
 common/deep-probe.c               |  36 +++++++
 drivers/base/driver.c             |  11 +-
 drivers/clk/clk.c                 |   5 +
 drivers/i2c/i2c.c                 |   8 ++
 drivers/of/base.c                 |  13 ++-
 drivers/of/platform.c             | 165 ++++++++++++++++++++++++++++++
 drivers/regulator/core.c          |   6 ++
 drivers/reset/core.c              |   4 +
 drivers/spi/spi.c                 |   2 +
 include/asm-generic/barebox.lds.h |  10 +-
 include/deep-probe.h              |  26 +++++
 include/of.h                      |  32 +++++-
 13 files changed, 314 insertions(+), 5 deletions(-)
 create mode 100644 common/deep-probe.c
 create mode 100644 include/deep-probe.h

diff --git a/common/Makefile b/common/Makefile
index c3ae3ca1b9..8525240422 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -3,6 +3,7 @@ obj-y				+= memory_display.o
 pbl-$(CONFIG_PBL_CONSOLE)	+= memory_display.o
 obj-y				+= clock.o
 obj-y				+= console_common.o
+obj-y				+= deep-probe.o
 obj-y				+= startup.o
 obj-y				+= misc.o
 obj-pbl-y			+= memsize.o
diff --git a/common/deep-probe.c b/common/deep-probe.c
new file mode 100644
index 0000000000..af53abdc74
--- /dev/null
+++ b/common/deep-probe.c
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <deep-probe.h>
+#include <of.h>
+
+enum deep_probe_state {
+	DEEP_PROBE_UNKONW,
+	DEEP_PROBE_SUPPORTED,
+	DEEP_PROBE_NOT_SUPPORTED
+};
+
+static enum deep_probe_state boardstate;
+
+bool deep_probe_is_supported(void)
+{
+	struct deep_probe_entry *board;
+
+	if (boardstate == DEEP_PROBE_NOT_SUPPORTED)
+		return false;
+	else if (boardstate == DEEP_PROBE_SUPPORTED)
+		return true;
+
+	/* determine boardstate */
+	for (board = &__barebox_deep_probe_start;
+	     board != &__barebox_deep_probe_end; board++) {
+		if (of_machine_is_compatible(board->compatible)) {
+			boardstate = DEEP_PROBE_SUPPORTED;
+			return true;
+		}
+	}
+
+	boardstate = DEEP_PROBE_NOT_SUPPORTED;
+	return false;
+}
+EXPORT_SYMBOL_GPL(deep_probe_is_supported);
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 412db6c406..b797655c15 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -21,6 +21,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <deep-probe.h>
 #include <driver.h>
 #include <malloc.h>
 #include <console.h>
@@ -95,7 +96,15 @@ int device_probe(struct device_d *dev)
 	if (ret == -EPROBE_DEFER) {
 		list_del(&dev->active);
 		list_add(&dev->active, &deferred);
-		dev_dbg(dev, "probe deferred\n");
+
+		/*
+		 * -EPROBE_DEFER should never appear on a deep-probe machine so
+		 * inform the user immediately.
+		 */
+		if (deep_probe_is_supported())
+			dev_warn(dev, "probe deferred\n");
+		else
+			dev_dbg(dev, "probe deferred\n");
 		return ret;
 	}
 
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index b04d44593b..e40dfae9ce 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -439,6 +439,11 @@ struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec)
 {
 	struct of_clk_provider *provider;
 	struct clk *clk = ERR_PTR(-EPROBE_DEFER);
+	int ret;
+
+	ret = of_device_ensure_probed(clkspec->np);
+	if (ret)
+		return ERR_PTR(ret);
 
 	/* Check if we have such a provider in our array */
 	list_for_each_entry(provider, &of_clk_providers, link) {
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 57d8c7017f..12aac42794 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -407,6 +407,9 @@ static struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 	}
 	client->dev.info = i2c_info;
 
+	if (chip->of_node)
+		chip->of_node->dev = &client->dev;
+
 	return client;
 }
 
@@ -548,6 +551,11 @@ struct i2c_adapter *i2c_get_adapter(int busnum)
 struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node)
 {
 	struct i2c_adapter *adap;
+	int ret;
+
+	ret = of_device_ensure_probed(node);
+	if (ret)
+		return ERR_PTR(ret);
 
 	for_each_i2c_adapter(adap)
 		if (adap->dev.device_node == node)
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 8ba151dbde..a2f6c39ad1 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -15,6 +15,7 @@
  * GNU General Public License for more details.
  */
 #include <common.h>
+#include <deep-probe.h>
 #include <of.h>
 #include <of_address.h>
 #include <errno.h>
@@ -1567,6 +1568,15 @@ int of_set_root_node(struct device_node *node)
 	return 0;
 }
 
+static int barebox_of_populate(void)
+{
+	if (IS_ENABLED(CONFIG_OFDEVICE) && deep_probe_is_supported())
+		of_probe();
+
+	return 0;
+}
+of_populate_initcall(barebox_of_populate);
+
 void barebox_register_of(struct device_node *root)
 {
 	if (root_node)
@@ -1577,7 +1587,8 @@ void barebox_register_of(struct device_node *root)
 
 	if (IS_ENABLED(CONFIG_OFDEVICE)) {
 		of_clk_init(root, NULL);
-		of_probe();
+		if (!deep_probe_is_supported())
+			of_probe();
 	}
 }
 
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 01de6f98af..0368b1485a 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -15,6 +15,7 @@
  * GNU General Public License for more details.
  */
 #include <common.h>
+#include <deep-probe.h>
 #include <malloc.h>
 #include <of.h>
 #include <of_address.h>
@@ -29,6 +30,12 @@
 struct device_d *of_find_device_by_node(struct device_node *np)
 {
 	struct device_d *dev;
+	int ret;
+
+	ret = of_device_ensure_probed(np);
+	if (ret)
+		return NULL;
+
 	for_each_device(dev)
 		if (dev->device_node == np)
 			return dev;
@@ -353,3 +360,161 @@ int of_platform_populate(struct device_node *root,
 	return rc;
 }
 EXPORT_SYMBOL_GPL(of_platform_populate);
+
+static struct device_d *of_device_create_on_demand(struct device_node *np)
+{
+	struct device_node *parent;
+	struct device_d *parent_dev, *dev;
+
+	parent = of_get_parent(np);
+	if (!parent)
+		return NULL;
+
+	/* Create all parent devices needed for the requested device */
+	parent_dev = parent->dev ? : of_device_create_on_demand(parent);
+	if (IS_ERR(parent_dev))
+		return parent_dev;
+
+	/*
+	 * Parent devices like i2c/spi controllers are populating their own
+	 * devices. So it can be that the requested device already exist after
+	 * the parent device creation.
+	 */
+	if (np->dev)
+		return np->dev;
+
+	pr_debug("%s: Create %s (%s) on demand\n", __func__,
+		 np->name, np->full_name);
+
+	if (of_device_is_compatible(np, "arm,primecell"))
+		dev = of_amba_device_create(np);
+	else
+		dev = of_platform_device_create(np, parent_dev);
+
+	return dev ? : ERR_PTR(-ENODEV);
+}
+
+/**
+ * of_device_ensure_probed() - ensures that a device is probed
+ *
+ * @np: the device_node handle which should be probed
+ *
+ * Ensures that the device is populated and probed so frameworks can make use of
+ * it.
+ *
+ * Return: %0 on success
+ *	   %-ENODEV if either the device can't be populated, the driver is
+ *	     missing or the driver probe returns an error.
+ */
+int of_device_ensure_probed(struct device_node *np)
+{
+	struct device_d *dev;
+
+	if (!deep_probe_is_supported())
+		return 0;
+
+	dev = of_device_create_on_demand(np);
+	if (IS_ERR(dev))
+		return PTR_ERR(dev);
+
+	BUG_ON(!dev);
+
+	/*
+	 * The deep-probe mechanism relies on the fact that all necessary
+	 * drivers are added before the device creation. Furthermore deep-probe
+	 * is the answer of the EPROBE_DEFER errno so we must ensure that the
+	 * driver was probed succesfully after the device creation. Both
+	 * requirments are fullfilled if 'dev->driver' is not NULL.
+	 */
+	if (!dev->driver)
+		return -ENODEV;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_device_ensure_probed);
+
+/**
+ * of_device_ensure_probed_by_alias() - ensures that a device is probed
+ *
+ * @alias: the alias string to search for a device
+ *
+ * The function search for a given alias string and ensures that the device is
+ * populated and probed if found.
+ *
+ * Return: %0 on success
+ *	   %-ENODEV if either the device can't be populated, the driver is
+ *	     missing or the driver probe returns an error
+ *	   %-EINVAL if alias can't be found
+ */
+int of_device_ensure_probed_by_alias(const char *alias)
+{
+	struct device_node *dev_node;
+
+	dev_node = of_find_node_by_alias(NULL, alias);
+	if (!dev_node)
+		return -EINVAL;
+
+	return of_device_ensure_probed(dev_node);
+}
+EXPORT_SYMBOL_GPL(of_device_ensure_probed_by_alias);
+
+/**
+ * of_devices_ensure_probed_by_dev_id() - ensures that a devices are probed
+ *
+ * @np: the start point device_node handle
+ * @ids: the matching 'struct of_device_id' ids
+ *
+ * The function start searching the device tree from @np and populates and
+ * probes devices which matches @ids.
+ *
+ * Return: %0 on success
+ *	   %-ENODEV if either the device wasn't found, can't be populated,
+ *	     the driver is missing or the driver probe returns an error
+ */
+int of_devices_ensure_probed_by_dev_id(struct device_node *np,
+				       const struct of_device_id *ids)
+{
+	struct device_node *child;
+
+	if (of_match_node(ids, np))
+		return of_device_ensure_probed(np);
+
+	for_each_child_of_node(np, child) {
+		int ret;
+
+		ret = of_devices_ensure_probed_by_dev_id(child, ids);
+		if (!ret)
+			return 0;
+	}
+
+	return -ENODEV;
+}
+EXPORT_SYMBOL_GPL(of_devices_ensure_probed_by_dev_id);
+
+/**
+ * of_devices_ensure_probed_by_property() - ensures that a devices are probed
+ *
+ * @property_name: The property name to search for
+ *
+ * The function start searching the whole device tree and populates and probe
+ * devices which matches @property_name.
+ *
+ * Return: %0 on success
+ *	   %-ENODEV if either the device wasn't found, can't be populated,
+ *	     the driver is missing or the driver probe returns an error
+ */
+int of_devices_ensure_probed_by_property(const char *property_name)
+{
+	struct device_node *node;
+
+	for_each_node_with_property(node, property_name) {
+		int ret;
+
+		ret = of_device_ensure_probed(node);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_devices_ensure_probed_by_property);
diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 6ea21a4609..803b66bd0c 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -175,6 +175,7 @@ int of_regulator_register(struct regulator_dev *rd, struct device_node *node)
 		return PTR_ERR(ri);
 
 	ri->node = node;
+	node->dev = rd->dev;
 
 	of_property_read_u32(node, "regulator-enable-ramp-delay",
 			&ri->enable_time_us);
@@ -191,6 +192,7 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
 	char *propname;
 	struct regulator_internal *ri;
 	struct device_node *node;
+	int ret;
 
 	propname = basprintf("%s-supply", supply);
 
@@ -222,6 +224,10 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
 		goto out;
 	}
 
+	ret = of_device_ensure_probed(node);
+	if (ret)
+		return ERR_PTR(ret);
+
 	list_for_each_entry(ri, &regulator_list, list) {
 		if (ri->node == node) {
 			dev_dbg(dev, "Using %s regulator from %s\n",
diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 99b9c80655..ee2de58c34 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -168,6 +168,10 @@ static struct reset_control *of_reset_control_get(struct device_node *node,
 	if (ret)
 		return ERR_PTR(ret);
 
+	ret = of_device_ensure_probed(args.np);
+	if (ret)
+		return ERR_PTR(ret);
+
 	rcdev = NULL;
 	list_for_each_entry(r, &reset_controller_list, list) {
 		if (args.np == r->of_node) {
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 8421d9d7c1..d1d3bdcc41 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -107,6 +107,8 @@ struct spi_device *spi_new_device(struct spi_controller *ctrl,
 	if (status)
 		goto fail;
 
+	chip->device_node->dev = &proxy->dev;
+
 	return proxy;
 fail:
 	free(proxy);
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index a7d32160d1..c5f9d97547 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -114,6 +114,13 @@
 	KEEP(*(.rsa_keys.rodata.*));		\
 	__rsa_keys_end = .;			\
 
+#define BAREBOX_DEEP_PROBE			\
+	STRUCT_ALIGN();				\
+	__barebox_deep_probe_start = .;		\
+	KEEP(*(SORT_BY_NAME(.barebox_deep_probe*)))	\
+	__barebox_deep_probe_end = .;
+
+
 #ifdef CONFIG_CONSTRUCTORS
 #define KERNEL_CTORS()  . = ALIGN(8);                      \
 			__ctors_start = .;                 \
@@ -136,7 +143,8 @@
 	BAREBOX_CLK_TABLE			\
 	BAREBOX_DTB				\
 	BAREBOX_RSA_KEYS			\
-	BAREBOX_PCI_FIXUP
+	BAREBOX_PCI_FIXUP			\
+	BAREBOX_DEEP_PROBE
 
 #if defined(CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE) && \
 CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE < CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
diff --git a/include/deep-probe.h b/include/deep-probe.h
new file mode 100644
index 0000000000..4f6673a6f1
--- /dev/null
+++ b/include/deep-probe.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __DEEP_PROBE_H
+#define __DEEP_PROBE_H
+
+#include <linux/stringify.h>
+#include <linux/types.h>
+
+struct deep_probe_entry {
+	const char *compatible;
+};
+
+bool deep_probe_is_supported(void);
+
+extern struct deep_probe_entry __barebox_deep_probe_start;
+extern struct deep_probe_entry __barebox_deep_probe_end;
+
+#define _DEEP_PROBE_ENTRY(_entry)		\
+	__barebox_deep_probe_ ## _entry
+
+#define BAREBOX_DEEP_PROBE_ENABLE(_entry,_compatible)			\
+	const struct deep_probe_entry _DEEP_PROBE_ENTRY(_entry)		\
+        __attribute__ ((unused,section (".barebox_deep_probe_" __stringify(_entry)))) = { \
+		.compatible = _compatible,				\
+	}
+
+#endif /* __DEEP_PROBE_H */
diff --git a/include/of.h b/include/of.h
index f2dad9a6c2..3042ce261d 100644
--- a/include/of.h
+++ b/include/of.h
@@ -267,6 +267,12 @@ extern struct device_d *of_device_enable_and_register_by_name(const char *name);
 extern struct device_d *of_device_enable_and_register_by_alias(
 							const char *alias);
 
+extern int of_device_ensure_probed(struct device_node *np);
+extern int of_device_ensure_probed_by_alias(const char *alias);
+extern int of_devices_ensure_probed_by_property(const char *property_name);
+extern int of_devices_ensure_probed_by_dev_id(struct device_node *np,
+					      const struct of_device_id *ids);
+
 struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node);
 int of_parse_partitions(struct cdev *cdev, struct device_node *node);
 int of_partitions_register_fixup(struct cdev *cdev);
@@ -332,12 +338,34 @@ static inline int of_set_root_node(struct device_node *node)
 	return -ENOSYS;
 }
 
-static inline struct device_d *of_platform_device_create(struct device_node *np,
-							 struct device_d *parent)
+static inline struct device_d *
+of_platform_device_create(struct device_node *np, struct device_d *parent)
 {
 	return NULL;
 }
 
+static inline int of_device_ensure_probed(struct device_node *np)
+{
+	return 0;
+}
+
+static inline int of_device_ensure_probed_by_alias(const char *alias)
+{
+	return 0;
+}
+
+static inline int of_devices_ensure_probed_by_property(const char *property_name)
+{
+	return 0;
+}
+
+static inline int
+of_devices_ensure_probed_by_dev_id(struct device_node *np,
+				   const struct of_device_id *ids)
+{
+	return 0;
+}
+
 static inline int of_bus_n_addr_cells(struct device_node *np)
 {
 	return 0;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
