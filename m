Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asQDj-00031V-5U
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 07:37:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Apr 2016 09:36:48 +0200
Message-Id: <1461051412-25711-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461051412-25711-1-git-send-email-s.hauer@pengutronix.de>
References: <1461051412-25711-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/14] fs: move libc function prototypes to their correct
 locations
To: Barebox List <barebox@lists.infradead.org>

This moves the function prototypes in include/fs.h which also exist
in the libc to the locations they would have in libc.

With this it becomes easier to share code between barebox and userspace
since the usual libc include files will exist. Also users of the libc
functions no longer have to include the barebox internal fs.h header.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/dirent.h    |  20 +++++++++++
 include/fcntl.h     | 100 +++-------------------------------------------------
 include/fs.h        |  51 ++++-----------------------
 include/sys/ioctl.h |   6 ++++
 include/sys/mount.h |   8 +++++
 include/sys/stat.h  |   9 +++++
 include/unistd.h    |  24 +++++++++++++
 7 files changed, 78 insertions(+), 140 deletions(-)
 create mode 100644 include/dirent.h
 create mode 100644 include/sys/ioctl.h
 create mode 100644 include/sys/mount.h
 create mode 100644 include/sys/stat.h
 create mode 100644 include/unistd.h

diff --git a/include/dirent.h b/include/dirent.h
new file mode 100644
index 0000000..5ee4c20
--- /dev/null
+++ b/include/dirent.h
@@ -0,0 +1,20 @@
+#ifndef __DIRENT_H
+#define __DIRENT_H
+
+struct dirent {
+	char d_name[256];
+};
+
+typedef struct dir {
+	struct device_d *dev;
+	struct fs_driver_d *fsdrv;
+	struct node_d *node;
+	struct dirent d;
+	void *priv; /* private data for the fs driver */
+} DIR;
+
+DIR *opendir(const char *pathname);
+struct dirent *readdir(DIR *dir);
+int closedir(DIR *dir);
+
+#endif /* __DIRENT_H */
diff --git a/include/fcntl.h b/include/fcntl.h
index 12f370a..98020bd 100644
--- a/include/fcntl.h
+++ b/include/fcntl.h
@@ -1,5 +1,5 @@
-#ifndef _ASM_GENERIC_FCNTL_H
-#define _ASM_GENERIC_FCNTL_H
+#ifndef __FCNTL_H
+#define __FCNTL_H
 
 #include <linux/types.h>
 
@@ -24,97 +24,7 @@
 #define O_RWSIZE_4	004000000
 #define O_RWSIZE_8	010000000
 
-#define F_DUPFD		0	/* dup */
-#define F_GETFD		1	/* get close_on_exec */
-#define F_SETFD		2	/* set/clear close_on_exec */
-#define F_GETFL		3	/* get file->f_flags */
-#define F_SETFL		4	/* set file->f_flags */
-#ifndef F_GETLK
-#define F_GETLK		5
-#define F_SETLK		6
-#define F_SETLKW	7
-#endif
-#ifndef F_SETOWN
-#define F_SETOWN	8	/* for sockets. */
-#define F_GETOWN	9	/* for sockets. */
-#endif
-#ifndef F_SETSIG
-#define F_SETSIG	10	/* for sockets. */
-#define F_GETSIG	11	/* for sockets. */
-#endif
+int open(const char *pathname, int flags, ...);
+int creat(const char *pathname, mode_t mode);
 
-/* for F_[GET|SET]FL */
-#define FD_CLOEXEC	1	/* actually anything with low bit set goes */
-
-/* for posix fcntl() and lockf() */
-#ifndef F_RDLCK
-#define F_RDLCK		0
-#define F_WRLCK		1
-#define F_UNLCK		2
-#endif
-
-/* for old implementation of bsd flock () */
-#ifndef F_EXLCK
-#define F_EXLCK		4	/* or 3 */
-#define F_SHLCK		8	/* or 4 */
-#endif
-
-/* for leases */
-#ifndef F_INPROGRESS
-#define F_INPROGRESS	16
-#endif
-
-/* operations for bsd flock(), also used by the kernel implementation */
-#define LOCK_SH		1	/* shared lock */
-#define LOCK_EX		2	/* exclusive lock */
-#define LOCK_NB		4	/* or'd with one of the above to prevent
-				   blocking */
-#define LOCK_UN		8	/* remove lock */
-
-#define LOCK_MAND	32	/* This is a mandatory flock ... */
-#define LOCK_READ	64	/* which allows concurrent read operations */
-#define LOCK_WRITE	128	/* which allows concurrent write operations */
-#define LOCK_RW		192	/* which allows concurrent read & write ops */
-
-#define F_LINUX_SPECIFIC_BASE	1024
-
-#ifndef HAVE_ARCH_STRUCT_FLOCK
-#ifndef __ARCH_FLOCK_PAD
-#define __ARCH_FLOCK_PAD
-#endif
-
-struct flock {
-	short	l_type;
-	short	l_whence;
-	off_t	l_start;
-	off_t	l_len;
-	pid_t	l_pid;
-	__ARCH_FLOCK_PAD
-};
-#endif
-
-#ifndef CONFIG_64BIT
-
-#ifndef F_GETLK64
-#define F_GETLK64	12	/*  using 'struct flock64' */
-#define F_SETLK64	13
-#define F_SETLKW64	14
-#endif
-
-#ifndef HAVE_ARCH_STRUCT_FLOCK64
-#ifndef __ARCH_FLOCK64_PAD
-#define __ARCH_FLOCK64_PAD
-#endif
-
-struct flock64 {
-	short  l_type;
-	short  l_whence;
-	loff_t l_start;
-	loff_t l_len;
-	pid_t  l_pid;
-	__ARCH_FLOCK64_PAD
-};
-#endif
-#endif /* !CONFIG_64BIT */
-
-#endif /* _ASM_GENERIC_FCNTL_H */
+#endif /* __FCNTL_H */
diff --git a/include/fs.h b/include/fs.h
index 7081227..135cb57 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -1,6 +1,12 @@
 #ifndef __FS_H
 #define __FS_H
 
+#include <unistd.h>
+#include <fcntl.h>
+#include <sys/ioctl.h>
+#include <dirent.h>
+#include <sys/mount.h>
+#include <sys/stat.h>
 #include <driver.h>
 #include <filetype.h>
 #include <linux/fs.h>
@@ -11,18 +17,6 @@ struct partition;
 struct node_d;
 struct stat;
 
-struct dirent {
-	char d_name[256];
-};
-
-typedef struct dir {
-	struct device_d *dev;
-	struct fs_driver_d *fsdrv;
-	struct node_d *node;
-	struct dirent d;
-	void *priv; /* private data for the fs driver */
-} DIR;
-
 typedef struct filep {
 	struct fs_device_d *fsdev; /* The device this FILE belongs to              */
 	char *path;
@@ -107,40 +101,7 @@ struct fs_device_d {
 
 #define drv_to_fs_driver(d) container_of(d, struct fs_driver_d, drv)
 
-/*
- * standard posix file functions
- */
-int open(const char *pathname, int flags, ...);
-int creat(const char *pathname, mode_t mode);
-int unlink(const char *pathname);
-int close(int fd);
 int flush(int fd);
-int lstat(const char *filename, struct stat *s);
-int stat(const char *filename, struct stat *s);
-int fstat(int fd, struct stat *s);
-ssize_t read(int fd, void *buf, size_t count);
-ssize_t pread(int fd, void *buf, size_t count, loff_t offset);
-int ioctl(int fd, int request, void *buf);
-ssize_t write(int fd, const void *buf, size_t count);
-ssize_t pwrite(int fd, const void *buf, size_t count, loff_t offset);
-
-loff_t lseek(int fildes, loff_t offset, int whence);
-int mkdir (const char *pathname, mode_t mode);
-int rmdir (const char *pathname);
-
-const char *getcwd(void);
-int chdir(const char *pathname);
-
-DIR *opendir(const char *pathname);
-struct dirent *readdir(DIR *dir);
-int closedir(DIR *dir);
-
-int symlink(const char *pathname, const char *newpath);
-int readlink(const char *path, char *buf, size_t bufsiz);
-
-int mount (const char *device, const char *fsname, const char *path,
-		const char *fsoptions);
-int umount(const char *pathname);
 int umount_by_cdev(struct cdev *cdev);
 
 /* not-so-standard functions */
diff --git a/include/sys/ioctl.h b/include/sys/ioctl.h
new file mode 100644
index 0000000..6d6d3f5
--- /dev/null
+++ b/include/sys/ioctl.h
@@ -0,0 +1,6 @@
+#ifndef __SYS_IOCTL_H
+#define __SYS_IOCTL_H
+
+int ioctl(int fd, int request, void *buf);
+
+#endif /* __SYS_IOCTL_H */
diff --git a/include/sys/mount.h b/include/sys/mount.h
new file mode 100644
index 0000000..978f340
--- /dev/null
+++ b/include/sys/mount.h
@@ -0,0 +1,8 @@
+#ifndef __SYS_MOUNT_H
+#define __SYS_MOUNT_H
+
+int mount(const char *device, const char *fsname, const char *path,
+		const char *fsoptions);
+int umount(const char *pathname);
+
+#endif /* __SYS_MOUNT_H */
diff --git a/include/sys/stat.h b/include/sys/stat.h
new file mode 100644
index 0000000..037e5f1
--- /dev/null
+++ b/include/sys/stat.h
@@ -0,0 +1,9 @@
+#ifndef __STAT_H
+#define __STAT_H
+
+#include <linux/types.h>
+#include <linux/stat.h>
+
+int mkdir (const char *pathname, mode_t mode);
+
+#endif /* __STAT_H */
diff --git a/include/unistd.h b/include/unistd.h
new file mode 100644
index 0000000..31f430a
--- /dev/null
+++ b/include/unistd.h
@@ -0,0 +1,24 @@
+#ifndef __UNISTD_H
+#define __UNISTD_H
+
+#include <linux/types.h>
+
+struct stat;
+
+int unlink(const char *pathname);
+int close(int fd);
+int lstat(const char *filename, struct stat *s);
+int stat(const char *filename, struct stat *s);
+int fstat(int fd, struct stat *s);
+ssize_t read(int fd, void *buf, size_t count);
+ssize_t pread(int fd, void *buf, size_t count, loff_t offset);
+ssize_t write(int fd, const void *buf, size_t count);
+ssize_t pwrite(int fd, const void *buf, size_t count, loff_t offset);
+loff_t lseek(int fildes, loff_t offset, int whence);
+int rmdir (const char *pathname);
+int symlink(const char *pathname, const char *newpath);
+int readlink(const char *path, char *buf, size_t bufsiz);
+int chdir(const char *pathname);
+const char *getcwd(void);
+
+#endif /* __UNISTD_H */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
