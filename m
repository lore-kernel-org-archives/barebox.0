Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg6E-0005a3-7k
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:36 +0000
Received: by mail-pl0-x243.google.com with SMTP id t12-v6so4666894plo.7
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:32 -0700
Message-Id: <20180615041136.23492-27-andrew.smirnov@gmail.com>
In-Reply-To: <20180615041136.23492-1-andrew.smirnov@gmail.com>
References: <20180615041136.23492-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 23/27] console: Remove dputc()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

The only use of dputc() is commands/echo.c and the code there can
easily be converted to dputs(). Do that and drop dputc() to avoid
duplicating fd selection logic already found in dputs().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/echo.c         |  4 ++--
 common/console_common.c | 15 +--------------
 include/stdio.h         |  1 -
 3 files changed, 3 insertions(+), 17 deletions(-)

diff --git a/commands/echo.c b/commands/echo.c
index 8853ee0a3..233f804a2 100644
--- a/commands/echo.c
+++ b/commands/echo.c
@@ -81,7 +81,7 @@ exit_parse:
 
 	for (i = optind; i < argc; i++) {
 		if (i > optind)
-			dputc(fd, ' ');
+			dputs(fd, " ");
 		if (process_escape) {
 			process_escape_sequence(argv[i], str, CONFIG_CBSIZE);
 			dputs(fd, str);
@@ -91,7 +91,7 @@ exit_parse:
 	}
 
 	if (newline)
-		dputc(fd, '\n');
+		dputs(fd, "\n");
 
 	if (file)
 		close(fd);
diff --git a/common/console_common.c b/common/console_common.c
index 296b181d9..ce7e50dbc 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -362,17 +362,4 @@ int dputs(int fd, const char *s)
 	else
 		return write(fd, s, strlen(s));
 }
-EXPORT_SYMBOL(dputs);
-
-int dputc(int fd, char c)
-{
-	if (fd == 1)
-		putchar(c);
-	else if (fd == 2)
-		console_putc(CONSOLE_STDERR, c);
-	else
-		return write(fd, &c, 1);
-
-	return 0;
-}
-EXPORT_SYMBOL(dputc);
+EXPORT_SYMBOL(dputs);
\ No newline at end of file
diff --git a/include/stdio.h b/include/stdio.h
index d918f3682..3b80b4bd7 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -95,6 +95,5 @@ static inline void putchar(char c)
 
 int dprintf(int file, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
 int dputs(int file, const char *s);
-int dputc(int file, const char c);
 
 #endif /* __STDIO_H */
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
