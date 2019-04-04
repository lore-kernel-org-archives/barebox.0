Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hC3k5-0007e8-Tz
 for barebox@lists.infradead.org; Thu, 04 Apr 2019 14:53:27 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu,  4 Apr 2019 16:53:19 +0200
Message-Id: <20190404145320.11465-7-m.tretter@pengutronix.de>
In-Reply-To: <20190404145320.11465-1-m.tretter@pengutronix.de>
References: <20190404145320.11465-1-m.tretter@pengutronix.de>
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
Subject: [RFC PATCH 6/7] firmware: add support for fpga-regions
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

The Barebox fpga-region driver is merely glue code between the
devicetree overlay support and the various firmware handlers.

The driver registers notifiers for each fpga-region in the devicetree.
If an overlay is registered for a fpga-region, it uses the referenced
firmware handler to load the specified firmware image.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/firmware/Kconfig          |   7 ++
 drivers/firmware/Makefile         |   1 +
 drivers/firmware/of-fpga-region.c | 153 ++++++++++++++++++++++++++++++
 3 files changed, 161 insertions(+)
 create mode 100644 drivers/firmware/of-fpga-region.c

diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index 710b500ab0..95167efae8 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -14,4 +14,11 @@ config FIRMWARE_ALTERA_SOCFPGA
 	bool "Altera SoCFPGA fpga loader"
 	depends on ARCH_SOCFPGA
 	select FIRMWARE
+
+config OF_FPGA_REGION
+        tristate "FPGA Region Device Tree Overlay Support"
+        help
+          Support for loading FPGA images by applying a Device Tree
+          overlay.
+
 endmenu
diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
index c3a3c34004..f648ad6259 100644
--- a/drivers/firmware/Makefile
+++ b/drivers/firmware/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_FIRMWARE_ALTERA_SERIAL) += altera_serial.o
 obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) += socfpga.o
+obj-$(CONFIG_OF_FPGA_REGION) += of-fpga-region.o
diff --git a/drivers/firmware/of-fpga-region.c b/drivers/firmware/of-fpga-region.c
new file mode 100644
index 0000000000..dcc6b66d81
--- /dev/null
+++ b/drivers/firmware/of-fpga-region.c
@@ -0,0 +1,153 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * FPGA Region - Device Tree support for FPGA programming under Linux
+ *
+ *  Copyright (C) 2013-2016 Altera Corporation
+ *  Copyright (C) 2017 Intel Corporation
+ *  Copyright (C) 2019 Pengutronix, Michael Tretter <m.tretter@pengutronix.de>
+ */
+#include <common.h>
+#include <globalvar.h>
+#include <firmware.h>
+#include <init.h>
+#include <magicvar.h>
+#include <of.h>
+
+char *firmware_path;
+
+struct fpga_region {
+	struct device_d *dev;
+	struct notifier_block nb;
+	struct firmware_mgr *mgr;
+};
+
+static struct firmware_mgr *of_fpga_region_get_mgr(struct device_node *np)
+{
+	struct device_node *mgr_node;
+
+	do {
+		if (of_device_is_compatible(np, "fpga-region")) {
+			mgr_node = of_parse_phandle(np, "fpga-mgr", 0);
+			if (mgr_node)
+				return firmwaremgr_find_by_node(mgr_node);
+		}
+	} while ((np = of_get_parent(np)) != NULL);
+
+	return NULL;
+}
+
+static int of_fpga_region_notify(struct notifier_block *nb,
+				 unsigned long action, void *arg)
+{
+	struct of_overlay_notify_data *nd = arg;
+	struct fpga_region *region = container_of(nb, struct fpga_region, nb);
+	const char *firmware_name;
+	char *firmware;
+	int err;
+
+	if (action != OF_OVERLAY_PRE_APPLY) {
+		dev_dbg(region->dev, "only interested in pre-apply hook\n");
+		return 0;
+	}
+
+	if (nd->target != region->dev->device_node) {
+		dev_dbg(region->dev, "%s is not overlay target %s\n",
+			nd->target->name, region->dev->device_node->name);
+		return 0;
+	}
+
+	err = of_property_read_string(nd->target,
+				      "firmware-name", &firmware_name);
+	if (err != -EINVAL) {
+		dev_dbg(region->dev,
+			"%s has already been programmed with firmware %s\n",
+			nd->target->name, firmware_name);
+		return 0;
+	}
+
+	err = of_property_read_string(nd->overlay,
+				      "firmware-name", &firmware_name);
+	if (err)
+		return err;
+
+	firmware = basprintf("%s/%s", firmware_path, firmware_name);
+	if (!firmware) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	dev_dbg(region->dev, "programming %s with firmware %s\n",
+		nd->target->name, firmware);
+
+	err = firmwaremgr_load_file(region->mgr, firmware);
+	if (err) {
+		dev_err("programming %s failed: %s\n", strerror(-err));
+		goto out;
+	}
+
+	/*
+	 * Add the firmware-name to the live device tree to indicate that the
+	 * FPGA has been programmed with this image.
+	 */
+	of_property_write_string(nd->target, "firmware-name", firmware_name);
+
+out:
+	free(firmware);
+
+	return err;
+}
+
+static int of_fpga_region_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	struct fpga_region *region;
+	struct firmware_mgr *mgr;
+	int err;
+
+	mgr = of_fpga_region_get_mgr(np);
+	if (!mgr) {
+		pr_err("cannot find firmware loader for %s\n", np->name);
+		return -EINVAL;
+	}
+
+	region = kzalloc(sizeof(*region), GFP_KERNEL);
+	if (!region)
+		return -ENOMEM;
+
+	region->dev = dev;
+	region->mgr = mgr;
+	region->nb.notifier_call = of_fpga_region_notify;
+
+	err = of_overlay_notifier_register(&region->nb);
+	if (err)
+		goto out;
+
+	return 0;
+
+out:
+	kfree(region);
+	return err;
+}
+
+static const struct of_device_id fpga_region_of_match[] = {
+	{ .compatible = "fpga-region", },
+	{},
+};
+
+static struct driver_d of_fpga_region_driver = {
+	.name = "of-region",
+	.probe = of_fpga_region_probe,
+	.of_compatible = DRV_OF_COMPAT(fpga_region_of_match),
+};
+device_platform_driver(of_fpga_region_driver);
+
+static int fpga_region_init(void)
+{
+	globalvar_add_simple_string("firmware.path", &firmware_path);
+
+	return 0;
+}
+postcore_initcall(fpga_region_init);
+
+BAREBOX_MAGICVAR_NAMED(global_firmware_path, global.firmware.path,
+		       "Firmware search path");
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
