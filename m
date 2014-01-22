Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22e.google.com ([2a00:1450:4008:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W66o4-0007YA-6R
 for barebox@lists.infradead.org; Wed, 22 Jan 2014 23:02:01 +0000
Received: by mail-bk0-f46.google.com with SMTP id r7so102407bkg.33
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2014 15:01:38 -0800 (PST)
From: Philipp Zabel <philipp.zabel@gmail.com>
Date: Thu, 23 Jan 2014 00:01:31 +0100
Message-Id: <1390431691-5090-3-git-send-email-philipp.zabel@gmail.com>
In-Reply-To: <1390431691-5090-1-git-send-email-philipp.zabel@gmail.com>
References: <1390431691-5090-1-git-send-email-philipp.zabel@gmail.com>
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
Subject: [RFC PATCH 2/2] commands: add bootmode command
To: barebox@lists.infradead.org
Cc: Troy Kisky <troy.kisky@boundarydevices.com>

On some SoCs the boot rom can be instructed to boot from a specific
device, once, after the next reset. The bootmode command allows to
list boot device candidates and to set up one of those devices as
boot source after the next reset.

Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>
---
 commands/Kconfig    |   9 ++++
 commands/Makefile   |   1 +
 commands/bootmode.c | 143 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 common/Kconfig      |   3 ++
 common/Makefile     |   1 +
 5 files changed, 157 insertions(+)
 create mode 100644 commands/bootmode.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 1e07b5b..851a14a 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -770,6 +770,15 @@ config CMD_WD_DEFAULT_TIMOUT
 	  enabled and re-triggered with the default timeout value).
 endif
 
+config CMD_BOOTMODE
+	bool
+	depends on OFTREE
+	prompt "bootmode command"
+	select BOOTMODE
+	help
+	  The 'bootmode' command on some SoCs allows to instruct the boot rom
+	  from which bootsource to boot, once, after the next reset.
+
 endmenu
 
 endif
diff --git a/commands/Makefile b/commands/Makefile
index 58d27fa..9e63e3f 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -93,3 +93,4 @@ obj-$(CONFIG_CMD_MIITOOL)	+= miitool.o
 obj-$(CONFIG_CMD_DETECT)	+= detect.o
 obj-$(CONFIG_CMD_BOOT)		+= boot.o
 obj-$(CONFIG_CMD_DEVINFO)	+= devinfo.o
+obj-$(CONFIG_CMD_BOOTMODE)	+= bootmode.o
diff --git a/commands/bootmode.c b/commands/bootmode.c
new file mode 100644
index 0000000..ce2bdfd
--- /dev/null
+++ b/commands/bootmode.c
@@ -0,0 +1,143 @@
+/*
+ * bootmode.c - bootmode command
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
+#include <bootmode.h>
+#include <bootsource.h>
+#include <common.h>
+#include <command.h>
+#include <complete.h>
+#include <driver.h>
+#include <getopt.h>
+#include <linux/ctype.h>
+
+struct bootsource_name {
+	enum bootsource source;
+	char *name;
+};
+
+static struct bootsource_name bootsources[] = {
+	{ BOOTSOURCE_NAND,   "nand" },
+	{ BOOTSOURCE_NOR,    "nor"  },
+	{ BOOTSOURCE_MMC,    "mmc"  },
+	{ BOOTSOURCE_I2C,    "i2c"  },
+	{ BOOTSOURCE_SPI,    "m25p" },
+	{ BOOTSOURCE_SERIAL, "cs"   },
+	{ BOOTSOURCE_HD,     "ahci" },
+};
+
+static enum bootsource get_bootsource(struct device_d *dev, int *instance)
+{
+	int len, i, id;
+	const char *start, *end;
+
+	start = dev_name(dev);
+	end = start + strlen(start);
+	if (!isdigit(*(end-1)))
+		return BOOTSOURCE_UNKNOWN;
+	while (isdigit(*(end-1)) && end > start)
+		end--;
+
+	for (i = 0; i < ARRAY_SIZE(bootsources); i++) {
+		len = strlen(bootsources[i].name);
+		if (end - start > len)
+			len = end - start;
+		if (strncmp(bootsources[i].name, start, len) != 0)
+			continue;
+
+		if (instance) {
+			struct device_d *parent = dev->parent;
+
+			if (bootsources[i].source == BOOTSOURCE_SPI && parent)
+				parent = parent->parent;
+
+			if (parent && parent->device_node) {
+				const char *alias;
+
+				alias = of_alias_get(parent->device_node);
+				if (alias) {
+					start = alias;
+					end = start + strlen(start);
+					while (isdigit(*(end-1)) && end > start)
+						end--;
+				}
+			}
+			id = simple_strtol(end, 0, 10);
+			if (id >= 0)
+				*instance = id;
+		}
+		return bootsources[i].source;
+	}
+
+	return BOOTSOURCE_UNKNOWN;
+}
+
+static int do_bootmode(int argc, char *argv[])
+{
+	struct device_d *dev;
+	struct device_node *node = NULL;
+	enum bootsource bootsource;
+	int opt, instance = BOOTSOURCE_INSTANCE_UNKNOWN;
+	int option_list = 0;
+
+	while ((opt = getopt(argc, argv, "l")) > 0) {
+		switch (opt) {
+		case 'l':
+			option_list = 1;
+			break;
+		}
+	}
+
+	if (option_list) {
+		printf("possible boot devices:\n");
+		for_each_device(dev) {
+			bootsource = get_bootsource(dev, &instance);
+			if (bootsource == BOOTSOURCE_UNKNOWN)
+				continue;
+			if (bootsource == bootsource_get() &&
+			    instance == bootsource_get_instance())
+				printf("* %s\n", dev_name(dev));
+			else
+				printf("  %s\n", dev_name(dev));
+		}
+		return 0;
+	}
+
+	if (argc == optind)
+		return COMMAND_ERROR_USAGE;
+
+	dev = get_device_by_name(argv[optind]);
+	if (!dev)
+		return -ENODEV;
+
+	bootsource = get_bootsource(dev, &instance);
+	if (bootsource == BOOTSOURCE_UNKNOWN)
+		return -EINVAL;
+
+	if (dev->parent)
+		node = dev->parent->device_node;
+
+	return bootmode_set(bootsource, instance, node);
+}
+
+BAREBOX_CMD_HELP_START(bootmode)
+BAREBOX_CMD_HELP_USAGE("bootmode [OPTIONS] [device]\n")
+BAREBOX_CMD_HELP_OPT("-l",  "list boot devices\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(bootmode)
+	.cmd		= do_bootmode,
+	.usage		= "bootmode device",
+	BAREBOX_CMD_COMPLETE(device_complete)
+	BAREBOX_CMD_HELP(cmd_bootmode_help)
+BAREBOX_CMD_END
diff --git a/common/Kconfig b/common/Kconfig
index ce426f2..95f4756 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -62,6 +62,9 @@ config STDDEV
 config BAREBOX_UPDATE
 	bool
 
+config BOOTMODE
+	bool
+
 menu "General Settings"
 
 config LOCALVERSION
diff --git a/common/Makefile b/common/Makefile
index 6f6e360..78b59bc 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -44,6 +44,7 @@ obj-$(CONFIG_PASSWORD) += password.o
 obj-$(CONFIG_MODULES) += module.o
 obj-$(CONFIG_FLEXIBLE_BOOTARGS) += bootargs.o
 obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
+obj-$(CONFIG_BOOTMODE) += bootmode.o
 obj-y += bootsource.o
 obj-$(CONFIG_BOOTM) += bootm.o
 extra-$(CONFIG_MODULES) += module.lds
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
