Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VOMkD-00050l-Mc
 for barebox@lists.infradead.org; Tue, 24 Sep 2013 07:09:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 24 Sep 2013 09:08:47 +0200
Message-Id: <1380006527-2599-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380006527-2599-1-git-send-email-s.hauer@pengutronix.de>
References: <1380006527-2599-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/11] defenv-2: replace boot script with command
To: barebox@lists.infradead.org

This replaces the 'boot' script in the defaultenv-2 with a command
with the same behaviour. A command gives more flexibility for future
externsions

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig                 |  11 ++
 commands/Makefile                |   1 +
 commands/boot.c                  | 258 +++++++++++++++++++++++++++++++++++++++
 common/Kconfig                   |   1 +
 defaultenv-2/base/bin/_boot      |  44 -------
 defaultenv-2/base/bin/_boot_help |  20 ---
 defaultenv-2/base/bin/_boot_list |   7 --
 defaultenv-2/base/bin/boot       |  65 ----------
 8 files changed, 271 insertions(+), 136 deletions(-)
 create mode 100644 commands/boot.c
 delete mode 100644 defaultenv-2/base/bin/_boot
 delete mode 100644 defaultenv-2/base/bin/_boot_help
 delete mode 100644 defaultenv-2/base/bin/_boot_list
 delete mode 100644 defaultenv-2/base/bin/boot

diff --git a/commands/Kconfig b/commands/Kconfig
index 55e46a0..9738ec4 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -514,6 +514,17 @@ config CMD_LINUX16
 	  Compile the linux16 command to be able to boot bzImages
 	  via real mode.
 
+config CMD_BOOT
+	tristate
+	select BOOTM
+	prompt "boot"
+	help
+	  Select this for booting based on scripts. unlike the bootm command which
+	  can boot a single image this command offers the possibility to boot with
+	  scripts (by default placed under /env/boot/). This command iterates over
+	  multiple scripts until one succeeds. It supersedes the previous 'boot'
+	  script.
+
 config CMD_RESET
 	tristate
 	prompt "reset"
diff --git a/commands/Makefile b/commands/Makefile
index 6acffc8..f4e0ac6 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -91,3 +91,4 @@ obj-$(CONFIG_CMD_FILETYPE)	+= filetype.o
 obj-$(CONFIG_CMD_BAREBOX_UPDATE)+= barebox-update.o
 obj-$(CONFIG_CMD_MIITOOL)	+= miitool.o
 obj-$(CONFIG_CMD_DETECT)	+= detect.o
+obj-$(CONFIG_CMD_BOOT)		+= boot.o
diff --git a/commands/boot.c b/commands/boot.c
new file mode 100644
index 0000000..93bf148
--- /dev/null
+++ b/commands/boot.c
@@ -0,0 +1,258 @@
+/*
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
+
+#include <environment.h>
+#include <globalvar.h>
+#include <magicvar.h>
+#include <command.h>
+#include <common.h>
+#include <getopt.h>
+#include <libgen.h>
+#include <malloc.h>
+#include <boot.h>
+#include <fs.h>
+
+#include <linux/stat.h>
+
+static int verbose;
+static int dryrun;
+
+static void bootsources_list(void)
+{
+	DIR *dir;
+	struct dirent *d;
+	const char *path = "/env/boot";
+
+	dir = opendir(path);
+	if (!dir) {
+		printf("cannot open %s: %s\n", path, strerror(-errno));
+		return;
+	}
+
+	printf("Bootsources: ");
+
+	while ((d = readdir(dir))) {
+		if (*d->d_name == '.')
+			continue;
+
+		printf("%s ", d->d_name);
+	}
+
+	printf("\n");
+
+	closedir(dir);
+}
+
+static const char *getenv_or_null(const char *var)
+{
+	const char *val = getenv(var);
+
+	if (val && *val)
+		return val;
+	return NULL;
+}
+
+/*
+ * Start a single boot script. 'path' is a full path to a boot script.
+ */
+static int boot_script(char *path)
+{
+	struct bootm_data data = {};
+	int ret;
+
+	printf("booting %s...\n", basename(path));
+
+	globalvar_set_match("linux.bootargs.dyn.", "");
+	globalvar_set_match("bootm.", "");
+
+	ret = run_command(path, 0);
+	if (ret) {
+		printf("Running %s failed\n", path);
+		goto out;
+	}
+
+	data.initrd_address = UIMAGE_INVALID_ADDRESS;
+	data.os_address = UIMAGE_SOME_ADDRESS;
+	data.oftree_file = getenv_or_null("global.bootm.oftree");
+	data.os_file = getenv_or_null("global.bootm.image");
+	data.os_address = getenv_loadaddr("global.bootm.image.loadaddr");
+	data.initrd_address = getenv_loadaddr("global.bootm.initrd.loadaddr");
+	data.initrd_file = getenv_or_null("global.bootm.initrd");
+	data.verbose = verbose;
+	data.dryrun = dryrun;
+
+	ret = bootm_boot(&data);
+	if (ret)
+		pr_err("Booting %s failed: %s\n", basename(path), strerror(-ret));
+out:
+	return ret;
+}
+
+/*
+ * boot a script. 'name' can either be a filename under /env/boot/,
+ * a full path to a boot script or a path to a directory. This function
+ * returns a negative error on failure, or 0 on a successful dryrun boot.
+ */
+static int boot(const char *name)
+{
+	char *path;
+	DIR *dir;
+	struct dirent *d;
+	struct stat s;
+	int ret;
+
+	if (*name == '/')
+		path = xstrdup(name);
+	else
+		path = asprintf("/env/boot/%s", name);
+
+	ret = stat(path, &s);
+	if (ret) {
+		pr_err("%s: %s\n", path, strerror(-ret));
+		goto out;
+	}
+
+	if (S_ISREG(s.st_mode)) {
+		ret = boot_script(path);
+		goto out;
+	}
+
+	dir = opendir(path);
+	if (!dir) {
+		ret = -errno;
+		printf("cannot open %s: %s\n", path, strerror(-errno));
+		goto out;
+	}
+
+	while ((d = readdir(dir))) {
+		char *file;
+		struct stat s;
+
+		if (*d->d_name == '.')
+			continue;
+
+		file = asprintf("%s/%s", path, d->d_name);
+
+		ret = stat(file, &s);
+		if (ret) {
+			free(file);
+			continue;
+		}
+
+		if (!S_ISREG(s.st_mode)) {
+			free(file);
+			continue;
+		}
+
+		ret = boot_script(file);
+
+                free(file);
+
+		if (!ret)
+			break;
+	}
+
+	closedir(dir);
+out:
+	free(path);
+
+	return ret;
+}
+
+static int do_boot(int argc, char *argv[])
+{
+	const char *sources = NULL;
+	char *source, *freep;
+	int opt, ret = 0, do_list = 0;
+
+	verbose = 0;
+	dryrun = 0;
+
+	while ((opt = getopt(argc, argv, "vld")) > 0) {
+		switch (opt) {
+		case 'v':
+			verbose++;
+			break;
+		case 'l':
+			do_list = 1;
+			break;
+		case 'd':
+			dryrun = 1;
+			break;
+		}
+	}
+
+	if (do_list) {
+		bootsources_list();
+		return 0;
+	}
+
+	if (optind < argc) {
+		while (optind < argc) {
+			source = argv[optind];
+			optind++;
+			ret = boot(source);
+			if (!ret)
+				break;
+		}
+		return ret;
+	}
+
+	sources = getenv("global.boot.default");
+	if (!sources)
+		return 0;
+
+	freep = source = xstrdup(sources);
+
+	while (1) {
+		char *sep = strchr(source, ' ');
+		if (sep)
+			*sep = 0;
+		ret = boot(source);
+		if (!ret)
+			break;
+
+		if (sep)
+			source = sep + 1;
+		else
+			break;
+	}
+
+	free(freep);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(boot)
+BAREBOX_CMD_HELP_USAGE("boot [OPTIONS] [BOOTSRC...]\n")
+BAREBOX_CMD_HELP_SHORT("Boot an operating system.\n")
+BAREBOX_CMD_HELP_SHORT("[BOOTSRC...] can be:\n")
+BAREBOX_CMD_HELP_SHORT("- a filename from /env/boot/\n")
+BAREBOX_CMD_HELP_SHORT("- a full path to a file\n")
+BAREBOX_CMD_HELP_SHORT("- a path to a directory. All files in this directory are treated\n")
+BAREBOX_CMD_HELP_SHORT("  as boot scripts.\n")
+BAREBOX_CMD_HELP_SHORT("Multiple bootsources may be given which are probed in order until\n")
+BAREBOX_CMD_HELP_SHORT("one succeeds.\n")
+BAREBOX_CMD_HELP_SHORT("\nOptions:\n")
+BAREBOX_CMD_HELP_OPT  ("-v","Increase verbosity\n")
+BAREBOX_CMD_HELP_OPT  ("-d","Dryrun. See what happens but do no actually boot\n")
+BAREBOX_CMD_HELP_OPT  ("-l","List available boot sources\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(boot)
+	.cmd	= do_boot,
+	.usage		= "boot the machine",
+	BAREBOX_CMD_HELP(cmd_boot_help)
+BAREBOX_CMD_END
+
+BAREBOX_MAGICVAR_NAMED(global_boot_default, global.boot.default, "default boot order");
diff --git a/common/Kconfig b/common/Kconfig
index dd70578..f83644b 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -549,6 +549,7 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
 	select CMD_READLINK
 	select CMD_DIRNAME
 	select FLEXIBLE_BOOTARGS
+	select CMD_BOOT
 	prompt "Generic environment template"
 
 config DEFAULT_ENVIRONMENT_GENERIC
diff --git a/defaultenv-2/base/bin/_boot b/defaultenv-2/base/bin/_boot
deleted file mode 100644
index 71d1490..0000000
--- a/defaultenv-2/base/bin/_boot
+++ /dev/null
@@ -1,44 +0,0 @@
-#!/bin/sh
-
-# The real boot script, to be called from _boot_list which is called
-# from boot
-
-. /env/data/ansi-colors
-
-# clear linux.bootargs.dyn.* and bootm.*
-global -r linux.bootargs.dyn.
-global -r bootm.
-
-file="$1"
-
-scr=/env/boot/$file
-if [ ! -f "$scr" ]; then
-	scr="$file"
-fi
-
-if [ ! -f "$scr" ]; then
-	echo -e "${RED}/env/boot/${file}${NC} or ${RED}${file}${NC} do not exist"
-	_boot_help
-	exit 2
-fi
-
-if [ -L $scr ]; then
-	readlink -f $scr boot
-	basename $boot link
-	basename $scr boot
-	echo -e "${GREEN}boot${NC} ${YELLOW}${boot}${NC} -> ${CYAN}${link}${NC}"
-else
-	echo -e "${GREEN}booting ${YELLOW}$file${NC}..."
-fi
-
-$scr
-
-if [ -n "$BOOT_DRYRUN" ]; then
-	echo "dryrun. exiting now"
-	exit 0
-fi
-
-${global.bootm.image} $BOOT_BOOTM_OPTS
-bootm $BOOT_BOOTM_OPTS
-
-echo -e "${GREEN}booting ${YELLOW}$file${NC} ${RED}failed${NC}"
diff --git a/defaultenv-2/base/bin/_boot_help b/defaultenv-2/base/bin/_boot_help
deleted file mode 100644
index 5679e91..0000000
--- a/defaultenv-2/base/bin/_boot_help
+++ /dev/null
@@ -1,20 +0,0 @@
-#!/bin/sh
-
-for i in /env/boot/*; do
-	basename $i s
-	sources="$sources$s "
-done
-
-if [ -d /env/boot.d ]; then
-	seq_sources="boot sequence:"
-	for i in /env/boot.d/*; do
-		readlink -f $i s
-		basename $s link
-		basename $i s
-		seq_sources="$seq_sources\n ${YELLOW}${s}${NC} -> ${CYAN}${link}${NC}"
-	done
-else
-	seq_sources="boot sequence:\n${GREEN}none${NC}"
-fi
-
-echo -e "boot sources:\n$sources\n\n$seq_sources"
diff --git a/defaultenv-2/base/bin/_boot_list b/defaultenv-2/base/bin/_boot_list
deleted file mode 100644
index 17f29bf..0000000
--- a/defaultenv-2/base/bin/_boot_list
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# This script is a workaround for buggy globbing in for loops
-
-for i in $*; do
-	_boot $i;
-done
diff --git a/defaultenv-2/base/bin/boot b/defaultenv-2/base/bin/boot
deleted file mode 100644
index eed4b3c..0000000
--- a/defaultenv-2/base/bin/boot
+++ /dev/null
@@ -1,65 +0,0 @@
-#!/bin/sh
-
-BOOT_BOOTM_OPTS=
-BOOT_DRYRUN=
-BOOT_VERBOSE=
-list=
-bootsrc=${global.boot.default}
-
-usage="
-$0 [OPTIONS] [source]\n
- -v  verbose\n
- -d  dryrun\n
- -l  list boot sources\n
- -h  help"
-
-. /env/data/ansi-colors
-
-while getopt "vdhl" opt; do
-	if [ ${opt} = v ]; then
-		BOOT_BOOTM_OPTS="$BOOT_BOOTM_OPTS -v"
-		BOOT_VERBOSE=1
-	elif [ ${opt} = d ]; then
-		BOOT_DRYRUN=1
-	elif [ ${opt} = l ]; then
-		list=1
-	elif [ ${opt} = h ]; then
-		echo -e "$usage"
-		exit 0
-	fi
-done
-
-if [ -n "$list" ]; then
-	echo "boot sources:"
-	for i in /env/boot/*; do
-		basename $i s
-		echo $s
-	done
-	exit 0
-fi
-
-if [ -n "$1" ]; then
-	bootsrc="$*"
-fi
-
-export BOOT_BOOTM_OPTS
-export BOOT_DRYRUN
-export BOOT_VERBOSE
-
-for src in $bootsrc; do
-	if [ -d ${src} ]; then
-		realsrc="$realsrc $src/*"
-	else
-		realsrc="$realsrc $src"
-	fi
-done
-
-if [ -n "$BOOT_VERBOSE" ]; then
-	echo -e "\nboot sequence:${YELLOW}$realsrc${NC}\n"
-fi
-
-for s in $realsrc; do
-	_boot_list $s
-done
-
-exit $ret
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
