Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyin4-0004IS-Gz
 for barebox@lists.infradead.org; Tue, 26 Feb 2019 19:53:24 +0000
Received: by mail-pf1-x441.google.com with SMTP id n74so6735583pfi.9
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2019 11:53:22 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Feb 2019 11:53:03 -0800
Message-Id: <20190226195303.24733-6-andrew.smirnov@gmail.com>
In-Reply-To: <20190226195303.24733-1-andrew.smirnov@gmail.com>
References: <20190226195303.24733-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/6] fs: Simplify fd to FILE lookup code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Avoid a bit of repeating code by merging checking fd for correctness
and fd to FILE lookup into a single routine and converting the rest of
the code to use it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/fs.c | 83 +++++++++++++++++++++------------------------------------
 1 file changed, 30 insertions(+), 53 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 878a18e17..c6cb49996 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -171,14 +171,14 @@ static void put_file(FILE *f)
 	dput(f->dentry);
 }
 
-static int check_fd(int fd)
+static FILE *fd_to_file(int fd)
 {
 	if (fd < 0 || fd >= MAX_FILES || !files[fd].in_use) {
 		errno = EBADF;
-		return -errno;
+		return ERR_PTR(-errno);
 	}
 
-	return 0;
+	return &files[fd];
 }
 
 static int create(struct dentry *dir, struct dentry *dentry)
@@ -205,14 +205,12 @@ EXPORT_SYMBOL(creat);
 int ftruncate(int fd, loff_t length)
 {
 	struct fs_driver_d *fsdrv;
-	FILE *f;
+	FILE *f = fd_to_file(fd);
 	int ret;
 
-	if (check_fd(fd))
+	if (IS_ERR(f))
 		return -errno;
 
-	f = &files[fd];
-
 	if (f->size == FILE_SIZE_STREAM)
 		return 0;
 
@@ -232,14 +230,12 @@ int ftruncate(int fd, loff_t length)
 int ioctl(int fd, int request, void *buf)
 {
 	struct fs_driver_d *fsdrv;
-	FILE *f;
+	FILE *f = fd_to_file(fd);
 	int ret;
 
-	if (check_fd(fd))
+	if (IS_ERR(f))
 		return -errno;
 
-	f = &files[fd];
-
 	fsdrv = f->fsdev->driver;
 
 	if (fsdrv->ioctl)
@@ -279,14 +275,12 @@ out:
 ssize_t pread(int fd, void *buf, size_t count, loff_t offset)
 {
 	loff_t pos;
-	FILE *f;
+	FILE *f = fd_to_file(fd);
 	int ret;
 
-	if (check_fd(fd))
+	if (IS_ERR(f))
 		return -errno;
 
-	f = &files[fd];
-
 	pos = f->pos;
 	f->pos = offset;
 	ret = __read(f, buf, count);
@@ -298,14 +292,12 @@ EXPORT_SYMBOL(pread);
 
 ssize_t read(int fd, void *buf, size_t count)
 {
-	FILE *f;
+	FILE *f = fd_to_file(fd);
 	int ret;
 
-	if (check_fd(fd))
+	if (IS_ERR(f))
 		return -errno;
 
-	f = &files[fd];
-
 	ret = __read(f, buf, count);
 
 	if (ret > 0)
@@ -348,14 +340,12 @@ out:
 ssize_t pwrite(int fd, const void *buf, size_t count, loff_t offset)
 {
 	loff_t pos;
-	FILE *f;
+	FILE *f = fd_to_file(fd);
 	int ret;
 
-	if (check_fd(fd))
+	if (IS_ERR(f))
 		return -errno;
 
-	f = &files[fd];
-
 	pos = f->pos;
 	f->pos = offset;
 	ret = __write(f, buf, count);
@@ -367,14 +357,12 @@ EXPORT_SYMBOL(pwrite);
 
 ssize_t write(int fd, const void *buf, size_t count)
 {
-	FILE *f;
+	FILE *f = fd_to_file(fd);
 	int ret;
 
-	if (check_fd(fd))
+	if (IS_ERR(f))
 		return -errno;
 
-	f = &files[fd];
-
 	ret = __write(f, buf, count);
 
 	if (ret > 0)
@@ -386,14 +374,12 @@ EXPORT_SYMBOL(write);
 int flush(int fd)
 {
 	struct fs_driver_d *fsdrv;
-	FILE *f;
+	FILE *f = fd_to_file(fd);
 	int ret;
 
-	if (check_fd(fd))
+	if (IS_ERR(f))
 		return -errno;
 
-	f = &files[fd];
-
 	fsdrv = f->fsdev->driver;
 	if (fsdrv->flush)
 		ret = fsdrv->flush(&f->fsdev->dev, f);
@@ -406,17 +392,16 @@ int flush(int fd)
 	return ret;
 }
 
-loff_t lseek(int fildes, loff_t offset, int whence)
+loff_t lseek(int fd, loff_t offset, int whence)
 {
 	struct fs_driver_d *fsdrv;
-	FILE *f;
+	FILE *f = fd_to_file(fd);
 	loff_t pos;
 	int ret;
 
-	if (check_fd(fildes))
+	if (IS_ERR(f))
 		return -1;
 
-	f = &files[fildes];
 	fsdrv = f->fsdev->driver;
 
 	ret = -EINVAL;
@@ -461,12 +446,11 @@ EXPORT_SYMBOL(lseek);
 int erase(int fd, loff_t count, loff_t offset)
 {
 	struct fs_driver_d *fsdrv;
-	FILE *f;
+	FILE *f = fd_to_file(fd);
 	int ret;
 
-	if (check_fd(fd))
+	if (IS_ERR(f))
 		return -errno;
-	f = &files[fd];
 	if (offset >= f->size)
 		return 0;
 	if (count == ERASE_SIZE_ALL || count > f->size - offset)
@@ -490,12 +474,11 @@ EXPORT_SYMBOL(erase);
 int protect(int fd, size_t count, loff_t offset, int prot)
 {
 	struct fs_driver_d *fsdrv;
-	FILE *f;
+	FILE *f = fd_to_file(fd);
 	int ret;
 
-	if (check_fd(fd))
+	if (IS_ERR(f))
 		return -errno;
-	f = &files[fd];
 	if (offset >= f->size)
 		return 0;
 	if (count > f->size - offset)
@@ -532,15 +515,13 @@ int protect_file(const char *file, int prot)
 void *memmap(int fd, int flags)
 {
 	struct fs_driver_d *fsdrv;
-	FILE *f;
+	FILE *f = fd_to_file(fd);
 	void *retp = MAP_FAILED;
 	int ret;
 
-	if (check_fd(fd))
+	if (IS_ERR(f))
 		return retp;
 
-	f = &files[fd];
-
 	fsdrv = f->fsdev->driver;
 
 	if (fsdrv->memmap)
@@ -558,14 +539,12 @@ EXPORT_SYMBOL(memmap);
 int close(int fd)
 {
 	struct fs_driver_d *fsdrv;
-	FILE *f;
+	FILE *f = fd_to_file(fd);
 	int ret = 0;
 
-	if (check_fd(fd))
+	if (IS_ERR(f))
 		return -errno;
 
-	f = &files[fd];
-
 	fsdrv = f->fsdev->driver;
 
 	if (fsdrv->close)
@@ -847,13 +826,11 @@ static void stat_inode(struct inode *inode, struct stat *s)
 
 int fstat(int fd, struct stat *s)
 {
-	FILE *f;
+	FILE *f = fd_to_file(fd);
 
-	if (check_fd(fd))
+	if (IS_ERR(f))
 		return -errno;
 
-	f = &files[fd];
-
 	stat_inode(f->f_inode, s);
 
 	return 0;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
