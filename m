Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YT44U-0008VO-JP
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 07:50:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  4 Mar 2015 08:49:57 +0100
Message-Id: <1425455398-18858-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] fs: rename inode member of struct filep to priv
To: Barebox List <barebox@lists.infradead.org>

Because that's what it is. 'inode' will become confusing
once we support real inodes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/bpkfs.c            |  8 ++++----
 fs/cramfs/cramfs.c    |  6 +++---
 fs/devfs.c            | 20 ++++++++++----------
 fs/efi.c              | 14 +++++++-------
 fs/ext4/ext_barebox.c |  6 +++---
 fs/fat/fat.c          | 12 ++++++------
 fs/nfs.c              |  8 ++++----
 fs/omap4_usbbootfs.c  |  6 +++---
 fs/ramfs.c            |  8 ++++----
 fs/tftp.c             |  8 ++++----
 fs/ubifs/ubifs.c      |  6 +++---
 fs/uimagefs.c         |  8 ++++----
 include/fs.h          |  2 +-
 13 files changed, 56 insertions(+), 56 deletions(-)

diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index 8352307..1e2619e 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -161,7 +161,7 @@ static int bpkfs_open(struct device_d *dev, FILE *f, const char *filename)
 	}
 
 	f->size = d->size;
-	f->inode = d;
+	f->priv = d;
 	ret = 0;
 
 out:
@@ -172,7 +172,7 @@ out:
 
 static int bpkfs_close(struct device_d *dev, FILE *file)
 {
-	struct bpkfs_handle_data *d = file->inode;
+	struct bpkfs_handle_data *d = file->priv;
 
 	close(d->fd);
 
@@ -181,7 +181,7 @@ static int bpkfs_close(struct device_d *dev, FILE *file)
 
 static int bpkfs_read(struct device_d *dev, FILE *file, void *buf, size_t insize)
 {
-	struct bpkfs_handle_data *d = file->inode;
+	struct bpkfs_handle_data *d = file->priv;
 
 	if (bpkfs_is_crc_file(d)) {
 		memcpy(buf, &d->data[d->pos], insize);
@@ -193,7 +193,7 @@ static int bpkfs_read(struct device_d *dev, FILE *file, void *buf, size_t insize
 
 static loff_t bpkfs_lseek(struct device_d *dev, FILE *file, loff_t pos)
 {
-	struct bpkfs_handle_data *d = file->inode;
+	struct bpkfs_handle_data *d = file->priv;
 
 	if (!bpkfs_is_crc_file(d))
 		lseek(d->fd, d->offset + pos, SEEK_SET);
diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index 8218fcf..fb92714 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -290,7 +290,7 @@ static int cramfs_open(struct device_d *_dev, FILE *file, const char *filename)
 	if (!inodei)
 		return -ENOENT;
 
-	file->inode = inodei;
+	file->priv = inodei;
 	file->size = inodei->inode.size;
 
 	inodei->block_ptrs = xzalloc(4096);
@@ -301,7 +301,7 @@ static int cramfs_open(struct device_d *_dev, FILE *file, const char *filename)
 
 static int cramfs_close(struct device_d *dev, FILE *file)
 {
-	struct cramfs_inode_info *inodei = file->inode;
+	struct cramfs_inode_info *inodei = file->priv;
 
 	free(inodei->block_ptrs);
 	free(inodei);
@@ -312,7 +312,7 @@ static int cramfs_close(struct device_d *dev, FILE *file)
 static int cramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t size)
 {
 	struct cramfs_priv *priv = _dev->priv;
-	struct cramfs_inode_info *inodei = f->inode;
+	struct cramfs_inode_info *inodei = f->priv;
 	struct cramfs_inode *inode = &inodei->inode;
 	unsigned int blocknr;
 	int outsize = 0;
diff --git a/fs/devfs.c b/fs/devfs.c
index 872e19b..c6db25c 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -37,14 +37,14 @@ extern struct list_head cdev_list;
 
 static int devfs_read(struct device_d *_dev, FILE *f, void *buf, size_t size)
 {
-	struct cdev *cdev = f->inode;
+	struct cdev *cdev = f->priv;
 
 	return cdev_read(cdev, buf, size, f->pos, f->flags);
 }
 
 static int devfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t size)
 {
-	struct cdev *cdev = f->inode;
+	struct cdev *cdev = f->priv;
 
 	if (cdev->flags & DEVFS_PARTITION_READONLY)
 		return -EPERM;
@@ -54,7 +54,7 @@ static int devfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t s
 
 static loff_t devfs_lseek(struct device_d *_dev, FILE *f, loff_t pos)
 {
-	struct cdev *cdev = f->inode;
+	struct cdev *cdev = f->priv;
 	loff_t ret = -1;
 
 	if (cdev->ops->lseek)
@@ -68,7 +68,7 @@ static loff_t devfs_lseek(struct device_d *_dev, FILE *f, loff_t pos)
 
 static int devfs_erase(struct device_d *_dev, FILE *f, size_t count, loff_t offset)
 {
-	struct cdev *cdev = f->inode;
+	struct cdev *cdev = f->priv;
 
 	if (cdev->flags & DEVFS_PARTITION_READONLY)
 		return -EPERM;
@@ -84,7 +84,7 @@ static int devfs_erase(struct device_d *_dev, FILE *f, size_t count, loff_t offs
 
 static int devfs_protect(struct device_d *_dev, FILE *f, size_t count, loff_t offset, int prot)
 {
-	struct cdev *cdev = f->inode;
+	struct cdev *cdev = f->priv;
 
 	if (!cdev->ops->protect)
 		return -ENOSYS;
@@ -94,7 +94,7 @@ static int devfs_protect(struct device_d *_dev, FILE *f, size_t count, loff_t of
 
 static int devfs_memmap(struct device_d *_dev, FILE *f, void **map, int flags)
 {
-	struct cdev *cdev = f->inode;
+	struct cdev *cdev = f->priv;
 	int ret = -ENOSYS;
 
 	if (!cdev->ops->memmap)
@@ -120,7 +120,7 @@ static int devfs_open(struct device_d *_dev, FILE *f, const char *filename)
 
 	f->size = cdev->flags & DEVFS_IS_CHARACTER_DEV ?
 			FILE_SIZE_STREAM : cdev->size;
-	f->inode = cdev;
+	f->priv = cdev;
 
 	if (cdev->ops->open) {
 		ret = cdev->ops->open(cdev, f->flags);
@@ -135,7 +135,7 @@ static int devfs_open(struct device_d *_dev, FILE *f, const char *filename)
 
 static int devfs_close(struct device_d *_dev, FILE *f)
 {
-	struct cdev *cdev = f->inode;
+	struct cdev *cdev = f->priv;
 	int ret;
 
 	if (cdev->ops->close) {
@@ -151,7 +151,7 @@ static int devfs_close(struct device_d *_dev, FILE *f)
 
 static int devfs_flush(struct device_d *_dev, FILE *f)
 {
-	struct cdev *cdev = f->inode;
+	struct cdev *cdev = f->priv;
 
 	if (cdev->ops->flush)
 		return cdev->ops->flush(cdev);
@@ -161,7 +161,7 @@ static int devfs_flush(struct device_d *_dev, FILE *f)
 
 static int devfs_ioctl(struct device_d *_dev, FILE *f, int request, void *buf)
 {
-	struct cdev *cdev = f->inode;
+	struct cdev *cdev = f->priv;
 
 	return cdev_ioctl(cdev, request, buf);
 }
diff --git a/fs/efi.c b/fs/efi.c
index f096f91..d64b15b 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -206,7 +206,7 @@ static int efifs_rmdir(struct device_d *dev, const char *pathname)
 
 static int efifs_open(struct device_d *dev, FILE *f, const char *filename)
 {
-	struct efifs_priv *priv = dev->priv;
+	struct efifs_priv *priv = fs_driver_priv(f);
 	efi_status_t efiret;
 	struct efifs_file *ufile;
 	wchar_t *efi_path = path_to_efi(filename);
@@ -243,7 +243,7 @@ static int efifs_open(struct device_d *dev, FILE *f, const char *filename)
 	f->size = info->FileSize;
 
 	free(info);
-	f->inode = ufile;
+	f->priv = ufile;
 
 	return 0;
 out:
@@ -254,7 +254,7 @@ out:
 
 static int efifs_close(struct device_d *dev, FILE *f)
 {
-	struct efifs_file *ufile = f->inode;
+	struct efifs_file *ufile = f->priv;
 
 	ufile->entry->close(ufile->entry);
 
@@ -265,7 +265,7 @@ static int efifs_close(struct device_d *dev, FILE *f)
 
 static int efifs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 {
-	struct efifs_file *ufile = f->inode;
+	struct efifs_file *ufile = f->priv;
 	efi_status_t efiret;
 	unsigned long bufsize = insize;
 
@@ -279,7 +279,7 @@ static int efifs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 
 static int efifs_write(struct device_d *_dev, FILE *f, const void *buf, size_t insize)
 {
-	struct efifs_file *ufile = f->inode;
+	struct efifs_file *ufile = f->priv;
 	efi_status_t efiret;
 	unsigned long bufsize = insize;
 
@@ -294,7 +294,7 @@ static int efifs_write(struct device_d *_dev, FILE *f, const void *buf, size_t i
 
 static loff_t efifs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 {
-	struct efifs_file *ufile = f->inode;
+	struct efifs_file *ufile = f->priv;
 	efi_status_t efiret;
 
 	f->pos = pos;
@@ -309,7 +309,7 @@ static loff_t efifs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 
 static int efifs_truncate(struct device_d *dev, FILE *f, unsigned long size)
 {
-	struct efifs_file *ufile = f->inode;
+	struct efifs_file *ufile = f->priv;
 	efi_status_t efiret;
 	struct efi_file_info *info;
 	unsigned long bufsize = 1024;
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index 69a7723..5ec7ecd 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -57,7 +57,7 @@ static int ext_open(struct device_d *dev, FILE *file, const char *filename)
 		return ret;
 
 	file->size = __le32_to_cpu(inode->inode.size);
-	file->inode = inode;
+	file->priv = inode;
 
 	return 0;
 }
@@ -66,14 +66,14 @@ static int ext_close(struct device_d *dev, FILE *f)
 {
 	struct ext_filesystem *fs = dev->priv;
 
-	ext4fs_free_node(f->inode, &fs->data->diropen);
+	ext4fs_free_node(f->priv, &fs->data->diropen);
 
 	return 0;
 }
 
 static int ext_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 {
-	return ext4fs_read_file(f->inode, f->pos, insize, buf);
+	return ext4fs_read_file(f->priv, f->pos, insize, buf);
 }
 
 static loff_t ext_lseek(struct device_d *dev, FILE *f, loff_t pos)
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index f8094d0..6d7d262 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -161,7 +161,7 @@ static int fat_rmdir(struct device_d *dev, const char *pathname)
 
 static int fat_write(struct device_d *_dev, FILE *f, const void *buf, size_t insize)
 {
-	FIL *f_file = f->inode;
+	FIL *f_file = f->priv;
 	int outsize;
 	int ret;
 
@@ -179,7 +179,7 @@ static int fat_write(struct device_d *_dev, FILE *f, const void *buf, size_t ins
 
 static int fat_truncate(struct device_d *dev, FILE *f, ulong size)
 {
-	FIL *f_file = f->inode;
+	FIL *f_file = f->priv;
 	unsigned long lastofs;
 	int ret;
 
@@ -232,7 +232,7 @@ static int fat_open(struct device_d *dev, FILE *file, const char *filename)
 		ret = f_lseek(f_file, f_file->fsize);
 	}
 
-	file->inode = f_file;
+	file->priv = f_file;
 	file->size = f_file->fsize;
 
 	return 0;
@@ -241,7 +241,7 @@ static int fat_open(struct device_d *dev, FILE *file, const char *filename)
 static int fat_close(struct device_d *dev, FILE *f)
 {
 	struct fat_priv *priv = dev->priv;
-	FIL *f_file = f->inode;
+	FIL *f_file = f->priv;
 
 	f_close(f_file);
 
@@ -255,7 +255,7 @@ static int fat_close(struct device_d *dev, FILE *f)
 static int fat_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 {
 	int ret;
-	FIL *f_file = f->inode;
+	FIL *f_file = f->priv;
 	int outsize;
 
 	ret = f_read(f_file, buf, insize, &outsize);
@@ -270,7 +270,7 @@ static int fat_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 
 static loff_t fat_lseek(struct device_d *dev, FILE *f, loff_t pos)
 {
-	FIL *f_file = f->inode;
+	FIL *f_file = f->priv;
 	int ret;
 
 	ret = f_lseek(f_file, pos);
diff --git a/fs/nfs.c b/fs/nfs.c
index f1abd0b..2738c78 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1144,7 +1144,7 @@ static int nfs_open(struct device_d *dev, FILE *file, const char *filename)
 	if (IS_ERR(priv))
 		return PTR_ERR(priv);
 
-	file->inode = priv;
+	file->priv = priv;
 	file->size = s.st_size;
 
 	priv->fifo = kfifo_alloc(1024);
@@ -1158,7 +1158,7 @@ static int nfs_open(struct device_d *dev, FILE *file, const char *filename)
 
 static int nfs_close(struct device_d *dev, FILE *file)
 {
-	struct file_priv *priv = file->inode;
+	struct file_priv *priv = file->priv;
 
 	nfs_do_close(priv);
 
@@ -1173,7 +1173,7 @@ static int nfs_write(struct device_d *_dev, FILE *file, const void *inbuf,
 
 static int nfs_read(struct device_d *dev, FILE *file, void *buf, size_t insize)
 {
-	struct file_priv *priv = file->inode;
+	struct file_priv *priv = file->priv;
 
 	if (insize > 1024)
 		insize = 1024;
@@ -1189,7 +1189,7 @@ static int nfs_read(struct device_d *dev, FILE *file, void *buf, size_t insize)
 
 static loff_t nfs_lseek(struct device_d *dev, FILE *file, loff_t pos)
 {
-	struct file_priv *priv = file->inode;
+	struct file_priv *priv = file->priv;
 
 	file->pos = pos;
 	kfifo_reset(priv->fifo);
diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
index 0dc7682..6085bca 100644
--- a/fs/omap4_usbbootfs.c
+++ b/fs/omap4_usbbootfs.c
@@ -104,7 +104,7 @@ static int omap4_usbbootfs_open(
 	if (IS_ERR(priv))
 		return PTR_ERR(priv);
 
-	file->inode = priv;
+	file->priv = priv;
 	file->size = priv->size;
 
 	return 0;
@@ -123,14 +123,14 @@ static int omap4_usbbootfs_do_close(struct file_priv *priv)
 
 static int omap4_usbbootfs_close(struct device_d *dev, FILE *f)
 {
-	struct file_priv *priv = f->inode;
+	struct file_priv *priv = f->priv;
 	return omap4_usbbootfs_do_close(priv);
 }
 
 static int omap4_usbbootfs_read(
 	struct device_d *dev, FILE *f, void *buf, size_t size)
 {
-	struct file_priv *priv = f->inode;
+	struct file_priv *priv = f->priv;
 	u32 data;
 
 	if (size > priv->size - f->pos)
diff --git a/fs/ramfs.c b/fs/ramfs.c
index f45a454..fe5eb89 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -311,7 +311,7 @@ static int ramfs_open(struct device_d *dev, FILE *file, const char *filename)
 		return -ENOENT;
 
 	file->size = node->size;
-	file->inode = node;
+	file->priv = node;
 	return 0;
 }
 
@@ -351,7 +351,7 @@ static struct ramfs_chunk *ramfs_find_chunk(struct ramfs_inode *node, int chunk)
 
 static int ramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 {
-	struct ramfs_inode *node = (struct ramfs_inode *)f->inode;
+	struct ramfs_inode *node = f->priv;
 	int chunk;
 	struct ramfs_chunk *data;
 	int ofs;
@@ -400,7 +400,7 @@ static int ramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 
 static int ramfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t insize)
 {
-	struct ramfs_inode *node = (struct ramfs_inode *)f->inode;
+	struct ramfs_inode *node = f->priv;
 	int chunk;
 	struct ramfs_chunk *data;
 	int ofs;
@@ -455,7 +455,7 @@ static loff_t ramfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 
 static int ramfs_truncate(struct device_d *dev, FILE *f, ulong size)
 {
-	struct ramfs_inode *node = (struct ramfs_inode *)f->inode;
+	struct ramfs_inode *node = f->priv;
 	int oldchunks, newchunks;
 	struct ramfs_chunk *data = node->data;
 
diff --git a/fs/tftp.c b/fs/tftp.c
index 3643619..72e4983 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -469,7 +469,7 @@ static int tftp_open(struct device_d *dev, FILE *file, const char *filename)
 	if (IS_ERR(priv))
 		return PTR_ERR(priv);
 
-	file->inode = priv;
+	file->priv = priv;
 	file->size = SZ_2G;
 
 	return 0;
@@ -515,7 +515,7 @@ static int tftp_do_close(struct file_priv *priv)
 
 static int tftp_close(struct device_d *dev, FILE *f)
 {
-	struct file_priv *priv = f->inode;
+	struct file_priv *priv = f->priv;
 
 	return tftp_do_close(priv);
 }
@@ -523,7 +523,7 @@ static int tftp_close(struct device_d *dev, FILE *f)
 static int tftp_write(struct device_d *_dev, FILE *f, const void *inbuf,
 		size_t insize)
 {
-	struct file_priv *priv = f->inode;
+	struct file_priv *priv = f->priv;
 	size_t size, now;
 	int ret;
 
@@ -558,7 +558,7 @@ static int tftp_write(struct device_d *_dev, FILE *f, const void *inbuf,
 
 static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
 {
-	struct file_priv *priv = f->inode;
+	struct file_priv *priv = f->priv;
 	size_t outsize = 0, now;
 	int ret;
 
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 49d5583..68d90b3 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -350,14 +350,14 @@ static int ubifs_open(struct device_d *dev, FILE *file, const char *filename)
 	uf->block = -1;
 
 	file->size = inode->i_size;
-	file->inode = uf;
+	file->priv = uf;
 
 	return 0;
 }
 
 static int ubifs_close(struct device_d *dev, FILE *f)
 {
-	struct ubifs_file *uf = f->inode;
+	struct ubifs_file *uf = f->priv;
 	struct inode *inode = uf->inode;
 
 	ubifs_iput(inode);
@@ -386,7 +386,7 @@ static int ubifs_get_block(struct ubifs_file *uf, unsigned int pos)
 
 static int ubifs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 {
-	struct ubifs_file *uf = f->inode;
+	struct ubifs_file *uf = f->priv;
 	unsigned int pos = f->pos;
 	unsigned int ofs;
 	unsigned int now;
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index 63931c2..3fdc5bd 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -89,14 +89,14 @@ static int uimagefs_open(struct device_d *dev, FILE *file, const char *filename)
 	}
 
 	file->size = d->size;
-	file->inode = d;
+	file->priv = d;
 
 	return 0;
 }
 
 static int uimagefs_close(struct device_d *dev, FILE *file)
 {
-	struct uimagefs_handle_data *d = file->inode;
+	struct uimagefs_handle_data *d = file->priv;
 
 	close(d->fd);
 
@@ -105,7 +105,7 @@ static int uimagefs_close(struct device_d *dev, FILE *file)
 
 static int uimagefs_read(struct device_d *dev, FILE *file, void *buf, size_t insize)
 {
-	struct uimagefs_handle_data *d = file->inode;
+	struct uimagefs_handle_data *d = file->priv;
 
 	if (!uimagefs_is_data_file(d)) {
 		memcpy(buf, &d->data[d->pos], insize);
@@ -117,7 +117,7 @@ static int uimagefs_read(struct device_d *dev, FILE *file, void *buf, size_t ins
 
 static loff_t uimagefs_lseek(struct device_d *dev, FILE *file, loff_t pos)
 {
-	struct uimagefs_handle_data *d = file->inode;
+	struct uimagefs_handle_data *d = file->priv;
 
 	if (uimagefs_is_data_file(d))
 		lseek(d->fd, d->offset + pos, SEEK_SET);
diff --git a/include/fs.h b/include/fs.h
index 63e35ca..61d7439 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -30,7 +30,7 @@ typedef struct filep {
 	loff_t size;           /* The size of this inode                       */
 	ulong flags;          /* the O_* flags from open                      */
 
-	void *inode;         /* private to the filesystem driver              */
+	void *priv;         /* private to the filesystem driver              */
 
 	/* private fields. Mapping between FILE and filedescriptor number     */
 	int no;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
