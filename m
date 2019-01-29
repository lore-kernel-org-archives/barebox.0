Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goNJp-00058T-Su
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 06:56:33 +0000
Received: by mail-pf1-x442.google.com with SMTP id r136so9238380pfc.6
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 22:56:25 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 22:55:40 -0800
Message-Id: <20190129065549.29161-11-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 10/19] fs: devfs: Change .lseek callbacks to return 'int'
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Returning requested offset from .lseek() callback doesn't really give
us any new information while bringing unnecessary
complications. Change all .lseek() types (both in struct struct
cdev_operations and in struct fs_driver_d) to return 'int' and adjust
the rest of the codebase accordingly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mtd/nand/nand-bb.c |  5 ++---
 drivers/mtd/ubi/barebox.c  |  4 ++--
 fs/bpkfs.c                 |  4 ++--
 fs/devfs.c                 |  6 +++---
 fs/efi.c                   |  4 ++--
 fs/fat/fat.c               |  4 ++--
 fs/fs.c                    |  8 +++-----
 fs/nfs.c                   |  4 ++--
 fs/pstore/fs.c             |  4 ++--
 fs/smhfs.c                 |  4 ++--
 fs/tftp.c                  | 10 +++++-----
 fs/uimagefs.c              |  4 ++--
 include/driver.h           |  2 +-
 include/fs.h               |  2 +-
 14 files changed, 31 insertions(+), 34 deletions(-)

diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index 012163ebb..eea4bb43e 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -236,11 +236,10 @@ static int nand_bb_calc_size(struct nand_bb *bb)
 	return 0;
 }
 
-static loff_t nand_bb_lseek(struct cdev *cdev, loff_t __offset)
+static int nand_bb_lseek(struct cdev *cdev, loff_t offset)
 {
 	struct nand_bb *bb = cdev->priv;
 	loff_t raw_pos = 0;
-	uint32_t offset = __offset;
 
 	/* lseek only in readonly mode */
 	if (bb->flags & O_ACCMODE)
@@ -257,7 +256,7 @@ static loff_t nand_bb_lseek(struct cdev *cdev, loff_t __offset)
 
 		if (!offset) {
 			bb->offset = raw_pos;
-			return __offset;
+			return 0;
 		}
 	}
 
diff --git a/drivers/mtd/ubi/barebox.c b/drivers/mtd/ubi/barebox.c
index 65f545645..781061d9a 100644
--- a/drivers/mtd/ubi/barebox.c
+++ b/drivers/mtd/ubi/barebox.c
@@ -151,7 +151,7 @@ static int ubi_volume_cdev_close(struct cdev *cdev)
 	return 0;
 }
 
-static loff_t ubi_volume_cdev_lseek(struct cdev *cdev, loff_t ofs)
+static int ubi_volume_cdev_lseek(struct cdev *cdev, loff_t ofs)
 {
 	struct ubi_volume_cdev_priv *priv = cdev->priv;
 
@@ -159,7 +159,7 @@ static loff_t ubi_volume_cdev_lseek(struct cdev *cdev, loff_t ofs)
 	if (priv->written)
 		return -EINVAL;
 
-	return ofs;
+	return 0;
 }
 
 static int ubi_volume_cdev_truncate(struct cdev *cdev, size_t size)
diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index f1db963d0..655cde09b 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -192,7 +192,7 @@ static int bpkfs_read(struct device_d *dev, FILE *file, void *buf, size_t insize
 	}
 }
 
-static loff_t bpkfs_lseek(struct device_d *dev, FILE *file, loff_t pos)
+static int bpkfs_lseek(struct device_d *dev, FILE *file, loff_t pos)
 {
 	struct bpkfs_handle_data *d = file->priv;
 
@@ -201,7 +201,7 @@ static loff_t bpkfs_lseek(struct device_d *dev, FILE *file, loff_t pos)
 
 	d->pos = pos;
 
-	return pos;
+	return 0;
 }
 
 struct somfy_readdir {
diff --git a/fs/devfs.c b/fs/devfs.c
index 5599f39e8..007dea96d 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -57,10 +57,10 @@ static int devfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t s
 	return cdev_write(cdev, buf, size, f->pos, f->flags);
 }
 
-static loff_t devfs_lseek(struct device_d *_dev, FILE *f, loff_t pos)
+static int devfs_lseek(struct device_d *_dev, FILE *f, loff_t pos)
 {
 	struct cdev *cdev = f->priv;
-	loff_t ret;
+	int ret;
 
 	if (cdev->ops->lseek) {
 		ret = cdev->ops->lseek(cdev, pos + cdev->offset);
@@ -68,7 +68,7 @@ static loff_t devfs_lseek(struct device_d *_dev, FILE *f, loff_t pos)
 			return ret;
 	}
 
-	return pos;
+	return 0;
 }
 
 static int devfs_erase(struct device_d *_dev, FILE *f, loff_t count, loff_t offset)
diff --git a/fs/efi.c b/fs/efi.c
index 074ef6b53..cd4fee79a 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -292,7 +292,7 @@ static int efifs_write(struct device_d *_dev, FILE *f, const void *buf, size_t i
 	return bufsize;
 }
 
-static loff_t efifs_lseek(struct device_d *dev, FILE *f, loff_t pos)
+static int efifs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 {
 	struct efifs_file *ufile = f->priv;
 	efi_status_t efiret;
@@ -302,7 +302,7 @@ static loff_t efifs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 		return -efi_errno(efiret);
 	}
 
-	return pos;
+	return 0;
 }
 
 static int efifs_truncate(struct device_d *dev, FILE *f, unsigned long size)
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index ee7751e94..136757772 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -268,7 +268,7 @@ static int fat_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 	return outsize;
 }
 
-static loff_t fat_lseek(struct device_d *dev, FILE *f, loff_t pos)
+static int fat_lseek(struct device_d *dev, FILE *f, loff_t pos)
 {
 	FIL *f_file = f->priv;
 	int ret;
@@ -277,7 +277,7 @@ static loff_t fat_lseek(struct device_d *dev, FILE *f, loff_t pos)
 	if (ret)
 		return ret;
 
-	return pos;
+	return 0;
 }
 
 static DIR* fat_opendir(struct device_d *dev, const char *pathname)
diff --git a/fs/fs.c b/fs/fs.c
index 34de0669a..7e62b89e4 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -439,11 +439,9 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 	}
 
 	if (fsdrv->lseek) {
-		pos = fsdrv->lseek(&f->fsdev->dev, f, pos);
-		if (IS_ERR_VALUE(pos)) {
-			errno = -pos;
-			return -1;
-		}
+		ret = fsdrv->lseek(&f->fsdev->dev, f, pos);
+		if (ret < 0)
+			goto out;
 	}
 
 	f->pos = pos;
diff --git a/fs/nfs.c b/fs/nfs.c
index d83f25007..8112830f7 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1088,13 +1088,13 @@ static int nfs_read(struct device_d *dev, FILE *file, void *buf, size_t insize)
 	return kfifo_get(priv->fifo, buf, insize);
 }
 
-static loff_t nfs_lseek(struct device_d *dev, FILE *file, loff_t pos)
+static int nfs_lseek(struct device_d *dev, FILE *file, loff_t pos)
 {
 	struct file_priv *priv = file->priv;
 
 	kfifo_reset(priv->fifo);
 
-	return pos;
+	return 0;
 }
 
 static int nfs_iterate(struct file *file, struct dir_context *ctx)
diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
index a879a6806..9a7e0b552 100644
--- a/fs/pstore/fs.c
+++ b/fs/pstore/fs.c
@@ -172,13 +172,13 @@ static int pstore_read(struct device_d *dev, FILE *file, void *buf,
 	return insize;
 }
 
-static loff_t pstore_lseek(struct device_d *dev, FILE *file, loff_t pos)
+static int pstore_lseek(struct device_d *dev, FILE *file, loff_t pos)
 {
 	struct pstore_private *d = file->priv;
 
 	d->pos = pos;
 
-	return pos;
+	return 0;
 }
 
 static DIR *pstore_opendir(struct device_d *dev, const char *pathname)
diff --git a/fs/smhfs.c b/fs/smhfs.c
index 18eaa9dfc..7a6933630 100644
--- a/fs/smhfs.c
+++ b/fs/smhfs.c
@@ -109,13 +109,13 @@ static int smhfs_read(struct device_d __always_unused *dev,
 		return -semihosting_errno();
 }
 
-static loff_t smhfs_lseek(struct device_d __always_unused *dev,
+static int smhfs_lseek(struct device_d __always_unused *dev,
 			  FILE *f, loff_t pos)
 {
 	if (semihosting_seek(file_to_fd(f), pos))
 		return -semihosting_errno();
 
-	return pos;
+	return 0;
 }
 
 static DIR* smhfs_opendir(struct device_d __always_unused *dev,
diff --git a/fs/tftp.c b/fs/tftp.c
index f9e204db5..41f904f29 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -573,13 +573,13 @@ static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
 	return outsize;
 }
 
-static loff_t tftp_lseek(struct device_d *dev, FILE *f, loff_t pos)
+static int tftp_lseek(struct device_d *dev, FILE *f, loff_t pos)
 {
 	/* We cannot seek backwards without reloading or caching the file */
 	loff_t f_pos = f->pos;
 
 	if (pos >= f_pos) {
-		loff_t ret;
+		int ret = 0;
 		char *buf = xmalloc(1024);
 
 		while (pos > f_pos) {
@@ -596,8 +596,6 @@ static loff_t tftp_lseek(struct device_d *dev, FILE *f, loff_t pos)
 			f_pos += ret;
 		}
 
-		ret = pos;
-
 out_free:
 		free(buf);
 		if (ret < 0) {
@@ -606,8 +604,10 @@ out_free:
 			 * failed since we can't move backwards
 			 */
 			f->pos = f_pos;
+			return ret;
 		}
-		return ret;
+
+		return 0;
 	}
 
 	return -ENOSYS;
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index c120944a4..e5ada82da 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -116,7 +116,7 @@ static int uimagefs_read(struct device_d *dev, FILE *file, void *buf, size_t ins
 	}
 }
 
-static loff_t uimagefs_lseek(struct device_d *dev, FILE *file, loff_t pos)
+static int uimagefs_lseek(struct device_d *dev, FILE *file, loff_t pos)
 {
 	struct uimagefs_handle_data *d = file->priv;
 
@@ -125,7 +125,7 @@ static loff_t uimagefs_lseek(struct device_d *dev, FILE *file, loff_t pos)
 
 	d->pos = pos;
 
-	return pos;
+	return 0;
 }
 
 static DIR *uimagefs_opendir(struct device_d *dev, const char *pathname)
diff --git a/include/driver.h b/include/driver.h
index 72741a964..2db1cf1a8 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -434,7 +434,7 @@ struct cdev_operations {
 	ssize_t (*write)(struct cdev*, const void* buf, size_t count, loff_t offset, ulong flags);
 
 	int (*ioctl)(struct cdev*, int, void *);
-	loff_t (*lseek)(struct cdev*, loff_t);
+	int (*lseek)(struct cdev*, loff_t);
 	int (*open)(struct cdev*, unsigned long flags);
 	int (*close)(struct cdev*);
 	int (*flush)(struct cdev*);
diff --git a/include/fs.h b/include/fs.h
index f1514afa9..be8241fd4 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -53,7 +53,7 @@ struct fs_driver_d {
 	int (*read)(struct device_d *dev, FILE *f, void *buf, size_t size);
 	int (*write)(struct device_d *dev, FILE *f, const void *buf, size_t size);
 	int (*flush)(struct device_d *dev, FILE *f);
-	loff_t (*lseek)(struct device_d *dev, FILE *f, loff_t pos);
+	int (*lseek)(struct device_d *dev, FILE *f, loff_t pos);
 
 	int (*ioctl)(struct device_d *dev, FILE *f, int request, void *buf);
 	int (*erase)(struct device_d *dev, FILE *f, loff_t count,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
