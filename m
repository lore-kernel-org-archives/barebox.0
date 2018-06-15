Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x22a.google.com ([2607:f8b0:400e:c01::22a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg5z-0000fP-KC
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:38 +0000
Received: by mail-pl0-x22a.google.com with SMTP id 6-v6so4127442plb.0
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:21 -0700
Message-Id: <20180615041136.23492-16-andrew.smirnov@gmail.com>
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
Subject: [PATCH 12/27] console: Drop ARCH_HAS_CTRLC
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

If we declare our default ctrlc() implementation as __weak we should
be easily override it with a platform specific implementation without
needing ARCH_HAS_CTRLC.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/sandbox/include/asm/common.h | 2 --
 include/stdio.h                   | 9 ---------
 lib/console.c                     | 9 +++++----
 3 files changed, 5 insertions(+), 15 deletions(-)

diff --git a/arch/sandbox/include/asm/common.h b/arch/sandbox/include/asm/common.h
index 9b8bd2d94..b0e6b7fb1 100644
--- a/arch/sandbox/include/asm/common.h
+++ b/arch/sandbox/include/asm/common.h
@@ -1,6 +1,4 @@
 #ifndef ASM_COMMON_H
 #define ASM_COMMON_H
 
-#define ARCH_HAS_CTRLC
-
 #endif /* ASM_COMMON_H */
diff --git a/include/stdio.h b/include/stdio.h
index f5004cd07..d918f3682 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -22,15 +22,6 @@ int vasprintf(char **strp, const char *fmt, va_list ap);
 int vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
 int vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
 
-#if !defined(ARCH_HAS_CTRLC) && \
-	(defined(CONFIG_CONSOLE_NONE) || defined(__PBL__))
-/* test if ctrl-c was pressed */
-static inline int ctrlc (void)
-{
-	return 0;
-}
-#endif /* ARCH_HAS_CTRLC */
-
 #ifndef CONFIG_CONSOLE_NONE
 /* stdin */
 int tstc(void);
diff --git a/lib/console.c b/lib/console.c
index 356392e54..12c0ae2de 100644
--- a/lib/console.c
+++ b/lib/console.c
@@ -205,10 +205,12 @@ __weak int console_puts(unsigned int ch, const char *str)
 	return __console_puts(__console_get_default(), str);
 }
 
-#if !defined(ARCH_HAS_CTRLC) && !defined(__PBL__)
 /* test if ctrl-c was pressed */
-int ctrlc (void)
+__weak int ctrlc (void)
 {
+	if (IS_ENABLED(__PBL__) || IS_ENABLED(CONFIG_CONSOLE_NONE))
+		return 0;
+
 	if (IS_ENABLED(CONFIG_CONSOLE_FULL))
 		poller_call();
 
@@ -216,5 +218,4 @@ int ctrlc (void)
 		return 1;
 	return 0;
 }
-EXPORT_SYMBOL(ctrlc);
-#endif /* ARCH_HAS_CTRC */
\ No newline at end of file
+EXPORT_SYMBOL(ctrlc);
\ No newline at end of file
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
