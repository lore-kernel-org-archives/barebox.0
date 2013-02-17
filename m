Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f41.google.com ([209.85.214.41])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7BPG-0006Dj-Kx
 for barebox@lists.infradead.org; Sun, 17 Feb 2013 21:04:21 +0000
Received: by mail-bk0-f41.google.com with SMTP id q16so2251477bkw.14
 for <barebox@lists.infradead.org>; Sun, 17 Feb 2013 13:04:17 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sun, 17 Feb 2013 22:05:01 +0100
Message-Id: <1361135101-994-3-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1361135101-994-1-git-send-email-alex.aring@gmail.com>
References: <1361135101-994-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 2/2] fs: add pread and pwrite functions
To: barebox@lists.infradead.org

Add pread and pwrite functions.

Split read and write functions to save some space.
The functions pread and pwrite saves and sets the file
position to a given offset and restore them afterwards.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 fs/fs.c      | 89 ++++++++++++++++++++++++++++++++++++++++++++++++++----------
 include/fs.h |  2 ++
 2 files changed, 77 insertions(+), 14 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 48d1c89..497a2ea 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -754,17 +754,12 @@ int ioctl(int fd, int request, void *buf)
 	return ret;
 }
 
-ssize_t read(int fd, void *buf, size_t count)
+static ssize_t __read(FILE *f, void *buf, size_t count)
 {
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
-	FILE *f;
 	int ret;
 
-	if (check_fd(fd))
-		return -errno;
-
-	f = &files[fd];
 	dev = f->dev;
 
 	fsdrv = dev_to_fs_driver(dev);
@@ -777,18 +772,34 @@ ssize_t read(int fd, void *buf, size_t count)
 
 	ret = fsdrv->read(dev, f, buf, count);
 
-	if (ret > 0)
-		f->pos += ret;
 	if (ret < 0)
 		errno = -ret;
 	return ret;
 }
-EXPORT_SYMBOL(read);
+EXPORT_SYMBOL(pread);
 
-ssize_t write(int fd, const void *buf, size_t count)
+ssize_t pread(int fd, void *buf, size_t count, loff_t offset)
+{
+	loff_t pos;
+	FILE *f;
+	int ret;
+
+	if (check_fd(fd))
+		return -errno;
+
+	f = &files[fd];
+
+	pos = f->pos;
+	f->pos = offset;
+	ret = __read(f, buf, count);
+	f->pos = pos;
+
+	return ret;
+}
+EXPORT_SYMBOL(pread);
+
+ssize_t read(int fd, void *buf, size_t count)
 {
-	struct device_d *dev;
-	struct fs_driver_d *fsdrv;
 	FILE *f;
 	int ret;
 
@@ -796,6 +807,21 @@ ssize_t write(int fd, const void *buf, size_t count)
 		return -errno;
 
 	f = &files[fd];
+
+	ret = __read(f, buf, count);
+
+	if (ret > 0)
+		f->pos += ret;
+	return ret;
+}
+EXPORT_SYMBOL(read);
+
+static ssize_t __write(FILE *f, const void *buf, size_t count)
+{
+	struct device_d *dev;
+	struct fs_driver_d *fsdrv;
+	int ret;
+
 	dev = f->dev;
 
 	fsdrv = dev_to_fs_driver(dev);
@@ -812,13 +838,48 @@ ssize_t write(int fd, const void *buf, size_t count)
 		}
 	}
 	ret = fsdrv->write(dev, f, buf, count);
-	if (ret > 0)
-		f->pos += ret;
 out:
 	if (ret < 0)
 		errno = -ret;
 	return ret;
 }
+
+ssize_t pwrite(int fd, const void *buf, size_t count, loff_t offset)
+{
+	loff_t pos;
+	FILE *f;
+	int ret;
+
+	if (check_fd(fd))
+		return -errno;
+
+	f = &files[fd];
+
+	pos = f->pos;
+	f->pos = offset;
+	ret = __write(f, buf, count);
+	f->pos = pos;
+
+	return ret;
+}
+EXPORT_SYMBOL(pwrite);
+
+ssize_t write(int fd, const void *buf, size_t count)
+{
+	FILE *f;
+	int ret;
+
+	if (check_fd(fd))
+		return -errno;
+
+	f = &files[fd];
+
+	ret = __write(f, buf, count);
+
+	if (ret > 0)
+		f->pos += ret;
+	return ret;
+}
 EXPORT_SYMBOL(write);
 
 int flush(int fd)
diff --git a/include/fs.h b/include/fs.h
index d6b22f7..7c4e461 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -114,8 +114,10 @@ int flush(int fd);
 int lstat(const char *filename, struct stat *s);
 int stat(const char *filename, struct stat *s);
 ssize_t read(int fd, void *buf, size_t count);
+ssize_t pread(int fd, void *buf, size_t count, loff_t offset);
 int ioctl(int fd, int request, void *buf);
 ssize_t write(int fd, const void *buf, size_t count);
+ssize_t pwrite(int fd, const void *buf, size_t count, loff_t offset);
 
 #define SEEK_SET	1
 #define SEEK_CUR	2
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
