Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg61-0000hr-TW
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:43 +0000
Received: by mail-pl0-x242.google.com with SMTP id z9-v6so4663759plk.11
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:11 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:23 -0700
Message-Id: <20180615041136.23492-18-andrew.smirnov@gmail.com>
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
Subject: [PATCH 14/27] console: Consolidate DEBUG_LL and CONSOLE_* puts()
 implementations
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Similar to previous commit, consolidate DEBUG_LL and CONSOLE_* puts()
implementations by putting them into a shared macro.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/debug_ll.h | 23 +++++++++++++++++++----
 lib/console.c      | 13 ++++++-------
 2 files changed, 25 insertions(+), 11 deletions(-)

diff --git a/include/debug_ll.h b/include/debug_ll.h
index 4032ced95..4dcbd0434 100644
--- a/include/debug_ll.h
+++ b/include/debug_ll.h
@@ -54,6 +54,24 @@
 		__n;				\
 	})
 
+/**
+ * __do_puts - Macro implementing puts()
+ *
+ * @__putc:	Single argument or a macro that implements putc()
+ * @___s:	String to print
+ *
+ * Internal macro used to implement puts_ll() and __console_puts()
+ */
+#define __do_puts(__putc, ___s)			\
+	({					\
+		const char *__s = (___s);	\
+		int __n = 0;			\
+						\
+		while (*__s)			\
+			__n += __putc(*__s++);	\
+		__n;				\
+	})
+
 #if defined (CONFIG_DEBUG_LL)
 
 static inline void __putc_ll(char value)
@@ -80,10 +98,7 @@ static inline int putc_ll(char value);
  */
 static inline void puts_ll(const char * str)
 {
-	while (*str) {
-		putc_ll(*str);
-		str++;
-	}
+	__do_puts(putc_ll, str);
 }
 
 #else
diff --git a/lib/console.c b/lib/console.c
index f97deca97..91c446d6e 100644
--- a/lib/console.c
+++ b/lib/console.c
@@ -177,14 +177,13 @@ __weak void console_putc(unsigned int ch, char c)
  */
 int __console_puts(struct console_device *cdev, const char *str)
 {
-	int n = 0;
-
-	while (*str) {
-		n += __console_putc(cdev, *str);
-		str++;
-	}
+/*
+ * __do_puts expects a macro or a function of a single argument so we
+ * create this dummy adapter to work around that
+ */
+#define __CONSOLE_PUTC(__c)	__console_putc(cdev, __c)
 
-	return n;
+	return __do_puts(__CONSOLE_PUTC, str);
 }
 
 /**
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
