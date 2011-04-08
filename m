Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8Co6-0000rq-GG
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:37:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:36:51 +0200
Message-Id: <1302273422-6987-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
References: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/16] fs: implement flush function
To: barebox@lists.infradead.org

Once we have caching in file functions we need a way to sync
the the underlying devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs.c       |   11 +++++++++++
 fs/fs.c          |   20 ++++++++++++++++++++
 include/driver.h |    1 +
 include/fs.h     |    2 ++
 4 files changed, 34 insertions(+), 0 deletions(-)

diff --git a/fs/devfs.c b/fs/devfs.c
index ddb3447..f82fddd 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -169,6 +169,16 @@ static int devfs_close(struct device_d *_dev, FILE *f)
 	return 0;
 }
 
+static int devfs_flush(struct device_d *_dev, FILE *f)
+{
+	struct cdev *cdev = f->inode;
+
+	if (cdev->ops->flush)
+		return cdev->ops->flush(cdev);
+
+	return 0;
+}
+
 static int partition_ioctl(struct cdev *cdev, int request, void *buf)
 {
 	size_t offset;
@@ -287,6 +297,7 @@ static struct fs_driver_d devfs_driver = {
 	.lseek     = devfs_lseek,
 	.open      = devfs_open,
 	.close     = devfs_close,
+	.flush     = devfs_flush,
 	.ioctl     = devfs_ioctl,
 	.opendir   = devfs_opendir,
 	.readdir   = devfs_readdir,
diff --git a/fs/fs.c b/fs/fs.c
index f684d45..059f67a 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -536,6 +536,26 @@ ssize_t write(int fd, const void *buf, size_t count)
 }
 EXPORT_SYMBOL(write);
 
+int flush(int fd)
+{
+	struct device_d *dev;
+	struct fs_driver_d *fsdrv;
+	FILE *f = &files[fd];
+
+	if (check_fd(fd))
+		return errno;
+
+	dev = f->dev;
+
+	fsdrv = (struct fs_driver_d *)dev->driver->type_data;
+	if (fsdrv->flush)
+		errno = fsdrv->flush(dev, f);
+	else
+		errno = 0;
+
+	return errno;
+}
+
 off_t lseek(int fildes, off_t offset, int whence)
 {
 	struct device_d *dev;
diff --git a/include/driver.h b/include/driver.h
index bd00069..14ccc6d 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -292,6 +292,7 @@ struct file_operations {
 	off_t (*lseek)(struct cdev*, off_t);
 	int (*open)(struct cdev*);
 	int (*close)(struct cdev*);
+	int (*flush)(struct cdev*);
 	int (*erase)(struct cdev*, size_t count, unsigned long offset);
 	int (*protect)(struct cdev*, size_t count, unsigned long offset, int prot);
 	int (*memmap)(struct cdev*, void **map, int flags);
diff --git a/include/fs.h b/include/fs.h
index 3834fe4..97d5995 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -53,6 +53,7 @@ struct fs_driver_d {
 	int (*close)(struct device_d *dev, FILE *f);
 	int (*read)(struct device_d *dev, FILE *f, void *buf, size_t size);
 	int (*write)(struct device_d *dev, FILE *f, const void *buf, size_t size);
+	int (*flush)(struct device_d *dev, FILE *f);
 	off_t (*lseek)(struct device_d *dev, FILE *f, off_t pos);
 
 	struct dir* (*opendir)(struct device_d *dev, const char *pathname);
@@ -98,6 +99,7 @@ int open(const char *pathname, int flags, ...);
 int creat(const char *pathname, mode_t mode);
 int unlink(const char *pathname);
 int close(int fd);
+int flush(int fd);
 int stat(const char *filename, struct stat *s);
 int read(int fd, void *buf, size_t count);
 int ioctl(int fd, int request, void *buf);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
