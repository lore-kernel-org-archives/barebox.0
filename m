Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmMfS-00034j-Ly
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 13:00:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Nov 2014 13:59:33 +0100
Message-Id: <1415278778-20826-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1415278778-20826-1-git-send-email-s.hauer@pengutronix.de>
References: <1415278778-20826-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/11] Add support for non volatile variables
To: barebox@lists.infradead.org

This adds (back) support for non volatile variables. Non volatile
variables are variables which are stored in the environment over
reboot. They are used in the same way as the global variables, but
with a 'nv' command and device. The variables are stored under
/env/nv/, one variable per file. Adding a nv variable automatically
adds a global variable with the same name. Changing a nv variable
also changes the same global variable, but not the other way round.
This allows for example to configure the username as:

nv user=sha; saveenv

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/variables.rst |  41 ++++++++++
 commands/Kconfig                 |  14 ++++
 commands/Makefile                |   1 +
 commands/loadenv.c               |  11 ++-
 commands/nv.c                    |  84 +++++++++++++++++++
 common/environment.c             |   1 +
 common/globalvar.c               | 173 +++++++++++++++++++++++++++++++++++++++
 common/startup.c                 |   2 +
 include/globalvar.h              |  12 +++
 9 files changed, 336 insertions(+), 3 deletions(-)
 create mode 100644 commands/nv.c

diff --git a/Documentation/user/variables.rst b/Documentation/user/variables.rst
index a13de1b..974ab88 100644
--- a/Documentation/user/variables.rst
+++ b/Documentation/user/variables.rst
@@ -25,6 +25,47 @@ other variable. You can also directly assign a value during creation::
 to assigning a value with ``global.myvar1=foobar``, but the latter fails when
 a variable has not been created before.
 
+.. _config_device:
+
+Non volatile variables
+----------------------
+
+Additionally to global variables barebox also has non volatile (nv) variables.
+Unlike the global variables the config variables are persistent over reboots.
+
+Each nv variable is linked with the global variable of the same name.
+Whenever the nv variable changes its value the corresponding global
+variable also changes its value. The other way round though is not true:
+Changing a global variable does not change the corresponding nv variable.
+This means that changing a global variable changes the behaviour for the
+currently running barebox, while changing a nv variable changes the
+behaviour persistently over reboots.
+
+nv variables can be created or removed with the :ref:`command_nv`
+command. The nv variables are made persistent using the environment
+facilities of barebox, so a :ref:`saveenv` must be issued to store the actual
+values.
+
+examples:
+
+.. code-block:: sh
+
+  barebox@Phytec phyCARD-i.MX27:/ devinfo nv
+  barebox@Phytec phyCARD-i.MX27:/ nv model=myboard
+  barebox@myboard:/ devinfo nv
+  Parameters:
+    model: myboard
+  barebox@myboard:/ devinfo global
+  Parameters:
+    [...]
+    model: myboard
+    [...]
+  barebox@myboard:/ global.model=yourboard
+  barebox@yourboard:/ devinfo nv
+  Parameters:
+    model: myboard
+  barebox@yourboard:/
+
 .. _magicvars:
 
 Magic variables
diff --git a/commands/Kconfig b/commands/Kconfig
index bef5847..cf32548 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -674,6 +674,20 @@ endmenu
 
 menu "Environment"
 
+config CMD_NV
+	select GLOBALVAR
+	tristate
+	prompt "nv"
+	help
+	  create, set or remove non volatile variables.
+
+	  Usage: nv [-r] VAR[=VALUE]
+
+	  Add a new config non volatile named VAR, optionally set to VALUE.
+
+	  Options:
+		-r	remove a non volatile variable
+
 config CMD_EXPORT
 	depends on ENVIRONMENT_VARIABLES
 	tristate
diff --git a/commands/Makefile b/commands/Makefile
index be17496..b4fc3d3 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -107,3 +107,4 @@ obj-$(CONFIG_CMD_HWCLOCK)	+= hwclock.o
 obj-$(CONFIG_CMD_USBGADGET)	+= usbgadget.o
 obj-$(CONFIG_CMD_FIRMWARELOAD)	+= firmwareload.o
 obj-$(CONFIG_CMD_CMP)		+= cmp.o
+obj-$(CONFIG_CMD_NV)		+= nv.o
diff --git a/commands/loadenv.c b/commands/loadenv.c
index 8b15af4..91ce5e7 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -27,12 +27,13 @@
 #include <errno.h>
 #include <fs.h>
 #include <malloc.h>
+#include <globalvar.h>
 
 static int do_loadenv(int argc, char *argv[])
 {
 	char *filename = NULL, *dirname;
 	unsigned flags = 0;
-	int opt;
+	int opt, ret;
 	int scrub = 0;
 	int defaultenv = 0;
 
@@ -97,9 +98,13 @@ static int do_loadenv(int argc, char *argv[])
 	printf("loading environment from %s\n", defaultenv ? "defaultenv" : filename);
 
 	if (defaultenv)
-		return defaultenv_load(dirname, flags);
+		ret = defaultenv_load(dirname, flags);
 	else
-		return envfs_load(filename, dirname, flags);
+		ret = envfs_load(filename, dirname, flags);
+
+	nvvar_load();
+
+	return ret;
 }
 
 BAREBOX_CMD_HELP_START(loadenv)
diff --git a/commands/nv.c b/commands/nv.c
new file mode 100644
index 0000000..8cebb85
--- /dev/null
+++ b/commands/nv.c
@@ -0,0 +1,84 @@
+/*
+ * nv.c - non volatile shell variables
+ *
+ * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+#include <malloc.h>
+#include <command.h>
+#include <globalvar.h>
+#include <environment.h>
+#include <getopt.h>
+
+static int do_nv(int argc, char *argv[])
+{
+	int opt;
+	int do_remove = 0;
+	int ret;
+	char *value;
+
+	while ((opt = getopt(argc, argv, "r")) > 0) {
+		switch (opt) {
+		case 'r':
+			do_remove = 1;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (argc == optind) {
+		nvvar_print();
+		return 0;
+	}
+
+	argc -= optind;
+	argv += optind;
+
+	if (argc != 1)
+		return COMMAND_ERROR_USAGE;
+
+	value = strchr(argv[0], '=');
+	if (value) {
+		*value = 0;
+		value++;
+	}
+
+	if (do_remove)
+		ret = nvvar_remove(argv[0]);
+	else
+		ret = nvvar_add(argv[0], value);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(nv)
+BAREBOX_CMD_HELP_TEXT("Add a new non volatile variable named VAR, optionally set to VALUE.")
+BAREBOX_CMD_HELP_TEXT("non volatile variables are persistent variables that overwrite the")
+BAREBOX_CMD_HELP_TEXT("global variables of the same name. Their value is saved with")
+BAREBOX_CMD_HELP_TEXT("'saveenv'.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-r", "remove a non volatile variable")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(nv)
+	.cmd		= do_nv,
+	BAREBOX_CMD_DESC("create or set non volatile variables")
+	BAREBOX_CMD_OPTS("[-r] VAR[=VALUE]")
+	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
+	BAREBOX_CMD_HELP(cmd_nv_help)
+BAREBOX_CMD_END
diff --git a/common/environment.c b/common/environment.c
index a04b1fa..2639411 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -603,6 +603,7 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 		goto out;
 
 	ret = 0;
+
 out:
 	close(envfd);
 	free(buf);
diff --git a/common/globalvar.c b/common/globalvar.c
index c72f147..ec23c24 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -5,6 +5,9 @@
 #include <init.h>
 #include <environment.h>
 #include <magicvar.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <libfile.h>
 #include <generated/utsrelease.h>
 
 struct device_d global_device = {
@@ -12,6 +15,11 @@ struct device_d global_device = {
 	.id = DEVICE_ID_SINGLE,
 };
 
+struct device_d nv_device = {
+	.name = "nv",
+	.id = DEVICE_ID_SINGLE,
+};
+
 int globalvar_add(const char *name,
 		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
 		const char *(*get)(struct device_d *, struct param_d *p),
@@ -25,6 +33,170 @@ int globalvar_add(const char *name,
 	return 0;
 }
 
+static int nv_save(const char *name, const char *val)
+{
+	int fd, ret;
+	char *fname;
+
+	ret = make_directory("/env/nv");
+	if (ret)
+		return ret;
+
+	fname = asprintf("/env/nv/%s", name);
+
+	fd = open(fname, O_CREAT | O_WRONLY | O_TRUNC);
+
+	free(fname);
+
+	if (fd < 0)
+		return fd;
+
+	fprintf(fd, "%s", val);
+
+	close(fd);
+
+	return 0;
+}
+
+static int nv_set(struct device_d *dev, struct param_d *p, const char *val)
+{
+	struct param_d *gp;
+	int ret;
+
+	if (!val)
+		val = "";
+
+	gp = get_param_by_name(&global_device, p->name);
+	if (!gp)
+		return -EINVAL;
+
+	ret = gp->set(&global_device, gp, val);
+	if (ret)
+		return ret;
+
+	free(p->value);
+	p->value = xstrdup(val);
+
+	return nv_save(p->name, val);
+}
+
+static const char *nv_get(struct device_d *dev, struct param_d *p)
+{
+	return p->value ? p->value : "";
+}
+
+int nvvar_add(const char *name, const char *value)
+{
+	struct param_d *p, *gp;
+	int ret;
+
+	gp = get_param_by_name(&nv_device, name);
+	if (gp) {
+		ret = dev_set_param(&global_device, name, value);
+		if (ret)
+			return ret;
+
+		ret = dev_set_param(&nv_device, name, value);
+		if (ret)
+			return ret;
+
+		return 0;
+	}
+
+	ret = globalvar_add_simple(name, value);
+	if (ret && ret != -EEXIST)
+		return ret;
+
+	p = dev_add_param(&nv_device, name, nv_set, nv_get, 0);
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	if (value) {
+		ret = dev_set_param(&global_device, name, value);
+		if (ret)
+			return ret;
+	} else {
+		value = dev_get_param(&global_device, name);
+		if (!value)
+			value = "";
+	}
+
+	p->value = xstrdup(value);
+
+	return nv_save(p->name, value);
+}
+
+int nvvar_remove(const char *name)
+{
+	struct param_d *p;
+	char *fname;
+
+	p = get_param_by_name(&nv_device, name);
+	if (!p)
+		return -ENOENT;
+
+	fname = asprintf("/env/nv/%s", p->name);
+	unlink(fname);
+	free(fname);
+
+	list_del(&p->list);
+	free(p->name);
+	free(p);
+
+	return 0;
+}
+
+int nvvar_load(void)
+{
+	char *val;
+	int ret;
+	DIR *dir;
+	struct dirent *d;
+
+	dir = opendir("/env/nv");
+	if (!dir)
+		return -ENOENT;
+
+	while ((d = readdir(dir))) {
+		if (!strcmp(d->d_name, ".") || !strcmp(d->d_name, ".."))
+			continue;
+
+		val = read_file_line("/env/nv/%s", d->d_name);
+
+		pr_debug("%s: Setting \"%s\" to \"%s\"\n",
+				__func__, d->d_name, val);
+
+		ret = nvvar_add(d->d_name, val);
+		if (ret)
+			pr_err("failed to create nv variable %s: %s\n",
+					d->d_name, strerror(-ret));
+	}
+
+	closedir(dir);
+
+	return 0;
+}
+
+static void device_param_print(struct device_d *dev)
+{
+	struct param_d *param;
+
+	list_for_each_entry(param, &dev->parameters, list) {
+		const char *p = dev_get_param(dev, param->name);
+		const char *nv = NULL;
+
+		if (dev != &nv_device)
+			nv = dev_get_param(&nv_device, param->name);
+
+		printf("%s%s: %s\n", nv ? "* " : "  ", param->name, p);
+	}
+}
+
+void nvvar_print(void)
+{
+	device_param_print(&nv_device);
+}
+
 /*
  * globalvar_get_match
  *
@@ -87,6 +259,7 @@ int globalvar_add_simple(const char *name, const char *value)
 static int globalvar_init(void)
 {
 	register_device(&global_device);
+	register_device(&nv_device);
 
 	globalvar_add_simple("version", UTS_RELEASE);
 
diff --git a/common/startup.c b/common/startup.c
index f164142..2b92efc 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -40,6 +40,7 @@
 #include <envfs.h>
 #include <asm/sections.h>
 #include <uncompress.h>
+#include <globalvar.h>
 
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
@@ -84,6 +85,7 @@ void __noreturn start_barebox(void)
 			defaultenv_load("/env", 0);
 
 		envfs_load(default_environment_path, "/env", 0);
+		nvvar_load();
 	}
 
 	if (IS_ENABLED(CONFIG_COMMAND_SUPPORT)) {
diff --git a/include/globalvar.h b/include/globalvar.h
index 456e8cd..56b23fd 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -72,6 +72,12 @@ static inline int globalvar_add_simple_ip(const char *name,
 
 	return 0;
 }
+
+int nvvar_load(void);
+void nvvar_print(void);
+int nvvar_add(const char *name, const char *value);
+int nvvar_remove(const char *name);
+
 #else
 static inline int globalvar_add_simple(const char *name, const char *value)
 {
@@ -116,6 +122,12 @@ static inline char *globalvar_get_match(const char *match, const char *separator
 }
 
 static inline void globalvar_set_match(const char *match, const char *val) {}
+
+static inline int nvvar_load(void)
+{
+	return 0;
+}
+
 #endif
 
 #endif /* __GLOBALVAR_H */
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
