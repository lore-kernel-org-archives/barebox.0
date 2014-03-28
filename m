Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTSsa-0006KC-98
 for barebox@lists.infradead.org; Fri, 28 Mar 2014 09:15:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Mar 2014 10:14:42 +0100
Message-Id: <1395998083-18979-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1395998083-18979-1-git-send-email-s.hauer@pengutronix.de>
References: <1395998083-18979-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] add menutree command
To: barebox@lists.infradead.org

Creating menus from the shell using the regular 'menu' command is rather
complicated. This adds a 'menutree' command which creates a menu from
a directory structure. In the directory structure each directory corresponds
to a single menu entry. The directory contains the following files:

title -  A file containing the title of the entry as shown in the menu
box -    If present, the entry is a 'bool' entry. The file contains a variable
         name from which the current state of the bool is taken from and saved
         to.
action - if present this file contains a shell script which is executed when
         when the entry is selected.

If neither 'box' or 'action' are present this entry is considered a submenu
containing more entries.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig    |   8 +++
 commands/Makefile   |   1 +
 commands/menutree.c |  60 +++++++++++++++++
 common/Kconfig      |   3 +
 common/Makefile     |   1 +
 common/menutree.c   | 181 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/menu.h      |   2 +
 7 files changed, 256 insertions(+)
 create mode 100644 commands/menutree.c
 create mode 100644 common/menutree.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 352e8bf..cc014f3 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -90,6 +90,14 @@ config CMD_MENU_MANAGEMENT
 	depends on CMD_MENU
 	prompt "menu scripts management"
 
+config CMD_MENUTREE
+	bool
+	depends on MENU
+	select MENUTREE
+	prompt "menutree"
+	help
+	  The menutree command allows to create a menu from a directory structure
+
 config CMD_LOGIN
 	tristate
 	select PASSWORD
diff --git a/commands/Makefile b/commands/Makefile
index 91ec0e9..e463031 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -94,3 +94,4 @@ obj-$(CONFIG_CMD_DETECT)	+= detect.o
 obj-$(CONFIG_CMD_BOOT)		+= boot.o
 obj-$(CONFIG_CMD_DEVINFO)	+= devinfo.o
 obj-$(CONFIG_CMD_READF)		+= readf.o
+obj-$(CONFIG_CMD_MENUTREE)	+= menutree.o
diff --git a/commands/menutree.c b/commands/menutree.c
new file mode 100644
index 0000000..3b1a263
--- /dev/null
+++ b/commands/menutree.c
@@ -0,0 +1,60 @@
+/*
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+#include <command.h>
+#include <common.h>
+#include <getopt.h>
+#include <menu.h>
+
+static int do_menutree(int argc, char *argv[])
+{
+	int opt, ret;
+	char *path = "/env/menu";
+
+	while ((opt = getopt(argc, argv, "m:")) > 0) {
+		switch (opt) {
+		case 'm':
+			path = optarg;
+			break;
+		}
+	}
+
+	ret = menutree(path, 1);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(menutree)
+BAREBOX_CMD_HELP_USAGE("menutree [OPTIONS]\n")
+"\n"
+"Create a menu from a directory structure\n"
+"Each menu entry is described by a subdirectory. Each subdirectory\n"
+"can contain the following files which further describe the entry:\n"
+"\n"
+"title -  A file containing the title of the entry as shown in the menu\n"
+"box -    If present, the entry is a 'bool' entry. The file contains a variable\n"
+"         name from which the current state of the bool is taken from and saved\n"
+"         to.\n"
+"action - if present this file contains a shell script which is executed when\n"
+"         when the entry is selected.\n"
+"If neither 'box' or 'action' are present this entry is considered a submenu\n"
+"containing more entries.\n"
+"\n"
+"Options:\n"
+" -m <dir>     directory where the menu starts (/env/menu)\n"
+
+BAREBOX_CMD_HELP_END
+
+
+BAREBOX_CMD_START(menutree)
+	.cmd	= do_menutree,
+	.usage		= "create a menu from a directory structure",
+	BAREBOX_CMD_HELP(cmd_menutree_help)
+BAREBOX_CMD_END
diff --git a/common/Kconfig b/common/Kconfig
index 84c52fc..bc54e97 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -62,6 +62,9 @@ config STDDEV
 config BAREBOX_UPDATE
 	bool
 
+config MENUTREE
+	bool
+
 menu "General Settings"
 
 config LOCALVERSION
diff --git a/common/Makefile b/common/Makefile
index 667c7b3..204241c 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -43,6 +43,7 @@ obj-$(CONFIG_RESET_SOURCE)	+= reset_source.o
 obj-$(CONFIG_SHELL_HUSH)	+= hush.o
 obj-$(CONFIG_SHELL_SIMPLE)	+= parser.o
 obj-$(CONFIG_UIMAGE)		+= image.o uimage.o
+obj-$(CONFIG_MENUTREE) += menutree.o
 
 quiet_cmd_pwd_h = PWDH    $@
 ifdef CONFIG_PASSWORD
diff --git a/common/menutree.c b/common/menutree.c
new file mode 100644
index 0000000..814512d
--- /dev/null
+++ b/common/menutree.c
@@ -0,0 +1,181 @@
+/*
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
+#include <environment.h>
+#include <libbb.h>
+#include <common.h>
+#include <glob.h>
+#include <menu.h>
+#include <fs.h>
+
+#include <linux/stat.h>
+
+struct menutree {
+	char *action;
+	struct menu_entry me;
+};
+
+static void menutree_action_subdir(struct menu *m, struct menu_entry *me)
+{
+	struct menutree *mt = container_of(me, struct menutree, me);
+
+	menutree(mt->action, 0);
+}
+
+static void menutree_action(struct menu *m, struct menu_entry *me)
+{
+	struct menutree *mt = container_of(me, struct menutree, me);
+
+	run_command(mt->action);
+}
+
+static void setenv_bool(const char *var, bool val)
+{
+	const char *str;
+
+	if (val)
+		str = "1";
+	else
+		str = "0";
+
+	setenv(var, str);
+}
+
+static void menutree_box(struct menu *m, struct menu_entry *me)
+{
+	struct menutree *mt = container_of(me, struct menutree, me);
+
+	setenv_bool(mt->action, me->box_state);
+}
+
+static void menutree_entry_free(struct menu_entry *me)
+{
+	struct menutree *mt = container_of(me, struct menutree, me);
+
+	free(mt->action);
+	free(mt->me.display);
+	free(mt);
+}
+
+/*
+ * menutree - show a menu constructed from a directory structure
+ * @path: the path to the directory structure
+ *
+ * Each menu entry is described by a subdirectory. Each subdirectory
+ * can contain the following files which further describe the entry:
+ *
+ * title - A file containing the title of the entry as shown in the menu
+ * box - If present, the entry is a 'bool' entry. The file contains a variable
+ *       name from which the current state of the bool is taken from and saved
+ *       to.
+ * action - if present this file contains a shell script which is executed when
+ *          when the entry is selected.
+ *
+ * If neither 'box' or 'action' are present this entry is considered a submenu
+ * containing more entries.
+ */
+int menutree(const char *path, int toplevel)
+{
+	int ret;
+	struct menu *menu;
+	struct stat s;
+	char *box;
+	struct menutree *mt;
+	glob_t g;
+	int i;
+	char *globpath, *display;
+
+	menu = menu_alloc();
+
+	globpath = asprintf("%s/*", path);
+	ret = glob(globpath, 0, NULL, &g);
+	free(globpath);
+	if (ret == GLOB_NOMATCH) {
+		ret = -EINVAL;
+		goto out;
+	}
+
+	display = read_file_line("%s/title", path);
+	if (!display) {
+		eprintf("no title found in %s/title\n", path);
+		ret = -EINVAL;
+		goto out;
+	}
+
+	menu->display = shell_expand(display);
+	free(display);
+
+	for (i = 0; i < g.gl_pathc; i++) {
+		ret = stat(g.gl_pathv[i], &s);
+		if (ret)
+			goto out;
+
+		if (!S_ISDIR(s.st_mode))
+			continue;
+
+		mt = xzalloc(sizeof(*mt));
+
+		display = read_file_line("%s/title", g.gl_pathv[i]);
+		if (!display) {
+			eprintf("no title found in %s/title\n", g.gl_pathv[i]);
+			ret = -EINVAL;
+			goto out;
+		}
+
+		mt->me.display = shell_expand(display);
+		free(display);
+		mt->me.free = menutree_entry_free;
+
+		box = read_file_line("%s/box", g.gl_pathv[i]);
+		if (box) {
+			mt->me.type = MENU_ENTRY_BOX;
+			mt->me.action = menutree_box;
+			mt->action = box;
+			getenv_bool(box, &mt->me.box_state);
+			menu_add_entry(menu, &mt->me);
+			continue;
+		}
+
+		mt->me.type = MENU_ENTRY_NORMAL;
+
+		mt->action = asprintf("%s/action", g.gl_pathv[i]);
+
+		ret = stat(mt->action, &s);
+		if (ret) {
+			mt->me.action = menutree_action_subdir;
+			free(mt->action);
+			mt->action = xstrdup(g.gl_pathv[i]);
+		} else {
+			mt->me.action = menutree_action;
+		}
+
+		menu_add_entry(menu, &mt->me);
+	}
+
+	if (!toplevel) {
+		mt = xzalloc(sizeof(*mt));
+		mt->me.display = xstrdup("back");
+		mt->me.type = MENU_ENTRY_NORMAL;
+		mt->me.non_re_ent = 1;
+		mt->me.free = menutree_entry_free;
+		menu_add_entry(menu, &mt->me);
+	}
+
+	menu_show(menu);
+
+	ret = 0;
+out:
+	menu_free(menu);
+
+	globfree(&g);
+
+	return ret;
+}
diff --git a/include/menu.h b/include/menu.h
index f63a405..8b0ffb1 100644
--- a/include/menu.h
+++ b/include/menu.h
@@ -106,4 +106,6 @@ struct menu_entry* menu_entry_get_by_num(struct menu* m, int num);
  */
 void menu_action_exit(struct menu *m, struct menu_entry *me);
 
+int menutree(const char *path, int toplevel);
+
 #endif /* __MENU_H__ */
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
