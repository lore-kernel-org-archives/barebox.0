Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RJisr-0003BU-7j
	for barebox@lists.infradead.org; Fri, 28 Oct 2011 09:37:57 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id D9B241004471
	for <barebox@lists.infradead.org>;
	Fri, 28 Oct 2011 11:40:39 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 28 Oct 2011 17:37:39 +0800
Message-Id: <1319794660-6295-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20111028093456.GA7961@game.jcrosoft.org>
References: <20111028093456.GA7961@game.jcrosoft.org>
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
Subject: [PATCH 1/2] add boot_config command support
To: barebox@lists.infradead.org

this just contain the bootmenu and dtb parsing can not yet boot for real

this will allow to create a boot config from a dtb file that can be provided
by the OS to show a list a boot option

an example a file is in Documentation/bootsec.cfg

you can test using sandbox

# ./barebox -i Documentation/bootsec.dtb
add file Documentation/bootsec.dtb()

barebox 2011.10.0-00119-gad62fdb-dirty (Oct 15 2011 - 11:38:46)

Board: sandbox
Malloc space: 0x7f679f24b010 -> 0x7f679fa4b010 (size  8 MB)
Open /dev/env0 No such file or directory
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...
barebox:/ boot_config -f /dev/fd0 -d

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Documentation/bootsec.dtb         |  Bin 0 -> 2198 bytes
 Documentation/bootsec/bootsec.cfg |  104 +++++++++
 commands/Kconfig                  |   11 +
 commands/Makefile                 |    1 +
 commands/boot_config.c            |  262 ++++++++++++++++++++++
 common/Kconfig                    |    5 +
 common/Makefile                   |    1 +
 common/boot_config.c              |  438 +++++++++++++++++++++++++++++++++++++
 common/boot_config_dts.c          |  256 ++++++++++++++++++++++
 include/boot_config.h             |  158 +++++++++++++
 10 files changed, 1236 insertions(+), 0 deletions(-)
 create mode 100644 Documentation/bootsec.dtb
 create mode 100644 Documentation/bootsec/bootsec.cfg
 create mode 100644 Documentation/bootsec/splash_installer.bmp
 create mode 100644 Documentation/bootsec/splash_menu.bmp
 create mode 100644 commands/boot_config.c
 create mode 100644 common/boot_config.c
 create mode 100644 common/boot_config_dts.c
 create mode 100644 include/boot_config.h

diff --git a/Documentation/bootsec.dtb b/Documentation/bootsec.dtb
new file mode 100644
index 0000000000000000000000000000000000000000..762a8965485df4c349bba1a0bef80c3ea8375456
GIT binary patch
literal 2198
zcmdT^-HOvd6rTFGuItKb#k<7_f?l|7n%3fi#j=awg5t%3f;VB>nRJ8s=_V6x_d$Fv
zU&L1s&zYH|C&2}4@xp<VnVd|{`M&e_efQ@N#%_LNjJ<&UCG1Z@?t<)r;Q9pmYvx#c
zw(MI=aK+2>XPG538u#q`RoJ)iT!b;7Nv%cQb&#!GaC#4QJ944=`W9n&?>@+#?j%iB
zw>Uuy2VQ5`=@0SB6_8e#gens?e}7@ySZUg}Ts(9JtKxF8F_#O%<q&OCF4W(KTvoO%
z7aH45^3n#(^}O^uZpTF`H7?ZOpK`gkvJH93#KFq6u^k9CwuaZKC5_pXQa<td;mmV8
zLQPhfZHxw5L-Kt|?NV;r@Xt<uUhw=Z$jSfvaIVKGOmfAeNM@8)EoRhz8M8Hg*?PX*
zm#(*Ingrpj$hZpA#DK<lJ_2cfl+iSerIRMk5zpi#T{uV3h0duwFJv;6=DO~Q+i-pu
zg-NmS`@ZYzB0xL0K%P_(%nzu?S<(eTZupK13$<lzc>d5g4Guc|z6;WRi}syW^V@H)
zVIRjb9t{WY9N?3uksK+tJawP-de1%AbuvIb>I(U#3**Lfvaebb<Z3yWqsJ!Yel2I1
z%Qv<b=zK!``^LP{aU{5P!&z)i-1OV4&2U#!65~Vh(%C`rmU@C$=gOaO0Vb+E+BjDo
zhxY#!)@DtYv8DPO;Qs^myKRal{{I5IC8V+crXL;viS|i3793OQRR&CMj^WN4bv}S1
zr*&SNOqf$#SdY#6p|gk9PpL-^rECXj7IVd*w-_|goU1c9=hG~l>wzL<z>7#R9x0r<
d3?D*9e97{81cQ=IV*#xrndvoVT8lxp*)MJ)fYks1

literal 0
HcmV?d00001

diff --git a/Documentation/bootsec/bootsec.cfg b/Documentation/bootsec/bootsec.cfg
new file mode 100644
index 0000000..75160ee
--- /dev/null
+++ b/Documentation/bootsec/bootsec.cfg
@@ -0,0 +1,104 @@
+/dts-v1/;
+
+/ {
+	data {
+		kernel@1 {
+			format = "uimage";
+			dev = "sda1";
+			fs = "ext3";
+			path = "/boot/uImage-2.6.36";
+		};
+		initrd@1 {
+			dev = "sda1";
+			fs = "ext3";
+			path = "/boot/initrd-2.6.36";
+		};
+
+		kernel@2 {
+			format = "zimage";
+			dev = "sda1";
+			fs = "ext3";
+			path = "/boot/zImage-2.6.39";
+		};
+		initrd@2 {
+			dev = "sda1";
+			fs = "ext3";
+			path = "/boot/initrd-2.6.39";
+		};
+
+		kernel@3 {
+			format = "uimage";
+			dev = "sda1";
+			fs = "ext3";
+			path = "/boot/uImage-3.0.0";
+		};
+		initrd@3 {
+			dev = "sda1";
+			fs = "ext3";
+			path = "/boot/inird-3.0.0";
+		};
+		fdt@3 {
+			dev = "sda1";
+			fs = "ext3";
+			path = "boot/usb_a9g20.dtb";
+		};
+
+		kernel@4 {
+			format = "uimage";
+			dev = "sda3";
+			fs = "squashfs";
+			path = "/boot/uImage-installer-3.0.0";
+		};
+		initrd@4 {
+			dev = "sda3";
+			fs = "squashfs";
+			path = "/boot/initrd-installer-3.0.0";
+		};
+	};
+
+	configuration {
+		description = "Welcome on Barebox Boot Sequence";
+		default = "linux_3_0_0";
+		altboot = "installer";
+		bootdelay = <5>;
+		splash = /incbin/("splash_menu.bmp");
+
+		linux_2_6_36 {
+			description = "Linux 2.6.36";
+			cmdline = "mem=64M console=ttyS0,115200 root=/dev/sda2 rw rootfstype=ext3";
+			kernel = "kernel@1";
+			initrd = "initrd@1";
+		};
+
+		linux_2_6_39 {
+			description = "Linux 2.6.39";
+			cmdline = "mem=64M console=ttyS0,115200 root=/dev/sda2 rw rootfstype=ext3";
+			kernel = "kernel@2";
+			initrd = "initrd@2";
+		};
+
+		linux_3_0_0_bad {
+			description = "Linux 3.0.0";
+			cmdline = "mem=64M console=ttyS0,115200 root=/dev/sda2 rw rootfstype=ext3";
+			kernel = "kernel@3";
+			initrd = "initrd@3";
+			fdt = "fdt@4";
+		};
+
+		linux_3_0_0 {
+			description = "Linux 3.0.0";
+			cmdline = "mem=64M console=ttyS0,115200 root=/dev/sda2 rw rootfstype=ext3";
+			kernel = "kernel@3";
+			initrd = "initrd@3";
+			fdt = "fdt@3";
+		};
+
+		installer {
+			description = "Installer Linux 3.0.0";
+			cmdline = "mem=64M console=ttyS0,115200 root=/dev/sda4 ro rootfstype=squashfs";
+			splash = /incbin/("splash_installer.bmp");
+			kernel = "kernel@4";
+			initrd = "initrd@4";
+		};
+	};
+};
diff --git a/Documentation/bootsec/splash_installer.bmp b/Documentation/bootsec/splash_installer.bmp
new file mode 100644
index 0000000..e69de29
diff --git a/Documentation/bootsec/splash_menu.bmp b/Documentation/bootsec/splash_menu.bmp
new file mode 100644
index 0000000..e69de29
diff --git a/commands/Kconfig b/commands/Kconfig
index 18ab840..7980ab7 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -69,6 +69,17 @@ config CMD_MENU_MANAGEMENT
 	depends on CMD_MENU
 	prompt "menu scripts management"
 
+config CMD_BOOT_CONFIG
+	tristate
+	depends on BOOT_CONFIG
+	select FDT
+	prompt "boot config"
+
+config CMD_BOOT_CONFIG_MANAGEMENT
+	bool
+	depends on CMD_BOOT_CONFIG
+	prompt "boot config management"
+
 config CMD_LOGIN
 	tristate
 	select PASSWORD
diff --git a/commands/Makefile b/commands/Makefile
index 5c51916..a832302 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -58,3 +58,4 @@ obj-$(CONFIG_CMD_LED_TRIGGER)	+= trigger.o
 obj-$(CONFIG_CMD_USB)		+= usb.o
 obj-$(CONFIG_CMD_TIME)		+= time.o
 obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
+obj-$(CONFIG_CMD_BOOT_CONFIG)	+= boot_config.o
diff --git a/commands/boot_config.c b/commands/boot_config.c
new file mode 100644
index 0000000..4aa9844
--- /dev/null
+++ b/commands/boot_config.c
@@ -0,0 +1,262 @@
+/*
+ * (C) Copyright 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2 of
+ * the License.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <command.h>
+#include <getopt.h>
+#include <boot_config.h>
+#include <malloc.h>
+
+typedef enum {
+	action_load,
+	action_boot,
+	action_list,
+} bc_action;
+
+struct cmd_bood_config {
+	char		*filename;
+	bc_action	action;
+	char		*config;
+};
+
+#define OPTS		"f:dlc:b:"
+
+static void print_entries(void)
+{
+	struct boot_config_data *bed;
+
+	printf("[Kernel]\n");
+
+	list_for_each_entry(bed, boot_config_get_kernels(), list)
+		printf("%s\n", bed->name);
+	printf("[Initrd]\n");
+
+	list_for_each_entry(bed, boot_config_get_initrds(), list)
+		printf("%s\n", bed->name);
+
+	printf("[FDT]\n");
+
+	list_for_each_entry(bed, boot_config_get_fdts(), list)
+		printf("%s\n", bed->name);
+
+}
+
+static void print_boot_config_data(struct boot_config_data *bed)
+{
+	printf("name = '%s'\n", bed->name);
+	printf("dev  = '%s'\n", bed->dev);
+	printf("fs   = '%s'\n", bed->fs);
+	printf("path = '%s'\n", bed->path);
+}
+
+static void print_boot_config(struct boot_config *e)
+{
+	struct boot_config_var *v;
+
+	printf("Config '%s'\n\n", e->name);
+
+	v = boot_config_var_get_by_name(e, "description");
+	printf("description = %s\n", v->value);
+	v = boot_config_var_get_by_name(e, "cmdline");
+	printf("cmdline = '%s'\n", v->value);
+	v = boot_config_var_get_by_name(e, "splash");
+	if (v)
+		printf("splash  = '%s'\n", v->value);
+
+	printf("[Kernel]\n");
+	print_boot_config_data(e->kernel);
+
+	if (e->initrd) {
+		printf("[Initrd]\n");
+		print_boot_config_data(e->initrd);
+	}
+
+	if (e->fdt) {
+		printf("[fdt]\n");
+		print_boot_config_data(e->fdt);
+	}
+}
+
+/*
+ * boot_config -l [-c config]
+ */
+static int do_boot_config_list(struct cmd_bood_config *cbc)
+{
+	struct boot_config* bc;
+	char * description = boot_config_get_description();
+	uint32_t bootdelay = boot_config_get_bootdelay();
+	int i = 0;
+
+	if (!description)
+		return 0;
+
+	bc = boot_config_get_by_name(cbc->config);
+
+	if (bc) {
+		print_boot_config(bc);
+		return 0;
+	}
+
+	if (is_entry(cbc)) {
+		if (cbc->config) {
+			struct boot_config_data *bed;
+
+			bed = boot_config_kernel_get_by_name(cbc->config);
+			if (bed)
+				goto bed_print;
+
+			bed = boot_config_initrd_get_by_name(cbc->config);
+			if (bed)
+				goto bed_print;
+
+			bed = boot_config_fdt_get_by_name(cbc->config);
+
+		bed_print:
+			if (bed) {
+				print_boot_config_data(bed);
+				return 0;
+			}
+		}
+
+		print_entries();
+		return 0;
+	}
+
+	printf("description = %s\n", description);
+	printf("default_boot = %s\n", boot_config_get_default_boot()->name);
+	if (bootdelay != -1)
+		printf("bootdelay = %ds\n", bootdelay);
+
+	printf("[Configurations]\n");
+	list_for_each_entry(bc, boot_config_get_configs(), list) {
+		printf("%d: %s\n", i, bc->name);
+		i++;
+	}
+
+	return 0;
+}
+
+static int do_boot_config_load(struct cmd_bood_config *cbc)
+{
+	int ret;
+
+	boot_config_unload();
+	ret = boot_config_load(cbc->filename);
+	if (ret) {
+		eprintf("impossible to load the config");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int do_boot_config_boot(struct cmd_bood_config *cbc)
+{
+	struct boot_config *bc;
+
+	if (strcmp(cbc->config, "default") == 0)
+		bc = boot_config_get_default_boot();
+	else
+		bc = boot_config_get_by_name(cbc->config);
+
+	if (!bc)
+		eprintf("Config '%s' not found\n", cbc->config);
+
+	return boot_config_set_env(bc);
+}
+
+static int do_boot_config(struct command *cmdtp, int argc, char *argv[])
+{
+	struct cmd_bood_config cbc;
+	int opt;
+	int ret = COMMAND_ERROR_USAGE;
+
+	memset(&cbc, 0, sizeof(struct cmd_bood_config));
+
+	while((opt = getopt(argc, argv, OPTS)) > 0) {
+		switch(opt) {
+		case 'f':
+			cbc.action = action_load;
+			cbc.filename = optarg;
+			break;
+		case 'd':
+			boot_config_unload();
+			break;
+		case 'l':
+			cbc.action = action_list;
+			break;
+		case 'b':
+			cbc.action = action_boot;
+		case 'c':
+			cbc.config = optarg;
+			break;
+		}
+	}
+
+	switch(cbc.action) {
+	case action_list:
+		ret = do_boot_config_list(&cbc);
+		break;
+	case action_load:
+		ret = do_boot_config_load(&cbc);
+		break;
+	case action_boot:
+		ret = do_boot_config_boot(&cbc);
+		break;
+
+	};
+
+	if (ret)
+		return COMMAND_ERROR_USAGE;
+
+	return 0;
+}
+
+static const __maybe_unused char cmd_boot_config_help[] =
+"Usage: boot_config [OPTION]... \n"
+"Boot Config\n"
+"  -c  config\n"
+"  -d  unload\n"
+"  -f  load config\n"
+"  -l  list\n"
+"  -b  boot\n"
+"\n"
+"How to\n"
+"\n"
+"Load config\n"
+"  boot_config -f <file>\n"
+"\n"
+"Unoad config\n"
+"  boot_config -d\n"
+"\n"
+"Boot"
+"  (default or none for default boot config)\n"
+"  boot_config -b [-c <config>]\n"
+"\n"
+"List configs\n"
+"  boot_cofnfig -l\n";
+
+BAREBOX_CMD_START(boot_config)
+	.cmd		= do_boot_config,
+	.usage		= "Boot Menu",
+	BAREBOX_CMD_HELP(cmd_boot_config_help)
+BAREBOX_CMD_END
diff --git a/common/Kconfig b/common/Kconfig
index 8e96920..fd06213 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -306,6 +306,11 @@ config AUTO_COMPLETE
 	depends on CMDLINE_EDITING
 	prompt "Enable auto completion"
 
+config BOOT_CONFIG
+	bool
+	prompt "Boot Configuration Framework"
+	help
+
 config MENU
 	bool
 	prompt "Menu Framework"
diff --git a/common/Makefile b/common/Makefile
index 7bb8ea4..dd30686 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -26,6 +26,7 @@ obj-y += misc.o
 obj-y += memsize.o
 obj-$(CONFIG_MENU) += menu.o
 obj-$(CONFIG_PASSWORD) += password.o
+obj-$(CONFIG_BOOT_CONFIG) += boot_config.o boot_config_dts.o
 obj-$(CONFIG_MODULES) += module.o
 extra-$(CONFIG_MODULES) += module.lds
 
diff --git a/common/boot_config.c b/common/boot_config.c
new file mode 100644
index 0000000..b60ce26
--- /dev/null
+++ b/common/boot_config.c
@@ -0,0 +1,438 @@
+/*
+ * (C) Copyright 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2 of
+ * the License.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <command.h>
+#include <readkey.h>
+#include <errno.h>
+#include <linux/err.h>
+#include <boot_config.h>
+#include <environment.h>
+
+int boot_config_debug;
+static char *description;
+static struct boot_config *default_boot;
+static uint32_t bootdelay = -1;
+
+static LIST_HEAD(kernels);
+static LIST_HEAD(initrds);
+static LIST_HEAD(fdts);
+static LIST_HEAD(configs);
+
+char* boot_config_get_description(void)
+{
+	return description;
+}
+
+struct boot_config* boot_config_get_default_boot(void)
+{
+	return default_boot;
+}
+
+uint32_t boot_config_get_bootdelay(void)
+{
+	return bootdelay;
+}
+
+int boot_config_set_description(const char *s)
+{
+	if (!s)
+		return -EINVAL;
+	free(description);
+	description = strdup(s);
+
+	if (!description)
+		return -ENOMEM;
+
+	return 0;
+}
+
+int boot_config_set_default_boot(struct boot_config *b)
+{
+	default_boot = b;
+
+	return 0;
+}
+
+int boot_config_set_default_boot_by_name(const char *s)
+{
+	struct boot_config *b;
+
+	b = boot_config_get_by_name(s);
+
+	if (!b)
+		return -EINVAL;
+
+	return boot_config_set_default_boot(b);
+}
+
+int boot_config_set_bootdelay(uint32_t v)
+{
+	bootdelay = v;
+
+	return 0;
+}
+
+struct list_head* boot_config_get_configs(void)
+{
+	return &configs;
+}
+
+struct list_head* boot_config_get_kernels(void)
+{
+	return &kernels;
+}
+
+struct list_head* boot_config_get_initrds(void)
+{
+	return &initrds;
+}
+
+struct list_head* boot_config_get_fdts(void)
+{
+	return &fdts;
+}
+
+struct boot_config_data* bed_list_get_by_name(struct list_head *l, const char *name)
+{
+	struct boot_config_data* bed;
+
+	if (!name)
+		return NULL;
+
+	list_for_each_entry(bed, l, list) {
+		if (strcmp(bed->name, name) == 0)
+			return bed;
+	}
+
+	return NULL;
+}
+
+int bed_list_add(struct list_head *l, struct boot_config_data *bed)
+{
+	if (!bed || !bed->name)
+		return -EINVAL;
+
+	if (bed_list_get_by_name(l, bed->name))
+		return -EEXIST;
+
+	list_add_tail(&bed->list, l);
+
+	return 0;
+}
+
+void bed_list_free(struct list_head *l)
+{
+	struct boot_config_data *bed, *tmp;
+
+	list_for_each_entry_safe(bed, tmp, l, list) {
+		list_del(&bed->list);
+		boot_config_data_free(bed);
+	}
+}
+
+void boot_config_data_free(struct boot_config_data *bed)
+{
+	if (!bed)
+		return;
+
+	free(bed->name);
+	free(bed->format);
+	free(bed->dev);
+	free(bed->fs);
+	free(bed->path);
+
+	free(bed);
+}
+
+struct boot_config* boot_config_get_by_name(const char *name)
+{
+	struct boot_config* bc;
+
+	if (!name)
+		return NULL;
+
+	list_for_each_entry(bc, &configs, list) {
+		if (strcmp(bc->name, name) == 0)
+			return bc;
+	}
+
+	return NULL;
+}
+
+int boot_config_add(struct boot_config *bc)
+{
+	if (!bc || !bc->name)
+		return -EINVAL;
+
+	if (boot_config_get_by_name(bc->name))
+		return -EEXIST;
+
+	list_add_tail(&bc->list, &configs);
+
+	return 0;
+}
+
+void boot_config_free(void)
+{
+	struct boot_config *bc, *tmp;
+
+	list_for_each_entry_safe(bc, tmp, &configs, list) {
+		list_del(&bc->list);
+		boot_config_item_free(bc);
+	}
+}
+
+void boot_config_item_free(struct boot_config *bc)
+{
+	struct boot_config_var *v, *tmp;
+	if (!bc)
+		return;
+
+	free(bc->name);
+
+	list_for_each_entry_safe(v, tmp, &bc->vars, list) {
+		list_del(&v->list);
+		boot_config_var_free(v);
+	}
+
+	free(bc);
+}
+
+int boot_config_item_init(struct boot_config *e)
+{
+	struct boot_config_var *v;
+	int ret;
+
+	if (!e)
+		return -EINVAL;
+
+	v = boot_config_var_get_by_name(e, "kernel");
+	if (!v) {
+		ret = -EINVAL;
+		eprintf("Config %s: Missing kernel\n", e->name);
+		goto err;
+	}
+	e->kernel = bed_list_get_by_name(&kernels, v->value);
+	if (!e->kernel) {
+		ret = -EINVAL;
+		eprintf("Config %s: kernel '%s' not found\n", e->name, v->value);
+		goto err;
+	}
+
+	v = boot_config_var_get_by_name(e, "initrd");
+	if (v) {
+		e->initrd = bed_list_get_by_name(&initrds, v->value);
+		if (!e->initrd) {
+			ret = -EINVAL;
+			eprintf("Config %s: initrd '%s' not found\n", e->name, v->value);
+			goto err;
+		}
+	}
+
+	v = boot_config_var_get_by_name(e, "fdt");
+	if (v) {
+		e->fdt = bed_list_get_by_name(&fdts, v->value);
+		if (!e->fdt) {
+			ret = -EINVAL;
+			eprintf("Config %s: fdt '%s' not found\n", e->name, v->value);
+			goto err;
+		}
+	}
+
+	return 0;
+err:
+	return ret;
+}
+
+int boot_config_add_by_name(const char *name, const char *desc,
+			    const char *kernel, const char *cmdline,
+			    const char *initrd, const char *fdt)
+{
+	struct boot_config *e = boot_config_alloc();
+	int ret;
+
+	if (!e)
+		return -ENOMEM;
+
+	if (boot_config_debug)
+		printf("Boot '%s'\n", name);
+
+	if (boot_config_get_by_name(name))
+		return -EEXIST;
+
+	e->name = strdup(name);
+	if (!e->name) {
+		ret = -ENOMEM;
+		goto err_free;
+	}
+
+	ret = boot_config_var_add(e, "description", desc);
+	if (ret)
+		goto err_free;
+	ret = boot_config_var_add(e, "cmdline", cmdline);
+	if (ret)
+		goto err_free;
+
+	ret = boot_config_var_add(e, "kernel", kernel);
+	if (ret)
+		goto err_free;
+
+	if (initrd) {
+		ret = boot_config_var_add(e, "initrd", initrd);
+		if (ret)
+			goto err_free;
+	}
+
+	if (fdt) {
+		ret = boot_config_var_add(e, "fdt", fdt);
+		if (ret)
+			goto err_free;
+	}
+
+	ret = boot_config_item_init(e);
+	if (ret)
+		goto err_free;
+
+	ret = boot_config_add(e);
+
+	if (ret)
+		goto err_free;
+
+	return 0;
+err_free:
+	boot_config_item_free(e);
+	return 0;
+}
+
+int boot_config_remove_by_name(const char *name)
+{
+	struct boot_config *e;
+
+	e = boot_config_get_by_name(name);
+
+	if (!e)
+		return -EINVAL;
+
+	if (default_boot == e)
+		default_boot = NULL;
+
+	boot_config_item_free(e);
+
+	return 0;
+}
+
+void boot_config_var_free(struct boot_config_var *v)
+{
+	if (!v)
+		return;
+
+	free(v->name);
+	free(v->value);
+	free(v);
+}
+
+struct boot_config_var* boot_config_var_get_by_name(struct boot_config *bc, const char *name)
+{
+	struct boot_config_var *v;
+
+	if (!bc || !name)
+		return NULL;
+
+	list_for_each_entry(v, &bc->vars, list) {
+		if (strcmp(v->name, name) == 0)
+			return v;
+	}
+
+	return NULL;
+}
+
+int boot_config_var_add(struct boot_config *bc, const char *name, const char* value)
+{
+	struct boot_config_var *v;
+	int ret;
+
+	if (!bc || !name || !value)
+		return -EINVAL;
+
+	v = calloc(1, sizeof(struct boot_config_var));
+	if (!v)
+		return -ENOMEM;
+
+	v->name = strdup(name);
+	if (!v->name) {
+		ret = -ENOMEM;
+		goto err;
+	}
+	v->value = strdup(value);
+	if (!v->name) {
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	list_add_tail(&v->list, &bc->vars);
+
+	return 0;
+err:
+	boot_config_var_free(v);
+
+	return ret;
+}
+
+int boot_config_set_env(struct boot_config *bc)
+{
+	struct boot_config_var *v;
+
+	if (!bc)
+		return -EINVAL;
+
+	list_for_each_entry(v, &bc->vars, list) {
+		setenv(v->name, v->value);
+		export(v->name);
+	}
+
+	setenv("kernel_dev", bc->kernel->dev);
+	setenv("kernel_name", bc->kernel->name);
+	setenv("kernel_fs", bc->kernel->fs);
+	setenv("kernel_path", bc->kernel->path);
+	setenv("kernel_format", bc->kernel->format);
+	export("kernel_dev");
+	export("kernel_name");
+	export("kernel_fs");
+	export("kernel_path");
+	export("kernel_format");
+
+	return 0;
+}
+
+int boot_config_unload(void)
+{
+	free(description);
+	description = NULL;
+
+	boot_config_free();
+	bed_list_free(&kernels);
+	bed_list_free(&initrds);
+	bed_list_free(&fdts);
+
+	return 0;
+}
diff --git a/common/boot_config_dts.c b/common/boot_config_dts.c
new file mode 100644
index 0000000..1ce9aa5
--- /dev/null
+++ b/common/boot_config_dts.c
@@ -0,0 +1,256 @@
+/*
+ * (C) Copyright 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2 of
+ * the License.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <malloc.h>
+#include <fs.h>
+#include <asm/byteorder.h>
+#include <libfdt.h>
+#include <boot_config.h>
+
+static void *data;
+
+#define DATA_PATH		"/data"
+#define CONFIGURATION_PATH	"/configuration"
+
+static int fdt_add_for_each_subnode(int offset, int (*add)(int offset))
+{
+	int depth;
+	int ret;
+
+	for (depth = 0, offset = fdt_next_node(data, offset, &depth);
+	     (offset >= 0) && (depth > 0);
+	     offset = fdt_next_node(data, offset, &depth)) {
+		if (depth == 1) {
+			ret = add(offset);
+			if (ret)
+				return ret;
+		}
+	}
+
+	return 0;
+}
+
+static int do_add_boot_config(int offset)
+{
+	const char* name = fdt_get_name(data, offset, NULL);
+	struct boot_config *bc = boot_config_alloc();
+	int ret;
+	int noffset;
+
+	if (!bc)
+		return -ENOMEM;
+
+	if (boot_config_get_by_name(name))
+		return -EEXIST;
+
+	bc->name = strdup(name);
+	if (!bc->name) {
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	for (noffset = fdt_first_property_offset(data, offset);
+	     (noffset >= 0);
+	     (noffset = fdt_next_property_offset(data, noffset))) {
+		const struct fdt_property *prop;
+		const char * var_name;
+		const char * var_value;
+
+		if (!(prop = fdt_get_property_by_offset(data, noffset, NULL))) {
+			offset = -FDT_ERR_INTERNAL;
+			break;
+		}
+
+		var_name = fdt_string(data, fdt32_to_cpu(prop->nameoff));
+		var_value = fdt_getprop(data, offset, var_name, NULL);
+
+		ret = boot_config_var_add(bc, var_name, var_value);
+		if (ret)
+			goto err;
+	}
+
+	ret = boot_config_item_init(bc);
+	if (ret)
+		goto err;
+
+	ret = boot_config_add(bc);
+	if (ret)
+		goto err;
+
+	return 0;
+err:
+	boot_config_item_free(bc);
+
+	return 0;
+}
+
+static int do_add_data_config(int offset)
+{
+	struct boot_config_data *bed = calloc(1, sizeof(*bed));
+	const char* name = fdt_get_name(data, offset, NULL);
+	const char* prop;
+	int ret = 0;
+
+	if (!bed)
+		return -ENOMEM;
+
+	bed->name = strdup(name);
+	if (!bed->name) {
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	prop = fdt_getprop(data, offset, "dev", NULL);
+	if (!prop) {
+		eprintf("%s: Missing dev\n", name);
+		ret = -EIO;
+		goto err;
+	}
+
+	bed->dev = strdup(prop);
+	if (!bed->dev) {
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	prop = fdt_getprop(data, offset, "path", NULL);
+	if (!prop) {
+		eprintf("%s: Missing path\n", name);
+		ret = -EIO;
+		goto err;
+	}
+
+	bed->path = strdup(prop);
+	if (!bed->path) {
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	prop = fdt_getprop(data, offset, "fs", NULL);
+	if (!prop) {
+		eprintf("%s: Missing fs\n", name);
+		ret = -EIO;
+		goto err;
+	}
+	bed->fs = strdup(prop);
+	if (!bed->fs) {
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	if (boot_config_debug)
+		printf("add %s\n", name);
+
+	if (strncmp(name, "kernel@", 7) == 0) {
+		prop = fdt_getprop(data, offset, "format", NULL);
+		if (!prop) {
+			eprintf("%s: Missing format\n", name);
+			ret = -EIO;
+			goto err;
+		}
+		bed->format = strdup(prop);
+		if (!bed->format) {
+			ret = -ENOMEM;
+			goto err;
+		}
+		ret = boot_config_kernel_add(bed);
+	} else if (strncmp(name, "initrd@", 7) == 0) {
+		ret = boot_config_initrd_add(bed);
+	} else if (strncmp(name, "fdt@", 4) == 0) {
+		ret = boot_config_fdt_add(bed);
+	} else {
+		eprintf("Unknown data format %s\n", name);
+		ret = -EIO;
+	}
+
+	if (ret)
+		goto err;
+
+	return 0;
+
+err:
+	boot_config_data_free(bed);
+	return 0;
+}
+
+
+int boot_config_load(char *filename)
+{
+	int offset;
+	const char* prop;
+	const uint32_t *prop_u32;
+	int ret = -1;
+
+	if (!filename)
+		return -EINVAL;
+
+	data = read_file(filename, NULL);
+	if (!data) {
+		perror("read_file");
+		goto exit;
+	}
+
+	offset = fdt_path_offset(data, DATA_PATH);
+
+	if (offset < 0) {
+		printf("Can't find '%s' node (%s)\n", DATA_PATH, fdt_strerror(offset));
+		goto exit_add;
+	}
+
+	fdt_add_for_each_subnode(offset, do_add_data_config);
+
+	offset = fdt_path_offset(data, CONFIGURATION_PATH);
+
+	fdt_add_for_each_subnode(offset, do_add_boot_config);
+
+	prop = fdt_getprop(data, offset, "description", NULL);
+	if (!prop)
+		prop = "boot";
+	boot_config_set_description(prop);
+
+	prop = fdt_getprop(data, offset, "default", NULL);
+	if (prop) {
+		if (boot_config_debug)
+			printf("default config %s\n", prop);
+
+		if (boot_config_set_default_boot_by_name(prop))
+			eprintf("Can not set config '%s' as default (not found)\n", prop);
+	}
+	prop_u32 = fdt_getprop(data, offset, "bootdelay", NULL);
+	if (prop_u32) {
+		boot_config_set_bootdelay(be32_to_cpu(*prop_u32));
+
+		if (boot_config_debug)
+			printf("auto boot in %ds\n", boot_config_get_bootdelay());
+	} else {
+		boot_config_set_bootdelay(-1);
+	}
+
+	ret = 0;
+
+exit_add:
+exit:
+	free(data);
+	return ret;
+}
diff --git a/include/boot_config.h b/include/boot_config.h
new file mode 100644
index 0000000..778ac4e
--- /dev/null
+++ b/include/boot_config.h
@@ -0,0 +1,158 @@
+/*
+ * (C) Copyright 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2 of
+ * the License.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef __BOOT_CONFIG_H__
+#define __BOOT_CONFIG_H__
+
+#include <malloc.h>
+#include <linux/list.h>
+
+extern int boot_config_debug;
+
+struct boot_config_data {
+	char *name;
+	char *format;
+	char *dev;
+	char *fs;
+	char *path;
+
+	struct list_head list;
+};
+
+struct boot_config_var {
+	char* name;
+	char* value;
+
+	struct list_head list;
+};
+
+struct boot_config {
+	char *name;
+	struct boot_config_data *kernel;
+	struct boot_config_data *initrd;
+	struct boot_config_data *fdt;
+
+	struct list_head list;
+	struct list_head vars;
+};
+
+/*
+ * boot_conig functions
+ */
+static inline struct boot_config* boot_config_alloc(void)
+{
+	struct boot_config *bc;
+
+	bc = calloc(1, sizeof(struct boot_config));
+	if (bc) {
+		INIT_LIST_HEAD(&bc->vars);
+	}
+	return bc;
+}
+
+char* boot_config_get_description(void);
+struct boot_config* boot_config_get_default_boot(void);
+uint32_t boot_config_get_bootdelay(void);
+
+int boot_config_set_description(const char *);
+int boot_config_set_default_boot(struct boot_config *b);
+int boot_config_set_default_boot_by_name(const char *s);
+int boot_config_set_bootdelay(uint32_t);
+
+struct list_head* boot_config_get_configs(void);
+struct list_head* boot_config_get_kernels(void);
+struct list_head* boot_config_get_initrds(void);
+struct list_head* boot_config_get_fdts(void);
+
+struct boot_config_data* bed_list_get_by_name(struct list_head *l, const char *name);
+
+static inline struct boot_config_data* boot_config_kernel_get_by_name(const char *name)
+{
+	return bed_list_get_by_name(boot_config_get_kernels(), name);
+}
+
+static inline struct boot_config_data* boot_config_initrd_get_by_name(const char *name)
+{
+	return bed_list_get_by_name(boot_config_get_initrds(), name);
+}
+
+static inline struct boot_config_data* boot_config_fdt_get_by_name(const char *name)
+{
+	return bed_list_get_by_name(boot_config_get_fdts(), name);
+}
+
+int bed_list_add(struct list_head *l, struct boot_config_data *bed);
+
+static inline int boot_config_kernel_add(struct boot_config_data *bed)
+{
+	return bed_list_add(boot_config_get_kernels(), bed);
+}
+
+static inline int boot_config_initrd_add(struct boot_config_data *bed)
+{
+	return bed_list_add(boot_config_get_initrds(), bed);
+}
+
+static inline int boot_config_fdt_add(struct boot_config_data *bed)
+{
+	return bed_list_add(boot_config_get_fdts(), bed);
+}
+
+void bed_list_free(struct list_head *l);
+
+static inline void boot_config_kernel_free(void)
+{
+	return bed_list_free(boot_config_get_kernels());
+}
+
+static inline void boot_config_initrd_free(void)
+{
+	return bed_list_free(boot_config_get_initrds());
+}
+
+static inline void boot_config_fdt_free(void)
+{
+	return bed_list_free(boot_config_get_fdts());
+}
+
+struct boot_config* boot_config_get_by_name(const char *name);
+int boot_config_add(struct boot_config *bc);
+int boot_config_add_by_name(const char *name, const char *desc,
+			    const char *kernel, const char *cmdline,
+			    const char *initrd, const char *fdt);
+int boot_config_item_init(struct boot_config *e);
+
+int boot_config_var_add(struct boot_config *bc, const char *name, const char* value);
+struct boot_config_var* boot_config_var_get_by_name(struct boot_config *bc,
+		const char *name);
+void boot_config_var_free(struct boot_config_var *v);
+
+int boot_config_remove_by_name(const char *name);
+void boot_config_free(void);
+void boot_config_item_free(struct boot_config *bc);
+void boot_config_data_free(struct boot_config_data *bed);
+int boot_config_set_env(struct boot_config *bc);
+
+int boot_config_load(char *filename);
+int boot_config_unload(void);
+
+#endif /* __BOOT_CONFIG_H__ */
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
