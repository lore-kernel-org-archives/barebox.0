Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9H4Y-0001o9-6h
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 14:27:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 18 Mar 2012 15:26:39 +0100
Message-Id: <1332080804-13132-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1332080804-13132-1-git-send-email-s.hauer@pengutronix.de>
References: <1332080804-13132-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] Add automount support
To: barebox@lists.infradead.org

This patch adds an automount command which makes it possible
to execute a script when a certain directory is first accessed.
It's the commands responsibility to make this directory available
(bringing devices up and mounting it). This results in automount
support which makes sure that from the shell every file can
be accessed without having to care for device bringup. Bringing
up devices may be expensive (USB, dhcp). The automount support
makes it easy for the environment to bringup devices when they
are actually needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig     |   10 ++++
 commands/Makefile    |    1 +
 commands/automount.c |   66 +++++++++++++++++++++++++++
 fs/Kconfig           |    3 +
 fs/fs.c              |  119 ++++++++++++++++++++++++++++++++++++++++++++++++++
 include/fs.h         |    4 ++
 6 files changed, 203 insertions(+), 0 deletions(-)
 create mode 100644 commands/automount.c

diff --git a/commands/Kconfig b/commands/Kconfig
index e332a85..7a8811e 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -181,6 +181,16 @@ config CMD_NANDTEST
 	select PARTITION_NEED_MTD
 	prompt "nandtest"
 
+config CMD_AUTOMOUNT
+	tristate
+	select FS_AUTOMOUNT
+	prompt "automount"
+	help
+	  automount allows it to automatically execute a script when a certain
+	  directory is accessed for the first time. The script should then make
+	  this directory available (discover USB devices, bring network interface
+	  up and finally mount the filesystem).
+
 endmenu
 
 menu "console                       "
diff --git a/commands/Makefile b/commands/Makefile
index 31442b5..f02b5ca 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -64,3 +64,4 @@ obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
 obj-$(CONFIG_CMD_MAGICVAR)	+= magicvar.o
 obj-$(CONFIG_CMD_IOMEM)		+= iomem.o
 obj-$(CONFIG_CMD_LINUX_EXEC)	+= linux_exec.o
+obj-$(CONFIG_CMD_AUTOMOUNT)	+= automount.o
diff --git a/commands/automount.c b/commands/automount.c
new file mode 100644
index 0000000..5fc68f3
--- /dev/null
+++ b/commands/automount.c
@@ -0,0 +1,66 @@
+/*
+ * automount.c - automount devices
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
+ * Foundation.
+ */
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <errno.h>
+#include <getopt.h>
+
+static int do_automount(int argc, char *argv[])
+{
+	int opt, ret;
+
+	while ((opt = getopt(argc, argv, "lr:")) > 0) {
+		switch (opt) {
+		case 'l':
+			automount_print();
+			return 0;
+		case 'r':
+			automount_remove(optarg);
+			return 0;
+		}
+	}
+
+	if (argc != 3)
+		return COMMAND_ERROR_USAGE;
+
+	ret = automount_add(argv[1], argv[2]);
+	if (ret)
+		printf("adding automountpoint failed: %s\n",
+				strerror(-ret));
+
+	return ret ? 1 : 0;
+}
+
+BAREBOX_CMD_HELP_START(automount)
+BAREBOX_CMD_HELP_USAGE("automount [OPTIONS] <PATH> <cmd>\n")
+BAREBOX_CMD_HELP_SHORT("execute <cmd> when <PATH> is first accessed\n")
+BAREBOX_CMD_HELP_OPT("-l", "List currently registered automountpoints\n")
+BAREBOX_CMD_HELP_OPT("-r <PATH>", "remove an automountpoint\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(automount)
+	.cmd		= do_automount,
+	.usage		= "automount [OPTIONS] <PATH> <cmd>\n",
+	BAREBOX_CMD_HELP(cmd_automount_help)
+BAREBOX_CMD_END
+
diff --git a/fs/Kconfig b/fs/Kconfig
index 6208cd2..e5f307f 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -1,6 +1,9 @@
 
 menu "Filesystem support            "
 
+config FS_AUTOMOUNT
+	bool
+
 config FS_CRAMFS
 	bool
 	select ZLIB
diff --git a/fs/fs.c b/fs/fs.c
index 03fe9c8..8473f81 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -216,10 +216,127 @@ static int check_fd(int fd)
 	return 0;
 }
 
+#ifdef CONFIG_FS_AUTOMOUNT
+
+#define AUTOMOUNT_IS_FILE (1 << 0)
+
+struct automount {
+	char *path;
+	char *cmd;
+	struct list_head list;
+	unsigned int flags;
+};
+
+static LIST_HEAD(automount_list);
+
+void automount_remove(const char *_path)
+{
+	char *path = normalise_path(_path);
+	struct automount *am;
+
+	list_for_each_entry(am, &automount_list, list) {
+		if (!strcmp(path, am->path))
+			goto found;
+	}
+
+	return;
+found:
+	list_del(&am->list);
+	free(am->path);
+	free(am->cmd);
+	free(am);
+}
+EXPORT_SYMBOL(automount_remove);
+
+int automount_add(const char *path, const char *cmd)
+{
+	struct automount *am = xzalloc(sizeof(*am));
+	struct stat s;
+	int ret;
+
+	am->path = normalise_path(path);
+	am->cmd = xstrdup(cmd);
+
+	ret = stat(path, &s);
+	if (!ret) {
+		/*
+		 * If it exists it must be a directory
+		 */
+		if (!S_ISDIR(s.st_mode))
+			return -ENOTDIR;
+	} else {
+		am->flags |= AUTOMOUNT_IS_FILE;
+	}
+
+	list_add_tail(&am->list, &automount_list);
+
+	return 0;
+}
+EXPORT_SYMBOL(automount_add);
+
+void automount_print(void)
+{
+	struct automount *am;
+
+	list_for_each_entry(am, &automount_list, list)
+		printf("%-20s %s\n", am->path, am->cmd);
+}
+EXPORT_SYMBOL(automount_print);
+
+static void automount_mount(const char *path, int instat)
+{
+	struct automount *am;
+	int ret;
+
+	list_for_each_entry(am, &automount_list, list) {
+		char *cmd;
+		int len_path = strlen(path);
+		int len_am_path = strlen(am->path);
+
+		/*
+		 * stat is a bit special. We do not want to trigger
+		 * automount when someone calls stat() on the automount
+		 * directory itself.
+		 */
+		if (instat && !(am->flags & AUTOMOUNT_IS_FILE) &&
+				len_path == len_am_path) {
+			continue;
+		}
+
+		if (len_path < len_am_path)
+			continue;
+
+		if (strncmp(path, am->path, len_am_path))
+			continue;
+
+		if (*(path + len_am_path) != 0 && *(path + len_am_path) != '/')
+			continue;
+
+		cmd = asprintf("%s %s", am->cmd, am->path);
+		ret = run_command(cmd, 0);
+		free(cmd);
+
+		if (ret)
+			printf("running automount command '%s' failed\n",
+					am->cmd);
+		else
+			automount_remove(am->path);
+
+		return;
+	}
+}
+#else
+static void automount_mount(const char *path, int instat)
+{
+}
+#endif /* CONFIG_FS_AUTOMOUNT */
+
 static struct fs_device_d *get_fs_device_and_root_path(char **path)
 {
 	struct fs_device_d *fsdev;
 
+	automount_mount(*path, 0);
+
 	fsdev = get_fsdevice_by_path(*path);
 	if (!fsdev)
 		return NULL;
@@ -917,6 +1034,8 @@ int stat(const char *filename, struct stat *s)
 	char *f = normalise_path(filename);
 	char *freep = f;
 
+	automount_mount(f, 1);
+
 	memset(s, 0, sizeof(struct stat));
 
 	fsdev = get_fsdevice_by_path(f);
diff --git a/include/fs.h b/include/fs.h
index 7815da5..d82f026 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -160,4 +160,8 @@ char *normalise_path(const char *path);
 /* Register a new filesystem driver */
 int register_fs_driver(struct fs_driver_d *fsdrv);
 
+void automount_remove(const char *_path);
+int automount_add(const char *path, const char *cmd);
+void automount_print(void);
+
 #endif /* __FS_H */
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
