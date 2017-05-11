Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d8k84-00047C-TP
 for barebox@lists.infradead.org; Thu, 11 May 2017 09:11:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 May 2017 11:11:00 +0200
Message-Id: <20170511091101.5821-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] fs: Implement links to directories
To: Barebox List <barebox@lists.infradead.org>

So far links can only point to files. Implement links to
directories. With this all kinds of links are supported:

- relative links
- absolute links
- links including ".."
- link loops (are detected, return -EMLINK)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/readlink.c |   2 +-
 fs/fs.c             | 272 +++++++++++++++++++++++++++++-----------------------
 include/fs.h        |   3 +-
 3 files changed, 157 insertions(+), 120 deletions(-)

diff --git a/commands/readlink.c b/commands/readlink.c
index 4ac576f16f..a19c8e0041 100644
--- a/commands/readlink.c
+++ b/commands/readlink.c
@@ -48,7 +48,7 @@ static int do_readlink(int argc, char *argv[])
 		goto err;
 
 	if (canonicalize) {
-		char *buf = normalise_link(argv[optind], realname);
+		char *buf = canonicalize_path(realname);
 
 		if (!buf)
 			goto err;
diff --git a/fs/fs.c b/fs/fs.c
index 9cb15738b0..aaae5bbdd8 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -83,61 +83,6 @@ static int init_fs(void)
 
 postcore_initcall(init_fs);
 
-char *normalise_link(const char *pathname, const char *symlink)
-{
-	const char *buf = symlink;
-	char *path_free, *path;
-	char *absolute_path;
-	int point = 0;
-	int dir = 1;
-	int len;
-
-	if (symlink[0] == '/')
-		return strdup(symlink);
-
-	while (*buf == '.' || *buf == '/') {
-		if (*buf == '.') {
-			point++;
-		} else if (*buf == '/') {
-			point = 0;
-			dir++;
-		}
-		if (point > 2) {
-			buf -= 2;
-			break;
-		}
-		buf++;
-	}
-
-	path = path_free = strdup(pathname);
-	if (!path)
-		return NULL;
-
-	while(dir) {
-		path = dirname(path);
-		dir--;
-	}
-
-	len = strlen(buf) + strlen(path) + 1;
-	if (buf[0] != '/')
-		len++;
-
-	absolute_path = calloc(sizeof(char), len);
-
-	if (!absolute_path)
-		goto out;
-
-	strcat(absolute_path, path);
-	if (buf[0] != '/')
-		strcat(absolute_path, "/");
-	strcat(absolute_path, buf);
-
-out:
-	free(path_free);
-
-	return absolute_path;
-}
-
 char *normalise_path(const char *pathname)
 {
 	char *path = xzalloc(strlen(pathname) + strlen(cwd) + 2);
@@ -197,6 +142,137 @@ char *normalise_path(const char *pathname)
 }
 EXPORT_SYMBOL(normalise_path);
 
+static int __lstat(const char *filename, struct stat *s);
+
+static char *__canonicalize_path(const char *_pathname, int level)
+{
+	char *path, *freep;
+	char *outpath;
+	int ret;
+	struct stat s;
+
+	if (level > 10)
+		return ERR_PTR(-ELOOP);
+
+	path = freep = xstrdup(_pathname);
+
+	if (*path == '/')
+		outpath = xstrdup("/");
+	else
+		outpath = __canonicalize_path(cwd, level + 1);
+
+	while (1) {
+		char *p = strsep(&path, "/");
+		char *tmp;
+		char link[PATH_MAX] = {};
+
+		if (!p)
+			break;
+		if (p[0] == '\0')
+			continue;
+		if (!strcmp(p, "."))
+			continue;
+		if (!strcmp(p, "..")) {
+			tmp = xstrdup(dirname(outpath));
+			free(outpath);
+			outpath = tmp;
+			continue;
+		}
+
+		tmp = basprintf("%s/%s", outpath, p);
+		free(outpath);
+		outpath = tmp;
+
+		ret = __lstat(outpath, &s);
+		if (ret)
+			goto out;
+
+		if (!S_ISLNK(s.st_mode))
+			continue;
+
+		ret = readlink(outpath, link, PATH_MAX - 1);
+		if (ret < 0)
+			goto out;
+
+		if (link[0] == '/') {
+			free(outpath);
+			outpath = __canonicalize_path(link, level + 1);
+		} else {
+			tmp = basprintf("%s/%s", dirname(outpath), link);
+			free(outpath);
+			outpath = __canonicalize_path(tmp, level + 1);
+			free(tmp);
+		}
+
+		if (IS_ERR(outpath))
+			goto out;
+	}
+out:
+	free(freep);
+
+	return outpath;
+}
+
+/*
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
+	char *r, *p = __canonicalize_path(pathname, 0);
+
+	if (IS_ERR(p))
+		return ERR_CAST(p);
+
+	r = normalise_path(p);
+	free(p);
+
+	return r;
+}
+
+/*
+ * canonicalize_dir - resolve links in path
+ * @pathname: The input path
+ *
+ * This function resolves all links except the last one. Needed to give
+ * access to the link itself.
+ *
+ * Return: Path with links resolved. Allocated, must be freed after use.
+ */
+char *canonicalize_dir(const char *pathname)
+{
+	char *f, *d, *r, *ret, *p;
+	char *freep1, *freep2;
+
+	freep1 = xstrdup(pathname);
+	freep2 = xstrdup(pathname);
+	f = basename(freep1);
+	d = dirname(freep2);
+
+	p = __canonicalize_path(d, 0);
+	if (IS_ERR(p)) {
+		ret = ERR_CAST(p);
+		goto out;
+	}
+
+	r = basprintf("%s/%s", p, f);
+
+	ret = normalise_path(r);
+
+	free(r);
+	free(p);
+out:
+	free(freep1);
+	free(freep2);
+
+	return ret;
+}
+
 LIST_HEAD(fs_device_list);
 static struct fs_device_d *fs_dev_root;
 
@@ -493,7 +569,7 @@ int unlink(const char *pathname)
 {
 	struct fs_device_d *fsdev;
 	struct fs_driver_d *fsdrv;
-	char *p = normalise_path(pathname);
+	char *p = canonicalize_path(pathname);
 	char *freep = p;
 	int ret;
 	struct stat s;
@@ -530,42 +606,6 @@ out:
 }
 EXPORT_SYMBOL(unlink);
 
-static char *realfile(const char *pathname, struct stat *s)
-{
-	char *path = normalise_path(pathname);
-	int ret;
-
-	ret = lstat(path, s);
-	if (ret)
-		goto out;
-
-	if (S_ISLNK(s->st_mode)) {
-		char tmp[PATH_MAX];
-		char *new_path;
-
-		memset(tmp, 0, PATH_MAX);
-
-		ret = readlink(path, tmp, PATH_MAX - 1);
-		if (ret < 0)
-			goto out;
-
-		new_path = normalise_link(path, tmp);
-		free(path);
-		if (!new_path)
-			return ERR_PTR(-ENOMEM);
-		path = new_path;
-
-		ret = lstat(path, s);
-	}
-
-	if (!ret)
-		return path;
-
-out:
-	free(path);
-	return ERR_PTR(ret);
-}
-
 int open(const char *pathname, int flags, ...)
 {
 	struct fs_device_d *fsdev;
@@ -577,13 +617,14 @@ int open(const char *pathname, int flags, ...)
 	char *freep;
 	int ret;
 
-	path = realfile(pathname, &s);
-
+	path = canonicalize_path(pathname);
 	if (IS_ERR(path)) {
-		exist_err = PTR_ERR(path);
-		path = normalise_path(pathname);
+		ret = PTR_ERR(path);
+		goto out2;
 	}
 
+	exist_err = stat(path, &s);
+
 	freep = path;
 
 	if (!exist_err && S_ISDIR(s.st_mode)) {
@@ -657,6 +698,7 @@ out:
 	put_file(f);
 out1:
 	free(freep);
+out2:
 	if (ret)
 		errno = -ret;
 	return ret;
@@ -1026,7 +1068,7 @@ int readlink(const char *pathname, char *buf, size_t bufsiz)
 {
 	struct fs_driver_d *fsdrv;
 	struct fs_device_d *fsdev;
-	char *p = normalise_path(pathname);
+	char *p = canonicalize_dir(pathname);
 	char *freep = p;
 	int ret;
 	struct stat s;
@@ -1070,24 +1112,15 @@ int symlink(const char *pathname, const char *newpath)
 	struct fs_driver_d *fsdrv;
 	struct fs_device_d *fsdev;
 	char *p;
-	char *freep = normalise_path(pathname);
 	int ret;
 	struct stat s;
 
-	if (!freep)
-		return -ENOMEM;
-
-	if (!stat(freep, &s) && S_ISDIR(s.st_mode)) {
-		ret = -ENOSYS;
+	p = canonicalize_path(newpath);
+	if (IS_ERR(p)) {
+		ret = PTR_ERR(p);
 		goto out;
 	}
 
-	free(freep);
-	freep = p = normalise_path(newpath);
-
-	if (!p)
-		return -ENOMEM;
-
 	ret = lstat(p, &s);
 	if (!ret) {
 		ret = -EEXIST;
@@ -1108,7 +1141,7 @@ int symlink(const char *pathname, const char *newpath)
 	}
 
 out:
-	free(freep);
+	free(p);
 	if (ret)
 		errno = -ret;
 
@@ -1387,7 +1420,7 @@ DIR *opendir(const char *pathname)
 	DIR *dir = NULL;
 	struct fs_device_d *fsdev;
 	struct fs_driver_d *fsdrv;
-	char *p = normalise_path(pathname);
+	char *p = canonicalize_path(pathname);
 	char *freep = p;
 	int ret;
 	struct stat s;
@@ -1467,18 +1500,21 @@ EXPORT_SYMBOL(closedir);
 
 int stat(const char *filename, struct stat *s)
 {
-	char *f;
+	char *path = canonicalize_path(filename);
+	int ret;
 
-	f = realfile(filename, s);
-	if (IS_ERR(f))
-		return PTR_ERR(f);
+	if (IS_ERR(path))
+		return PTR_ERR(path);
 
-	free(f);
-	return 0;
+	ret = lstat(path, s);
+
+	free(path);
+
+	return ret;
 }
 EXPORT_SYMBOL(stat);
 
-int lstat(const char *filename, struct stat *s)
+static int __lstat(const char *filename, struct stat *s)
 {
 	struct fs_driver_d *fsdrv;
 	struct fs_device_d *fsdev;
diff --git a/include/fs.h b/include/fs.h
index 6a592893a9..71edb22f26 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -128,7 +128,8 @@ char *mkmodestr(unsigned long mode, char *str);
  * of "..", "." and double slashes. The returned string must be freed wit free().
  */
 char *normalise_path(const char *path);
-char *normalise_link(const char *pathname, const char* symlink);
+
+char *canonicalize_path(const char *pathname);
 
 char *get_mounted_path(const char *path);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
