Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aW7ed-0007OG-OQ
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 19:20:53 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Wed, 17 Feb 2016 20:20:26 +0100
Message-Id: <1455736826-14877-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH] bbu: Fix imx-bbu-nand-fcb handler to use complete device path
To: barebox@lists.infradead.org

Most barebox update handlers use the field "devicefile" with an absolute
path. imx-bbu-nand-fcb just misuses this property for the raw device
name that is used.

This patch replaces the device name with a full absolute path. Two
helper functions where introduced to be able to map the absolute path
back to the device within the devfs.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c |  6 +++---
 fs/devfs-core.c           | 25 +++++++++++++++++++++++++
 fs/fs.c                   | 12 ++++++++++++
 include/driver.h          |  1 +
 include/fs.h              |  2 ++
 5 files changed, 43 insertions(+), 3 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 22031f5b7f1a..b407932bd4c6 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -384,7 +384,7 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 				file_type_to_string(filetype)))
 		return -EINVAL;
 
-	bcb_cdev = cdev_by_name(handler->devicefile);
+	bcb_cdev = cdev_by_path(handler->devicefile);
 	if (!bcb_cdev) {
 		pr_err("%s: No FCB device!\n", __func__);
 		return -ENODEV;
@@ -528,7 +528,7 @@ int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
 	imx_handler->filetype = filetype_arm_barebox;
 
 	handler = &imx_handler->handler;
-	handler->devicefile = "nand0.barebox";
+	handler->devicefile = "/dev/nand0.barebox";
 	handler->name = name;
 	handler->flags = flags;
 	handler->handler = imx_bbu_nand_update;
@@ -623,7 +623,7 @@ int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
 	imx_handler->filetype = filetype_mxs_bootstream;
 
 	handler = &imx_handler->handler;
-	handler->devicefile = "nand0.barebox";
+	handler->devicefile = "/dev/nand0.barebox";
 	handler->name = name;
 	handler->flags = flags;
 	handler->handler = imx_bbu_nand_update;
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 88a7e3a1d62a..e8bfe97cf9e0 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -25,6 +25,8 @@
 #include <nand.h>
 #include <linux/err.h>
 #include <linux/mtd/mtd.h>
+#include <libgen.h>
+#include <fs.h>
 
 LIST_HEAD(cdev_list);
 
@@ -79,6 +81,29 @@ struct cdev *cdev_by_name(const char *filename)
 	return cdev_readlink(cdev);
 }
 
+struct cdev *cdev_by_path(const char *path)
+{
+	char *dir = xstrdup(path);
+	char *devname = basename(dir);
+	const char *mounted_driver;
+	struct cdev *cdev;
+
+	if (devname < dir)
+		return NULL;
+
+	*(devname - 1) = '\0';
+	mounted_driver = get_fsdrivername_by_path(dir);
+	if (!mounted_driver || strcmp(mounted_driver, "devfs")) {
+		free(dir);
+		return NULL;
+	}
+
+	cdev = cdev_by_name(devname);
+	free(dir);
+
+	return cdev;
+}
+
 struct cdev *cdev_by_device_node(struct device_node *node)
 {
 	struct cdev *cdev;
diff --git a/fs/fs.c b/fs/fs.c
index ace72f7d54e4..71cb43976d44 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -212,6 +212,18 @@ static struct fs_device_d *get_fsdevice_by_path(const char *path)
 	return fs_dev_root;
 }
 
+const char *get_fsdrivername_by_path(const char *path)
+{
+	struct fs_device_d *fsdev = NULL;
+
+	fsdev = get_fsdevice_by_path(path);
+
+	if (!fsdev)
+		return NULL;
+
+	return fsdev->driver->drv.name;
+}
+
 /*
  * get_cdev_by_mountpath - return the cdev the given path
  *                         is mounted on
diff --git a/include/driver.h b/include/driver.h
index 31c673452f91..72ee773903cb 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -462,6 +462,7 @@ struct cdev *device_find_partition(struct device_d *dev, const char *name);
 struct cdev *cdev_by_name(const char *filename);
 struct cdev *lcdev_by_name(const char *filename);
 struct cdev *cdev_readlink(struct cdev *cdev);
+struct cdev *cdev_by_path(const char *path);
 struct cdev *cdev_by_device_node(struct device_node *node);
 struct cdev *cdev_open(const char *name, unsigned long flags);
 int cdev_do_open(struct cdev *, unsigned long flags);
diff --git a/include/fs.h b/include/fs.h
index ee7e48b0f968..9ac4552dbacc 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -193,4 +193,6 @@ void mount_all(void);
 void fsdev_set_linux_rootarg(struct fs_device_d *fsdev, const char *str);
 char *path_get_linux_rootarg(const char *path);
 
+const char *get_fsdrivername_by_path(const char *path);
+
 #endif /* __FS_H */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
