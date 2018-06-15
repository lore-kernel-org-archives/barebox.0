Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x22c.google.com ([2607:f8b0:400e:c01::22c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg5y-0000es-Dm
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:37 +0000
Received: by mail-pl0-x22c.google.com with SMTP id 30-v6so4662606pld.13
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:20 -0700
Message-Id: <20180615041136.23492-15-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/27] console: Consolidate all implemenatations of ctrlc()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/console.c        | 13 -------------
 common/console_simple.c | 11 -----------
 include/stdio.h         | 17 +++++++++--------
 lib/console.c           | 16 +++++++++++++++-
 pbl/console.c           |  5 -----
 5 files changed, 24 insertions(+), 38 deletions(-)

diff --git a/common/console.c b/common/console.c
index 4d056b2de..6f195e882 100644
--- a/common/console.c
+++ b/common/console.c
@@ -571,18 +571,5 @@ void console_flush(void)
 }
 EXPORT_SYMBOL(console_flush);
 
-#ifndef ARCH_HAS_CTRLC
-/* test if ctrl-c was pressed */
-int ctrlc (void)
-{
-	poller_call();
-
-	if (tstc() && getchar() == 3)
-		return 1;
-	return 0;
-}
-EXPORT_SYMBOL(ctrlc);
-#endif /* ARCH_HAS_CTRC */
-
 BAREBOX_MAGICVAR_NAMED(global_linux_bootargs_console, global.linux.bootargs.console,
 		"console= argument for Linux from the linux,stdout-path property in /chosen node");
diff --git a/common/console_simple.c b/common/console_simple.c
index 898f68a48..e2456e987 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -33,17 +33,6 @@ void console_flush(void)
 }
 EXPORT_SYMBOL(console_flush);
 
-#ifndef ARCH_HAS_CTRLC
-/* test if ctrl-c was pressed */
-int ctrlc (void)
-{
-	if (tstc() && getchar() == 3)
-		return 1;
-	return 0;
-}
-EXPORT_SYMBOL(ctrlc);
-#endif /* ARCH_HAS_CTRC */
-
 int console_register(struct console_device *newcdev)
 {
 	if (console)
diff --git a/include/stdio.h b/include/stdio.h
index 7b2a42b81..f5004cd07 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -22,6 +22,15 @@ int vasprintf(char **strp, const char *fmt, va_list ap);
 int vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
 int vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
 
+#if !defined(ARCH_HAS_CTRLC) && \
+	(defined(CONFIG_CONSOLE_NONE) || defined(__PBL__))
+/* test if ctrl-c was pressed */
+static inline int ctrlc (void)
+{
+	return 0;
+}
+#endif /* ARCH_HAS_CTRLC */
+
 #ifndef CONFIG_CONSOLE_NONE
 /* stdin */
 int tstc(void);
@@ -58,14 +67,6 @@ static inline int vprintf(const char *fmt, va_list args)
 	return 0;
 }
 
-#ifndef ARCH_HAS_CTRLC
-/* test if ctrl-c was pressed */
-static inline int ctrlc (void)
-{
-	return 0;
-}
-#endif /* ARCH_HAS_CTRLC */
-
 #endif
 
 #if (!defined(__PBL__) && !defined(CONFIG_CONSOLE_NONE)) || \
diff --git a/lib/console.c b/lib/console.c
index a8be7b7e3..356392e54 100644
--- a/lib/console.c
+++ b/lib/console.c
@@ -203,4 +203,18 @@ int __console_puts(struct console_device *cdev, const char *str)
 __weak int console_puts(unsigned int ch, const char *str)
 {
 	return __console_puts(__console_get_default(), str);
-}
\ No newline at end of file
+}
+
+#if !defined(ARCH_HAS_CTRLC) && !defined(__PBL__)
+/* test if ctrl-c was pressed */
+int ctrlc (void)
+{
+	if (IS_ENABLED(CONFIG_CONSOLE_FULL))
+		poller_call();
+
+	if (tstc() && getchar() == 3)
+		return 1;
+	return 0;
+}
+EXPORT_SYMBOL(ctrlc);
+#endif /* ARCH_HAS_CTRC */
\ No newline at end of file
diff --git a/pbl/console.c b/pbl/console.c
index e9194b480..6c277052f 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -46,8 +46,3 @@ int pr_print(int level, const char *fmt, ...)
 
 	return i;
 }
-
-int ctrlc(void)
-{
-	return 0;
-}
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
