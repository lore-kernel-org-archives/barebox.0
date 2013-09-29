Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQDsU-0002M6-0C
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 10:05:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 29 Sep 2013 12:04:53 +0200
Message-Id: <1380449100-6295-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] fs: cleanup backingstore handling
To: barebox@lists.infradead.org

All filesystem drivers which need a backingstore device do the same
ignoring of '/dev/' in the backingstore followed by a cdev_open. Add a
helper function for it and let the core handle the cdev. As a side
effect this makes sure that fsdev->cdev is also set when a device is
mounted without the leading '/dev/' which was previously ignored
by the mount code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/cramfs/cramfs.c    | 18 +++++++++++-------
 fs/ext4/ext_barebox.c | 14 ++++----------
 fs/fat/fat.c          | 17 ++++-------------
 fs/fs.c               | 28 ++++++++++++++++++++--------
 fs/ubifs/ubifs.c      | 16 ++++++----------
 include/fs.h          |  2 ++
 6 files changed, 47 insertions(+), 48 deletions(-)

diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index 99f6d49..8218fcf 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -422,29 +422,33 @@ static int cramfs_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev;
 	struct cramfs_priv *priv;
+	int ret;
 
 	fsdev = dev_to_fs_device(dev);
 
 	priv = xmalloc(sizeof(struct cramfs_priv));
 	dev->priv = priv;
 
-	if (strncmp(fsdev->backingstore, "/dev/", 5))
-		return -ENODEV;
+	ret = fsdev_open_cdev(fsdev);
+	if (ret)
+		goto err_out;
 
-	priv->cdev = cdev_by_name(fsdev->backingstore + 5);
-	if (!priv->cdev)
-		return -ENODEV;
+	priv->cdev = fsdev->cdev;
 
 	if (cramfs_read_super(priv)) {
 		dev_info(dev, "no valid cramfs found\n");
-		free(priv);
-		return -EINVAL;
+		ret =  -EINVAL;
 	}
 
 	priv->curr_base = -1;
 
 	cramfs_uncompress_init ();
 	return 0;
+
+err_out:
+	free(priv);
+
+	return ret;
 }
 
 static void cramfs_remove(struct device_d *dev)
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index adc8f75..69a7723 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -225,7 +225,6 @@ static int ext_readlink(struct device_d *dev, const char *pathname,
 static int ext_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
-	char *backingstore = fsdev->backingstore;
 	int ret;
 	struct ext_filesystem *fs;
 
@@ -234,14 +233,11 @@ static int ext_probe(struct device_d *dev)
 	dev->priv = fs;
 	fs->dev = dev;
 
-	if (!strncmp(backingstore , "/dev/", 5))
-		backingstore += 5;
-
-	fs->cdev = cdev_open(backingstore, O_RDWR);
-	if (!fs->cdev) {
-		ret = -ENOENT;
+	ret = fsdev_open_cdev(fsdev);
+	if (ret)
 		goto err_open;
-	}
+
+	fs->cdev = fsdev->cdev;
 
 	ret = ext4fs_mount(fs);
 	if (ret)
@@ -250,7 +246,6 @@ static int ext_probe(struct device_d *dev)
 	return 0;
 
 err_mount:
-	cdev_close(fs->cdev);
 err_open:
 	free(fs);
 
@@ -262,7 +257,6 @@ static void ext_remove(struct device_d *dev)
 	struct ext_filesystem *fs = dev->priv;
 
 	ext4fs_umount(fs);
-	cdev_close(fs->cdev);
 	free(fs);
 }
 
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 15879c4..e65ef58 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -373,19 +373,15 @@ static int fat_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct fat_priv *priv = xzalloc(sizeof(struct fat_priv));
-	char *backingstore = fsdev->backingstore;
 	int ret;
 
 	dev->priv = priv;
 
-	if (!strncmp(backingstore , "/dev/", 5))
-		backingstore += 5;
-
-	priv->cdev = cdev_open(backingstore, O_RDWR);
-	if (!priv->cdev) {
-		ret = -ENOENT;
+	ret = fsdev_open_cdev(fsdev);
+	if (ret)
 		goto err_open;
-	}
+
+	priv->cdev = fsdev->cdev;
 
 	priv->fat.userdata = priv;
 	ret = f_mount(&priv->fat);
@@ -395,7 +391,6 @@ static int fat_probe(struct device_d *dev)
 	return 0;
 
 err_mount:
-	cdev_close(priv->cdev);
 err_open:
 	free(priv);
 
@@ -404,10 +399,6 @@ err_open:
 
 static void fat_remove(struct device_d *dev)
 {
-	struct fat_priv *priv = dev->priv;
-
-	cdev_close(priv->cdev);
-
 	free(dev->priv);
 }
 
diff --git a/fs/fs.c b/fs/fs.c
index d913a50..4618b4f 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1231,6 +1231,9 @@ static void fs_remove(struct device_d *dev)
 	if (fsdev == fs_dev_root)
 		fs_dev_root = NULL;
 
+	if (fsdev->cdev)
+		cdev_close(fsdev->cdev);
+
 	free(fsdev->backingstore);
 	free(fsdev);
 }
@@ -1279,6 +1282,23 @@ static const char *detect_fs(const char *filename)
 	return NULL;
 }
 
+int fsdev_open_cdev(struct fs_device_d *fsdev)
+{
+	const char *backingstore = fsdev->backingstore;
+
+	if (!strncmp(backingstore , "/dev/", 5))
+		backingstore += 5;
+
+	fsdev->cdev = cdev_open(backingstore, O_RDWR);
+	if (!fsdev->cdev)
+		return -EINVAL;
+
+	fsdev->dev.parent = fsdev->cdev->dev;
+	fsdev->parent_device = fsdev->cdev->dev;
+
+	return 0;
+}
+
 /*
  * Mount a device to a directory.
  * We do this by registering a new device on which the filesystem
@@ -1323,14 +1343,6 @@ int mount(const char *device, const char *fsname, const char *_path)
 	fsdev->path = xstrdup(path);
 	fsdev->dev.bus = &fs_bus;
 
-	if (!strncmp(device, "/dev/", 5))
-		fsdev->cdev = cdev_by_name(device + 5);
-
-	if (fsdev->cdev) {
-		fsdev->dev.parent = fsdev->cdev->dev;
-		fsdev->parent_device = fsdev->cdev->dev;
-	}
-
 	ret = register_device(&fsdev->dev);
 	if (ret)
 		goto err_register;
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 9df8dc5..dfa6107 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -553,25 +553,22 @@ static int ubifs_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct ubifs_priv *priv = xzalloc(sizeof(struct ubifs_priv));
-	char *backingstore = fsdev->backingstore;
 	int ret;
 
 	dev->priv = priv;
 
-	if (!strncmp(backingstore , "/dev/", 5))
-		backingstore += 5;
-
-	priv->cdev = cdev_open(backingstore, O_RDONLY);
-	if (!priv->cdev) {
-		ret = -ENOENT;
+	ret = fsdev_open_cdev(fsdev);
+	if (ret)
 		goto err_free;
-	}
+
+	priv->cdev = fsdev->cdev;
 
 	priv->ubi = ubi_open_volume_cdev(priv->cdev, UBI_READONLY);
 	if (IS_ERR(priv->ubi)) {
 		dev_err(dev, "failed to open ubi volume: %s\n",
 				strerror(-PTR_ERR(priv->ubi)));
-		return PTR_ERR(priv->ubi);
+		ret = PTR_ERR(priv->ubi);
+		goto err_free;
 	}
 
 	priv->sb = ubifs_get_super(priv->ubi, 0);
@@ -596,7 +593,6 @@ static void ubifs_remove(struct device_d *dev)
 
 	ubifs_umount(c);
 	ubi_close_volume(priv->ubi);
-	cdev_close(priv->cdev);
 
 	free(c);
 	free(sb);
diff --git a/include/fs.h b/include/fs.h
index 22c0746..c6c0f0e 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -193,4 +193,6 @@ void automount_print(void);
 
 int unlink_recursive(const char *path, char **failedpath);
 
+int fsdev_open_cdev(struct fs_device_d *fsdev);
+
 #endif /* __FS_H */
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
