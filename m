Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z59pq-00068Z-7P
 for barebox@lists.infradead.org; Wed, 17 Jun 2015 09:40:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Jun 2015 11:40:12 +0200
Message-Id: <1434534012-30441-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434534012-30441-1-git-send-email-s.hauer@pengutronix.de>
References: <1434534012-30441-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] blspec: Automatically attach UBI devices
To: Barebox List <barebox@lists.infradead.org>

When blspec_scan_cdev finds an UBI device then attach it. This
allows us to boot blspec entries found on the UBIFS images inside
UBI volumes by pointing to the corresponding mtd partition.
With this we can do 'boot nand0.root' or even 'boot=nand0' on the
commandline.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 50 +++++++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 45 insertions(+), 5 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 3506388..aef246d 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -30,6 +30,7 @@
 #include <of.h>
 #include <linux/stat.h>
 #include <linux/err.h>
+#include <mtd/ubi-user.h>
 
 /*
  * blspec_entry_var_set - set a variable to a value
@@ -436,6 +437,35 @@ err_out:
 }
 
 /*
+ * blspec_scan_ubi - scan over a cdev containing UBI volumes
+ *
+ * This function attaches a cdev as UBI devices and collects all blspec
+ * entries found in the UBI volumes
+ *
+ * returns the number of entries found or a negative error code if some unexpected
+ * error occured.
+ */
+static int blspec_scan_ubi(struct blspec *blspec, struct cdev *cdev)
+{
+	struct device_d *child;
+	int ret, found = 0;
+
+	pr_debug("%s: %s\n", __func__, cdev->name);
+
+	ret = ubi_attach_mtd_dev(cdev->mtd, UBI_DEV_NUM_AUTO, 0, 20);
+	if (ret && ret != -EEXIST)
+		return 0;
+
+	device_for_each_child(cdev->dev, child) {
+		ret = blspec_scan_device(blspec, child);
+		if (ret > 0)
+			found += ret;
+	}
+
+	return found;
+}
+
+/*
  * blspec_scan_cdev - scan over a cdev
  *
  * Given a cdev this function mounts the filesystem and collects all blspec
@@ -446,9 +476,9 @@ err_out:
  */
 static int blspec_scan_cdev(struct blspec *blspec, struct cdev *cdev)
 {
-	int ret;
+	int ret, found = 0;
 	void *buf = xzalloc(512);
-	enum filetype type;
+	enum filetype type, filetype;
 	const char *rootpath;
 
 	pr_debug("%s: %s\n", __func__, cdev->name);
@@ -460,16 +490,26 @@ static int blspec_scan_cdev(struct blspec *blspec, struct cdev *cdev)
 	}
 
 	type = file_detect_partition_table(buf, 512);
+	filetype = file_detect_type(buf, 512);
 	free(buf);
 
 	if (type == filetype_mbr || type == filetype_gpt)
 		return -EINVAL;
 
+	if (filetype == filetype_ubi && IS_ENABLED(CONFIG_MTD_UBI)) {
+		ret = blspec_scan_ubi(blspec, cdev);
+		if (ret > 0)
+			found += ret;
+	}
+
 	rootpath = cdev_mount_default(cdev, NULL);
-	if (IS_ERR(rootpath))
-		return PTR_ERR(rootpath);
+	if (!IS_ERR(rootpath)) {
+		ret = blspec_scan_directory(blspec, rootpath);
+		if (ret > 0)
+			found += ret;
+	}
 
-	return blspec_scan_directory(blspec, rootpath);
+	return found;
 }
 
 /*
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
