Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQDsU-0002MC-0A
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 10:05:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 29 Sep 2013 12:04:58 +0200
Message-Id: <1380449100-6295-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380449100-6295-1-git-send-email-s.hauer@pengutronix.de>
References: <1380449100-6295-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/9] fs: add cdev mount helpers
To: barebox@lists.infradead.org

Introduce helpers to iterate over cdevs and mount them to a known
path.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c      | 77 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/fs.h |  3 +++
 2 files changed, 80 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 3434134..784eea4 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -32,6 +32,7 @@
 #include <magicvar.h>
 #include <environment.h>
 #include <libgen.h>
+#include <block.h>
 
 void *read_file(const char *filename, size_t *size)
 {
@@ -1670,3 +1671,79 @@ ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, loff_t offse
 	return size;
 }
 EXPORT_SYMBOL(mem_write);
+
+/*
+ * cdev_get_mount_path - return the path a cdev is mounted on
+ *
+ * If a cdev is mounted return the path it's mounted on, NULL
+ * otherwise.
+ */
+const char *cdev_get_mount_path(struct cdev *cdev)
+{
+	struct fs_device_d *fsdev;
+
+	for_each_fs_device(fsdev) {
+		if (fsdev->cdev && fsdev->cdev == cdev)
+			return fsdev->path;
+	}
+
+	return NULL;
+}
+
+/*
+ * cdev_mount_default - mount a cdev to the default path
+ *
+ * If a cdev is already mounted return the path it's mounted on, otherwise
+ * mount it to /mnt/<cdevname> and return the path. Returns an error pointer
+ * on failure.
+ */
+const char *cdev_mount_default(struct cdev *cdev)
+{
+	const char *path;
+	char *newpath, *devpath;
+	int ret;
+
+	/*
+	 * If this cdev is already mounted somewhere use this path
+	 * instead of mounting it again to avoid corruption on the
+	 * filesystem.
+	 */
+	path = cdev_get_mount_path(cdev);
+	if (path)
+		return path;
+
+	newpath = asprintf("/mnt/%s", cdev->name);
+	make_directory(newpath);
+
+	devpath = asprintf("/dev/%s", cdev->name);
+
+	ret = mount(devpath, NULL, newpath);
+
+	free(devpath);
+
+	if (ret) {
+		free(newpath);
+		return ERR_PTR(ret);
+	}
+
+	return cdev_get_mount_path(cdev);
+}
+
+/*
+ * mount_all - iterate over block devices and mount all devices we are able to
+ */
+void mount_all(void)
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
+			cdev_mount_default(cdev);
+	}
+}
diff --git a/include/fs.h b/include/fs.h
index 5b4ad6f..99f1689 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -194,5 +194,8 @@ void automount_print(void);
 int unlink_recursive(const char *path, char **failedpath);
 
 int fsdev_open_cdev(struct fs_device_d *fsdev);
+const char *cdev_get_mount_path(struct cdev *cdev);
+const char *cdev_mount_default(struct cdev *cdev);
+void mount_all(void);
 
 #endif /* __FS_H */
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
