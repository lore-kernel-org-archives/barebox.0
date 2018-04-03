Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3Ggn-00021l-Qo
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:49:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Apr 2018 09:48:44 +0200
Message-Id: <20180403074851.5411-13-s.hauer@pengutronix.de>
In-Reply-To: <20180403074851.5411-1-s.hauer@pengutronix.de>
References: <20180403074851.5411-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/19] fs: dcache implementation
To: Barebox List <barebox@lists.infradead.org>

This adds the Linux dcache implementation to barebox.

Until now every filesystem driver resolves the full path to a file for
itself. This leads to code duplication and is error prone since
resolving paths is a complicated task. Also it can narrow down the
lookup performance since barebox only knows ASCII paths and has no way
of caching lookups.

With this patch we get the Linux dcache implementation. The path
resolving code from fs/namei.c is nearly taken as-is, minus the RCU
and locking code. Dcaching is made simple as of now: We simply cache
everything and never release any dentries. Although we do reference
counting for inodes and dentries it is effectively not used yet.
We never free anything until a fs is unmounted in which case we free
everything no matter if references are taken or not.

This patch fundamentally changes the way lookups are done in the
filesystem drivers and I found no sane way to maintain a backwards
compatible code path for not yet converted filesystem drivers. This
means *all* filesystems are marked as broken in this patch, they need
to be fixed one by one afterwards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/Kconfig             |   12 +
 fs/Makefile            |    2 +-
 fs/ext4/Kconfig        |    1 +
 fs/fat/Kconfig         |    1 +
 fs/fs.c                | 3584 ++++++++++++++++++++++++++++++++----------------
 fs/libfs.c             |   87 ++
 fs/pstore/Kconfig      |    1 +
 fs/squashfs/Kconfig    |    1 +
 fs/ubifs/Kconfig       |    1 +
 include/dirent.h       |    3 +
 include/fs.h           |   25 +-
 include/linux/dcache.h |  109 +-
 include/linux/fs.h     |  131 +-
 include/linux/mount.h  |    3 +
 include/linux/namei.h  |   52 +
 include/linux/stat.h   |    2 +
 16 files changed, 2746 insertions(+), 1269 deletions(-)
 create mode 100644 fs/libfs.c
 create mode 100644 include/linux/namei.h

diff --git a/fs/Kconfig b/fs/Kconfig
index 3512000556..c3a78eaae5 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -12,6 +12,7 @@ config FS_AUTOMOUNT
 config FS_CRAMFS
 	bool
 	select ZLIB
+	depends on BROKEN
 	prompt "cramfs support"
 
 source fs/ext4/Kconfig
@@ -19,15 +20,18 @@ source fs/ext4/Kconfig
 config FS_RAMFS
 	bool
 	default y
+	depends on BROKEN
 	prompt "ramfs support"
 
 config FS_DEVFS
 	bool
 	default y
+	depends on BROKEN
 	prompt "devfs support"
 
 config FS_TFTP
 	bool
+	depends on BROKEN
 	prompt "tftp support"
 	depends on NET
 
@@ -35,14 +39,17 @@ config FS_OMAP4_USBBOOT
 	bool
 	prompt "Filesystem over usb boot"
 	depends on OMAP4_USBBOOT
+	depends on BROKEN
 
 config FS_NFS
 	depends on NET
+	depends on BROKEN
 	bool
 	prompt "nfs support"
 
 config FS_EFI
 	depends on EFI_BOOTUP
+	depends on BROKEN
 	bool
 	prompt "EFI filesystem support"
 	help
@@ -51,6 +58,7 @@ config FS_EFI
 
 config FS_EFIVARFS
 	depends on EFI_BOOTUP
+	depends on BROKEN
 	bool
 	prompt "EFI variable filesystem support (efivarfs)"
 	help
@@ -62,6 +70,7 @@ source fs/ubifs/Kconfig
 config FS_BPKFS
 	bool
 	select CRC32
+	depends on BROKEN
 	prompt "BPKFS support"
 	help
 	  Simple update file format developed for Somfy, tools and library are
@@ -78,10 +87,12 @@ config FS_BPKFS
 config FS_UIMAGEFS
 	bool
 	select CRC32
+	depends on BROKEN
 	prompt "uImage FS support"
 
 config FS_SMHFS
 	depends on ARM_SEMIHOSTING
+	depends on BROKEN
 	bool
 	prompt "Semihosting FS support"
 	help
@@ -95,6 +106,7 @@ source fs/squashfs/Kconfig
 config FS_RATP
 	bool
 	depends on RATP
+	depends on BROKEN
 	prompt "RATP filesystem support"
 	help
 	  This enables support for transferring files over RATP. A host can
diff --git a/fs/Makefile b/fs/Makefile
index 8e3fd78e92..d3e46c2525 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -4,7 +4,7 @@ obj-$(CONFIG_FS_RAMFS)	+= ramfs.o
 obj-y			+= devfs-core.o
 obj-$(CONFIG_FS_DEVFS)	+= devfs.o
 obj-$(CONFIG_FS_FAT)	+= fat/
-obj-y	+= fs.o
+obj-y	+= fs.o libfs.o
 obj-$(CONFIG_FS_UBIFS)	+= ubifs/
 obj-$(CONFIG_FS_TFTP)	+= tftp.o
 obj-$(CONFIG_FS_OMAP4_USBBOOT)	+= omap4_usbbootfs.o
diff --git a/fs/ext4/Kconfig b/fs/ext4/Kconfig
index f36043d9a7..ad1bf58536 100644
--- a/fs/ext4/Kconfig
+++ b/fs/ext4/Kconfig
@@ -1,3 +1,4 @@
 config FS_EXT4
 	bool
+	depends on BROKEN
 	prompt "ext4 filesystem support"
diff --git a/fs/fat/Kconfig b/fs/fat/Kconfig
index 0699728494..6fc486a207 100644
--- a/fs/fat/Kconfig
+++ b/fs/fat/Kconfig
@@ -1,4 +1,5 @@
 menuconfig FS_FAT
+	depends on BROKEN
 	bool
 	prompt "FAT filesystem support"
 
diff --git a/fs/fs.c b/fs/fs.c
index b66cc9b178..aa4a69a3eb 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -36,6 +36,7 @@
 #include <block.h>
 #include <libfile.h>
 #include <parseopt.h>
+#include <linux/namei.h>
 
 char *mkmodestr(unsigned long mode, char *str)
 {
@@ -69,8 +70,12 @@ char *mkmodestr(unsigned long mode, char *str)
 EXPORT_SYMBOL(mkmodestr);
 
 static char *cwd;
+static struct dentry *cwd_dentry;
+static struct vfsmount *cwd_mnt;
 
 static FILE *files;
+static struct dentry *d_root;
+static struct vfsmount *mnt_root;
 
 static int init_fs(void)
 {
@@ -84,226 +89,40 @@ static int init_fs(void)
 
 postcore_initcall(init_fs);
 
-char *normalise_path(const char *pathname)
-{
-	char *path = xzalloc(strlen(pathname) + strlen(cwd) + 2);
-        char *in, *out, *slashes[32];
-	int sl = 0;
-
-	debug("in: %s\n", pathname);
-
-	if (*pathname != '/')
-		strcpy(path, cwd);
-	strcat(path, "/");
-	strcat(path, pathname);
-
-	slashes[0] = in = out = path;
-
-	while (*in) {
-		if(*in == '/') {
-			slashes[sl++] = out;
-			*out++ = *in++;
-			while(*in == '/')
-				in++;
-		} else {
-			if (*in == '.' && (*(in + 1) == '/' || !*(in + 1))) {
-				sl--;
-				if (sl < 0)
-					sl = 0;
-				out = slashes[sl];
-				in++;
-				continue;
-			}
-			if (*in == '.' && *(in + 1) == '.') {
-				sl -= 2;
-				if (sl < 0)
-					sl = 0;
-				out = slashes[sl];
-				in += 2;
-				continue;
-			}
-                        *out++ = *in++;
-		}
-	}
-
-	*out-- = 0;
-
-	/*
-	 * Remove trailing slash
-	 */
-	if (*out == '/')
-		*out = 0;
-
-	if (!*path) {
-		*path = '/';
-		*(path + 1) = 0;
-	}
-
-	return path;
-}
-EXPORT_SYMBOL(normalise_path);
-
-static int __lstat(const char *filename, struct stat *s);
 static struct fs_device_d *get_fsdevice_by_path(const char *path);
 
-static char *__canonicalize_path(const char *_pathname, int level)
-{
-	char *path, *freep;
-	char *outpath;
-	int ret;
-	struct stat s;
-
-	if (level > 10)
-		return ERR_PTR(-ELOOP);
-
-	path = freep = xstrdup(_pathname);
-
-	if (*path == '/' || !strcmp(cwd, "/"))
-		outpath = xstrdup("");
-	else
-		outpath = __canonicalize_path(cwd, level + 1);
-
-	while (1) {
-		char *p = strsep(&path, "/");
-		char *tmp;
-		char link[PATH_MAX] = {};
-		struct fs_device_d *fsdev;
-
-		if (!p)
-			break;
-		if (p[0] == '\0')
-			continue;
-		if (!strcmp(p, "."))
-			continue;
-		if (!strcmp(p, "..")) {
-			tmp = xstrdup(dirname(outpath));
-			free(outpath);
-			outpath = tmp;
-			continue;
-		}
-
-		tmp = basprintf("%s/%s", outpath, p);
-		free(outpath);
-		outpath = tmp;
-
-		/*
-		 * Don't bother filesystems without link support
-		 * with an additional stat() call.
-		 */
-		fsdev = get_fsdevice_by_path(outpath);
-		if (!fsdev || !fsdev->driver->readlink)
-			continue;
-
-		ret = __lstat(outpath, &s);
-		if (ret)
-			goto out;
-
-		if (!S_ISLNK(s.st_mode))
-			continue;
-
-		ret = readlink(outpath, link, PATH_MAX - 1);
-		if (ret < 0)
-			goto out;
-
-		if (link[0] == '/') {
-			free(outpath);
-			outpath = __canonicalize_path(link, level + 1);
-		} else {
-			tmp = basprintf("%s/%s", dirname(outpath), link);
-			free(outpath);
-			outpath = __canonicalize_path(tmp, level + 1);
-			free(tmp);
-		}
-
-		if (IS_ERR(outpath))
-			goto out;
-	}
-out:
-	free(freep);
-
-	if (!*outpath) {
-		free(outpath);
-		outpath = xstrdup("/");
-	}
-
-	return outpath;
-}
+LIST_HEAD(fs_device_list);
 
-/*
- * canonicalize_path - resolve links in path
- * @pathname: The input path
- *
- * This function resolves all links in @pathname and returns
- * a path without links in it.
- *
- * Return: Path with links resolved. Allocated, must be freed after use.
- */
-char *canonicalize_path(const char *pathname)
+struct vfsmount *mntget(struct vfsmount *mnt)
 {
-	char *r, *p = __canonicalize_path(pathname, 0);
-
-	if (IS_ERR(p))
-		return ERR_CAST(p);
+	if (!mnt)
+		return NULL;
 
-	r = normalise_path(p);
-	free(p);
+	mnt->ref++;
 
-	return r;
+	return mnt;
 }
 
-/*
- * canonicalize_dir - resolve links in path
- * @pathname: The input path
- *
- * This function resolves all links except the last one. Needed to give
- * access to the link itself.
- *
- * Return: Path with links resolved. Allocated, must be freed after use.
- */
-static char *canonicalize_dir(const char *pathname)
+void mntput(struct vfsmount *mnt)
 {
-	char *f, *d, *r, *ret, *p;
-	char *freep1, *freep2;
-
-	freep1 = xstrdup(pathname);
-	freep2 = xstrdup(pathname);
-	f = basename(freep1);
-	d = dirname(freep2);
-
-	p = __canonicalize_path(d, 0);
-	if (IS_ERR(p)) {
-		ret = ERR_CAST(p);
-		goto out;
-	}
-
-	r = basprintf("%s/%s", p, f);
-
-	ret = normalise_path(r);
-
-	free(r);
-	free(p);
-out:
-	free(freep1);
-	free(freep2);
+	if (!mnt)
+		return;
 
-	return ret;
+	mnt->ref--;
 }
 
-LIST_HEAD(fs_device_list);
-static struct fs_device_d *fs_dev_root;
-
-static struct fs_device_d *get_fsdevice_by_path(const char *path)
+struct vfsmount *lookup_mnt(struct path *path)
 {
-	struct fs_device_d *fsdev = NULL;
+	struct fs_device_d *fsdev;
 
 	for_each_fs_device(fsdev) {
-		int len = strlen(fsdev->path);
-		if (!strncmp(path, fsdev->path, len) &&
-				(path[len] == '/' || path[len] == 0))
-			return fsdev;
+		if (path->dentry == fsdev->vfsmount.mountpoint) {
+			mntget(&fsdev->vfsmount);
+			return &fsdev->vfsmount;
+		}
 	}
 
-	return fs_dev_root;
+	return NULL;
 }
 
 /*
@@ -348,6 +167,8 @@ static void put_file(FILE *f)
 	free(f->path);
 	f->path = NULL;
 	f->in_use = 0;
+	iput(f->f_inode);
+	dput(f->dentry);
 }
 
 static int check_fd(int fd)
@@ -360,388 +181,284 @@ static int check_fd(int fd)
 	return 0;
 }
 
-#ifdef CONFIG_FS_AUTOMOUNT
-
-#define AUTOMOUNT_IS_FILE (1 << 0)
+int create(struct dentry *dir, struct dentry *dentry)
+{
+	struct inode *inode;
 
-struct automount {
-	char *path;
-	char *cmd;
-	struct list_head list;
-	unsigned int flags;
-};
+	if (d_is_negative(dir))
+		return -ENOENT;
 
-static LIST_HEAD(automount_list);
+	inode = d_inode(dir);
 
-void automount_remove(const char *_path)
-{
-	char *path = normalise_path(_path);
-	struct automount *am;
+	if (!inode->i_op->create)
+		return -EROFS;
 
-	list_for_each_entry(am, &automount_list, list) {
-		if (!strcmp(path, am->path))
-			goto found;
-	}
+	return inode->i_op->create(inode, dentry, S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO);
+}
 
-	return;
-found:
-	list_del(&am->list);
-	free(am->path);
-	free(am->cmd);
-	free(am);
+int creat(const char *pathname, mode_t mode)
+{
+	return open(pathname, O_CREAT | O_WRONLY | O_TRUNC);
 }
-EXPORT_SYMBOL(automount_remove);
+EXPORT_SYMBOL(creat);
 
-int automount_add(const char *path, const char *cmd)
+int ftruncate(int fd, loff_t length)
 {
-	struct automount *am = xzalloc(sizeof(*am));
-	struct stat s;
+	struct fs_driver_d *fsdrv;
+	FILE *f;
 	int ret;
 
-	am->path = normalise_path(path);
-	am->cmd = xstrdup(cmd);
+	if (check_fd(fd))
+		return -errno;
 
-	automount_remove(am->path);
+	f = &files[fd];
 
-	ret = stat(path, &s);
-	if (!ret) {
-		/*
-		 * If it exists it must be a directory
-		 */
-		if (!S_ISDIR(s.st_mode))
-			return -ENOTDIR;
-	} else {
-		am->flags |= AUTOMOUNT_IS_FILE;
-	}
+	fsdrv = f->fsdev->driver;
 
-	list_add_tail(&am->list, &automount_list);
+	ret = fsdrv->truncate(&f->fsdev->dev, f, length);
+	if (ret)
+		return ret;
+
+	f->size = length;
 
 	return 0;
 }
-EXPORT_SYMBOL(automount_add);
 
-void cdev_create_default_automount(struct cdev *cdev)
+int ioctl(int fd, int request, void *buf)
 {
-	char *path, *cmd;
-
-	path = basprintf("/mnt/%s", cdev->name);
-	cmd = basprintf("mount %s", cdev->name);
+	struct fs_driver_d *fsdrv;
+	FILE *f;
+	int ret;
 
-	make_directory(path);
-	automount_add(path, cmd);
+	if (check_fd(fd))
+		return -errno;
 
-	free(cmd);
-	free(path);
-}
+	f = &files[fd];
 
-void automount_print(void)
-{
-	struct automount *am;
+	fsdrv = f->fsdev->driver;
 
-	list_for_each_entry(am, &automount_list, list)
-		printf("%-20s %s\n", am->path, am->cmd);
+	if (fsdrv->ioctl)
+		ret = fsdrv->ioctl(&f->fsdev->dev, f, request, buf);
+	else
+		ret = -ENOSYS;
+	if (ret)
+		errno = -ret;
+	return ret;
 }
-EXPORT_SYMBOL(automount_print);
 
-static void automount_mount(const char *path, int instat)
+static ssize_t __read(FILE *f, void *buf, size_t count)
 {
-	struct automount *am;
+	struct fs_driver_d *fsdrv;
 	int ret;
-	static int in_automount;
-
-	if (in_automount)
-		return;
-
-	in_automount++;
 
-	if (fs_dev_root != get_fsdevice_by_path(path))
+	if ((f->flags & O_ACCMODE) == O_WRONLY) {
+		ret = -EBADF;
 		goto out;
+	}
 
-	list_for_each_entry(am, &automount_list, list) {
-		int len_path = strlen(path);
-		int len_am_path = strlen(am->path);
-
-		/*
-		 * stat is a bit special. We do not want to trigger
-		 * automount when someone calls stat() on the automount
-		 * directory itself.
-		 */
-		if (instat && !(am->flags & AUTOMOUNT_IS_FILE) &&
-				len_path == len_am_path) {
-			continue;
-		}
+	fsdrv = f->fsdev->driver;
 
-		if (len_path < len_am_path)
-			continue;
+	if (f->size != FILE_SIZE_STREAM && f->pos + count > f->size)
+		count = f->size - f->pos;
 
-		if (strncmp(path, am->path, len_am_path))
-			continue;
+	if (!count)
+		return 0;
 
-		if (*(path + len_am_path) != 0 && *(path + len_am_path) != '/')
-			continue;
+	ret = fsdrv->read(&f->fsdev->dev, f, buf, count);
+out:
+	if (ret < 0)
+		errno = -ret;
+	return ret;
+}
 
-		setenv("automount_path", am->path);
-		export("automount_path");
-		ret = run_command(am->cmd);
-		setenv("automount_path", NULL);
+ssize_t pread(int fd, void *buf, size_t count, loff_t offset)
+{
+	loff_t pos;
+	FILE *f;
+	int ret;
 
-		if (ret)
-			printf("running automount command '%s' failed\n",
-					am->cmd);
+	if (check_fd(fd))
+		return -errno;
 
-		break;
-	}
-out:
-	in_automount--;
-}
+	f = &files[fd];
 
-BAREBOX_MAGICVAR(automount_path, "mountpath passed to automount scripts");
+	pos = f->pos;
+	f->pos = offset;
+	ret = __read(f, buf, count);
+	f->pos = pos;
 
-#else
-static void automount_mount(const char *path, int instat)
-{
+	return ret;
 }
-#endif /* CONFIG_FS_AUTOMOUNT */
+EXPORT_SYMBOL(pread);
 
-static struct fs_device_d *get_fs_device_and_root_path(char **path)
+ssize_t read(int fd, void *buf, size_t count)
 {
-	struct fs_device_d *fsdev;
+	FILE *f;
+	int ret;
 
-	automount_mount(*path, 0);
+	if (check_fd(fd))
+		return -errno;
 
-	fsdev = get_fsdevice_by_path(*path);
-	if (!fsdev)
-		return NULL;
-	if (fsdev != fs_dev_root)
-		*path += strlen(fsdev->path);
+	f = &files[fd];
 
-	return fsdev;
+	ret = __read(f, buf, count);
+
+	if (ret > 0)
+		f->pos += ret;
+	return ret;
 }
+EXPORT_SYMBOL(read);
 
-static int dir_is_empty(const char *pathname)
+static ssize_t __write(FILE *f, const void *buf, size_t count)
 {
-	DIR *dir;
-	struct dirent *d;
-	int ret = 1;
+	struct fs_driver_d *fsdrv;
+	int ret;
 
-	dir = opendir(pathname);
-	if (!dir) {
-		errno = ENOENT;
-		return -ENOENT;
+	if (!(f->flags & O_ACCMODE)) {
+		ret = -EBADF;
+		goto out;
 	}
 
-	while ((d = readdir(dir))) {
-		if (!strcmp(d->d_name, ".") || !strcmp(d->d_name, ".."))
-				continue;
-		ret = 0;
-		break;
+	fsdrv = f->fsdev->driver;
+	if (f->size != FILE_SIZE_STREAM && f->pos + count > f->size) {
+		ret = fsdrv->truncate(&f->fsdev->dev, f, f->pos + count);
+		if (ret) {
+			if (ret != -ENOSPC)
+				goto out;
+			count = f->size - f->pos;
+			if (!count)
+				goto out;
+		} else {
+			f->size = f->pos + count;
+			f->f_inode->i_size = f->size;
+		}
 	}
-
-	closedir(dir);
+	ret = fsdrv->write(&f->fsdev->dev, f, buf, count);
+out:
+	if (ret < 0)
+		errno = -ret;
 	return ret;
 }
 
-static int parent_check_directory(const char *path)
+ssize_t pwrite(int fd, const void *buf, size_t count, loff_t offset)
 {
-	struct stat s;
+	loff_t pos;
+	FILE *f;
 	int ret;
-	char *dir = dirname(xstrdup(path));
 
-	ret = lstat(dir, &s);
-
-	free(dir);
-
-	if (ret)
-		return -ENOENT;
+	if (check_fd(fd))
+		return -errno;
 
-	if (!S_ISDIR(s.st_mode))
-		return -ENOTDIR;
+	f = &files[fd];
 
-	return 0;
-}
+	pos = f->pos;
+	f->pos = offset;
+	ret = __write(f, buf, count);
+	f->pos = pos;
 
-const char *getcwd(void)
-{
-	return cwd;
+	return ret;
 }
-EXPORT_SYMBOL(getcwd);
+EXPORT_SYMBOL(pwrite);
 
-int chdir(const char *pathname)
+ssize_t write(int fd, const void *buf, size_t count)
 {
-	char *p = normalise_path(pathname);
+	FILE *f;
 	int ret;
-	struct stat s;
-
-	ret = stat(p, &s);
-	if (ret)
-		goto out;
-
-	if (!S_ISDIR(s.st_mode)) {
-		ret = -ENOTDIR;
-		goto out;
-	}
-
-	automount_mount(p, 0);
 
-	strcpy(cwd, p);
+	if (check_fd(fd))
+		return -errno;
 
-out:
-	free(p);
+	f = &files[fd];
 
-	if (ret)
-		errno = -ret;
+	ret = __write(f, buf, count);
 
+	if (ret > 0)
+		f->pos += ret;
 	return ret;
 }
-EXPORT_SYMBOL(chdir);
+EXPORT_SYMBOL(write);
 
-int unlink(const char *pathname)
+int flush(int fd)
 {
-	struct fs_device_d *fsdev;
 	struct fs_driver_d *fsdrv;
-	char *p = canonicalize_dir(pathname);
-	char *freep = p;
+	FILE *f;
 	int ret;
-	struct stat s;
-
-	ret = lstat(p, &s);
-	if (ret)
-		goto out;
 
-	if (S_ISDIR(s.st_mode)) {
-		ret = -EISDIR;
-		goto out;
-	}
+	if (check_fd(fd))
+		return -errno;
 
-	fsdev = get_fs_device_and_root_path(&p);
-	if (!fsdev) {
-		ret = -ENOENT;
-		goto out;
-	}
-	fsdrv = fsdev->driver;
+	f = &files[fd];
 
-	if (!fsdrv->unlink) {
-		ret = -ENOSYS;
-		goto out;
-	}
+	fsdrv = f->fsdev->driver;
+	if (fsdrv->flush)
+		ret = fsdrv->flush(&f->fsdev->dev, f);
+	else
+		ret = 0;
 
-	ret = fsdrv->unlink(&fsdev->dev, p);
-	if (ret)
-		errno = -ret;
-out:
-	free(freep);
 	if (ret)
 		errno = -ret;
+
 	return ret;
 }
-EXPORT_SYMBOL(unlink);
 
-int open(const char *pathname, int flags, ...)
+loff_t lseek(int fildes, loff_t offset, int whence)
 {
-	struct fs_device_d *fsdev;
 	struct fs_driver_d *fsdrv;
 	FILE *f;
-	int exist_err = 0;
-	struct stat s;
-	char *path;
-	char *freep;
+	loff_t pos;
 	int ret;
 
-	path = canonicalize_path(pathname);
-	if (IS_ERR(path)) {
-		ret = PTR_ERR(path);
-		goto out2;
-	}
-
-	exist_err = stat(path, &s);
-
-	freep = path;
-
-	if (!exist_err && S_ISDIR(s.st_mode)) {
-		ret = -EISDIR;
-		goto out1;
-	}
-
-	if (exist_err && !(flags & O_CREAT)) {
-		ret = exist_err;
-		goto out1;
-	}
-
-	if (exist_err) {
-		ret = parent_check_directory(path);
-		if (ret)
-			goto out1;
-	}
-
-	f = get_file();
-	if (!f) {
-		ret = -EMFILE;
-		goto out1;
-	}
+	if (check_fd(fildes))
+		return -1;
 
-	fsdev = get_fs_device_and_root_path(&path);
-	if (!fsdev) {
-		ret = -ENOENT;
+	f = &files[fildes];
+	fsdrv = f->fsdev->driver;
+	if (!fsdrv->lseek) {
+		ret = -ENOSYS;
 		goto out;
 	}
 
-	fsdrv = fsdev->driver;
-
-	f->fsdev = fsdev;
-	f->flags = flags;
-
-	if ((flags & O_ACCMODE) && !fsdrv->write) {
-		ret = -EROFS;
-		goto out;
-	}
+	ret = -EINVAL;
 
-	if (exist_err) {
-		if (NULL != fsdrv->create)
-			ret = fsdrv->create(&fsdev->dev, path,
-					S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO);
-		else
-			ret = -EROFS;
-		if (ret)
+	switch (whence) {
+	case SEEK_SET:
+		if (f->size != FILE_SIZE_STREAM && offset > f->size)
 			goto out;
-	}
-
-	f->path = xstrdup(path);
-
-	ret = fsdrv->open(&fsdev->dev, f, path);
-	if (ret)
-		goto out;
-
-	if (flags & O_TRUNC) {
-		ret = fsdrv->truncate(&fsdev->dev, f, 0);
-		f->size = 0;
-		if (ret)
+		if (offset < 0)
+			goto out;
+		pos = offset;
+		break;
+	case SEEK_CUR:
+		if (f->size != FILE_SIZE_STREAM && offset + f->pos > f->size)
+			goto out;
+		pos = f->pos + offset;
+		break;
+	case SEEK_END:
+		if (offset > 0)
 			goto out;
+		pos = f->size + offset;
+		break;
+	default:
+		goto out;
 	}
 
-	if (flags & O_APPEND)
-		f->pos = f->size;
+	pos = fsdrv->lseek(&f->fsdev->dev, f, pos);
+	if (pos < 0) {
+		errno = -pos;
+		return -1;
+	}
 
-	free(freep);
-	return f->no;
+	return pos;
 
 out:
-	put_file(f);
-out1:
-	free(freep);
-out2:
 	if (ret)
 		errno = -ret;
-	return ret;
-}
-EXPORT_SYMBOL(open);
 
-int creat(const char *pathname, mode_t mode)
-{
-	return open(pathname, O_CREAT | O_WRONLY | O_TRUNC);
+	return -1;
 }
-EXPORT_SYMBOL(creat);
+EXPORT_SYMBOL(lseek);
 
-int ftruncate(int fd, loff_t length)
+int erase(int fd, loff_t count, loff_t offset)
 {
 	struct fs_driver_d *fsdrv;
 	FILE *f;
@@ -749,21 +466,28 @@ int ftruncate(int fd, loff_t length)
 
 	if (check_fd(fd))
 		return -errno;
-
 	f = &files[fd];
+	if (offset >= f->size)
+		return 0;
+	if (count == ERASE_SIZE_ALL || count > f->size - offset)
+		count = f->size - offset;
+	if (count < 0)
+		return -EINVAL;
 
 	fsdrv = f->fsdev->driver;
+	if (fsdrv->erase)
+		ret = fsdrv->erase(&f->fsdev->dev, f, count, offset);
+	else
+		ret = -ENOSYS;
 
-	ret = fsdrv->truncate(&f->fsdev->dev, f, length);
 	if (ret)
-		return ret;
-
-	f->size = length;
+		errno = -ret;
 
-	return 0;
+	return ret;
 }
+EXPORT_SYMBOL(erase);
 
-int ioctl(int fd, int request, void *buf)
+int protect(int fd, size_t count, loff_t offset, int prot)
 {
 	struct fs_driver_d *fsdrv;
 	FILE *f;
@@ -771,387 +495,1981 @@ int ioctl(int fd, int request, void *buf)
 
 	if (check_fd(fd))
 		return -errno;
-
 	f = &files[fd];
+	if (offset >= f->size)
+		return 0;
+	if (count > f->size - offset)
+		count = f->size - offset;
 
 	fsdrv = f->fsdev->driver;
-
-	if (fsdrv->ioctl)
-		ret = fsdrv->ioctl(&f->fsdev->dev, f, request, buf);
+	if (fsdrv->protect)
+		ret = fsdrv->protect(&f->fsdev->dev, f, count, offset, prot);
 	else
 		ret = -ENOSYS;
+
 	if (ret)
 		errno = -ret;
+
 	return ret;
 }
+EXPORT_SYMBOL(protect);
 
-static ssize_t __read(FILE *f, void *buf, size_t count)
+int protect_file(const char *file, int prot)
 {
-	struct fs_driver_d *fsdrv;
-	int ret;
-
-	if ((f->flags & O_ACCMODE) == O_WRONLY) {
-		ret = -EBADF;
-		goto out;
-	}
+	int fd, ret;
 
-	fsdrv = f->fsdev->driver;
+	fd = open(file, O_WRONLY);
+	if (fd < 0)
+		return fd;
 
-	if (f->size != FILE_SIZE_STREAM && f->pos + count > f->size)
-		count = f->size - f->pos;
+	ret = protect(fd, ~0, 0, prot);
 
-	if (!count)
-		return 0;
+	close(fd);
 
-	ret = fsdrv->read(&f->fsdev->dev, f, buf, count);
-out:
-	if (ret < 0)
-		errno = -ret;
 	return ret;
 }
 
-ssize_t pread(int fd, void *buf, size_t count, loff_t offset)
+void *memmap(int fd, int flags)
 {
-	loff_t pos;
+	struct fs_driver_d *fsdrv;
 	FILE *f;
+	void *retp = (void *)-1;
 	int ret;
 
 	if (check_fd(fd))
-		return -errno;
+		return retp;
 
 	f = &files[fd];
 
-	pos = f->pos;
-	f->pos = offset;
-	ret = __read(f, buf, count);
-	f->pos = pos;
+	fsdrv = f->fsdev->driver;
 
-	return ret;
+	if (fsdrv->memmap)
+		ret = fsdrv->memmap(&f->fsdev->dev, f, &retp, flags);
+	else
+		ret = -EINVAL;
+
+	if (ret)
+		errno = -ret;
+
+	return retp;
 }
-EXPORT_SYMBOL(pread);
+EXPORT_SYMBOL(memmap);
 
-ssize_t read(int fd, void *buf, size_t count)
+int close(int fd)
 {
+	struct fs_driver_d *fsdrv;
 	FILE *f;
-	int ret;
+	int ret = 0;
 
 	if (check_fd(fd))
 		return -errno;
 
 	f = &files[fd];
 
-	ret = __read(f, buf, count);
+	fsdrv = f->fsdev->driver;
+
+	if (fsdrv->close)
+		ret = fsdrv->close(&f->fsdev->dev, f);
+
+	put_file(f);
+
+	if (ret)
+		errno = -ret;
 
-	if (ret > 0)
-		f->pos += ret;
 	return ret;
 }
-EXPORT_SYMBOL(read);
+EXPORT_SYMBOL(close);
 
-static ssize_t __write(FILE *f, const void *buf, size_t count)
+static int fs_match(struct device_d *dev, struct driver_d *drv)
 {
-	struct fs_driver_d *fsdrv;
+	return strcmp(dev->name, drv->name) ? -1 : 0;
+}
+
+static int fs_probe(struct device_d *dev)
+{
+	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct driver_d *drv = dev->driver;
+	struct fs_driver_d *fsdrv = container_of(drv, struct fs_driver_d, drv);
 	int ret;
 
-	if (!(f->flags & O_ACCMODE)) {
-		ret = -EBADF;
-		goto out;
+	ret = dev->driver->probe(dev);
+	if (ret)
+		return ret;
+
+	fsdev->driver = fsdrv;
+
+	list_add_tail(&fsdev->list, &fs_device_list);
+
+	return 0;
+}
+
+void dentry_kill(struct dentry *dentry)
+{
+	if (dentry->d_inode)
+		iput(dentry->d_inode);
+
+	if (!IS_ROOT(dentry))
+		dput(dentry->d_parent);
+
+	list_del(&dentry->d_child);
+	free(dentry->name);
+	free(dentry);
+}
+
+int dentry_delete_subtree(struct super_block *sb, struct dentry *parent)
+{
+	struct dentry *dentry, *tmp;
+
+	if (!parent)
+		return 0;
+
+	list_for_each_entry_safe(dentry, tmp, &parent->d_subdirs, d_child)
+		dentry_delete_subtree(sb, dentry);
+
+	dentry_kill(parent);
+
+	return 0;
+}
+
+static void destroy_inode(struct inode *inode)
+{
+	if (inode->i_sb->s_op->destroy_inode)
+		inode->i_sb->s_op->destroy_inode(inode);
+	else
+		free(inode);
+}
+
+static void fs_remove(struct device_d *dev)
+{
+	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct super_block *sb = &fsdev->sb;
+	struct inode *inode, *tmp;
+
+	if (fsdev->dev.driver) {
+		dev->driver->remove(dev);
+		list_del(&fsdev->list);
 	}
 
-	fsdrv = f->fsdev->driver;
-	if (f->size != FILE_SIZE_STREAM && f->pos + count > f->size) {
-		ret = fsdrv->truncate(&f->fsdev->dev, f, f->pos + count);
-		if (ret) {
-			if (ret != -ENOSPC)
-				goto out;
-			count = f->size - f->pos;
-			if (!count)
-				goto out;
-		} else {
-			f->size = f->pos + count;
+	free(fsdev->path);
+	free(fsdev->options);
+
+	if (fsdev->cdev)
+		cdev_close(fsdev->cdev);
+
+	if (fsdev->loop)
+		cdev_remove_loop(fsdev->cdev);
+
+	dput(sb->s_root);
+	dentry_delete_subtree(sb, sb->s_root);
+
+	list_for_each_entry_safe(inode, tmp, &sb->s_inodes, i_sb_list)
+		destroy_inode(inode);
+
+	if (fsdev->vfsmount.mountpoint)
+		fsdev->vfsmount.mountpoint->d_flags &= ~DCACHE_MOUNTED;
+
+	mntput(fsdev->vfsmount.parent);
+
+	free(fsdev->backingstore);
+	free(fsdev);
+}
+
+struct bus_type fs_bus = {
+	.name = "fs",
+	.match = fs_match,
+	.probe = fs_probe,
+	.remove = fs_remove,
+};
+
+static int fs_bus_init(void)
+{
+	return bus_register(&fs_bus);
+}
+pure_initcall(fs_bus_init);
+
+int register_fs_driver(struct fs_driver_d *fsdrv)
+{
+	fsdrv->drv.bus = &fs_bus;
+	register_driver(&fsdrv->drv);
+
+	return 0;
+}
+EXPORT_SYMBOL(register_fs_driver);
+
+static const char *detect_fs(const char *filename, const char *fsoptions)
+{
+	enum filetype type;
+	struct driver_d *drv;
+	struct fs_driver_d *fdrv;
+	bool loop = false;
+	unsigned long long offset = 0;
+
+	parseopt_b(fsoptions, "loop", &loop);
+	parseopt_llu_suffix(fsoptions, "offset", &offset);
+	if (loop)
+		type = file_name_detect_type_offset(filename, offset);
+	else
+		type = cdev_detect_type(filename);
+
+	if (type == filetype_unknown)
+		return NULL;
+
+	bus_for_each_driver(&fs_bus, drv) {
+		fdrv = drv_to_fs_driver(drv);
+
+		if (type == fdrv->type)
+			return drv->name;
+	}
+
+	return NULL;
+}
+
+int fsdev_open_cdev(struct fs_device_d *fsdev)
+{
+	unsigned long long offset = 0;
+
+	parseopt_b(fsdev->options, "loop", &fsdev->loop);
+	parseopt_llu_suffix(fsdev->options, "offset", &offset);
+	if (fsdev->loop)
+		fsdev->cdev = cdev_create_loop(fsdev->backingstore, O_RDWR,
+					       offset);
+	else
+		fsdev->cdev = cdev_open(fsdev->backingstore, O_RDWR);
+	if (!fsdev->cdev)
+		return -EINVAL;
+
+	fsdev->dev.parent = fsdev->cdev->dev;
+	fsdev->parent_device = fsdev->cdev->dev;
+
+	return 0;
+}
+
+static void init_super(struct super_block *sb)
+{
+	INIT_LIST_HEAD(&sb->s_inodes);
+}
+
+static int fsdev_umount(struct fs_device_d *fsdev)
+{
+	if (fsdev->vfsmount.ref)
+		return -EBUSY;
+
+	return unregister_device(&fsdev->dev);
+}
+
+/**
+ * umount_by_cdev Use a cdev struct to umount all mounted filesystems
+ * @param cdev cdev to the according device
+ * @return 0 on success or if cdev was not mounted, -errno otherwise
+ */
+int umount_by_cdev(struct cdev *cdev)
+{
+	struct fs_device_d *fs;
+	struct fs_device_d *fs_tmp;
+	int first_error = 0;
+
+	for_each_fs_device_safe(fs_tmp, fs) {
+		int ret;
+
+		if (fs->cdev == cdev) {
+			ret = fsdev_umount(fs);
+			if (ret) {
+				pr_err("Failed umounting %s, %d, continuing anyway\n",
+				       fs->path, ret);
+				if (!first_error)
+					first_error = ret;
+			}
 		}
 	}
-	ret = fsdrv->write(&f->fsdev->dev, f, buf, count);
-out:
-	if (ret < 0)
-		errno = -ret;
-	return ret;
+
+	return first_error;
 }
+EXPORT_SYMBOL(umount_by_cdev);
 
-ssize_t pwrite(int fd, const void *buf, size_t count, loff_t offset)
+struct readdir_entry {
+	struct dirent d;
+	struct list_head list;
+};
+
+struct readdir_callback {
+	struct dir_context ctx;
+	DIR *dir;
+};
+
+static int fillonedir(struct dir_context *ctx, const char *name, int namlen,
+		      loff_t offset, u64 ino, unsigned int d_type)
 {
-	loff_t pos;
-	FILE *f;
-	int ret;
+	struct readdir_callback *rd = container_of(ctx, struct readdir_callback, ctx);
+	struct readdir_entry *entry;
 
-	if (check_fd(fd))
-		return -errno;
+	entry = xzalloc(sizeof(*entry));
+	if (!entry)
+		return -ENOMEM;
 
-	f = &files[fd];
+	memcpy(entry->d.d_name, name, namlen);
+	list_add_tail(&entry->list, &rd->dir->entries);
 
-	pos = f->pos;
-	f->pos = offset;
-	ret = __write(f, buf, count);
-	f->pos = pos;
+	return 0;
+}
 
-	return ret;
+struct dirent *readdir(DIR *dir)
+{
+	struct readdir_entry *entry;
+
+	if (!dir)
+		return NULL;
+
+	if (list_empty(&dir->entries))
+		return NULL;
+
+	entry = list_first_entry(&dir->entries, struct readdir_entry, list);
+
+	list_del(&entry->list);
+	strcpy(dir->d.d_name, entry->d.d_name);
+	free(entry);
+
+	return &dir->d;
 }
-EXPORT_SYMBOL(pwrite);
+EXPORT_SYMBOL(readdir);
 
-ssize_t write(int fd, const void *buf, size_t count)
+int fstat(int fd, struct stat *s)
 {
 	FILE *f;
-	int ret;
+	struct fs_device_d *fsdev;
 
 	if (check_fd(fd))
 		return -errno;
 
 	f = &files[fd];
 
-	ret = __write(f, buf, count);
+	fsdev = f->fsdev;
+
+	return -ENOENT;
+//	return fsdev->driver->stat(&fsdev->dev, f->path, s);
+}
+EXPORT_SYMBOL(fstat);
+
+/*
+ * cdev_get_mount_path - return the path a cdev is mounted on
+ *
+ * If a cdev is mounted return the path it's mounted on, NULL
+ * otherwise.
+ */
+const char *cdev_get_mount_path(struct cdev *cdev)
+{
+	struct fs_device_d *fsdev;
+
+	for_each_fs_device(fsdev) {
+		if (fsdev->cdev && fsdev->cdev == cdev)
+			return fsdev->path;
+	}
+
+	return NULL;
+}
+
+/*
+ * cdev_mount_default - mount a cdev to the default path
+ *
+ * If a cdev is already mounted return the path it's mounted on, otherwise
+ * mount it to /mnt/<cdevname> and return the path. Returns an error pointer
+ * on failure.
+ */
+const char *cdev_mount_default(struct cdev *cdev, const char *fsoptions)
+{
+	const char *path;
+	char *newpath, *devpath;
+	int ret;
+
+	/*
+	 * If this cdev is already mounted somewhere use this path
+	 * instead of mounting it again to avoid corruption on the
+	 * filesystem. Note this ignores eventual fsoptions though.
+	 */
+	path = cdev_get_mount_path(cdev);
+	if (path)
+		return path;
+
+	newpath = basprintf("/mnt/%s", cdev->name);
+	make_directory(newpath);
+
+	devpath = basprintf("/dev/%s", cdev->name);
+
+	ret = mount(devpath, NULL, newpath, fsoptions);
+
+	free(devpath);
+
+	if (ret) {
+		free(newpath);
+		return ERR_PTR(ret);
+	}
+
+	return cdev_get_mount_path(cdev);
+}
+
+/*
+ * mount_all - iterate over block devices and mount all devices we are able to
+ */
+void mount_all(void)
+{
+	struct device_d *dev;
+	struct block_device *bdev;
+
+	if (!IS_ENABLED(CONFIG_BLOCK))
+		return;
+
+	for_each_device(dev)
+		device_detect(dev);
+
+	for_each_block_device(bdev) {
+		struct cdev *cdev = &bdev->cdev;
+
+		list_for_each_entry(cdev, &bdev->dev->cdevs, devices_list)
+			cdev_mount_default(cdev, NULL);
+	}
+}
+
+void fsdev_set_linux_rootarg(struct fs_device_d *fsdev, const char *str)
+{
+	fsdev->linux_rootarg = xstrdup(str);
+
+	dev_add_param_fixed(&fsdev->dev, "linux.bootargs", fsdev->linux_rootarg);
+}
+
+/**
+ * path_get_linux_rootarg() - Given a path return a suitable root= option for
+ *                            Linux
+ * @path: The path
+ *
+ * Return: A string containing the root= option or an ERR_PTR. the returned
+ *         string must be freed by the caller.
+ */
+char *path_get_linux_rootarg(const char *path)
+{
+	struct fs_device_d *fsdev;
+	const char *str;
+
+	fsdev = get_fsdevice_by_path(path);
+	if (!fsdev)
+		return ERR_PTR(-EINVAL);
+
+	str = dev_get_param(&fsdev->dev, "linux.bootargs");
+	if (!str)
+		return ERR_PTR(-ENOSYS);
+
+	return xstrdup(str);
+}
+
+/**
+ * __is_tftp_fs() - return true when path is mounted on TFTP
+ * @path: The path
+ *
+ * Do not use directly, use is_tftp_fs instead.
+ *
+ * Return: true when @path is on TFTP, false otherwise
+ */
+bool __is_tftp_fs(const char *path)
+{
+	struct fs_device_d *fsdev;
+
+	fsdev = get_fsdevice_by_path(path);
+	if (!fsdev)
+		return false;
+
+	if (strcmp(fsdev->driver->drv.name, "tftp"))
+		return false;
+
+	return true;
+}
+
+/* inode.c */
+unsigned int get_next_ino(void)
+{
+	static unsigned int ino;
+
+	return ++ino;
+}
+
+void drop_nlink(struct inode *inode)
+{
+	WARN_ON(inode->i_nlink == 0);
+	inode->__i_nlink--;
+}
+
+void inc_nlink(struct inode *inode)
+{
+	inode->__i_nlink++;
+}
+
+static struct inode *alloc_inode(struct super_block *sb)
+{
+	static const struct inode_operations empty_iops;
+	static const struct file_operations no_open_fops;
+	struct inode *inode;
+
+	if (sb->s_op->alloc_inode)
+		inode = sb->s_op->alloc_inode(sb);
+	else
+		inode = xzalloc(sizeof(*inode));
+
+	inode->i_op = &empty_iops;
+	inode->i_fop = &no_open_fops;
+	inode->__i_nlink = 1;
+	inode->i_count = 1;
+
+	return inode;
+}
+
+struct inode *new_inode(struct super_block *sb)
+{
+	struct inode *inode;
+
+	inode = alloc_inode(sb);
+	if (!inode)
+		return NULL;
+
+	inode->i_sb = sb;
+
+	list_add(&inode->i_sb_list, &sb->s_inodes);
+
+	return inode;
+}
+
+void iput(struct inode *inode)
+{
+	if (!inode->i_count)
+		return;
+
+	inode->i_count--;
+}
+
+struct inode *iget(struct inode *inode)
+{
+	inode->i_count++;
+
+	return inode;
+}
+
+/* dcache.c */
+
+/*
+ * refcounting is implemented but right now we do not do anything with
+ * the refcounting information. Dentries are never freed unless the
+ * filesystem they are on is unmounted. In this case we do not care
+ * about the refcounts so we may free up a dentry that is actually used
+ * (file is opened). This leaves room for improvements.
+ */
+void dput(struct dentry *dentry)
+{
+	if (!dentry)
+		return;
+
+	if (!dentry->d_count)
+		return;
+
+	dentry->d_count--;
+}
+
+struct dentry *dget(struct dentry *dentry)
+{
+	dentry->d_count++;
+
+	return dentry;
+}
+
+const struct qstr slash_name = QSTR_INIT("/", 1);
+
+void d_set_d_op(struct dentry *dentry, const struct dentry_operations *op)
+{
+	dentry->d_op = op;
+}
+
+/**
+ * __d_alloc	-	allocate a dcache entry
+ * @sb: filesystem it will belong to
+ * @name: qstr of the name
+ *
+ * Allocates a dentry. It returns %NULL if there is insufficient memory
+ * available. On a success the dentry is returned. The name passed in is
+ * copied and the copy passed in may be reused after this call.
+ */
+struct dentry *__d_alloc(struct super_block *sb, const struct qstr *name)
+{
+	struct dentry *dentry;
+
+	dentry = xzalloc(sizeof(*dentry));
+	if (!dentry)
+		return NULL;
+
+	if (!name)
+		name = &slash_name;
+
+	dentry->name = malloc(name->len + 1);
+	if (!dentry->name)
+		return NULL;
+
+	memcpy(dentry->name, name->name, name->len);
+	dentry->name[name->len] = 0;
+
+	dentry->d_name.len = name->len;
+	dentry->d_name.name = dentry->name;
+
+	dentry->d_count = 1;
+	dentry->d_parent = dentry;
+	dentry->d_sb = sb;
+	INIT_LIST_HEAD(&dentry->d_subdirs);
+	INIT_LIST_HEAD(&dentry->d_child);
+	d_set_d_op(dentry, dentry->d_sb->s_d_op);
+
+	return dentry;
+}
+
+/**
+ * d_alloc	-	allocate a dcache entry
+ * @parent: parent of entry to allocate
+ * @name: qstr of the name
+ *
+ * Allocates a dentry. It returns %NULL if there is insufficient memory
+ * available. On a success the dentry is returned. The name passed in is
+ * copied and the copy passed in may be reused after this call.
+ */
+struct dentry *d_alloc(struct dentry *parent, const struct qstr *name)
+{
+	struct dentry *dentry = __d_alloc(parent->d_sb, name);
+	if (!dentry)
+		return NULL;
+
+	dget(parent);
+
+	dentry->d_parent = parent;
+	list_add(&dentry->d_child, &parent->d_subdirs);
+
+	return dentry;
+}
+
+struct dentry *d_alloc_anon(struct super_block *sb)
+{
+	return __d_alloc(sb, NULL);
+}
+
+static unsigned d_flags_for_inode(struct inode *inode)
+{
+        if (!inode)
+                return DCACHE_MISS_TYPE;
+
+	if (S_ISDIR(inode->i_mode))
+		return DCACHE_DIRECTORY_TYPE;
+
+	if (inode->i_op->get_link)
+		return DCACHE_SYMLINK_TYPE;
+
+	return DCACHE_REGULAR_TYPE;
+}
+
+void d_instantiate(struct dentry *dentry, struct inode *inode)
+{
+	dentry->d_inode = inode;
+	dentry->d_flags &= ~DCACHE_ENTRY_TYPE;
+	dentry->d_flags |= d_flags_for_inode(inode);
+}
+
+struct dentry *d_make_root(struct inode *inode)
+{
+	struct dentry *res;
+
+	if (!inode)
+		return NULL;
+
+	res = d_alloc_anon(inode->i_sb);
+	if (!res)
+		return NULL;
+
+	d_instantiate(res, inode);
+
+	return res;
+}
+
+void d_add(struct dentry *dentry, struct inode *inode)
+{
+	dentry->d_inode = inode;
+	dentry->d_flags &= ~DCACHE_ENTRY_TYPE;
+	dentry->d_flags |= d_flags_for_inode(inode);
+}
+
+static bool d_same_name(const struct dentry *dentry,
+			const struct dentry *parent,
+			const struct qstr *name)
+{
+	if (dentry->d_name.len != name->len)
+		return false;
+
+	return strncmp(dentry->d_name.name, name->name, name->len) == 0;
+}
+
+struct dentry *d_lookup(const struct dentry *parent, const struct qstr *name)
+{
+	struct dentry *dentry;
+
+	list_for_each_entry(dentry, &parent->d_subdirs, d_child) {
+		if (!d_same_name(dentry, parent, name))
+			continue;
+
+		dget(dentry);
+
+		return dentry;
+	}
+
+	return NULL;
+}
+
+void d_invalidate(struct dentry *dentry)
+{
+}
+
+static inline void __d_clear_type_and_inode(struct dentry *dentry)
+{
+	dentry->d_flags &= ~(DCACHE_ENTRY_TYPE | DCACHE_FALLTHRU);
+
+	dentry->d_inode = NULL;
+}
+
+/*
+ * Release the dentry's inode, using the filesystem
+ * d_iput() operation if defined.
+ */
+static void dentry_unlink_inode(struct dentry * dentry)
+{
+	struct inode *inode = dentry->d_inode;
+
+	__d_clear_type_and_inode(dentry);
+	iput(inode);
+}
+
+void d_delete(struct dentry * dentry)
+{
+	dentry_unlink_inode(dentry);
+}
+
+/*
+ * These are the Linux name resolve functions from fs/namei.c
+ *
+ * The implementation is more or less directly ported from the
+ * Linux Kernel (as of Linux-4.16) minus the RCU and locking code.
+ */
+
+enum {WALK_FOLLOW = 1, WALK_MORE = 2};
+
+/*
+ * Define EMBEDDED_LEVELS to MAXSYMLINKS so we do not have to
+ * dynamically allocate a path stack.
+ */
+#define EMBEDDED_LEVELS MAXSYMLINKS
+
+struct nameidata {
+	struct path	path;
+	struct qstr	last;
+	struct inode	*inode; /* path.dentry.d_inode */
+	unsigned int	flags;
+	unsigned	seq, m_seq;
+	int		last_type;
+	unsigned	depth;
+	int		total_link_count;
+	struct saved {
+		struct path link;
+		const char *name;
+		unsigned seq;
+	} *stack, internal[EMBEDDED_LEVELS];
+	struct filename	*name;
+	struct nameidata *saved;
+	struct inode	*link_inode;
+	unsigned	root_seq;
+	int		dfd;
+};
+
+struct filename {
+	char *name;
+	int refcnt;
+};
+
+static void set_nameidata(struct nameidata *p, int dfd, struct filename *name)
+{
+	p->stack = p->internal;
+	p->dfd = dfd;
+	p->name = name;
+	p->total_link_count = 0;
+}
+
+void path_get(const struct path *path)
+{
+	mntget(path->mnt);
+	dget(path->dentry);
+}
+
+void path_put(const struct path *path)
+{
+	dput(path->dentry);
+	mntput(path->mnt);
+}
+
+static inline void get_root(struct path *root)
+{
+	root->dentry = d_root;
+	root->mnt = mnt_root;
+
+	path_get(root);
+}
+
+static inline void get_pwd(struct path *pwd)
+{
+	if (!cwd_dentry) {
+		cwd_dentry = d_root;
+		cwd_mnt = mnt_root;
+	}
+
+	pwd->dentry = cwd_dentry;
+	pwd->mnt = cwd_mnt;
+
+	path_get(pwd);
+}
+
+static inline void put_link(struct nameidata *nd)
+{
+	struct saved *last = nd->stack + --nd->depth;
+	path_put(&last->link);
+}
+
+static int automount_mount(struct dentry *dentry);
+
+static void path_put_conditional(struct path *path, struct nameidata *nd)
+{
+	dput(path->dentry);
+	if (path->mnt != nd->path.mnt)
+		mntput(path->mnt);
+}
+
+static int follow_automount(struct path *path, struct nameidata *nd,
+			    bool *need_mntput)
+{
+	/* We don't want to mount if someone's just doing a stat -
+	 * unless they're stat'ing a directory and appended a '/' to
+	 * the name.
+	 *
+	 * We do, however, want to mount if someone wants to open or
+	 * create a file of any type under the mountpoint, wants to
+	 * traverse through the mountpoint or wants to open the
+	 * mounted directory.  Also, autofs may mark negative dentries
+	 * as being automount points.  These will need the attentions
+	 * of the daemon to instantiate them before they can be used.
+	 */
+	if (!(nd->flags & (LOOKUP_PARENT | LOOKUP_DIRECTORY |
+			LOOKUP_OPEN | LOOKUP_CREATE | LOOKUP_AUTOMOUNT)) &&
+			path->dentry->d_inode)
+		return -EISDIR;
+
+	return automount_mount(path->dentry);
+}
+
+/*
+ * Handle a dentry that is managed in some way.
+ * - Flagged for transit management (autofs)
+ * - Flagged as mountpoint
+ * - Flagged as automount point
+ *
+ * This may only be called in refwalk mode.
+ *
+ * Serialization is taken care of in namespace.c
+ */
+static int follow_managed(struct path *path, struct nameidata *nd)
+{
+	struct vfsmount *mnt = path->mnt;
+	unsigned managed = path->dentry->d_flags;
+	bool need_mntput = false;
+	int ret = 0;
+
+	while (managed = path->dentry->d_flags,
+		managed &= DCACHE_MANAGED_DENTRY,
+		managed != 0) {
+
+		if (managed & DCACHE_MOUNTED) {
+			struct vfsmount *mounted = lookup_mnt(path);
+
+			if (mounted) {
+				dput(path->dentry);
+				if (need_mntput)
+					mntput(path->mnt);
+				path->mnt = mounted;
+				path->dentry = dget(mounted->mnt_root);
+				need_mntput = true;
+				continue;
+			}
+		}
+
+		/* Handle an automount point */
+		if (managed & DCACHE_NEED_AUTOMOUNT) {
+			ret = follow_automount(path, nd, &need_mntput);
+			if (ret < 0)
+				break;
+			continue;
+		}
+
+		/* We didn't change the current path point */
+		break;
+	}
+
+	if (need_mntput && path->mnt == mnt)
+		mntput(path->mnt);
+	if (ret == -EISDIR || !ret)
+		ret = 1;
+	if (need_mntput)
+		nd->flags |= LOOKUP_JUMPED;
+	if (ret < 0)
+		path_put_conditional(path, nd);
+	return ret;
+}
+
+static struct dentry *__lookup_hash(const struct qstr *name,
+		struct dentry *base, unsigned int flags)
+{
+	struct dentry *dentry;
+	struct dentry *old;
+	struct inode *dir = base->d_inode;
+
+	dentry = d_lookup(base, name);
+	if (dentry)
+		return dentry;
+
+	dentry = d_alloc(base, name);
+	if (unlikely(!dentry))
+		return ERR_PTR(-ENOMEM);
+
+	old = dir->i_op->lookup(dir, dentry, flags);
+	if (IS_ERR(old)) {
+		dput(dentry);
+		return old;
+	}
+
+	if (unlikely(old)) {
+		dput(dentry);
+		dentry = old;
+	}
+
+	return dentry;
+}
+
+static int lookup_fast(struct nameidata *nd, struct path *path)
+{
+	struct dentry *dentry, *parent = nd->path.dentry;
+
+	dentry = __lookup_hash(&nd->last, parent, 0);
+	if (IS_ERR(dentry))
+		return PTR_ERR(dentry);
+
+	if (d_is_negative(dentry)) {
+		dput(dentry);
+		return -ENOENT;
+	}
+
+	path->dentry = dentry;
+	path->mnt = nd->path.mnt;
+
+	return follow_managed(path, nd);
+}
+
+/*
+ * follow_up - Find the mountpoint of path's vfsmount
+ *
+ * Given a path, find the mountpoint of its source file system.
+ * Replace @path with the path of the mountpoint in the parent mount.
+ * Up is towards /.
+ *
+ * Return 1 if we went up a level and 0 if we were already at the
+ * root.
+ */
+int follow_up(struct path *path)
+{
+	struct vfsmount *parent, *mnt = path->mnt;
+	struct dentry *mountpoint;
+
+	parent = mnt->parent;
+	if (parent == mnt)
+		return 0;
+
+	mntget(parent);
+	mountpoint = dget(mnt->mountpoint);
+	dput(path->dentry);
+	path->dentry = mountpoint;
+	mntput(path->mnt);
+	path->mnt = mnt->parent;
+
+	return 1;
+}
+
+static void follow_mount(struct path *path)
+{
+	while (d_mountpoint(path->dentry)) {
+		struct vfsmount *mounted = lookup_mnt(path);
+		if (!mounted)
+			break;
+		dput(path->dentry);
+		path->mnt = mounted;
+		path->dentry = dget(mounted->mnt_root);
+	}
+}
+
+static int path_parent_directory(struct path *path)
+{
+	struct dentry *old = path->dentry;
+
+	path->dentry = dget(path->dentry->d_parent);
+	dput(old);
+
+	return 0;
+}
+
+static int follow_dotdot(struct nameidata *nd)
+{
+	while (1) {
+		if (nd->path.dentry != nd->path.mnt->mnt_root) {
+			int ret = path_parent_directory(&nd->path);
+			if (ret)
+				return ret;
+			break;
+		}
+
+		if (!follow_up(&nd->path))
+			break;
+	}
 
-	if (ret > 0)
-		f->pos += ret;
-	return ret;
+	follow_mount(&nd->path);
+
+	nd->inode = nd->path.dentry->d_inode;
+
+	return 0;
 }
-EXPORT_SYMBOL(write);
 
-int flush(int fd)
+static inline int handle_dots(struct nameidata *nd, int type)
+{
+	if (type == LAST_DOTDOT) {
+		return follow_dotdot(nd);
+	}
+	return 0;
+}
+
+static inline void path_to_nameidata(const struct path *path,
+					struct nameidata *nd)
+{
+	dput(nd->path.dentry);
+	if (nd->path.mnt != path->mnt)
+		mntput(nd->path.mnt);
+	nd->path.mnt = path->mnt;
+	nd->path.dentry = path->dentry;
+}
+
+static const char *get_link(struct nameidata *nd)
+{
+	struct saved *last = nd->stack + nd->depth - 1;
+	struct dentry *dentry = last->link.dentry;
+	struct inode *inode = nd->link_inode;
+	const char *res;
+
+	nd->last_type = LAST_BIND;
+	res = inode->i_link;
+	if (!res) {
+		res = inode->i_op->get_link(dentry, inode);
+		if (IS_ERR_OR_NULL(res))
+			return res;
+	}
+	if (*res == '/') {
+		while (unlikely(*++res == '/'))
+			;
+	}
+	if (!*res)
+		res = NULL;
+	return res;
+}
+
+static int pick_link(struct nameidata *nd, struct path *link,
+		     struct inode *inode)
+{
+	struct saved *last;
+
+	if (unlikely(nd->total_link_count++ >= MAXSYMLINKS)) {
+		path_to_nameidata(link, nd);
+		return -ELOOP;
+	}
+
+	if (link->mnt == nd->path.mnt)
+		mntget(link->mnt);
+
+	last = nd->stack + nd->depth++;
+	last->link = *link;
+	nd->link_inode = inode;
+
+	return 1;
+}
+
+/*
+ * Do we need to follow links? We _really_ want to be able
+ * to do this check without having to look at inode->i_op,
+ * so we keep a cache of "no, this doesn't need follow_link"
+ * for the common case.
+ */
+static inline int step_into(struct nameidata *nd, struct path *path,
+			    int flags, struct inode *inode)
+{
+	if (!(flags & WALK_MORE) && nd->depth)
+		put_link(nd);
+
+	if (likely(!d_is_symlink(path->dentry)) ||
+	   !(flags & WALK_FOLLOW || nd->flags & LOOKUP_FOLLOW)) {
+		/* not a symlink or should not follow */
+		path_to_nameidata(path, nd);
+		nd->inode = inode;
+		return 0;
+	}
+
+	return pick_link(nd, path, inode);
+}
+
+static int walk_component(struct nameidata *nd, int flags)
+{
+	struct path path;
+	int err;
+
+	/*
+	 * "." and ".." are special - ".." especially so because it has
+	 * to be able to know about the current root directory and
+	 * parent relationships.
+	 */
+	if (nd->last_type != LAST_NORM) {
+		err = handle_dots(nd, nd->last_type);
+		if (!(flags & WALK_MORE) && nd->depth)
+			put_link(nd);
+		return err;
+	}
+
+	err = lookup_fast(nd, &path);
+	if (err < 0)
+		return err;
+
+	if (err == 0) {
+		path.mnt = nd->path.mnt;
+		err = follow_managed(&path, nd);
+		if (err < 0)
+			return err;
+
+		if (d_is_negative(path.dentry)) {
+			path_to_nameidata(&path, nd);
+			return -ENOENT;
+		}
+	}
+
+	return step_into(nd, &path, flags, d_inode(path.dentry));
+}
+
+static int component_len(const char *name, char separator)
+{
+	int len = 0;
+
+	while (name[len] && name[len] != separator)
+		len++;
+
+	return len;
+}
+
+struct filename *getname(const char *filename)
+{
+	struct filename *result;
+
+	result = malloc(sizeof(*result));
+	if (!result)
+		return NULL;
+
+	result->name = strdup(filename);
+	if (!result->name) {
+		free(result);
+		return NULL;
+	}
+
+	result->refcnt = 1;
+
+	return result;
+}
+
+void putname(struct filename *name)
+{
+	BUG_ON(name->refcnt <= 0);
+
+	if (--name->refcnt > 0)
+		return;
+
+	free(name->name);
+	free(name);
+}
+
+static struct fs_device_d *get_fsdevice_by_dentry(struct dentry *dentry)
+{
+	struct super_block *sb;
+
+	sb = dentry->d_sb;
+
+	return container_of(sb, struct fs_device_d, sb);
+}
+
+static bool dentry_is_tftp(struct dentry *dentry)
+{
+	struct fs_device_d *fsdev;
+
+	fsdev = get_fsdevice_by_dentry(dentry);
+	if (!fsdev)
+		return false;
+
+	if (strcmp(fsdev->driver->drv.name, "tftp"))
+		return false;
+
+	return true;
+}
+
+/*
+ * Name resolution.
+ * This is the basic name resolution function, turning a pathname into
+ * the final dentry. We expect 'base' to be positive and a directory.
+ *
+ * Returns 0 and nd will have valid dentry and mnt on success.
+ * Returns error and drops reference to input namei data on failure.
+ */
+static int link_path_walk(const char *name, struct nameidata *nd)
+{
+	int err;
+	char separator = '/';
+
+	while (*name=='/')
+		name++;
+	if (!*name)
+		return 0;
+
+	/* At this point we know we have a real path component. */
+	for(;;) {
+		int len;
+		int type;
+
+		len = component_len(name, separator);
+
+		type = LAST_NORM;
+		if (name[0] == '.') switch (len) {
+			case 2:
+				if (name[1] == '.') {
+					type = LAST_DOTDOT;
+					nd->flags |= LOOKUP_JUMPED;
+				}
+				break;
+			case 1:
+				type = LAST_DOT;
+		}
+		if (likely(type == LAST_NORM))
+			nd->flags &= ~LOOKUP_JUMPED;
+
+		nd->last.len = len;
+		nd->last.name = name;
+		nd->last_type = type;
+
+		name += len;
+		if (!*name)
+			goto OK;
+
+		/*
+		 * If it wasn't NUL, we know it was '/'. Skip that
+		 * slash, and continue until no more slashes.
+		 */
+		do {
+			name++;
+		} while (unlikely(*name == separator));
+
+		if (unlikely(!*name)) {
+OK:
+			/* pathname body, done */
+			if (!nd->depth)
+				return 0;
+			name = nd->stack[nd->depth - 1].name;
+			/* trailing symlink, done */
+			if (!name)
+				return 0;
+			/* last component of nested symlink */
+			err = walk_component(nd, WALK_FOLLOW);
+		} else {
+			/* not the last component */
+			err = walk_component(nd, WALK_FOLLOW | WALK_MORE);
+		}
+
+		if (err < 0)
+			return err;
+
+		/*
+		 * barebox specific hack for TFTP. TFTP does not support
+		 * looking up directories, only the files in directories.
+		 * Since the filename is not known at this point we replace
+		 * the path separator with an invalid char so that TFTP will
+		 * get the full remaining path including slashes.
+		 */
+		if (dentry_is_tftp(nd->path.dentry))
+			separator = 0x1;
+
+		if (err) {
+			const char *s = get_link(nd);
+
+			if (IS_ERR(s))
+				return PTR_ERR(s);
+			err = 0;
+			if (unlikely(!s)) {
+				/* jumped */
+				put_link(nd);
+			} else {
+				nd->stack[nd->depth - 1].name = name;
+				name = s;
+				continue;
+			}
+		}
+		if (unlikely(!d_can_lookup(nd->path.dentry)))
+			return -ENOTDIR;
+	}
+}
+
+static const char *path_init(struct nameidata *nd, unsigned flags)
+{
+	const char *s = nd->name->name;
+
+	nd->last_type = LAST_ROOT; /* if there are only slashes... */
+	nd->flags = flags | LOOKUP_JUMPED | LOOKUP_PARENT;
+	nd->depth = 0;
+
+	nd->path.mnt = NULL;
+	nd->path.dentry = NULL;
+
+	if (*s == '/') {
+		get_root(&nd->path);
+		return s;
+	} else if (nd->dfd == AT_FDCWD) {
+		get_pwd(&nd->path);
+		nd->inode = nd->path.dentry->d_inode;
+		return s;
+	}
+
+	return s;
+}
+
+static const char *trailing_symlink(struct nameidata *nd)
+{
+	const char *s;
+
+	nd->flags |= LOOKUP_PARENT;
+	nd->stack[0].name = NULL;
+	s = get_link(nd);
+
+	return s ? s : "";
+}
+
+static inline int lookup_last(struct nameidata *nd)
+{
+	if (nd->last_type == LAST_NORM && nd->last.name[nd->last.len])
+		nd->flags |= LOOKUP_FOLLOW | LOOKUP_DIRECTORY;
+
+	nd->flags &= ~LOOKUP_PARENT;
+	return walk_component(nd, 0);
+}
+
+static void terminate_walk(struct nameidata *nd)
+{
+	int i;
+
+	path_put(&nd->path);
+	for (i = 0; i < nd->depth; i++)
+		path_put(&nd->stack[i].link);
+
+	nd->depth = 0;
+}
+
+/* Returns 0 and nd will be valid on success; Retuns error, otherwise. */
+static int path_parentat(struct nameidata *nd, unsigned flags,
+				struct path *parent)
+{
+	const char *s = path_init(nd, flags);
+	int err;
+
+	if (IS_ERR(s))
+		return PTR_ERR(s);
+
+	err = link_path_walk(s, nd);
+	if (!err) {
+		*parent = nd->path;
+		nd->path.mnt = NULL;
+		nd->path.dentry = NULL;
+	}
+	terminate_walk(nd);
+	return err;
+}
+
+static struct filename *filename_parentat(int dfd, struct filename *name,
+				unsigned int flags, struct path *parent,
+				struct qstr *last, int *type)
+{
+	int retval;
+	struct nameidata nd;
+
+	if (IS_ERR(name))
+		return name;
+
+	set_nameidata(&nd, dfd, name);
+
+	retval = path_parentat(&nd, flags, parent);
+	if (likely(!retval)) {
+		*last = nd.last;
+		*type = nd.last_type;
+	} else {
+		putname(name);
+		name = ERR_PTR(retval);
+	}
+
+	return name;
+}
+
+static struct dentry *filename_create(int dfd, struct filename *name,
+				struct path *path, unsigned int lookup_flags)
+{
+	struct dentry *dentry = ERR_PTR(-EEXIST);
+	struct qstr last;
+	int type;
+	int error;
+	bool is_dir = (lookup_flags & LOOKUP_DIRECTORY);
+
+	/*
+	 * Note that only LOOKUP_REVAL and LOOKUP_DIRECTORY matter here. Any
+	 * other flags passed in are ignored!
+	 */
+	lookup_flags &= LOOKUP_REVAL;
+
+	name = filename_parentat(dfd, name, 0, path, &last, &type);
+	if (IS_ERR(name))
+		return ERR_CAST(name);
+
+	/*
+	 * Yucky last component or no last component at all?
+	 * (foo/., foo/.., /////)
+	 */
+	if (unlikely(type != LAST_NORM))
+		goto out;
+
+	/*
+	 * Do the final lookup.
+	 */
+	lookup_flags |= LOOKUP_CREATE | LOOKUP_EXCL;
+	dentry = __lookup_hash(&last, path->dentry, lookup_flags);
+	if (IS_ERR(dentry))
+		goto unlock;
+
+	error = -EEXIST;
+	if (d_is_positive(dentry))
+		goto fail;
+
+	/*
+	 * Special case - lookup gave negative, but... we had foo/bar/
+	 * From the vfs_mknod() POV we just have a negative dentry -
+	 * all is fine. Let's be bastards - you had / on the end, you've
+	 * been asking for (non-existent) directory. -ENOENT for you.
+	 */
+	if (unlikely(!is_dir && last.name[last.len])) {
+		error = -ENOENT;
+		goto fail;
+	}
+	putname(name);
+	return dentry;
+fail:
+	dput(dentry);
+	dentry = ERR_PTR(error);
+unlock:
+out:
+	path_put(path);
+	putname(name);
+	return dentry;
+}
+
+static int filename_lookup(int dfd, struct filename *name, unsigned flags,
+			   struct path *path)
+{
+	int err;
+	struct nameidata nd;
+	const char *s;
+
+	set_nameidata(&nd, dfd, name);
+
+	s = path_init(&nd, flags);
+
+	while (!(err = link_path_walk(s, &nd)) && ((err = lookup_last(&nd)) > 0)) {
+		s = trailing_symlink(&nd);
+		if (IS_ERR(s)) {
+			err = PTR_ERR(s);
+			break;
+		}
+	}
+
+	if (!err && nd.flags & LOOKUP_DIRECTORY)
+		if (!d_can_lookup(nd.path.dentry))
+			err = -ENOTDIR;
+	if (!err) {
+		*path = nd.path;
+		nd.path.mnt = NULL;
+		nd.path.dentry = NULL;
+	}
+
+	terminate_walk(&nd);
+	putname(name);
+
+	return err;
+}
+
+static struct fs_device_d *get_fsdevice_by_path(const char *pathname)
+{
+	struct fs_device_d *fsdev;
+	struct path path;
+	int ret;
+
+	ret = filename_lookup(AT_FDCWD, getname(pathname), 0, &path);
+	if (ret)
+		return NULL;
+
+	fsdev = get_fsdevice_by_dentry(path.dentry);
+
+	path_put(&path);
+
+	return fsdev;
+}
+
+int vfs_rmdir(struct inode *dir, struct dentry *dentry)
+{
+	int error;
+
+	if (!dir->i_op->rmdir)
+		return -EPERM;
+
+	dget(dentry);
+
+	error = dir->i_op->rmdir(dir, dentry);
+	if (error)
+		goto out;
+
+	dentry->d_inode->i_flags |= S_DEAD;
+
+out:
+	dput(dentry);
+
+	if (!error)
+		d_delete(dentry);
+
+	return error;
+}
+
+int vfs_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
+{
+	int error;
+
+	if (!dir->i_op->mkdir)
+		return -EPERM;
+
+	mode &= (S_IRWXUGO|S_ISVTX);
+
+	error = dir->i_op->mkdir(dir, dentry, mode);
+
+	return error;
+}
+
+/* libfs.c */
+
+/* ---------------------------------------------------------------- */
+int mkdir (const char *pathname, mode_t mode)
+{
+	struct dentry *dentry;
+	struct path path;
+	int error;
+	unsigned int lookup_flags = LOOKUP_DIRECTORY;
+
+	dentry = filename_create(AT_FDCWD, getname(pathname), &path, lookup_flags);
+	if (IS_ERR(dentry)) {
+		error = PTR_ERR(dentry);
+		goto out;
+	}
+
+	error = vfs_mkdir(path.dentry->d_inode, dentry, mode);
+
+	dput(dentry);
+	path_put(&path);
+out:
+	if (error)
+		errno = -error;
+
+	return error;
+}
+EXPORT_SYMBOL(mkdir);
+
+int rmdir (const char *pathname)
+{
+	int error = 0;
+	struct filename *name;
+	struct dentry *dentry;
+	struct path path;
+	struct qstr last;
+	int type;
+
+	name = filename_parentat(AT_FDCWD, getname(pathname), 0,
+				&path, &last, &type);
+	if (IS_ERR(name))
+		return PTR_ERR(name);
+
+	switch (type) {
+	case LAST_DOTDOT:
+		error = -ENOTEMPTY;
+		goto out;
+	case LAST_DOT:
+		error = -EINVAL;
+		goto out;
+	case LAST_ROOT:
+		error = -EBUSY;
+		goto out;
+	}
+
+	dentry = __lookup_hash(&last, path.dentry, 0);
+	if (d_is_negative(dentry)) {
+		error = -ENOENT;
+		goto out;
+	}
+	if (d_mountpoint(dentry)) {
+		error = -EBUSY;
+		goto out;
+	}
+
+	if (!d_is_dir(dentry)) {
+		error = -ENOTDIR;
+		goto out;
+	}
+
+	error = vfs_rmdir(path.dentry->d_inode, dentry);
+
+	dput(dentry);
+out:
+	path_put(&path);
+	putname(name);
+
+	if (error)
+		errno = -error;
+
+	return error;
+}
+EXPORT_SYMBOL(rmdir);
+
+int open(const char *pathname, int flags, ...)
 {
+	struct fs_device_d *fsdev;
 	struct fs_driver_d *fsdrv;
+	struct super_block *sb;
 	FILE *f;
-	int ret;
+	int error = 0;
+	struct inode *inode = NULL;
+	struct dentry *dentry = NULL;
+	struct nameidata nd;
+	const char *s;
 
-	if (check_fd(fd))
-		return -errno;
+	set_nameidata(&nd, AT_FDCWD, getname(pathname));
+	s = path_init(&nd, LOOKUP_FOLLOW);
 
-	f = &files[fd];
+	while (1) {
+		error = link_path_walk(s, &nd);
 
-	fsdrv = f->fsdev->driver;
-	if (fsdrv->flush)
-		ret = fsdrv->flush(&f->fsdev->dev, f);
-	else
-		ret = 0;
+		if (!d_is_dir(nd.path.dentry)) {
+			error = -ENOTDIR;
+			break;
+		}
 
-	if (ret)
-		errno = -ret;
+		dentry = __lookup_hash(&nd.last, nd.path.dentry, 0);
+		if (IS_ERR(dentry)) {
+			error = PTR_ERR(dentry);
+			break;
+		}
 
-	return ret;
-}
+		if (!d_is_symlink(dentry))
+			break;
 
-loff_t lseek(int fildes, loff_t offset, int whence)
-{
-	struct fs_driver_d *fsdrv;
-	FILE *f;
-	loff_t pos;
-	int ret;
+		dput(dentry);
 
-	if (check_fd(fildes))
-		return -1;
+		error = lookup_last(&nd);
+		if (error <= 0)
+			break;
 
-	f = &files[fildes];
-	fsdrv = f->fsdev->driver;
-	if (!fsdrv->lseek) {
-		ret = -ENOSYS;
-		goto out;
+		s = trailing_symlink(&nd);
+		if (IS_ERR(s)) {
+			error = PTR_ERR(s);
+			break;
+		}
 	}
 
-	ret = -EINVAL;
+	terminate_walk(&nd);
+	putname(nd.name);
 
-	switch (whence) {
-	case SEEK_SET:
-		if (f->size != FILE_SIZE_STREAM && offset > f->size)
-			goto out;
-		if (offset < 0)
-			goto out;
-		pos = offset;
-		break;
-	case SEEK_CUR:
-		if (f->size != FILE_SIZE_STREAM && offset + f->pos > f->size)
-			goto out;
-		pos = f->pos + offset;
-		break;
-	case SEEK_END:
-		if (offset > 0)
+	if (error)
+		return error;
+
+	if (d_is_negative(dentry)) {
+		if (flags & O_CREAT) {
+			error = create(nd.path.dentry, dentry);
+			if (error)
+				goto out1;
+		} else {
+			dput(dentry);
+			error = -ENOENT;
+			goto out1;
+		}
+	} else {
+		if (d_is_dir(dentry) && !dentry_is_tftp(dentry)) {
+			error = -EISDIR;
+			goto out1;
+		}
+	}
+
+	inode = d_inode(dentry);
+
+	f = get_file();
+	if (!f) {
+		error = -EMFILE;
+		goto out1;
+	}
+
+	f->path = xstrdup(pathname);
+	f->dentry = dentry;
+	f->f_inode = iget(inode);
+	f->flags = flags;
+	f->size = inode->i_size;
+
+	sb = inode->i_sb;
+	fsdev = container_of(sb, struct fs_device_d, sb);
+	fsdrv = fsdev->driver;
+
+	f->fsdev = fsdev;
+
+	if (fsdrv->open) {
+		error = fsdrv->open(&fsdev->dev, f, NULL);
+		if (error)
 			goto out;
-		pos = f->size + offset;
-		break;
-	default:
-		goto out;
 	}
 
-	pos = fsdrv->lseek(&f->fsdev->dev, f, pos);
-	if (pos < 0) {
-		errno = -pos;
-		return -1;
+	if (flags & O_TRUNC) {
+		error = fsdrv->truncate(&fsdev->dev, f, 0);
+		f->size = 0;
+		inode->i_size = 0;
+		if (error)
+			goto out;
 	}
 
-	return pos;
+	if (flags & O_APPEND)
+		f->pos = f->size;
+
+	return f->no;
 
 out:
-	if (ret)
-		errno = -ret;
+	put_file(f);
+out1:
 
-	return -1;
+	if (error)
+		errno = -error;
+	return error;
 }
-EXPORT_SYMBOL(lseek);
+EXPORT_SYMBOL(open);
 
-int erase(int fd, loff_t count, loff_t offset)
+int unlink(const char *pathname)
 {
-	struct fs_driver_d *fsdrv;
-	FILE *f;
 	int ret;
+	struct dentry *dentry;
+	struct inode *inode;
+	struct path path;
 
-	if (check_fd(fd))
-		return -errno;
-	f = &files[fd];
-	if (offset >= f->size)
-		return 0;
-	if (count == ERASE_SIZE_ALL || count > f->size - offset)
-		count = f->size - offset;
-	if (count < 0)
-		return -EINVAL;
+	ret = filename_lookup(AT_FDCWD, getname(pathname), 0, &path);
+	if (ret)
+		goto out;
 
-	fsdrv = f->fsdev->driver;
-	if (fsdrv->erase)
-		ret = fsdrv->erase(&f->fsdev->dev, f, count, offset);
-	else
-		ret = -ENOSYS;
+	dentry = path.dentry;
 
-	if (ret)
-		errno = -ret;
+	if (d_is_dir(dentry)) {
+		ret = -EISDIR;
+		goto out_put;
+	}
 
-	return ret;
-}
-EXPORT_SYMBOL(erase);
+	inode = d_inode(dentry->d_parent);
 
-int protect(int fd, size_t count, loff_t offset, int prot)
-{
-	struct fs_driver_d *fsdrv;
-	FILE *f;
-	int ret;
+	if (!inode->i_op->unlink) {
+		ret = -EPERM;
+		goto out_put;
+	}
 
-	if (check_fd(fd))
-		return -errno;
-	f = &files[fd];
-	if (offset >= f->size)
-		return 0;
-	if (count > f->size - offset)
-		count = f->size - offset;
+	ret = inode->i_op->unlink(inode, dentry);
+	if (ret)
+		goto out_put;
 
-	fsdrv = f->fsdev->driver;
-	if (fsdrv->protect)
-		ret = fsdrv->protect(&f->fsdev->dev, f, count, offset, prot);
-	else
-		ret = -ENOSYS;
+	d_delete(dentry);
 
+out_put:
+	path_put(&path);
+out:
 	if (ret)
 		errno = -ret;
-
 	return ret;
 }
-EXPORT_SYMBOL(protect);
+EXPORT_SYMBOL(unlink);
 
-int protect_file(const char *file, int prot)
+int vfs_symlink(struct inode *dir, struct dentry *dentry, const char *oldname)
 {
-	int fd, ret;
+	if (!dir->i_op->symlink)
+		return -EPERM;
 
-	fd = open(file, O_WRONLY);
-	if (fd < 0)
-		return fd;
+	return dir->i_op->symlink(dir, dentry, oldname);
+}
 
-	ret = protect(fd, ~0, 0, prot);
+int symlink(const char *pathname, const char *newpath)
+{
+	struct dentry *dentry;
+	struct path path;
+	int error;
+	unsigned int lookup_flags = LOOKUP_DIRECTORY;
 
-	close(fd);
+	dentry = filename_create(AT_FDCWD, getname(newpath), &path, lookup_flags);
+	if (IS_ERR(dentry)) {
+		error = PTR_ERR(dentry);
+		goto out;
+	}
 
-	return ret;
+	error = vfs_symlink(path.dentry->d_inode, dentry, pathname);
+out:
+	if (error)
+		errno = -error;
+
+	return error;
 }
+EXPORT_SYMBOL(symlink);
 
-void *memmap(int fd, int flags)
+static void release_dir(DIR *d)
+{
+	struct readdir_entry *entry, *tmp;
+
+	list_for_each_entry_safe(entry, tmp, &d->entries, list) {
+		free(entry);
+	}
+
+	free(d);
+}
+
+DIR *opendir(const char *pathname)
 {
-	struct fs_driver_d *fsdrv;
-	FILE *f;
-	void *retp = (void *)-1;
 	int ret;
+	struct dentry *dir;
+	struct inode *inode;
+	struct file file = {};
+	DIR *d;
+	struct path path = {};
+	struct readdir_callback rd = {
+		.ctx = {
+			.actor = fillonedir,
+		},
+	};
+
+	ret = filename_lookup(AT_FDCWD, getname(pathname),
+			      LOOKUP_FOLLOW | LOOKUP_DIRECTORY, &path);
+	if (ret)
+		goto out;
 
-	if (check_fd(fd))
-		return retp;
+	dir = path.dentry;
 
-	f = &files[fd];
+	if (d_is_negative(dir)) {
+		ret = -ENOENT;
+		goto out_put;
+	}
 
-	fsdrv = f->fsdev->driver;
+	inode = d_inode(dir);
 
-	if (fsdrv->memmap)
-		ret = fsdrv->memmap(&f->fsdev->dev, f, &retp, flags);
-	else
-		ret = -EINVAL;
+	if (!S_ISDIR(inode->i_mode)) {
+		ret = -ENOTDIR;
+		goto out_put;
+	}
+
+	file.f_path.dentry = dir;
+	file.f_op = dir->d_inode->i_fop;
 
+	d = xzalloc(sizeof(*d));
+
+	INIT_LIST_HEAD(&d->entries);
+	rd.dir = d;
+
+	ret = file.f_op->iterate(&file, &rd.ctx);
 	if (ret)
-		errno = -ret;
+		goto out_release;
 
-	return retp;
-}
-EXPORT_SYMBOL(memmap);
+	path_put(&path);
 
-int close(int fd)
-{
-	struct fs_driver_d *fsdrv;
-	FILE *f;
-	int ret;
+	return d;
 
-	if (check_fd(fd))
-		return -errno;
+out_release:
+	release_dir(d);
+out_put:
+	path_put(&path);
+out:
+	errno = -ret;
 
-	f = &files[fd];
+	return NULL;
+}
+EXPORT_SYMBOL(opendir);
 
-	fsdrv = f->fsdev->driver;
-	ret = fsdrv->close(&f->fsdev->dev, f);
+int closedir(DIR *dir)
+{
+	int ret;
 
-	put_file(f);
+	if (!dir) {
+		errno = EBADF;
+		return -EBADF;
+	}
 
-	if (ret)
-		errno = -ret;
+	release_dir(dir);
 
 	return ret;
 }
-EXPORT_SYMBOL(close);
+EXPORT_SYMBOL(closedir);
 
 int readlink(const char *pathname, char *buf, size_t bufsiz)
 {
-	struct fs_driver_d *fsdrv;
-	struct fs_device_d *fsdev;
-	char *p = canonicalize_dir(pathname);
-	char *freep = p;
 	int ret;
-	struct stat s;
+	struct dentry *dentry;
+	struct inode *inode;
+	const char *link;
+	struct path path = {};
 
-	ret = lstat(pathname, &s);
+	ret = filename_lookup(AT_FDCWD, getname(pathname), 0, &path);
 	if (ret)
 		goto out;
 
-	if (!S_ISLNK(s.st_mode)) {
+	dentry = path.dentry;
+
+	if (!d_is_symlink(dentry)) {
 		ret = -EINVAL;
-		goto out;
+		goto out_put;
 	}
 
-	fsdev = get_fs_device_and_root_path(&p);
-	if (!fsdev) {
-		ret = -ENODEV;
-		goto out;
+	inode = d_inode(dentry);
+
+	if (!inode->i_op->get_link) {
+		ret = -EPERM;
+		goto out_put;
 	}
-	fsdrv = fsdev->driver;
 
-	if (fsdrv->readlink)
-		ret = fsdrv->readlink(&fsdev->dev, p, buf, bufsiz);
-	else
-		ret = -ENOSYS;
+	link = inode->i_op->get_link(dentry, inode);
 
-	if (ret)
-		goto out;
+	strncpy(buf, link, bufsiz);
 
+	ret = 0;
+out_put:
+	path_put(&path);
 out:
-	free(freep);
-
 	if (ret)
 		errno = -ret;
 
@@ -1159,225 +2477,224 @@ out:
 }
 EXPORT_SYMBOL(readlink);
 
-int symlink(const char *pathname, const char *newpath)
+static int __stat(const char *filename, struct stat *s, unsigned int flags)
 {
-	struct fs_driver_d *fsdrv;
-	struct fs_device_d *fsdev;
-	char *p;
 	int ret;
-	struct stat s;
+	struct dentry *dentry;
+	struct inode *inode;
+	struct path path = {};
 
-	p = canonicalize_path(newpath);
-	if (IS_ERR(p)) {
-		ret = PTR_ERR(p);
+	ret = filename_lookup(AT_FDCWD, getname(filename), flags, &path);
+	if (ret)
 		goto out;
-	}
 
-	ret = lstat(p, &s);
-	if (!ret) {
-		ret = -EEXIST;
-		goto out;
-	}
+	dentry = path.dentry;
 
-	fsdev = get_fs_device_and_root_path(&p);
-	if (!fsdev) {
-		ret = -ENODEV;
-		goto out;
+	if (d_is_negative(dentry)) {
+		ret = -ENOENT;
+		goto out_put;
 	}
-	fsdrv = fsdev->driver;
 
-	if (fsdrv->symlink) {
-		ret = fsdrv->symlink(&fsdev->dev, pathname, p);
-	} else {
-		ret = -EPERM;
-	}
+	inode = d_inode(dentry);
 
-out:
-	free(p);
-	if (ret)
-		errno = -ret;
+	s->st_dev = 0;
+	s->st_ino = inode->i_ino;
+	s->st_mode = inode->i_mode;
+	s->st_uid = inode->i_uid;
+	s->st_gid = inode->i_gid;
+	s->st_size = inode->i_size;
 
+	ret = 0;
+out_put:
+	path_put(&path);
+out:
 	return ret;
 }
-EXPORT_SYMBOL(symlink);
 
-static int fs_match(struct device_d *dev, struct driver_d *drv)
+int stat(const char *filename, struct stat *s)
+{
+	return __stat(filename, s, LOOKUP_FOLLOW);
+}
+EXPORT_SYMBOL(stat);
+
+int lstat(const char *filename, struct stat *s)
 {
-	return strcmp(dev->name, drv->name) ? -1 : 0;
+	return __stat(filename, s, 0);
 }
+EXPORT_SYMBOL(lstat);
 
-static int fs_probe(struct device_d *dev)
+static char *__dpath(struct dentry *dentry, struct dentry *root)
 {
-	struct fs_device_d *fsdev = dev_to_fs_device(dev);
-	struct driver_d *drv = dev->driver;
-	struct fs_driver_d *fsdrv = container_of(drv, struct fs_driver_d, drv);
-	int ret;
+	char *res, *ppath;
 
-	ret = dev->driver->probe(dev);
-	if (ret)
-		return ret;
+	if (dentry == root)
+		return NULL;
+	if (dentry == d_root)
+		return NULL;
 
-	fsdev->driver = fsdrv;
+	while (IS_ROOT(dentry)) {
+		struct fs_device_d *fsdev;
 
-	list_add_tail(&fsdev->list, &fs_device_list);
+		for_each_fs_device(fsdev) {
+			if (dentry == fsdev->vfsmount.mnt_root) {
+				dentry = fsdev->vfsmount.mountpoint;
+				break;
+			}
+		}
+	}
 
-	if (!fs_dev_root)
-		fs_dev_root = fsdev;
+	ppath = __dpath(dentry->d_parent, root);
+	if (ppath)
+		res = basprintf("%s/%s", ppath, dentry->name);
+	else
+		res = basprintf("/%s", dentry->name);
+	free(ppath);
 
-	return 0;
+	return res;
 }
 
-static void fs_remove(struct device_d *dev)
+/** dpath - return path of a dentry
+ * @dentry: The dentry to return the path from
+ * @root:   The dentry up to which the path is followed
+ *
+ * Get the path of a dentry. The path is followed up to
+ * @root or the root ("/") dentry, whatever is found first.
+ *
+ * Return: Dynamically allocated string containing the path
+ */
+char *dpath(struct dentry *dentry, struct dentry *root)
 {
-	struct fs_device_d *fsdev = dev_to_fs_device(dev);
-
-	if (fsdev->dev.driver) {
-		dev->driver->remove(dev);
-		list_del(&fsdev->list);
-	}
+	char *res;
 
-	free(fsdev->path);
-	free(fsdev->options);
+	if (dentry == root && dentry == d_root)
+		return strdup("/");
 
-	if (fsdev == fs_dev_root)
-		fs_dev_root = NULL;
+	res = __dpath(dentry, root);
 
-	if (fsdev->cdev)
-		cdev_close(fsdev->cdev);
+	return res;
+}
 
-	if (fsdev->loop)
-		cdev_remove_loop(fsdev->cdev);
+/**
+ * canonicalize_path - resolve links in path
+ * @pathname: The input path
+ *
+ * This function resolves all links in @pathname and returns
+ * a path without links in it.
+ *
+ * Return: Path with links resolved. Allocated, must be freed after use.
+ */
+char *canonicalize_path(const char *pathname)
+{
+	char *res = NULL;
+	struct path path;
+	int ret;
 
-	free(fsdev->backingstore);
-	free(fsdev);
-}
+	ret = filename_lookup(AT_FDCWD, getname(pathname), LOOKUP_FOLLOW, &path);
+	if (ret)
+		goto out;
 
-struct bus_type fs_bus = {
-	.name = "fs",
-	.match = fs_match,
-	.probe = fs_probe,
-	.remove = fs_remove,
-};
+	res = dpath(path.dentry, d_root);
+out:
+	if (ret)
+		errno = -ret;
 
-static int fs_bus_init(void)
-{
-	return bus_register(&fs_bus);
+	return res;
 }
-pure_initcall(fs_bus_init);
 
-int register_fs_driver(struct fs_driver_d *fsdrv)
+const char *getcwd(void)
 {
-	fsdrv->drv.bus = &fs_bus;
-	register_driver(&fsdrv->drv);
-
-	return 0;
+	return cwd;
 }
-EXPORT_SYMBOL(register_fs_driver);
+EXPORT_SYMBOL(getcwd);
 
-static const char *detect_fs(const char *filename, const char *fsoptions)
+int chdir(const char *pathname)
 {
-	enum filetype type;
-	struct driver_d *drv;
-	struct fs_driver_d *fdrv;
-	bool loop = false;
-	unsigned long long offset = 0;
-
-	parseopt_b(fsoptions, "loop", &loop);
-	parseopt_llu_suffix(fsoptions, "offset", &offset);
-	if (loop)
-		type = file_name_detect_type_offset(filename, offset);
-	else
-		type = cdev_detect_type(filename);
-
-	if (type == filetype_unknown)
-		return NULL;
+	char *realpath;
+	struct path path;
+	int ret;
 
-	bus_for_each_driver(&fs_bus, drv) {
-		fdrv = drv_to_fs_driver(drv);
+	ret = filename_lookup(AT_FDCWD, getname(pathname), LOOKUP_FOLLOW, &path);
+	if (ret)
+		goto out;
 
-		if (type == fdrv->type)
-			return drv->name;
+	if (!d_is_dir(path.dentry)) {
+		ret = -ENOTDIR;
+		goto out;
 	}
 
-	return NULL;
-}
-
-int fsdev_open_cdev(struct fs_device_d *fsdev)
-{
-	unsigned long long offset = 0;
+	realpath = dpath(path.dentry, d_root);
+	strcpy(cwd, realpath);
+	free(realpath);
+	cwd_dentry = path.dentry;
+	cwd_mnt = path.mnt;
 
-	parseopt_b(fsdev->options, "loop", &fsdev->loop);
-	parseopt_llu_suffix(fsdev->options, "offset", &offset);
-	if (fsdev->loop)
-		fsdev->cdev = cdev_create_loop(fsdev->backingstore, O_RDWR,
-					       offset);
-	else
-		fsdev->cdev = cdev_open(fsdev->backingstore, O_RDWR);
-	if (!fsdev->cdev)
-		return -EINVAL;
+	ret = 0;
 
-	fsdev->dev.parent = fsdev->cdev->dev;
-	fsdev->parent_device = fsdev->cdev->dev;
+out:
+	if (ret)
+		errno = -ret;
 
-	return 0;
+	return ret;
 }
+EXPORT_SYMBOL(chdir);
 
 /*
  * Mount a device to a directory.
  * We do this by registering a new device on which the filesystem
  * driver will match.
  */
-int mount(const char *device, const char *fsname, const char *_path,
+int mount(const char *device, const char *fsname, const char *pathname,
 		const char *fsoptions)
 {
 	struct fs_device_d *fsdev;
 	int ret;
-	char *path = normalise_path(_path);
-
-	if (!fsoptions)
-		fsoptions = "";
+	struct path path = {};
 
-	debug("mount: %s on %s type %s, options=%s\n",
-			device, path, fsname, fsoptions);
+	if (d_root) {
+		ret = filename_lookup(AT_FDCWD, getname(pathname), LOOKUP_FOLLOW, &path);
+		if (ret)
+			goto out;
 
-	if (fs_dev_root) {
-		struct stat s;
+		if (!d_is_dir(path.dentry)) {
+			ret = -ENOTDIR;
+			goto out;
+		}
 
-		fsdev = get_fsdevice_by_path(path);
-		if (fsdev != fs_dev_root) {
-			printf("sorry, no nested mounts\n");
+		if (IS_ROOT(path.dentry) || d_mountpoint(path.dentry)) {
 			ret = -EBUSY;
-			goto err_free_path;
-		}
-		ret = lstat(path, &s);
-		if (ret)
-			goto err_free_path;
-		if (!S_ISDIR(s.st_mode)) {
-			ret = -ENOTDIR;
-			goto err_free_path;
+			goto out;
 		}
 	} else {
-		/* no mtab, so we only allow to mount on '/' */
-		if (*path != '/' || *(path + 1)) {
-			ret = -ENOTDIR;
-			goto err_free_path;
-		}
+		if (pathname[0] != '/' || pathname[1])
+			return -EINVAL;
 	}
 
+	if (!fsoptions)
+		fsoptions = "";
+
+	debug("mount: %s on %s type %s, options=%s\n",
+			device, pathname, fsname, fsoptions);
+
 	if (!fsname)
 		fsname = detect_fs(device, fsoptions);
 
-	if (!fsname)
-		return -ENOENT;
+	if (!fsname) {
+		ret = -ENOENT;
+		goto out;
+	}
 
 	fsdev = xzalloc(sizeof(struct fs_device_d));
 	fsdev->backingstore = xstrdup(device);
 	safe_strncpy(fsdev->dev.name, fsname, MAX_DRIVER_NAME);
 	fsdev->dev.id = get_free_deviceid(fsdev->dev.name);
-	fsdev->path = xstrdup(path);
 	fsdev->dev.bus = &fs_bus;
 	fsdev->options = xstrdup(fsoptions);
 
+	init_super(&fsdev->sb);
+
+	if (path.mnt)
+		mntget(path.mnt);
+
 	ret = register_device(&fsdev->dev);
 	if (ret)
 		goto err_register;
@@ -1391,6 +2708,22 @@ int mount(const char *device, const char *fsname, const char *_path,
 		goto err_no_driver;
 	}
 
+	if (d_root) {
+		fsdev->vfsmount.mountpoint = path.dentry;
+		fsdev->vfsmount.parent = path.mnt;
+		fsdev->vfsmount.mountpoint->d_flags |= DCACHE_MOUNTED;
+	} else {
+		d_root = fsdev->sb.s_root;
+		path.dentry = d_root;
+		mnt_root = &fsdev->vfsmount;
+		fsdev->vfsmount.mountpoint = d_root;
+		fsdev->vfsmount.parent = &fsdev->vfsmount;
+	}
+
+	fsdev->path = dpath(path.dentry, d_root);
+
+	fsdev->vfsmount.mnt_root = fsdev->sb.s_root;
+
 	if (!fsdev->linux_rootarg && fsdev->cdev && fsdev->cdev->partuuid[0] != 0) {
 		char *str = basprintf("root=PARTUUID=%s",
 					fsdev->cdev->partuuid);
@@ -1398,7 +2731,7 @@ int mount(const char *device, const char *fsname, const char *_path,
 		fsdev_set_linux_rootarg(fsdev, str);
 	}
 
-	free(path);
+	path_put(&path);
 
 	return 0;
 
@@ -1406,8 +2739,8 @@ err_no_driver:
 	unregister_device(&fsdev->dev);
 err_register:
 	fs_remove(&fsdev->dev);
-err_free_path:
-	free(path);
+out:
+	path_put(&path);
 
 	errno = -ret;
 
@@ -1415,69 +2748,39 @@ err_free_path:
 }
 EXPORT_SYMBOL(mount);
 
-static int fsdev_umount(struct fs_device_d *fsdev)
-{
-	return unregister_device(&fsdev->dev);
-}
-
-/**
- * umount_by_cdev Use a cdev struct to umount all mounted filesystems
- * @param cdev cdev to the according device
- * @return 0 on success or if cdev was not mounted, -errno otherwise
- */
-int umount_by_cdev(struct cdev *cdev)
+int umount(const char *pathname)
 {
-	struct fs_device_d *fs;
-	struct fs_device_d *fs_tmp;
-	int first_error = 0;
+	struct fs_device_d *fsdev = NULL, *f;
+	struct path path = {};
+	int ret;
 
-	for_each_fs_device_safe(fs_tmp, fs) {
-		int ret;
+	ret = filename_lookup(AT_FDCWD, getname(pathname), LOOKUP_FOLLOW, &path);
+	if (ret)
+		return ret;
 
-		if (fs->cdev == cdev) {
-			ret = fsdev_umount(fs);
-			if (ret) {
-				pr_err("Failed umounting %s, %d, continuing anyway\n",
-				       fs->path, ret);
-				if (!first_error)
-					first_error = ret;
-			}
-		}
+	if (path.dentry == d_root) {
+		path_put(&path);
+		return -EBUSY;
 	}
 
-	return first_error;
-}
-EXPORT_SYMBOL(umount_by_cdev);
-
-int umount(const char *pathname)
-{
-	struct fs_device_d *fsdev = NULL, *f;
-	char *p = normalise_path(pathname);
-
 	for_each_fs_device(f) {
-		if (!strcmp(p, f->path)) {
+		if (path.dentry == f->vfsmount.mnt_root) {
 			fsdev = f;
 			break;
 		}
 	}
 
+	path_put(&path);
+
 	if (!fsdev) {
-		struct cdev *cdev = cdev_open(p, O_RDWR);
+		struct cdev *cdev = cdev_open(pathname, O_RDWR);
 
 		if (cdev) {
-			free(p);
 			cdev_close(cdev);
 			return umount_by_cdev(cdev);
 		}
 	}
 
-	free(p);
-
-	if (f == fs_dev_root && !list_is_singular(&fs_device_list)) {
-		errno = EBUSY;
-		return -EBUSY;
-	}
-
 	if (!fsdev) {
 		errno = EFAULT;
 		return -EFAULT;
@@ -1487,386 +2790,249 @@ int umount(const char *pathname)
 }
 EXPORT_SYMBOL(umount);
 
-DIR *opendir(const char *pathname)
-{
-	DIR *dir = NULL;
-	struct fs_device_d *fsdev;
-	struct fs_driver_d *fsdrv;
-	char *p = canonicalize_path(pathname);
-	char *freep = p;
-	int ret;
-	struct stat s;
-
-	ret = stat(pathname, &s);
-	if (ret)
-		goto out;
-
-	if (!S_ISDIR(s.st_mode)) {
-		ret = -ENOTDIR;
-		goto out;
-	}
-
-	fsdev = get_fs_device_and_root_path(&p);
-	if (!fsdev) {
-		ret = -ENOENT;
-		goto out;
-	}
-	fsdrv = fsdev->driver;
-
-	debug("opendir: fsdrv: %p\n",fsdrv);
-
-	dir = fsdrv->opendir(&fsdev->dev, p);
-	if (dir) {
-		dir->dev = &fsdev->dev;
-		dir->fsdrv = fsdrv;
-	} else {
-		/*
-		 * FIXME: The fs drivers should return ERR_PTR here so that
-		 * we are able to forward the error
-		 */
-		ret = -EINVAL;
-	}
-
-out:
-	free(freep);
-
-	if (ret)
-		errno = -ret;
-
-	return dir;
-}
-EXPORT_SYMBOL(opendir);
-
-struct dirent *readdir(DIR *dir)
-{
-	struct dirent *ent;
-
-	if (!dir)
-		return NULL;
+#ifdef CONFIG_FS_AUTOMOUNT
 
-	ent = dir->fsdrv->readdir(dir->dev, dir);
+#define AUTOMOUNT_IS_FILE (1 << 0)
 
-	if (!ent)
-		errno = EBADF;
+struct automount {
+	char *path;
+	struct dentry *dentry;
+	char *cmd;
+	struct list_head list;
+	unsigned int flags;
+};
 
-	return ent;
-}
-EXPORT_SYMBOL(readdir);
+static LIST_HEAD(automount_list);
 
-int closedir(DIR *dir)
+static void automount_remove_dentry(struct dentry *dentry)
 {
-	int ret;
+	struct automount *am;
 
-	if (!dir) {
-		errno = EBADF;
-		return -EBADF;
+	list_for_each_entry(am, &automount_list, list) {
+		if (dentry == am->dentry)
+			goto found;
 	}
 
-	ret = dir->fsdrv->closedir(dir->dev, dir);
-	if (ret)
-		errno = -ret;
-
-	return ret;
+	return;
+found:
+	list_del(&am->list);
+	dput(am->dentry);
+	free(am->path);
+	free(am->cmd);
+	free(am);
 }
-EXPORT_SYMBOL(closedir);
 
-int stat(const char *filename, struct stat *s)
+void automount_remove(const char *pathname)
 {
-	char *path = canonicalize_path(filename);
+	struct path path;
 	int ret;
 
-	if (IS_ERR(path))
-		return PTR_ERR(path);
-
-	ret = lstat(path, s);
+	ret = filename_lookup(AT_FDCWD, getname(pathname), LOOKUP_FOLLOW, &path);
+	if (ret)
+		return;
 
-	free(path);
+	automount_remove_dentry(path.dentry);
 
-	return ret;
+	path_put(&path);
 }
-EXPORT_SYMBOL(stat);
+EXPORT_SYMBOL(automount_remove);
 
-static int __lstat(const char *filename, struct stat *s)
+int automount_add(const char *pathname, const char *cmd)
 {
-	struct fs_driver_d *fsdrv;
-	struct fs_device_d *fsdev;
-	char *f = normalise_path(filename);
-	char *freep = f;
+	struct automount *am = xzalloc(sizeof(*am));
+	struct path path;
 	int ret;
 
-	automount_mount(f, 1);
-
-	memset(s, 0, sizeof(struct stat));
+	ret = filename_lookup(AT_FDCWD, getname(pathname), LOOKUP_FOLLOW, &path);
+	if (ret)
+		return ret;
 
-	fsdev = get_fsdevice_by_path(f);
-	if (!fsdev) {
-		ret = -ENOENT;
+	if (!d_is_dir(path.dentry)) {
+		ret = -ENOTDIR;
 		goto out;
 	}
 
-	if (fsdev != fs_dev_root && strcmp(f, fsdev->path))
-		f += strlen(fsdev->path);
-	else
-		fsdev = fs_dev_root;
+	am->path = dpath(path.dentry, d_root);
+	am->dentry = dget(path.dentry);
+	am->dentry->d_flags |= DCACHE_NEED_AUTOMOUNT;
+	am->cmd = xstrdup(cmd);
 
-	fsdrv = fsdev->driver;
+	automount_remove_dentry(am->dentry);
 
-	if (*f == 0)
-		f = "/";
+	list_add_tail(&am->list, &automount_list);
 
-	ret = fsdrv->stat(&fsdev->dev, f, s);
+	ret = 0;
 out:
-	free(freep);
-
-	if (ret)
-		errno = -ret;
+	path_put(&path);
 
 	return ret;
 }
+EXPORT_SYMBOL(automount_add);
 
-int lstat(const char *filename, struct stat *s)
+void cdev_create_default_automount(struct cdev *cdev)
 {
-	char *f = canonicalize_dir(filename);
-	int ret;
-
-	if (IS_ERR(f))
-		return PTR_ERR(f);
+	char *path, *cmd;
 
-	ret = __lstat(f, s);
+	path = basprintf("/mnt/%s", cdev->name);
+	cmd = basprintf("mount %s", cdev->name);
 
-	free(f);
+	make_directory(path);
+	automount_add(path, cmd);
 
-	return ret;
+	free(cmd);
+	free(path);
 }
-EXPORT_SYMBOL(lstat);
 
-int fstat(int fd, struct stat *s)
+void automount_print(void)
 {
-	FILE *f;
-	struct fs_device_d *fsdev;
-
-	if (check_fd(fd))
-		return -errno;
-
-	f = &files[fd];
-
-	fsdev = f->fsdev;
+	struct automount *am;
 
-	return fsdev->driver->stat(&fsdev->dev, f->path, s);
+	list_for_each_entry(am, &automount_list, list)
+		printf("%-20s %s\n", am->path, am->cmd);
 }
-EXPORT_SYMBOL(fstat);
+EXPORT_SYMBOL(automount_print);
 
-int mkdir (const char *pathname, mode_t mode)
+static int automount_mount(struct dentry *dentry)
 {
-	struct fs_driver_d *fsdrv;
-	struct fs_device_d *fsdev;
-	char *p = canonicalize_path(pathname);
-	char *freep = p;
-	int ret;
-	struct stat s;
-
-	ret = parent_check_directory(p);
-	if (ret)
-		goto out;
-
-	ret = stat(pathname, &s);
-	if (!ret) {
-		ret = -EEXIST;
-		goto out;
-	}
-
-	fsdev = get_fs_device_and_root_path(&p);
-	if (!fsdev) {
-		ret = -ENOENT;
-		goto out;
-	}
-	fsdrv = fsdev->driver;
-
-	if (fsdrv->mkdir)
-		ret = fsdrv->mkdir(&fsdev->dev, p);
-	else
-		ret = -EROFS;
-out:
-	free(freep);
+	struct automount *am;
+	int ret = -ENOENT;
+	static int in_automount;
 
-	if (ret)
-		errno = -ret;
+	if (in_automount)
+		return -EINVAL;
 
-	return ret;
-}
-EXPORT_SYMBOL(mkdir);
+	in_automount++;
 
-int rmdir (const char *pathname)
-{
-	struct fs_driver_d *fsdrv;
-	struct fs_device_d *fsdev;
-	char *p = canonicalize_path(pathname);
-	char *freep = p;
-	int ret;
-	struct stat s;
+	list_for_each_entry(am, &automount_list, list) {
+		if (am->dentry != dentry)
+			continue;
 
-	ret = lstat(pathname, &s);
-	if (ret)
-		goto out;
-	if (!S_ISDIR(s.st_mode)) {
-		ret = -ENOTDIR;
-		goto out;
-	}
+		setenv("automount_path", am->path);
+		export("automount_path");
+		ret = run_command(am->cmd);
+		setenv("automount_path", NULL);
 
-	if (!dir_is_empty(pathname)) {
-		ret = -ENOTEMPTY;
-		goto out;
-	}
+		if (ret) {
+			printf("running automount command '%s' failed\n",
+					am->cmd);
+			ret = -ENODEV;
+		}
 
-	fsdev = get_fs_device_and_root_path(&p);
-	if (!fsdev) {
-		ret = -ENODEV;
-		goto out;
+		break;
 	}
-	fsdrv = fsdev->driver;
-
-	if (fsdrv->rmdir)
-		ret = fsdrv->rmdir(&fsdev->dev, p);
-	else
-		ret = -EROFS;
-out:
-	free(freep);
 
-	if (ret)
-		errno = -ret;
+	in_automount--;
 
 	return ret;
 }
-EXPORT_SYMBOL(rmdir);
-
-/*
- * cdev_get_mount_path - return the path a cdev is mounted on
- *
- * If a cdev is mounted return the path it's mounted on, NULL
- * otherwise.
- */
-const char *cdev_get_mount_path(struct cdev *cdev)
-{
-	struct fs_device_d *fsdev;
 
-	for_each_fs_device(fsdev) {
-		if (fsdev->cdev && fsdev->cdev == cdev)
-			return fsdev->path;
-	}
+BAREBOX_MAGICVAR(automount_path, "mountpath passed to automount scripts");
 
-	return NULL;
+#else
+static int automount_mount(const char *path)
+{
+	return 0;
 }
+#endif /* CONFIG_FS_AUTOMOUNT */
+
+#ifdef DEBUG
 
 /*
- * cdev_mount_default - mount a cdev to the default path
- *
- * If a cdev is already mounted return the path it's mounted on, otherwise
- * mount it to /mnt/<cdevname> and return the path. Returns an error pointer
- * on failure.
+ * Some debug commands, helpful to debug the dcache implementation
  */
-const char *cdev_mount_default(struct cdev *cdev, const char *fsoptions)
+#include <command.h>
+
+static int do_lookup_dentry(int argc, char *argv[])
 {
-	const char *path;
-	char *newpath, *devpath;
+	struct path path;
 	int ret;
+	char *canon;
+	char mode[16];
 
-	/*
-	 * If this cdev is already mounted somewhere use this path
-	 * instead of mounting it again to avoid corruption on the
-	 * filesystem. Note this ignores eventual fsoptions though.
-	 */
-	path = cdev_get_mount_path(cdev);
-	if (path)
-		return path;
-
-	newpath = basprintf("/mnt/%s", cdev->name);
-	make_directory(newpath);
-
-	devpath = basprintf("/dev/%s", cdev->name);
-
-	ret = mount(devpath, NULL, newpath, fsoptions);
-
-	free(devpath);
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
 
+	ret = filename_lookup(AT_FDCWD, getname(argv[1]), 0, &path);
 	if (ret) {
-		free(newpath);
-		return ERR_PTR(ret);
+		printf("Cannot lookup path \"%s\": %s\n",
+		       argv[1], strerror(-ret));
+		return 1;
 	}
 
-	return cdev_get_mount_path(cdev);
-}
+	canon = canonicalize_path(argv[1]);
+	
+	printf("path \"%s\":\n", argv[1]);
+	printf("dentry: 0x%p\n", path.dentry);
+	printf("dentry refcnt: %d\n", path.dentry->d_count);
+	if (path.dentry->d_inode) {
+		struct inode *inode = path.dentry->d_inode;
+		printf("inode: 0x%p\n", inode);
+		printf("inode refcnt: %d\n", inode->i_count);
+		printf("Type: %s\n", mkmodestr(inode->i_mode, mode));
+	}
+	printf("canonical path: \"%s\"\n", canon);
 
-/*
- * mount_all - iterate over block devices and mount all devices we are able to
- */
-void mount_all(void)
-{
-	struct device_d *dev;
-	struct block_device *bdev;
+	path_put(&path);
+	free(canon);
 
-	if (!IS_ENABLED(CONFIG_BLOCK))
-		return;
+        return 0;
+}
 
-	for_each_device(dev)
-		device_detect(dev);
+BAREBOX_CMD_START(lookup_dentry)
+        .cmd            = do_lookup_dentry,
+BAREBOX_CMD_END
 
-	for_each_block_device(bdev) {
-		struct cdev *cdev = &bdev->cdev;
+static struct dentry *debug_follow_mount(struct dentry *dentry)
+{
+	struct fs_device_d *fsdev;
+	unsigned managed = dentry->d_flags;
 
-		list_for_each_entry(cdev, &bdev->dev->cdevs, devices_list)
-			cdev_mount_default(cdev, NULL);
+	if (managed & DCACHE_MOUNTED) {
+		for_each_fs_device(fsdev) {
+			if (dentry == fsdev->vfsmount.mountpoint)
+				return fsdev->vfsmount.mnt_root;
+		}
+		return NULL;
+	} else {
+		return dentry;
 	}
 }
 
-void fsdev_set_linux_rootarg(struct fs_device_d *fsdev, const char *str)
+static void debug_dump_dentries(struct dentry *parent, int indent)
 {
-	fsdev->linux_rootarg = xstrdup(str);
+	int i;
+	struct dentry *dentry, *mp;
 
-	dev_add_param_fixed(&fsdev->dev, "linux.bootargs", fsdev->linux_rootarg);
-}
+	for (i = 0; i < indent; i++)
+		printf("\t");
+again:
+	printf("%s d: %p refcnt: %d, inode %p refcnt %d\n",
+	       parent->name, parent, parent->d_count, parent->d_inode,
+		parent->d_inode ? parent->d_inode->i_count : -1);
 
-/**
- * path_get_linux_rootarg() - Given a path return a suitable root= option for
- *                            Linux
- * @path: The path
- *
- * Return: A string containing the root= option or an ERR_PTR. the returned
- *         string must be freed by the caller.
- */
-char *path_get_linux_rootarg(const char *path)
-{
-	struct fs_device_d *fsdev;
-	const char *str;
+	mp = debug_follow_mount(parent);
+	if (mp != parent) {
+		for (i = 0; i < indent; i++)
+			printf("\t");
+		printf("MOUNT: ");
 
-	fsdev = get_fsdevice_by_path(path);
-	if (!fsdev)
-		return ERR_PTR(-EINVAL);
+		parent = mp;
 
-	str = dev_get_param(&fsdev->dev, "linux.bootargs");
-	if (!str)
-		return ERR_PTR(-ENOSYS);
+		goto again;
+	}
 
-	return xstrdup(str);
+	list_for_each_entry(dentry, &parent->d_subdirs, d_child)
+		debug_dump_dentries(dentry, indent + 1);
 }
 
-/**
- * __is_tftp_fs() - return true when path is mounted on TFTP
- * @path: The path
- *
- * Do not use directly, use is_tftp_fs instead.
- *
- * Return: true when @path is on TFTP, false otherwise
- */
-bool __is_tftp_fs(const char *path)
+static int do_debug_fs_dump(int argc, char *argv[])
 {
-	struct fs_device_d *fsdev;
-
-	fsdev = get_fsdevice_by_path(path);
-	if (!fsdev)
-		return false;
-
-	if (strcmp(fsdev->driver->drv.name, "tftp"))
-		return false;
+	debug_dump_dentries(d_root, 0);
 
-	return true;
+        return 0;
 }
+
+BAREBOX_CMD_START(debug_fs_dump)
+        .cmd            = do_debug_fs_dump,
+BAREBOX_CMD_END
+#endif
diff --git a/fs/libfs.c b/fs/libfs.c
new file mode 100644
index 0000000000..e1c038757b
--- /dev/null
+++ b/fs/libfs.c
@@ -0,0 +1,87 @@
+#include <common.h>
+#include <fs.h>
+#include <linux/fs.h>
+
+/*
+ * Lookup the data. This is trivial - if the dentry didn't already
+ * exist, we know it is negative.  Set d_op to delete negative dentries.
+ */
+struct dentry *simple_lookup(struct inode *dir, struct dentry *dentry, unsigned int flags)
+{
+	return NULL;
+}
+
+/* Relationship between i_mode and the DT_xxx types */
+static inline unsigned char dt_type(struct inode *inode)
+{
+	return (inode->i_mode >> 12) & 15;
+}
+
+int dcache_readdir(struct file *file, struct dir_context *ctx)
+{
+	struct dentry *dentry = file->f_path.dentry;
+	struct dentry *d;
+
+	dir_emit_dots(file, ctx);
+
+	list_for_each_entry(d, &dentry->d_subdirs, d_child) {
+		if (d_is_negative(d))
+			continue;
+		dir_emit(ctx, d->d_name.name, d->d_name.len,
+				d_inode(d)->i_ino, dt_type(d_inode(d)));
+	}
+
+        return 0;
+}
+
+const struct file_operations simple_dir_operations = {
+	.iterate = dcache_readdir,
+};
+
+int simple_empty(struct dentry *dentry)
+{
+	struct dentry *child;
+	int ret = 0;
+
+	list_for_each_entry(child, &dentry->d_subdirs, d_child) {
+		if (d_is_positive(child))
+			goto out;
+	}
+	ret = 1;
+out:
+	return ret;
+}
+
+int simple_unlink(struct inode *dir, struct dentry *dentry)
+{
+	struct inode *inode = d_inode(dentry);
+
+	drop_nlink(inode);
+	dput(dentry);
+
+	return 0;
+}
+
+int simple_rmdir(struct inode *dir, struct dentry *dentry)
+{
+	if (IS_ROOT(dentry))
+		return -EBUSY;
+
+	if (!simple_empty(dentry))
+		return -ENOTEMPTY;
+
+	drop_nlink(d_inode(dentry));
+	simple_unlink(dir, dentry);
+	drop_nlink(dir);
+
+	return 0;
+}
+
+const char *simple_get_link(struct dentry *dentry, struct inode *inode)
+{
+	return inode->i_link;
+}
+
+const struct inode_operations simple_symlink_inode_operations = {
+	.get_link = simple_get_link,
+};
diff --git a/fs/pstore/Kconfig b/fs/pstore/Kconfig
index 0c6f136920..a0e9a302f9 100644
--- a/fs/pstore/Kconfig
+++ b/fs/pstore/Kconfig
@@ -1,4 +1,5 @@
 menuconfig FS_PSTORE
+	depends on BROKEN
 	bool
 	prompt "pstore fs support"
 	help
diff --git a/fs/squashfs/Kconfig b/fs/squashfs/Kconfig
index 19b8297af6..d58843b640 100644
--- a/fs/squashfs/Kconfig
+++ b/fs/squashfs/Kconfig
@@ -1,6 +1,7 @@
 menuconfig FS_SQUASHFS
 	bool
 	prompt "squashfs support"
+	depends on BROKEN
 	help
 	  Saying Y here includes support for SquashFS 4.0 (a Compressed
 	  Read-Only File System).  Squashfs is a highly compressed read-only
diff --git a/fs/ubifs/Kconfig b/fs/ubifs/Kconfig
index 889a2be97a..d013ea5780 100644
--- a/fs/ubifs/Kconfig
+++ b/fs/ubifs/Kconfig
@@ -1,6 +1,7 @@
 menuconfig FS_UBIFS
 	bool
 	depends on MTD_UBI
+	depends on BROKEN
 	prompt "ubifs support"
 
 if FS_UBIFS
diff --git a/include/dirent.h b/include/dirent.h
index 5ee4c2063e..1df5d90452 100644
--- a/include/dirent.h
+++ b/include/dirent.h
@@ -1,6 +1,8 @@
 #ifndef __DIRENT_H
 #define __DIRENT_H
 
+#include <linux/list.h>
+
 struct dirent {
 	char d_name[256];
 };
@@ -11,6 +13,7 @@ typedef struct dir {
 	struct node_d *node;
 	struct dirent d;
 	void *priv; /* private data for the fs driver */
+	struct list_head entries;
 } DIR;
 
 DIR *opendir(const char *pathname);
diff --git a/include/fs.h b/include/fs.h
index e6fcd044dd..dcb64405b3 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -31,14 +31,15 @@ typedef struct filep {
 	/* private fields. Mapping between FILE and filedescriptor number     */
 	int no;
 	char in_use;
+
+	struct inode *f_inode;
+	struct dentry *dentry;
 } FILE;
 
 #define FS_DRIVER_NO_DEV	1
 
 struct fs_driver_d {
 	int (*probe) (struct device_d *dev);
-	int (*mkdir)(struct device_d *dev, const char *pathname);
-	int (*rmdir)(struct device_d *dev, const char *pathname);
 
 	/* create a file. The file is guaranteed to not exist */
 	int (*create)(struct device_d *dev, const char *pathname, mode_t mode);
@@ -47,11 +48,6 @@ struct fs_driver_d {
 	/* Truncate a file to given size */
 	int (*truncate)(struct device_d *dev, FILE *f, ulong size);
 
-	int (*symlink)(struct device_d *dev, const char *pathname,
-		       const char *newpath);
-	int (*readlink)(struct device_d *dev, const char *pathname, char *name,
-			size_t size);
-
 	int (*open)(struct device_d *dev, FILE *f, const char *pathname);
 	int (*close)(struct device_d *dev, FILE *f);
 	int (*read)(struct device_d *dev, FILE *f, void *buf, size_t size);
@@ -59,11 +55,6 @@ struct fs_driver_d {
 	int (*flush)(struct device_d *dev, FILE *f);
 	loff_t (*lseek)(struct device_d *dev, FILE *f, loff_t pos);
 
-	struct dir* (*opendir)(struct device_d *dev, const char *pathname);
-	struct dirent* (*readdir)(struct device_d *dev, struct dir *dir);
-	int (*closedir)(struct device_d *dev, DIR *dir);
-	int (*stat)(struct device_d *dev, const char *file, struct stat *stat);
-
 	int (*ioctl)(struct device_d *dev, FILE *f, int request, void *buf);
 	int (*erase)(struct device_d *dev, FILE *f, loff_t count,
 			loff_t offset);
@@ -99,6 +90,10 @@ struct fs_device_d {
 	struct list_head list;
 	char *options;
 	char *linux_rootarg;
+
+	struct super_block sb;
+
+	struct vfsmount vfsmount;
 };
 
 bool __is_tftp_fs(const char *path);
@@ -135,12 +130,6 @@ int ls(const char *path, ulong flags);
 
 char *mkmodestr(unsigned long mode, char *str);
 
-/*
- * This function turns 'path' into an absolute path and removes all occurrences
- * of "..", "." and double slashes. The returned string must be freed wit free().
- */
-char *normalise_path(const char *path);
-
 char *canonicalize_path(const char *pathname);
 
 char *get_mounted_path(const char *path);
diff --git a/include/linux/dcache.h b/include/linux/dcache.h
index dfb466722c..16244129bf 100644
--- a/include/linux/dcache.h
+++ b/include/linux/dcache.h
@@ -53,6 +53,10 @@ struct dentry {
 	spinlock_t d_lock;		/* per dentry lock */
 	struct inode *d_inode;		/* Where the name belongs to - NULL is
 					 * negative */
+
+	unsigned int d_count;
+	const struct dentry_operations *d_op;
+
 	/*
 	 * The next three fields are touched by __d_lookup.  Place them here
 	 * so they all fit in a cache line.
@@ -65,8 +69,8 @@ struct dentry {
 	/*
 	 * d_child and d_rcu can share memory
 	 */
+	struct list_head d_child;       /* child of parent list */
 	struct list_head d_subdirs;	/* our children */
-	struct list_head d_alias;	/* inode alias list */
 	unsigned long d_time;		/* used by d_revalidate */
 	struct super_block *d_sb;	/* The root of the dentry tree */
 	void *d_fsdata;			/* fs-specific data */
@@ -74,7 +78,108 @@ struct dentry {
 	struct dcookie_struct *d_cookie; /* cookie, if any */
 #endif
 	int d_mounted;
-	unsigned char d_iname[DNAME_INLINE_LEN_MIN];	/* small names */
+	unsigned char *name;		/* all names */
+};
+
+struct dentry_operations {
 };
 
+struct dentry * d_make_root(struct inode *);
+void d_add(struct dentry *, struct inode *);
+struct dentry * d_alloc_anon(struct super_block *);
+void d_set_d_op(struct dentry *dentry, const struct dentry_operations *op);
+void d_instantiate(struct dentry *dentry, struct inode *inode);
+void d_delete(struct dentry *);
+struct dentry *dget(struct dentry *);
+void dput(struct dentry *);
+
+#define DCACHE_ENTRY_TYPE		0x00700000
+#define DCACHE_MISS_TYPE		0x00000000 /* Negative dentry (maybe fallthru to nowhere) */
+#define DCACHE_WHITEOUT_TYPE		0x00100000 /* Whiteout dentry (stop pathwalk) */
+#define DCACHE_DIRECTORY_TYPE		0x00200000 /* Normal directory */
+#define DCACHE_AUTODIR_TYPE		0x00300000 /* Lookupless directory (presumed automount) */
+#define DCACHE_REGULAR_TYPE		0x00400000 /* Regular file type (or fallthru to such) */
+#define DCACHE_SPECIAL_TYPE		0x00500000 /* Other file type (or fallthru to such) */
+#define DCACHE_SYMLINK_TYPE		0x00600000 /* Symlink (or fallthru to such) */
+
+#define DCACHE_FALLTHRU			0x01000000 /* Fall through to lower layer */
+#define DCACHE_CANT_MOUNT		0x00000100
+#define DCACHE_MOUNTED                  0x00010000 /* is a mountpoint */
+#define DCACHE_NEED_AUTOMOUNT           0x00020000 /* handle automount on this dir */
+#define DCACHE_MANAGED_DENTRY \
+		(DCACHE_MOUNTED|DCACHE_NEED_AUTOMOUNT)
+
+static inline bool d_mountpoint(const struct dentry *dentry)
+{
+	return dentry->d_flags & DCACHE_MOUNTED;
+}
+
+/*
+ * Directory cache entry type accessor functions.
+ */
+static inline unsigned __d_entry_type(const struct dentry *dentry)
+{
+	return dentry->d_flags & DCACHE_ENTRY_TYPE;
+}
+
+static inline bool d_is_miss(const struct dentry *dentry)
+{
+	return __d_entry_type(dentry) == DCACHE_MISS_TYPE;
+}
+
+static inline bool d_can_lookup(const struct dentry *dentry)
+{
+	return __d_entry_type(dentry) == DCACHE_DIRECTORY_TYPE;
+}
+
+static inline bool d_is_autodir(const struct dentry *dentry)
+{
+	return __d_entry_type(dentry) == DCACHE_AUTODIR_TYPE;
+}
+
+static inline bool d_is_dir(const struct dentry *dentry)
+{
+	return d_can_lookup(dentry) || d_is_autodir(dentry);
+}
+
+static inline bool d_is_symlink(const struct dentry *dentry)
+{
+	return __d_entry_type(dentry) == DCACHE_SYMLINK_TYPE;
+}
+
+static inline bool d_is_reg(const struct dentry *dentry)
+{
+	return __d_entry_type(dentry) == DCACHE_REGULAR_TYPE;
+}
+
+static inline bool d_is_special(const struct dentry *dentry)
+{
+	return __d_entry_type(dentry) == DCACHE_SPECIAL_TYPE;
+}
+
+static inline bool d_is_file(const struct dentry *dentry)
+{
+	return d_is_reg(dentry) || d_is_special(dentry);
+}
+
+static inline bool d_is_negative(const struct dentry *dentry)
+{
+	// TODO: check d_is_whiteout(dentry) also.
+	return d_is_miss(dentry);
+}
+
+static inline bool d_is_positive(const struct dentry *dentry)
+{
+	return !d_is_negative(dentry);
+}
+
+static inline struct inode *d_inode(const struct dentry *dentry)
+{
+	return dentry->d_inode;
+}
+
+#define IS_ROOT(x) ((x) == (x)->d_parent)
+
+char *dpath(struct dentry *dentry, struct dentry *root);
+
 #endif	/* __LINUX_DCACHE_H */
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 153c464470..4550e8feeb 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -34,7 +34,18 @@
 #define DT_SOCK		12
 #define DT_WHT		14
 
+/*
+ * This is the "filldir" function type, used by readdir() to let
+ * the kernel specify what kind of dirent layout it wants to have.
+ * This allows the kernel to read directories into kernel space or
+ * to have different dirent layouts depending on the binary type.
+ */
+struct dir_context;
+typedef int (*filldir_t)(struct dir_context *, const char *, int, loff_t, u64,
+			 unsigned);
+
 struct dir_context {
+	const filldir_t actor;
 	loff_t pos;
 };
 
@@ -94,12 +105,8 @@ struct inode {
 	};
 	uid_t			i_uid;
 	gid_t			i_gid;
-	dev_t			i_rdev;
 	u64			i_version;
 	loff_t			i_size;
-#ifdef __NEED_I_SIZE_ORDERED
-	seqcount_t		i_size_seqcount;
-#endif
 	struct timespec		i_atime;
 	struct timespec		i_mtime;
 	struct timespec		i_ctime;
@@ -107,39 +114,19 @@ struct inode {
 	blkcnt_t		i_blocks;
 	unsigned short          i_bytes;
 	umode_t			i_mode;
-	spinlock_t		i_lock;	/* i_blocks, i_bytes, maybe i_size */
-	struct mutex		i_mutex;
-	struct rw_semaphore	i_alloc_sem;
 	const struct inode_operations	*i_op;
 	const struct file_operations	*i_fop;	/* former ->i_op->default_file_ops */
 	struct super_block	*i_sb;
-	struct file_lock	*i_flock;
-#ifdef CONFIG_QUOTA
-	struct dquot		*i_dquot[MAXQUOTAS];
-#endif
-	struct list_head	i_devices;
-	int			i_cindex;
 
 	__u32			i_generation;
 
-#ifdef CONFIG_DNOTIFY
-	unsigned long		i_dnotify_mask; /* Directory notify events */
-	struct dnotify_struct	*i_dnotify; /* for directory notifications */
-#endif
-
-#ifdef CONFIG_INOTIFY
-	struct list_head	inotify_watches; /* watches on this inode */
-	struct mutex		inotify_mutex;	/* protects the watches list */
-#endif
-
 	unsigned long		i_state;
-	unsigned long		dirtied_when;	/* jiffies of first dirtying */
 
 	unsigned int		i_flags;
+	unsigned int		i_count;
+
+	char			*i_link;
 
-#ifdef CONFIG_SECURITY
-	void			*i_security;
-#endif
 	void			*i_private; /* fs or device private pointer */
 };
 
@@ -199,19 +186,9 @@ struct super_block {
 	   Cannot be worse than a second */
 	u32		   s_time_gran;
 
-	/*
-	 * Filesystem subtype.  If non-empty the filesystem type field
-	 * in /proc/mounts will be "type.subtype"
-	 */
-	char *s_subtype;
-
-	/*
-	 * Saved mount options for lazy filesystems using
-	 * generic_show_options()
-	 */
-	char *s_options;
-
 	/* Number of inodes with nlink == 0 but still referenced */
+
+	const struct dentry_operations *s_d_op; /* default d_op for dentries */
 };
 
 struct file_system_type {
@@ -405,4 +382,80 @@ static inline loff_t i_size_read(const struct inode *inode)
 	return inode->i_size;
 }
 
+struct inode *new_inode(struct super_block *sb);
+unsigned int get_next_ino(void);
+void iput(struct inode *);
+struct inode *iget(struct inode *);
+void inc_nlink(struct inode *inode);
+
+struct inode_operations {
+	struct dentry * (*lookup) (struct inode *,struct dentry *, unsigned int);
+
+	const char *(*get_link) (struct dentry *dentry, struct inode *inode);
+
+	int (*create) (struct inode *,struct dentry *, umode_t);
+	int (*link) (struct dentry *,struct inode *,struct dentry *);
+	int (*unlink) (struct inode *,struct dentry *);
+	int (*symlink) (struct inode *,struct dentry *,const char *);
+	int (*mkdir) (struct inode *,struct dentry *,umode_t);
+	int (*rmdir) (struct inode *,struct dentry *);
+	int (*rename) (struct inode *, struct dentry *,
+		       struct inode *, struct dentry *, unsigned int);
+};
+
+static inline ino_t parent_ino(struct dentry *dentry)
+{
+	return dentry->d_parent->d_inode->i_ino;
+}
+
+static inline bool dir_emit(struct dir_context *ctx,
+			    const char *name, int namelen,
+			    u64 ino, unsigned type)
+{
+	return ctx->actor(ctx, name, namelen, ctx->pos, ino, type) == 0;
+}
+
+static inline bool dir_emit_dot(struct file *file, struct dir_context *ctx)
+{
+	return ctx->actor(ctx, ".", 1, ctx->pos,
+			file->f_path.dentry->d_inode->i_ino, DT_DIR) == 0;
+}
+static inline bool dir_emit_dotdot(struct file *file, struct dir_context *ctx)
+{
+	return ctx->actor(ctx, "..", 2, ctx->pos,
+			parent_ino(file->f_path.dentry), DT_DIR) == 0;
+}
+
+static inline void dir_emit_dots(struct file *file, struct dir_context *ctx)
+{
+	if (ctx->pos == 0) {
+		dir_emit_dot(file, ctx);
+		ctx->pos = 1;
+	}
+	if (ctx->pos == 1) {
+		dir_emit_dotdot(file, ctx);
+		ctx->pos = 2;
+	}
+}
+
+struct file_operations {
+	int (*iterate) (struct file *, struct dir_context *);
+	ssize_t (*read) (struct file *, char __user *, size_t, loff_t *);
+	ssize_t (*write) (struct file *, const char __user *, size_t, loff_t *);
+	int (*ioctl) (struct file *, int request, void *buf);
+	int (*truncate) (struct file *, loff_t);
+};
+
+void drop_nlink(struct inode *inode);
+
+extern const struct file_operations simple_dir_operations;
+extern const struct inode_operations simple_symlink_inode_operations;
+
+int simple_empty(struct dentry *dentry);
+int simple_unlink(struct inode *dir, struct dentry *dentry);
+int simple_rmdir(struct inode *dir, struct dentry *dentry);
+struct dentry *simple_lookup(struct inode *, struct dentry *, unsigned int flags);
+int dcache_readdir(struct file *, struct dir_context *);
+const char *simple_get_link(struct dentry *dentry, struct inode *inode);
+
 #endif /* _LINUX_FS_H */
diff --git a/include/linux/mount.h b/include/linux/mount.h
index 57d5ba9523..9557365fb5 100644
--- a/include/linux/mount.h
+++ b/include/linux/mount.h
@@ -14,8 +14,11 @@
 
 struct vfsmount {
 	struct dentry *mnt_root;	/* root of the mounted tree */
+	struct dentry *mountpoint;	/* where it's mounted (barebox specific, no support */
+	struct vfsmount *parent;	/* for bind mounts and the like) */
 	struct super_block *mnt_sb;	/* pointer to superblock */
 	int mnt_flags;
+	int ref;
 };
 
 #endif /* _LINUX_MOUNT_H */
diff --git a/include/linux/namei.h b/include/linux/namei.h
new file mode 100644
index 0000000000..8ed7f8a1cd
--- /dev/null
+++ b/include/linux/namei.h
@@ -0,0 +1,52 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_NAMEI_H
+#define _LINUX_NAMEI_H
+
+#include <linux/kernel.h>
+#include <linux/path.h>
+
+enum { MAX_NESTED_LINKS = 8 };
+
+#define MAXSYMLINKS 40
+
+/*
+ * Type of the last component on LOOKUP_PARENT
+ */
+enum {LAST_NORM, LAST_ROOT, LAST_DOT, LAST_DOTDOT, LAST_BIND};
+
+/*
+ * The bitmask for a lookup event:
+ *  - follow links at the end
+ *  - require a directory
+ *  - ending slashes ok even for nonexistent files
+ *  - internal "there are more path components" flag
+ *  - dentry cache is untrusted; force a real lookup
+ *  - suppress terminal automount
+ */
+#define LOOKUP_FOLLOW		0x0001
+#define LOOKUP_DIRECTORY	0x0002
+#define LOOKUP_AUTOMOUNT	0x0004
+
+#define LOOKUP_PARENT		0x0010
+#define LOOKUP_REVAL		0x0020
+#define LOOKUP_RCU		0x0040
+#define LOOKUP_NO_REVAL		0x0080
+
+/*
+ * Intent data
+ */
+#define LOOKUP_OPEN		0x0100
+#define LOOKUP_CREATE		0x0200
+#define LOOKUP_EXCL		0x0400
+#define LOOKUP_RENAME_TARGET	0x0800
+
+#define LOOKUP_JUMPED		0x1000
+#define LOOKUP_ROOT		0x2000
+#define LOOKUP_EMPTY		0x4000
+#define LOOKUP_DOWN		0x8000
+
+#define AT_FDCWD                -100    /* Special value used to indicate
+                                           openat should use the current
+                                           working directory. */
+
+#endif /* _LINUX_NAMEI_H */
diff --git a/include/linux/stat.h b/include/linux/stat.h
index af022c5c79..87fe068396 100644
--- a/include/linux/stat.h
+++ b/include/linux/stat.h
@@ -42,6 +42,8 @@ extern "C" {
 #define S_IWOTH 00002		/* read permission for other */
 #define S_IXOTH 00001		/* execute/search permission for other */
 
+#define S_IRWXUGO	(S_IRWXU|S_IRWXG|S_IRWXO)
+
 struct stat {
 	unsigned short st_dev;
 	unsigned short __pad1;
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
