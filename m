Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YT44Y-0001C3-5L
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 07:50:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  4 Mar 2015 08:49:58 +0100
Message-Id: <1425455398-18858-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1425455398-18858-1-git-send-email-s.hauer@pengutronix.de>
References: <1425455398-18858-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] fs: remove unnecessary device pointer argument
To: Barebox List <barebox@lists.infradead.org>

The struct device_d * argument is not necessary, it can be retrieved from
the FILE *. This adds a convenience function for doing this and removes
the struct device_d * argument from the the filesystem drivers functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/bpkfs.c            | 10 +++++-----
 fs/cramfs/cramfs.c    | 12 ++++++------
 fs/devfs.c            | 22 +++++++++++-----------
 fs/efi.c              | 12 ++++++------
 fs/ext4/ext_barebox.c | 12 ++++++------
 fs/fat/fat.c          | 16 ++++++++--------
 fs/fs.c               | 24 ++++++++++++------------
 fs/nfs.c              | 31 +++++++++++++++++--------------
 fs/omap4_usbbootfs.c  | 17 +++++++----------
 fs/ramfs.c            | 14 +++++++-------
 fs/tftp.c             | 21 +++++++++++----------
 fs/ubifs/ubifs.c      | 10 +++++-----
 fs/uimagefs.c         | 14 +++++++-------
 include/fs.h          | 27 ++++++++++++++++-----------
 14 files changed, 124 insertions(+), 118 deletions(-)

diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index 1e2619e..94b5379 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -126,9 +126,9 @@ static struct bpkfs_handle_data *bpkfs_get_by_type(
 	return NULL;
 }
 
-static int bpkfs_open(struct device_d *dev, FILE *f, const char *filename)
+static int bpkfs_open(FILE *f, const char *filename)
 {
-	struct bpkfs_handle *priv = dev->priv;
+	struct bpkfs_handle *priv = fs_driver_priv(f);
 	struct bpkfs_handle_data *d;
 	struct bpkfs_handle_hw *h;
 	char *dir, *file;
@@ -170,7 +170,7 @@ out:
 	return ret;
 }
 
-static int bpkfs_close(struct device_d *dev, FILE *file)
+static int bpkfs_close(FILE *file)
 {
 	struct bpkfs_handle_data *d = file->priv;
 
@@ -179,7 +179,7 @@ static int bpkfs_close(struct device_d *dev, FILE *file)
 	return 0;
 }
 
-static int bpkfs_read(struct device_d *dev, FILE *file, void *buf, size_t insize)
+static int bpkfs_read(FILE *file, void *buf, size_t insize)
 {
 	struct bpkfs_handle_data *d = file->priv;
 
@@ -191,7 +191,7 @@ static int bpkfs_read(struct device_d *dev, FILE *file, void *buf, size_t insize
 	}
 }
 
-static loff_t bpkfs_lseek(struct device_d *dev, FILE *file, loff_t pos)
+static loff_t bpkfs_lseek(FILE *file, loff_t pos)
 {
 	struct bpkfs_handle_data *d = file->priv;
 
diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index fb92714..d53421b 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -274,9 +274,9 @@ static int cramfs_closedir(struct device_d *dev, DIR *_dir)
 	return 0;
 }
 
-static int cramfs_open(struct device_d *_dev, FILE *file, const char *filename)
+static int cramfs_open(FILE *file, const char *filename)
 {
-	struct cramfs_priv *priv = _dev->priv;
+	struct cramfs_priv *priv = fs_driver_priv(file);
 	struct cramfs_inode_info *inodei;
 	char *f;
 
@@ -299,7 +299,7 @@ static int cramfs_open(struct device_d *_dev, FILE *file, const char *filename)
 	return 0;
 }
 
-static int cramfs_close(struct device_d *dev, FILE *file)
+static int cramfs_close(FILE *file)
 {
 	struct cramfs_inode_info *inodei = file->priv;
 
@@ -309,9 +309,9 @@ static int cramfs_close(struct device_d *dev, FILE *file)
 	return 0;
 }
 
-static int cramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t size)
+static int cramfs_read(FILE *f, void *buf, size_t size)
 {
-	struct cramfs_priv *priv = _dev->priv;
+	struct cramfs_priv *priv = fs_driver_priv(f);
 	struct cramfs_inode_info *inodei = f->priv;
 	struct cramfs_inode *inode = &inodei->inode;
 	unsigned int blocknr;
@@ -358,7 +358,7 @@ static int cramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t size)
 	return outsize;
 }
 
-static loff_t cramfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
+static loff_t cramfs_lseek(FILE *f, loff_t pos)
 {
 	f->pos = pos;
 	return f->pos;
diff --git a/fs/devfs.c b/fs/devfs.c
index c6db25c..4da21d4 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -35,14 +35,14 @@
 
 extern struct list_head cdev_list;
 
-static int devfs_read(struct device_d *_dev, FILE *f, void *buf, size_t size)
+static int devfs_read(FILE *f, void *buf, size_t size)
 {
 	struct cdev *cdev = f->priv;
 
 	return cdev_read(cdev, buf, size, f->pos, f->flags);
 }
 
-static int devfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t size)
+static int devfs_write(FILE *f, const void *buf, size_t size)
 {
 	struct cdev *cdev = f->priv;
 
@@ -52,7 +52,7 @@ static int devfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t s
 	return cdev_write(cdev, buf, size, f->pos, f->flags);
 }
 
-static loff_t devfs_lseek(struct device_d *_dev, FILE *f, loff_t pos)
+static loff_t devfs_lseek(FILE *f, loff_t pos)
 {
 	struct cdev *cdev = f->priv;
 	loff_t ret = -1;
@@ -66,7 +66,7 @@ static loff_t devfs_lseek(struct device_d *_dev, FILE *f, loff_t pos)
 	return ret - cdev->offset;
 }
 
-static int devfs_erase(struct device_d *_dev, FILE *f, size_t count, loff_t offset)
+static int devfs_erase(FILE *f, size_t count, loff_t offset)
 {
 	struct cdev *cdev = f->priv;
 
@@ -82,7 +82,7 @@ static int devfs_erase(struct device_d *_dev, FILE *f, size_t count, loff_t offs
 	return cdev->ops->erase(cdev, count, offset + cdev->offset);
 }
 
-static int devfs_protect(struct device_d *_dev, FILE *f, size_t count, loff_t offset, int prot)
+static int devfs_protect(FILE *f, size_t count, loff_t offset, int prot)
 {
 	struct cdev *cdev = f->priv;
 
@@ -92,7 +92,7 @@ static int devfs_protect(struct device_d *_dev, FILE *f, size_t count, loff_t of
 	return cdev->ops->protect(cdev, count, offset + cdev->offset, prot);
 }
 
-static int devfs_memmap(struct device_d *_dev, FILE *f, void **map, int flags)
+static int devfs_memmap(FILE *f, void **map, int flags)
 {
 	struct cdev *cdev = f->priv;
 	int ret = -ENOSYS;
@@ -108,7 +108,7 @@ static int devfs_memmap(struct device_d *_dev, FILE *f, void **map, int flags)
 	return ret;
 }
 
-static int devfs_open(struct device_d *_dev, FILE *f, const char *filename)
+static int devfs_open(FILE *f, const char *filename)
 {
 	struct cdev *cdev;
 	int ret;
@@ -133,7 +133,7 @@ static int devfs_open(struct device_d *_dev, FILE *f, const char *filename)
 	return 0;
 }
 
-static int devfs_close(struct device_d *_dev, FILE *f)
+static int devfs_close(FILE *f)
 {
 	struct cdev *cdev = f->priv;
 	int ret;
@@ -149,7 +149,7 @@ static int devfs_close(struct device_d *_dev, FILE *f)
 	return 0;
 }
 
-static int devfs_flush(struct device_d *_dev, FILE *f)
+static int devfs_flush(FILE *f)
 {
 	struct cdev *cdev = f->priv;
 
@@ -159,14 +159,14 @@ static int devfs_flush(struct device_d *_dev, FILE *f)
 	return 0;
 }
 
-static int devfs_ioctl(struct device_d *_dev, FILE *f, int request, void *buf)
+static int devfs_ioctl(FILE *f, int request, void *buf)
 {
 	struct cdev *cdev = f->priv;
 
 	return cdev_ioctl(cdev, request, buf);
 }
 
-static int devfs_truncate(struct device_d *dev, FILE *f, ulong size)
+static int devfs_truncate(FILE *f, ulong size)
 {
 	if (f->fsdev->dev.num_resources < 1)
 		return -ENOSPC;
diff --git a/fs/efi.c b/fs/efi.c
index d64b15b..ae44f43 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -204,7 +204,7 @@ static int efifs_rmdir(struct device_d *dev, const char *pathname)
 	return efifs_unlink(dev, pathname);
 }
 
-static int efifs_open(struct device_d *dev, FILE *f, const char *filename)
+static int efifs_open(FILE *f, const char *filename)
 {
 	struct efifs_priv *priv = fs_driver_priv(f);
 	efi_status_t efiret;
@@ -252,7 +252,7 @@ out:
 	return ret;
 }
 
-static int efifs_close(struct device_d *dev, FILE *f)
+static int efifs_close(FILE *f)
 {
 	struct efifs_file *ufile = f->priv;
 
@@ -263,7 +263,7 @@ static int efifs_close(struct device_d *dev, FILE *f)
 	return 0;
 }
 
-static int efifs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
+static int efifs_read(FILE *f, void *buf, size_t insize)
 {
 	struct efifs_file *ufile = f->priv;
 	efi_status_t efiret;
@@ -277,7 +277,7 @@ static int efifs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 	return bufsize;
 }
 
-static int efifs_write(struct device_d *_dev, FILE *f, const void *buf, size_t insize)
+static int efifs_write(FILE *f, const void *buf, size_t insize)
 {
 	struct efifs_file *ufile = f->priv;
 	efi_status_t efiret;
@@ -292,7 +292,7 @@ static int efifs_write(struct device_d *_dev, FILE *f, const void *buf, size_t i
 	return bufsize;
 }
 
-static loff_t efifs_lseek(struct device_d *dev, FILE *f, loff_t pos)
+static loff_t efifs_lseek(FILE *f, loff_t pos)
 {
 	struct efifs_file *ufile = f->priv;
 	efi_status_t efiret;
@@ -307,7 +307,7 @@ static loff_t efifs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 	return f->pos;
 }
 
-static int efifs_truncate(struct device_d *dev, FILE *f, unsigned long size)
+static int efifs_truncate(FILE *f, unsigned long size)
 {
 	struct efifs_file *ufile = f->priv;
 	efi_status_t efiret;
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index 5ec7ecd..3ffb634 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -46,9 +46,9 @@ int ext4fs_devread(struct ext_filesystem *fs, int __sector, int byte_offset,
 	return 0;
 }
 
-static int ext_open(struct device_d *dev, FILE *file, const char *filename)
+static int ext_open(FILE *file, const char *filename)
 {
-	struct ext_filesystem *fs = dev->priv;
+	struct ext_filesystem *fs = fs_driver_priv(file);
 	struct ext2fs_node *inode;
 	int ret;
 
@@ -62,21 +62,21 @@ static int ext_open(struct device_d *dev, FILE *file, const char *filename)
 	return 0;
 }
 
-static int ext_close(struct device_d *dev, FILE *f)
+static int ext_close(FILE *f)
 {
-	struct ext_filesystem *fs = dev->priv;
+	struct ext_filesystem *fs = fs_driver_priv(f);
 
 	ext4fs_free_node(f->priv, &fs->data->diropen);
 
 	return 0;
 }
 
-static int ext_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
+static int ext_read(FILE *f, void *buf, size_t insize)
 {
 	return ext4fs_read_file(f->priv, f->pos, insize, buf);
 }
 
-static loff_t ext_lseek(struct device_d *dev, FILE *f, loff_t pos)
+static loff_t ext_lseek(FILE *f, loff_t pos)
 {
 	f->pos = pos;
 
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 6d7d262..abe44dd 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -159,7 +159,7 @@ static int fat_rmdir(struct device_d *dev, const char *pathname)
 	return 0;
 }
 
-static int fat_write(struct device_d *_dev, FILE *f, const void *buf, size_t insize)
+static int fat_write(FILE *f, const void *buf, size_t insize)
 {
 	FIL *f_file = f->priv;
 	int outsize;
@@ -177,7 +177,7 @@ static int fat_write(struct device_d *_dev, FILE *f, const void *buf, size_t ins
 	return outsize;
 }
 
-static int fat_truncate(struct device_d *dev, FILE *f, ulong size)
+static int fat_truncate(FILE *f, ulong size)
 {
 	FIL *f_file = f->priv;
 	unsigned long lastofs;
@@ -201,9 +201,9 @@ static int fat_truncate(struct device_d *dev, FILE *f, ulong size)
 }
 #endif /* CONFIG_FS_FAT_WRITE */
 
-static int fat_open(struct device_d *dev, FILE *file, const char *filename)
+static int fat_open(FILE *file, const char *filename)
 {
-	struct fat_priv *priv = dev->priv;
+	struct fat_priv *priv = fs_driver_priv(file);
 	FIL *f_file;
 	int ret;
 	unsigned long flags = 0;
@@ -238,9 +238,9 @@ static int fat_open(struct device_d *dev, FILE *file, const char *filename)
 	return 0;
 }
 
-static int fat_close(struct device_d *dev, FILE *f)
+static int fat_close(FILE *f)
 {
-	struct fat_priv *priv = dev->priv;
+	struct fat_priv *priv = fs_driver_priv(f);
 	FIL *f_file = f->priv;
 
 	f_close(f_file);
@@ -252,7 +252,7 @@ static int fat_close(struct device_d *dev, FILE *f)
 	return 0;
 }
 
-static int fat_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
+static int fat_read(FILE *f, void *buf, size_t insize)
 {
 	int ret;
 	FIL *f_file = f->priv;
@@ -268,7 +268,7 @@ static int fat_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 	return outsize;
 }
 
-static loff_t fat_lseek(struct device_d *dev, FILE *f, loff_t pos)
+static loff_t fat_lseek(FILE *f, loff_t pos)
 {
 	FIL *f_file = f->priv;
 	int ret;
diff --git a/fs/fs.c b/fs/fs.c
index ffdfa2c..7d057ed 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -675,12 +675,12 @@ int open(const char *pathname, int flags, ...)
 
 	f->path = xstrdup(path);
 
-	ret = fsdrv->open(&fsdev->dev, f, path);
+	ret = fsdrv->open(f, path);
 	if (ret)
 		goto out;
 
 	if (!(s.st_mode & S_IFCHR) && (flags & O_TRUNC)) {
-		ret = fsdrv->truncate(&fsdev->dev, f, 0);
+		ret = fsdrv->truncate(f, 0);
 		f->size = 0;
 		if (ret)
 			goto out;
@@ -722,7 +722,7 @@ int ioctl(int fd, int request, void *buf)
 	fsdrv = f->fsdev->driver;
 
 	if (fsdrv->ioctl)
-		ret = fsdrv->ioctl(&f->fsdev->dev, f, request, buf);
+		ret = fsdrv->ioctl(f, request, buf);
 	else
 		ret = -ENOSYS;
 	if (ret)
@@ -743,7 +743,7 @@ static ssize_t __read(FILE *f, void *buf, size_t count)
 	if (!count)
 		return 0;
 
-	ret = fsdrv->read(&f->fsdev->dev, f, buf, count);
+	ret = fsdrv->read(f, buf, count);
 
 	if (ret < 0)
 		errno = -ret;
@@ -795,7 +795,7 @@ static ssize_t __write(FILE *f, const void *buf, size_t count)
 
 	fsdrv = f->fsdev->driver;
 	if (f->size != FILE_SIZE_STREAM && f->pos + count > f->size) {
-		ret = fsdrv->truncate(&f->fsdev->dev, f, f->pos + count);
+		ret = fsdrv->truncate(f, f->pos + count);
 		if (ret) {
 			if (ret != -ENOSPC)
 				goto out;
@@ -806,7 +806,7 @@ static ssize_t __write(FILE *f, const void *buf, size_t count)
 			f->size = f->pos + count;
 		}
 	}
-	ret = fsdrv->write(&f->fsdev->dev, f, buf, count);
+	ret = fsdrv->write(f, buf, count);
 out:
 	if (ret < 0)
 		errno = -ret;
@@ -864,7 +864,7 @@ int flush(int fd)
 
 	fsdrv = f->fsdev->driver;
 	if (fsdrv->flush)
-		ret = fsdrv->flush(&f->fsdev->dev, f);
+		ret = fsdrv->flush(f);
 	else
 		ret = 0;
 
@@ -913,7 +913,7 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 		goto out;
 	}
 
-	return fsdrv->lseek(&f->fsdev->dev, f, pos);
+	return fsdrv->lseek(f, pos);
 
 out:
 	if (ret)
@@ -939,7 +939,7 @@ int erase(int fd, size_t count, unsigned long offset)
 
 	fsdrv = f->fsdev->driver;
 	if (fsdrv->erase)
-		ret = fsdrv->erase(&f->fsdev->dev, f, count, offset);
+		ret = fsdrv->erase(f, count, offset);
 	else
 		ret = -ENOSYS;
 
@@ -966,7 +966,7 @@ int protect(int fd, size_t count, unsigned long offset, int prot)
 
 	fsdrv = f->fsdev->driver;
 	if (fsdrv->protect)
-		ret = fsdrv->protect(&f->fsdev->dev, f, count, offset, prot);
+		ret = fsdrv->protect(f, count, offset, prot);
 	else
 		ret = -ENOSYS;
 
@@ -1007,7 +1007,7 @@ void *memmap(int fd, int flags)
 	fsdrv = f->fsdev->driver;
 
 	if (fsdrv->memmap)
-		ret = fsdrv->memmap(&f->fsdev->dev, f, &retp, flags);
+		ret = fsdrv->memmap(f, &retp, flags);
 	else
 		ret = -EINVAL;
 
@@ -1030,7 +1030,7 @@ int close(int fd)
 	f = &files[fd];
 
 	fsdrv = f->fsdev->driver;
-	ret = fsdrv->close(&f->fsdev->dev, f);
+	ret = fsdrv->close(f);
 
 	put_file(f);
 
diff --git a/fs/nfs.c b/fs/nfs.c
index 2738c78..d6da791 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -971,16 +971,15 @@ static int nfs_rmdir(struct device_d *dev, const char *pathname)
 	return -ENOSYS;
 }
 
-static int nfs_truncate(struct device_d *dev, FILE *f, ulong size)
+static int nfs_truncate(FILE *f, ulong size)
 {
 	return -ENOSYS;
 }
 
-static struct file_priv *nfs_do_open(struct device_d *dev,
+static struct file_priv *nfs_do_open(struct nfs_priv *npriv,
 		const char *filename, struct stat **s)
 {
 	struct file_priv *priv;
-	struct nfs_priv *npriv = dev->priv;
 	int ret;
 	const char *tok;
 
@@ -1035,7 +1034,7 @@ static void nfs_do_close(struct file_priv *priv)
 	free(priv);
 }
 
-static struct file_priv *nfs_do_stat(struct device_d *dev,
+static struct file_priv *nfs_do_stat(struct nfs_priv *npriv,
 		const char *filename, struct stat *s)
 {
 	struct file_priv *priv;
@@ -1043,7 +1042,7 @@ static struct file_priv *nfs_do_stat(struct device_d *dev,
 	struct stat **sptr = &s;
 
 	debug("%s: filename = %s\n", __func__, filename);
-	priv = nfs_do_open(dev, filename, sptr);
+	priv = nfs_do_open(npriv, filename, sptr);
 	if (IS_ERR(priv))
 		return priv;
 
@@ -1119,10 +1118,11 @@ static int nfs_readlink_req(struct file_priv *priv, char* buf, size_t size)
 static int nfs_readlink(struct device_d *dev, const char *filename,
 			char *realname, size_t size)
 {
+	struct nfs_priv *npriv = dev->priv;
 	struct file_priv *priv;
 	int ret;
 
-	priv = nfs_do_open(dev, filename, NULL);
+	priv = nfs_do_open(npriv, filename, NULL);
 	if (IS_ERR(priv))
 		return PTR_ERR(priv);
 
@@ -1135,12 +1135,13 @@ static int nfs_readlink(struct device_d *dev, const char *filename,
 	return 0;
 }
 
-static int nfs_open(struct device_d *dev, FILE *file, const char *filename)
+static int nfs_open(FILE *file, const char *filename)
 {
+	struct nfs_priv *npriv = fs_driver_priv(file);
 	struct file_priv *priv;
 	struct stat s;
 
-	priv = nfs_do_stat(dev, filename, &s);
+	priv = nfs_do_stat(npriv, filename, &s);
 	if (IS_ERR(priv))
 		return PTR_ERR(priv);
 
@@ -1156,7 +1157,7 @@ static int nfs_open(struct device_d *dev, FILE *file, const char *filename)
 	return 0;
 }
 
-static int nfs_close(struct device_d *dev, FILE *file)
+static int nfs_close(FILE *file)
 {
 	struct file_priv *priv = file->priv;
 
@@ -1165,13 +1166,13 @@ static int nfs_close(struct device_d *dev, FILE *file)
 	return 0;
 }
 
-static int nfs_write(struct device_d *_dev, FILE *file, const void *inbuf,
+static int nfs_write(FILE *file, const void *inbuf,
 		size_t insize)
 {
 	return -ENOSYS;
 }
 
-static int nfs_read(struct device_d *dev, FILE *file, void *buf, size_t insize)
+static int nfs_read(FILE *file, void *buf, size_t insize)
 {
 	struct file_priv *priv = file->priv;
 
@@ -1187,7 +1188,7 @@ static int nfs_read(struct device_d *dev, FILE *file, void *buf, size_t insize)
 	return kfifo_get(priv->fifo, buf, insize);
 }
 
-static loff_t nfs_lseek(struct device_d *dev, FILE *file, loff_t pos)
+static loff_t nfs_lseek(FILE *file, loff_t pos)
 {
 	struct file_priv *priv = file->priv;
 
@@ -1199,11 +1200,12 @@ static loff_t nfs_lseek(struct device_d *dev, FILE *file, loff_t pos)
 
 static DIR *nfs_opendir(struct device_d *dev, const char *pathname)
 {
+	struct nfs_priv *npriv = dev->priv;
 	struct file_priv *priv;
 	void *buf = NULL;
 	struct nfs_dir *dir;
 
-	priv = nfs_do_open(dev, pathname, NULL);
+	priv = nfs_do_open(npriv, pathname, NULL);
 	if (IS_ERR(priv))
 		return NULL;
 
@@ -1295,9 +1297,10 @@ static int nfs_closedir(struct device_d *dev, DIR *dir)
 
 static int nfs_stat(struct device_d *dev, const char *filename, struct stat *s)
 {
+	struct nfs_priv *npriv = dev->priv;
 	struct file_priv *priv;
 
-	priv = nfs_do_stat(dev, filename, s);
+	priv = nfs_do_stat(npriv, filename, s);
 	if (IS_ERR(priv)) {
 		return PTR_ERR(priv);
 	} else {
diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
index 6085bca..7dba0c5 100644
--- a/fs/omap4_usbbootfs.c
+++ b/fs/omap4_usbbootfs.c
@@ -63,8 +63,7 @@ static int omap4_usbbootfs_truncate(struct device_d *dev, FILE *f, ulong size)
 }
 */
 
-static struct file_priv *omap4_usbbootfs_do_open(
-	struct device_d *dev, int accmode, const char *filename)
+static struct file_priv *omap4_usbbootfs_do_open(int accmode, const char *filename)
 {
 	struct file_priv *priv;
 	u32 data;
@@ -95,12 +94,11 @@ static struct file_priv *omap4_usbbootfs_do_open(
 	return priv;
 }
 
-static int omap4_usbbootfs_open(
-	struct device_d *dev, FILE *file, const char *filename)
+static int omap4_usbbootfs_open(FILE *file, const char *filename)
 {
 	struct file_priv *priv;
 
-	priv = omap4_usbbootfs_do_open(dev, file->flags, filename);
+	priv = omap4_usbbootfs_do_open(file->flags, filename);
 	if (IS_ERR(priv))
 		return PTR_ERR(priv);
 
@@ -121,14 +119,13 @@ static int omap4_usbbootfs_do_close(struct file_priv *priv)
 	return 0;
 }
 
-static int omap4_usbbootfs_close(struct device_d *dev, FILE *f)
+static int omap4_usbbootfs_close(FILE *f)
 {
 	struct file_priv *priv = f->priv;
 	return omap4_usbbootfs_do_close(priv);
 }
 
-static int omap4_usbbootfs_read(
-	struct device_d *dev, FILE *f, void *buf, size_t size)
+static int omap4_usbbootfs_read(FILE *f, void *buf, size_t size)
 {
 	struct file_priv *priv = f->priv;
 	u32 data;
@@ -151,7 +148,7 @@ static int omap4_usbbootfs_read(
 	return size;
 }
 
-static loff_t omap4_usbbootfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
+static loff_t omap4_usbbootfs_lseek(FILE *f, loff_t pos)
 {
 	f->pos = pos;
 	return pos;
@@ -167,7 +164,7 @@ static int omap4_usbbootfs_stat(
 {
 	struct file_priv *priv;
 
-	priv = omap4_usbbootfs_do_open(dev, O_RDONLY, filename);
+	priv = omap4_usbbootfs_do_open(O_RDONLY, filename);
 	if (IS_ERR(priv))
 		return PTR_ERR(priv);
 
diff --git a/fs/ramfs.c b/fs/ramfs.c
index fe5eb89..995b517 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -302,9 +302,9 @@ static int ramfs_rmdir(struct device_d *dev, const char *pathname)
 	return -ENOENT;
 }
 
-static int ramfs_open(struct device_d *dev, FILE *file, const char *filename)
+static int ramfs_open(FILE *file, const char *filename)
 {
-	struct ramfs_priv *priv = dev->priv;
+	struct ramfs_priv *priv = fs_driver_priv(file);
 	struct ramfs_inode *node = rlookup(priv, filename);
 
 	if (!node)
@@ -315,7 +315,7 @@ static int ramfs_open(struct device_d *dev, FILE *file, const char *filename)
 	return 0;
 }
 
-static int ramfs_close(struct device_d *dev, FILE *f)
+static int ramfs_close(FILE *f)
 {
 	return 0;
 }
@@ -349,7 +349,7 @@ static struct ramfs_chunk *ramfs_find_chunk(struct ramfs_inode *node, int chunk)
 	return data;
 }
 
-static int ramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
+static int ramfs_read(FILE *f, void *buf, size_t insize)
 {
 	struct ramfs_inode *node = f->priv;
 	int chunk;
@@ -398,7 +398,7 @@ static int ramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 	return insize;
 }
 
-static int ramfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t insize)
+static int ramfs_write(FILE *f, const void *buf, size_t insize)
 {
 	struct ramfs_inode *node = f->priv;
 	int chunk;
@@ -447,13 +447,13 @@ static int ramfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t i
 	return insize;
 }
 
-static loff_t ramfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
+static loff_t ramfs_lseek(FILE *f, loff_t pos)
 {
 	f->pos = pos;
 	return f->pos;
 }
 
-static int ramfs_truncate(struct device_d *dev, FILE *f, ulong size)
+static int ramfs_truncate(FILE *f, ulong size)
 {
 	struct ramfs_inode *node = f->priv;
 	int oldchunks, newchunks;
diff --git a/fs/tftp.c b/fs/tftp.c
index 72e4983..6b6d1bd 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -110,7 +110,7 @@ static int tftp_rmdir(struct device_d *dev, const char *pathname)
 	return -ENOSYS;
 }
 
-static int tftp_truncate(struct device_d *dev, FILE *f, ulong size)
+static int tftp_truncate(FILE *f, ulong size)
 {
 	return 0;
 }
@@ -376,11 +376,10 @@ static void tftp_handler(void *ctx, char *packet, unsigned len)
 	}
 }
 
-static struct file_priv *tftp_do_open(struct device_d *dev,
+static struct file_priv *tftp_do_open(struct tftp_priv *tpriv,
 		int accmode, const char *filename)
 {
 	struct file_priv *priv;
-	struct tftp_priv *tpriv = dev->priv;
 	int ret;
 
 	priv = xzalloc(sizeof(*priv));
@@ -461,11 +460,12 @@ out:
 	return ERR_PTR(ret);
 }
 
-static int tftp_open(struct device_d *dev, FILE *file, const char *filename)
+static int tftp_open(FILE *file, const char *filename)
 {
 	struct file_priv *priv;
+	struct tftp_priv *tpriv = fs_driver_priv(file);
 
-	priv = tftp_do_open(dev, file->flags, filename);
+	priv = tftp_do_open(tpriv, file->flags, filename);
 	if (IS_ERR(priv))
 		return PTR_ERR(priv);
 
@@ -513,14 +513,14 @@ static int tftp_do_close(struct file_priv *priv)
 	return 0;
 }
 
-static int tftp_close(struct device_d *dev, FILE *f)
+static int tftp_close(FILE *f)
 {
 	struct file_priv *priv = f->priv;
 
 	return tftp_do_close(priv);
 }
 
-static int tftp_write(struct device_d *_dev, FILE *f, const void *inbuf,
+static int tftp_write(FILE *f, const void *inbuf,
 		size_t insize)
 {
 	struct file_priv *priv = f->priv;
@@ -556,7 +556,7 @@ static int tftp_write(struct device_d *_dev, FILE *f, const void *inbuf,
 	return insize;
 }
 
-static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
+static int tftp_read(FILE *f, void *buf, size_t insize)
 {
 	struct file_priv *priv = f->priv;
 	size_t outsize = 0, now;
@@ -587,7 +587,7 @@ static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
 	return outsize;
 }
 
-static loff_t tftp_lseek(struct device_d *dev, FILE *f, loff_t pos)
+static loff_t tftp_lseek(FILE *f, loff_t pos)
 {
 	/* not implemented in tftp protocol */
 	return -ENOSYS;
@@ -602,8 +602,9 @@ static DIR* tftp_opendir(struct device_d *dev, const char *pathname)
 static int tftp_stat(struct device_d *dev, const char *filename, struct stat *s)
 {
 	struct file_priv *priv;
+	struct tftp_priv *tpriv = dev->priv;
 
-	priv = tftp_do_open(dev, O_RDONLY, filename);
+	priv = tftp_do_open(tpriv, O_RDONLY, filename);
 	if (IS_ERR(priv))
 		return PTR_ERR(priv);
 
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 68d90b3..7c143d7 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -332,9 +332,9 @@ struct ubifs_file {
 	struct ubifs_data_node *dn;
 };
 
-static int ubifs_open(struct device_d *dev, FILE *file, const char *filename)
+static int ubifs_open(FILE *file, const char *filename)
 {
-	struct ubifs_priv *priv = dev->priv;
+	struct ubifs_priv *priv = fs_driver_priv(file);
 	struct inode *inode;
 	struct ubifs_file *uf;
 
@@ -355,7 +355,7 @@ static int ubifs_open(struct device_d *dev, FILE *file, const char *filename)
 	return 0;
 }
 
-static int ubifs_close(struct device_d *dev, FILE *f)
+static int ubifs_close(FILE *f)
 {
 	struct ubifs_file *uf = f->priv;
 	struct inode *inode = uf->inode;
@@ -384,7 +384,7 @@ static int ubifs_get_block(struct ubifs_file *uf, unsigned int pos)
 	return 0;
 }
 
-static int ubifs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
+static int ubifs_read(FILE *f, void *buf, size_t insize)
 {
 	struct ubifs_file *uf = f->priv;
 	unsigned int pos = f->pos;
@@ -431,7 +431,7 @@ static int ubifs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 	return insize;
 }
 
-static loff_t ubifs_lseek(struct device_d *dev, FILE *f, loff_t pos)
+static loff_t ubifs_lseek(FILE *f, loff_t pos)
 {
 	f->pos = pos;
 
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index 3fdc5bd..a796e62 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -68,9 +68,9 @@ static struct uimagefs_handle_data *uimagefs_get_by_name(
 	return NULL;
 }
 
-static int uimagefs_open(struct device_d *dev, FILE *file, const char *filename)
+static int uimagefs_open(FILE *file, const char *filename)
 {
-	struct uimagefs_handle *priv = dev->priv;
+	struct uimagefs_handle *priv = fs_driver_priv(file);
 	struct uimagefs_handle_data *d;
 
 	if (filename[0] == '/')
@@ -94,7 +94,7 @@ static int uimagefs_open(struct device_d *dev, FILE *file, const char *filename)
 	return 0;
 }
 
-static int uimagefs_close(struct device_d *dev, FILE *file)
+static int uimagefs_close(FILE *file)
 {
 	struct uimagefs_handle_data *d = file->priv;
 
@@ -103,7 +103,7 @@ static int uimagefs_close(struct device_d *dev, FILE *file)
 	return 0;
 }
 
-static int uimagefs_read(struct device_d *dev, FILE *file, void *buf, size_t insize)
+static int uimagefs_read(FILE *file, void *buf, size_t insize)
 {
 	struct uimagefs_handle_data *d = file->priv;
 
@@ -115,7 +115,7 @@ static int uimagefs_read(struct device_d *dev, FILE *file, void *buf, size_t ins
 	}
 }
 
-static loff_t uimagefs_lseek(struct device_d *dev, FILE *file, loff_t pos)
+static loff_t uimagefs_lseek(FILE *file, loff_t pos)
 {
 	struct uimagefs_handle_data *d = file->priv;
 
@@ -179,9 +179,9 @@ static int uimagefs_stat(struct device_d *dev, const char *filename, struct stat
 	return 0;
 }
 
-static int uimagefs_ioctl(struct device_d *dev, FILE *f, int request, void *buf)
+static int uimagefs_ioctl(FILE *f, int request, void *buf)
 {
-	struct uimagefs_handle *priv = dev->priv;
+	struct uimagefs_handle *priv = fs_driver_priv(f);
 
 	if (request != UIMAGEFS_METADATA)
 		return  -EINVAL;
diff --git a/include/fs.h b/include/fs.h
index 61d7439..a25d674 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -49,32 +49,32 @@ struct fs_driver_d {
 	int (*unlink)(struct device_d *dev, const char *pathname);
 
 	/* Truncate a file to given size */
-	int (*truncate)(struct device_d *dev, FILE *f, ulong size);
+	int (*truncate)(FILE *f, ulong size);
 
 	int (*symlink)(struct device_d *dev, const char *pathname,
 		       const char *newpath);
 	int (*readlink)(struct device_d *dev, const char *pathname, char *name,
 			size_t size);
 
-	int (*open)(struct device_d *dev, FILE *f, const char *pathname);
-	int (*close)(struct device_d *dev, FILE *f);
-	int (*read)(struct device_d *dev, FILE *f, void *buf, size_t size);
-	int (*write)(struct device_d *dev, FILE *f, const void *buf, size_t size);
-	int (*flush)(struct device_d *dev, FILE *f);
-	loff_t (*lseek)(struct device_d *dev, FILE *f, loff_t pos);
+	int (*open)(FILE *f, const char *pathname);
+	int (*close)(FILE *f);
+	int (*read)(FILE *f, void *buf, size_t size);
+	int (*write)(FILE *f, const void *buf, size_t size);
+	int (*flush)(FILE *f);
+	loff_t (*lseek)(FILE *f, loff_t pos);
 
 	struct dir* (*opendir)(struct device_d *dev, const char *pathname);
 	struct dirent* (*readdir)(struct device_d *dev, struct dir *dir);
 	int (*closedir)(struct device_d *dev, DIR *dir);
 	int (*stat)(struct device_d *dev, const char *file, struct stat *stat);
 
-	int (*ioctl)(struct device_d *dev, FILE *f, int request, void *buf);
-	int (*erase)(struct device_d *dev, FILE *f, size_t count,
+	int (*ioctl)(FILE *f, int request, void *buf);
+	int (*erase)(FILE *f, size_t count,
 			loff_t offset);
-	int (*protect)(struct device_d *dev, FILE *f, size_t count,
+	int (*protect)(FILE *f, size_t count,
 			loff_t offset, int prot);
 
-	int (*memmap)(struct device_d *dev, FILE *f, void **map, int flags);
+	int (*memmap)(FILE *f, void **map, int flags);
 
 	struct driver_d drv;
 
@@ -102,6 +102,11 @@ struct fs_device_d {
 	char *options;
 };
 
+static inline void *fs_driver_priv(struct filep *f)
+{
+	return f->fsdev->dev.priv;
+}
+
 #define drv_to_fs_driver(d) container_of(d, struct fs_driver_d, drv)
 
 /*
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
