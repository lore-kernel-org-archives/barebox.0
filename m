Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdKlx-0004P9-0I
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 14:04:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Nov 2013 15:04:24 +0100
Message-Id: <1383573870-11325-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/11] blspec: Let scan functions return the number of entries
 found
To: barebox@lists.infradead.org

So that callers can detect whether entries are found or not.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c  | 53 +++++++++++++++++++++++++++++++++--------------------
 include/blspec.h |  2 +-
 2 files changed, 34 insertions(+), 21 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index bf833da..20af235 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -207,7 +207,7 @@ static int blspec_scan_directory(struct blspec *blspec, const char *root,
 			continue;
 		}
 
-		found = 1;
+		found++;
 
 		entry->rootpath = xstrdup(root);
 		entry->configpath = configname;
@@ -232,7 +232,7 @@ static int blspec_scan_directory(struct blspec *blspec, const char *root,
 		entry->me.type = MENU_ENTRY_NORMAL;
 	}
 
-	ret = found ? 0 : -ENOENT;
+	ret = found;
 
 	closedir(dir);
 err_out:
@@ -249,8 +249,8 @@ err_out:
  * Given a cdev this function mounts the filesystem and collects all blspec
  * entries found under /blspec/entries/.
  *
- * returns 0 if at least one entry could be successfully loaded, negative
- * error value otherwise.
+ * returns the number of entries found or a negative error code if some unexpected
+ * error occured.
  */
 static int blspec_scan_cdev(struct blspec *blspec, struct cdev *cdev)
 {
@@ -286,11 +286,14 @@ static int blspec_scan_cdev(struct blspec *blspec, struct cdev *cdev)
  * blspec_scan_devices - scan all devices for child cdevs
  *
  * Iterate over all devices and collect child their cdevs.
+ * Returns the number of entries found or a negative error code if some unexpected
+ * error occured.
  */
-void blspec_scan_devices(struct blspec *blspec)
+int blspec_scan_devices(struct blspec *blspec)
 {
 	struct device_d *dev;
 	struct block_device *bdev;
+	int ret, found = 0;
 
 	for_each_device(dev)
 		device_detect(dev);
@@ -298,9 +301,14 @@ void blspec_scan_devices(struct blspec *blspec)
 	for_each_block_device(bdev) {
 		struct cdev *cdev = &bdev->cdev;
 
-		list_for_each_entry(cdev, &bdev->dev->cdevs, devices_list)
-			blspec_scan_cdev(blspec, cdev);
+		list_for_each_entry(cdev, &bdev->dev->cdevs, devices_list) {
+			ret = blspec_scan_cdev(blspec, cdev);
+			if (ret > 0)
+				found += ret;
+		}
 	}
+
+	return found;
 }
 
 /*
@@ -308,12 +316,14 @@ void blspec_scan_devices(struct blspec *blspec)
  *
  * Given a device this functions scans over all child cdevs looking
  * for blspec entries.
+ * Returns the number of entries found or a negative error code if some unexpected
+ * error occured.
  */
 int blspec_scan_device(struct blspec *blspec, struct device_d *dev)
 {
 	struct device_d *child;
 	struct cdev *cdev;
-	int ret;
+	int ret, found = 0;
 
 	pr_debug("%s: %s\n", __func__, dev_name(dev));
 
@@ -326,8 +336,11 @@ int blspec_scan_device(struct blspec *blspec, struct device_d *dev)
 		 * should be used as $BOOT
 		 */
 		if (cdev->dos_partition_type == 0xea) {
-			blspec_scan_cdev(blspec, cdev);
-			return 0;
+			ret = blspec_scan_cdev(blspec, cdev);
+			if (ret == 0)
+				ret = -ENOENT;
+
+			return ret;
 		}
 
 		/*
@@ -343,8 +356,8 @@ int blspec_scan_device(struct blspec *blspec, struct device_d *dev)
 	/* Try child devices */
 	device_for_each_child(dev, child) {
 		ret = blspec_scan_device(blspec, child);
-		if (!ret)
-			return 0;
+		if (ret > 0)
+			return ret;
 	}
 
 	/*
@@ -353,11 +366,11 @@ int blspec_scan_device(struct blspec *blspec, struct device_d *dev)
 	 */
 	list_for_each_entry(cdev, &dev->cdevs, devices_list) {
 		ret = blspec_scan_cdev(blspec, cdev);
-		if (!ret)
-			return 0;
+		if (ret > 0)
+			found += ret;
 	}
 
-	return -ENODEV;
+	return found;
 }
 
 /*
@@ -365,6 +378,8 @@ int blspec_scan_device(struct blspec *blspec, struct device_d *dev)
  *
  * Given a name of a hardware device this functions scans over all child
  * cdevs looking for blspec entries.
+ * Returns the number of entries found or a negative error code if some unexpected
+ * error occured.
  */
 int blspec_scan_devicename(struct blspec *blspec, const char *devname)
 {
@@ -385,17 +400,15 @@ int blspec_scan_devicename(struct blspec *blspec, const char *devname)
 	cdev = cdev_by_name(devname);
 	if (cdev) {
 		int ret = blspec_scan_cdev(blspec, cdev);
-		if (!ret)
-			return 0;
+		if (ret > 0)
+			return ret;
 	}
 
 	dev = get_device_by_name(devname);
 	if (!dev)
 		return -ENODEV;
 
-	blspec_scan_device(blspec, dev);
-
-	return 0;
+	return blspec_scan_device(blspec, dev);
 }
 
 /*
diff --git a/include/blspec.h b/include/blspec.h
index a7b189a..7b483d3 100644
--- a/include/blspec.h
+++ b/include/blspec.h
@@ -33,7 +33,7 @@ int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun);
 
 int blspec_boot_devicename(const char *devname, int verbose, int dryrun);
 
-void blspec_scan_devices(struct blspec *blspec);
+int blspec_scan_devices(struct blspec *blspec);
 
 struct blspec_entry *blspec_entry_default(struct blspec *l);
 int blspec_scan_devicename(struct blspec *blspec, const char *devname);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
