Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z5UUZ-0000Cn-MK
 for barebox@lists.infradead.org; Thu, 18 Jun 2015 07:44:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Jun 2015 09:43:41 +0200
Message-Id: <1434613424-19989-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434613424-19989-1-git-send-email-s.hauer@pengutronix.de>
References: <1434613424-19989-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] fs: Add device parameter for Linux root= option
To: Barebox List <barebox@lists.infradead.org>

When registering a filesystem device add a device parameter suitable
for the Linux root= option to boot from exactly this filesystem. Currently
the fs layer sets this parameter to the root=PARTUUID= mechanism if a
partuuid is available. Other filesystems like NFS and UBIFS which do
not have a PARTUUID can overwrite this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c      | 37 +++++++++++++++++++++++++++++++++++++
 include/fs.h |  4 ++++
 2 files changed, 41 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index c249f84..67c78cd 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1298,6 +1298,12 @@ int mount(const char *device, const char *fsname, const char *_path,
 		goto err_no_driver;
 	}
 
+	if (!fsdev->linux_rootarg && fsdev->cdev && fsdev->cdev->partuuid[0] != 0) {
+		char *str = asprintf("root=PARTUUID=%s", fsdev->cdev->partuuid);
+
+		fsdev_set_linux_rootarg(fsdev, str);
+	}
+
 	return 0;
 
 err_no_driver:
@@ -1708,3 +1714,34 @@ void mount_all(void)
 			cdev_mount_default(cdev, NULL);
 	}
 }
+
+void fsdev_set_linux_rootarg(struct fs_device_d *fsdev, const char *str)
+{
+	fsdev->linux_rootarg = xstrdup(str);
+
+	dev_add_param_fixed(&fsdev->dev, "linux.bootargs", fsdev->linux_rootarg);
+}
+
+/**
+ * path_get_linux_rootarg() - Given a path return a suitable root= option for
+ *                            Linux
+ * @path: The path
+ *
+ * Return: A string containing the root= option or an ERR_PTR. the returned
+ *         string must be freed by the caller.
+ */
+char *path_get_linux_rootarg(const char *path)
+{
+	struct fs_device_d *fsdev;
+	const char *str;
+
+	fsdev = get_fsdevice_by_path(path);
+	if (!fsdev)
+		return ERR_PTR(-EINVAL);
+
+	str = dev_get_param(&fsdev->dev, "linux.bootargs");
+	if (!str)
+		return ERR_PTR(-ENOSYS);
+
+	return xstrdup(str);
+}
diff --git a/include/fs.h b/include/fs.h
index f95464d..ee7e48b 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -100,6 +100,7 @@ struct fs_device_d {
 	struct device_d *parent_device;
 	struct list_head list;
 	char *options;
+	char *linux_rootarg;
 };
 
 #define drv_to_fs_driver(d) container_of(d, struct fs_driver_d, drv)
@@ -189,4 +190,7 @@ const char *cdev_get_mount_path(struct cdev *cdev);
 const char *cdev_mount_default(struct cdev *cdev, const char *fsoptions);
 void mount_all(void);
 
+void fsdev_set_linux_rootarg(struct fs_device_d *fsdev, const char *str);
+char *path_get_linux_rootarg(const char *path);
+
 #endif /* __FS_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
