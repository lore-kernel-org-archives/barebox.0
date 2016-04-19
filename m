Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asQDo-00032l-5d
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 07:37:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Apr 2016 09:36:51 +0200
Message-Id: <1461051412-25711-14-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/14] stdio: Replace FILE functions with filedescriptor
 functions
To: Barebox List <barebox@lists.infradead.org>

We have defined stdin, stdout and stderr as integer file descriptors,
but normally they should be FILE *. Also fprintf, fputc and fputs take
file descriptors instead of FILE *. As FILE * are inconvenient in the
barebox environment replace the f* functions with the corresponding d*
functions. dprintf is POSIX conform whereas dputc and dputs are barebox
specific, but do not conflict with any stdc function. fgetc is unused
and can be removed without replacing it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/echo.c         | 10 +++++-----
 common/console.c        | 10 ----------
 common/console_common.c | 18 +++++++++---------
 common/globalvar.c      |  2 +-
 include/stdio.h         | 21 +++++++++------------
 5 files changed, 24 insertions(+), 37 deletions(-)

diff --git a/commands/echo.c b/commands/echo.c
index 7d47ab7..8853ee0 100644
--- a/commands/echo.c
+++ b/commands/echo.c
@@ -27,7 +27,7 @@
 static int do_echo(int argc, char *argv[])
 {
 	int i, optind = 1;
-	int fd = stdout, opt, newline = 1;
+	int fd = STDOUT_FILENO, opt, newline = 1;
 	char *file = NULL;
 	int oflags = O_WRONLY | O_CREAT;
 	char str[CONFIG_CBSIZE];
@@ -81,17 +81,17 @@ exit_parse:
 
 	for (i = optind; i < argc; i++) {
 		if (i > optind)
-			fputc(fd, ' ');
+			dputc(fd, ' ');
 		if (process_escape) {
 			process_escape_sequence(argv[i], str, CONFIG_CBSIZE);
-			fputs(fd, str);
+			dputs(fd, str);
 		} else {
-			fputs(fd, argv[i]);
+			dputs(fd, argv[i]);
 		}
 	}
 
 	if (newline)
-		fputc(fd, '\n');
+		dputc(fd, '\n');
 
 	if (file)
 		close(fd);
diff --git a/common/console.c b/common/console.c
index 37574b9..a67f169 100644
--- a/common/console.c
+++ b/common/console.c
@@ -382,16 +382,6 @@ int getchar(void)
 }
 EXPORT_SYMBOL(getchar);
 
-int fgetc(int fd)
-{
-	char c;
-
-	if (!fd)
-		return getchar();
-	return read(fd, &c, 1);
-}
-EXPORT_SYMBOL(fgetc);
-
 int tstc(void)
 {
 	return kfifo_len(console_input_fifo) || tstc_raw();
diff --git a/common/console_common.c b/common/console_common.c
index a9bbce9..2e5869f 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -278,7 +278,7 @@ EXPORT_SYMBOL(console_get_first_active);
 
 #endif /* !CONFIG_CONSOLE_NONE */
 
-int fprintf(int file, const char *fmt, ...)
+int dprintf(int file, const char *fmt, ...)
 {
 	va_list args;
 	char printbuffer[CFG_PBSIZE];
@@ -293,30 +293,30 @@ int fprintf(int file, const char *fmt, ...)
 	va_end(args);
 
 	/* Print the string */
-	return fputs(file, printbuffer);
+	return dputs(file, printbuffer);
 }
-EXPORT_SYMBOL(fprintf);
+EXPORT_SYMBOL(dprintf);
 
-int fputs(int fd, const char *s)
+int dputs(int fd, const char *s)
 {
 	if (fd == 1)
 		return puts(s);
 	else if (fd == 2)
-		return eputs(s);
+		return console_puts(CONSOLE_STDERR, s);
 	else
 		return write(fd, s, strlen(s));
 }
-EXPORT_SYMBOL(fputs);
+EXPORT_SYMBOL(dputs);
 
-int fputc(int fd, char c)
+int dputc(int fd, char c)
 {
 	if (fd == 1)
 		putchar(c);
 	else if (fd == 2)
-		eputc(c);
+		console_putc(CONSOLE_STDERR, c);
 	else
 		return write(fd, &c, 1);
 
 	return 0;
 }
-EXPORT_SYMBOL(fputc);
+EXPORT_SYMBOL(dputc);
diff --git a/common/globalvar.c b/common/globalvar.c
index d5dd461..bc1734d 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -51,7 +51,7 @@ static int nv_save(const char *name, const char *val)
 	if (fd < 0)
 		return fd;
 
-	fprintf(fd, "%s", val);
+	dprintf(fd, "%s", val);
 
 	close(fd);
 
diff --git a/include/stdio.h b/include/stdio.h
index 1ead0e6..5e61571 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -89,23 +89,20 @@ static inline void putchar(char c)
 	console_putc(CONSOLE_STDOUT, c);
 }
 
-/* stderr */
-#define eputc(c)		console_putc(CONSOLE_STDERR, c)
-#define eputs(s)		console_puts(CONSOLE_STDERR, s)
-#define eprintf(fmt,args...)	fprintf(stderr,fmt ,##args)
-
 /*
  * FILE based functions
  */
 
-#define stdin		0
-#define stdout		1
-#define stderr		2
+/* stderr */
+#define eprintf(fmt,args...)	dprintf(STDERR_FILENO, fmt ,##args)
+
+#define STDIN_FILENO		0
+#define STDOUT_FILENO		1
+#define STDERR_FILENO		2
 #define MAX_FILES	128
 
-int	fprintf(int file, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
-int	fputs(int file, const char *s);
-int	fputc(int file, const char c);
-int	fgetc(int file);
+int dprintf(int file, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
+int dputs(int file, const char *s);
+int dputc(int file, const char c);
 
 #endif /* __STDIO_H */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
