Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STWL5-0002SA-Qt
 for barebox@lists.infradead.org; Sun, 13 May 2012 10:47:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 13 May 2012 12:47:42 +0200
Message-Id: <1336906062-21617-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Make errno a positive value
To: barebox@lists.infradead.org

Normally errno contains a positive error value. A certain unnamed developer
mixed this up while implementing U-Boot-v2. Also, normally errno is never
set to zero by any library function.
This patch fixes this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/crc.c       |    2 +-
 commands/ls.c        |    6 +-
 commands/mem.c       |   10 +-
 commands/saveenv.c   |    6 +-
 common/env.c         |    2 +-
 common/environment.c |    6 +-
 common/misc.c        |    2 +-
 fs/fs.c              |  350 +++++++++++++++++++++++++++++++-------------------
 lib/make_directory.c |   13 +-
 lib/parameter.c      |   16 ++-
 10 files changed, 251 insertions(+), 162 deletions(-)

diff --git a/commands/crc.c b/commands/crc.c
index df22941..a0d3af6 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -48,7 +48,7 @@ static int file_crc(char* filename, ulong start, ulong size, ulong *crc,
 
 	if (start > 0) {
 		ret = lseek(fd, start, SEEK_SET);
-		if (ret == -1) {
+		if (ret < 0) {
 			perror("lseek");
 			goto out;
 		}
diff --git a/commands/ls.c b/commands/ls.c
index c98d2da..ad609f3 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -49,7 +49,7 @@ int ls(const char *path, ulong flags)
 	string_list_init(&sl);
 
 	if (stat(path, &s))
-		return errno;
+		return -errno;
 
 	if (flags & LS_SHOWARG && s.st_mode & S_IFDIR)
 		printf("%s:\n", path);
@@ -61,7 +61,7 @@ int ls(const char *path, ulong flags)
 
 	dir = opendir(path);
 	if (!dir)
-		return errno;
+		return -errno;
 
 	while ((d = readdir(dir))) {
 		sprintf(tmp, "%s/%s", path, d->d_name);
@@ -85,7 +85,7 @@ int ls(const char *path, ulong flags)
 
 	dir = opendir(path);
 	if (!dir) {
-		errno = -ENOENT;
+		errno = ENOENT;
 		return -ENOENT;
 	}
 
diff --git a/commands/mem.c b/commands/mem.c
index d8e90e0..f32e5d8 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -122,7 +122,7 @@ static int open_and_lseek(const char *filename, int mode, off_t pos)
 		return fd;
 
 	ret = lseek(fd, pos, SEEK_SET);
-	if (ret == -1) {
+	if (ret < 0) {
 		perror("lseek");
 		close(fd);
 		return ret;
@@ -170,7 +170,6 @@ static int do_mem_md(int argc, char *argv[])
 	char *filename = DEVMEM;
 	int mode = O_RWSIZE_4;
 
-	errno = 0;
 	if (mem_parse_options(argc, argv, "bwls:", &mode, &filename, NULL) < 0)
 		return 1;
 
@@ -207,7 +206,7 @@ static int do_mem_md(int argc, char *argv[])
 out:
 	close(fd);
 
-	return errno;
+	return ret ? 1 : 0;
 }
 
 static const __maybe_unused char cmd_md_help[] =
@@ -243,8 +242,6 @@ static int do_mem_mw(int argc, char *argv[])
 	int mode = O_RWSIZE_4;
 	ulong adr;
 
-	errno = 0;
-
 	if (mem_parse_options(argc, argv, "bwld:", &mode, NULL, &filename) < 0)
 		return 1;
 
@@ -279,12 +276,13 @@ static int do_mem_mw(int argc, char *argv[])
 			perror("write");
 			break;
 		}
+		ret = 0;
 		optind++;
 	}
 
 	close(fd);
 
-	return errno;
+	return ret ? 1 : 0;
 }
 
 static const __maybe_unused char cmd_mw_help[] =
diff --git a/commands/saveenv.c b/commands/saveenv.c
index a4b2796..549fcd4 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -54,7 +54,7 @@ static int do_saveenv(int argc, char *argv[])
 	ret = protect(fd, ~0, 0, 0);
 
 	/* ENOSYS is no error here, many devices do not need it */
-	if (ret && errno != -ENOSYS) {
+	if (ret && errno != ENOSYS) {
 		printf("could not unprotect %s: %s\n", filename, errno_str());
 		close(fd);
 		return 1;
@@ -63,7 +63,7 @@ static int do_saveenv(int argc, char *argv[])
 	ret = erase(fd, ~0, 0);
 
 	/* ENOSYS is no error here, many devices do not need it */
-	if (ret && errno != -ENOSYS) {
+	if (ret && errno != ENOSYS) {
 		printf("could not erase %s: %s\n", filename, errno_str());
 		close(fd);
 		return 1;
@@ -82,7 +82,7 @@ static int do_saveenv(int argc, char *argv[])
 	ret = protect(fd, ~0, 0, 1);
 
 	/* ENOSYS is no error here, many devices do not need it */
-	if (ret && errno != -ENOSYS) {
+	if (ret && errno != ENOSYS) {
 		printf("could not protect %s: %s\n", filename, errno_str());
 		close(fd);
 		return 1;
diff --git a/common/env.c b/common/env.c
index e57a520..a01a27e 100644
--- a/common/env.c
+++ b/common/env.c
@@ -219,7 +219,7 @@ int setenv(const char *_name, const char *value)
 		else
 			ret = -ENODEV;
 
-		errno = ret;
+		errno = -ret;
 
 		if (ret < 0)
 			perror("set parameter");
diff --git a/common/environment.c b/common/environment.c
index 0fdbd03..52ce0de 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -187,7 +187,7 @@ int envfs_load(char *filename, char *dir)
 	ret = read(envfd, &super, sizeof(struct envfs_super));
 	if ( ret < sizeof(struct envfs_super)) {
 		perror("read");
-		ret = errno;
+		ret = -errno;
 		goto out;
 	}
 
@@ -210,7 +210,7 @@ int envfs_load(char *filename, char *dir)
 	ret = read(envfd, buf, size);
 	if (ret < size) {
 		perror("read");
-		ret = errno;
+		ret = -errno;
 		goto out;
 	}
 
@@ -256,7 +256,7 @@ int envfs_load(char *filename, char *dir)
 				inode_size);
 		if (ret < inode_size) {
 			perror("write");
-			ret = errno;
+			ret = -errno;
 			close(fd);
 			goto out;
 		}
diff --git a/common/misc.c b/common/misc.c
index b31a45c..01e1b19 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -112,7 +112,7 @@ EXPORT_SYMBOL(strerror);
 
 const char *errno_str(void)
 {
-	return strerror(-errno);
+	return strerror(errno);
 }
 EXPORT_SYMBOL(errno_str);
 
diff --git a/fs/fs.c b/fs/fs.c
index 04dace4..ea5ed11 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -211,8 +211,8 @@ static void put_file(FILE *f)
 static int check_fd(int fd)
 {
 	if (fd < 0 || fd >= MAX_FILES || !files[fd].in_use) {
-		errno = -EBADF;
-		return errno;
+		errno = EBADF;
+		return -errno;
 	}
 
 	return 0;
@@ -361,7 +361,7 @@ static int dir_is_empty(const char *pathname)
 
 	dir = opendir(pathname);
 	if (!dir) {
-		errno = -ENOENT;
+		errno = ENOENT;
 		return -ENOENT;
 	}
 
@@ -389,47 +389,42 @@ static int path_check_prereq(const char *path, unsigned int flags)
 {
 	struct stat s;
 	unsigned int m;
-
-	errno = 0;
+	int ret = 0;
 
 	if (stat(path, &s)) {
-		if (flags & S_UB_DOES_NOT_EXIST) {
-			errno = 0;
+		if (flags & S_UB_DOES_NOT_EXIST)
 			goto out;
-		}
-		errno = -ENOENT;
+		ret = -ENOENT;
 		goto out;
 	}
 
 	if (flags & S_UB_DOES_NOT_EXIST) {
-		errno = -EEXIST;
+		ret = -EEXIST;
 		goto out;
 	}
 
-	if (flags == S_UB_EXISTS) {
-		errno = 0;
+	if (flags == S_UB_EXISTS)
 		goto out;
-	}
 
 	m = s.st_mode;
 
 	if (S_ISDIR(m)) {
 		if (flags & S_IFREG) {
-			errno = -EISDIR;
+			ret = -EISDIR;
 			goto out;
 		}
 		if ((flags & S_UB_IS_EMPTY) && !dir_is_empty(path)) {
-			errno = -ENOTEMPTY;
+			ret = -ENOTEMPTY;
 			goto out;
 		}
 	}
 	if ((flags & S_IFDIR) && S_ISREG(m)) {
-		errno = -ENOTDIR;
+		ret = -ENOTDIR;
 		goto out;
 	}
 
 out:
-	return errno;
+	return ret;
 }
 
 const char *getcwd(void)
@@ -441,9 +436,11 @@ EXPORT_SYMBOL(getcwd);
 int chdir(const char *pathname)
 {
 	char *p = normalise_path(pathname);
-	errno = 0;
+	int ret;
+
 
-	if (path_check_prereq(p, S_IFDIR))
+	ret = path_check_prereq(p, S_IFDIR);
+	if (ret)
 		goto out;
 
 	strcpy(cwd, p);
@@ -451,7 +448,10 @@ int chdir(const char *pathname)
 out:
 	free(p);
 
-	return errno;
+	if (ret)
+		errno = -ret;
+
+	return ret;
 }
 EXPORT_SYMBOL(chdir);
 
@@ -461,24 +461,34 @@ int unlink(const char *pathname)
 	struct fs_driver_d *fsdrv;
 	char *p = normalise_path(pathname);
 	char *freep = p;
+	int ret;
 
-	if (path_check_prereq(pathname, S_IFREG))
+	ret = path_check_prereq(pathname, S_IFREG);
+	if (ret) {
+		ret = -EINVAL;
 		goto out;
+	}
 
 	fsdev = get_fs_device_and_root_path(&p);
-	if (!fsdev)
+	if (!fsdev) {
+		ret = -ENOENT;
 		goto out;
+	}
 	fsdrv = fsdev->driver;
 
 	if (!fsdrv->unlink) {
-		errno = -ENOSYS;
+		ret = -ENOSYS;
 		goto out;
 	}
 
-	errno = fsdrv->unlink(&fsdev->dev, p);
+	ret = fsdrv->unlink(&fsdev->dev, p);
+	if (ret)
+		errno = -ret;
 out:
 	free(freep);
-	return errno;
+	if (ret)
+		errno = -ret;
+	return ret;
 }
 EXPORT_SYMBOL(unlink);
 
@@ -491,28 +501,31 @@ int open(const char *pathname, int flags, ...)
 	struct stat s;
 	char *path = normalise_path(pathname);
 	char *freep = path;
+	int ret;
 
 	exist_err = stat(path, &s);
 
 	if (!exist_err && S_ISDIR(s.st_mode)) {
-		errno = -EISDIR;
+		ret = -EISDIR;
 		goto out1;
 	}
 
 	if (exist_err && !(flags & O_CREAT)) {
-		errno = exist_err;
+		ret = exist_err;
 		goto out1;
 	}
 
 	f = get_file();
 	if (!f) {
-		errno = -EMFILE;
+		ret = -EMFILE;
 		goto out1;
 	}
 
 	fsdev = get_fs_device_and_root_path(&path);
-	if (!fsdev)
+	if (!fsdev) {
+		ret = -ENOENT;
 		goto out;
+	}
 
 	fsdrv = fsdev->driver;
 
@@ -520,28 +533,28 @@ int open(const char *pathname, int flags, ...)
 	f->flags = flags;
 
 	if ((flags & O_ACCMODE) && !fsdrv->write) {
-		errno = -EROFS;
+		ret = -EROFS;
 		goto out;
 	}
 
 	if (exist_err) {
 		if (NULL != fsdrv->create)
-			errno = fsdrv->create(&fsdev->dev, path,
+			ret = fsdrv->create(&fsdev->dev, path,
 					S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO);
 		else
-			errno = -EROFS;
-		if (errno)
+			ret = -EROFS;
+		if (ret)
 			goto out;
 	}
-	errno = fsdrv->open(&fsdev->dev, f, path);
-	if (errno)
+	ret = fsdrv->open(&fsdev->dev, f, path);
+	if (ret)
 		goto out;
 
 
 	if (flags & O_TRUNC) {
-		errno = fsdrv->truncate(&fsdev->dev, f, 0);
+		ret = fsdrv->truncate(&fsdev->dev, f, 0);
 		f->size = 0;
-		if (errno)
+		if (ret)
 			goto out;
 	}
 
@@ -555,7 +568,9 @@ out:
 	put_file(f);
 out1:
 	free(freep);
-	return errno;
+	if (ret)
+		errno = -ret;
+	return ret;
 }
 EXPORT_SYMBOL(open);
 
@@ -570,19 +585,22 @@ int ioctl(int fd, int request, void *buf)
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	FILE *f = &files[fd];
+	int ret;
 
 	if (check_fd(fd))
-		return errno;
+		return -errno;
 
 	dev = f->dev;
 
 	fsdrv = dev_to_fs_driver(dev);
 
 	if (fsdrv->ioctl)
-		errno = fsdrv->ioctl(dev, f, request, buf);
+		ret = fsdrv->ioctl(dev, f, request, buf);
 	else
-		errno = -ENOSYS;
-	return errno;
+		ret = -ENOSYS;
+	if (ret)
+		errno = -ret;
+	return ret;
 }
 
 int read(int fd, void *buf, size_t count)
@@ -590,9 +608,10 @@ int read(int fd, void *buf, size_t count)
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	FILE *f = &files[fd];
+	int ret;
 
 	if (check_fd(fd))
-		return errno;
+		return -errno;
 
 	dev = f->dev;
 
@@ -604,11 +623,13 @@ int read(int fd, void *buf, size_t count)
 	if (!count)
 		return 0;
 
-	errno = fsdrv->read(dev, f, buf, count);
+	ret = fsdrv->read(dev, f, buf, count);
 
-	if (errno > 0)
-		f->pos += errno;
-	return errno;
+	if (ret > 0)
+		f->pos += ret;
+	if (ret < 0)
+		errno = -ret;
+	return ret;
 }
 EXPORT_SYMBOL(read);
 
@@ -617,30 +638,33 @@ ssize_t write(int fd, const void *buf, size_t count)
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	FILE *f = &files[fd];
+	int ret;
 
 	if (check_fd(fd))
-		return errno;
+		return -errno;
 
 	dev = f->dev;
 
 	fsdrv = dev_to_fs_driver(dev);
 	if (f->pos + count > f->size) {
-		errno = fsdrv->truncate(dev, f, f->pos + count);
-		if (errno) {
-			if (errno != -ENOSPC)
-				return errno;
+		ret = fsdrv->truncate(dev, f, f->pos + count);
+		if (ret) {
+			if (ret != -ENOSPC)
+				goto out;
 			count = f->size - f->pos;
 			if (!count)
-				return errno;
+				goto out;
 		} else {
 			f->size = f->pos + count;
 		}
 	}
-	errno = fsdrv->write(dev, f, buf, count);
-
-	if (errno > 0)
-		f->pos += errno;
-	return errno;
+	ret = fsdrv->write(dev, f, buf, count);
+	if (ret > 0)
+		f->pos += ret;
+out:
+	if (ret < 0)
+		errno = -ret;
+	return ret;
 }
 EXPORT_SYMBOL(write);
 
@@ -649,19 +673,23 @@ int flush(int fd)
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	FILE *f = &files[fd];
+	int ret;
 
 	if (check_fd(fd))
-		return errno;
+		return -errno;
 
 	dev = f->dev;
 
 	fsdrv = dev_to_fs_driver(dev);
 	if (fsdrv->flush)
-		errno = fsdrv->flush(dev, f);
+		ret = fsdrv->flush(dev, f);
 	else
-		errno = 0;
+		ret = 0;
+
+	if (ret)
+		errno = -ret;
 
-	return errno;
+	return ret;
 }
 
 off_t lseek(int fildes, off_t offset, int whence)
@@ -670,20 +698,21 @@ off_t lseek(int fildes, off_t offset, int whence)
 	struct fs_driver_d *fsdrv;
 	FILE *f = &files[fildes];
 	off_t pos;
+	int ret;
 
 	if (check_fd(fildes))
 		return -1;
 
-	errno = 0;
-
 	dev = f->dev;
 	fsdrv = dev_to_fs_driver(dev);
 	if (!fsdrv->lseek) {
-		errno = -ENOSYS;
-		return -1;
+		ret = -ENOSYS;
+		goto out;
 	}
 
-	switch(whence) {
+	ret = -EINVAL;
+
+	switch (whence) {
 	case SEEK_SET:
 		if (offset > f->size)
 			goto out;
@@ -703,11 +732,13 @@ off_t lseek(int fildes, off_t offset, int whence)
 		goto out;
 	}
 
-	return fsdrv->lseek(dev, f, pos);
+	ret = fsdrv->lseek(dev, f, pos);
 
 out:
-	errno = -EINVAL;
-	return -1;
+	if (ret)
+		errno = -ret;
+
+	return ret;
 }
 EXPORT_SYMBOL(lseek);
 
@@ -716,9 +747,10 @@ int erase(int fd, size_t count, unsigned long offset)
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	FILE *f = &files[fd];
+	int ret;
 
 	if (check_fd(fd))
-		return errno;
+		return -errno;
 
 	dev = f->dev;
 
@@ -728,11 +760,14 @@ int erase(int fd, size_t count, unsigned long offset)
 		count = f->size - f->pos;
 
 	if (fsdrv->erase)
-		errno = fsdrv->erase(dev, f, count, offset);
+		ret = fsdrv->erase(dev, f, count, offset);
 	else
-		errno = -ENOSYS;
+		ret = -ENOSYS;
+
+	if (ret)
+		errno = -ret;
 
-	return errno;
+	return ret;
 }
 EXPORT_SYMBOL(erase);
 
@@ -741,9 +776,10 @@ int protect(int fd, size_t count, unsigned long offset, int prot)
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	FILE *f = &files[fd];
+	int ret;
 
 	if (check_fd(fd))
-		return errno;
+		return -errno;
 
 	dev = f->dev;
 
@@ -753,11 +789,14 @@ int protect(int fd, size_t count, unsigned long offset, int prot)
 		count = f->size - f->pos;
 
 	if (fsdrv->protect)
-		errno = fsdrv->protect(dev, f, count, offset, prot);
+		ret = fsdrv->protect(dev, f, count, offset, prot);
 	else
-		errno = -ENOSYS;
+		ret = -ENOSYS;
+
+	if (ret)
+		errno = -ret;
 
-	return errno;
+	return ret;
 }
 EXPORT_SYMBOL(protect);
 
@@ -781,21 +820,25 @@ void *memmap(int fd, int flags)
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	FILE *f = &files[fd];
-	void *ret = (void *)-1;
+	void *retp = (void *)-1;
+	int ret;
 
 	if (check_fd(fd))
-		return ret;
+		return retp;
 
 	dev = f->dev;
 
 	fsdrv = dev_to_fs_driver(dev);
 
 	if (fsdrv->memmap)
-		errno = fsdrv->memmap(dev, f, &ret, flags);
+		ret = fsdrv->memmap(dev, f, &retp, flags);
 	else
-		errno = -EINVAL;
+		ret = -EINVAL;
 
-	return ret;
+	if (ret)
+		errno = -ret;
+
+	return retp;
 }
 EXPORT_SYMBOL(memmap);
 
@@ -804,17 +847,22 @@ int close(int fd)
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	FILE *f = &files[fd];
+	int ret;
 
 	if (check_fd(fd))
-		return errno;
+		return -errno;
 
 	dev = f->dev;
 
 	fsdrv = dev_to_fs_driver(dev);
-	errno = fsdrv->close(dev, f);
+	ret = fsdrv->close(dev, f);
 
 	put_file(f);
-	return errno;
+
+	if (ret)
+		errno = -ret;
+
+	return ret;
 }
 EXPORT_SYMBOL(close);
 
@@ -893,23 +941,22 @@ int mount(const char *device, const char *fsname, const char *_path)
 	int ret;
 	char *path = normalise_path(_path);
 
-	errno = 0;
-
 	debug("mount: %s on %s type %s\n", device, path, fsname);
 
 	if (fs_dev_root) {
 		fsdev = get_fsdevice_by_path(path);
 		if (fsdev != fs_dev_root) {
 			printf("sorry, no nested mounts\n");
-			errno = -EBUSY;
+			ret = -EBUSY;
 			goto err_free_path;
 		}
-		if (path_check_prereq(path, S_IFDIR))
+		ret = path_check_prereq(path, S_IFDIR);
+		if (ret)
 			goto err_free_path;
 	} else {
 		/* no mtab, so we only allow to mount on '/' */
 		if (*path != '/' || *(path + 1)) {
-			errno = -ENOTDIR;
+			ret = -ENOTDIR;
 			goto err_free_path;
 		}
 	}
@@ -924,22 +971,19 @@ int mount(const char *device, const char *fsname, const char *_path)
 	if (!strncmp(device, "/dev/", 5))
 		fsdev->cdev = cdev_by_name(device + 5);
 
-	if ((ret = register_device(&fsdev->dev))) {
-		errno = ret;
+	ret = register_device(&fsdev->dev);
+	if (ret)
 		goto err_register;
-	}
 
 	if (!fsdev->dev.driver) {
 		/*
 		 * Driver didn't accept the device or no driver for this
 		 * device. Bail out
 		 */
-		errno = -EINVAL;
+		ret = -EINVAL;
 		goto err_no_driver;
 	}
 
-	errno = 0;
-
 	return 0;
 
 err_no_driver:
@@ -949,7 +993,9 @@ err_register:
 err_free_path:
 	free(path);
 
-	return errno;
+	errno = -ret;
+
+	return ret;
 }
 EXPORT_SYMBOL(mount);
 
@@ -968,13 +1014,13 @@ int umount(const char *pathname)
 	free(p);
 
 	if (f == fs_dev_root && !list_is_singular(&fs_device_list)) {
-		errno = -EBUSY;
-		return errno;
+		errno = EBUSY;
+		return -EBUSY;
 	}
 
 	if (!fsdev) {
-		errno = -EFAULT;
-		return errno;
+		errno = EFAULT;
+		return -EFAULT;
 	}
 
 	unregister_device(&fsdev->dev);
@@ -990,13 +1036,17 @@ DIR *opendir(const char *pathname)
 	struct fs_driver_d *fsdrv;
 	char *p = normalise_path(pathname);
 	char *freep = p;
+	int ret;
 
-	if (path_check_prereq(pathname, S_IFDIR))
+	ret = path_check_prereq(pathname, S_IFDIR);
+	if (ret)
 		goto out;
 
 	fsdev = get_fs_device_and_root_path(&p);
-	if (!fsdev)
+	if (!fsdev) {
+		ret = -ENOENT;
 		goto out;
+	}
 	fsdrv = fsdev->driver;
 
 	debug("opendir: fsdrv: %p\n",fsdrv);
@@ -1005,31 +1055,51 @@ DIR *opendir(const char *pathname)
 	if (dir) {
 		dir->dev = &fsdev->dev;
 		dir->fsdrv = fsdrv;
+	} else {
+		/*
+		 * FIXME: The fs drivers should return ERR_PTR here so that
+		 * we are able to forward the error
+		 */
+		ret = -EINVAL;
 	}
 
 out:
 	free(freep);
+
+	if (ret)
+		errno = -ret;
+
 	return dir;
 }
 EXPORT_SYMBOL(opendir);
 
 struct dirent *readdir(DIR *dir)
 {
-	if (!dir)
-		return NULL;
+	struct dirent *ent;
+
+	ent = dir->fsdrv->readdir(dir->dev, dir);
 
-	return dir->fsdrv->readdir(dir->dev, dir);
+	if (!ent)
+		errno = EBADF;
+
+	return ent;
 }
 EXPORT_SYMBOL(readdir);
 
 int closedir(DIR *dir)
 {
+	int ret;
+
 	if (!dir) {
-		errno = -EBADF;
-		return -1;
+		errno = EBADF;
+		return -EBADF;
 	}
 
-	return dir->fsdrv->closedir(dir->dev, dir);
+	ret = dir->fsdrv->closedir(dir->dev, dir);
+	if (ret)
+		errno = -ret;
+
+	return ret;
 }
 EXPORT_SYMBOL(closedir);
 
@@ -1040,6 +1110,7 @@ int stat(const char *filename, struct stat *s)
 	struct fs_device_d *fsdev;
 	char *f = normalise_path(filename);
 	char *freep = f;
+	int ret;
 
 	automount_mount(f, 1);
 
@@ -1047,7 +1118,7 @@ int stat(const char *filename, struct stat *s)
 
 	fsdev = get_fsdevice_by_path(f);
 	if (!fsdev) {
-		errno = -ENOENT;
+		ret = -ENOENT;
 		goto out;
 	}
 
@@ -1062,10 +1133,14 @@ int stat(const char *filename, struct stat *s)
 	if (*f == 0)
 		f = "/";
 
-	errno = fsdrv->stat(dev, f, s);
+	ret = fsdrv->stat(dev, f, s);
 out:
 	free(freep);
-	return errno;
+
+	if (ret)
+		errno = -ret;
+
+	return ret;
 }
 EXPORT_SYMBOL(stat);
 
@@ -1075,24 +1150,30 @@ int mkdir (const char *pathname, mode_t mode)
 	struct fs_device_d *fsdev;
 	char *p = normalise_path(pathname);
 	char *freep = p;
+	int ret;
 
-	if (path_check_prereq(pathname, S_UB_DOES_NOT_EXIST))
+	ret = path_check_prereq(pathname, S_UB_DOES_NOT_EXIST);
+	if (ret)
 		goto out;
 
 	fsdev = get_fs_device_and_root_path(&p);
-	if (!fsdev)
-		goto out;
-	fsdrv = fsdev->driver;
-
-	if (fsdrv->mkdir) {
-		errno = fsdrv->mkdir(&fsdev->dev, p);
+	if (!fsdev) {
+		ret = -ENOENT;
 		goto out;
 	}
+	fsdrv = fsdev->driver;
 
-	errno = -EROFS;
+	if (fsdrv->mkdir)
+		ret = fsdrv->mkdir(&fsdev->dev, p);
+	else
+		ret = -EROFS;
 out:
 	free(freep);
-	return errno;
+
+	if (ret)
+		errno = -ret;
+
+	return ret;
 }
 EXPORT_SYMBOL(mkdir);
 
@@ -1102,24 +1183,30 @@ int rmdir (const char *pathname)
 	struct fs_device_d *fsdev;
 	char *p = normalise_path(pathname);
 	char *freep = p;
+	int ret;
 
-	if (path_check_prereq(pathname, S_IFDIR | S_UB_IS_EMPTY))
+	ret = path_check_prereq(pathname, S_IFDIR | S_UB_IS_EMPTY);
+	if (ret)
 		goto out;
 
 	fsdev = get_fs_device_and_root_path(&p);
-	if (!fsdev)
-		goto out;
-	fsdrv = fsdev->driver;
-
-	if (fsdrv->rmdir) {
-		errno = fsdrv->rmdir(&fsdev->dev, p);
+	if (!fsdev) {
+		ret = -ENOENT;
 		goto out;
 	}
+	fsdrv = fsdev->driver;
 
-	errno = -EROFS;
+	if (fsdrv->rmdir)
+		ret = fsdrv->rmdir(&fsdev->dev, p);
+	else
+		ret = -EROFS;
 out:
 	free(freep);
-	return errno;
+
+	if (ret)
+		errno = -ret;
+
+	return ret;
 }
 EXPORT_SYMBOL(rmdir);
 
@@ -1184,4 +1271,3 @@ ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, ulong offset
 	return size;
 }
 EXPORT_SYMBOL(mem_write);
-
diff --git a/lib/make_directory.c b/lib/make_directory.c
index 274bc14..c14c86d 100644
--- a/lib/make_directory.c
+++ b/lib/make_directory.c
@@ -12,6 +12,7 @@ int make_directory(const char *dir)
 	char *s = strdup(dir);
 	char *path = s;
 	char c;
+	int ret = 0;
 
 	do {
 		c = 0;
@@ -33,12 +34,10 @@ int make_directory(const char *dir)
 
 			/* If we failed for any other reason than the directory
 			 * already exists, output a diagnostic and return -1.*/
-#ifdef __BAREBOX__
-			if (errno != -EEXIST)
-#else
-			if (errno != EEXIST)
-#endif
+			if (errno != EEXIST) {
+				ret = -errno;
 				break;
+			}
 		}
 		if (!c)
 			goto out;
@@ -50,7 +49,9 @@ int make_directory(const char *dir)
 
 out:
 	free(path);
-	return errno;
+	if (ret)
+		errno = -ret;
+	return ret;
 }
 #ifdef __BAREBOX__
 EXPORT_SYMBOL(make_directory);
diff --git a/lib/parameter.c b/lib/parameter.c
index baf7720..1e2e10c 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -54,7 +54,7 @@ const char *dev_get_param(struct device_d *dev, const char *name)
 	struct param_d *param = get_param_by_name(dev, name);
 
 	if (!param) {
-		errno = -EINVAL;
+		errno = EINVAL;
 		return NULL;
 	}
 
@@ -87,26 +87,30 @@ int dev_set_param_ip(struct device_d *dev, char *name, IPaddr_t ip)
 int dev_set_param(struct device_d *dev, const char *name, const char *val)
 {
 	struct param_d *param;
+	int ret;
 
 	if (!dev) {
-		errno = -ENODEV;
+		errno = ENODEV;
 		return -ENODEV;
 	}
 
 	param = get_param_by_name(dev, name);
 
 	if (!param) {
-		errno = -EINVAL;
+		errno = EINVAL;
 		return -EINVAL;
 	}
 
 	if (param->flags & PARAM_FLAG_RO) {
-		errno = -EACCES;
+		errno = EACCES;
 		return -EACCES;
 	}
 
-	errno = param->set(dev, param, val);
-	return errno;
+	ret = param->set(dev, param, val);
+	if (ret)
+		errno = -ret;
+
+	return ret;
 }
 
 /**
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
