Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg6G-00032H-0B
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:36 +0000
Received: by mail-pl0-x242.google.com with SMTP id t12-v6so4666929plo.7
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:25 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:34 -0700
Message-Id: <20180615041136.23492-29-andrew.smirnov@gmail.com>
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
Subject: [PATCH 25/27] console: Introduce dvprintf()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

In an effort to consolidate various printf re-implementation,
introduce the most generic form of printf() to be used to implement
other flavours of it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/console_common.c | 18 ----------------
 lib/console.c           | 47 ++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 46 insertions(+), 19 deletions(-)

diff --git a/common/console_common.c b/common/console_common.c
index 6e098b27d..121f511e6 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -209,24 +209,6 @@ void log_print(unsigned flags)
 	}
 }
 
-int vprintf(const char *fmt, va_list args)
-{
-	int i;
-	char printbuffer[CFG_PBSIZE];
-
-	/*
-	 * For this to work, printbuffer must be larger than
-	 * anything we ever want to print.
-	 */
-	i = vsprintf(printbuffer, fmt, args);
-
-	/* Print the string */
-	puts(printbuffer);
-
-	return i;
-}
-EXPORT_SYMBOL(vprintf);
-
 struct console_device *console_get_by_dev(struct device_d *dev)
 {
 	struct console_device *cdev;
diff --git a/lib/console.c b/lib/console.c
index 57c3578d6..43eeb4cdf 100644
--- a/lib/console.c
+++ b/lib/console.c
@@ -237,4 +237,49 @@ int printf(const char *fmt, ...)
 
 	return i;
 }
-EXPORT_SYMBOL(printf);
\ No newline at end of file
+EXPORT_SYMBOL(printf);
+
+/**
+ * dputs() - Dummy dputs() implementation
+ *
+ * @fd:		File descriptor to print to
+ * @s:		String to print
+ *
+ * This is a dummy dputs() implementation intended to be used in PBL
+ * only. CONSOLE_* code overrides it with more sophisticated version
+ * that actually does correct output routing.
+ */
+__weak int dputs(int fd, const char *s)
+{
+	return console_puts(CONSOLE_STDOUT, s);
+}
+
+/**
+ * dvprintf() - A hybrid between dprintf() and vprintf()
+ *
+ * @fd:		File descriptor to print to
+ * @fmt:	Format string to use
+ * @args:	va_list with the rest of the arguments to be used
+ *
+ * This function is a most generic version of printf-family intended
+ * to be used to implement the rest of the printf-like functions
+ */
+static int dvprintf(int fd, const char *fmt, va_list args)
+{
+	char printbuffer[CFG_PBSIZE];
+
+	/*
+	 * For this to work, printbuffer must be larger than
+	 * anything we ever want to print.
+	 */
+	vsprintf(printbuffer, fmt, args);
+
+	/* Print the string */
+	return dputs(fd, printbuffer);
+}
+
+int vprintf(const char *fmt, va_list args)
+{
+	return dvprintf(STDOUT_FILENO, fmt, args);
+}
+EXPORT_SYMBOL(vprintf);
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
