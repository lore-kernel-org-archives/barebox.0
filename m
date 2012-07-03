Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sm7Vl-0006sB-R4
 for barebox@lists.infradead.org; Tue, 03 Jul 2012 18:07:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Jul 2012 20:07:37 +0200
Message-Id: <1341338857-29138-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] fs: fix standard zero, full devices
To: barebox@lists.infradead.org

The standard devices are currently broken since they have
the size ~0. As now files use loff_t as file size which is a signed
type the read implementation gets confused and now returns -1.

The current implementation also has the (somewhat theorical) problem
that we do not have real streaming devices, so /dev/zero went out
of zeroes after reading 4GB (or now LLONG_MAX).

This patch introduces a new cdev flag DEVFS_IS_CHARACTER_DEV and a new
file size flag FILE_SIZE_STREAM which makes it possible to create
real stream devices instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/stddev.c |    6 +++---
 fs/devfs.c        |    3 ++-
 fs/fs.c           |    8 ++++----
 include/driver.h  |    1 +
 include/fs.h      |    1 +
 5 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/commands/stddev.c b/commands/stddev.c
index 97080eb..098aea8 100644
--- a/commands/stddev.c
+++ b/commands/stddev.c
@@ -40,7 +40,7 @@ static int zero_init(void)
 	cdev = xzalloc(sizeof (*cdev));
 
 	cdev->name = "zero";
-	cdev->size = ~0;
+	cdev->flags = DEVFS_IS_CHARACTER_DEV;
 	cdev->ops = &zeroops;
 
 	devfs_create(cdev);
@@ -68,7 +68,7 @@ static int full_init(void)
 	cdev = xzalloc(sizeof (*cdev));
 
 	cdev->name = "full";
-	cdev->size = ~0;
+	cdev->flags = DEVFS_IS_CHARACTER_DEV;
 	cdev->ops = &fullops;
 
 	devfs_create(cdev);
@@ -95,7 +95,7 @@ static int null_init(void)
 	cdev = xzalloc(sizeof (*cdev));
 
 	cdev->name = "null";
-	cdev->size = 0;
+	cdev->flags = DEVFS_IS_CHARACTER_DEV;
 	cdev->ops = &nullops;
 
 	devfs_create(cdev);
diff --git a/fs/devfs.c b/fs/devfs.c
index ea8b250..fccf25a 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -121,7 +121,8 @@ static int devfs_open(struct device_d *_dev, FILE *f, const char *filename)
 	if (!cdev)
 		return -ENOENT;
 
-	f->size = cdev->size;
+	f->size = cdev->flags & DEVFS_IS_CHARACTER_DEV ?
+			FILE_SIZE_STREAM : cdev->size;
 	f->inode = cdev;
 
 	if (cdev->ops->open) {
diff --git a/fs/fs.c b/fs/fs.c
index 1774fb7..0b376a5 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -643,7 +643,7 @@ int read(int fd, void *buf, size_t count)
 
 	fsdrv = dev_to_fs_driver(dev);
 
-	if (f->pos + count > f->size)
+	if (f->size != FILE_SIZE_STREAM && f->pos + count > f->size)
 		count = f->size - f->pos;
 
 	if (!count)
@@ -672,7 +672,7 @@ ssize_t write(int fd, const void *buf, size_t count)
 	dev = f->dev;
 
 	fsdrv = dev_to_fs_driver(dev);
-	if (f->pos + count > f->size) {
+	if (f->size != FILE_SIZE_STREAM && f->pos + count > f->size) {
 		ret = fsdrv->truncate(dev, f, f->pos + count);
 		if (ret) {
 			if (ret != -ENOSPC)
@@ -740,12 +740,12 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 
 	switch (whence) {
 	case SEEK_SET:
-		if (offset > f->size)
+		if (f->size != FILE_SIZE_STREAM && offset > f->size)
 			goto out;
 		pos = offset;
 		break;
 	case SEEK_CUR:
-		if (offset + f->pos > f->size)
+		if (f->size != FILE_SIZE_STREAM && offset + f->pos > f->size)
 			goto out;
 		pos = f->pos + offset;
 		break;
diff --git a/include/driver.h b/include/driver.h
index a5e3f44..7d597b4 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -417,6 +417,7 @@ int cdev_erase(struct cdev *cdev, size_t count, loff_t offset);
 #define DEVFS_PARTITION_FIXED		(1 << 0)
 #define DEVFS_PARTITION_READONLY	(1 << 1)
 #define DEVFS_IS_PARTITION		(1 << 2)
+#define DEVFS_IS_CHARACTER_DEV		(1 << 3)
 
 int devfs_add_partition(const char *devname, loff_t offset, loff_t size,
 		int flags, const char *name);
diff --git a/include/fs.h b/include/fs.h
index 2b1023e..c0b9f71 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -24,6 +24,7 @@ typedef struct dir {
 typedef struct filep {
 	struct device_d *dev; /* The device this FILE belongs to              */
 	loff_t pos;            /* current position in stream                   */
+#define FILE_SIZE_STREAM	((loff_t) -1)
 	loff_t size;           /* The size of this inode                       */
 	ulong flags;          /* the O_* flags from open                      */
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
