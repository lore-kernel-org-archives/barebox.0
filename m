Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8lPc-0004od-LZ
 for barebox@lists.infradead.org; Fri, 13 Sep 2019 13:15:01 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 13 Sep 2019 15:14:43 +0200
Message-Id: <20190913131446.8202-6-m.tretter@pengutronix.de>
In-Reply-To: <20190913131446.8202-1-m.tretter@pengutronix.de>
References: <20190913131446.8202-1-m.tretter@pengutronix.de>
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
Subject: [PATCH v3 5/8] firmware: add support to load firmware from dt overlay
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

fpga-region device tree nodes have the firmware-name property that
contains the file name of firmware in the firmware search path (but not
the path) that shall be loaded before the overlay is applied.

Add the of_firmware_load_overlay() function that accepts an overlay and a
firmware search path, finds the responsible firmware_mgr and loads the
firmware.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

---
Changelog:

v2->v3:
- move functions from firmware to new module of_firmware
- rename function accordingly
- return success whenever there is no firmware in the overlay

v1->v2: none
---
 drivers/of/Makefile      |  2 +-
 drivers/of/of_firmware.c | 86 ++++++++++++++++++++++++++++++++++++++++
 include/of.h             |  7 ++++
 3 files changed, 94 insertions(+), 1 deletion(-)
 create mode 100644 drivers/of/of_firmware.c

diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index 9c6f8de814..b6847752d2 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -6,4 +6,4 @@ obj-y += partition.o
 obj-y += of_net.o
 obj-$(CONFIG_MTD) += of_mtd.o
 obj-$(CONFIG_OF_BAREBOX_DRIVERS) += barebox.o
-obj-$(CONFIG_OF_OVERLAY) += overlay.o resolver.o
+obj-$(CONFIG_OF_OVERLAY) += overlay.o resolver.o of_firmware.o
diff --git a/drivers/of/of_firmware.c b/drivers/of/of_firmware.c
new file mode 100644
index 0000000000..0135631fb8
--- /dev/null
+++ b/drivers/of/of_firmware.c
@@ -0,0 +1,86 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Pengutronix, Michael Tretter <m.tretter@pengutronix.de>
+ */
+#include <common.h>
+#include <firmware.h>
+#include <of.h>
+
+struct overlay_info {
+	const char *firmware_path;
+};
+
+static struct firmware_mgr *of_node_get_mgr(struct device_node *np)
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
+static int load_firmware(struct device_node *target,
+			 struct device_node *fragment, void *data)
+{
+	struct overlay_info *info = data;
+	const char *firmware_name;
+	const char *firmware_path = info->firmware_path;
+	char *firmware;
+	int err;
+	struct firmware_mgr *mgr;
+
+	err = of_property_read_string(fragment,
+				      "firmware-name", &firmware_name);
+	/* Nothing to do if property does not exist. */
+	if (err == -EINVAL)
+		return 0;
+	else if (err)
+		return -EINVAL;
+
+	mgr = of_node_get_mgr(target);
+	if (!mgr)
+		return -EINVAL;
+
+	firmware = basprintf("%s/%s", firmware_path, firmware_name);
+	if (!firmware)
+		return -ENOMEM;
+
+	err = firmwaremgr_load_file(mgr, firmware);
+
+	free(firmware);
+
+	return err;
+}
+
+int of_firmware_load_overlay(struct device_node *overlay, const char *path)
+{
+	struct overlay_info info = {
+		.firmware_path = path,
+	};
+	int err;
+	struct device_node *root;
+	struct device_node *resolved;
+	struct device_node *ovl;
+
+	root = of_get_root_node();
+	/*
+	 * If we cannot resolve the symbols in the overlay, ensure that the
+	 * overlay does depend on firmware to be loaded.
+	 */
+	resolved = of_resolve_phandles(root, overlay);
+	ovl = resolved ? resolved : overlay;
+
+	err = of_process_overlay(root, ovl,
+				 load_firmware, &info);
+
+	if (resolved)
+		of_delete_node(resolved);
+
+	return err;
+}
diff --git a/include/of.h b/include/of.h
index 06dc9f61a5..5466517a6d 100644
--- a/include/of.h
+++ b/include/of.h
@@ -882,6 +882,8 @@ int of_process_overlay(struct device_node *root,
 		    int (*process)(struct device_node *target,
 				   struct device_node *overlay, void *data),
 		    void *data);
+
+int of_firmware_load_overlay(struct device_node *overlay, const char *path);
 #else
 static inline struct device_node *of_resolve_phandles(struct device_node *root,
 					const struct device_node *overlay)
@@ -908,6 +910,11 @@ static inline int of_process_overlay(struct device_node *root,
 {
 	return -ENOSYS;
 }
+
+static inline int of_firmware_load_overlay(struct device_node *overlay, const char *path)
+{
+	return -ENOSYS;
+}
 #endif
 
 #endif /* __OF_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
