Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8z8L-00080s-R3
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 19:50:03 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 34904DC5B00
 for <barebox@lists.infradead.org>; Tue,  4 Sep 2012 21:55:20 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  4 Sep 2012 21:50:01 +0200
Message-Id: <1346788217-16042-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346788217-16042-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120904194720.GB32603@game.jcrosoft.org>
 <1346788217-16042-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 03/19] fs: rename stat to lstat as we implement lstat
To: barebox@lists.infradead.org

For compatibility put a inline on lstat for stat until we have the symlink
support.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/fs.c      |   10 +++++-----
 include/fs.h |    6 +++++-
 2 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 914df5a..323b6c2 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -392,7 +392,7 @@ static int path_check_prereq(const char *path, unsigned int flags)
 	unsigned int m;
 	int ret = 0;
 
-	if (stat(path, &s)) {
+	if (lstat(path, &s)) {
 		if (flags & S_UB_DOES_NOT_EXIST)
 			goto out;
 		ret = -ENOENT;
@@ -434,7 +434,7 @@ static int parent_check_directory(const char *path)
 	int ret;
 	char *dir = dirname(xstrdup(path));
 
-	ret = stat(dir, &s);
+	ret = lstat(dir, &s);
 
 	free(dir);
 
@@ -523,7 +523,7 @@ int open(const char *pathname, int flags, ...)
 	char *freep = path;
 	int ret;
 
-	exist_err = stat(path, &s);
+	exist_err = lstat(path, &s);
 
 	if (!exist_err && S_ISDIR(s.st_mode)) {
 		ret = -EISDIR;
@@ -1167,7 +1167,7 @@ int closedir(DIR *dir)
 }
 EXPORT_SYMBOL(closedir);
 
-int stat(const char *filename, struct stat *s)
+int lstat(const char *filename, struct stat *s)
 {
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
@@ -1206,7 +1206,7 @@ out:
 
 	return ret;
 }
-EXPORT_SYMBOL(stat);
+EXPORT_SYMBOL(lstat);
 
 int mkdir (const char *pathname, mode_t mode)
 {
diff --git a/include/fs.h b/include/fs.h
index 906d192..98210cf 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -104,7 +104,11 @@ int creat(const char *pathname, mode_t mode);
 int unlink(const char *pathname);
 int close(int fd);
 int flush(int fd);
-int stat(const char *filename, struct stat *s);
+int lstat(const char *filename, struct stat *s);
+static inline int stat(const char *filename, struct stat *s)
+{
+	return lstat(filename, s);
+}
 int read(int fd, void *buf, size_t count);
 int ioctl(int fd, int request, void *buf);
 ssize_t write(int fd, const void *buf, size_t count);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
