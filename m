Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1advza-0003k5-7T
 for barebox@lists.infradead.org; Thu, 10 Mar 2016 08:30:47 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Thu, 10 Mar 2016 09:29:54 +0100
Message-Id: <1457598600-10669-2-git-send-email-mpa@pengutronix.de>
In-Reply-To: <1457598600-10669-1-git-send-email-mpa@pengutronix.de>
References: <1457598600-10669-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH v2 2/8] fs: umount based on device path and mount path
To: barebox@lists.infradead.org

umount on Linux can be used on a mount pathes and device pathes. This
patch adds this functionality to barebox.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 commands/umount.c |  2 +-
 fs/fs.c           | 47 ++++++++++++++++++++++++++++++++++++++++++++---
 include/fs.h      |  1 +
 3 files changed, 46 insertions(+), 4 deletions(-)

diff --git a/commands/umount.c b/commands/umount.c
index 84c84e42c6bc..fdf4da95a021 100644
--- a/commands/umount.c
+++ b/commands/umount.c
@@ -37,7 +37,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(umount)
 	.cmd		= do_umount,
 	BAREBOX_CMD_DESC("umount a filesystem")
-	BAREBOX_CMD_OPTS("MOUNTPOINT")
+	BAREBOX_CMD_OPTS("MOUNTPOINT/DEVICEPATH")
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_umount_help)
 BAREBOX_CMD_END
diff --git a/fs/fs.c b/fs/fs.c
index 71cb43976d44..b44409bf3e4e 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1329,6 +1329,40 @@ err_free_path:
 }
 EXPORT_SYMBOL(mount);
 
+static int fsdev_umount(struct fs_device_d *fsdev)
+{
+	return unregister_device(&fsdev->dev);
+}
+
+/**
+ * umount_by_cdev Use a cdev struct to umount all mounted filesystems
+ * @param cdev cdev to the according device
+ * @return 0 on success or if cdev was not mounted, -errno otherwise
+ */
+int umount_by_cdev(struct cdev *cdev)
+{
+	struct fs_device_d *fs;
+	struct fs_device_d *fs_tmp;
+	int first_error = 0;
+
+	for_each_fs_device_safe(fs_tmp, fs) {
+		int ret;
+
+		if (fs->cdev == cdev) {
+			ret = fsdev_umount(fs);
+			if (ret) {
+				pr_err("Failed umounting %s, %d, continuing anyway\n",
+				       fs->path, ret);
+				if (!first_error)
+					first_error = ret;
+			}
+		}
+	}
+
+	return first_error;
+}
+EXPORT_SYMBOL(umount_by_cdev);
+
 int umount(const char *pathname)
 {
 	struct fs_device_d *fsdev = NULL, *f;
@@ -1341,6 +1375,15 @@ int umount(const char *pathname)
 		}
 	}
 
+	if (!fsdev) {
+		struct cdev *cdev = cdev_by_path(p);
+
+		if (cdev) {
+			free(p);
+			return umount_by_cdev(cdev);
+		}
+	}
+
 	free(p);
 
 	if (f == fs_dev_root && !list_is_singular(&fs_device_list)) {
@@ -1353,9 +1396,7 @@ int umount(const char *pathname)
 		return -EFAULT;
 	}
 
-	unregister_device(&fsdev->dev);
-
-	return 0;
+	return fsdev_umount(fsdev);
 }
 EXPORT_SYMBOL(umount);
 
diff --git a/include/fs.h b/include/fs.h
index 6cae157b9df8..b7cd128b5ee1 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -147,6 +147,7 @@ int readlink(const char *path, char *buf, size_t bufsiz);
 int mount (const char *device, const char *fsname, const char *path,
 		const char *fsoptions);
 int umount(const char *pathname);
+int umount_by_cdev(struct cdev *cdev);
 
 /* not-so-standard functions */
 int erase(int fd, size_t count, loff_t offset);
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
