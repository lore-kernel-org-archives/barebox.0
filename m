Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sil2i-0001k7-Hq
 for barebox@lists.infradead.org; Sun, 24 Jun 2012 11:31:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 24 Jun 2012 13:31:45 +0200
Message-Id: <1340537505-23100-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fs: Fix file create bug when parent is not a directory
To: barebox@lists.infradead.org

When creating a file or a directory we have to check if the parent
is actually a directory. Otherwise trying it results in a crash.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c |   30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index af73c8c..6d5740b 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -33,6 +33,7 @@
 #include <libbb.h>
 #include <magicvar.h>
 #include <environment.h>
+#include <libgen.h>
 
 void *read_file(const char *filename, size_t *size)
 {
@@ -427,6 +428,25 @@ out:
 	return ret;
 }
 
+static int parent_check_directory(const char *path)
+{
+	struct stat s;
+	int ret;
+	char *dir = dirname(xstrdup(path));
+
+	ret = stat(dir, &s);
+
+	free(dir);
+
+	if (ret)
+		return -ENOENT;
+
+	if (!S_ISDIR(s.st_mode))
+		return -ENOTDIR;
+
+	return 0;
+}
+
 const char *getcwd(void)
 {
 	return cwd;
@@ -515,6 +535,12 @@ int open(const char *pathname, int flags, ...)
 		goto out1;
 	}
 
+	if (exist_err) {
+		ret = parent_check_directory(path);
+		if (ret)
+			goto out1;
+	}
+
 	f = get_file();
 	if (!f) {
 		ret = -EMFILE;
@@ -1153,6 +1179,10 @@ int mkdir (const char *pathname, mode_t mode)
 	char *freep = p;
 	int ret;
 
+	ret = parent_check_directory(p);
+	if (ret)
+		goto out;
+
 	ret = path_check_prereq(pathname, S_UB_DOES_NOT_EXIST);
 	if (ret)
 		goto out;
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
