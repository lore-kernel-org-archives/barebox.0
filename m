Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCpSj-0002yG-Qi
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 12:28:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 31 Jul 2014 14:27:33 +0200
Message-Id: <1406809657-2489-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1406809657-2489-1-git-send-email-s.hauer@pengutronix.de>
References: <1406809657-2489-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] read_file: introduce read_file_2
To: barebox@lists.infradead.org

read_file has some limitations:

- It is not possible to check the error code since read_file returns
  NULL for failure
- It is not possible to limit the buffer size to sensible limits.

This patch introduces read_file_2 which doesn't have these limitations.
read_file becomes a wrapper around read_file_2.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/libfile.h |  3 +++
 lib/libfile.c     | 71 ++++++++++++++++++++++++++++++++++++++++++++-----------
 2 files changed, 60 insertions(+), 14 deletions(-)

diff --git a/include/libfile.h b/include/libfile.h
index d47a111..4a25a91 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -8,6 +8,9 @@ char *read_file_line(const char *fmt, ...);
 
 void *read_file(const char *filename, size_t *size);
 
+int read_file_2(const char *filename, size_t *size, void **outbuf,
+		loff_t max_size);
+
 int write_file(const char *filename, void *buf, size_t size);
 
 int copy_file(const char *src, const char *dst, int verbose);
diff --git a/lib/libfile.c b/lib/libfile.c
index b36537f..c6fb6d7 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -116,55 +116,74 @@ out:
 EXPORT_SYMBOL_GPL(read_file_line);
 
 /**
- * read_file - read a file to an allocated buffer
+ * read_file_2 - read a file to an allocated buffer
  * @filename:  The filename to read
  * @size:      After successful return contains the size of the file
+ * @outbuf:    contains a pointer to the file data after successful return
+ * @max_size:  The maximum size to read. Use FILESIZE_MAX for reading files
+ *             of any size.
  *
- * This function reads a file to an allocated buffer.
- * Some TFTP servers do not transfer the size of a file. In this case
- * a the file is first read to a temporary file.
+ * This function reads a file to an allocated buffer. At maximum @max_size
+ * bytes are read. The actual read size is returned in @size. -EFBIG is
+ * returned if the file is bigger than @max_size, but the buffer is read
+ * anyway up to @max_size in this case. Free the buffer with free() after
+ * usage.
  *
- * Return: The buffer conataining the file or NULL on failure
+ * Return: 0 for success, or negative error code. -EFBIG is returned
+ * when the file has been bigger than max_size.
  */
-void *read_file(const char *filename, size_t *size)
+int read_file_2(const char *filename, size_t *size, void **outbuf,
+		loff_t max_size)
 {
 	int fd;
 	struct stat s;
 	void *buf = NULL;
 	const char *tmpfile = "/.read_file_tmp";
 	int ret;
+	loff_t read_size;
 
 again:
-	if (stat(filename, &s))
-		return NULL;
+	ret = stat(filename, &s);
+	if (ret)
+		return ret;
+
+	if (max_size == FILESIZE_MAX)
+		read_size = s.st_size;
+	else
+		read_size = max_size;
 
-	if (s.st_size == FILESIZE_MAX) {
+	if (read_size == FILESIZE_MAX) {
 		ret = copy_file(filename, tmpfile, 0);
 		if (ret)
-			return NULL;
+			return ret;
 		filename = tmpfile;
 		goto again;
 	}
 
-	buf = xzalloc(s.st_size + 1);
+	buf = xzalloc(read_size + 1);
 
 	fd = open(filename, O_RDONLY);
 	if (fd < 0)
 		goto err_out;
 
-	ret = read_full(fd, buf, s.st_size);
+	ret = read_full(fd, buf, read_size);
 	if (ret < 0)
 		goto err_out1;
 
 	close(fd);
 
 	if (size)
-		*size = s.st_size;
+		*size = ret;
 
 	if (filename == tmpfile)
 		unlink(tmpfile);
 
-	return buf;
+	*outbuf = buf;
+
+	if (read_size < s.st_size)
+		return -EFBIG;
+	else
+		return 0;
 
 err_out1:
 	close(fd);
@@ -174,6 +193,30 @@ err_out:
 	if (filename == tmpfile)
 		unlink(tmpfile);
 
+	return ret;
+}
+EXPORT_SYMBOL(read_file_2);
+
+/**
+ * read_file - read a file to an allocated buffer
+ * @filename:  The filename to read
+ * @size:      After successful return contains the size of the file
+ *
+ * This function reads a file to an allocated buffer.
+ * Some TFTP servers do not transfer the size of a file. In this case
+ * a the file is first read to a temporary file.
+ *
+ * Return: The buffer conataining the file or NULL on failure
+ */
+void *read_file(const char *filename, size_t *size)
+{
+	int ret;
+	void *buf;
+
+	ret = read_file_2(filename, size, &buf, FILESIZE_MAX);
+	if (!ret)
+		return buf;
+
 	return NULL;
 }
 EXPORT_SYMBOL(read_file);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
