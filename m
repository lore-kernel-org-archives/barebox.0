Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RJisr-0003BT-3R
	for barebox@lists.infradead.org; Fri, 28 Oct 2011 09:37:54 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id D99F51004470
	for <barebox@lists.infradead.org>;
	Fri, 28 Oct 2011 11:40:39 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 28 Oct 2011 17:37:40 +0800
Message-Id: <1319794660-6295-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1319794660-6295-1-git-send-email-plagnioj@jcrosoft.com>
References: <20111028093456.GA7961@game.jcrosoft.org>
	<1319794660-6295-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] add boot_menu command support
To: barebox@lists.infradead.org

this just contain the bootmenu for boot_config can not yet boot for real

this will allow to create a boot menu from a dtb file that can be provided
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
barebox:/ boot_config -f /dev/fd0
barebox:/ boot_menu

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig     |    5 +
 commands/Makefile    |    1 +
 commands/boot_menu.c |  234 ++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 240 insertions(+), 0 deletions(-)
 create mode 100644 commands/boot_menu.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 7980ab7..7d906c0 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -80,6 +80,11 @@ config CMD_BOOT_CONFIG_MANAGEMENT
 	depends on CMD_BOOT_CONFIG
 	prompt "boot config management"
 
+config CMD_BOOT_MENU
+	tristate
+	depends on BOOT_CONFIG
+	prompt "boot menu"
+
 config CMD_LOGIN
 	tristate
 	select PASSWORD
diff --git a/commands/Makefile b/commands/Makefile
index a832302..b7ca49c 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -59,3 +59,4 @@ obj-$(CONFIG_CMD_USB)		+= usb.o
 obj-$(CONFIG_CMD_TIME)		+= time.o
 obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
 obj-$(CONFIG_CMD_BOOT_CONFIG)	+= boot_config.o
+obj-$(CONFIG_CMD_BOOT_MENU)	+= boot_menu.o
diff --git a/commands/boot_menu.c b/commands/boot_menu.c
new file mode 100644
index 0000000..3e09a29
--- /dev/null
+++ b/commands/boot_menu.c
@@ -0,0 +1,234 @@
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
+#include <menu.h>
+#include <getopt.h>
+#include <errno.h>
+#include <linux/err.h>
+#include <libfdt.h>
+#include <fs.h>
+#include <asm/byteorder.h>
+#include <boot_config.h>
+
+static struct menu *boot_menu;
+static int debug;
+
+struct boot_menu_entry {
+	struct boot_config *config;
+	struct menu_entry entry;
+};
+
+static void print_boot_entry_data(struct boot_config_data *bed)
+{
+	if (bed->format)
+		printf("format  = '%s'\n", bed->format);
+	printf("dev     = '%s'\n", bed->dev);
+	printf("fs      = '%s'\n", bed->fs);
+	printf("path    = '%s'\n", bed->path);
+}
+
+static void boot_menu_action(struct menu *m, struct menu_entry *me)
+{
+	struct boot_menu_entry *e = container_of(me, struct boot_menu_entry, entry);
+	struct boot_config_var *v;
+
+	if (debug) {
+		printf("Boot '%s'\n", me->display);
+		v = boot_config_var_get_by_name(e->config, "cmdline");
+		printf("cmdline = '%s'\n", v->value);
+
+		v = boot_config_var_get_by_name(e->config, "splash");
+		if (v)
+			printf("splash  = '%s'\n", v->value);
+
+		printf("[Kernel]\n");
+		print_boot_entry_data(e->config->kernel);
+
+		if (e->config->initrd) {
+			printf("[Initrd]\n");
+			print_boot_entry_data(e->config->initrd);
+		}
+
+		if (e->config->fdt) {
+			printf("[fdt]\n");
+			print_boot_entry_data(e->config->fdt);
+		}
+	}
+
+	boot_config_set_env(e->config);
+}
+
+static void boot_menu_entry_free(struct menu_entry *me)
+{
+	struct boot_menu_entry *e = container_of(me, struct boot_menu_entry, entry);
+
+	free(e);
+}
+
+static int menu_set_selected_config(const char* name)
+{
+	struct menu_entry* me;
+	struct boot_menu_entry *e;
+
+	list_for_each_entry(me, &boot_menu->entries, list) {
+		e = container_of(me, struct boot_menu_entry, entry);
+
+		if (strcmp(e->config->name, name) == 0) {
+			menu_set_selected_entry(boot_menu, me);
+			return 0;
+		}
+	}
+
+	return -1;
+}
+
+static int boot_menu_add_entry(struct boot_config *bc)
+{
+	struct boot_menu_entry *e = calloc(1, sizeof(*e));
+	struct boot_config_var *v;
+	int ret;
+
+	if (!e)
+		return -ENOMEM;
+
+	if (debug)
+		printf("Boot '%s'\n", bc->name);
+
+	v = boot_config_var_get_by_name(e->config, "description");
+	if (v)
+		e->entry.display = v->value;
+	else
+		e->entry.display = bc->name;
+	e->entry.action = boot_menu_action;
+	e->entry.free = boot_menu_entry_free;
+	e->entry.type = 0;
+	e->entry.non_re_ent = 1;
+	e->config = bc;
+
+	if (!e->entry.display) {
+		ret = -ENOMEM;
+		goto err_free;
+	}
+
+	ret = menu_add_entry(boot_menu, &e->entry);
+	if (ret)
+		goto err_free;
+
+	return 0;
+err_free:
+	boot_menu_entry_free(&e->entry);
+	return ret;
+}
+
+static void boot_menu_populate(void)
+{
+	struct list_head *configs = boot_config_get_configs();
+	struct boot_config* bc;
+
+	list_for_each_entry(bc, configs, list) {
+		boot_menu_add_entry(bc);
+	}
+}
+
+static int do_boot_menu(struct command *cmdtp, int argc, char *argv[])
+{
+	int opt;
+	char* prop;
+	uint32_t bootdelay;
+	struct menu_entry *me;
+	int ret = COMMAND_ERROR_USAGE;
+	struct boot_config *default_boot;
+
+	debug = 0;
+
+	while((opt = getopt(argc, argv, "d")) > 0) {
+		switch(opt) {
+		case 'd':
+			debug = 1;
+			break;
+		}
+	}
+
+	boot_menu = menu_alloc();
+	boot_menu->name = strdup("boot");
+
+	boot_menu->display = strdup("description");
+
+	ret = menu_add(boot_menu);
+
+	prop = boot_config_get_description();
+	if (!prop)
+		prop = boot_menu->name;
+	boot_menu->display = strdup(prop);
+
+	boot_menu_populate();
+
+	default_boot = boot_config_get_default_boot();
+	if (default_boot) {
+		if (debug)
+			printf("default config %s\n", default_boot->name);
+
+		menu_set_selected_config(default_boot->name);
+	}
+	bootdelay = boot_config_get_bootdelay();
+	if (bootdelay != -1) {
+		if (debug)
+			printf("auto boot in %ds\n", bootdelay);
+		menu_set_auto_select(boot_menu, bootdelay);
+	} else {
+		boot_menu->auto_select = -1;
+	}
+
+	me = menu_add_command_entry(boot_menu, "shell", "exit", 0);
+	me->non_re_ent = 1;
+
+	me = menu_add_command_entry(boot_menu, "reset", "reset", 0);
+
+	if (debug) {
+		printf("Press any key to go to the Menu\n");
+		getc();
+	}
+
+	menu_show(boot_menu);
+
+	ret = 0;
+
+exit_add:
+	menu_remove(boot_menu);
+exit:
+	menu_free(boot_menu);
+	return ret;
+}
+
+static const __maybe_unused char cmd_boot_menu_help[] =
+"Usage: boot_menu [OPTION]... \n"
+"Boot Menu\n"
+"  -d  debug\n";
+
+BAREBOX_CMD_START(boot_menu)
+	.cmd		= do_boot_menu,
+	.usage		= "Boot Menu",
+	BAREBOX_CMD_HELP(cmd_boot_menu_help)
+BAREBOX_CMD_END
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
