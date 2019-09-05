Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pMg-00074h-K5
 for barebox@lists.infradead.org; Thu, 05 Sep 2019 10:51:49 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu,  5 Sep 2019 12:51:40 +0200
Message-Id: <20190905105142.13681-6-m.tretter@pengutronix.de>
In-Reply-To: <20190905105142.13681-1-m.tretter@pengutronix.de>
References: <20190905105142.13681-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 5/7] firmware: add support to load firmware from dt overlay
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

fpga-region device tree nodes have the firmware-name property that
contains the file name of firmware in the firmware search path (but not
the path) that shall be loaded before the overlay is applied.

Add the firmware_load_overlay() function that accepts an overlay and a
firmware search path, finds the responsible firmware_mgr and loads the
firmware.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 common/firmware.c  | 77 ++++++++++++++++++++++++++++++++++++++++++++++
 include/firmware.h |  3 ++
 2 files changed, 80 insertions(+)

diff --git a/common/firmware.c b/common/firmware.c
index 9d55d73e7a..d15026cf07 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -62,6 +62,39 @@ struct firmware_mgr *firmwaremgr_find(const char *id)
 	return NULL;
 }
 
+/*
+ * firmwaremgr_find_by_node - find a firmware device handler
+ *
+ * Find a firmware device handler using the device node of the firmware
+ * handler. This allows to retrieve the firmware handler with a phandle from
+ * the device tree.
+ */
+struct firmware_mgr *firmwaremgr_find_by_node(const struct device_node *np)
+{
+	struct firmware_mgr *mgr;
+
+	list_for_each_entry(mgr, &firmwaremgr_list, list)
+		if (mgr->handler->dev->parent->device_node == np)
+			return mgr;
+
+	return NULL;
+}
+
+static struct firmware_mgr *of_node_get_mgr(const struct device_node *np)
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
 /*
  * firmwaremgr_list_handlers - list registered firmware device handlers
  *                             in pretty format
@@ -153,6 +186,40 @@ static int firmware_close(struct cdev *cdev)
 	return 0;
 }
 
+struct overlay_info {
+	const char *firmware_path;
+};
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
+	if (err)
+		return 0;
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
 static struct cdev_operations firmware_ops = {
 	.open = firmware_open,
 	.write = firmware_write,
@@ -210,3 +277,13 @@ int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *firmware)
 
 	return ret;
 }
+
+int firmware_load_overlay(struct device_node *overlay, const char *path)
+{
+	struct overlay_info info = {
+		.firmware_path = path,
+	};
+
+	return of_process_overlay(of_get_root_node(), overlay,
+				  load_firmware, &info);
+}
diff --git a/include/firmware.h b/include/firmware.h
index 284e0f9705..a3c2f9fe4a 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -34,11 +34,14 @@ struct firmware_mgr;
 int firmwaremgr_register(struct firmware_handler *);
 
 struct firmware_mgr *firmwaremgr_find(const char *);
+struct firmware_mgr *firmwaremgr_find_by_node(const struct device_node *np);
 
 void firmwaremgr_list_handlers(void);
 
 int firmwaremgr_load_file(struct firmware_mgr *, const char *path);
 
+int firmware_load_overlay(struct device_node *overlay, const char *path);
+
 #define get_builtin_firmware(name, start, size) \
 	{							\
 		extern char _fw_##name##_start[];		\
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
