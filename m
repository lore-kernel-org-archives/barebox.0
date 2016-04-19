Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asQE3-00037N-5M
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 07:37:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Apr 2016 09:36:46 +0200
Message-Id: <1461051412-25711-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/14] move make_directory declaration to libfile.h
To: Barebox List <barebox@lists.infradead.org>

As a utility function for file handling make_directory() is well
suited for libfile. Move it there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/automount.c | 1 +
 commands/mkdir.c     | 1 +
 fs/efi.c             | 1 +
 fs/fs.c              | 1 +
 include/fs.h         | 3 ---
 include/libfile.h    | 3 +++
 lib/make_directory.c | 1 +
 7 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/commands/automount.c b/commands/automount.c
index b491d20..a71430c 100644
--- a/commands/automount.c
+++ b/commands/automount.c
@@ -20,6 +20,7 @@
 #include <fs.h>
 #include <errno.h>
 #include <getopt.h>
+#include <libfile.h>
 
 static int do_automount(int argc, char *argv[])
 {
diff --git a/commands/mkdir.c b/commands/mkdir.c
index 1f97886..7d024c8 100644
--- a/commands/mkdir.c
+++ b/commands/mkdir.c
@@ -22,6 +22,7 @@
 #include <fs.h>
 #include <errno.h>
 #include <getopt.h>
+#include <libfile.h>
 
 static int do_mkdir(int argc, char *argv[])
 {
diff --git a/fs/efi.c b/fs/efi.c
index 5ae796b..26f2f66 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -30,6 +30,7 @@
 #include <fcntl.h>
 #include <wchar.h>
 #include <efi.h>
+#include <libfile.h>
 #include <mach/efi.h>
 #include <mach/efi-device.h>
 
diff --git a/fs/fs.c b/fs/fs.c
index ad8d99b..1711a0c 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -34,6 +34,7 @@
 #include <environment.h>
 #include <libgen.h>
 #include <block.h>
+#include <libfile.h>
 
 char *mkmodestr(unsigned long mode, char *str)
 {
diff --git a/include/fs.h b/include/fs.h
index b9d1e6e..21490db 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -126,9 +126,6 @@ ssize_t pwrite(int fd, const void *buf, size_t count, loff_t offset);
 
 loff_t lseek(int fildes, loff_t offset, int whence);
 int mkdir (const char *pathname, mode_t mode);
-
-/* Create a directory and its parents */
-int make_directory(const char *pathname);
 int rmdir (const char *pathname);
 
 const char *getcwd(void);
diff --git a/include/libfile.h b/include/libfile.h
index 51fa060..3f81718 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -21,4 +21,7 @@ int compare_file(const char *f1, const char *f2);
 
 int open_and_lseek(const char *filename, int mode, loff_t pos);
 
+/* Create a directory and its parents */
+int make_directory(const char *pathname);
+
 #endif /* __LIBFILE_H */
diff --git a/lib/make_directory.c b/lib/make_directory.c
index 7432efc..29d08cf 100644
--- a/lib/make_directory.c
+++ b/lib/make_directory.c
@@ -3,6 +3,7 @@
 #include <errno.h>
 #ifdef __BAREBOX__
 #include <fs.h>
+#include <libfile.h>
 #include <malloc.h>
 #include <common.h>
 #define STATIC
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
