Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-f181.google.com ([209.85.192.181])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UioBA-0000yl-Bi
 for barebox@lists.infradead.org; Sat, 01 Jun 2013 15:57:17 +0000
Received: by mail-pd0-f181.google.com with SMTP id bv13so3667110pdb.26
 for <barebox@lists.infradead.org>; Sat, 01 Jun 2013 08:56:53 -0700 (PDT)
From: monaka@monami-ya.jp
Date: Sun,  2 Jun 2013 00:56:44 +0900
Message-Id: <1370102204-74399-1-git-send-email-monaka@monami-ya.com>
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
Subject: [PATCH] Use FILE structure for stdin/stdout/stderr.
To: barebox@lists.infradead.org

From: Masaki Muranaka <monaka@monami-ya.com>

Signed-off-by: Masaki Muranaka <monaka@monami-ya.com>
---
 common/console.c        |  6 +++---
 common/console_common.c | 19 +++++++++----------
 include/filetype.h      |  2 ++
 include/stdio.h         | 17 +++++++++--------
 4 files changed, 23 insertions(+), 21 deletions(-)

diff --git a/common/console.c b/common/console.c
index a0a06f6..7a8ac4f 100644
--- a/common/console.c
+++ b/common/console.c
@@ -246,13 +246,13 @@ int getc(void)
 }
 EXPORT_SYMBOL(getc);
 
-int fgetc(int fd)
+int fgetc(FILE *file)
 {
 	char c;
 
-	if (!fd)
+	if (file == stdin)
 		return getc();
-	return read(fd, &c, 1);
+	return read(file->no, &c, 1);
 }
 EXPORT_SYMBOL(fgetc);
 
diff --git a/common/console_common.c b/common/console_common.c
index d139d1a..34713f9 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -66,7 +66,7 @@ EXPORT_SYMBOL(vprintf);
 
 #endif /* !CONFIG_CONSOLE_NONE */
 
-int fprintf(int file, const char *fmt, ...)
+int fprintf(FILE *file, const char *fmt, ...)
 {
 	va_list args;
 	char printbuffer[CFG_PBSIZE];
@@ -85,26 +85,25 @@ int fprintf(int file, const char *fmt, ...)
 }
 EXPORT_SYMBOL(fprintf);
 
-int fputs(int fd, const char *s)
+int fputs(FILE *file, const char *s)
 {
-	if (fd == 1)
+	if (file == stdout)
 		return puts(s);
-	else if (fd == 2)
+	else if (file == stderr)
 		return eputs(s);
 	else
-		return write(fd, s, strlen(s));
+		return write(file->no, s, strlen(s));
 }
 EXPORT_SYMBOL(fputs);
 
-int fputc(int fd, char c)
+int fputc(FILE *file, char c)
 {
-	if (fd == 1)
+	if (file == stdout)
 		putchar(c);
-	else if (fd == 2)
+	else if (file == stderr)
 		eputc(c);
 	else
-		return write(fd, &c, 1);
-
+		return write(file->no, &c, 1);
 	return 0;
 }
 EXPORT_SYMBOL(fputc);
diff --git a/include/filetype.h b/include/filetype.h
index ee777ac..c73c64a 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -1,6 +1,8 @@
 #ifndef __FILE_TYPE_H
 #define __FILE_TYPE_H
 
+#include <linux/string.h>
+
 /*
  * List of file types we know
  */
diff --git a/include/stdio.h b/include/stdio.h
index 5c091a8..00d1ed7 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -3,6 +3,7 @@
 
 #include <stdarg.h>
 #include <console.h>
+#include <fs.h>
 
 /*
  * STDIO based functions (can always be used)
@@ -93,15 +94,15 @@ static inline void putchar(char c)
  * FILE based functions
  */
 
-#define stdin		0
-#define stdout		1
-#define stderr		2
+#define stdin		((FILE *)0x10)
+#define stdout		((FILE *)0x11)
+#define stderr		((FILE *)0x12)
 #define MAX_FILES	128
 
-int	fprintf(int file, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
-int	fputs(int file, const char *s);
-int	fputc(int file, const char c);
-int	ftstc(int file);
-int	fgetc(int file);
+int	fprintf(FILE *file, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
+int	fputs(FILE *file, const char *s);
+int	fputc(FILE *file, const char c);
+int	ftstc(FILE *file);
+int	fgetc(FILE *file);
 
 #endif /* __STDIO_H */
-- 
1.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
