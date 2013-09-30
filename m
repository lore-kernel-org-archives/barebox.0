Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQa0v-00063V-0w
 for barebox@lists.infradead.org; Mon, 30 Sep 2013 09:43:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Sep 2013 11:43:05 +0200
Message-Id: <1380534188-1734-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380534188-1734-1-git-send-email-s.hauer@pengutronix.de>
References: <1380534188-1734-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] add function to read single line files
To: barebox@lists.infradead.org

Often small files are used to store the value od a variable. This
adds a function to easily read such a variable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/libbb.h |  2 ++
 lib/libbb.c     | 42 ++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 44 insertions(+)

diff --git a/include/libbb.h b/include/libbb.h
index 47b2e08..2fe710c 100644
--- a/include/libbb.h
+++ b/include/libbb.h
@@ -35,4 +35,6 @@ char *simple_itoa(unsigned int i);
 int write_full(int fd, void *buf, size_t size);
 int read_full(int fd, void *buf, size_t size);
 
+char *read_file_line(const char *fmt, ...);
+
 #endif /* __LIBBB_H */
diff --git a/lib/libbb.c b/lib/libbb.c
index e0d7481..6a083f9 100644
--- a/lib/libbb.c
+++ b/lib/libbb.c
@@ -176,3 +176,45 @@ int read_full(int fd, void *buf, size_t size)
 	return insize;
 }
 EXPORT_SYMBOL(read_full);
+
+/*
+ * read_file_line - read a line from a file
+ *
+ * Used to compose a filename from a printf format and to read a line from this
+ * file. All leading and trailing whitespaces (including line endings) are
+ * removed. The returned buffer must be freed with free(). This function is
+ * supposed for reading variable like content into a buffer, so files > 1024
+ * bytes are ignored.
+ */
+char *read_file_line(const char *fmt, ...)
+{
+	va_list args;
+	char *filename;
+	char *buf, *line = NULL;
+	int size, ret;
+	struct stat s;
+
+	va_start(args, fmt);
+	filename = vasprintf(fmt, args);
+	va_end(args);
+
+	ret = stat(filename, &s);
+	if (ret)
+		goto out;
+
+	if (s.st_size > 1024)
+		goto out;
+
+	buf = read_file(filename, &size);
+	if (!buf)
+		goto out;
+
+	line = strim(buf);
+
+	line = xstrdup(line);
+	free(buf);
+out:
+	free(filename);
+	return line;
+}
+EXPORT_SYMBOL_GPL(read_file_line);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
