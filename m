Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x22b.google.com ([2607:f8b0:400e:c01::22b])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg6G-0000sQ-4o
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:13:00 +0000
Received: by mail-pl0-x22b.google.com with SMTP id t12-v6so4666965plo.7
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:25 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:35 -0700
Message-Id: <20180615041136.23492-30-andrew.smirnov@gmail.com>
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
Subject: [PATCH 26/27] console: Convert printf() into a single line #define
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Since printf() is just a special case of dprintf(), we can re-arrange
our codebase to share that definition for dprintf() and have printf()
as a simple marcro expanding into appropriate call to dprintf() thus
allowing us to drop a bit of code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/console_common.c | 19 -------------------
 include/stdio.h         |  2 +-
 lib/console.c           | 35 +++++++++++++----------------------
 3 files changed, 14 insertions(+), 42 deletions(-)

diff --git a/common/console_common.c b/common/console_common.c
index 121f511e6..8211589b3 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -316,25 +316,6 @@ __weak int getchar(void) __alias(getc_raw);
 
 #endif /* !CONFIG_CONSOLE_NONE */
 
-int dprintf(int file, const char *fmt, ...)
-{
-	va_list args;
-	char printbuffer[CFG_PBSIZE];
-
-	va_start(args, fmt);
-
-	/*
-	 * For this to work, printbuffer must be larger than
-	 * anything we ever want to print.
-	 */
-	vsprintf(printbuffer, fmt, args);
-	va_end(args);
-
-	/* Print the string */
-	return dputs(file, printbuffer);
-}
-EXPORT_SYMBOL(dprintf);
-
 int dputs(int fd, const char *s)
 {
 	unsigned int ch;
diff --git a/include/stdio.h b/include/stdio.h
index 3b80b4bd7..ae3904340 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -62,7 +62,7 @@ static inline int vprintf(const char *fmt, va_list args)
 
 #if (!defined(__PBL__) && !defined(CONFIG_CONSOLE_NONE)) || \
 	(defined(__PBL__) && defined(CONFIG_PBL_CONSOLE))
-int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+#define printf(fmt, arg...)	dprintf(STDOUT_FILENO, fmt, ## arg)
 #else
 static int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
 static inline int printf(const char *fmt, ...)
diff --git a/lib/console.c b/lib/console.c
index 43eeb4cdf..84f2b5126 100644
--- a/lib/console.c
+++ b/lib/console.c
@@ -217,28 +217,6 @@ __weak int ctrlc (void)
 }
 EXPORT_SYMBOL(ctrlc);
 
-int printf(const char *fmt, ...)
-{
-	va_list args;
-	int i;
-	char printbuffer[CFG_PBSIZE];
-
-	va_start(args, fmt);
-
-	/*
-	 * For this to work, printbuffer must be larger than
-	 * anything we ever want to print.
-	 */
-	i = vsprintf(printbuffer, fmt, args);
-	va_end(args);
-
-	/* Print the string */
-	puts(printbuffer);
-
-	return i;
-}
-EXPORT_SYMBOL(printf);
-
 /**
  * dputs() - Dummy dputs() implementation
  *
@@ -283,3 +261,16 @@ int vprintf(const char *fmt, va_list args)
 	return dvprintf(STDOUT_FILENO, fmt, args);
 }
 EXPORT_SYMBOL(vprintf);
+
+int dprintf(int file, const char *fmt, ...)
+{
+	int i;
+	va_list args;
+
+	va_start(args, fmt);
+	i = dvprintf(file, fmt, args);
+	va_end(args);
+
+	return i;
+}
+EXPORT_SYMBOL(dprintf);
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
