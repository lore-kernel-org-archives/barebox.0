Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8MLe-0002af-1O
 for barebox@lists.infradead.org; Thu, 12 Sep 2019 10:29:11 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Sep 2019 12:28:59 +0200
Message-Id: <20190912102905.21307-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/7] libfile: introduce copy_file_2 for copying starting with
 offset
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

barebox already has a copy_file for copying files. Extend the API by a
copy_file_2 that takes a source offset into account.

This is useful for handling SoC-specific image formats which have a
fixed-size header, as copy_file_2 can now skip that header and create a
file with the full barebox image in one go.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/libfile.h |  1 +
 lib/libfile.c     | 25 +++++++++++++++++++------
 2 files changed, 20 insertions(+), 6 deletions(-)

diff --git a/include/libfile.h b/include/libfile.h
index f1d695187790..02269f4877e6 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -16,6 +16,7 @@ int write_file(const char *filename, const void *buf, size_t size);
 int write_file_flash(const char *filename, const void *buf, size_t size);
 
 int copy_file(const char *src, const char *dst, int verbose);
+int copy_file_2(const char *src, const char *dst, loff_t pos, int verbose);
 
 int copy_recursive(const char *src, const char *dst);
 
diff --git a/lib/libfile.c b/lib/libfile.c
index b42753c2b5ea..4bc980816a67 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -318,14 +318,15 @@ out_close:
 EXPORT_SYMBOL(write_file_flash);
 
 /**
- * copy_file - Copy a file
+ * copy_file_2 - Copy a file
  * @src:	The source filename
  * @dst:	The destination filename
+ * @pos:	source file position to start reading at
  * @verbose:	if true, show a progression bar
  *
  * Return: 0 for success or negative error code
  */
-int copy_file(const char *src, const char *dst, int verbose)
+int copy_file_2(const char *src, const char *dst, loff_t pos, int verbose)
 {
 	char *rw_buf = NULL;
 	int srcfd = 0, dstfd = 0;
@@ -337,11 +338,9 @@ int copy_file(const char *src, const char *dst, int verbose)
 
 	rw_buf = xmalloc(RW_BUF_SIZE);
 
-	srcfd = open(src, O_RDONLY);
-	if (srcfd < 0) {
-		printf("could not open %s: %s\n", src, errno_str());
+	srcfd = open_and_lseek(src, O_RDONLY, pos);
+	if (srcfd < 0)
 		goto out;
-	}
 
 	mode = O_WRONLY | O_CREAT;
 
@@ -403,6 +402,20 @@ out:
 
 	return ret ?: err1;
 }
+EXPORT_SYMBOL(copy_file_2);
+
+/**
+ * copy_file - Copy a file
+ * @src:	The source filename
+ * @dst:	The destination filename
+ * @verbose:	if true, show a progression bar
+ *
+ * Return: 0 for success or negative error code
+ */
+int copy_file(const char *src, const char *dst, int verbose)
+{
+	return copy_file_2(src, dst, 0, verbose);
+}
 EXPORT_SYMBOL(copy_file);
 
 int copy_recursive(const char *src, const char *dst)
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
