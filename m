Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdKm1-0004Pq-RF
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 14:05:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Nov 2013 15:04:26 +0100
Message-Id: <1383573870-11325-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/11] blspec: make cdev optional
To: barebox@lists.infradead.org

the cdev for a given directory can be determined by get_cdev_by_mountpath().
Use this function and remove the cdev argument from blspec_scan_directory().
Also, export the function to make code possible which boots the bootloader
spec entries found in directories.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c  | 22 +++++++++++++---------
 include/blspec.h |  1 +
 2 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 20af235..cfefd26 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -138,8 +138,7 @@ static int blspec_have_entry(struct blspec *blspec, const char *path)
  * returns 0 if at least one entry could be successfully loaded, negative
  * error value otherwise.
  */
-static int blspec_scan_directory(struct blspec *blspec, const char *root,
-		struct cdev *cdev)
+int blspec_scan_directory(struct blspec *blspec, const char *root)
 {
 	struct blspec_entry *entry;
 	DIR *dir;
@@ -211,7 +210,7 @@ static int blspec_scan_directory(struct blspec *blspec, const char *root,
 
 		entry->rootpath = xstrdup(root);
 		entry->configpath = configname;
-		entry->cdev = cdev;
+		entry->cdev = get_cdev_by_mountpath(root);
 
 		name = asprintf("%s/%s", dirname, d->d_name);
 		if (entry_default && !strcmp(name, entry_default))
@@ -220,12 +219,17 @@ static int blspec_scan_directory(struct blspec *blspec, const char *root,
 			entry->boot_once = true;
 		free(name);
 
-		devname = xstrdup(dev_name(entry->cdev->dev));
-		if (entry->cdev->dev->parent)
-			hwdevname = xstrdup(dev_name(entry->cdev->dev->parent));
+		if (entry->cdev) {
+			devname = xstrdup(dev_name(entry->cdev->dev));
+			if (entry->cdev->dev->parent)
+				hwdevname = xstrdup(dev_name(entry->cdev->dev->parent));
+		}
 
-		entry->me.display = asprintf("%-20s %-20s  %s", devname, hwdevname,
+		entry->me.display = asprintf("%-20s %-20s  %s",
+				devname ? devname : "",
+				hwdevname ? hwdevname : "",
 				blspec_entry_var_get(entry, "title"));
+
 		free(devname);
 		free(hwdevname);
 
@@ -277,7 +281,7 @@ static int blspec_scan_cdev(struct blspec *blspec, struct cdev *cdev)
 	if (IS_ERR(rootpath))
 		return PTR_ERR(rootpath);
 
-	ret = blspec_scan_directory(blspec, rootpath, cdev);
+	ret = blspec_scan_directory(blspec, rootpath);
 
 	return ret;
 }
@@ -461,7 +465,7 @@ int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun)
 	globalvar_add_simple("linux.bootargs.blspec", options);
 
 	pr_info("booting %s from %s\n", blspec_entry_var_get(entry, "title"),
-			dev_name(entry->cdev->dev));
+			entry->cdev ? dev_name(entry->cdev->dev) : "none");
 
 	if (entry->boot_once) {
 		char *s = asprintf("%s/once", abspath);
diff --git a/include/blspec.h b/include/blspec.h
index 7b483d3..66d2e84 100644
--- a/include/blspec.h
+++ b/include/blspec.h
@@ -37,6 +37,7 @@ int blspec_scan_devices(struct blspec *blspec);
 
 struct blspec_entry *blspec_entry_default(struct blspec *l);
 int blspec_scan_devicename(struct blspec *blspec, const char *devname);
+int blspec_scan_directory(struct blspec *blspec, const char *root);
 
 #define blspec_for_each_entry(blspec, entry) \
 	list_for_each_entry(entry, &blspec->entries, list)
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
