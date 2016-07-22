Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZp8-0002hx-5U
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:45:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 14:44:16 +0200
Message-Id: <1469191472-14491-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/18] blspec: Remove once/default handling
To: Barebox List <barebox@lists.infradead.org>

This is widely unused and in the way of subsequent cleanups. If you are
indeed using it please complain on the list, we'll find a solution to
add it back in a different way.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c  | 33 +++++---------------------------
 common/blspec.c  | 57 +-------------------------------------------------------
 include/blspec.h | 11 -----------
 3 files changed, 6 insertions(+), 95 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index c091b2e..152615f 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -256,7 +256,7 @@ static struct blspec *bootentries_collect(char *entries[], int num_entries)
 static void bootsources_menu(char *entries[], int num_entries)
 {
 	struct blspec *blspec = NULL;
-	struct blspec_entry *entry, *entry_default;
+	struct blspec_entry *entry;
 	struct menu_entry *back_entry;
 
 	if (!IS_ENABLED(CONFIG_MENU)) {
@@ -268,13 +268,9 @@ static void bootsources_menu(char *entries[], int num_entries)
 	if (!blspec)
 		return;
 
-	entry_default = blspec_entry_default(blspec);
-
 	blspec_for_each_entry(blspec, entry) {
 		entry->me.action = bootsource_action;
 		menu_add_entry(blspec->menu, &entry->me);
-		if (entry == entry_default)
-			menu_set_selected_entry(blspec->menu, &entry->me);
 	}
 
 	back_entry = xzalloc(sizeof(*back_entry));
@@ -299,23 +295,16 @@ static void bootsources_menu(char *entries[], int num_entries)
 static void bootsources_list(char *entries[], int num_entries)
 {
 	struct blspec *blspec;
-	struct blspec_entry *entry, *entry_default;
+	struct blspec_entry *entry;
 
 	blspec = bootentries_collect(entries, num_entries);
 	if (!blspec)
 		return;
 
-	entry_default = blspec_entry_default(blspec);
-
-	printf("  %-20s %-20s  %s\n", "device", "hwdevice", "title");
-	printf("  %-20s %-20s  %s\n", "------", "--------", "-----");
+	printf("%-20s %-20s  %s\n", "device", "hwdevice", "title");
+	printf("%-20s %-20s  %s\n", "------", "--------", "-----");
 
 	blspec_for_each_entry(blspec, entry) {
-		if (entry == entry_default)
-			printf("* ");
-		else
-			printf("  ");
-
 		if (entry->scriptpath)
 			printf("%-40s   %s\n", basename(entry->scriptpath), entry->me.display);
 		else
@@ -340,7 +329,7 @@ static void bootsources_list(char *entries[], int num_entries)
 static int boot(const char *name)
 {
 	struct blspec *blspec;
-	struct blspec_entry *entry, *entry_default;
+	struct blspec_entry *entry;
 	int ret;
 
 	blspec = blspec_alloc();
@@ -353,19 +342,7 @@ static int boot(const char *name)
 		return -ENOENT;
 	}
 
-	entry_default = blspec_entry_default(blspec);
-	if (entry_default) {
-		ret = boot_entry(entry_default);
-		if (!ret)
-			return ret;
-		printf("booting %s failed: %s\n", entry_default->me.display,
-				strerror(-ret));
-	}
-
 	blspec_for_each_entry(blspec, entry) {
-		if (entry == entry_default)
-			continue;
-
 		printf("booting %s\n", entry->me.display);
 		ret = boot_entry(entry);
 		if (!ret)
diff --git a/common/blspec.c b/common/blspec.c
index 2e9d87b..b964155 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -329,7 +329,7 @@ int blspec_scan_directory(struct blspec *blspec, const char *root)
 	char *abspath;
 	int ret, found = 0;
 	const char *dirname = "loader/entries";
-	char *entry_default = NULL, *entry_once = NULL, *name, *nfspath = NULL;
+	char *nfspath = NULL;
 
 	nfspath = parse_nfs_url(root);
 	if (!IS_ERR(nfspath))
@@ -337,9 +337,6 @@ int blspec_scan_directory(struct blspec *blspec, const char *root)
 
 	pr_info("%s: %s %s\n", __func__, root, dirname);
 
-	entry_default = read_file_line("%s/default", root);
-	entry_once = read_file_line("%s/once", root);
-
 	abspath = basprintf("%s/%s", root, dirname);
 
 	dir = opendir(abspath);
@@ -404,13 +401,6 @@ int blspec_scan_directory(struct blspec *blspec, const char *root)
 
 		found++;
 
-		name = basprintf("%s/%s", dirname, d->d_name);
-		if (entry_default && !strcmp(name, entry_default))
-			entry->boot_default = true;
-		if (entry_once && !strcmp(name, entry_once))
-			entry->boot_once = true;
-		free(name);
-
 		if (entry->cdev) {
 			devname = xstrdup(dev_name(entry->cdev->dev));
 			if (entry->cdev->dev->parent)
@@ -435,8 +425,6 @@ err_out:
 	if (!IS_ERR(nfspath))
 		free(nfspath);
 	free(abspath);
-	free(entry_default);
-	free(entry_once);
 
 	return ret;
 }
@@ -705,18 +693,6 @@ int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun)
 	pr_info("booting %s from %s\n", blspec_entry_var_get(entry, "title"),
 			entry->cdev ? dev_name(entry->cdev->dev) : "none");
 
-	if (entry->boot_once) {
-		char *s = basprintf("%s/once", abspath);
-
-		ret = unlink(s);
-		if (ret)
-			pr_err("unable to unlink 'once': %s\n", strerror(-ret));
-		else
-			pr_info("removed 'once'\n");
-
-		free(s);
-	}
-
 	ret = bootm_boot(&data);
 	if (ret)
 		pr_err("Booting failed\n");
@@ -727,34 +703,3 @@ err_out:
 
 	return ret;
 }
-
-/*
- * blspec_entry_default - find the entry to load.
- *
- * return in the order of precendence:
- * - The entry specified in the 'once' file
- * - The entry specified in the 'default' file
- * - The first entry
- */
-struct blspec_entry *blspec_entry_default(struct blspec *l)
-{
-	struct blspec_entry *entry_once = NULL;
-	struct blspec_entry *entry_default = NULL;
-	struct blspec_entry *entry_first = NULL;
-	struct blspec_entry *e;
-
-	list_for_each_entry(e, &l->entries, list) {
-		if (!entry_first)
-			entry_first = e;
-		if (e->boot_once)
-			entry_once = e;
-		if (e->boot_default)
-			entry_default = e;
-	}
-
-	if (entry_once)
-		return entry_once;
-	if (entry_default)
-		return entry_default;
-	return entry_first;
-}
diff --git a/include/blspec.h b/include/blspec.h
index 9fc42df..4b61ef8 100644
--- a/include/blspec.h
+++ b/include/blspec.h
@@ -15,8 +15,6 @@ struct blspec_entry {
 	struct cdev *cdev;
 	char *rootpath;
 	char *configpath;
-	bool boot_default;
-	bool boot_once;
 
 	struct menu_entry me;
 
@@ -89,13 +87,4 @@ static inline void blspec_free(struct blspec *blspec)
 	free(blspec);
 }
 
-#ifdef CONFIG_BLSPEC
-struct blspec_entry *blspec_entry_default(struct blspec *l);
-#else
-static inline struct blspec_entry *blspec_entry_default(struct blspec *l)
-{
-	return NULL;
-}
-#endif
-
 #endif /* __LOADER_H__ */
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
