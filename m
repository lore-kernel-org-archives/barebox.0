Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goNJl-00054l-T9
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 06:56:25 +0000
Received: by mail-pg1-x543.google.com with SMTP id z10so8355191pgp.7
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 22:56:21 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 22:55:37 -0800
Message-Id: <20190129065549.29161-8-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 07/19] fs: Update FILE position in lseek()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Instead on relying on driver callbacks to update 'pos' in FILE, do it
as a part of lseek() code. This allows us to drop a bit of repeating
code as well as making lseek() implementation consistent with write()
and read().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/cramfs/cramfs.c     |  3 +--
 fs/devfs.c             |  2 --
 fs/efi.c               |  4 +---
 fs/efivarfs.c          |  4 +---
 fs/ext4/ext_barebox.c  |  4 +---
 fs/fat/fat.c           |  1 -
 fs/fs.c                |  2 ++
 fs/nfs.c               |  3 +--
 fs/omap4_usbbootfs.c   |  1 -
 fs/ramfs.c             |  3 +--
 fs/ratpfs.c            |  3 +--
 fs/smhfs.c             |  8 +++-----
 fs/squashfs/squashfs.c |  2 --
 fs/tftp.c              | 17 +++++++++++++----
 fs/ubifs/ubifs.c       |  2 --
 15 files changed, 25 insertions(+), 34 deletions(-)

diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index 093657f62..1cce04fce 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -168,8 +168,7 @@ static int cramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t size)
 
 static loff_t cramfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 {
-	f->pos = pos;
-	return f->pos;
+	return pos;
 }
 
 #if 0
diff --git a/fs/devfs.c b/fs/devfs.c
index ae5e6475b..6acbbd7ad 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -70,8 +70,6 @@ static loff_t devfs_lseek(struct device_d *_dev, FILE *f, loff_t pos)
 		return -ENOSYS;
 	}
 
-	f->pos = pos;
-
 	return pos;
 }
 
diff --git a/fs/efi.c b/fs/efi.c
index 692556b26..074ef6b53 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -297,14 +297,12 @@ static loff_t efifs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 	struct efifs_file *ufile = f->priv;
 	efi_status_t efiret;
 
-	f->pos = pos;
-
 	efiret = ufile->entry->set_position(ufile->entry, pos);
 	if (EFI_ERROR(efiret)) {
 		return -efi_errno(efiret);
 	}
 
-	return f->pos;
+	return pos;
 }
 
 static int efifs_truncate(struct device_d *dev, FILE *f, unsigned long size)
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index bf7351e6d..34a261935 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -309,9 +309,7 @@ static int efivarfs_truncate(struct device_d *dev, FILE *f, ulong size)
 
 static loff_t efivarfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 {
-	f->pos = pos;
-
-	return f->pos;
+	return pos;
 }
 
 static DIR *efivarfs_opendir(struct device_d *dev, const char *pathname)
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index 1e7da2a4b..6e41b8345 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -61,9 +61,7 @@ static int ext_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 
 static loff_t ext_lseek(struct device_d *dev, FILE *f, loff_t pos)
 {
-	f->pos = pos;
-
-	return f->pos;
+	return pos;
 }
 
 static struct inode *ext_alloc_inode(struct super_block *sb)
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 49cd78ff9..ee7751e94 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -277,7 +277,6 @@ static loff_t fat_lseek(struct device_d *dev, FILE *f, loff_t pos)
 	if (ret)
 		return ret;
 
-	f->pos = pos;
 	return pos;
 }
 
diff --git a/fs/fs.c b/fs/fs.c
index a304bf186..7729fe8b1 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -448,6 +448,8 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 		return -1;
 	}
 
+	f->pos = pos;
+
 	return pos;
 
 out:
diff --git a/fs/nfs.c b/fs/nfs.c
index 07a82ec60..d83f25007 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1092,10 +1092,9 @@ static loff_t nfs_lseek(struct device_d *dev, FILE *file, loff_t pos)
 {
 	struct file_priv *priv = file->priv;
 
-	file->pos = pos;
 	kfifo_reset(priv->fifo);
 
-	return file->pos;
+	return pos;
 }
 
 static int nfs_iterate(struct file *file, struct dir_context *ctx)
diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
index b35f411cb..51038c705 100644
--- a/fs/omap4_usbbootfs.c
+++ b/fs/omap4_usbbootfs.c
@@ -151,7 +151,6 @@ static int omap4_usbbootfs_read(
 
 static loff_t omap4_usbbootfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 {
-	f->pos = pos;
 	return pos;
 }
 
diff --git a/fs/ramfs.c b/fs/ramfs.c
index 84ecfa0dd..f571cd5ca 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -349,8 +349,7 @@ static int ramfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t i
 
 static loff_t ramfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 {
-	f->pos = pos;
-	return f->pos;
+	return pos;
 }
 
 static int ramfs_truncate(struct device_d *dev, FILE *f, ulong size)
diff --git a/fs/ratpfs.c b/fs/ratpfs.c
index 902289bab..e316289d7 100644
--- a/fs/ratpfs.c
+++ b/fs/ratpfs.c
@@ -288,8 +288,7 @@ static loff_t ratpfs_lseek(struct device_d __always_unused *dev,
 			  FILE *f, loff_t pos)
 {
 	pr_debug("%s\n", __func__);
-	f->pos = pos;
-	return f->pos;
+	return pos;
 }
 
 static DIR* ratpfs_opendir(struct device_d __always_unused *dev,
diff --git a/fs/smhfs.c b/fs/smhfs.c
index f1b6d6bb1..18eaa9dfc 100644
--- a/fs/smhfs.c
+++ b/fs/smhfs.c
@@ -112,12 +112,10 @@ static int smhfs_read(struct device_d __always_unused *dev,
 static loff_t smhfs_lseek(struct device_d __always_unused *dev,
 			  FILE *f, loff_t pos)
 {
-	if (semihosting_seek(file_to_fd(f), pos)) {
+	if (semihosting_seek(file_to_fd(f), pos))
 		return -semihosting_errno();
-	} else {
-		f->pos = pos;
-		return f->pos;
-	}
+
+	return pos;
 }
 
 static DIR* smhfs_opendir(struct device_d __always_unused *dev,
diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index d9049b752..87b182a78 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -233,8 +233,6 @@ static int squashfs_read(struct device_d *_dev, FILE *f, void *buf,
 
 static loff_t squashfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 {
-	f->pos = pos;
-
 	return pos;
 }
 
diff --git a/fs/tftp.c b/fs/tftp.c
index 1b50ba84f..f9e204db5 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -576,12 +576,14 @@ static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
 static loff_t tftp_lseek(struct device_d *dev, FILE *f, loff_t pos)
 {
 	/* We cannot seek backwards without reloading or caching the file */
-	if (pos >= f->pos) {
+	loff_t f_pos = f->pos;
+
+	if (pos >= f_pos) {
 		loff_t ret;
 		char *buf = xmalloc(1024);
 
-		while (pos > f->pos) {
-			size_t len = min_t(size_t, 1024, pos - f->pos);
+		while (pos > f_pos) {
+			size_t len = min_t(size_t, 1024, pos - f_pos);
 
 			ret = tftp_read(dev, f, buf, len);
 
@@ -591,13 +593,20 @@ static loff_t tftp_lseek(struct device_d *dev, FILE *f, loff_t pos)
 			if (ret < 0)
 				goto out_free;
 
-			f->pos += ret;
+			f_pos += ret;
 		}
 
 		ret = pos;
 
 out_free:
 		free(buf);
+		if (ret < 0) {
+			/*
+			 * Update f->pos even if the overall request
+			 * failed since we can't move backwards
+			 */
+			f->pos = f_pos;
+		}
 		return ret;
 	}
 
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 7545dd4c9..ec6d00890 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -396,8 +396,6 @@ static int ubifs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 
 static loff_t ubifs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 {
-	f->pos = pos;
-
 	return pos;
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
