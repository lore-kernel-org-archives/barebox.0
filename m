Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbsAR-0008Ix-0M
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 14:24:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 Oct 2014 16:24:10 +0200
Message-Id: <1412778255-4153-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] fs: store pointer to fsdev instead of dev in struct filep
To: barebox@lists.infradead.org

The struct device_d * in struct filep is never of interest, instead
it is always converted to a struct fs_device_d *, so simplify the code
by storing the struct fs_device_d * directly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs.c   |  4 ++--
 fs/fs.c      | 75 ++++++++++++++++++++++--------------------------------------
 include/fs.h |  3 +--
 3 files changed, 30 insertions(+), 52 deletions(-)

diff --git a/fs/devfs.c b/fs/devfs.c
index f089c6f..872e19b 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -168,9 +168,9 @@ static int devfs_ioctl(struct device_d *_dev, FILE *f, int request, void *buf)
 
 static int devfs_truncate(struct device_d *dev, FILE *f, ulong size)
 {
-	if (f->dev->num_resources < 1)
+	if (f->fsdev->dev.num_resources < 1)
 		return -ENOSPC;
-	if (size > resource_size(&f->dev->resource[0]))
+	if (size > resource_size(&f->fsdev->dev.resource[0]))
 		return -ENOSPC;
 	return 0;
 }
diff --git a/fs/fs.c b/fs/fs.c
index fd3d353..014a36a 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -653,7 +653,7 @@ int open(const char *pathname, int flags, ...)
 
 	fsdrv = fsdev->driver;
 
-	f->dev = &fsdev->dev;
+	f->fsdev = fsdev;
 	f->flags = flags;
 
 	if ((flags & O_ACCMODE) && !fsdrv->write) {
@@ -705,7 +705,6 @@ EXPORT_SYMBOL(creat);
 
 int ioctl(int fd, int request, void *buf)
 {
-	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	FILE *f;
 	int ret;
@@ -714,12 +713,11 @@ int ioctl(int fd, int request, void *buf)
 		return -errno;
 
 	f = &files[fd];
-	dev = f->dev;
 
-	fsdrv = dev_to_fs_driver(dev);
+	fsdrv = f->fsdev->driver;
 
 	if (fsdrv->ioctl)
-		ret = fsdrv->ioctl(dev, f, request, buf);
+		ret = fsdrv->ioctl(&f->fsdev->dev, f, request, buf);
 	else
 		ret = -ENOSYS;
 	if (ret)
@@ -729,13 +727,10 @@ int ioctl(int fd, int request, void *buf)
 
 static ssize_t __read(FILE *f, void *buf, size_t count)
 {
-	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	int ret;
 
-	dev = f->dev;
-
-	fsdrv = dev_to_fs_driver(dev);
+	fsdrv = f->fsdev->driver;
 
 	if (f->size != FILE_SIZE_STREAM && f->pos + count > f->size)
 		count = f->size - f->pos;
@@ -743,7 +738,7 @@ static ssize_t __read(FILE *f, void *buf, size_t count)
 	if (!count)
 		return 0;
 
-	ret = fsdrv->read(dev, f, buf, count);
+	ret = fsdrv->read(&f->fsdev->dev, f, buf, count);
 
 	if (ret < 0)
 		errno = -ret;
@@ -790,15 +785,12 @@ EXPORT_SYMBOL(read);
 
 static ssize_t __write(FILE *f, const void *buf, size_t count)
 {
-	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	int ret;
 
-	dev = f->dev;
-
-	fsdrv = dev_to_fs_driver(dev);
+	fsdrv = f->fsdev->driver;
 	if (f->size != FILE_SIZE_STREAM && f->pos + count > f->size) {
-		ret = fsdrv->truncate(dev, f, f->pos + count);
+		ret = fsdrv->truncate(&f->fsdev->dev, f, f->pos + count);
 		if (ret) {
 			if (ret != -ENOSPC)
 				goto out;
@@ -809,7 +801,7 @@ static ssize_t __write(FILE *f, const void *buf, size_t count)
 			f->size = f->pos + count;
 		}
 	}
-	ret = fsdrv->write(dev, f, buf, count);
+	ret = fsdrv->write(&f->fsdev->dev, f, buf, count);
 out:
 	if (ret < 0)
 		errno = -ret;
@@ -856,7 +848,6 @@ EXPORT_SYMBOL(write);
 
 int flush(int fd)
 {
-	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	FILE *f;
 	int ret;
@@ -865,11 +856,10 @@ int flush(int fd)
 		return -errno;
 
 	f = &files[fd];
-	dev = f->dev;
 
-	fsdrv = dev_to_fs_driver(dev);
+	fsdrv = f->fsdev->driver;
 	if (fsdrv->flush)
-		ret = fsdrv->flush(dev, f);
+		ret = fsdrv->flush(&f->fsdev->dev, f);
 	else
 		ret = 0;
 
@@ -881,7 +871,6 @@ int flush(int fd)
 
 loff_t lseek(int fildes, loff_t offset, int whence)
 {
-	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	FILE *f;
 	loff_t pos;
@@ -891,8 +880,7 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 		return -1;
 
 	f = &files[fildes];
-	dev = f->dev;
-	fsdrv = dev_to_fs_driver(dev);
+	fsdrv = f->fsdev->driver;
 	if (!fsdrv->lseek) {
 		ret = -ENOSYS;
 		goto out;
@@ -920,7 +908,7 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 		goto out;
 	}
 
-	return fsdrv->lseek(dev, f, pos);
+	return fsdrv->lseek(&f->fsdev->dev, f, pos);
 
 out:
 	if (ret)
@@ -932,7 +920,6 @@ EXPORT_SYMBOL(lseek);
 
 int erase(int fd, size_t count, unsigned long offset)
 {
-	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	FILE *f;
 	int ret;
@@ -945,10 +932,9 @@ int erase(int fd, size_t count, unsigned long offset)
 	if (count > f->size - offset)
 		count = f->size - offset;
 
-	dev = f->dev;
-	fsdrv = dev_to_fs_driver(dev);
+	fsdrv = f->fsdev->driver;
 	if (fsdrv->erase)
-		ret = fsdrv->erase(dev, f, count, offset);
+		ret = fsdrv->erase(&f->fsdev->dev, f, count, offset);
 	else
 		ret = -ENOSYS;
 
@@ -961,7 +947,6 @@ EXPORT_SYMBOL(erase);
 
 int protect(int fd, size_t count, unsigned long offset, int prot)
 {
-	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	FILE *f;
 	int ret;
@@ -974,10 +959,9 @@ int protect(int fd, size_t count, unsigned long offset, int prot)
 	if (count > f->size - offset)
 		count = f->size - offset;
 
-	dev = f->dev;
-	fsdrv = dev_to_fs_driver(dev);
+	fsdrv = f->fsdev->driver;
 	if (fsdrv->protect)
-		ret = fsdrv->protect(dev, f, count, offset, prot);
+		ret = fsdrv->protect(&f->fsdev->dev, f, count, offset, prot);
 	else
 		ret = -ENOSYS;
 
@@ -1005,7 +989,6 @@ int protect_file(const char *file, int prot)
 
 void *memmap(int fd, int flags)
 {
-	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	FILE *f;
 	void *retp = (void *)-1;
@@ -1015,12 +998,11 @@ void *memmap(int fd, int flags)
 		return retp;
 
 	f = &files[fd];
-	dev = f->dev;
 
-	fsdrv = dev_to_fs_driver(dev);
+	fsdrv = f->fsdev->driver;
 
 	if (fsdrv->memmap)
-		ret = fsdrv->memmap(dev, f, &retp, flags);
+		ret = fsdrv->memmap(&f->fsdev->dev, f, &retp, flags);
 	else
 		ret = -EINVAL;
 
@@ -1033,7 +1015,6 @@ EXPORT_SYMBOL(memmap);
 
 int close(int fd)
 {
-	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	FILE *f;
 	int ret;
@@ -1042,10 +1023,9 @@ int close(int fd)
 		return -errno;
 
 	f = &files[fd];
-	dev = f->dev;
 
-	fsdrv = dev_to_fs_driver(dev);
-	ret = fsdrv->close(dev, f);
+	fsdrv = f->fsdev->driver;
+	ret = fsdrv->close(&f->fsdev->dev, f);
 
 	put_file(f);
 
@@ -1152,7 +1132,8 @@ static int fs_match(struct device_d *dev, struct driver_d *drv)
 static int fs_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
-	struct fs_driver_d *fsdrv = dev_to_fs_driver(dev);
+	struct driver_d *drv = dev->driver;
+	struct fs_driver_d *fsdrv = container_of(drv, struct fs_driver_d, drv);
 	int ret;
 
 	ret = dev->driver->probe(dev);
@@ -1449,7 +1430,6 @@ EXPORT_SYMBOL(stat);
 
 int lstat(const char *filename, struct stat *s)
 {
-	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	struct fs_device_d *fsdev;
 	char *f = normalise_path(filename);
@@ -1466,18 +1446,17 @@ int lstat(const char *filename, struct stat *s)
 		goto out;
 	}
 
-	if (fsdev != fs_dev_root && strcmp(f, fsdev->path)) {
+	if (fsdev != fs_dev_root && strcmp(f, fsdev->path))
 		f += strlen(fsdev->path);
-		dev = &fsdev->dev;
-	} else
-		dev = &fs_dev_root->dev;
+	else
+		fsdev = fs_dev_root;
 
-	fsdrv = dev_to_fs_driver(dev);
+	fsdrv = fsdev->driver;
 
 	if (*f == 0)
 		f = "/";
 
-	ret = fsdrv->stat(dev, f, s);
+	ret = fsdrv->stat(&fsdev->dev, f, s);
 out:
 	free(freep);
 
diff --git a/include/fs.h b/include/fs.h
index b2541a4..c3ce81a 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -23,7 +23,7 @@ typedef struct dir {
 } DIR;
 
 typedef struct filep {
-	struct device_d *dev; /* The device this FILE belongs to              */
+	struct fs_device_d *fsdev; /* The device this FILE belongs to              */
 	loff_t pos;            /* current position in stream                   */
 #define FILE_SIZE_STREAM	((loff_t) -1)
 	loff_t size;           /* The size of this inode                       */
@@ -82,7 +82,6 @@ struct fs_driver_d {
 	unsigned long flags;
 };
 
-#define dev_to_fs_driver(d) container_of(d->driver, struct fs_driver_d, drv)
 #define dev_to_fs_device(d) container_of(d, struct fs_device_d, dev)
 
 extern struct list_head fs_device_list;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
