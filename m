Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22f.google.com ([2a00:1450:400c:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqIi3-0002B8-PN
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:02:44 +0000
Received: by mail-wi0-f175.google.com with SMTP id f8so705826wiw.8
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:02:20 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 30 May 2014 11:07:27 +0200
Message-Id: <1401440856-6145-2-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 01/10] drvlist: factor the driver list out of 'devinfo'
To: barebox@lists.infradead.org

The command 'devinfo' was first spitting out all devices, and then
also all drivers. This patch separates them into two commands,
'devinfo' as before, and also the new command 'drvinfo'

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 commands/Kconfig   |    9 ++++++++-
 commands/Makefile  |    1 +
 commands/devinfo.c |    9 ++-------
 commands/drvinfo.c |   47 +++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 58 insertions(+), 8 deletions(-)
 create mode 100644 commands/drvinfo.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 6043cb6..c3b4007 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -79,11 +79,18 @@ config CMD_DEVINFO
 	  devinfo [DEVICE]
 
 	  If called without arguments, devinfo shows a summary of the known
-	  devices and drivers.
+	  devices.
 
 	  If called with a device path being the argument, devinfo shows more
 	  default information about this device and its parameters.
 
+config CMD_DRVINFO
+	tristate
+	default y
+	prompt "drvinfo"
+	help
+	  List compiled-in device drivers and the devices they support.
+
 config CMD_HELP
 	tristate
 	default y
diff --git a/commands/Makefile b/commands/Makefile
index 030a906..a84d333 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -94,6 +94,7 @@ obj-$(CONFIG_CMD_MIITOOL)	+= miitool.o
 obj-$(CONFIG_CMD_DETECT)	+= detect.o
 obj-$(CONFIG_CMD_BOOT)		+= boot.o
 obj-$(CONFIG_CMD_DEVINFO)	+= devinfo.o
+obj-$(CONFIG_CMD_DRVINFO)	+= drvinfo.o
 obj-$(CONFIG_CMD_READF)		+= readf.o
 obj-$(CONFIG_CMD_MENUTREE)	+= menutree.o
 obj-$(CONFIG_CMD_2048)		+= 2048.o
diff --git a/commands/devinfo.c b/commands/devinfo.c
index 685431b..448792d 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -55,7 +55,6 @@ static int do_devinfo_subtree(struct device_d *dev, int depth)
 static int do_devinfo(int argc, char *argv[])
 {
 	struct device_d *dev;
-	struct driver_d *drv;
 	struct param_d *param;
 	int i;
 	struct resource *res;
@@ -67,10 +66,6 @@ static int do_devinfo(int argc, char *argv[])
 			if (!dev->parent)
 				do_devinfo_subtree(dev, 0);
 		}
-
-		printf("\ndrivers:\n");
-		for_each_driver(drv)
-			printf("%s\n",drv->name);
 	} else {
 		dev = get_device_by_name(argv[1]);
 
@@ -149,7 +144,7 @@ Example from an MPC5200 based system:
 
 BAREBOX_CMD_HELP_START(devinfo)
 BAREBOX_CMD_HELP_TEXT("If called without arguments, devinfo shows a summary of the known")
-BAREBOX_CMD_HELP_TEXT("devices and drivers.")
+BAREBOX_CMD_HELP_TEXT("devices.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("If called with a device path being the argument, devinfo shows more")
 BAREBOX_CMD_HELP_TEXT("default information about this device and its parameters.")
@@ -158,7 +153,7 @@ BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(devinfo)
 	.cmd		= do_devinfo,
-	BAREBOX_CMD_DESC("show information about devices and drivers")
+	BAREBOX_CMD_DESC("show information about devices")
 	BAREBOX_CMD_OPTS("[DEVICE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_devinfo_help)
diff --git a/commands/drvinfo.c b/commands/drvinfo.c
new file mode 100644
index 0000000..161118a
--- /dev/null
+++ b/commands/drvinfo.c
@@ -0,0 +1,47 @@
+/*
+ * Copyright (C) 2013 Sascha Hauer, Pengutronix
+ * Copyright (C) 2014 Holger Schurig
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
+#include <common.h>
+#include <command.h>
+#include <driver.h>
+
+int do_drvinfo(int argc, char *argv[])
+{
+	struct driver_d *drv;
+	struct device_d *dev;
+
+	printf("Driver\tDevice(s)\n");
+	printf("--------------------\n");
+	for_each_driver(drv) {
+		printf("%s\n",drv->name);
+		for_each_device(dev) {
+			if (dev->driver == drv)
+				printf("\t%s\n", dev_name(dev));
+		}
+	}
+
+	if (IS_ENABLED(CONFIG_CMD_DEVINFO))
+		printf("\nUse 'devinfo DEVICE' for more information\n");
+
+	return 0;
+}
+
+
+BAREBOX_CMD_START(drvinfo)
+	.cmd		= do_drvinfo,
+	BAREBOX_CMD_DESC("list compiled-in device drivers")
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+BAREBOX_CMD_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
