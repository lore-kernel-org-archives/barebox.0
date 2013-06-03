Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f41.google.com ([209.85.160.41])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjPRU-0007sK-VB
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 07:44:37 +0000
Received: by mail-pb0-f41.google.com with SMTP id xb12so5310410pbc.14
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2013 00:44:09 -0700 (PDT)
From: Masaki Muranaka <monaka@monami-ya.jp>
Date: Mon,  3 Jun 2013 16:43:54 +0900
Message-Id: <1370245434-68452-1-git-send-email-monaka@monami-ya.jp>
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
Subject: [PATCH] Provide and use dirent.h.
To: barebox@lists.infradead.org

It is for compatibility with the POSIX standard.

Signed-off-by: Masaki Muranaka <monaka@monami-ya.jp>
---
 commands/ls.c          |  2 +-
 common/complete.c      |  2 +-
 common/hush.c          |  2 +-
 fs/ramfs.c             |  1 +
 include/dirent.h       | 25 +++++++++++++++++++++++++
 include/fs.h           | 16 +---------------
 lib/glob.c             |  2 +-
 lib/recursive_action.c |  2 +-
 8 files changed, 32 insertions(+), 20 deletions(-)
 create mode 100644 include/dirent.h

diff --git a/commands/ls.c b/commands/ls.c
index f2d9903..2b1b08b 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -19,7 +19,7 @@
 
 #include <common.h>
 #include <command.h>
-#include <fs.h>
+#include <dirent.h>
 #include <linux/stat.h>
 #include <errno.h>
 #include <malloc.h>
diff --git a/common/complete.c b/common/complete.c
index 9206ef0..1fdc320 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -17,7 +17,7 @@
 #include <common.h>
 #include <complete.h>
 #include <xfuncs.h>
-#include <fs.h>
+#include <dirent.h>
 #include <linux/stat.h>
 #include <libgen.h>
 #include <command.h>
diff --git a/common/hush.c b/common/hush.c
index b5e111a..64c0b06 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -114,7 +114,7 @@
 #include <command.h>        /* find_cmd */
 #include <driver.h>
 #include <errno.h>
-#include <fs.h>
+#include <dirent.h>
 #include <libbb.h>
 #include <glob.h>
 #include <getopt.h>
diff --git a/fs/ramfs.c b/fs/ramfs.c
index f45a454..3f9df7c 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -21,6 +21,7 @@
 #include <driver.h>
 #include <init.h>
 #include <malloc.h>
+#include <dirent.h>
 #include <fs.h>
 #include <command.h>
 #include <errno.h>
diff --git a/include/dirent.h b/include/dirent.h
new file mode 100644
index 0000000..2faee78
--- /dev/null
+++ b/include/dirent.h
@@ -0,0 +1,25 @@
+#ifndef BAREBOX_DIRENT_H__
+#define BAREBOX_DIRENT_H__
+
+struct device_d;
+struct fs_driver_d;
+struct node_d;
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
+
+#endif /* BAREBOX_DIRENT_H__ */
diff --git a/include/fs.h b/include/fs.h
index 7c4e461..0984da1 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -10,17 +10,7 @@ struct partition;
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
+#include <dirent.h>
 
 typedef struct filep {
 	struct device_d *dev; /* The device this FILE belongs to              */
@@ -133,10 +123,6 @@ int rmdir (const char *pathname);
 const char *getcwd(void);
 int chdir(const char *pathname);
 
-DIR *opendir(const char *pathname);
-struct dirent *readdir(DIR *dir);
-int closedir(DIR *dir);
-
 int symlink(const char *pathname, const char *newpath);
 int readlink(const char *path, char *buf, size_t bufsiz);
 
diff --git a/lib/glob.c b/lib/glob.c
index 1b0137b..7a522a9 100644
--- a/lib/glob.c
+++ b/lib/glob.c
@@ -17,7 +17,7 @@ Cambridge, MA 02139, USA.  */
 
 #include <common.h>
 #include <errno.h>
-#include <fs.h>
+#include <dirent.h>
 #include <linux/stat.h>
 #include <malloc.h>
 #include <xfuncs.h>
diff --git a/lib/recursive_action.c b/lib/recursive_action.c
index 345d3db..06e60b8 100644
--- a/lib/recursive_action.c
+++ b/lib/recursive_action.c
@@ -9,7 +9,7 @@
 #ifdef __BAREBOX__
 
 #include <common.h>
-#include <fs.h>
+#include <dirent.h>
 #include <linux/stat.h>
 #include <malloc.h>
 #include <libbb.h>
-- 
1.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
