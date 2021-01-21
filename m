Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2YAE-0001lf-PP
 for barebox@lists.infradead.org; Thu, 21 Jan 2021 11:30:19 +0000
From: Steffen Trumtrar <str@pengutronix.de>
Date: Thu, 21 Jan 2021 12:29:55 +0100
Message-Id: <20210121112958.25937-10-str@pengutronix.de>
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
Subject: [PATCH 10/13] of: of_firmware: add support for fpga bridges
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Add support for potentially defined FPGA-bridges in the overlay.

While at it also add support for loading the firmware directly via a
path instead of 'needing' an overlay for that.
The direct loading will be done with the existent firmwareload command.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/of/Makefile      |  3 +-
 drivers/of/of_firmware.c | 88 ++++++++++++++++++++++++++++++++++++----
 include/of.h             | 21 +++++++---
 3 files changed, 96 insertions(+), 16 deletions(-)

diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index b6847752d2..6199c9791f 100644
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
index 096f84572e..ef0ccd0221 100644
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
@@ -25,15 +65,49 @@ static struct firmware_mgr *of_node_get_mgr(struct device_node *np)
 	return NULL;
 }
 
-static int load_firmware(struct device_node *target,
-			 struct device_node *fragment, void *data)
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
+	INIT_LIST_HEAD(&bridge_list);
+
+	of_get_bridges(target, &bridge_list);
+
+	fpga_bridges_disable(&bridge_list);
+
+	err = firmwaremgr_load_file(mgr, path);
+
+	fpga_bridges_enable(&bridge_list);
+
+	return err;
+}
+
+int of_firmware_load_file(const char *path)
+{
+	int err;
+	struct device_node *target;
+
+	target = of_find_compatible_node(NULL, NULL, "fpga-region");
+
+	err = of_load_firmware(target, path);
+
+	return err;
+}
+
+static int load_overlay(struct device_node *target,
+			struct device_node *fragment, void *data)
 {
 	struct overlay_info *info = data;
 	const char *firmware_name;
 	const char *firmware_path = info->firmware_path;
 	char *firmware;
 	int err;
-	struct firmware_mgr *mgr;
 
 	err = of_property_read_string(fragment,
 				      "firmware-name", &firmware_name);
@@ -46,15 +120,11 @@ static int load_firmware(struct device_node *target,
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
 
@@ -82,7 +152,7 @@ int of_firmware_load_overlay(struct device_node *overlay, const char *path)
 	ovl = resolved ? resolved : overlay;
 
 	err = of_process_overlay(root, ovl,
-				 load_firmware, &info);
+				 load_overlay, &info);
 
 	if (resolved)
 		of_delete_node(resolved);
diff --git a/include/of.h b/include/of.h
index 645f429bde..e3deec9b4c 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1020,6 +1020,21 @@ static inline struct device_node *of_find_root_node(struct device_node *node)
 	return node;
 }
 
+#ifdef CONFIG_FIRMWARE
+int of_firmware_load_file(const char *path);
+int of_firmware_load_overlay(struct device_node *overlay, const char *path);
+#else
+static inline int of_firmware_load_file(const char *path)
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
@@ -1032,7 +1047,6 @@ int of_process_overlay(struct device_node *root,
 				   struct device_node *overlay, void *data),
 		    void *data);
 
-int of_firmware_load_overlay(struct device_node *overlay, const char *path);
 #else
 static inline struct device_node *of_resolve_phandles(struct device_node *root,
 					const struct device_node *overlay)
@@ -1059,11 +1073,6 @@ static inline int of_process_overlay(struct device_node *root,
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
