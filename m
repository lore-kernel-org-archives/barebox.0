Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdKlx-0004P8-0I
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 14:04:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Nov 2013 15:04:25 +0100
Message-Id: <1383573870-11325-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/11] fs: Add function to get cdev by mountpath
To: barebox@lists.infradead.org

This is useful to know for the bootloader spec implementation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c      | 13 +++++++++++++
 include/fs.h |  2 ++
 2 files changed, 15 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 7d558e9..4563a81 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -283,6 +283,19 @@ static struct fs_device_d *get_fsdevice_by_path(const char *path)
 	return fs_dev_root;
 }
 
+/*
+ * get_cdev_by_mountpath - return the cdev the given path
+ *                         is mounted on
+ */
+struct cdev *get_cdev_by_mountpath(const char *path)
+{
+	struct fs_device_d *fsdev;
+
+	fsdev = get_fsdevice_by_path(path);
+
+	return fsdev->cdev;
+}
+
 char *get_mounted_path(const char *path)
 {
 	struct fs_device_d *fdev;
diff --git a/include/fs.h b/include/fs.h
index 99f1689..856e00a 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -184,6 +184,8 @@ char *normalise_link(const char *pathname, const char* symlink);
 
 char *get_mounted_path(const char *path);
 
+struct cdev *get_cdev_by_mountpath(const char *path);
+
 /* Register a new filesystem driver */
 int register_fs_driver(struct fs_driver_d *fsdrv);
 
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
