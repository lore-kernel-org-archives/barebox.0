Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STpeE-000189-OS
 for barebox@lists.infradead.org; Mon, 14 May 2012 07:24:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 May 2012 09:24:40 +0200
Message-Id: <1336980281-30288-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1336980281-30288-1-git-send-email-s.hauer@pengutronix.de>
References: <1336980281-30288-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] add 'global' command
To: barebox@lists.infradead.org

This implements global shell variable support. This is done by registering
a new device named 'global', so global variables are just plain device
parameters.
Global variables are useful for storing the global state in the environment.
Currently we do this by sourcing scripts instead of executing them which is
quite limiting.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig    |    7 ++++++
 commands/Makefile   |    1 +
 commands/global.c   |   62 ++++++++++++++++++++++++++++++++++++++++++++++++
 common/Kconfig      |    7 ++++++
 common/Makefile     |    1 +
 common/globalvar.c  |   65 +++++++++++++++++++++++++++++++++++++++++++++++++++
 include/globalvar.h |   12 ++++++++++
 7 files changed, 155 insertions(+)
 create mode 100644 commands/global.c
 create mode 100644 common/globalvar.c
 create mode 100644 include/globalvar.h

diff --git a/commands/Kconfig b/commands/Kconfig
index 49a56ca..1c15294 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -113,6 +113,13 @@ config CMD_LINUX_EXEC
 	help
 	  This command executes a command on the Linux host.
 
+config CMD_GLOBAL
+	select GLOBALVAR
+	tristate
+	prompt "global"
+	help
+	  The global command allows to create global variables
+
 endmenu
 
 menu "file commands                 "
diff --git a/commands/Makefile b/commands/Makefile
index f02b5ca..4c8a0a9 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -65,3 +65,4 @@ obj-$(CONFIG_CMD_MAGICVAR)	+= magicvar.o
 obj-$(CONFIG_CMD_IOMEM)		+= iomem.o
 obj-$(CONFIG_CMD_LINUX_EXEC)	+= linux_exec.o
 obj-$(CONFIG_CMD_AUTOMOUNT)	+= automount.o
+obj-$(CONFIG_CMD_GLOBAL)	+= global.o
diff --git a/commands/global.c b/commands/global.c
new file mode 100644
index 0000000..de6b13e
--- /dev/null
+++ b/commands/global.c
@@ -0,0 +1,62 @@
+/*
+ * global.c - global shell variables
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+#include <common.h>
+#include <malloc.h>
+#include <command.h>
+#include <globalvar.h>
+#include <environment.h>
+
+static int do_global(int argc, char *argv[])
+{
+	int ret;
+	char *value;
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	value = strchr(argv[1], '=');
+	if (value) {
+		*value = 0;
+		value++;
+	}
+
+	ret = globalvar_add_simple(argv[1]);
+
+	if (value) {
+		char *name = asprintf("global.%s", argv[1]);
+		ret = setenv(name, value);
+		free(name);
+	}
+
+	return ret ? 1 : 0;
+}
+
+BAREBOX_CMD_HELP_START(global)
+BAREBOX_CMD_HELP_USAGE("global <var>[=<value]\n")
+BAREBOX_CMD_HELP_SHORT("add a new global variable named <var>, optionally set to <value>\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(global)
+	.cmd		= do_global,
+	.usage		= "create global variables",
+	BAREBOX_CMD_HELP(cmd_global_help)
+BAREBOX_CMD_END
diff --git a/common/Kconfig b/common/Kconfig
index 73d620a..81e3acb 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -47,6 +47,9 @@ config BINFMT
 	bool
 	select FILETYPE
 
+config GLOBALVAR
+	bool
+
 menu "General Settings              "
 
 config LOCALVERSION
@@ -493,6 +496,7 @@ config DEFAULT_ENVIRONMENT_GENERIC
 	select HUSH_GETOPT
 	select CMD_CRC
 	select CMD_CRC_CMP
+	select CMD_AUTOMOUNT if HAVE_DEFAULT_ENVIRONMENT_NEW
 	prompt "Default environment generic"
 	help
 	  With this option barebox will use the generic default
@@ -502,6 +506,9 @@ config DEFAULT_ENVIRONMENT_GENERIC
 	  at least contain a /env/config file.
 	  This will be able to overwrite the files from defaultenv.
 
+config HAVE_DEFAULT_ENVIRONMENT_NEW
+	bool
+
 config DEFAULT_ENVIRONMENT_PATH
 	string
 	depends on DEFAULT_ENVIRONMENT
diff --git a/common/Makefile b/common/Makefile
index a58aef9..d842a2e 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -29,6 +29,7 @@ obj-$(CONFIG_CMD_BOOTM) += uimage.o
 obj-y += startup.o
 obj-y += misc.o
 obj-y += memsize.o
+obj-$(CONFIG_GLOBALVAR) += globalvar.o
 obj-$(CONFIG_FILETYPE) += filetype.o
 obj-y += resource.o
 obj-$(CONFIG_MENU) += menu.o
diff --git a/common/globalvar.c b/common/globalvar.c
new file mode 100644
index 0000000..71296ff
--- /dev/null
+++ b/common/globalvar.c
@@ -0,0 +1,65 @@
+#include <common.h>
+#include <malloc.h>
+#include <globalvar.h>
+#include <init.h>
+
+static struct device_d global_device = {
+	.name = "global",
+	.id = DEVICE_ID_SINGLE,
+};
+
+int globalvar_add(const char *name,
+		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
+		const char *(*get)(struct device_d *, struct param_d *p),
+		unsigned long flags)
+{
+	return dev_add_param(&global_device, name, set, get, flags);
+}
+
+/*
+ * globalvar_get_match
+ *
+ * get a concatenated string of all globalvars beginning with 'match'.
+ * This adds whitespaces between the different globalvars
+ */
+char *globalvar_get_match(const char *match, const char *seperator)
+{
+	char *val = NULL;
+	struct param_d *param;
+
+	list_for_each_entry(param, &global_device.parameters, list) {
+		if (!strncmp(match, param->name, strlen(match))) {
+			const char *p = dev_get_param(&global_device, param->name);
+			if (val) {
+				char *new = asprintf("%s%s%s", val, seperator, p);
+				free(val);
+				val = new;
+			} else {
+				val = xstrdup(p);
+			}
+		}
+	}
+
+	if (!val)
+		val = xstrdup("");
+
+	return val;
+}
+
+/*
+ * globalvar_add_simple
+ *
+ * add a new globalvar named 'name'
+ */
+int globalvar_add_simple(const char *name)
+{
+	return globalvar_add(name, NULL, NULL, 0);
+}
+
+static int globalvar_init(void)
+{
+	register_device(&global_device);
+
+	return 0;
+}
+postconsole_initcall(globalvar_init);
diff --git a/include/globalvar.h b/include/globalvar.h
new file mode 100644
index 0000000..7cc3976
--- /dev/null
+++ b/include/globalvar.h
@@ -0,0 +1,12 @@
+#ifndef __GLOBALVAR_H
+#define __GLOBALVAR_H
+
+int globalvar_add_simple(const char *name);
+
+int globalvar_add(const char *name,
+		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
+		const char *(*get)(struct device_d *, struct param_d *p),
+		unsigned long flags);
+char *globalvar_get_match(const char *match, const char *seperator);
+
+#endif /* __GLOBALVAR_H */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
