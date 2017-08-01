Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dcTLM-0006Ss-RH
 for barebox@lists.infradead.org; Tue, 01 Aug 2017 09:20:03 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue,  1 Aug 2017 11:19:34 +0200
Message-Id: <20170801091934.3133-4-s.trumtrar@pengutronix.de>
In-Reply-To: <20170801091934.3133-1-s.trumtrar@pengutronix.de>
References: <20170801091934.3133-1-s.trumtrar@pengutronix.de>
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
Subject: [RFC PATCH 4/4] fpga: add fpga-region support
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 common/firmware.c          |  45 +++++++++-
 drivers/firmware/socfpga.c |   1 +
 drivers/fpga/Makefile      |   2 +-
 drivers/fpga/fpga-region.c | 209 +++++++++++++++++++++++++++++++++++++++++++++
 include/firmware.h         |   2 +
 5 files changed, 257 insertions(+), 2 deletions(-)
 create mode 100644 drivers/fpga/fpga-region.c

diff --git a/common/firmware.c b/common/firmware.c
index 664f9107d0f8..b66c13700913 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -13,6 +13,9 @@
 
 #include <firmware.h>
 #include <common.h>
+#include <environment.h>
+#include <globalvar.h>
+#include <magicvar.h>
 #include <malloc.h>
 #include <xfuncs.h>
 #include <fcntl.h>
@@ -35,6 +38,8 @@ struct firmware_mgr {
 
 static LIST_HEAD(firmwaremgr_list);
 
+static char *firmware_path;
+
 /*
  * firmwaremgr_find - find a firmware device handler
  *
@@ -188,6 +193,9 @@ int firmwaremgr_register(struct firmware_handler *fh)
 
 	list_add_tail(&mgr->list, &firmwaremgr_list);
 
+	firmware_path = xstrdup("");
+	globalvar_add_simple_string("firmware.root", &firmware_path);
+
 	return 0;
 out:
 	free(cdev->name);
@@ -202,11 +210,46 @@ out:
 int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *firmware)
 {
 	int ret;
+	const char *full_name = NULL;
 	char *name = basprintf("/dev/%s", mgr->handler->id);
 
-	ret = copy_file(firmware, name, 0);
+	if (strlen(firmware_path) > 1)
+		full_name = basprintf("%s/%s", firmware_path, firmware);
+	else
+		full_name = firmware;
+
+	ret = copy_file(full_name, name, 0);
 
 	free(name);
 
 	return ret;
 }
+
+int of_firmwaremgr_load_file(struct device_node *np, const char *firmware)
+{
+	struct device_node *mgr_node;
+	struct firmware_handler *fh;
+	struct firmware_mgr *mgr;
+	struct device_d *dev;
+
+	mgr_node = of_parse_phandle(np, "fpga-mgr", 0);
+
+	if (mgr_node) {
+		dev = of_find_device_by_node(mgr_node);
+		if (!dev)
+			return -ENODEV;
+
+		fh = dev->priv;
+		if (!fh)
+			return -ENODEV;
+
+		mgr = firmwaremgr_find(fh->id);
+
+		return firmwaremgr_load_file(mgr, firmware);
+	}
+
+	return -ENODEV;
+}
+
+BAREBOX_MAGICVAR_NAMED(global_firmware_root, global.firmware.root,
+		       "directory where firmware files are found");
diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index 2d4b608c9a1c..170e835f2e1f 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -449,6 +449,7 @@ static int fpgamgr_probe(struct device_d *dev)
 	if (model)
 		fh->model = xstrdup(model);
 	fh->dev = dev;
+	dev->priv = fh;
 
 	dev_dbg(dev, "Registering FPGA firmware programmer\n");
 
diff --git a/drivers/fpga/Makefile b/drivers/fpga/Makefile
index 86178fe7c078..532037035780 100644
--- a/drivers/fpga/Makefile
+++ b/drivers/fpga/Makefile
@@ -3,5 +3,5 @@
 #
 
 # FPGA Bridge Drivers
-obj-$(CONFIG_FPGA_BRIDGE)		+= fpga-bridge.o
+obj-$(CONFIG_FPGA_BRIDGE)		+= fpga-bridge.o fpga-region.o
 obj-$(CONFIG_SOCFPGA_FPGA_BRIDGE)	+= socfpga-hps2fpga-bridge.o socfpga-fpga2sdram-bridge.o
diff --git a/drivers/fpga/fpga-region.c b/drivers/fpga/fpga-region.c
new file mode 100644
index 000000000000..9164ba2c3ac9
--- /dev/null
+++ b/drivers/fpga/fpga-region.c
@@ -0,0 +1,209 @@
+/*
+ * FPGA Region - Device Tree support for FPGA programming under Linux
+ *
+ *  Copyright (C) 2013-2016 Altera Corporation
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
+
+#include <common.h>
+#include <init.h>
+#include <fpga-bridge.h>
+#include <firmware.h>
+#include <linux/list.h>
+
+/**
+ * struct fpga_region - FPGA Region structure
+ * @dev: FPGA Region device
+ * @mutex: enforces exclusive reference to region
+ * @bridge_list: list of FPGA bridges specified in region
+ * @info: fpga image specific information
+ */
+struct fpga_region {
+	struct device_d dev;
+	struct list_head bridge_list;
+	struct fpga_image_info *info;
+	const char *firmware_name;
+};
+
+#define to_fpga_region(d) container_of(d, struct fpga_region, dev)
+
+static const struct of_device_id fpga_region_of_match[] = {
+	{ .compatible = "fpga-region", },
+	{ /* sentinel */ },
+};
+
+/**
+ * fpga_region_get_bridges - create a list of bridges
+ * @region: FPGA region
+ * @overlay: device node of the overlay
+ *
+ * Create a list of bridges including the parent bridge and the bridges
+ * specified by "fpga-bridges" property.  Note that the
+ * fpga_bridges_enable/disable/put functions are all fine with an empty list
+ * if that happens.
+ *
+ * Caller should call fpga_bridges_put(&region->bridge_list) when
+ * done with the bridges.
+ *
+ * Return 0 for success (even if there are no bridges specified)
+ * or -EBUSY if any of the bridges are in use.
+ */
+static int fpga_region_get_bridges(struct fpga_region *region,
+				   struct device_node *overlay)
+{
+	struct device_d *dev = &region->dev;
+	struct device_node *region_np = dev->device_node;
+	struct device_node *br, *np, *parent_br = NULL;
+	int i, ret;
+
+	/* If parent is a bridge, add to list */
+	ret = fpga_bridge_get_to_list(region_np->parent, region->info,
+				      &region->bridge_list);
+	if (ret == -EBUSY)
+		return ret;
+
+	if (!ret)
+		parent_br = region_np->parent;
+
+	/* If overlay has a list of bridges, use it. */
+	if (of_parse_phandle(overlay, "fpga-bridges", 0))
+		np = overlay;
+	else
+		np = region_np;
+
+	for (i = 0; ; i++) {
+		br = of_parse_phandle(np, "fpga-bridges", i);
+		if (!br)
+			break;
+
+		/* If parent bridge is in list, skip it. */
+		if (br == parent_br)
+			continue;
+
+		/* If node is a bridge, get it and add to list */
+		ret = fpga_bridge_get_to_list(br, region->info,
+					      &region->bridge_list);
+
+		/* If any of the bridges are in use, give up */
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+/**
+ * fpga_region_program_fpga - program FPGA
+ * @region: FPGA region
+ * @firmware_name: name of FPGA image firmware file
+ * @overlay: device node of the overlay
+ * Program an FPGA using information in the device tree.
+ * Function assumes that there is a firmware-name property.
+ * Return 0 for success or negative error code.
+ */
+static int fpga_region_program_fpga(struct fpga_region *region)
+{
+	struct device_node *np = region->dev.device_node;
+	int ret;
+
+	ret = fpga_region_get_bridges(region, np);
+	if (ret) {
+		pr_err("failed to get fpga region bridges (%d)\n", ret);
+		goto err;
+	}
+
+	ret = fpga_bridges_disable(&region->bridge_list);
+	if (ret) {
+		pr_err("failed to disable region bridges (%d)\n", ret);
+		goto err;
+	}
+
+	ret = of_firmwaremgr_load_file(np, region->firmware_name);
+	if (ret) {
+		pr_err("failed to load fpga image %s (%d)\n",
+                       region->firmware_name, ret);
+		goto err;
+	}
+
+	ret = fpga_bridges_enable(&region->bridge_list);
+	if (ret) {
+		pr_err("failed to enable region bridges (%d)\n", ret);
+		goto err;
+	}
+
+	return 0;
+
+err:
+	return ret;
+}
+
+static int fpga_region_detect(struct device_d *dev)
+{
+	struct fpga_region *region = dev->priv;
+	struct device_node *np = dev->device_node;
+	int ret;
+
+	ret = fpga_region_program_fpga(region);
+
+	of_platform_populate(np, fpga_region_of_match, dev);
+
+	return ret;
+}
+
+static int fpga_region_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	struct fpga_region *region;
+	int ret = 0;
+
+	region = xzalloc(sizeof(*region));
+	if (!region)
+		return -ENOMEM;
+
+	INIT_LIST_HEAD(&region->bridge_list);
+
+	region->dev.parent = dev;
+	region->dev.device_node = np;
+	region->dev.id = DEVICE_ID_DYNAMIC;
+	region->dev.detect = fpga_region_detect;
+	region->dev.priv = region;
+
+	strcpy(region->dev.name, "region");
+
+	ret = register_device(&region->dev);
+	if (ret)
+		goto out;
+
+	of_property_read_string(np, "firmware-name", &region->firmware_name);
+
+	dev_info(dev, "FPGA Region probed\n");
+
+	return 0;
+
+out:
+	kfree(region);
+
+	return ret;
+}
+
+static struct driver_d fpga_region_driver = {
+	.probe = fpga_region_probe,
+	.of_compatible = DRV_OF_COMPAT(fpga_region_of_match),
+};
+
+static int fpga_region_init(void)
+{
+	return platform_driver_register(&fpga_region_driver);
+}
+postcore_initcall(fpga_region_init);
diff --git a/include/firmware.h b/include/firmware.h
index f6f78c840cac..6e7257c2f826 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -39,4 +39,6 @@ void firmwaremgr_list_handlers(void);
 
 int firmwaremgr_load_file(struct firmware_mgr *, const char *path);
 
+int of_firmwaremgr_load_file(struct device_node *np, const char *firmware);
+
 #endif /* FIRMWARE_H */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
