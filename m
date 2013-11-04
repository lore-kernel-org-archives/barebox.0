Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdKmB-0004Ps-R6
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 14:05:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Nov 2013 15:04:28 +0100
Message-Id: <1383573870-11325-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1383573870-11325-1-git-send-email-s.hauer@pengutronix.de>
References: <1383573870-11325-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/11] boot command: make more flexible
To: barebox@lists.infradead.org

With this we can do 'boot <name>' where name is one of:

 - a filename under /env/boot/
 - a full path to a boot script
 - a device name
 - a partition name under /dev/
 - a full path to a directory which
   - contains boot scripts, or
   - contains a loader/entries/ directory containing bootspec entries

Multiple names can be given, they are tried in order. So any mixture
between bootspec entries and bootscripts can be given. bootspec entries
can now also be given as a path to a directory containing bootspec entries.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c | 321 ++++++++++++++++++++++++++++++++++----------------------
 1 file changed, 194 insertions(+), 127 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index 2162365..1bec406 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -28,25 +28,68 @@
 
 #include <linux/stat.h>
 
-static int boot_script(char *path);
-
 static int verbose;
 static int dryrun;
 
-static void bootsource_action(struct menu *m, struct menu_entry *me)
+/*
+ * Start a single boot script. 'path' is a full path to a boot script.
+ */
+static int boot_script(char *path)
+{
+	int ret;
+	struct bootm_data data = {
+		.os_address = UIMAGE_SOME_ADDRESS,
+		.initrd_address = UIMAGE_SOME_ADDRESS,
+	};
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
+	data.oftree_file = getenv_nonempty("global.bootm.oftree");
+	data.os_file = getenv_nonempty("global.bootm.image");
+	getenv_ul("global.bootm.image.loadaddr", &data.os_address);
+	getenv_ul("global.bootm.initrd.loadaddr", &data.initrd_address);
+	data.initrd_file = getenv_nonempty("global.bootm.initrd");
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
+static int boot_entry(struct blspec_entry *be)
 {
-	struct blspec_entry *be = container_of(me, struct blspec_entry, me);
 	int ret;
 
 	if (be->scriptpath) {
 		ret = boot_script(be->scriptpath);
 	} else {
 		if (IS_ENABLED(CONFIG_BLSPEC))
-			ret = blspec_boot(be, 0, 0);
+			ret = blspec_boot(be, verbose, dryrun);
 		else
 			ret = -ENOSYS;
 	}
 
+	return ret;
+}
+
+static void bootsource_action(struct menu *m, struct menu_entry *me)
+{
+	struct blspec_entry *be = container_of(me, struct blspec_entry, me);
+	int ret;
+
+	ret = boot_entry(be);
 	if (ret)
 		printf("Booting failed with: %s\n", strerror(-ret));
 
@@ -55,46 +98,140 @@ static void bootsource_action(struct menu *m, struct menu_entry *me)
 	read_key();
 }
 
-static int bootsources_menu_env_entries(struct blspec *blspec)
+/*
+ * bootscript_create_entry - create a boot entry from a script name
+ */
+static int bootscript_create_entry(struct blspec *blspec, const char *name)
+{
+	struct blspec_entry *be;
+
+	be = blspec_entry_alloc(blspec);
+	be->me.type = MENU_ENTRY_NORMAL;
+	be->scriptpath = xstrdup(name);
+	be->me.display = xstrdup(basename(be->scriptpath));
+
+	return 0;
+}
+
+/*
+ * bootscript_scan_path - create boot entries from a path
+ *
+ * path can either be a full path to a bootscript or a full path to a diretory
+ * containing bootscripts.
+ */
+static int bootscript_scan_path(struct blspec *blspec, const char *path)
 {
-	const char *path = "/env/boot";
+	struct stat s;
 	DIR *dir;
 	struct dirent *d;
-	struct blspec_entry *be;
+	int ret;
+	int found = 0;
+
+	ret = stat(path, &s);
+	if (ret)
+		return ret;
+
+	if (!S_ISDIR(s.st_mode)) {
+		ret = bootscript_create_entry(blspec, path);
+		if (ret)
+			return ret;
+		return 1;
+	}
 
 	dir = opendir(path);
 	if (!dir)
 		return -errno;
 
 	while ((d = readdir(dir))) {
+		char *bootscript_path;
 
 		if (*d->d_name == '.')
 			continue;
 
-		be = blspec_entry_alloc(blspec);
-		be->me.type = MENU_ENTRY_NORMAL;
-		be->scriptpath = asprintf("/env/boot/%s", d->d_name);
-		be->me.display = xstrdup(d->d_name);
+		bootscript_path = asprintf("%s/%s", path, d->d_name);
+		bootscript_create_entry(blspec, bootscript_path);
+		found++;
+		free(bootscript_path);
 	}
 
+	ret = found;
+
 	closedir(dir);
 
-	return 0;
+	return ret;
+}
+
+/*
+ * bootentry_parse_one - create boot entries from a name
+ *
+ * name can be:
+ * - a name of a boot script under /env/boot
+ * - a full path of a boot script
+ * - a device name
+ * - a cdev name
+ * - a full path of a directory containing bootloader spec entries
+ * - a full path of a directory containing bootscripts
+ *
+ * Returns the number of entries found or a negative error code.
+ */
+static int bootentry_parse_one(struct blspec *blspec, const char *name)
+{
+	int found = 0, ret;
+
+	if (IS_ENABLED(CONFIG_BLSPEC)) {
+		ret = blspec_scan_devicename(blspec, name);
+		if (ret > 0)
+			found += ret;
+		ret = blspec_scan_directory(blspec, name);
+		if (ret > 0)
+			found += ret;
+	}
+
+	if (!found) {
+		char *path;
+
+		if (*name != '/')
+			path = asprintf("/env/boot/%s", name);
+		else
+			path = xstrdup(name);
+
+		ret = bootscript_scan_path(blspec, path);
+		if (ret > 0)
+			found += ret;
+
+		free(path);
+	}
+
+	return found;
 }
 
-static struct blspec *bootentries_collect(void)
+/*
+ * bootentries_collect - collect bootentries from an array of names
+ */
+static struct blspec *bootentries_collect(char *entries[], int num_entries)
 {
 	struct blspec *blspec;
+	int i;
 
 	blspec = blspec_alloc();
 	blspec->menu->display = asprintf("boot");
-	bootsources_menu_env_entries(blspec);
-	if (IS_ENABLED(CONFIG_BLSPEC))
+
+	if (!num_entries)
+		bootscript_scan_path(blspec, "/env/boot");
+
+	if (IS_ENABLED(CONFIG_BLSPEC) && !num_entries)
 		blspec_scan_devices(blspec);
+
+	for (i = 0; i < num_entries; i++)
+		bootentry_parse_one(blspec, entries[i]);
+
 	return blspec;
 }
 
-static void bootsources_menu(void)
+/*
+ * bootsources_menu - show a menu from an array of names
+ */
+static void bootsources_menu(char *entries[], int num_entries)
 {
 	struct blspec *blspec = NULL;
 	struct blspec_entry *entry;
@@ -105,7 +242,7 @@ static void bootsources_menu(void)
 		return;
 	}
 
-	blspec = bootentries_collect();
+	blspec = bootentries_collect(entries, num_entries);
 
 	blspec_for_each_entry(blspec, entry) {
 		entry->me.action = bootsource_action;
@@ -125,12 +262,15 @@ static void bootsources_menu(void)
 	blspec_free(blspec);
 }
 
-static void bootsources_list(void)
+/*
+ * bootsources_list - list boot entries from an array of names
+ */
+static void bootsources_list(char *entries[], int num_entries)
 {
 	struct blspec *blspec;
 	struct blspec_entry *entry;
 
-	blspec = bootentries_collect();
+	blspec = bootentries_collect(entries, num_entries);
 
 	printf("%-20s %-20s  %s\n", "device", "hwdevice", "title");
 	printf("%-20s %-20s  %s\n", "------", "--------", "-----");
@@ -146,118 +286,41 @@ static void bootsources_list(void)
 }
 
 /*
- * Start a single boot script. 'path' is a full path to a boot script.
- */
-static int boot_script(char *path)
-{
-	int ret;
-	struct bootm_data data = {
-		.os_address = UIMAGE_SOME_ADDRESS,
-		.initrd_address = UIMAGE_SOME_ADDRESS,
-	};
-
-	printf("booting %s...\n", basename(path));
-
-	globalvar_set_match("linux.bootargs.dyn.", "");
-	globalvar_set_match("bootm.", "");
-
-	ret = run_command(path, 0);
-	if (ret) {
-		printf("Running %s failed\n", path);
-		goto out;
-	}
-
-	data.initrd_address = UIMAGE_INVALID_ADDRESS;
-	data.os_address = UIMAGE_SOME_ADDRESS;
-	data.oftree_file = getenv_nonempty("global.bootm.oftree");
-	data.os_file = getenv_nonempty("global.bootm.image");
-	getenv_ul("global.bootm.image.loadaddr", &data.os_address);
-	getenv_ul("global.bootm.initrd.loadaddr", &data.initrd_address);
-	data.initrd_file = getenv_nonempty("global.bootm.initrd");
-	data.verbose = verbose;
-	data.dryrun = dryrun;
-
-	ret = bootm_boot(&data);
-	if (ret)
-		pr_err("Booting %s failed: %s\n", basename(path), strerror(-ret));
-out:
-	return ret;
-}
-
-/*
- * boot a script. 'name' can either be a filename under /env/boot/,
- * a full path to a boot script or a path to a directory. This function
- * returns a negative error on failure, or 0 on a successful dryrun boot.
+ * boot a script or a bootspec entry. 'name' can be:
+ * - a filename under /env/boot/
+ * - a full path to a boot script
+ * - a device name
+ * - a partition name under /dev/
+ * - a full path to a directory which
+ *   - contains boot scripts, or
+ *   - contains a loader/entries/ directory containing bootspec entries
+ *
+ * Returns a negative error on failure, or 0 on a successful dryrun boot.
  */
 static int boot(const char *name)
 {
-	char *path;
-	DIR *dir;
-	struct dirent *d;
-	struct stat s;
-	int ret;
-
-	if (*name == '/')
-		path = xstrdup(name);
-	else
-		path = asprintf("/env/boot/%s", name);
-
-	ret = stat(path, &s);
-	if (ret) {
-		if (!IS_ENABLED(CONFIG_BLSPEC)) {
-			pr_err("%s: %s\n", path, strerror(-ret));
-			goto out;
-		}
-
-		ret = blspec_boot_devicename(name, verbose, dryrun);
-		pr_err("%s: %s\n", name, strerror(-ret));
-		goto out;
-	}
+	struct blspec *blspec;
+	struct blspec_entry *entry;
+	int ret = -ENOENT;
 
-	if (S_ISREG(s.st_mode)) {
-		ret = boot_script(path);
-		goto out;
-	}
+	blspec = blspec_alloc();
+	ret = bootentry_parse_one(blspec, name);
+	if (ret < 0)
+		return ret;
 
-	dir = opendir(path);
-	if (!dir) {
-		ret = -errno;
-		printf("cannot open %s: %s\n", path, strerror(-errno));
-		goto out;
+	if (!ret) {
+		printf("Nothing bootable found on %s\n", name);
+		return -ENOENT;
 	}
 
-	while ((d = readdir(dir))) {
-		char *file;
-		struct stat s;
-
-		if (*d->d_name == '.')
-			continue;
-
-		file = asprintf("%s/%s", path, d->d_name);
-
-		ret = stat(file, &s);
-		if (ret) {
-			free(file);
-			continue;
-		}
-
-		if (!S_ISREG(s.st_mode)) {
-			free(file);
-			continue;
-		}
-
-		ret = boot_script(file);
-
-                free(file);
-
+	blspec_for_each_entry(blspec, entry) {
+		printf("booting %s\n", entry->me.display);
+		ret = boot_entry(entry);
 		if (!ret)
 			break;
+		printf("booting %s failed: %s\n", entry->me.display, strerror(-ret));
 	}
 
-	closedir(dir);
-out:
-	free(path);
-
 	return ret;
 }
 
@@ -288,12 +351,12 @@ static int do_boot(int argc, char *argv[])
 	}
 
 	if (do_list) {
-		bootsources_list();
+		bootsources_list(&argv[optind], argc - optind);
 		return 0;
 	}
 
 	if (do_menu) {
-		bootsources_menu();
+		bootsources_menu(&argv[optind], argc - optind);
 		return 0;
 	}
 
@@ -337,10 +400,14 @@ BAREBOX_CMD_HELP_START(boot)
 BAREBOX_CMD_HELP_USAGE("boot [OPTIONS] [BOOTSRC...]\n")
 BAREBOX_CMD_HELP_SHORT("Boot an operating system.\n")
 BAREBOX_CMD_HELP_SHORT("[BOOTSRC...] can be:\n")
-BAREBOX_CMD_HELP_SHORT("- a filename from /env/boot/\n")
-BAREBOX_CMD_HELP_SHORT("- a full path to a file\n")
-BAREBOX_CMD_HELP_SHORT("- a path to a directory. All files in this directory are treated\n")
-BAREBOX_CMD_HELP_SHORT("  as boot scripts.\n")
+BAREBOX_CMD_HELP_SHORT("- a filename under /env/boot/\n")
+BAREBOX_CMD_HELP_SHORT("- a full path to a boot script\n")
+BAREBOX_CMD_HELP_SHORT("- a device name\n")
+BAREBOX_CMD_HELP_SHORT("- a partition name under /dev/\n")
+BAREBOX_CMD_HELP_SHORT("- a full path to a directory which\n")
+BAREBOX_CMD_HELP_SHORT("   - contains boot scripts, or\n")
+BAREBOX_CMD_HELP_SHORT("   - contains a loader/entries/ directory containing bootspec entries\n")
+BAREBOX_CMD_HELP_SHORT("\n")
 BAREBOX_CMD_HELP_SHORT("Multiple bootsources may be given which are probed in order until\n")
 BAREBOX_CMD_HELP_SHORT("one succeeds.\n")
 BAREBOX_CMD_HELP_SHORT("\nOptions:\n")
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
