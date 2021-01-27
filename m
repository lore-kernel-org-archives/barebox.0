Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1l4lAN-0075Bv-4g
 for barebox@lists.infradead.org; Wed, 27 Jan 2021 13:47:55 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1l4l7X-0006Rc-4z
 for barebox@lists.infradead.org; Wed, 27 Jan 2021 14:44:31 +0100
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1l4l7W-0000RJ-Fc
 for barebox@lists.infradead.org; Wed, 27 Jan 2021 14:44:30 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 27 Jan 2021 14:44:20 +0100
Message-Id: <20210127134423.31587-9-s.trumtrar@pengutronix.de>
In-Reply-To: <20210127134423.31587-1-s.trumtrar@pengutronix.de>
References: <20210127134423.31587-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 09/12] of: of_firmware: add support for fpga bridges
To: barebox@lists.infradead.org

Add support for potentially defined FPGA-bridges in the overlay.

While at it also add support for loading the firmware directly via a
path instead of 'needing' an overlay for that.
The direct loading will be done with the existent firmwareload command.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/of/Makefile      |   3 +-
 drivers/of/of_firmware.c | 130 +++++++++++++++++++++++++++++++++++++--
 include/of.h             |  23 +++++--
 3 files changed, 143 insertions(+), 13 deletions(-)

diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index b6847752d247..6199c9791f52 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -6,4 +6,5 @@ obj-y += partition.o
 obj-y += of_net.o
 obj-$(CONFIG_MTD) += of_mtd.o
 obj-$(CONFIG_OF_BAREBOX_DRIVERS) += barebox.o
-obj-$(CONFIG_OF_OVERLAY) += overlay.o resolver.o of_firmware.o
+obj-$(CONFIG_OF_OVERLAY) += overlay.o resolver.o
+obj-$(CONFIG_FIRMWARE) += of_firmware.o
diff --git a/drivers/of/of_firmware.c b/drivers/of/of_firmware.c
index 096f84572e63..ff5ac60e9fd5 100644
--- a/drivers/of/of_firmware.c
+++ b/drivers/of/of_firmware.c
@@ -4,12 +4,52 @@
  */
 #include <common.h>
 #include <firmware.h>
+#include <fpga-bridge.h>
 #include <of.h>
 
 struct overlay_info {
 	const char *firmware_path;
 };
 
+#ifdef CONFIG_FPGA_BRIDGE
+static int of_get_bridges(struct device_node *region, struct list_head *bridges)
+{
+	struct device_node *br, *parent_br = NULL;
+	int i, ret;
+
+	/* If parent is a bridge, add to list */
+	ret = fpga_bridge_get_to_list(region->parent, bridges);
+	if (!ret) {
+		parent_br = region->parent;
+		pr_debug("Add %s to list of bridges\n", parent_br->name);
+	}
+
+	for (i = 0; ; i++) {
+		br = of_parse_phandle(region, "fpga-bridges", i);
+		if (!br)
+			break;
+
+		/* If parent bridge is in list, skip it. */
+		if (br == parent_br)
+			continue;
+
+		/* If node is a bridge, get it and add to list */
+		ret = fpga_bridge_get_to_list(br, bridges);
+		if (ret)
+			return ret;
+
+		pr_debug("Add %s to list of bridges\n", br->name);
+	}
+
+	return 0;
+}
+#else
+static int of_get_bridges(struct device_node *np, struct list_head *br)
+{
+	return 0;
+}
+#endif
+
 static struct firmware_mgr *of_node_get_mgr(struct device_node *np)
 {
 	struct device_node *mgr_node;
@@ -25,6 +65,33 @@ static struct firmware_mgr *of_node_get_mgr(struct device_node *np)
 	return NULL;
 }
 
+static int of_load_firmware(struct device_node *target, const char *path)
+{
+	struct list_head bridge_list;
+	struct firmware_mgr *mgr;
+	int err;
+
+	mgr = of_node_get_mgr(target);
+	if (!mgr)
+		return -EINVAL;
+
+	pr_debug("Found firmware manager @%s\n", target->name);
+
+	INIT_LIST_HEAD(&bridge_list);
+
+	of_get_bridges(target, &bridge_list);
+
+	fpga_bridges_disable(&bridge_list);
+
+	pr_debug("Loading %s to %s\n", path, target->name);
+
+	err = firmwaremgr_load_file(mgr, path);
+
+	fpga_bridges_enable(&bridge_list);
+
+	return err;
+}
+
 static int load_firmware(struct device_node *target,
 			 struct device_node *fragment, void *data)
 {
@@ -33,7 +100,6 @@ static int load_firmware(struct device_node *target,
 	const char *firmware_path = info->firmware_path;
 	char *firmware;
 	int err;
-	struct firmware_mgr *mgr;
 
 	err = of_property_read_string(fragment,
 				      "firmware-name", &firmware_name);
@@ -46,21 +112,73 @@ static int load_firmware(struct device_node *target,
 	if (!target)
 		return -EINVAL;
 
-	mgr = of_node_get_mgr(target);
-	if (!mgr)
-		return -EINVAL;
-
 	firmware = basprintf("%s/%s", firmware_path, firmware_name);
 	if (!firmware)
 		return -ENOMEM;
 
-	err = firmwaremgr_load_file(mgr, firmware);
+	err = of_load_firmware(target, firmware);
 
 	free(firmware);
 
 	return err;
 }
 
+int of_firmware_load_file(const char *path, const char *compatible,
+			  const char *search_path, const char *firmware)
+{
+	struct overlay_info info = {
+		.firmware_path = search_path,
+	};
+	struct device_node *target;
+	struct device_node *node;
+	struct device_node *root;
+
+	if (!compatible) {
+		compatible = basprintf("fpga-region");
+		if (!compatible)
+			return -ENOMEM;
+	}
+
+	/*
+	 * firmware-name not specified. Use load_firmware function to get it from
+	 * the devicetree. This allows loading firmware to multiple devices.
+	 */
+	if (!firmware && !path) {
+		int err;
+
+		pr_debug("No firmware specified. Searching devicetree for %s\n", compatible);
+		for_each_compatible_node(node, NULL, compatible) {
+			pr_debug("Load firmware from %s\n", node->name);
+			err = load_firmware(node, node, &info);
+			if (err == -ENOMEM)
+				return err;
+		}
+
+		return 0;
+	}
+
+	root = of_get_root_node();
+
+	if (path) {
+		target = of_find_node_by_path_or_alias(root, path);
+		if (!target) {
+			pr_debug("Cannot find nodepath %s\n", path);
+			return -ENOENT;
+		}
+	} else {
+		target = of_find_compatible_node(NULL, NULL, compatible);
+		if (!target) {
+			pr_debug("No node matching %s found\n", compatible);
+			return -ENOSYS;
+		}
+	}
+	
+	if (!firmware)
+		return load_firmware(target, target, &info);
+
+	return of_load_firmware(target, firmware);
+}
+
 int of_firmware_load_overlay(struct device_node *overlay, const char *path)
 {
 	struct overlay_info info = {
diff --git a/include/of.h b/include/of.h
index 645f429bdeed..b18875478dc0 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1020,6 +1020,23 @@ static inline struct device_node *of_find_root_node(struct device_node *node)
 	return node;
 }
 
+#ifdef CONFIG_FIRMWARE
+int of_firmware_load_file(const char *path, const char *compatible,
+			  const char *search_path, const char *firmware);
+int of_firmware_load_overlay(struct device_node *overlay, const char *path);
+#else
+int of_firmware_load_file(const char *path, const char *compatible,
+			  const char *search_path, const char *firmware)
+{
+	return -ENOSYS;
+}
+
+static inline int of_firmware_load_overlay(const char *path)
+{
+	return -ENOSYS;
+}
+#endif
+
 #ifdef CONFIG_OF_OVERLAY
 struct device_node *of_resolve_phandles(struct device_node *root,
 					const struct device_node *overlay);
@@ -1032,7 +1049,6 @@ int of_process_overlay(struct device_node *root,
 				   struct device_node *overlay, void *data),
 		    void *data);
 
-int of_firmware_load_overlay(struct device_node *overlay, const char *path);
 #else
 static inline struct device_node *of_resolve_phandles(struct device_node *root,
 					const struct device_node *overlay)
@@ -1059,11 +1075,6 @@ static inline int of_process_overlay(struct device_node *root,
 {
 	return -ENOSYS;
 }
-
-static inline int of_firmware_load_overlay(struct device_node *overlay, const char *path)
-{
-	return -ENOSYS;
-}
 #endif
 
 #endif /* __OF_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
