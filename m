Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asQDo-00032k-5c
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 07:37:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Apr 2016 09:36:43 +0200
Message-Id: <1461051412-25711-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/14] libfile: move open_and_lseek() to libfile
To: Barebox List <barebox@lists.infradead.org>

libfile is a collection of helpers for handling files. open_and_lseek()
is a perfect match for this, so move it there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/md.c     |  1 +
 commands/mem.c    | 23 -----------------------
 commands/memcmp.c |  1 +
 commands/memcpy.c |  1 +
 commands/memset.c |  1 +
 commands/mm.c     |  1 +
 commands/mw.c     |  1 +
 include/common.h  |  1 -
 include/libfile.h |  2 ++
 lib/libfile.c     | 32 ++++++++++++++++++++++++++++++++
 10 files changed, 40 insertions(+), 24 deletions(-)

diff --git a/commands/md.c b/commands/md.c
index c88259a..3e83c72 100644
--- a/commands/md.c
+++ b/commands/md.c
@@ -28,6 +28,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <fs.h>
+#include <libfile.h>
 #include <fcntl.h>
 #include <getopt.h>
 #include <linux/stat.h>
diff --git a/commands/mem.c b/commands/mem.c
index 23c703f..907f1f7 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -41,29 +41,6 @@
 
 char *mem_rw_buf;
 
-int open_and_lseek(const char *filename, int mode, loff_t pos)
-{
-	int fd, ret;
-
-	fd = open(filename, mode | O_RDONLY);
-	if (fd < 0) {
-		perror("open");
-		return fd;
-	}
-
-	if (!pos)
-		return fd;
-
-	ret = lseek(fd, pos, SEEK_SET);
-	if (ret == -1) {
-		perror("lseek");
-		close(fd);
-		return -errno;
-	}
-
-	return fd;
-}
-
 /*
  * Common function for parsing options for the 'md', 'mw', 'memcpy', 'memcmp'
  * commands.
diff --git a/commands/memcmp.c b/commands/memcmp.c
index e079d5f..ce044df 100644
--- a/commands/memcmp.c
+++ b/commands/memcmp.c
@@ -28,6 +28,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <fs.h>
+#include <libfile.h>
 #include <fcntl.h>
 #include <getopt.h>
 #include <linux/stat.h>
diff --git a/commands/memcpy.c b/commands/memcpy.c
index 9c8b645..168ef3b 100644
--- a/commands/memcpy.c
+++ b/commands/memcpy.c
@@ -28,6 +28,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <fs.h>
+#include <libfile.h>
 #include <fcntl.h>
 #include <getopt.h>
 #include <linux/stat.h>
diff --git a/commands/memset.c b/commands/memset.c
index fc5b659..f871e07 100644
--- a/commands/memset.c
+++ b/commands/memset.c
@@ -28,6 +28,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <fs.h>
+#include <libfile.h>
 #include <fcntl.h>
 #include <getopt.h>
 #include <linux/stat.h>
diff --git a/commands/mm.c b/commands/mm.c
index 7c890a6..6d2a887 100644
--- a/commands/mm.c
+++ b/commands/mm.c
@@ -22,6 +22,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <fs.h>
+#include <libfile.h>
 #include <fcntl.h>
 #include <getopt.h>
 #include <linux/stat.h>
diff --git a/commands/mw.c b/commands/mw.c
index 8ca3c61..bb6a16e 100644
--- a/commands/mw.c
+++ b/commands/mw.c
@@ -28,6 +28,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <fs.h>
+#include <libfile.h>
 #include <fcntl.h>
 #include <getopt.h>
 #include <linux/stat.h>
diff --git a/include/common.h b/include/common.h
index 54120c4..680a0af 100644
--- a/include/common.h
+++ b/include/common.h
@@ -128,7 +128,6 @@ static inline void print_hex_dump(const char *level, const char *prefix_str,
 
 int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 		char **sourcefile, char **destfile, int *swab);
-int open_and_lseek(const char *filename, int mode, loff_t pos);
 #define RW_BUF_SIZE	(unsigned)4096
 
 extern const char version_string[];
diff --git a/include/libfile.h b/include/libfile.h
index d5b914a..51fa060 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -19,4 +19,6 @@ int copy_recursive(const char *src, const char *dst);
 
 int compare_file(const char *f1, const char *f2);
 
+int open_and_lseek(const char *filename, int mode, loff_t pos);
+
 #endif /* __LIBFILE_H */
diff --git a/lib/libfile.c b/lib/libfile.c
index a27460c..2c72ffe 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -442,3 +442,35 @@ err_out1:
 	close(fd1);
 	return ret;
 }
+
+/**
+ * open_and_lseek - open file and lseek to position
+ * @filename:	The file to open
+ * @mode:	The file open mode
+ * @pos:	The position to lseek to
+ *
+ * Return: If successful this function returns a positive filedescriptor
+ *         number, otherwise a negative error code is returned
+ */
+int open_and_lseek(const char *filename, int mode, loff_t pos)
+{
+	int fd, ret;
+
+	fd = open(filename, mode | O_RDONLY);
+	if (fd < 0) {
+		perror("open");
+		return fd;
+	}
+
+	if (!pos)
+		return fd;
+
+	ret = lseek(fd, pos, SEEK_SET);
+	if (ret == -1) {
+		perror("lseek");
+		close(fd);
+		return -errno;
+	}
+
+	return fd;
+}
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
