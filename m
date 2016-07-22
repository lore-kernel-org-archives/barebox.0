Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZp6-0002hu-7K
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:45:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 14:44:22 +0200
Message-Id: <1469191472-14491-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/18] bootentries: Add title/description
To: Barebox List <barebox@lists.infradead.org>

We currently have to special case blspec entries vs. boot scripts
in the common boot code since we want to print different informations
about them. This adds a 'title' and 'description' which can be filled
in with different information by bootscripts and blspec entries and
so we get rid of the special handling.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c  | 23 ++++++++++-------------
 common/blspec.c  |  9 ++++-----
 include/blspec.h |  4 ++++
 3 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index edf9eab..19f2fb5 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -130,7 +130,8 @@ static int bootscript_create_entry(struct bootentries *bootentries, const char *
 	be = blspec_entry_alloc(bootentries);
 	be->entry.me.type = MENU_ENTRY_NORMAL;
 	be->scriptpath = xstrdup(name);
-	be->entry.me.display = xstrdup(basename(be->scriptpath));
+	be->entry.title = xstrdup(basename(be->scriptpath));
+	be->entry.description = basprintf("script: %s", name);
 
 	return 0;
 }
@@ -273,6 +274,8 @@ static void bootsources_menu(char *entries[], int num_entries)
 		return;
 
 	bootentries_for_each_entry(bootentries, entry) {
+		if (!entry->me.display)
+			entry->me.display = xstrdup(entry->title);
 		entry->me.action = bootsource_action;
 		menu_add_entry(bootentries->menu, &entry->me);
 	}
@@ -305,17 +308,11 @@ static void bootsources_list(char *entries[], int num_entries)
 	if (!bootentries)
 		return;
 
-	printf("  %-20s %-20s  %s\n", "device", "hwdevice", "title");
-	printf("  %-20s %-20s  %s\n", "------", "--------", "-----");
+	printf("%-20s\n", "title");
+	printf("%-20s\n", "------");
 
-	bootentries_for_each_entry(bootentries, entry) {
-		struct blspec_entry *ble = container_of(entry, struct blspec_entry, entry);
-
-		if (ble->scriptpath)
-			printf("%-40s   %s\n", basename(ble->scriptpath), entry->me.display);
-		else
-			printf("%s\n", entry->me.display);
-	}
+	bootentries_for_each_entry(bootentries, entry)
+		printf("%-20s %s\n", entry->title, entry->description);
 
 	blspec_free(bootentries);
 }
@@ -349,11 +346,11 @@ static int boot(const char *name)
 	}
 
 	bootentries_for_each_entry(bootentries, entry) {
-		printf("booting %s\n", entry->me.display);
+		printf("booting %s\n", entry->title);
 		ret = boot_entry(entry);
 		if (!ret)
 			break;
-		printf("booting %s failed: %s\n", entry->me.display, strerror(-ret));
+		printf("booting %s failed: %s\n", entry->title, strerror(-ret));
 	}
 
 	return ret;
diff --git a/common/blspec.c b/common/blspec.c
index d1597f9..dff0928 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -409,11 +409,10 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
 				hwdevname = xstrdup(dev_name(entry->cdev->dev->parent));
 		}
 
-		entry->entry.me.display = basprintf("%-20s %-20s  %s",
-						devname ? devname : "",
-						hwdevname ? hwdevname : "",
-						blspec_entry_var_get(entry, "title"));
-
+		entry->entry.title = xstrdup(blspec_entry_var_get(entry, "title"));
+		entry->entry.description = basprintf("blspec entry, device: %s hwdevice: %s",
+						    devname ? devname : "none",
+						    hwdevname ? hwdevname : "none");
 		free(devname);
 		free(hwdevname);
 
diff --git a/include/blspec.h b/include/blspec.h
index aced246..c956f0d 100644
--- a/include/blspec.h
+++ b/include/blspec.h
@@ -12,6 +12,8 @@ struct bootentries {
 struct bootentry {
 	struct list_head list;
 	struct menu_entry me;
+	char *title;
+	char *description;
 };
 
 struct blspec_entry {
@@ -58,6 +60,8 @@ static inline void blspec_entry_free(struct blspec_entry *entry)
 	list_del(&entry->entry.list);
 	of_delete_node(entry->node);
 	free(entry->entry.me.display);
+	free(entry->entry.title);
+	free(entry->entry.description);
 	free(entry->scriptpath);
 	free(entry->configpath);
 	free(entry->rootpath);
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
