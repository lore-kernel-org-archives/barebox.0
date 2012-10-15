Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNkVj-0008BW-BR
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 13:15:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Oct 2012 15:15:04 +0200
Message-Id: <1350306908-25206-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350306908-25206-1-git-send-email-s.hauer@pengutronix.de>
References: <1350306908-25206-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/5] Add in-system barebox update infrastructure
To: barebox@lists.infradead.org

Currently in-system update means to write an arbitrary file to
an arbitrary device. There is no sanity check if the flashed image
is of the right type or will fit onto the device. Furthermore some
SoCs need a special preparation step for their images before
flashing them.

This adds a barebox in-system update infrastructure. Boards can
register update handlers which know how to make the board bootable.
The available handlers can be listed to be able to select one,
different force levels give the user the chance to know it better.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig          |    5 ++
 commands/Makefile         |    1 +
 commands/barebox-update.c |   86 ++++++++++++++++++++++++++
 common/Kconfig            |    3 +
 common/Makefile           |    1 +
 common/bbu.c              |  150 +++++++++++++++++++++++++++++++++++++++++++++
 include/bbu.h             |   49 +++++++++++++++
 7 files changed, 295 insertions(+)
 create mode 100644 commands/barebox-update.c
 create mode 100644 common/bbu.c
 create mode 100644 include/bbu.h

diff --git a/commands/Kconfig b/commands/Kconfig
index e934f29..251d8b6 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -509,6 +509,11 @@ endif
 
 endmenu
 
+config CMD_BAREBOX_UPDATE
+	tristate
+	select BAREBOX_UPDATE
+	prompt "barebox-update"
+
 config CMD_TIMEOUT
 	tristate
 	prompt "timeout"
diff --git a/commands/Makefile b/commands/Makefile
index 610be55..7606643 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -76,3 +76,4 @@ obj-$(CONFIG_CMD_READLINK)	+= readlink.o
 obj-$(CONFIG_CMD_LN)		+= ln.o
 obj-$(CONFIG_CMD_CLK)		+= clk.o
 obj-$(CONFIG_CMD_TFTP)		+= tftp.o
+obj-$(CONFIG_CMD_BAREBOX_UPDATE)+= barebox-update.o
diff --git a/commands/barebox-update.c b/commands/barebox-update.c
new file mode 100644
index 0000000..f550572
--- /dev/null
+++ b/commands/barebox-update.c
@@ -0,0 +1,86 @@
+/*
+ * barebox-update.c - update barebox
+ *
+ * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+ */
+#include <common.h>
+#include <command.h>
+#include <getopt.h>
+#include <malloc.h>
+#include <errno.h>
+#include <bbu.h>
+#include <fs.h>
+
+static int do_barebox_update(int argc, char *argv[])
+{
+	int opt, ret;
+	struct bbu_data data = {};
+
+	while ((opt = getopt(argc, argv, "t:yf:ld:")) > 0) {
+		switch (opt) {
+		case 'd':
+			data.devicefile = optarg;
+			break;
+		case 'f':
+			data.force = simple_strtoul(optarg, NULL, 0);
+			data.flags |= BBU_FLAG_FORCE;
+			break;
+		case 't':
+			data.handler_name = optarg;
+			break;
+		case 'y':
+			data.flags |= BBU_FLAG_YES;
+			break;
+		case 'l':
+			printf("registered update handlers:\n");
+			bbu_handlers_list();
+			return 0;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (!(argc - optind))
+		return COMMAND_ERROR_USAGE;
+
+	data.imagefile = argv[optind];
+
+	data.image = read_file(data.imagefile, &data.len);
+	if (!data.image)
+		return -errno;
+
+	ret = barebox_update(&data);
+
+	free(data.image);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(barebox_update)
+BAREBOX_CMD_HELP_USAGE("barebox_update [OPTIONS] <image>\n")
+BAREBOX_CMD_HELP_SHORT("Update barebox to persistent media\n")
+BAREBOX_CMD_HELP_OPT("-t <target>", "\n")
+BAREBOX_CMD_HELP_OPT("-d <device>", "write image to <device> instead of handler default\n")
+BAREBOX_CMD_HELP_OPT("           ", "Can be used for debugging purposes (-d /tmpfile)\n")
+BAREBOX_CMD_HELP_OPT("-y\t", "yes. Do not ask for confirmation\n")
+BAREBOX_CMD_HELP_OPT("-f <level>", "Set force level\n")
+BAREBOX_CMD_HELP_OPT("-l\t", "list registered targets\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(barebox_update)
+	.cmd		= do_barebox_update,
+	.usage		= "update barebox",
+	BAREBOX_CMD_HELP(cmd_barebox_update_help)
+BAREBOX_CMD_END
diff --git a/common/Kconfig b/common/Kconfig
index 107774c..d60db80 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -58,6 +58,9 @@ config GLOBALVAR
 config STDDEV
 	bool
 
+config BAREBOX_UPDATE
+	bool
+
 menu "General Settings              "
 
 config LOCALVERSION
diff --git a/common/Makefile b/common/Makefile
index 132bd06..d82fc99 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -38,6 +38,7 @@ obj-$(CONFIG_MENU) += menu.o
 obj-$(CONFIG_PASSWORD) += password.o
 obj-$(CONFIG_MODULES) += module.o
 obj-$(CONFIG_FLEXIBLE_BOOTARGS) += bootargs.o
+obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
 extra-$(CONFIG_MODULES) += module.lds
 extra-y += barebox_default_env barebox_default_env.h
 
diff --git a/common/bbu.c b/common/bbu.c
new file mode 100644
index 0000000..92f8d2b
--- /dev/null
+++ b/common/bbu.c
@@ -0,0 +1,150 @@
+/*
+ * bbu.c - barebox update functions
+ *
+ * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+ */
+#include <common.h>
+#include <bbu.h>
+#include <linux/list.h>
+#include <errno.h>
+#include <readkey.h>
+
+static LIST_HEAD(bbu_image_handlers);
+
+int bbu_force(struct bbu_data *data, const char *fmt, ...)
+{
+	va_list args;
+
+	printf("UPDATE: ");
+
+	va_start(args, fmt);
+
+	vprintf(fmt, args);
+
+	va_end(args);
+
+	if (!(data->flags & BBU_FLAG_FORCE))
+		goto out;
+
+	if (!data->force)
+		goto out;
+
+	data->force--;
+
+	printf(" (forced)\n");
+
+	return 1;
+out:
+	printf("\n");
+
+	return 0;
+}
+
+int bbu_confirm(struct bbu_data *data)
+{
+	int key;
+
+	if (data->flags & BBU_FLAG_YES)
+		return 0;
+
+	printf("update barebox from %s using handler %s to %s (y/n)?\n",
+			data->imagefile, data->handler_name,
+			data->devicefile);
+
+	key = read_key();
+
+	if (key == 'y')
+		return 0;
+
+	return -EINTR;
+}
+
+static struct bbu_handler *bbu_find_handler(const char *name, unsigned long flags)
+{
+	struct bbu_handler *handler;
+
+	list_for_each_entry(handler, &bbu_image_handlers, list) {
+		if (!name) {
+			if (flags & BBU_HANDLER_FLAG_DEFAULT)
+				return handler;
+			continue;
+		}
+
+		if (!strcmp(handler->name, name))
+			return handler;
+	}
+
+	return NULL;
+}
+
+/*
+ * do a barebox update with data from *data
+ */
+int barebox_update(struct bbu_data *data)
+{
+	struct bbu_handler *handler;
+	int ret;
+
+	handler = bbu_find_handler(data->handler_name, data->flags);
+	if (!handler)
+		return -ENODEV;
+
+	if (!data->devicefile)
+		data->devicefile = handler->devicefile;
+
+	ret = handler->handler(handler, data);
+	if (ret == -EINTR)
+		printf("update aborted\n");
+
+	if (!ret)
+		printf("update succeeded\n");
+
+	return ret;
+}
+
+/*
+ * print a list of all registered update handlers
+ */
+void bbu_handlers_list(void)
+{
+	struct bbu_handler *handler;
+
+	if (list_empty(&bbu_image_handlers))
+		printf("(none)\n");
+
+	list_for_each_entry(handler, &bbu_image_handlers, list)
+		printf("%s%-11s -> %-10s\n",
+				handler->flags & BBU_HANDLER_FLAG_DEFAULT ?
+				"* " : "  ",
+				handler->name,
+				handler->devicefile);
+}
+
+/*
+ * register a new update handler
+ */
+int bbu_register_handler(struct bbu_handler *handler)
+{
+	if (bbu_find_handler(handler->name, 0))
+		return -EBUSY;
+
+	if (handler->flags & BBU_HANDLER_FLAG_DEFAULT &&
+			bbu_find_handler(NULL, BBU_HANDLER_FLAG_DEFAULT))
+		return -EBUSY;
+
+	list_add_tail(&handler->list, &bbu_image_handlers);
+
+	return 0;
+}
diff --git a/include/bbu.h b/include/bbu.h
new file mode 100644
index 0000000..095eebc
--- /dev/null
+++ b/include/bbu.h
@@ -0,0 +1,49 @@
+#ifndef __INCLUDE_BBU_H
+#define __INCLUDE_BBU_H
+
+struct bbu_data {
+#define BBU_FLAG_FORCE	(1 << 0)
+#define BBU_FLAG_YES	(1 << 1)
+	unsigned long flags;
+	int force;
+	void *image;
+	const char *imagefile;
+	const char *devicefile;
+	size_t len;
+	const char *handler_name;
+};
+
+struct bbu_handler {
+	int (*handler)(struct bbu_handler *, struct bbu_data *);
+	const char *name;
+	struct list_head list;
+#define BBU_HANDLER_FLAG_DEFAULT	(1 << 0)
+	unsigned long flags;
+
+	/* default device file, can be overwritten on the command line */
+	const char *devicefile;
+};
+
+int bbu_force(struct bbu_data *, const char *fmt, ...)
+	__attribute__ ((format(__printf__, 2, 3)));
+
+int bbu_confirm(struct bbu_data *);
+
+int barebox_update(struct bbu_data *);
+
+void bbu_handlers_list(void);
+
+#ifdef CONFIG_BAREBOX_UPDATE
+
+int bbu_register_handler(struct bbu_handler *);
+
+#else
+
+static inline int bbu_register_handler(struct bbu_handler *unused)
+{
+	return -EINVAL;
+}
+
+#endif
+
+#endif /* __INCLUDE_BBU_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
