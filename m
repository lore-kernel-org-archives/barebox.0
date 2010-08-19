Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OlwH3-0000Nh-IN
	for barebox@lists.infradead.org; Thu, 19 Aug 2010 03:58:44 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Aug 2010 05:53:22 +0200
Message-Id: <1282190002-6807-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] Add Menu Framework
To: barebox@lists.infradead.org

Introduce a menu framework that allow us to create list menu to simplify
barebox and make it more user-frendly

This kind of menu is very usefull when you do not have a keyboard or a
serial console attached to your board to allow you to interract with
barebox

For the develloper part,
The framework introduce two API

1) C
that allow you to create menu, submenu, entry and complex menu action

2) Command
that allow you as the C API to create menu, submenu, entry and complex
menu action but this time the actions will be store in a function and
then be evaluated and excecuted at runtime.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig  |   10 ++
 commands/Makefile |    1 +
 commands/menu.c   |  463 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 common/Kconfig    |    7 +
 common/Makefile   |    1 +
 common/menu.c     |  303 ++++++++++++++++++++++++++++++++++
 include/menu.h    |   87 ++++++++++
 include/readkey.h |    5 +
 8 files changed, 877 insertions(+), 0 deletions(-)
 create mode 100644 commands/menu.c
 create mode 100644 common/menu.c
 create mode 100644 include/menu.h

diff --git a/commands/Kconfig b/commands/Kconfig
index 1ffc826..57c9b75 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -50,6 +50,16 @@ config CMD_FALSE
 	default y
 	prompt "false"
 
+config CMD_MENU
+	tristate
+	depends on MENU
+	prompt "menu"
+
+config CMD_MENU_MANAGEMENT
+	tristate
+	depends on CMD_MENU
+	prompt "menu scripts management"
+
 endmenu
 
 menu "file commands                 "
diff --git a/commands/Makefile b/commands/Makefile
index b99f042..154a778 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -50,3 +50,4 @@ obj-$(CONFIG_CMD_GPIO)		+= gpio.o
 obj-$(CONFIG_CMD_UNLZO)		+= unlzo.o
 obj-$(CONFIG_CMD_I2C)		+= i2c.o
 obj-$(CONFIG_CMD_UBI)		+= ubi.o
+obj-$(CONFIG_CMD_MENU)		+= menu.o
diff --git a/commands/menu.c b/commands/menu.c
new file mode 100644
index 0000000..4f33877
--- /dev/null
+++ b/commands/menu.c
@@ -0,0 +1,463 @@
+/*
+ * (C) Copyright 2009-2010 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
+
+typedef enum {
+#if defined(CONFIG_CMD_MENU_MANAGEMENT)
+	action_add,
+	action_remove,
+	action_select,
+#endif
+	action_list,
+	action_show,
+} menu_action;
+
+struct cmd_menu {
+	char		*menu;
+	menu_action	action;
+#if defined(CONFIG_CMD_MENU_MANAGEMENT)
+	int		entry;
+	int		re_entrant;
+	char		*description;
+	char		*command;
+	int		num;
+#endif
+};
+
+#if defined(CONFIG_CMD_MENU_MANAGEMENT)
+#define OPTS		"m:earlc:d:RsSn:"
+#define	is_entry(x)	((x)->entry)
+#else
+#define OPTS		"m:ls"
+#define	is_entry(x)	(0)
+#endif
+
+#if defined(CONFIG_CMD_MENU_MANAGEMENT)
+/*
+ * menu -e -a -m <menu> -c <command> [-R] -d <description>
+ */
+static int do_menu_entry_add(struct cmd_menu *cm)
+{
+	struct menu_entry *me;
+	struct menu *m;
+	int len;
+	int ret = -ENOMEM;
+
+	if (!cm->menu || !cm->command || !cm->description)
+		return -1;
+
+	m = menu_get_by_name(cm->menu);
+
+	if (!m) {
+		eprintf("Menu '%s' not found\n", cm->menu);
+		return -1;
+	}
+
+	me = menu_entry_alloc();
+
+	if (!me)
+		goto free;
+
+	me->action = menu_action_run;
+
+	len = strlen(cm->command) + 1;
+
+	me->priv = calloc(len, sizeof(char));
+
+	if (!me->priv)
+		goto free;
+
+	strncpy(me->priv, cm->command, len);
+
+	len = strlen(cm->description) + 1;
+
+	me->display = calloc(len, sizeof(char));;
+
+	if (!m->display)
+		goto free;
+
+	strncpy(me->display, cm->description, len);
+
+	ret = menu_add_entry(m, me);
+
+	if (ret)
+		goto free;
+
+	me->non_re_ent = !cm->re_entrant;
+
+	return 0;
+
+free:
+	eputs("Entry add fail\n");
+
+	free(me->priv);
+
+	menu_entry_free(me);
+
+	return ret;
+}
+
+/*
+ * menu -e -r -m <name> -n <num>
+ */
+static int do_menu_entry_remove(struct cmd_menu *cm)
+{
+	struct menu *m;
+	struct menu_entry *me;
+
+	if (!cm->menu || cm->num < 0)
+		return -1;
+
+	m = menu_get_by_name(cm->menu);
+
+	if (!m) {
+		eprintf("Menu '%s' not found\n", cm->menu);
+		return -1;
+	}
+
+	me = menu_entry_get_by_num(m, cm->num);
+
+	if (!me) {
+		eprintf("Entry '%s' not found\n", cm->num);
+		return -1;
+	}
+
+	menu_remove_entry(m, me);
+
+	menu_entry_free(me);
+
+	return 0;
+}
+
+/*
+ * menu -a -m <name> -d <description>
+ */
+static int do_menu_add(struct cmd_menu *cm)
+{
+	struct menu *m;
+	int len = 0;
+	int ret = -ENOMEM;
+
+	if (!cm->menu || !cm->description)
+		return -1;
+
+	m = menu_alloc();
+
+	if (!m)
+		goto free;
+
+	len = strlen(cm->menu) + 1;
+
+	m->name = calloc(len, sizeof(char));;
+	if (!m->name)
+		goto free;
+
+	strncpy(m->name, cm->menu, len);
+
+	len = strlen(cm->description) + 1;
+
+	m->display = calloc(len, sizeof(char));;
+
+	if (!m->display)
+		goto free;
+
+	strncpy(m->display, cm->description, len);
+
+	ret = menu_add(m);
+
+	if (ret)
+		goto free;
+
+	return 0;
+
+free:
+	eprintf("Menu '%s' add fail\n", cm->menu);
+
+	menu_free(m);
+
+	return ret;
+}
+/*
+ * menu -r -m <name>
+ */
+static int do_menu_remove(struct cmd_menu *cm)
+{
+	struct menu *m;
+
+	m = menu_get_by_name(cm->menu);
+
+	if (!m) {
+		eprintf("Menu '%s' not found\n", cm->menu);
+		return -1;
+	}
+
+	menu_remove(m);
+
+	menu_free(m);
+
+	return 0;
+}
+
+/*
+ * menu -m <menu> -S -n <entry num starting at 1>
+ */
+static int do_menu_select(struct cmd_menu *cm)
+{
+	struct menu *m;
+
+	if (cm->num < 0)
+		return -1;
+
+	m = menu_get_by_name(cm->menu);
+
+	if (!m) {
+		eprintf("Menu '%s' not found\n", cm->menu);
+		return -1;
+	}
+
+	if (!menu_set_selected(m, cm->num)) {
+		eprintf("Entry '%d' not found\n", cm->num);
+		return -1;
+	}
+
+	return 0;
+}
+#endif
+
+/*
+ * menu -s -m <menu>
+ */
+static int do_menu_show(struct cmd_menu *cm)
+{
+	struct menu *m;
+
+	if (cm->menu)
+		m = menu_get_by_name(cm->menu);
+	else
+		m = menu_get_by_name("boot");
+
+	return menu_show(m);
+}
+
+static void print_entries(struct menu *m)
+{
+	struct list_head *pos;
+	struct menu_entry *me;
+
+	list_for_each(pos, &(m->entries.list)) {
+		me = list_entry(pos, struct menu_entry, list);
+		printf("%d: %s\n", me->num, me->display);
+	}
+}
+
+/*
+ * menu -l
+ * menu -e -l [menu]
+ */
+static int do_menu_list(struct cmd_menu *cm)
+{
+	struct list_head *pos;
+	struct menu* m = NULL;
+	struct menu* menus = menu_get_menus();
+
+	if (is_entry(cm)) {
+		if (cm->menu)
+			m = menu_get_by_name(cm->menu);
+
+		if (m) {
+			print_entries(m);
+			return 0;
+		}
+	}
+
+	list_for_each(pos, &menus->list) {
+		m = list_entry(pos, struct menu, list);
+		printf("%s: %s\n", m->name, m->display? m->display : m->name);
+		if (is_entry(cm))
+			print_entries(m);
+	}
+
+	return 0;
+}
+
+#if defined(CONFIG_CMD_MENU_MANAGEMENT)
+static int do_menu_entry(struct cmd_menu *cm)
+{
+	switch(cm->action) {
+	case action_list:
+		return do_menu_list(cm);
+	case action_remove:
+		return do_menu_entry_remove(cm);
+	case action_add:
+		return do_menu_entry_add(cm);
+	case action_select:
+	case action_show:
+		break;
+	}
+	return -1;
+}
+#else
+static int do_menu_entry(struct cmd_menu *cm)
+{
+	return -1;
+}
+#endif
+
+static int do_menu(struct command *cmdtp, int argc, char *argv[])
+{
+	struct cmd_menu cm;
+	int opt;
+
+	memset(&cm, 0, sizeof(struct cmd_menu));
+#if defined(CONFIG_CMD_MENU_MANAGEMENT)
+	cm.num = -1;
+#endif
+
+	cm.action = action_show;
+
+	while((opt = getopt(argc, argv, OPTS)) > 0) {
+		switch(opt) {
+		case 'm':
+			cm.menu = optarg;
+			break;
+			break;
+		case 'l':
+			cm.action = action_list;
+			break;
+		case 's':
+			cm.action = action_show;
+			break;
+#if defined(CONFIG_CMD_MENU_MANAGEMENT)
+		case 'e':
+			cm.entry = 1;
+		case 'a':
+			cm.action = action_add;
+			break;
+		case 'r':
+			cm.action = action_remove;
+			break;
+		case 'c':
+			cm.command = optarg;
+			break;
+		case 'd':
+			cm.description = optarg;
+			break;
+		case 'R':
+			cm.re_entrant = 1;
+			break;
+		case 'S':
+			cm.action = action_select;
+			break;
+		case 'n':
+			cm.num = simple_strtoul(optarg, NULL, 10);
+			break;
+#endif
+		default:
+			return 1;
+		}
+	}
+
+	if (is_entry(&cm))
+		return do_menu_entry(&cm);
+
+	switch(cm.action) {
+	case action_list:
+		return do_menu_list(&cm);
+#if defined(CONFIG_CMD_MENU_MANAGEMENT)
+	case action_remove:
+		return do_menu_remove(&cm);
+	case action_add:
+		return do_menu_add(&cm);
+	case action_select:
+		return do_menu_select(&cm);
+#endif
+	case action_show:
+		return do_menu_show(&cm);
+	}
+
+	return 0;
+}
+	
+static const __maybe_unused char cmd_menu_help[] =
+"Usage: menu [OPTION]... \n"
+"Manage Menu\n"
+"  -m  menu\n"
+"  -l  list\n"
+"  -s  show\n"
+#if defined(CONFIG_CMD_MENU_MANAGEMENT)
+"Advanced\n"
+"  -e  menu entry\n"
+"  -a  add\n"
+"  -r  remove\n"
+"  -S  select\n"
+#endif
+"\n"
+"How to\n"
+"\n"
+"Show menu\n"
+"  menu -s -m <menu>\n"
+"\n"
+"List menu\n"
+"  menu -l\n"
+"\n"
+#if defined(CONFIG_CMD_MENU_MANAGEMENT)
+"Add a menu\n"
+"  menu -a -m <name> -d <description>\n"
+"\n"
+"Remove a menu\n"
+"  menu -r -m <name>\n"
+"\n"
+"Add an entry\n"
+"  (-R for do no exit the menu after executing the command)\n"
+"  menu -e -a -m <menu> -c <command> [-R] -d <description>\n"
+"\n"
+"Remove an entry\n"
+"  menu -e -r -m <name> -n <num>\n"
+"\n"
+"Select an entry\n"
+"  menu -m <menu> -S -n <entry num starting at 1>\n"
+"\n"
+"List menu\n"
+"  menu -e -l [menu]\n"
+"\n"
+"Menu example\n"
+"menu -a -m boot -d \"Boot Menu\"\n"
+"menu -e -a -m boot -c boot -d \"Boot\"\n"
+"menu -e -a -m boot -c reset -d \"Reset\"\n"
+"menu -s -m boot\n"
+#else
+"Menu example\n"
+"menu -s -m boot\n"
+#endif
+;
+
+BAREBOX_CMD_START(menu)
+	.cmd		= do_menu,
+	.usage		= "Menu Management",
+	BAREBOX_CMD_HELP(cmd_menu_help)
+BAREBOX_CMD_END
diff --git a/common/Kconfig b/common/Kconfig
index a58f242..c07c638 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -244,6 +244,13 @@ config AUTO_COMPLETE
 	depends on CMDLINE_EDITING
 	prompt "Enable auto completion"
 
+config MENU
+	bool
+	prompt "Menu Framework"
+	help
+	   a menu framework that allow us to create list menu to simplify
+	   barebox and make it more user-frendly
+
 config DYNAMIC_CRC_TABLE
 	bool
 	depends on CRC32
diff --git a/common/Makefile b/common/Makefile
index 14f8643..4b8cce0 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -15,6 +15,7 @@ obj-y += env.o
 obj-y += startup.o
 obj-y += misc.o
 obj-y += memsize.o
+obj-$(CONFIG_MENU) += menu.o
 obj-$(CONFIG_MODULES) += module.o
 extra-$(CONFIG_MODULES) += module.lds
 
diff --git a/common/menu.c b/common/menu.c
new file mode 100644
index 0000000..70553db
--- /dev/null
+++ b/common/menu.c
@@ -0,0 +1,303 @@
+/*
+ * (C) Copyright 2009-2010 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
+#include <environment.h>
+#include <init.h>
+#include <menu.h>
+#include <malloc.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <readkey.h>
+
+static struct menu menus;
+
+struct menu* menu_get_menus(void)
+{
+	return &menus;
+}
+
+void menu_free(struct menu *m)
+{
+	struct list_head *pos;
+	struct menu_entry *me;
+
+	if (!m)
+		return;
+	free(m->name);
+	free(m->display);
+
+	list_for_each(pos, &m->entries.list) {
+		me = list_entry(pos, struct menu_entry, list);
+		menu_entry_free(me);
+		list_del(pos);
+	}
+
+	free(m);
+}
+
+int menu_add(struct menu *m)
+{
+	if (!m || !m->name)
+		return -1;
+
+	list_add_tail(&m->list, &menus.list);
+	m->nb_entries = 0;
+
+	INIT_LIST_HEAD(&m->entries.list);
+
+	return 0;
+}
+
+void menu_remove(struct menu *m)
+{
+	if (!m)
+		return;
+
+	list_del(&m->list);
+}
+
+int menu_add_entry(struct menu *m, struct menu_entry *me)
+{
+	int len;
+
+	if (!m || !me || !me->display)
+		return -1;
+
+	len = strlen(me->display);
+
+	m->width = max(len, m->width);
+
+	m->nb_entries++;
+	me->num = m->nb_entries;
+	list_add_tail(&me->list, &m->entries.list);
+
+	return 0;
+}
+
+void menu_remove_entry(struct menu *m, struct menu_entry *me)
+{
+	if (!m || !me)
+		return;
+
+	m->nb_entries--;
+	list_del(&me->list);
+
+	return;
+}
+
+struct menu* menu_get_by_name(char *name)
+{
+	struct list_head *pos;
+	struct menu* m;
+
+	if (!name)
+		return NULL;
+
+	list_for_each(pos, &menus.list) {
+		m = list_entry(pos, struct menu, list);
+		if(strcmp(m->name, name) == 0)
+			return m;
+	}
+
+	return NULL;
+}
+
+struct menu_entry* menu_entry_get_by_num(struct menu* m, int num)
+{
+	struct list_head *pos;
+	struct menu_entry* me;
+
+	if (!m || num < 1 || num > m->nb_entries)
+		return NULL;
+
+	list_for_each(pos, &m->entries.list) {
+		me = list_entry(pos, struct menu_entry, list);
+		if(me->num == num)
+			return me;
+	}
+
+	return NULL;
+}
+
+void menu_entry_free(struct menu_entry *me)
+{
+	if (!me)
+		return;
+
+	free(me->display);
+	free(me);
+}
+
+static void print_menu_entry(struct menu *m, struct menu_entry *me, int reverse)
+{
+	gotoXY(me->num + 1, 3);
+	if (reverse)
+		printf_reverse("%d: %-*s", me->num, m->width, me->display);
+	else
+		printf("%d: %-*s", me->num, m->width, me->display);
+}
+
+int menu_set_selected_entry(struct menu *m, struct menu_entry* me)
+{
+	struct list_head *pos;
+	struct menu_entry* tmp;
+
+	if (!m || !me)
+		return -1;
+
+	list_for_each(pos, &m->entries.list) {
+		tmp = list_entry(pos, struct menu_entry, list);
+		if(me == tmp) {
+			m->selected = me;
+			return 0;
+		}
+	}
+
+	return -1;
+}
+
+int menu_set_selected(struct menu *m, int num)
+{
+	struct menu_entry *me;
+
+	me = menu_entry_get_by_num(m, num);
+
+	if (!me)
+		return -1;
+
+	m->selected = me;
+
+	return 0;
+}
+
+static void print_menu(struct menu *m)
+{
+	struct list_head *pos;
+	struct menu_entry *me;
+
+	clear();
+	gotoXY(1, 2);
+	if(m->display) {
+		puts(m->display);
+	} else {
+		puts("Menu : ");
+		puts(m->name);
+	}
+
+	list_for_each(pos, &m->entries.list) {
+		me = list_entry(pos, struct menu_entry, list);
+		if(m->selected != me)
+			print_menu_entry(m, me, 0);
+	}
+
+	if (!m->selected) {
+		m->selected = list_first_entry(&m->entries.list,
+						struct menu_entry, list);
+	}
+
+	print_menu_entry(m, m->selected, 1);
+}
+
+int menu_show(struct menu *m)
+{
+	int ch;
+	int escape = 0;
+
+	if(!m || list_empty(&m->entries.list))
+		return -1;
+
+	print_menu(m);
+
+	do {
+		ch = getc();
+		switch(ch) {
+		case 0x1b:
+			escape = 1;
+			break;
+		case '[':
+			if (escape)
+				break;
+		case 'A': /* up */
+			escape = 0;
+			print_menu_entry(m, m->selected, 0);
+			m->selected = list_entry(m->selected->list.prev, struct menu_entry,
+						 list);
+			if (&(m->selected->list) == &(m->entries.list)) {
+				m->selected = list_entry(m->selected->list.prev, struct menu_entry,
+							 list);
+			}
+			print_menu_entry(m, m->selected, 1);
+			break;
+		case 'B': /* down */
+			escape = 0;
+			print_menu_entry(m, m->selected, 0);
+			m->selected = list_entry(m->selected->list.next, struct menu_entry,
+						 list);
+			if (&(m->selected->list) == &(m->entries.list)) {
+				m->selected = list_entry(m->selected->list.next, struct menu_entry,
+							 list);
+			}
+			print_menu_entry(m, m->selected, 1);
+			break;
+		case '\n':
+		case '\r':
+			clear();
+			gotoXY(1,1);
+			m->selected->action(m, m->selected);
+			if (m->selected->non_re_ent)
+				return m->selected->num;
+			else
+				print_menu(m);
+		default:
+			break;
+		}
+	} while(1);
+
+	return 0;
+}
+
+void menu_action_exit(struct menu *m, struct menu_entry *me) {}
+
+void menu_action_run(struct menu *m, struct menu_entry *me)
+{
+	int ret;
+	const char *s = getenv((const char*)me->priv);
+
+	/* can be a command as boot */
+	if (!s)
+		s = me->priv;
+
+	ret = run_command (s, 0);
+
+	if (ret < 0)
+		udelay(1000000);
+}
+
+static int menu_init(void)
+{
+	INIT_LIST_HEAD(&menus.list);
+
+	return 0;
+}
+postcore_initcall(menu_init);
diff --git a/include/menu.h b/include/menu.h
new file mode 100644
index 0000000..29f18f2
--- /dev/null
+++ b/include/menu.h
@@ -0,0 +1,87 @@
+/*
+ * (C) Copyright 2009-2010 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
+#ifndef __MENU_H__
+#define __MENU_H__
+
+#include <linux/list.h>
+#include <malloc.h>
+
+struct menu;
+
+struct menu_entry {
+	int num;
+	char *display;
+	void (*action)(struct menu *m, struct menu_entry *me);
+	int non_re_ent;
+
+	struct list_head list;
+	void *priv;
+};
+
+struct menu {
+	char *name;
+	char *display;
+
+	struct list_head list;
+	struct menu_entry entries;
+	int nb_entries;
+	int width;
+	struct menu_entry *selected;
+	void *priv;
+};
+
+/*
+ * menu functions
+ */
+static inline struct menu* menu_alloc(void)
+{
+	return calloc(1, sizeof(struct menu));
+}
+void menu_free(struct menu *m);
+int menu_add(struct menu* m);
+void menu_remove(struct menu *m);
+struct menu* menu_get_by_name(char *name);
+int menu_show(struct menu *m);
+int menu_set_selected_entry(struct menu *m, struct menu_entry* me);
+int menu_set_selected(struct menu *m, int num);
+struct menu* menu_get_menus(void);
+
+/*
+ * menu entry functions
+ */
+static inline struct menu_entry* menu_entry_alloc(void)
+{
+	return calloc(1, sizeof(struct menu_entry));
+}
+void menu_entry_free(struct menu_entry *me);
+int menu_add_entry(struct menu *m, struct menu_entry* me);
+void menu_remove_entry(struct menu *m, struct menu_entry *me);
+struct menu_entry* menu_entry_get_by_num(struct menu* m, int num);
+
+/*
+ * menu entry action functions
+ */
+void menu_action_run(struct menu *m, struct menu_entry *me);
+void menu_action_exit(struct menu *m, struct menu_entry *me);
+
+#endif /* __MENU_H__ */
diff --git a/include/readkey.h b/include/readkey.h
index 919af64..aabb835 100644
--- a/include/readkey.h
+++ b/include/readkey.h
@@ -22,6 +22,11 @@
 
 #define ANSI_CLEAR_SCREEN "\e[2J\e[;H"
 
+#define printf_reverse(fmt,args...)	printf("\e[7m" fmt "\e[m",##args)
+#define puts_reverse(fmt)		puts("\e[7m" fmt "\e[m")
+#define gotoXY(row, col)		printf("\e[%d;%dH", row, col)
+#define clear()				puts("\e[2J")
+
 int read_key(void);
 
 #endif /* READKEY_H */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
