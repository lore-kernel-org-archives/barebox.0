Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asQDr-00032m-93
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 07:37:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Apr 2016 09:36:47 +0200
Message-Id: <1461051412-25711-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/14] move unlink_recursive declaration to libfile.h
To: Barebox List <barebox@lists.infradead.org>

unlink_recursive is a file utility function, so move the prototype to
libfile.h

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/loadenv.c     | 1 +
 commands/rm.c          | 1 +
 include/fs.h           | 2 --
 include/libfile.h      | 2 ++
 lib/unlink-recursive.c | 1 +
 5 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/commands/loadenv.c b/commands/loadenv.c
index 8d6be2f..44e96c3 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -26,6 +26,7 @@
 #include <envfs.h>
 #include <errno.h>
 #include <fs.h>
+#include <libfile.h>
 #include <malloc.h>
 #include <globalvar.h>
 
diff --git a/commands/rm.c b/commands/rm.c
index 5f1f582..4eebb3d 100644
--- a/commands/rm.c
+++ b/commands/rm.c
@@ -19,6 +19,7 @@
 #include <common.h>
 #include <command.h>
 #include <fs.h>
+#include <libfile.h>
 #include <getopt.h>
 #include <errno.h>
 
diff --git a/include/fs.h b/include/fs.h
index 21490db..7081227 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -179,8 +179,6 @@ void automount_remove(const char *_path);
 int automount_add(const char *path, const char *cmd);
 void automount_print(void);
 
-int unlink_recursive(const char *path, char **failedpath);
-
 int fsdev_open_cdev(struct fs_device_d *fsdev);
 const char *cdev_get_mount_path(struct cdev *cdev);
 const char *cdev_mount_default(struct cdev *cdev, const char *fsoptions);
diff --git a/include/libfile.h b/include/libfile.h
index 3f81718..de4f42d 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -24,4 +24,6 @@ int open_and_lseek(const char *filename, int mode, loff_t pos);
 /* Create a directory and its parents */
 int make_directory(const char *pathname);
 
+int unlink_recursive(const char *path, char **failedpath);
+
 #endif /* __LIBFILE_H */
diff --git a/lib/unlink-recursive.c b/lib/unlink-recursive.c
index 78dc015..434fdc7 100644
--- a/lib/unlink-recursive.c
+++ b/lib/unlink-recursive.c
@@ -1,4 +1,5 @@
 #include <common.h>
+#include <libfile.h>
 #include <errno.h>
 #include <libbb.h>
 #include <fs.h>
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
