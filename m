Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9H4Y-0001o8-6L
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 14:27:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 18 Mar 2012 15:26:37 +0100
Message-Id: <1332080804-13132-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1332080804-13132-1-git-send-email-s.hauer@pengutronix.de>
References: <1332080804-13132-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] fs: change get_fs_device_by_path prototype
To: barebox@lists.infradead.org

get_fs_device_by_path returns a struct device_d instead of what the
name suggests a struct fs_device_d. Also it returns the rootpath
of the corresponding fs_device. This patch changes the name of
this function to get_fs_device_and_root_path to better reflect what
the function does and changes the return type to struct fs_device_d.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c |   65 ++++++++++++++++++++++++++++++--------------------------------
 1 files changed, 31 insertions(+), 34 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index a31a4ce..93a0f80 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -216,9 +216,8 @@ static int check_fd(int fd)
 	return 0;
 }
 
-static struct device_d *get_fs_device_by_path(char **path)
+static struct fs_device_d *get_fs_device_and_root_path(char **path)
 {
-	struct device_d *dev;
 	struct mtab_entry *e;
 
 	e = get_mtab_entry_by_path(*path);
@@ -227,9 +226,7 @@ static struct device_d *get_fs_device_by_path(char **path)
 	if (e != mtab_root)
 		*path += strlen(e->path);
 
-	dev = e->dev;
-
-	return dev;
+	return dev_to_fs_device(e->dev);
 }
 
 static int dir_is_empty(const char *pathname)
@@ -336,7 +333,7 @@ EXPORT_SYMBOL(chdir);
 
 int unlink(const char *pathname)
 {
-	struct device_d *dev;
+	struct fs_device_d *fsdev;
 	struct fs_driver_d *fsdrv;
 	char *p = normalise_path(pathname);
 	char *freep = p;
@@ -344,17 +341,17 @@ int unlink(const char *pathname)
 	if (path_check_prereq(pathname, S_IFREG))
 		goto out;
 
-	dev = get_fs_device_by_path(&p);
-	if (!dev)
+	fsdev = get_fs_device_and_root_path(&p);
+	if (!fsdev)
 		goto out;
-	fsdrv = dev_to_fs_driver(dev);
+	fsdrv = fsdev->driver;
 
 	if (!fsdrv->unlink) {
 		errno = -ENOSYS;
 		goto out;
 	}
 
-	errno = fsdrv->unlink(dev, p);
+	errno = fsdrv->unlink(&fsdev->dev, p);
 out:
 	free(freep);
 	return errno;
@@ -363,7 +360,7 @@ EXPORT_SYMBOL(unlink);
 
 int open(const char *pathname, int flags, ...)
 {
-	struct device_d *dev;
+	struct fs_device_d *fsdev;
 	struct fs_driver_d *fsdrv;
 	FILE *f;
 	int exist;
@@ -389,13 +386,13 @@ int open(const char *pathname, int flags, ...)
 		goto out1;
 	}
 
-	dev = get_fs_device_by_path(&path);
-	if (!dev)
+	fsdev = get_fs_device_and_root_path(&path);
+	if (!fsdev)
 		goto out;
 
-	fsdrv = dev_to_fs_driver(dev);
+	fsdrv = fsdev->driver;
 
-	f->dev = dev;
+	f->dev = &fsdev->dev;
 	f->flags = flags;
 
 	if ((flags & O_ACCMODE) && !fsdrv->write) {
@@ -405,20 +402,20 @@ int open(const char *pathname, int flags, ...)
 
 	if (!exist) {
 		if (NULL != fsdrv->create)
-			errno = fsdrv->create(dev, path,
+			errno = fsdrv->create(&fsdev->dev, path,
 					S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO);
 		else
 			errno = -EROFS;
 		if (errno)
 			goto out;
 	}
-	errno = fsdrv->open(dev, f, path);
+	errno = fsdrv->open(&fsdev->dev, f, path);
 	if (errno)
 		goto out;
 
 
 	if (flags & O_TRUNC) {
-		errno = fsdrv->truncate(dev, f, 0);
+		errno = fsdrv->truncate(&fsdev->dev, f, 0);
 		f->size = 0;
 		if (errno)
 			goto out;
@@ -867,7 +864,7 @@ EXPORT_SYMBOL(umount);
 DIR *opendir(const char *pathname)
 {
 	DIR *dir = NULL;
-	struct device_d *dev;
+	struct fs_device_d *fsdev;
 	struct fs_driver_d *fsdrv;
 	char *p = normalise_path(pathname);
 	char *freep = p;
@@ -875,16 +872,16 @@ DIR *opendir(const char *pathname)
 	if (path_check_prereq(pathname, S_IFDIR))
 		goto out;
 
-	dev = get_fs_device_by_path(&p);
-	if (!dev)
+	fsdev = get_fs_device_and_root_path(&p);
+	if (!fsdev)
 		goto out;
-	fsdrv = dev_to_fs_driver(dev);
+	fsdrv = fsdev->driver;
 
 	debug("opendir: fsdrv: %p\n",fsdrv);
 
-	dir = fsdrv->opendir(dev, p);
+	dir = fsdrv->opendir(&fsdev->dev, p);
 	if (dir) {
-		dir->dev = dev;
+		dir->dev = &fsdev->dev;
 		dir->fsdrv = fsdrv;
 	}
 
@@ -951,20 +948,20 @@ EXPORT_SYMBOL(stat);
 int mkdir (const char *pathname, mode_t mode)
 {
 	struct fs_driver_d *fsdrv;
-	struct device_d *dev;
+	struct fs_device_d *fsdev;
 	char *p = normalise_path(pathname);
 	char *freep = p;
 
 	if (path_check_prereq(pathname, S_UB_DOES_NOT_EXIST))
 		goto out;
 
-	dev = get_fs_device_by_path(&p);
-	if (!dev)
+	fsdev = get_fs_device_and_root_path(&p);
+	if (!fsdev)
 		goto out;
-	fsdrv = dev_to_fs_driver(dev);
+	fsdrv = fsdev->driver;
 
 	if (fsdrv->mkdir) {
-		errno = fsdrv->mkdir(dev, p);
+		errno = fsdrv->mkdir(&fsdev->dev, p);
 		goto out;
 	}
 
@@ -978,20 +975,20 @@ EXPORT_SYMBOL(mkdir);
 int rmdir (const char *pathname)
 {
 	struct fs_driver_d *fsdrv;
-	struct device_d *dev;
+	struct fs_device_d *fsdev;
 	char *p = normalise_path(pathname);
 	char *freep = p;
 
 	if (path_check_prereq(pathname, S_IFDIR | S_UB_IS_EMPTY))
 		goto out;
 
-	dev = get_fs_device_by_path(&p);
-	if (!dev)
+	fsdev = get_fs_device_and_root_path(&p);
+	if (!fsdev)
 		goto out;
-	fsdrv = dev_to_fs_driver(dev);
+	fsdrv = fsdev->driver;
 
 	if (fsdrv->rmdir) {
-		errno = fsdrv->rmdir(dev, p);
+		errno = fsdrv->rmdir(&fsdev->dev, p);
 		goto out;
 	}
 
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
