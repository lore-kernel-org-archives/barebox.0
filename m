Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x231.google.com ([2607:f8b0:400e:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg6E-00032A-9e
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:35 +0000
Received: by mail-pl0-x231.google.com with SMTP id f1-v6so4668294plt.6
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:19 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:29 -0700
Message-Id: <20180615041136.23492-24-andrew.smirnov@gmail.com>
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
Subject: [PATCH 20/27] console: Share definition for printf with PBL
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both CONSOLE_* and PBL have almost identical implementations of
pritnf(). Move the code to a common location so it can be share
between the two.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/console_common.c | 22 ----------------------
 lib/console.c           | 24 +++++++++++++++++++++++-
 pbl/console.c           | 15 ---------------
 3 files changed, 23 insertions(+), 38 deletions(-)

diff --git a/common/console_common.c b/common/console_common.c
index 06ed74fc2..f440a9448 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -227,28 +227,6 @@ void log_print(unsigned flags)
 	}
 }
 
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
-	i = vsprintf (printbuffer, fmt, args);
-	va_end(args);
-
-	/* Print the string */
-	puts(printbuffer);
-
-	return i;
-}
-EXPORT_SYMBOL(printf);
-
 int vprintf(const char *fmt, va_list args)
 {
 	int i;
diff --git a/lib/console.c b/lib/console.c
index 03563c9de..57c3578d6 100644
--- a/lib/console.c
+++ b/lib/console.c
@@ -215,4 +215,26 @@ __weak int ctrlc (void)
 		return 1;
 	return 0;
 }
-EXPORT_SYMBOL(ctrlc);
\ No newline at end of file
+EXPORT_SYMBOL(ctrlc);
+
+int printf(const char *fmt, ...)
+{
+	va_list args;
+	int i;
+	char printbuffer[CFG_PBSIZE];
+
+	va_start(args, fmt);
+
+	/*
+	 * For this to work, printbuffer must be larger than
+	 * anything we ever want to print.
+	 */
+	i = vsprintf(printbuffer, fmt, args);
+	va_end(args);
+
+	/* Print the string */
+	puts(printbuffer);
+
+	return i;
+}
+EXPORT_SYMBOL(printf);
\ No newline at end of file
diff --git a/pbl/console.c b/pbl/console.c
index 6c277052f..18df1efca 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -17,21 +17,6 @@ void pbl_set_putc(putc_func_t putcf, void *ctx)
 	__console_set_putc(&console_ll, putcf, ctx);
 }
 
-int printf(const char *fmt, ...)
-{
-	va_list args;
-	uint i;
-	char printbuffer[CFG_PBSIZE];
-
-	va_start(args, fmt);
-	i = vsprintf(printbuffer, fmt, args);
-	va_end(args);
-
-	console_puts(CONSOLE_STDOUT, printbuffer);
-
-	return i;
-}
-
 int pr_print(int level, const char *fmt, ...)
 {
 	va_list args;
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
