Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7mww-0006PK-Le
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 12:37:23 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 33883DC7051
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 14:42:32 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  1 Sep 2012 14:37:19 +0200
Message-Id: <1346503053-21862-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346503053-21862-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120901123511.GA19233@game.jcrosoft.org>
 <1346503053-21862-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 04/18] fs: implement stat
To: barebox@lists.infradead.org

stat() stats the file pointed to by path and fills in buf.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/fs.c      |  102 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/fs.h |    6 ++--
 2 files changed, 104 insertions(+), 4 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 291e879..e31065f 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -26,6 +26,7 @@
 #include <errno.h>
 #include <malloc.h>
 #include <linux/stat.h>
+#include <linux/err.h>
 #include <fcntl.h>
 #include <xfuncs.h>
 #include <init.h>
@@ -111,6 +112,58 @@ static int init_cwd(void)
 
 postcore_initcall(init_cwd);
 
+char *normalise_link(const char *pathname, const char *symlink)
+{
+	const char *buf = symlink;
+	char *path_free, *path;
+	char *absolute_path;
+	int point = 0;
+	int dir = 1;
+	int len;
+
+	if (symlink[0] == '/')
+		return strdup(symlink);
+
+	path = path_free = strdup(pathname);
+
+	while (*buf == '.' || *buf == '/') {
+		if (*buf == '.') {
+			point++;
+		} else if (*buf == '/') {
+			point = 0;
+			dir++;
+		}
+		if (point > 2) {
+			buf -= 2;
+			break;
+		}
+		buf++;
+	}
+
+	while(dir) {
+		path = dirname(path);
+		dir--;
+	}
+
+	len = strlen(buf) + strlen(path) + 1;
+	if (buf[0] != '/')
+		len++;
+
+	absolute_path = calloc(sizeof(char), len);
+
+	if (!absolute_path)
+		return NULL;
+
+	strcat(absolute_path, path);
+	if (buf[0] != '/')
+		strcat(absolute_path, "/");
+	strcat(absolute_path, buf);
+
+	free(path_free);
+
+	return absolute_path;
+}
+
 char *normalise_path(const char *pathname)
 {
 	char *path = xzalloc(strlen(pathname) + strlen(cwd) + 2);
@@ -512,6 +565,42 @@ out:
 }
 EXPORT_SYMBOL(unlink);
 
+static char* realfile(const char *pathname, struct stat *s)
+{
+	char *path = normalise_path(pathname);
+	int ret;
+
+	ret = lstat(path, s);
+	if (ret)
+		goto out;
+
+	if (S_ISLNK(s->st_mode)) {
+		char tmp[PATH_MAX];
+		char *new_path;
+
+		memset(tmp, 0, PATH_MAX);
+
+		ret = readlink(path, tmp, PATH_MAX - 1);
+		if (ret < 0)
+			goto out;
+
+		new_path = normalise_link(path, tmp);
+		free(path);
+		if (!new_path)
+			return ERR_PTR(-ENOMEM);
+		path = new_path;
+
+		ret = lstat(path, s);
+	}
+
+	if (!ret)
+		return path;
+
+out:
+	free(path);
+	return ERR_PTR(ret);
+}
+
 int open(const char *pathname, int flags, ...)
 {
 	struct fs_device_d *fsdev;
@@ -1260,6 +1349,19 @@ int closedir(DIR *dir)
 }
 EXPORT_SYMBOL(closedir);
 
+int stat(const char *filename, struct stat *s)
+{
+	char *f;
+
+	f = realfile(filename, s);
+	if (IS_ERR(f))
+		return PTR_ERR(f);
+
+	free(f);
+	return 0;
+}
+EXPORT_SYMBOL(stat);
+
 int lstat(const char *filename, struct stat *s)
 {
 	struct device_d *dev;
diff --git a/include/fs.h b/include/fs.h
index 4f7a158..ae6c464 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -112,10 +112,7 @@ int unlink(const char *pathname);
 int close(int fd);
 int flush(int fd);
 int lstat(const char *filename, struct stat *s);
-static inline int stat(const char *filename, struct stat *s)
-{
-	return lstat(filename, s);
-}
+int stat(const char *filename, struct stat *s);
 int read(int fd, void *buf, size_t count);
 int ioctl(int fd, int request, void *buf);
 ssize_t write(int fd, const void *buf, size_t count);
@@ -174,6 +171,7 @@ void *read_file(const char *filename, size_t *size);
  * of "..", "." and double slashes. The returned string must be freed wit free().
  */
 char *normalise_path(const char *path);
+char *normalise_link(const char *pathname, const char* symlink);
 
 /* Register a new filesystem driver */
 int register_fs_driver(struct fs_driver_d *fsdrv);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
