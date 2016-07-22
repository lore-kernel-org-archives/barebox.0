Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZoz-0003fv-St
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:44:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 14:44:21 +0200
Message-Id: <1469191472-14491-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
References: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/18] blspec: factor out a struct bootentry
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c  | 31 +++++++++++++++++--------------
 common/blspec.c  | 11 +++++++----
 include/blspec.h | 29 ++++++++++++++++++-----------
 3 files changed, 42 insertions(+), 29 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index 0dc0c86..edf9eab 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -78,9 +78,10 @@ late_initcall(init_boot_watchdog_timeout);
 BAREBOX_MAGICVAR_NAMED(global_watchdog_timeout, global.boot.watchdog_timeout,
 		"Watchdog enable timeout in seconds before booting");
 
-static int boot_entry(struct blspec_entry *be)
+static int boot_entry(struct bootentry *be)
 {
 	int ret;
+	struct blspec_entry *entry = container_of(be, struct blspec_entry, entry);
 
 	if (IS_ENABLED(CONFIG_WATCHDOG) && boot_watchdog_timeout) {
 		ret = watchdog_set_timeout(boot_watchdog_timeout);
@@ -88,8 +89,8 @@ static int boot_entry(struct blspec_entry *be)
 			pr_warn("Failed to enable watchdog: %s\n", strerror(-ret));
 	}
 
-	if (be->scriptpath) {
-		ret = boot_script(be->scriptpath);
+	if (entry->scriptpath) {
+		ret = boot_script(entry->scriptpath);
 	} else {
 		if (IS_ENABLED(CONFIG_BLSPEC))
 			ret = blspec_boot(be, verbose, dryrun);
@@ -102,7 +103,7 @@ static int boot_entry(struct blspec_entry *be)
 
 static void bootsource_action(struct menu *m, struct menu_entry *me)
 {
-	struct blspec_entry *be = container_of(me, struct blspec_entry, me);
+	struct bootentry *be = container_of(me, struct bootentry, me);
 	int ret;
 
 	ret = boot_entry(be);
@@ -127,9 +128,9 @@ static int bootscript_create_entry(struct bootentries *bootentries, const char *
 		return -EINVAL;
 
 	be = blspec_entry_alloc(bootentries);
-	be->me.type = MENU_ENTRY_NORMAL;
+	be->entry.me.type = MENU_ENTRY_NORMAL;
 	be->scriptpath = xstrdup(name);
-	be->me.display = xstrdup(basename(be->scriptpath));
+	be->entry.me.display = xstrdup(basename(be->scriptpath));
 
 	return 0;
 }
@@ -259,7 +260,7 @@ static struct bootentries *bootentries_collect(char *entries[], int num_entries)
 static void bootsources_menu(char *entries[], int num_entries)
 {
 	struct bootentries *bootentries = NULL;
-	struct blspec_entry *entry;
+	struct bootentry *entry;
 	struct menu_entry *back_entry;
 
 	if (!IS_ENABLED(CONFIG_MENU)) {
@@ -271,7 +272,7 @@ static void bootsources_menu(char *entries[], int num_entries)
 	if (!bootentries)
 		return;
 
-	blspec_for_each_entry(bootentries, entry) {
+	bootentries_for_each_entry(bootentries, entry) {
 		entry->me.action = bootsource_action;
 		menu_add_entry(bootentries->menu, &entry->me);
 	}
@@ -298,7 +299,7 @@ static void bootsources_menu(char *entries[], int num_entries)
 static void bootsources_list(char *entries[], int num_entries)
 {
 	struct bootentries *bootentries;
-	struct blspec_entry *entry;
+	struct bootentry *entry;
 
 	bootentries = bootentries_collect(entries, num_entries);
 	if (!bootentries)
@@ -307,9 +308,11 @@ static void bootsources_list(char *entries[], int num_entries)
 	printf("  %-20s %-20s  %s\n", "device", "hwdevice", "title");
 	printf("  %-20s %-20s  %s\n", "------", "--------", "-----");
 
-	blspec_for_each_entry(bootentries, entry) {
-		if (entry->scriptpath)
-			printf("%-40s   %s\n", basename(entry->scriptpath), entry->me.display);
+	bootentries_for_each_entry(bootentries, entry) {
+		struct blspec_entry *ble = container_of(entry, struct blspec_entry, entry);
+
+		if (ble->scriptpath)
+			printf("%-40s   %s\n", basename(ble->scriptpath), entry->me.display);
 		else
 			printf("%s\n", entry->me.display);
 	}
@@ -332,7 +335,7 @@ static void bootsources_list(char *entries[], int num_entries)
 static int boot(const char *name)
 {
 	struct bootentries *bootentries;
-	struct blspec_entry *entry;
+	struct bootentry *entry;
 	int ret;
 
 	bootentries = blspec_alloc();
@@ -345,7 +348,7 @@ static int boot(const char *name)
 		return -ENOENT;
 	}
 
-	blspec_for_each_entry(bootentries, entry) {
+	bootentries_for_each_entry(bootentries, entry) {
 		printf("booting %s\n", entry->me.display);
 		ret = boot_entry(entry);
 		if (!ret)
diff --git a/common/blspec.c b/common/blspec.c
index 81049a7..d1597f9 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -128,9 +128,11 @@ static struct blspec_entry *blspec_entry_open(struct bootentries *bootentries,
  */
 static int blspec_have_entry(struct bootentries *bootentries, const char *path)
 {
+	struct bootentry *be;
 	struct blspec_entry *e;
 
-	list_for_each_entry(e, &bootentries->entries, list) {
+	list_for_each_entry(be, &bootentries->entries, list) {
+		e = container_of(be, struct blspec_entry, entry);
 		if (e->configpath && !strcmp(e->configpath, path))
 			return 1;
 	}
@@ -407,7 +409,7 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
 				hwdevname = xstrdup(dev_name(entry->cdev->dev->parent));
 		}
 
-		entry->me.display = basprintf("%-20s %-20s  %s",
+		entry->entry.me.display = basprintf("%-20s %-20s  %s",
 						devname ? devname : "",
 						hwdevname ? hwdevname : "",
 						blspec_entry_var_get(entry, "title"));
@@ -415,7 +417,7 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
 		free(devname);
 		free(hwdevname);
 
-		entry->me.type = MENU_ENTRY_NORMAL;
+		entry->entry.me.type = MENU_ENTRY_NORMAL;
 	}
 
 	ret = found;
@@ -634,8 +636,9 @@ int blspec_scan_devicename(struct bootentries *bootentries, const char *devname)
  * In case of an error the error code is returned. This function may
  * return 0 in case of a succesful dry run.
  */
-int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun)
+int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 {
+	struct blspec_entry *entry = container_of(be, struct blspec_entry, entry);
 	int ret;
 	const char *abspath, *devicetree, *options, *initrd, *linuximage;
 	const char *appendroot;
diff --git a/include/blspec.h b/include/blspec.h
index cb4adc5..aced246 100644
--- a/include/blspec.h
+++ b/include/blspec.h
@@ -9,15 +9,19 @@ struct bootentries {
 	struct menu *menu;
 };
 
-struct blspec_entry {
+struct bootentry {
 	struct list_head list;
+	struct menu_entry me;
+};
+
+struct blspec_entry {
+	struct bootentry entry;
+
 	struct device_node *node;
 	struct cdev *cdev;
 	char *rootpath;
 	char *configpath;
 
-	struct menu_entry me;
-
 	char *scriptpath;
 };
 
@@ -25,7 +29,7 @@ int blspec_entry_var_set(struct blspec_entry *entry, const char *name,
 		const char *val);
 const char *blspec_entry_var_get(struct blspec_entry *entry, const char *name);
 
-int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun);
+int blspec_boot(struct bootentry *entry, int verbose, int dryrun);
 
 int blspec_scan_devices(struct bootentries *bootentries);
 
@@ -33,8 +37,8 @@ int blspec_scan_device(struct bootentries *bootentries, struct device_d *dev);
 int blspec_scan_devicename(struct bootentries *bootentries, const char *devname);
 int blspec_scan_directory(struct bootentries *bootentries, const char *root);
 
-#define blspec_for_each_entry(blspec, entry) \
-	list_for_each_entry(entry, &blspec->entries, list)
+#define bootentries_for_each_entry(bootentries, entry) \
+	list_for_each_entry(entry, &bootentries->entries, list)
 
 static inline struct blspec_entry *blspec_entry_alloc(struct bootentries *bootentries)
 {
@@ -44,16 +48,16 @@ static inline struct blspec_entry *blspec_entry_alloc(struct bootentries *booten
 
 	entry->node = of_new_node(NULL, NULL);
 
-	list_add_tail(&entry->list, &bootentries->entries);
+	list_add_tail(&entry->entry.list, &bootentries->entries);
 
 	return entry;
 }
 
 static inline void blspec_entry_free(struct blspec_entry *entry)
 {
-	list_del(&entry->list);
+	list_del(&entry->entry.list);
 	of_delete_node(entry->node);
-	free(entry->me.display);
+	free(entry->entry.me.display);
 	free(entry->scriptpath);
 	free(entry->configpath);
 	free(entry->rootpath);
@@ -75,10 +79,13 @@ static inline struct bootentries *blspec_alloc(void)
 
 static inline void blspec_free(struct bootentries *bootentries)
 {
-	struct blspec_entry *entry, *tmp;
+	struct bootentry *be, *tmp;
+	struct blspec_entry *entry;
 
-	list_for_each_entry_safe(entry, tmp, &bootentries->entries, list)
+	list_for_each_entry_safe(be, tmp, &bootentries->entries, list) {
+		entry = container_of(be, struct blspec_entry, entry);
 		blspec_entry_free(entry);
+	}
 	if (bootentries->menu)
 		free(bootentries->menu->display);
 	free(bootentries->menu);
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
