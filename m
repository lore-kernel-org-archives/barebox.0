Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPRqQ-0000AA-0j
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 06:48:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 08:47:35 +0200
Message-Id: <1380264462-27614-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
References: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/11] move devinfo command to its own file
To: barebox@lists.infradead.org

Just like nearly all other commands are in individual files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Makefile     |   1 +
 commands/devinfo.c    | 158 ++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/base/driver.c | 142 ---------------------------------------------
 3 files changed, 159 insertions(+), 142 deletions(-)
 create mode 100644 commands/devinfo.c

diff --git a/commands/Makefile b/commands/Makefile
index 6acffc8..e027112 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -91,3 +91,4 @@ obj-$(CONFIG_CMD_FILETYPE)	+= filetype.o
 obj-$(CONFIG_CMD_BAREBOX_UPDATE)+= barebox-update.o
 obj-$(CONFIG_CMD_MIITOOL)	+= miitool.o
 obj-$(CONFIG_CMD_DETECT)	+= detect.o
+obj-$(CONFIG_CMD_DEVINFO)	+= devinfo.o
diff --git a/commands/devinfo.c b/commands/devinfo.c
new file mode 100644
index 0000000..806e45c
--- /dev/null
+++ b/commands/devinfo.c
@@ -0,0 +1,158 @@
+/*
+ * Copyright (C) 2013 Sascha Hauer, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <command.h>
+#include <common.h>
+#include <complete.h>
+#include <driver.h>
+
+static int do_devinfo_subtree(struct device_d *dev, int depth)
+{
+	struct device_d *child;
+	struct cdev *cdev;
+	int i;
+
+	for (i = 0; i < depth; i++)
+		printf("     ");
+
+	printf("`---- %s", dev_name(dev));
+	if (!list_empty(&dev->cdevs)) {
+		printf("\n");
+		list_for_each_entry(cdev, &dev->cdevs, devices_list) {
+			for (i = 0; i < depth + 1; i++)
+				printf("     ");
+			printf("`---- 0x%08llx-0x%08llx: /dev/%s\n",
+					cdev->offset,
+					cdev->offset + cdev->size - 1,
+					cdev->name);
+		}
+	} else {
+		printf("\n");
+	}
+
+	if (!list_empty(&dev->children)) {
+		device_for_each_child(dev, child) {
+			do_devinfo_subtree(child, depth + 1);
+		}
+	}
+
+	return 0;
+}
+
+static int do_devinfo(int argc, char *argv[])
+{
+	struct device_d *dev;
+	struct driver_d *drv;
+	struct param_d *param;
+	int i;
+	struct resource *res;
+
+	if (argc == 1) {
+		printf("devices:\n");
+
+		for_each_device(dev) {
+			if (!dev->parent)
+				do_devinfo_subtree(dev, 0);
+		}
+
+		printf("\ndrivers:\n");
+		for_each_driver(drv)
+			printf("%s\n",drv->name);
+	} else {
+		dev = get_device_by_name(argv[1]);
+
+		if (!dev) {
+			printf("no such device: %s\n",argv[1]);
+			return -1;
+		}
+
+		printf("resources:\n");
+		for (i = 0; i < dev->num_resources; i++) {
+			res = &dev->resource[i];
+			printf("num   : %d\n", i);
+			if (res->name)
+				printf("name  : %s\n", res->name);
+			printf("start : " PRINTF_CONVERSION_RESOURCE "\nsize  : "
+					PRINTF_CONVERSION_RESOURCE "\n",
+			       res->start, resource_size(res));
+		}
+
+		printf("driver: %s\n", dev->driver ?
+				dev->driver->name : "none");
+
+		printf("bus: %s\n\n", dev->bus ?
+				dev->bus->name : "none");
+
+		if (dev->info)
+			dev->info(dev);
+
+		printf("%s\n", list_empty(&dev->parameters) ?
+				"no parameters available" : "Parameters:");
+
+		list_for_each_entry(param, &dev->parameters, list) {
+			printf("%16s = %s", param->name, dev_get_param(dev, param->name));
+			if (param->info)
+				param->info(param);
+			printf("\n");
+		}
+#ifdef CONFIG_OFDEVICE
+		if (dev->device_node) {
+			printf("\ndevice node: %s\n", dev->device_node->full_name);
+			of_print_nodes(dev->device_node, 0);
+		}
+#endif
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(devinfo)
+BAREBOX_CMD_HELP_USAGE("devinfo [DEVICE]\n")
+BAREBOX_CMD_HELP_SHORT("Output device information.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page devinfo_command
+
+If called without arguments, devinfo shows a summary of the known
+devices and drivers.
+
+If called with a device path being the argument, devinfo shows more
+default information about this device and its parameters.
+
+Example from an MPC5200 based system:
+
+@verbatim
+  barebox:/ devinfo /dev/eth0
+  base  : 0x1002b000
+  size  : 0x00000000
+  driver: fec_mpc5xxx
+
+  no info available for eth0
+  Parameters:
+      ipaddr = 192.168.23.197
+     ethaddr = 80:81:82:83:84:86
+     gateway = 192.168.23.1
+     netmask = 255.255.255.0
+    serverip = 192.168.23.2
+@endverbatim
+ */
+
+BAREBOX_CMD_START(devinfo)
+	.cmd		= do_devinfo,
+	.usage		= "Show information about devices and drivers.",
+	BAREBOX_CMD_HELP(cmd_devinfo_help)
+	BAREBOX_CMD_COMPLETE(device_complete)
+BAREBOX_CMD_END
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 16b7f06..8b70e9f 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -413,145 +413,3 @@ int dev_get_drvdata(struct device_d *dev, unsigned long *data)
 
 	return -ENODEV;
 }
-
-#ifdef CONFIG_CMD_DEVINFO
-static int do_devinfo_subtree(struct device_d *dev, int depth)
-{
-	struct device_d *child;
-	struct cdev *cdev;
-	int i;
-
-	for (i = 0; i < depth; i++)
-		printf("     ");
-
-	printf("`---- %s", dev_name(dev));
-	if (!list_empty(&dev->cdevs)) {
-		printf("\n");
-		list_for_each_entry(cdev, &dev->cdevs, devices_list) {
-			for (i = 0; i < depth + 1; i++)
-				printf("     ");
-			printf("`---- 0x%08llx-0x%08llx: /dev/%s\n",
-					cdev->offset,
-					cdev->offset + cdev->size - 1,
-					cdev->name);
-		}
-	} else {
-		printf("\n");
-	}
-
-	if (!list_empty(&dev->children)) {
-		device_for_each_child(dev, child) {
-			do_devinfo_subtree(child, depth + 1);
-		}
-	}
-
-	return 0;
-}
-
-static int do_devinfo(int argc, char *argv[])
-{
-	struct device_d *dev;
-	struct driver_d *drv;
-	struct param_d *param;
-	int i;
-	struct resource *res;
-
-	if (argc == 1) {
-		printf("devices:\n");
-
-		for_each_device(dev) {
-			if (!dev->parent)
-				do_devinfo_subtree(dev, 0);
-		}
-
-		printf("\ndrivers:\n");
-		for_each_driver(drv)
-			printf("%s\n",drv->name);
-	} else {
-		dev = get_device_by_name(argv[1]);
-
-		if (!dev) {
-			printf("no such device: %s\n",argv[1]);
-			return -1;
-		}
-
-		printf("resources:\n");
-		for (i = 0; i < dev->num_resources; i++) {
-			res = &dev->resource[i];
-			printf("num   : %d\n", i);
-			if (res->name)
-				printf("name  : %s\n", res->name);
-			printf("start : " PRINTF_CONVERSION_RESOURCE "\nsize  : "
-					PRINTF_CONVERSION_RESOURCE "\n",
-			       res->start, resource_size(res));
-		}
-
-		printf("driver: %s\n", dev->driver ?
-				dev->driver->name : "none");
-
-		printf("bus: %s\n\n", dev->bus ?
-				dev->bus->name : "none");
-
-		if (dev->info)
-			dev->info(dev);
-
-		printf("%s\n", list_empty(&dev->parameters) ?
-				"no parameters available" : "Parameters:");
-
-		list_for_each_entry(param, &dev->parameters, list) {
-			printf("%16s = %s", param->name, dev_get_param(dev, param->name));
-			if (param->info)
-				param->info(param);
-			printf("\n");
-		}
-#ifdef CONFIG_OFDEVICE
-		if (dev->device_node) {
-			printf("\ndevice node: %s\n", dev->device_node->full_name);
-			of_print_nodes(dev->device_node, 0);
-		}
-#endif
-	}
-
-	return 0;
-}
-
-BAREBOX_CMD_HELP_START(devinfo)
-BAREBOX_CMD_HELP_USAGE("devinfo [DEVICE]\n")
-BAREBOX_CMD_HELP_SHORT("Output device information.\n")
-BAREBOX_CMD_HELP_END
-
-/**
- * @page devinfo_command
-
-If called without arguments, devinfo shows a summary of the known
-devices and drivers.
-
-If called with a device path being the argument, devinfo shows more
-default information about this device and its parameters.
-
-Example from an MPC5200 based system:
-
-@verbatim
-  barebox:/ devinfo /dev/eth0
-  base  : 0x1002b000
-  size  : 0x00000000
-  driver: fec_mpc5xxx
-
-  no info available for eth0
-  Parameters:
-      ipaddr = 192.168.23.197
-     ethaddr = 80:81:82:83:84:86
-     gateway = 192.168.23.1
-     netmask = 255.255.255.0
-    serverip = 192.168.23.2
-@endverbatim
- */
-
-BAREBOX_CMD_START(devinfo)
-	.cmd		= do_devinfo,
-	.usage		= "Show information about devices and drivers.",
-	BAREBOX_CMD_HELP(cmd_devinfo_help)
-	BAREBOX_CMD_COMPLETE(device_complete)
-BAREBOX_CMD_END
-#endif
-
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
