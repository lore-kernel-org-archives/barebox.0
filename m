Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg5w-0000hA-UY
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:35 +0000
Received: by mail-pl0-x243.google.com with SMTP id a7-v6so4674549plp.3
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:10 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:22 -0700
Message-Id: <20180615041136.23492-17-andrew.smirnov@gmail.com>
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
Subject: [PATCH 13/27] console: Consolidate DEBUG_LL and CONSOLE_* '\n' ->
 '\n\r' code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Consolidate code doing '\n' -> '\n\r' compensation in DEBUG_LL and
CONSOLE_* subsystems. While at it move it from puts_ll() to putc_ll()
in order to match the semantics of other puts()/putc()
implementations.

This is done as a macro in order to avoid putting any restrictions on
the signature of __putc.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/debug_ll.h | 38 ++++++++++++++++++++++++++++++++------
 lib/console.c      | 17 +++++++----------
 2 files changed, 39 insertions(+), 16 deletions(-)

diff --git a/include/debug_ll.h b/include/debug_ll.h
index 504751639..4032ced95 100644
--- a/include/debug_ll.h
+++ b/include/debug_ll.h
@@ -31,9 +31,32 @@
 #include <mach/debug_ll.h>
 #endif
 
+/**
+ * __do_putc - Macro implementing '\n'-> '\n\r' substituting putc()
+ *
+ * @__putc:	Single argument or a macro that implements plain putc()
+ * @__c:	Character to print
+ *
+ * Internal macro used to implement putc_ll() and __console_putc() and
+ * intended to be the only place where '\n' -> '\n\r' substitution is
+ * codified
+ */
+#define __do_putc(__putc, ___c)			\
+	({					\
+		typeof(___c) __c = (___c);	\
+		int __n = 1;			\
+						\
+		__putc(__c);			\
+		if (__c == '\n') {		\
+			__putc('\r');		\
+			__n = 2;		\
+		}				\
+		__n;				\
+	})
+
 #if defined (CONFIG_DEBUG_LL)
 
-static inline void putc_ll(char value)
+static inline void __putc_ll(char value)
 {
 	PUTC_LL(value);
 }
@@ -45,10 +68,11 @@ static inline void puthex_ll(unsigned long value)
 	for (i = sizeof(unsigned long) * 2; i--; ) {
 		ch = ((value >> (i * 4)) & 0xf);
 		ch += (ch >= 10) ? 'a' - 10 : '0';
-		putc_ll(ch);
+		__putc_ll(ch);
 	}
 }
 
+static inline int putc_ll(char value);
 /*
  * Be careful with puts_ll, it only works if the binary is running at the
  * link address which often is not the case during early startup. If in doubt
@@ -57,9 +81,6 @@ static inline void puthex_ll(unsigned long value)
 static inline void puts_ll(const char * str)
 {
 	while (*str) {
-		if (*str == '\n')
-			putc_ll('\r');
-
 		putc_ll(*str);
 		str++;
 	}
@@ -67,7 +88,7 @@ static inline void puts_ll(const char * str)
 
 #else
 
-static inline void putc_ll(char value)
+static inline void __putc_ll(char value)
 {
 }
 
@@ -86,4 +107,9 @@ static inline void puts_ll(const char * str)
 
 #endif
 
+static inline int putc_ll(char value)
+{
+	return __do_putc(__putc_ll, value);
+}
+
 #endif  /* __INCLUDE_DEBUG_LL_H__ */
diff --git a/lib/console.c b/lib/console.c
index 12c0ae2de..f97deca97 100644
--- a/lib/console.c
+++ b/lib/console.c
@@ -134,16 +134,13 @@ void __cdev_putc(struct console_device *cdev, char c)
  */
 int __console_putc(struct console_device *cdev, char c)
 {
-	int n = 0;
-
-	__cdev_putc(cdev, c);
-	n++;
-	if (c == '\n') {
-		__cdev_putc(cdev, '\r');
-		n++;
-	}
-
-	return n;
+/*
+ * __do_putc expects a macro or a function of a single argument so we
+ * create this dummy adapter to work around that
+ */
+#define __CDEV_PUTC(__c)	__cdev_putc(cdev, __c)
+	
+	return __do_putc(__CDEV_PUTC, c);
 }
 
 /**
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
