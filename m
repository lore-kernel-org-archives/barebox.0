Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui2A2-0006d2-Nk
 for barebox@lists.infradead.org; Thu, 30 May 2013 12:40:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 May 2013 14:40:29 +0200
Message-Id: <1369917631-31436-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369917631-31436-1-git-send-email-s.hauer@pengutronix.de>
References: <1369917631-31436-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] devices: add detect mechanism
To: barebox@lists.infradead.org

We often encounter the situation where slow devices should not be
probed during startup since probing is slow and maybe unnecessary
for unused devices. With MMC we have the 'probe' device parameter,
for ata we have the same, for USB we have the 'usb' command. Overall
this is not very consistent.
With MMC there is the additional problem that the probe parameter
is attached to the logical device when we often have the information
which physical device we want to probe.
This patch adds a 'detect' callback for devices and adds a command
to detect devices and to list the devices which are actually detecable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig      |  9 +++++++
 commands/Makefile     |  1 +
 commands/detect.c     | 70 +++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/base/driver.c |  7 ++++++
 include/driver.h      |  8 ++++++
 5 files changed, 95 insertions(+)
 create mode 100644 commands/detect.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 6a759ce..a62ed98 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -728,6 +728,15 @@ config CMD_CLK
 	  Say yes here to get clk_set_rate, clk_set_parent and clk_dump
 	  commands to manipulate clocks on your system.
 
+config CMD_DETECT
+	tristate
+	prompt "detect"
+	help
+	  say yes here to get the 'detect' command. Some devices take longer
+	  time to probe, like slow disks or SD/MMC cards. These can defer the
+	  actual probe of the client devices until they are needed. Use the
+	  'detect' command on the physical device to trigger probing.
+
 menuconfig CMD_WD
 	bool
 	depends on WATCHDOG
diff --git a/commands/Makefile b/commands/Makefile
index 953ecc2..419d93b 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -90,3 +90,4 @@ obj-$(CONFIG_CMD_TFTP)		+= tftp.o
 obj-$(CONFIG_CMD_FILETYPE)	+= filetype.o
 obj-$(CONFIG_CMD_BAREBOX_UPDATE)+= barebox-update.o
 obj-$(CONFIG_CMD_MIITOOL)	+= miitool.o
+obj-$(CONFIG_CMD_DETECT)	+= detect.o
diff --git a/commands/detect.c b/commands/detect.c
new file mode 100644
index 0000000..ec7b844
--- /dev/null
+++ b/commands/detect.c
@@ -0,0 +1,70 @@
+/*
+ * detect.c - detect devices command
+ *
+ * Copyright (c) 2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <command.h>
+#include <complete.h>
+#include <driver.h>
+#include <getopt.h>
+
+static int do_detect(int argc, char *argv[])
+{
+	struct device_d *dev;
+	int opt, i;
+	int do_list = 0;
+
+	while ((opt = getopt(argc, argv, "l")) > 0) {
+		switch (opt) {
+		case 'l':
+			do_list = 1;
+			break;
+		}
+	}
+
+	if (do_list) {
+		for_each_device(dev) {
+			if (dev->detect)
+				printf("%s\n", dev_name(dev));
+		}
+		return 0;
+	}
+
+	if (argc == optind)
+		return COMMAND_ERROR_USAGE;
+
+	for (i = optind; i < argc; i++) {
+		dev = get_device_by_name(argv[i]);
+		if (!dev)
+			return -ENODEV;
+		device_detect(dev);
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(detect)
+BAREBOX_CMD_HELP_USAGE("detect [OPTIONS] [device]\n")
+BAREBOX_CMD_HELP_OPT  ("-l",  "list detectable devices\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(detect)
+	.cmd		= do_detect,
+	.usage		= "detect devices",
+	BAREBOX_CMD_COMPLETE(device_complete)
+	BAREBOX_CMD_HELP(cmd_detect_help)
+BAREBOX_CMD_END
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index c885630..810d001 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -93,6 +93,13 @@ int device_probe(struct device_d *dev)
 	return 0;
 }
 
+int device_detect(struct device_d *dev)
+{
+	if (!dev->detect)
+		return -ENOSYS;
+	return dev->detect(dev);
+}
+
 static int match(struct driver_d *drv, struct device_d *dev)
 {
 	int ret;
diff --git a/include/driver.h b/include/driver.h
index 3e6c36f..8b3af4d 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -109,6 +109,11 @@ struct device_d {
 	const struct of_device_id *of_id_entry;
 
 	void    (*info) (struct device_d *);
+	/*
+	 * For devices which take longer to probe this is called
+	 * when the driver should actually detect client devices
+	 */
+	int     (*detect) (struct device_d *);
 };
 
 /** @brief Describes a driver present in the system */
@@ -152,6 +157,9 @@ int register_device(struct device_d *);
  */
 int device_probe(struct device_d *dev);
 
+/* detect devices attached to this device (cards, disks,...) */
+int device_detect(struct device_d *dev);
+
 /* Unregister a device. This function can fail, e.g. when the device
  * has children.
  */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
