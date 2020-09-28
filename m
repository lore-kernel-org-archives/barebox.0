Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvQh-0008C5-0a
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:51:15 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQf-0000ZG-TY
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:05 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kMvQe-0000K9-O0
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 17:51:04 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 28 Sep 2020 17:50:38 +0200
Message-Id: <20200928155041.32649-16-m.felsch@pengutronix.de>
In-Reply-To: <20200928155041.32649-1-m.felsch@pengutronix.de>
References: <20200928155041.32649-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 15/18] common: add initial barebox deep-probe support
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
 common/Makefile          |   1 +
 common/deep-probe.c      |  39 +++++++++++++++
 drivers/base/driver.c    |  11 ++++-
 drivers/clk/clk.c        |   5 ++
 drivers/i2c/i2c.c        |   6 +++
 drivers/of/base.c        |  13 ++++-
 drivers/of/platform.c    | 101 ++++++++++++++++++++++++++++++++++++++-
 drivers/regulator/core.c |   6 +++
 drivers/reset/core.c     |   5 ++
 drivers/spi/spi.c        |   2 +
 include/deep-probe.h     |  17 +++++++
 include/of.h             |  37 +++++++++++++-
 12 files changed, 238 insertions(+), 5 deletions(-)
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
index 0000000000..05ce4352b1
--- /dev/null
+++ b/common/deep-probe.c
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <deep-probe.h>
+#include <of.h>
+
+struct deep_probe_entry {
+	struct list_head entry;
+	const char *compatible;
+};
+
+static LIST_HEAD(boards);
+
+int deep_probe_add_board(const char *machine)
+{
+	struct deep_probe_entry *new_machine;
+
+	new_machine = xzalloc(sizeof(*new_machine));
+	if (!new_machine)
+		return -ENOMEM;
+
+	new_machine->compatible = machine;
+	list_add(&new_machine->entry, &boards);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(deep_probe_add_board);
+
+bool deep_probe_is_supported(void)
+{
+	struct deep_probe_entry *machine;
+
+	list_for_each_entry(machine, &boards, entry) {
+		if (of_machine_is_compatible(machine->compatible))
+			return true;
+	}
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
index b04d44593b..218317d00d 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -437,9 +437,14 @@ EXPORT_SYMBOL_GPL(of_clk_del_provider);
 
 struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec)
 {
+	struct device_d *dev;
 	struct of_clk_provider *provider;
 	struct clk *clk = ERR_PTR(-EPROBE_DEFER);
 
+	dev = of_device_create_on_demand(clkspec->np);
+	if (IS_ERR(dev))
+		return ERR_CAST(dev);
+
 	/* Check if we have such a provider in our array */
 	list_for_each_entry(provider, &of_clk_providers, link) {
 		if (provider->node == clkspec->np)
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 57d8c7017f..dbc0bd4f0b 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -406,6 +406,7 @@ static struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 		return NULL;
 	}
 	client->dev.info = i2c_info;
+	chip->of_node->dev = &client->dev;
 
 	return client;
 }
@@ -547,8 +548,13 @@ struct i2c_adapter *i2c_get_adapter(int busnum)
 
 struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node)
 {
+	struct device_d *dev;
 	struct i2c_adapter *adap;
 
+	dev = of_device_create_on_demand(node);
+	if (IS_ERR(dev))
+		return ERR_CAST(dev);
+
 	for_each_i2c_adapter(adap)
 		if (adap->dev.device_node == node)
 			return adap;
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 861871b221..cea6d5b1aa 100644
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
index 21c7cce1a5..c837adf8e8 100644
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
@@ -29,6 +30,11 @@
 struct device_d *of_find_device_by_node(struct device_node *np)
 {
 	struct device_d *dev;
+
+	dev = of_device_create_on_demand(np);
+	if (IS_ERR(dev))
+		return NULL;
+
 	for_each_device(dev)
 		if (dev->device_node == np)
 			return dev;
@@ -106,6 +112,9 @@ struct device_d *of_platform_device_create(struct device_node *np,
 	if (!of_device_is_available(np))
 		return NULL;
 
+	if (np->dev)
+		return np->dev;
+
 	/* count the io resources */
 	if (of_can_translate_address(np))
 		while (of_address_to_resource(np, num_reg, &temp_res) == 0)
@@ -170,8 +179,10 @@ struct device_d *of_platform_device_create(struct device_node *np,
 		(num_reg) ? &dev->resource[0].start : &resinval);
 
 	ret = platform_device_register(dev);
-	if (!ret)
+	if (!ret) {
+		np->dev = dev;
 		return dev;
+	}
 
 	free(dev);
 	if (num_reg)
@@ -252,6 +263,9 @@ static struct device_d *of_amba_device_create(struct device_node *np)
 	if (!of_device_is_available(np))
 		return NULL;
 
+	if (np->dev)
+		return np->dev;
+
 	dev = xzalloc(sizeof(*dev));
 
 	/* setup generic device info */
@@ -275,6 +289,8 @@ static struct device_d *of_amba_device_create(struct device_node *np)
 	if (ret)
 		goto amba_err_free;
 
+	np->dev = &dev->dev;
+
 	return &dev->dev;
 
 amba_err_free:
@@ -364,3 +380,86 @@ int of_platform_populate(struct device_node *root,
 	return rc;
 }
 EXPORT_SYMBOL_GPL(of_platform_populate);
+
+struct device_d *of_device_create_on_demand(struct device_node *np)
+{
+	struct device_node *parent;
+	struct device_d *parent_dev, *dev;
+
+	if (!deep_probe_is_supported())
+		return NULL;
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
+EXPORT_SYMBOL_GPL(of_device_create_on_demand);
+
+struct device_d *of_device_create_on_demand_by_alias(const char *alias)
+{
+	struct device_node *dev_node;
+
+	dev_node = of_find_node_by_alias(NULL, alias);
+	return of_device_create_on_demand(dev_node);
+}
+EXPORT_SYMBOL_GPL(of_device_create_on_demand_by_alias);
+
+struct device_d *
+of_device_create_on_demand_by_dev_id(struct device_node *np,
+				     const struct of_device_id *ids)
+{
+	struct device_node *child;
+
+	if (of_match_node(ids, np))
+		return of_device_create_on_demand(np);
+
+	for_each_child_of_node(np, child) {
+		struct device_d *dev;
+
+		dev = of_device_create_on_demand_by_dev_id(child, ids);
+		if (!IS_ERR(dev))
+			return dev;
+	}
+
+	return ERR_PTR(-ENODEV);
+}
+EXPORT_SYMBOL_GPL(of_device_create_on_demand_by_dev_id);
+
+int of_devices_create_on_demand_by_property(const char *property_name)
+{
+	struct device_node *node;
+
+	for_each_node_with_property(node, property_name) {
+		struct device_d *dev;
+
+		dev = of_device_create_on_demand(node);
+		if (IS_ERR(dev))
+			return PTR_ERR(dev);
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_devices_create_on_demand_by_property);
diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 6ea21a4609..25973acaf0 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -175,6 +175,7 @@ int of_regulator_register(struct regulator_dev *rd, struct device_node *node)
 		return PTR_ERR(ri);
 
 	ri->node = node;
+	node->dev = rd->dev;
 
 	of_property_read_u32(node, "regulator-enable-ramp-delay",
 			&ri->enable_time_us);
@@ -188,6 +189,7 @@ int of_regulator_register(struct regulator_dev *rd, struct device_node *node)
 
 static struct regulator_internal *of_regulator_get(struct device_d *dev, const char *supply)
 {
+	struct device_d *dev_ondemand;
 	char *propname;
 	struct regulator_internal *ri;
 	struct device_node *node;
@@ -222,6 +224,10 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
 		goto out;
 	}
 
+	dev_ondemand = of_device_create_on_demand(node);
+	if (IS_ERR(dev_ondemand))
+		return ERR_CAST(dev_ondemand);
+
 	list_for_each_entry(ri, &regulator_list, list) {
 		if (ri->node == node) {
 			dev_dbg(dev, "Using %s regulator from %s\n",
diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 99b9c80655..874de11b0c 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -153,6 +153,7 @@ static struct reset_control *of_reset_control_get(struct device_node *node,
 	struct reset_control *rstc = ERR_PTR(-ENODEV);
 	struct reset_controller_dev *r, *rcdev;
 	struct of_phandle_args args;
+	struct device_d *dev;
 	int index = 0;
 	int rstc_id;
 	int ret;
@@ -168,6 +169,10 @@ static struct reset_control *of_reset_control_get(struct device_node *node,
 	if (ret)
 		return ERR_PTR(ret);
 
+	dev = of_device_create_on_demand(args.np);
+	if (IS_ERR(dev))
+		return ERR_CAST(dev);
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
diff --git a/include/deep-probe.h b/include/deep-probe.h
new file mode 100644
index 0000000000..f9a1f61fde
--- /dev/null
+++ b/include/deep-probe.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __DEEP_PROBE_H
+#define __DEEP_PROBE_H
+
+#include <linux/types.h>
+
+int deep_probe_add_board(const char *machine);
+bool deep_probe_is_supported(void);
+
+#define deep_probe_enable(func,board)				\
+	static int __init func##_deep_probe_register(void)	\
+	{							\
+		return deep_probe_add_board(board);		\
+	}							\
+	pure_initcall(func##_deep_probe_register)
+
+#endif /* __DEEP_PROBE_H */
diff --git a/include/of.h b/include/of.h
index 1b3ceaff40..0f8d6f7546 100644
--- a/include/of.h
+++ b/include/of.h
@@ -35,6 +35,7 @@ struct device_node {
 	struct list_head parent_list;
 	struct list_head list;
 	phandle phandle;
+	struct device_d *dev;
 };
 
 struct of_device_id {
@@ -266,6 +267,13 @@ extern struct device_d *of_device_enable_and_register_by_name(const char *name);
 extern struct device_d *of_device_enable_and_register_by_alias(
 							const char *alias);
 
+extern struct device_d *of_device_create_on_demand(struct device_node *np);
+extern struct device_d *of_device_create_on_demand_by_alias(const char *alias);
+extern struct device_d *
+of_device_create_on_demand_by_dev_id(struct device_node *np,
+				     const struct of_device_id *ids);
+extern int of_devices_create_on_demand_by_property(const char *property_name);
+
 struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node);
 int of_parse_partitions(struct cdev *cdev, struct device_node *node);
 int of_partitions_register_fixup(struct cdev *cdev);
@@ -331,12 +339,37 @@ static inline int of_set_root_node(struct device_node *node)
 	return -ENOSYS;
 }
 
-static inline struct device_d *of_platform_device_create(struct device_node *np,
-							 struct device_d *parent)
+static inline struct device_d *
+of_platform_device_create(struct device_node *np, struct device_d *parent)
+{
+	return NULL;
+}
+
+static inline struct device_d *
+of_device_create_on_demand(struct device_node *np);
+{
+	return NULL;
+}
+
+static inline struct device_d *
+of_device_create_on_demand_by_alias(struct device_node *np);
 {
 	return NULL;
 }
 
+static inline struct device_d *
+of_device_create_on_demand_by_dev_id(struct device_node *np,
+				     const struct of_device_id *ids)
+{
+	return NULL;
+}
+
+static inline int
+of_devices_create_on_demand_by_property(const char *property_name)
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
