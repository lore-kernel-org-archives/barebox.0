Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XPXOK-0007Ua-OC
 for barebox@lists.infradead.org; Thu, 04 Sep 2014 13:48:02 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu,  4 Sep 2014 15:47:14 +0200
Message-Id: <1409838437-3625-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1409838437-3625-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1409838437-3625-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v3 1/4] Add a Firmware programming framework
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>, Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Juergen Beisert <jbe@pengutronix.de>

This framework handles a list of registered Firmware programming handlers
to unify a firmware programming interface by hiding the details how
to program a specific Firmware in its handler. This is created with FPGAs
in mind but should be usable for other devices aswell.
A user has two possibilities to load a firmware. A device file is create
under /dev/ which can be used to copy a firmware to. Additionally a
firmwareload command is introduced which can list the registered firmware
handlers and also to upload a firmware.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes since v2:
	- actually call mgr->handler->close(mgr->handler) in the close hook

 commands/Kconfig        |   9 +++
 commands/Makefile       |   1 +
 commands/firmwareload.c |  66 +++++++++++++++
 common/Kconfig          |   3 +
 common/Makefile         |   1 +
 common/firmware.c       | 211 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/firmware.h      |  42 ++++++++++
 7 files changed, 333 insertions(+)
 create mode 100644 commands/firmwareload.c
 create mode 100644 common/firmware.c
 create mode 100644 include/firmware.h

diff --git a/commands/Kconfig b/commands/Kconfig
index 61816f51159b..a6ca2722f5f6 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1883,6 +1883,15 @@ config CMD_BAREBOX_UPDATE
 		  -y		autom. use 'yes' when asking confirmations
 		  -f LEVEL	set force level
 
+config CMD_FIRMWARELOAD
+	bool
+	select FIRMWARE
+	prompt "firmwareload"
+	help
+	  Provides the "firmwareload" command which deals with devices which need
+	  firmware to work. It is also used to upload firmware to FPGA devices.
+
+
 config CMD_LINUX_EXEC
 	bool "linux exec"
 	depends on LINUX
diff --git a/commands/Makefile b/commands/Makefile
index d42aca5c0c99..2897a796bd44 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -100,3 +100,4 @@ obj-$(CONFIG_CMD_MENUTREE)	+= menutree.o
 obj-$(CONFIG_CMD_2048)		+= 2048.o
 obj-$(CONFIG_CMD_REGULATOR)	+= regulator.o
 obj-$(CONFIG_CMD_LSPCI)		+= lspci.o
+obj-$(CONFIG_CMD_FIRMWARELOAD)	+= firmwareload.o
diff --git a/commands/firmwareload.c b/commands/firmwareload.c
new file mode 100644
index 000000000000..a2596951a795
--- /dev/null
+++ b/commands/firmwareload.c
@@ -0,0 +1,66 @@
+/*
+ * Copyright (c) 2013 Juergen Beisert <kernel@pengutronix.de>, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <command.h>
+#include <getopt.h>
+#include <firmware.h>
+
+static int do_firmwareload(int argc, char *argv[])
+{
+	int ret, opt;
+	const char *name = NULL, *firmware;
+	struct firmware_mgr *mgr;
+
+	while ((opt = getopt(argc, argv, "t:l")) > 0) {
+		switch (opt) {
+		case 't':
+			name = optarg;
+			break;
+		case 'l':
+			firmwaremgr_list_handlers();
+			return 0;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (!(argc - optind))
+		return COMMAND_ERROR_USAGE;
+
+	firmware = argv[optind];
+
+	mgr = firmwaremgr_find(name);
+
+	if (!mgr) {
+		printf("No such programming handler found: %s\n",
+				name ? name : "default");
+		return 1;
+	}
+
+	ret = firmwaremgr_load_file(mgr, firmware);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(firmwareload)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-t <target>", "define the firmware handler by name\n")
+BAREBOX_CMD_HELP_OPT("-l\t", "list devices capable of firmware loading\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(firmwareload)
+	.cmd = do_firmwareload,
+	BAREBOX_CMD_DESC("Program a firmware file into a device")
+	BAREBOX_CMD_HELP(cmd_firmwareload_help)
+BAREBOX_CMD_END
diff --git a/common/Kconfig b/common/Kconfig
index bba7f159c1da..b90237fb81fd 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -301,6 +301,9 @@ config CBSIZE
 	prompt "Buffer size for input from the Console"
 	default 1024
 
+config FIRMWARE
+	bool
+
 choice
 	prompt "Select your shell"
 
diff --git a/common/Makefile b/common/Makefile
index 204241c919cd..ed5f4fba23e0 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -44,6 +44,7 @@ obj-$(CONFIG_SHELL_HUSH)	+= hush.o
 obj-$(CONFIG_SHELL_SIMPLE)	+= parser.o
 obj-$(CONFIG_UIMAGE)		+= image.o uimage.o
 obj-$(CONFIG_MENUTREE) += menutree.o
+obj-$(CONFIG_FIRMWARE)		+= firmware.o
 
 quiet_cmd_pwd_h = PWDH    $@
 ifdef CONFIG_PASSWORD
diff --git a/common/firmware.c b/common/firmware.c
new file mode 100644
index 000000000000..dbae0f5697b1
--- /dev/null
+++ b/common/firmware.c
@@ -0,0 +1,211 @@
+/*
+ * Copyright (c) 2013 Juergen Beisert <kernel@pengutronix.de>, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <firmware.h>
+#include <common.h>
+#include <malloc.h>
+#include <xfuncs.h>
+#include <fcntl.h>
+#include <libbb.h>
+#include <fs.h>
+#include <linux/list.h>
+#include <linux/stat.h>
+#include <linux/err.h>
+
+#define BUFSIZ 4096
+
+struct firmware_mgr {
+	struct list_head list;
+	struct firmware_handler *handler; /* the program handler */
+	struct cdev cdev;
+	u8 buf[BUFSIZ];
+	int ofs;
+};
+
+static LIST_HEAD(firmwaremgr_list);
+
+/*
+ * firmwaremgr_find - find a firmware device handler
+ *
+ * Find a firmware device handler based on the unique id. If @id is
+ * NULL this returns the single firmware device handler if only one
+ * is registered. If multiple handlers are registered @id is mandatory
+ *
+ */
+struct firmware_mgr *firmwaremgr_find(const char *id)
+{
+	struct firmware_mgr *mgr;
+
+	if (!id) {
+		if (list_is_singular(&firmwaremgr_list))
+			return list_first_entry(&firmwaremgr_list,
+					struct firmware_mgr, list);
+		else
+			return NULL;
+	}
+
+	list_for_each_entry(mgr, &firmwaremgr_list, list)
+		if (!strcmp(mgr->handler->id, id))
+			return mgr;
+
+	return NULL;
+}
+
+/*
+ * firmwaremgr_list_handlers - list registered firmware device handlers
+ *                             in pretty format
+ */
+void firmwaremgr_list_handlers(void)
+{
+	struct firmware_mgr *mgr;
+
+	printf("firmware programming handlers:\n\n");
+
+	if (list_empty(&firmwaremgr_list)) {
+		printf("(none)\n");
+		return;
+	}
+
+	printf("%-11s%-11s\n", "name:", "model:");
+
+	list_for_each_entry(mgr, &firmwaremgr_list, list) {
+		printf("%-11s", mgr->handler->id);
+		if (mgr->handler->model)
+			printf("%-11s", mgr->handler->model);
+		printf("\n");
+	}
+}
+
+static int firmware_open(struct cdev *cdev, unsigned long flags)
+{
+	struct firmware_mgr *mgr = cdev->priv;
+	int ret;
+
+	mgr->ofs = 0;
+
+	ret = mgr->handler->open(mgr->handler);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static ssize_t firmware_write(struct cdev *cdev, const void *buf, size_t insize,
+		loff_t offset, ulong flags)
+{
+	struct firmware_mgr *mgr = cdev->priv;
+	int ret;
+	size_t count = insize;
+
+	/*
+	 * We guarantee the write handler of the firmware device that only the
+	 * last write is a short write. All others are 4k in size.
+	 */
+
+	while (count) {
+		size_t space = BUFSIZ - mgr->ofs;
+		size_t now = min(count, space);
+
+		memcpy(mgr->buf + mgr->ofs, buf, now);
+
+		buf += now;
+		mgr->ofs += now;
+		count -= now;
+
+		if (mgr->ofs == BUFSIZ) {
+			ret = mgr->handler->write(mgr->handler, mgr->buf, BUFSIZ);
+			if (ret < 0)
+				return ret;
+
+			mgr->ofs = 0;
+		}
+	}
+
+	return insize;
+}
+
+static int firmware_close(struct cdev *cdev)
+{
+	struct firmware_mgr *mgr = cdev->priv;
+	int ret;
+
+	if (mgr->ofs) {
+		ret = mgr->handler->write(mgr->handler, mgr->buf, mgr->ofs);
+		if (ret)
+			return ret;
+	}
+
+	ret = mgr->handler->close(mgr->handler);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static struct file_operations firmware_ops = {
+	.open = firmware_open,
+	.write = firmware_write,
+	.close = firmware_close,
+};
+
+/*
+ * firmwaremgr_register - register a device which needs firmware
+ */
+int firmwaremgr_register(struct firmware_handler *fh)
+{
+	struct firmware_mgr *mgr;
+	int ret;
+	struct cdev *cdev;
+
+	if (firmwaremgr_find(fh->id))
+		return -EBUSY;
+
+	mgr = xzalloc(sizeof(struct firmware_mgr));
+	mgr->handler = fh;
+
+	cdev = &mgr->cdev;
+
+	cdev->name = xstrdup(fh->id);
+	cdev->size = FILE_SIZE_STREAM;
+	cdev->ops = &firmware_ops;
+	cdev->priv = mgr;
+	cdev->dev = fh->dev;
+
+	ret = devfs_create(cdev);
+	if (ret)
+		goto out;
+
+	list_add_tail(&mgr->list, &firmwaremgr_list);
+
+	return 0;
+out:
+	free(cdev->name);
+	free(mgr);
+
+	return ret;
+}
+
+/*
+ * firmware_load_file - load a firmware to a device
+ */
+int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *firmware)
+{
+	int ret;
+	char *name = asprintf("/dev/%s", mgr->handler->id);
+
+	ret = copy_file(firmware, name, 0);
+
+	free(name);
+
+	return ret;
+}
diff --git a/include/firmware.h b/include/firmware.h
new file mode 100644
index 000000000000..f6f78c840cac
--- /dev/null
+++ b/include/firmware.h
@@ -0,0 +1,42 @@
+/*
+ * Copyright (c) 2013 Juergen Beisert <kernel@pengutronix.de>, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef FIRMWARE_H
+#define FIRMWARE_H
+
+#include <types.h>
+#include <driver.h>
+
+struct firmware_handler {
+	char *id; /* unique identifier for this firmware device */
+	char *model; /* description for this device */
+	struct device_d *dev;
+	/* called once to prepare the firmware's programming cycle */
+	int (*open)(struct firmware_handler*);
+	/* called multiple times to program the firmware with the given data */
+	int (*write)(struct firmware_handler*, const void*, size_t);
+	/* called once to finish programming cycle */
+	int (*close)(struct firmware_handler*);
+};
+
+struct firmware_mgr;
+
+int firmwaremgr_register(struct firmware_handler *);
+
+struct firmware_mgr *firmwaremgr_find(const char *);
+
+void firmwaremgr_list_handlers(void);
+
+int firmwaremgr_load_file(struct firmware_mgr *, const char *path);
+
+#endif /* FIRMWARE_H */
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
