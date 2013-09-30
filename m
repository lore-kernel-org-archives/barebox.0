Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQa0q-00063P-7c
 for barebox@lists.infradead.org; Mon, 30 Sep 2013 09:43:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Sep 2013 11:43:07 +0200
Message-Id: <1380534188-1734-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380534188-1734-1-git-send-email-s.hauer@pengutronix.de>
References: <1380534188-1734-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] Implement bootloader spec support for barebox
To: barebox@lists.infradead.org

The Bootloader Specification describes a way how kernels can
be installed on devices and how they can be started by the bootloader.

The bootloader spec is currently supported by (x86) gummiboot and
by systemd which provides a kernel-install script. With the bootloader
spec it's possible for the Operating system to install a new kernel
without knowing about the bootloader and for the bootloader it's possible
to discover and start Operating Systems on a media without being
configured.

For more details about the spec see:

http://www.freedesktop.org/wiki/Specifications/BootLoaderSpec/

This patch adds barebox support for the spec. It enhances the 'boot'
command so that not only boot script names can be given, but also
devices containing bootloader spec entries. With this it's possible
to call the 'boot' command like: 'boot sd emmc net'. It would then
first look for bootloader spec entries on the (removable) sd card,
then, is nothing is found, on the internal emmc and if still
unsuccessful would call the 'net' bootscript.

The bootloader Spec currently doesn't specify which entry should be
default if multiple entries are found on a single device. Therefore
barebox currently has two extensions of the spec. The $BOOT diretory
can contain a file named 'default'. If present, the content of the
file is treated as a filename under $BOOT/loader/entries/ which is
used as default. Similarly if a file named 'once' is present, the
entry is started once and the file is removed afterwards. This is
useful for testing if a newly installed kernel works before making
it the default.

As on ARM and other Architectures a devicetree has to be specified
for the kernel, the 'devicetree' property is used to specify a
devicetree. Like 'kernel' and 'initrd' this also contains a pth
relative to $BOOT.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c  | 172 ++++++++++++++++---
 common/Kconfig   |  14 ++
 common/Makefile  |   2 +
 common/blspec.c  | 516 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/blspec.h |  92 ++++++++++
 5 files changed, 771 insertions(+), 25 deletions(-)
 create mode 100644 common/blspec.c
 create mode 100644 include/blspec.h

diff --git a/commands/boot.c b/commands/boot.c
index 93bf148..7850805 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -15,51 +15,155 @@
 #include <globalvar.h>
 #include <magicvar.h>
 #include <command.h>
+#include <readkey.h>
 #include <common.h>
 #include <getopt.h>
+#include <blspec.h>
 #include <libgen.h>
 #include <malloc.h>
 #include <boot.h>
+#include <menu.h>
 #include <fs.h>
+#include <complete.h>
 
 #include <linux/stat.h>
 
+static int boot_script(char *path);
+
 static int verbose;
 static int dryrun;
 
-static void bootsources_list(void)
+static void bootsource_action(struct menu *m, struct menu_entry *me)
+{
+	struct blspec_entry *be = container_of(me, struct blspec_entry, me);
+	int ret;
+
+	if (be->scriptpath) {
+		ret = boot_script(be->scriptpath);
+	} else {
+		if (IS_ENABLED(CONFIG_BLSPEC))
+			ret = blspec_boot(be, 0, 0);
+		else
+			ret = -ENOSYS;
+	}
+
+	if (ret)
+		printf("Booting failed with: %s\n", strerror(-ret));
+
+	printf("Press any key to continue\n");
+
+	read_key();
+}
+
+static int bootsources_menu_env_entries(struct blspec *blspec)
 {
+	const char *path = "/env/boot", *title;
 	DIR *dir;
 	struct dirent *d;
-	const char *path = "/env/boot";
+	struct blspec_entry *be;
+	char *cmd;
 
 	dir = opendir(path);
-	if (!dir) {
-		printf("cannot open %s: %s\n", path, strerror(-errno));
-		return;
-	}
-
-	printf("Bootsources: ");
+	if (!dir)
+		return -errno;
 
 	while ((d = readdir(dir))) {
+
 		if (*d->d_name == '.')
 			continue;
 
-		printf("%s ", d->d_name);
-	}
+		be = blspec_entry_alloc(blspec);
+		be->me.type = MENU_ENTRY_NORMAL;
+		be->scriptpath = asprintf("/env/boot/%s", d->d_name);
+
+		cmd = asprintf(". %s menu", be->scriptpath);
+		setenv("title", "");
+		run_command(cmd, 0);
+		free(cmd);
+		title = getenv("title");
 
-	printf("\n");
+		if (title)
+			be->me.display = xstrdup(title);
+		else
+			be->me.display = xstrdup(d->d_name);
+	}
 
 	closedir(dir);
+
+	return 0;
 }
 
-static const char *getenv_or_null(const char *var)
+static struct blspec *bootentries_collect(void)
 {
-	const char *val = getenv(var);
+	struct blspec *blspec;
+
+	blspec = blspec_alloc();
+	blspec->menu->display = asprintf("boot");
+	bootsources_menu_env_entries(blspec);
+	if (IS_ENABLED(CONFIG_BLSPEC))
+		blspec_scan_devices(blspec);
+	return blspec;
+}
 
-	if (val && *val)
-		return val;
-	return NULL;
+static void bootsources_menu(void)
+{
+	struct blspec *blspec = NULL;
+	struct blspec_entry *entry;
+	struct menu_entry *back_entry;
+
+	if (!IS_ENABLED(CONFIG_MENU)) {
+		printf("no menu support available\n");
+		return;
+	}
+
+	blspec = bootentries_collect();
+
+	blspec_for_each_entry(blspec, entry) {
+		entry->me.action = bootsource_action;
+		menu_add_entry(blspec->menu, &entry->me);
+	}
+
+	back_entry = xzalloc(sizeof(*back_entry));
+	back_entry->display = "back";
+	back_entry->type = MENU_ENTRY_NORMAL;
+	back_entry->non_re_ent = 1;
+	menu_add_entry(blspec->menu, back_entry);
+
+	menu_show(blspec->menu);
+
+	free(back_entry);
+
+	blspec_free(blspec);
+}
+
+static void bootsources_list(void)
+{
+	struct blspec *blspec;
+	struct blspec_entry *entry;
+
+	blspec = bootentries_collect();
+
+	printf("\nBootscripts:\n\n");
+	printf("%-40s   %-20s\n", "name", "title");
+	printf("%-40s   %-20s\n", "----", "-----");
+
+	blspec_for_each_entry(blspec, entry) {
+		if (entry->scriptpath)
+			printf("%-40s   %s\n", basename(entry->scriptpath), entry->me.display);
+	}
+
+	if (!IS_ENABLED(CONFIG_BLSPEC))
+		return;
+
+	printf("\nBootloader spec entries:\n\n");
+	printf("%-20s %-20s  %s\n", "device", "hwdevice", "title");
+	printf("%-20s %-20s  %s\n", "------", "--------", "-----");
+
+	blspec_for_each_entry(blspec, entry)
+		if (!entry->scriptpath)
+			printf("%s\n", entry->me.display);
+
+	blspec_free(blspec);
 }
 
 /*
@@ -67,8 +171,11 @@ static const char *getenv_or_null(const char *var)
  */
 static int boot_script(char *path)
 {
-	struct bootm_data data = {};
 	int ret;
+	struct bootm_data data = {
+		.os_address = UIMAGE_SOME_ADDRESS,
+		.initrd_address = UIMAGE_SOME_ADDRESS,
+	};
 
 	printf("booting %s...\n", basename(path));
 
@@ -83,11 +190,11 @@ static int boot_script(char *path)
 
 	data.initrd_address = UIMAGE_INVALID_ADDRESS;
 	data.os_address = UIMAGE_SOME_ADDRESS;
-	data.oftree_file = getenv_or_null("global.bootm.oftree");
-	data.os_file = getenv_or_null("global.bootm.image");
-	data.os_address = getenv_loadaddr("global.bootm.image.loadaddr");
-	data.initrd_address = getenv_loadaddr("global.bootm.initrd.loadaddr");
-	data.initrd_file = getenv_or_null("global.bootm.initrd");
+	data.oftree_file = getenv_nonempty("global.bootm.oftree");
+	data.os_file = getenv_nonempty("global.bootm.image");
+	getenv_ul("global.bootm.image.loadaddr", &data.os_address);
+	getenv_ul("global.bootm.initrd.loadaddr", &data.initrd_address);
+	data.initrd_file = getenv_nonempty("global.bootm.initrd");
 	data.verbose = verbose;
 	data.dryrun = dryrun;
 
@@ -118,7 +225,13 @@ static int boot(const char *name)
 
 	ret = stat(path, &s);
 	if (ret) {
-		pr_err("%s: %s\n", path, strerror(-ret));
+		if (!IS_ENABLED(CONFIG_BLSPEC)) {
+			pr_err("%s: %s\n", path, strerror(-ret));
+			goto out;
+		}
+
+		ret = blspec_boot_hwdevice(name, verbose, dryrun);
+		pr_err("%s: %s\n", name, strerror(-ret));
 		goto out;
 	}
 
@@ -173,12 +286,12 @@ static int do_boot(int argc, char *argv[])
 {
 	const char *sources = NULL;
 	char *source, *freep;
-	int opt, ret = 0, do_list = 0;
+	int opt, ret = 0, do_list = 0, do_menu = 0;
 
 	verbose = 0;
 	dryrun = 0;
 
-	while ((opt = getopt(argc, argv, "vld")) > 0) {
+	while ((opt = getopt(argc, argv, "vldm")) > 0) {
 		switch (opt) {
 		case 'v':
 			verbose++;
@@ -189,6 +302,9 @@ static int do_boot(int argc, char *argv[])
 		case 'd':
 			dryrun = 1;
 			break;
+		case 'm':
+			do_menu = 1;
+			break;
 		}
 	}
 
@@ -197,6 +313,11 @@ static int do_boot(int argc, char *argv[])
 		return 0;
 	}
 
+	if (do_menu) {
+		bootsources_menu();
+		return 0;
+	}
+
 	if (optind < argc) {
 		while (optind < argc) {
 			source = argv[optind];
@@ -247,6 +368,7 @@ BAREBOX_CMD_HELP_SHORT("\nOptions:\n")
 BAREBOX_CMD_HELP_OPT  ("-v","Increase verbosity\n")
 BAREBOX_CMD_HELP_OPT  ("-d","Dryrun. See what happens but do no actually boot\n")
 BAREBOX_CMD_HELP_OPT  ("-l","List available boot sources\n")
+BAREBOX_CMD_HELP_OPT  ("-m","Show a menu with boot options\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(boot)
diff --git a/common/Kconfig b/common/Kconfig
index 13419dc..dd60ec9 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -437,6 +437,20 @@ config TIMESTAMP
 	  commands like bootm or iminfo. This option is
 	  automatically enabled when you select CFG_CMD_DATE .
 
+config BLSPEC
+	depends on BLOCK
+	select OFTREE
+	select FLEXIBLE_BOOTARGS
+	bool
+	prompt "Support bootloader spec"
+	help
+	  Enable this to let barebox support the Freedesktop bootloader spec,
+	  see: http://www.freedesktop.org/wiki/Specifications/BootLoaderSpec/
+	  The bootloader spec is a standard interface between the bootloader
+	  and the kernel. It allows the bootloader to discover boot options
+	  on a device and it allows the Operating System to install / update
+	  kernels.
+
 choice
 	prompt "console support"
 	default CONSOLE_FULL
diff --git a/common/Makefile b/common/Makefile
index 9a9e3fe..c2d78aa 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -12,6 +12,8 @@ obj-$(CONFIG_PARTITION_DISK)	+= partitions.o partitions/
 obj-$(CONFIG_CMD_LOADS)		+= s_record.o
 obj-$(CONFIG_OFTREE)		+= oftree.o
 
+obj-y += bootm.o
+obj-$(CONFIG_BLSPEC) += blspec.o
 obj-y += memory.o
 obj-$(CONFIG_DDR_SPD)  += ddr_spd.o
 obj-y += memory_display.o
diff --git a/common/blspec.c b/common/blspec.c
new file mode 100644
index 0000000..f306ada
--- /dev/null
+++ b/common/blspec.c
@@ -0,0 +1,516 @@
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
+#include <environment.h>
+#include <globalvar.h>
+#include <readkey.h>
+#include <common.h>
+#include <driver.h>
+#include <blspec.h>
+#include <malloc.h>
+#include <block.h>
+#include <fcntl.h>
+#include <libbb.h>
+#include <init.h>
+#include <boot.h>
+#include <fs.h>
+#include <of.h>
+#include <linux/stat.h>
+#include <linux/err.h>
+
+/*
+ * blspec_entry_var_set - set a variable to a value
+ */
+int blspec_entry_var_set(struct blspec_entry *entry, const char *name,
+		const char *val)
+{
+	return of_set_property(entry->node, name, val,
+			val ? strlen(val) + 1 : 0, 1);
+}
+
+/*
+ * blspec_entry_var_get - get the value of a variable
+ */
+const char *blspec_entry_var_get(struct blspec_entry *entry, const char *name)
+{
+	const char *str;
+	int ret;
+
+	ret = of_property_read_string(entry->node, name, &str);
+
+	return ret ? NULL : str;
+}
+
+/*
+ * blspec_entry_open - open an entry given a path
+ */
+static struct blspec_entry *blspec_entry_open(struct blspec *blspec,
+		const char *abspath)
+{
+	struct blspec_entry *entry;
+	char *end, *line, *next;
+	char *buf;
+
+	pr_debug("%s: %s\n", __func__, abspath);
+
+	buf = read_file(abspath, NULL);
+	if (!buf)
+		return ERR_PTR(-errno);
+
+	entry = blspec_entry_alloc(blspec);
+
+	next = buf;
+
+	while (*next) {
+		char *name, *val;
+
+		line = next;
+
+		next = strchr(line, '\n');
+		if (next) {
+			*next = 0;
+			next++;
+		}
+
+		name = line;
+		end = name;
+
+		while (*end && (*end != ' ' && *end != '\t'))
+			end++;
+
+		if (!*end) {
+			blspec_entry_var_set(entry, name, NULL);
+			continue;
+		}
+
+		*end = 0;
+
+		end++;
+
+		while (*end == ' ' || *end == '\t')
+			end++;
+
+		if (!*end) {
+			blspec_entry_var_set(entry, name, NULL);
+			continue;
+		}
+
+		val = end;
+
+		blspec_entry_var_set(entry, name, val);
+	}
+
+	free(buf);
+
+	return entry;
+}
+
+/*
+ * blspec_have_entry - check if we already have an entry with
+ *                     a certain path
+ */
+static int blspec_have_entry(struct blspec *blspec, const char *path)
+{
+	struct blspec_entry *e;
+
+	list_for_each_entry(e, &blspec->entries, list) {
+		if (e->configpath && !strcmp(e->configpath, path))
+			return 1;
+	}
+
+	return 0;
+}
+
+/*
+ * blspec_scan_directory - scan over a directory
+ *
+ * Given a root path collects all blspec entries found under /blspec/entries/.
+ *
+ * returns 0 if at least one entry could be successfully loaded, negative
+ * error value otherwise.
+ */
+static int blspec_scan_directory(struct blspec *blspec, const char *root,
+		struct cdev *cdev)
+{
+	struct blspec_entry *entry;
+	DIR *dir;
+	struct dirent *d;
+	char *abspath;
+	int ret, found = 0;
+	const char *dirname = "loader/entries";
+	char *entry_default = NULL, *entry_once = NULL;
+
+	pr_debug("%s: %s %s\n", __func__, root, dirname);
+
+	entry_default = read_file_line("%s/default", root);
+	entry_once = read_file_line("%s/once", root);
+
+	abspath = asprintf("%s/%s", root, dirname);
+
+	dir = opendir(abspath);
+	if (!dir) {
+		pr_debug("%s: %s: %s\n", __func__, abspath, strerror(errno));
+		ret = -errno;
+		goto err_out;
+	}
+
+	while ((d = readdir(dir))) {
+		char *configname;
+		struct stat s;
+		char *dot;
+		char *devname = NULL, *hwdevname = NULL;
+
+		if (*d->d_name == '.')
+			continue;
+
+		configname = asprintf("%s/%s", abspath, d->d_name);
+
+		dot = strrchr(configname, '.');
+		if (!dot) {
+			free(configname);
+			continue;
+		}
+
+		if (strcmp(dot, ".conf")) {
+			free(configname);
+			continue;
+		}
+
+		ret = stat(configname, &s);
+		if (ret) {
+			free(configname);
+			continue;
+		}
+
+		if (!S_ISREG(s.st_mode)) {
+			free(configname);
+			continue;
+		}
+
+		if (blspec_have_entry(blspec, configname)) {
+			free(configname);
+			continue;
+		}
+
+		entry = blspec_entry_open(blspec, configname);
+		if (IS_ERR(entry)) {
+			free(configname);
+			continue;
+		}
+
+		found = 1;
+
+		entry->rootpath = xstrdup(root);
+		entry->configpath = configname;
+		entry->cdev = cdev;
+
+		if (entry_default && !strcmp(d->d_name, entry_default))
+			entry->boot_default = true;
+		if (entry_once && !strcmp(d->d_name, entry_once))
+			entry->boot_once = true;
+
+		devname = xstrdup(dev_name(entry->cdev->dev));
+		if (entry->cdev->dev->parent)
+			hwdevname = xstrdup(dev_name(entry->cdev->dev->parent));
+
+		entry->me.display = asprintf("%-20s %-20s  %s", devname, hwdevname,
+				blspec_entry_var_get(entry, "title"));
+		free(devname);
+		free(hwdevname);
+
+		entry->me.type = MENU_ENTRY_NORMAL;
+	}
+
+	ret = found ? 0 : -ENOENT;
+
+	closedir(dir);
+err_out:
+	free(abspath);
+	free(entry_default);
+	free(entry_once);
+
+	return ret;
+}
+
+/*
+ * blspec_scan_cdev - scan over a cdev
+ *
+ * Given a cdev this function mounts the filesystem and collects all blspec
+ * entries found under /blspec/entries/.
+ *
+ * returns 0 if at least one entry could be successfully loaded, negative
+ * error value otherwise.
+ */
+static int blspec_scan_cdev(struct blspec *blspec, struct cdev *cdev)
+{
+	int ret;
+	void *buf = xzalloc(512);
+	enum filetype type;
+	const char *rootpath;
+
+	pr_debug("%s: %s\n", __func__, cdev->name);
+
+	ret = cdev_read(cdev, buf, 512, 0, 0);
+	if (ret < 0) {
+		free(buf);
+		return ret;
+	}
+
+	type = file_detect_partition_table(buf, 512);
+	free(buf);
+
+	if (type == filetype_mbr || type == filetype_gpt)
+		return -EINVAL;
+
+	rootpath = cdev_mount_default(cdev);
+	if (IS_ERR(rootpath))
+		return PTR_ERR(rootpath);
+
+	ret = blspec_scan_directory(blspec, rootpath, cdev);
+
+	return ret;
+}
+
+/*
+ * blspec_scan_devices - scan all devices for child cdevs
+ *
+ * Iterate over all devices and collect child their cdevs.
+ */
+void blspec_scan_devices(struct blspec *blspec)
+{
+	struct device_d *dev;
+	struct block_device *bdev;
+
+	for_each_device(dev)
+		device_detect(dev);
+
+	for_each_block_device(bdev) {
+		struct cdev *cdev = &bdev->cdev;
+
+		list_for_each_entry(cdev, &bdev->dev->cdevs, devices_list)
+			blspec_scan_cdev(blspec, cdev);
+	}
+}
+
+/*
+ * blspec_scan_device - scan a device for child cdevs
+ *
+ * Given a device this functions scans over all child cdevs looking
+ * for blspec entries.
+ */
+int blspec_scan_device(struct blspec *blspec, struct device_d *dev)
+{
+	struct device_d *child;
+	struct cdev *cdev;
+	int ret;
+
+	pr_debug("%s: %s\n", __func__, dev_name(dev));
+
+	list_for_each_entry(cdev, &dev->cdevs, devices_list) {
+		/*
+		 * If the OS is installed on a disk with MBR disk label, and a
+		 * partition with the MBR type id of 0xEA already exists it
+		 * should be used as $BOOT
+		 */
+		if (cdev->dos_partition_type == 0xea) {
+			blspec_scan_cdev(blspec, cdev);
+			return 0;
+		}
+
+		/*
+		 * If the OS is installed on a disk with GPT disk label, and a
+		 * partition with the GPT type GUID of
+		 * bc13c2ff-59e6-4262-a352-b275fd6f7172 already exists, it
+		 * should be used as $BOOT.
+		 *
+		 * Not yet implemented
+		 */
+	}
+
+	/* Try child devices */
+	device_for_each_child(dev, child) {
+		ret = blspec_scan_device(blspec, child);
+		if (!ret)
+			return 0;
+	}
+
+	/*
+	 * As a last resort try all cdevs (Not only the ones explicitly stated
+	 * by the bootblspec spec).
+	 */
+	list_for_each_entry(cdev, &dev->cdevs, devices_list) {
+		ret = blspec_scan_cdev(blspec, cdev);
+		if (!ret)
+			return 0;
+	}
+
+	return -ENODEV;
+}
+
+/*
+ * blspec_scan_hwdevice - scan a hardware device for child cdevs
+ *
+ * Given a name of a hardware device this functions scans over all child
+ * cdevs looking for blspec entries.
+ */
+int blspec_scan_hwdevice(struct blspec *blspec, const char *devname)
+{
+	struct device_d *dev;
+
+	pr_debug("%s: %s\n", __func__, devname);
+
+	dev = get_device_by_name(devname);
+	if (!dev)
+		return -ENODEV;
+
+	device_detect(dev);
+
+	blspec_scan_device(blspec, dev);
+
+	return 0;
+}
+
+/*
+ * blspec_boot - boot an entry
+ *
+ * This boots an entry. On success this function does not return.
+ * In case of an error the error code is returned. This function may
+ * return 0 in case of a succesful dry run.
+ */
+int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun)
+{
+	int ret;
+	const char *abspath, *devicetree, *options, *initrd, *linuximage;
+	struct bootm_data data = {
+		.initrd_address = UIMAGE_INVALID_ADDRESS,
+		.os_address = UIMAGE_SOME_ADDRESS,
+		.verbose = verbose,
+		.dryrun = dryrun,
+	};
+
+	globalvar_set_match("linux.bootargs.dyn.", "");
+	globalvar_set_match("bootm.", "");
+
+	devicetree = blspec_entry_var_get(entry, "devicetree");
+	initrd = blspec_entry_var_get(entry, "initrd");
+	options = blspec_entry_var_get(entry, "options");
+	linuximage = blspec_entry_var_get(entry, "linux");
+
+	if (entry->rootpath)
+		abspath = entry->rootpath;
+	else
+		abspath = "";
+
+	data.os_file = asprintf("%s/%s", abspath, linuximage);
+
+	if (devicetree) {
+		if (!strcmp(devicetree, "none")) {
+			struct device_node *node = of_get_root_node();
+			if (node)
+				of_delete_node(node);
+		} else {
+			data.oftree_file = asprintf("%s/%s", abspath,
+					devicetree);
+		}
+	}
+
+	if (initrd)
+		data.initrd_file = asprintf("%s/%s", abspath, initrd);
+
+	globalvar_add_simple("linux.bootargs.blspec", options);
+
+	pr_info("booting %s from %s\n", blspec_entry_var_get(entry, "title"),
+			dev_name(entry->cdev->dev));
+
+	if (entry->boot_once) {
+		char *s = asprintf("%s/once", abspath);
+
+		ret = unlink(s);
+		if (ret)
+			pr_err("unable to unlink 'once': %s\n", strerror(-ret));
+		else
+			pr_info("removed 'once'\n");
+
+		free(s);
+	}
+
+	ret = bootm_boot(&data);
+	if (ret)
+		pr_err("Booting failed\n");
+
+	free((char *)data.oftree_file);
+	free((char *)data.initrd_file);
+	free((char *)data.os_file);
+
+	return ret;
+}
+
+/*
+ * blspec_entry_default - find the entry to load.
+ *
+ * return in the order of precendence:
+ * - The entry specified in the 'once' file
+ * - The entry specified in the 'default' file
+ * - The first entry
+ */
+struct blspec_entry *blspec_entry_default(struct blspec *l)
+{
+	struct blspec_entry *entry_once = NULL;
+	struct blspec_entry *entry_default = NULL;
+	struct blspec_entry *entry_first = NULL;
+	struct blspec_entry *e;
+
+	list_for_each_entry(e, &l->entries, list) {
+		if (!entry_first)
+			entry_first = e;
+		if (e->boot_once)
+			entry_once = e;
+		if (e->boot_default)
+			entry_default = e;
+	}
+
+	if (entry_once)
+		return entry_once;
+	if (entry_default)
+		return entry_default;
+	return entry_first;
+}
+
+/*
+ * blspec_boot_hwdevice - scan hardware device for blspec entries and
+ *                        start the best one.
+ */
+int blspec_boot_hwdevice(const char *devname, int verbose, int dryrun)
+{
+	struct blspec *blspec;
+	struct blspec_entry *e;
+	int ret;
+
+	blspec = blspec_alloc();
+
+	ret = blspec_scan_hwdevice(blspec, devname);
+	if (ret)
+		return ret;
+
+	e = blspec_entry_default(blspec);
+	if (!e) {
+		printf("Nothing found on %s\n", devname);
+		ret = -ENOENT;
+		goto out;
+	}
+
+	ret = blspec_boot(e, verbose, dryrun);
+out:
+	blspec_free(blspec);
+
+	return ret;
+}
diff --git a/include/blspec.h b/include/blspec.h
new file mode 100644
index 0000000..8422e5b
--- /dev/null
+++ b/include/blspec.h
@@ -0,0 +1,92 @@
+#ifndef __LOADER_H__
+#define __LOADER_H__
+
+#include <linux/list.h>
+#include <menu.h>
+
+struct blspec {
+	struct list_head entries;
+	struct menu *menu;
+};
+
+struct blspec_entry {
+	struct list_head list;
+	struct device_node *node;
+	struct cdev *cdev;
+	char *rootpath;
+	char *configpath;
+	bool boot_default;
+	bool boot_once;
+
+	struct menu_entry me;
+
+	char *scriptpath;
+};
+
+int blspec_entry_var_set(struct blspec_entry *entry, const char *name,
+		const char *val);
+const char *blspec_entry_var_get(struct blspec_entry *entry, const char *name);
+
+int blspec_entry_save(struct blspec_entry *entry, const char *path);
+
+int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun);
+
+int blspec_boot_hwdevice(const char *devname, int verbose, int dryrun);
+
+void blspec_scan_devices(struct blspec *blspec);
+
+struct blspec_entry *blspec_entry_default(struct blspec *l);
+int blspec_scan_hwdevice(struct blspec *blspec, const char *devname);
+
+#define blspec_for_each_entry(blspec, entry) \
+	list_for_each_entry(entry, &blspec->entries, list)
+
+static inline struct blspec_entry *blspec_entry_alloc(struct blspec *blspec)
+{
+	struct blspec_entry *entry;
+
+	entry = xzalloc(sizeof(*entry));
+
+	entry->node = of_new_node(NULL, NULL);
+
+	list_add_tail(&entry->list, &blspec->entries);
+
+	return entry;
+}
+
+static inline void blspec_entry_free(struct blspec_entry *entry)
+{
+	list_del(&entry->list);
+	of_delete_node(entry->node);
+	free(entry->me.display);
+	free(entry->scriptpath);
+	free(entry->configpath);
+	free(entry->rootpath);
+	free(entry);
+}
+
+static inline struct blspec *blspec_alloc(void)
+{
+	struct blspec *blspec;
+
+	blspec = xzalloc(sizeof(*blspec));
+	INIT_LIST_HEAD(&blspec->entries);
+
+	if (IS_ENABLED(CONFIG_MENU))
+		blspec->menu = menu_alloc();
+
+	return blspec;
+}
+
+static inline void blspec_free(struct blspec *blspec)
+{
+	struct blspec_entry *entry, *tmp;
+
+	list_for_each_entry_safe(entry, tmp, &blspec->entries, list)
+		blspec_entry_free(entry);
+	free(blspec->menu->display);
+	free(blspec->menu);
+	free(blspec);
+}
+
+#endif /* __LOADER_H__ */
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
