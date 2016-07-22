Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZp9-0003gd-Sj
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:45:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 14:44:26 +0200
Message-Id: <1469191472-14491-13-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/18] bootentries: Move struct bootentries to include/boot.h
To: Barebox List <barebox@lists.infradead.org>

The boot function prototypes are declared in include/blspec.h. Move them
to include/boot.h where they belong.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/blspec.h | 21 +--------------------
 include/boot.h   | 20 ++++++++++++++++++++
 2 files changed, 21 insertions(+), 20 deletions(-)

diff --git a/include/blspec.h b/include/blspec.h
index 8a79df5..7d911f0 100644
--- a/include/blspec.h
+++ b/include/blspec.h
@@ -2,21 +2,7 @@
 #define __LOADER_H__
 
 #include <linux/list.h>
-#include <menu.h>
-
-struct bootentries {
-	struct list_head entries;
-	struct menu *menu;
-};
-
-struct bootentry {
-	struct list_head list;
-	struct menu_entry me;
-	char *title;
-	char *description;
-	int (*boot)(struct bootentry *entry, int verbose, int dryrun);
-	void (*release)(struct bootentry *entry);
-};
+#include <boot.h>
 
 struct blspec_entry {
 	struct bootentry entry;
@@ -37,9 +23,4 @@ int blspec_scan_device(struct bootentries *bootentries, struct device_d *dev);
 int blspec_scan_devicename(struct bootentries *bootentries, const char *devname);
 int blspec_scan_directory(struct bootentries *bootentries, const char *root);
 
-int bootentries_add_entry(struct bootentries *entries, struct bootentry *entry);
-
-#define bootentries_for_each_entry(bootentries, entry) \
-	list_for_each_entry(entry, &bootentries->entries, list)
-
 #endif /* __LOADER_H__ */
diff --git a/include/boot.h b/include/boot.h
index da40ac2..e0a61c5 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -2,6 +2,7 @@
 #define __BOOT_H
 
 #include <of.h>
+#include <menu.h>
 #include <environment.h>
 
 #ifdef CONFIG_FLEXIBLE_BOOTARGS
@@ -19,4 +20,23 @@ static inline int linux_bootargs_overwrite(const char *bootargs)
 }
 #endif
 
+struct bootentries {
+	struct list_head entries;
+	struct menu *menu;
+};
+
+struct bootentry {
+	struct list_head list;
+	struct menu_entry me;
+	char *title;
+	char *description;
+	int (*boot)(struct bootentry *entry, int verbose, int dryrun);
+	void (*release)(struct bootentry *entry);
+};
+
+int bootentries_add_entry(struct bootentries *entries, struct bootentry *entry);
+
+#define bootentries_for_each_entry(bootentries, entry) \
+	list_for_each_entry(entry, &bootentries->entries, list)
+
 #endif /* __BOOT_H */
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
