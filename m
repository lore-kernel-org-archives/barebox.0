Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d8k84-00047B-TQ
 for barebox@lists.infradead.org; Thu, 11 May 2017 09:11:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 May 2017 11:10:59 +0200
Message-Id: <20170511091101.5821-3-s.hauer@pengutronix.de>
In-Reply-To: <20170511091101.5821-1-s.hauer@pengutronix.de>
References: <20170511091101.5821-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] fs: drop path_check_prereq()
To: Barebox List <barebox@lists.infradead.org>

path_check_prereq() has some bugs:

- It's called with S_IFLNK, but this is effectively a no-op because this
  case is not implemented in the function
- It uses lstat, but if stat or lstat should be used depends on the
  usecase: For opendir() stat() must be used, since we are not
  interested in the link, but in the target. For readlink() lstat() must
  be used since we are indeed interested in the link, not the target.

It's easier and better understandable to open code the functionality
where it's needed, so drop path_check_prereq() and do the right thing
where called.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 113 +++++++++++++++++++++++++++-------------------------------------
 1 file changed, 48 insertions(+), 65 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 1901c94ad1..9cb15738b0 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -435,57 +435,6 @@ static int dir_is_empty(const char *pathname)
 	return ret;
 }
 
-#define S_UB_IS_EMPTY		(1 << 31)
-#define S_UB_EXISTS		(1 << 30)
-#define S_UB_DOES_NOT_EXIST	(1 << 29)
-
-/*
- * Helper function to check the prerequisites of a path given
- * to fs functions. Besides the flags above S_IFREG and S_IFDIR
- * can be passed in.
- */
-static int path_check_prereq(const char *path, unsigned int flags)
-{
-	struct stat s;
-	unsigned int m;
-	int ret = 0;
-
-	if (lstat(path, &s)) {
-		if (flags & S_UB_DOES_NOT_EXIST)
-			goto out;
-		ret = -ENOENT;
-		goto out;
-	}
-
-	if (flags & S_UB_DOES_NOT_EXIST) {
-		ret = -EEXIST;
-		goto out;
-	}
-
-	if (flags == S_UB_EXISTS)
-		goto out;
-
-	m = s.st_mode;
-
-	if (S_ISDIR(m)) {
-		if (flags & S_IFREG) {
-			ret = -EISDIR;
-			goto out;
-		}
-		if ((flags & S_UB_IS_EMPTY) && !dir_is_empty(path)) {
-			ret = -ENOTEMPTY;
-			goto out;
-		}
-	}
-	if ((flags & S_IFDIR) && S_ISREG(m)) {
-		ret = -ENOTDIR;
-		goto out;
-	}
-
-out:
-	return ret;
-}
-
 static int parent_check_directory(const char *path)
 {
 	struct stat s;
@@ -515,12 +464,17 @@ int chdir(const char *pathname)
 {
 	char *p = normalise_path(pathname);
 	int ret;
+	struct stat s;
 
-
-	ret = path_check_prereq(p, S_IFDIR);
+	ret = stat(p, &s);
 	if (ret)
 		goto out;
 
+	if (!S_ISDIR(s.st_mode)) {
+		ret = -ENOTDIR;
+		goto out;
+	}
+
 	automount_mount(p, 0);
 
 	strcpy(cwd, p);
@@ -542,10 +496,14 @@ int unlink(const char *pathname)
 	char *p = normalise_path(pathname);
 	char *freep = p;
 	int ret;
+	struct stat s;
 
-	ret = path_check_prereq(pathname, S_IFREG);
-	if (ret) {
-		ret = -EINVAL;
+	ret = lstat(pathname, &s);
+	if (ret)
+		goto out;
+
+	if (S_ISDIR(s.st_mode)) {
+		ret = -EISDIR;
 		goto out;
 	}
 
@@ -1071,11 +1029,17 @@ int readlink(const char *pathname, char *buf, size_t bufsiz)
 	char *p = normalise_path(pathname);
 	char *freep = p;
 	int ret;
+	struct stat s;
 
-	ret = path_check_prereq(pathname, S_IFLNK);
+	ret = lstat(pathname, &s);
 	if (ret)
 		goto out;
 
+	if (!S_ISLNK(s.st_mode)) {
+		ret = -EINVAL;
+		goto out;
+	}
+
 	fsdev = get_fs_device_and_root_path(&p);
 	if (!fsdev) {
 		ret = -ENODEV;
@@ -1274,15 +1238,21 @@ int mount(const char *device, const char *fsname, const char *_path,
 			device, path, fsname, fsoptions);
 
 	if (fs_dev_root) {
+		struct stat s;
+
 		fsdev = get_fsdevice_by_path(path);
 		if (fsdev != fs_dev_root) {
 			printf("sorry, no nested mounts\n");
 			ret = -EBUSY;
 			goto err_free_path;
 		}
-		ret = path_check_prereq(path, S_IFDIR);
+		ret = lstat(path, &s);
 		if (ret)
 			goto err_free_path;
+		if (!S_ISDIR(s.st_mode)) {
+			ret = -ENOTDIR;
+			goto err_free_path;
+		}
 	} else {
 		/* no mtab, so we only allow to mount on '/' */
 		if (*path != '/' || *(path + 1)) {
@@ -1420,11 +1390,17 @@ DIR *opendir(const char *pathname)
 	char *p = normalise_path(pathname);
 	char *freep = p;
 	int ret;
+	struct stat s;
 
-	ret = path_check_prereq(pathname, S_IFDIR);
+	ret = stat(pathname, &s);
 	if (ret)
 		goto out;
 
+	if (!S_ISDIR(s.st_mode)) {
+		ret = -ENOTDIR;
+		goto out;
+	}
+
 	fsdev = get_fs_device_and_root_path(&p);
 	if (!fsdev) {
 		ret = -ENOENT;
@@ -1564,14 +1540,17 @@ int mkdir (const char *pathname, mode_t mode)
 	char *p = normalise_path(pathname);
 	char *freep = p;
 	int ret;
+	struct stat s;
 
 	ret = parent_check_directory(p);
 	if (ret)
 		goto out;
 
-	ret = path_check_prereq(pathname, S_UB_DOES_NOT_EXIST);
-	if (ret)
+	ret = stat(pathname, &s);
+	if (!ret) {
+		ret = -EEXIST;
 		goto out;
+	}
 
 	fsdev = get_fs_device_and_root_path(&p);
 	if (!fsdev) {
@@ -1601,16 +1580,20 @@ int rmdir (const char *pathname)
 	char *p = normalise_path(pathname);
 	char *freep = p;
 	int ret;
+	struct stat s;
 
-	ret = path_check_prereq(pathname, S_IFLNK);
-	if (!ret) {
+	ret = lstat(pathname, &s);
+	if (ret)
+		goto out;
+	if (!S_ISDIR(s.st_mode)) {
 		ret = -ENOTDIR;
 		goto out;
 	}
 
-	ret = path_check_prereq(pathname, S_IFDIR | S_UB_IS_EMPTY);
-	if (ret)
+	if (!dir_is_empty(pathname)) {
+		ret = -ENOTEMPTY;
 		goto out;
+	}
 
 	fsdev = get_fs_device_and_root_path(&p);
 	if (!fsdev) {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
