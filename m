Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goNJn-000569-3l
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 06:56:25 +0000
Received: by mail-pf1-x443.google.com with SMTP id i12so9232245pfo.7
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 22:56:23 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 22:55:38 -0800
Message-Id: <20190129065549.29161-9-andrew.smirnov@gmail.com>
In-Reply-To: <20190129065549.29161-1-andrew.smirnov@gmail.com>
References: <20190129065549.29161-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 08/19] fs: Drop trivial .lseek() implementaitons in FS
 drivers
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There are no FS drivers that do not implement .lseek callback in the
codebase, so there doesn't seem to exist a use-case where lseek()
would return -ENOSYS due to fsdrv->lseek being NULL. At the same time
a large number of FS drivers implement only the most basic "always
succeeds" custom .lseek() hook.

Change the code of lseek() to treat absense of .lseek() to mean that
no special actions needs to be taken by FS driver and seek is always
successful and drop all of the trivial .lseek() implementations.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/cramfs/cramfs.c     |  6 ------
 fs/efivarfs.c          |  6 ------
 fs/ext4/ext_barebox.c  |  6 ------
 fs/fs.c                | 14 ++++++--------
 fs/omap4_usbbootfs.c   |  6 ------
 fs/ramfs.c             |  6 ------
 fs/ratpfs.c            |  8 --------
 fs/squashfs/squashfs.c |  6 ------
 fs/ubifs/ubifs.c       |  6 ------
 9 files changed, 6 insertions(+), 58 deletions(-)

diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index 1cce04fce..99cbdb920 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -166,11 +166,6 @@ static int cramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t size)
 	return cramfs_read_file(f->f_inode, f->pos, buf, size);
 }
 
-static loff_t cramfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
-{
-	return pos;
-}
-
 #if 0
 static int cramfs_info (struct device_d *dev)
 {
@@ -490,7 +485,6 @@ static void cramfs_remove(struct device_d *dev)
 
 static struct fs_driver_d cramfs_driver = {
 	.read		= cramfs_read,
-	.lseek		= cramfs_lseek,
 	.drv = {
 		.probe = cramfs_probe,
 		.remove = cramfs_remove,
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index 34a261935..d2615774e 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -307,11 +307,6 @@ static int efivarfs_truncate(struct device_d *dev, FILE *f, ulong size)
 	return 0;
 }
 
-static loff_t efivarfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
-{
-	return pos;
-}
-
 static DIR *efivarfs_opendir(struct device_d *dev, const char *pathname)
 {
 	struct efivarfs_priv *priv = dev->priv;
@@ -435,7 +430,6 @@ static struct fs_driver_d efivarfs_driver = {
 	.read      = efivarfs_read,
 	.write     = efivarfs_write,
 	.truncate  = efivarfs_truncate,
-	.lseek     = efivarfs_lseek,
 	.opendir   = efivarfs_opendir,
 	.readdir   = efivarfs_readdir,
 	.closedir  = efivarfs_closedir,
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index 6e41b8345..82d4c581e 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -59,11 +59,6 @@ static int ext_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 	return ext4fs_read_file(node, f->pos, insize, buf);
 }
 
-static loff_t ext_lseek(struct device_d *dev, FILE *f, loff_t pos)
-{
-	return pos;
-}
-
 static struct inode *ext_alloc_inode(struct super_block *sb)
 {
 	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
@@ -302,7 +297,6 @@ static void ext_remove(struct device_d *dev)
 
 static struct fs_driver_d ext_driver = {
 	.read      = ext_read,
-	.lseek     = ext_lseek,
 	.type      = filetype_ext,
 	.flags     = 0,
 	.drv = {
diff --git a/fs/fs.c b/fs/fs.c
index 7729fe8b1..34de0669a 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -413,10 +413,6 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 
 	f = &files[fildes];
 	fsdrv = f->fsdev->driver;
-	if (!fsdrv->lseek) {
-		ret = -ENOSYS;
-		goto out;
-	}
 
 	ret = -EINVAL;
 
@@ -442,10 +438,12 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 		goto out;
 	}
 
-	pos = fsdrv->lseek(&f->fsdev->dev, f, pos);
-	if (IS_ERR_VALUE(pos)) {
-		errno = -pos;
-		return -1;
+	if (fsdrv->lseek) {
+		pos = fsdrv->lseek(&f->fsdev->dev, f, pos);
+		if (IS_ERR_VALUE(pos)) {
+			errno = -pos;
+			return -1;
+		}
 	}
 
 	f->pos = pos;
diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
index 51038c705..cc33287b9 100644
--- a/fs/omap4_usbbootfs.c
+++ b/fs/omap4_usbbootfs.c
@@ -149,11 +149,6 @@ static int omap4_usbbootfs_read(
 	return size;
 }
 
-static loff_t omap4_usbbootfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
-{
-	return pos;
-}
-
 static DIR *omap4_usbbootfs_opendir(struct device_d *dev, const char *pathname)
 {
 	return NULL;
@@ -190,7 +185,6 @@ static struct fs_driver_d omap4_usbbootfs_driver = {
 	.open    = omap4_usbbootfs_open,
 	.close   = omap4_usbbootfs_close,
 	.read    = omap4_usbbootfs_read,
-	.lseek   = omap4_usbbootfs_lseek,
 	.opendir = omap4_usbbootfs_opendir,
 	.stat    = omap4_usbbootfs_stat,
 /*
diff --git a/fs/ramfs.c b/fs/ramfs.c
index f571cd5ca..153b9b614 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -347,11 +347,6 @@ static int ramfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t i
 	return insize;
 }
 
-static loff_t ramfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
-{
-	return pos;
-}
-
 static int ramfs_truncate(struct device_d *dev, FILE *f, ulong size)
 {
 	struct inode *inode = f->f_inode;
@@ -447,7 +442,6 @@ static void ramfs_remove(struct device_d *dev)
 static struct fs_driver_d ramfs_driver = {
 	.read      = ramfs_read,
 	.write     = ramfs_write,
-	.lseek     = ramfs_lseek,
 	.truncate  = ramfs_truncate,
 	.flags     = FS_DRIVER_NO_DEV,
 	.drv = {
diff --git a/fs/ratpfs.c b/fs/ratpfs.c
index e316289d7..dffd27654 100644
--- a/fs/ratpfs.c
+++ b/fs/ratpfs.c
@@ -284,13 +284,6 @@ out:
 	return ret;
 }
 
-static loff_t ratpfs_lseek(struct device_d __always_unused *dev,
-			  FILE *f, loff_t pos)
-{
-	pr_debug("%s\n", __func__);
-	return pos;
-}
-
 static DIR* ratpfs_opendir(struct device_d __always_unused *dev,
 			  const char *pathname)
 {
@@ -449,7 +442,6 @@ static struct fs_driver_d ratpfs_driver = {
 	.open      = ratpfs_open,
 	.close     = ratpfs_close,
 	.read      = ratpfs_read,
-	.lseek     = ratpfs_lseek,
 	.opendir   = ratpfs_opendir,
 	.readdir   = ratpfs_readdir,
 	.closedir  = ratpfs_closedir,
diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index 87b182a78..38aff6d5b 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -231,11 +231,6 @@ static int squashfs_read(struct device_d *_dev, FILE *f, void *buf,
 	return insize;
 }
 
-static loff_t squashfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
-{
-	return pos;
-}
-
 struct squashfs_dir {
 	struct file file;
 	struct dentry dentry;
@@ -251,7 +246,6 @@ static struct fs_driver_d squashfs_driver = {
 	.open		= squashfs_open,
 	.close		= squashfs_close,
 	.read		= squashfs_read,
-	.lseek		= squashfs_lseek,
 	.type		= filetype_squashfs,
 	.drv = {
 		.probe = squashfs_probe,
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index ec6d00890..494b1f261 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -394,11 +394,6 @@ static int ubifs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 	return insize;
 }
 
-static loff_t ubifs_lseek(struct device_d *dev, FILE *f, loff_t pos)
-{
-	return pos;
-}
-
 static void ubifs_set_rootarg(struct ubifs_priv *priv, struct fs_device_d *fsdev)
 {
 	struct ubi_volume_info vi = {};
@@ -475,7 +470,6 @@ static struct fs_driver_d ubifs_driver = {
 	.open      = ubifs_open,
 	.close     = ubifs_close,
 	.read      = ubifs_read,
-	.lseek     = ubifs_lseek,
 	.type = filetype_ubifs,
 	.flags     = 0,
 	.drv = {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
