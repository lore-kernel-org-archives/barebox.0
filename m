Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg5n-0000cD-7c
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:18 +0000
Received: by mail-pg0-x241.google.com with SMTP id w8-v6so827001pgp.7
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:11:56 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:10 -0700
Message-Id: <20180615041136.23492-5-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/27] console: Unify console_simple.c and pbl/console.c
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move all of the shared code into lib/console.c and convert both files
to use that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/console_simple.c |  11 +---
 include/console.h       |   8 +++
 lib/Makefile            |   6 +-
 lib/console.c           | 130 ++++++++++++++++++++++++++++++++++++++++
 pbl/console.c           |  15 +----
 5 files changed, 148 insertions(+), 22 deletions(-)
 create mode 100644 lib/console.c

diff --git a/common/console_simple.c b/common/console_simple.c
index 9675cbb0a..62b811b3f 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -7,7 +7,7 @@
 
 LIST_HEAD(console_list);
 EXPORT_SYMBOL(console_list);
-static struct console_device *console;
+extern struct console_device *console;
 
 int console_puts(unsigned int ch, const char *str)
 {
@@ -28,14 +28,7 @@ EXPORT_SYMBOL(console_puts);
 
 void console_putc(unsigned int ch, char c)
 {
-	if (!console) {
-		putc_ll(c);
-		return;
-	}
-
-	console->putc(console, c);
-	if (c == '\n')
-		console->putc(console, '\r');
+	__console_putc(__console_get_default(), c);
 }
 EXPORT_SYMBOL(console_putc);
 
diff --git a/include/console.h b/include/console.h
index c671be859..b3001ad16 100644
--- a/include/console.h
+++ b/include/console.h
@@ -69,6 +69,7 @@ struct console_device {
 	struct cdev_operations fops;
 
 	struct serdev_device serdev;
+	void *ctx;
 };
 
 static inline struct serdev_device *to_serdev_device(struct device_d *d)
@@ -209,4 +210,11 @@ static inline void pbl_set_putc(putc_func_t putcf, void *ctx) {}
 
 bool console_allow_color(void);
 
+void __cdev_putc(struct console_device *cdev, char c);
+void __console_putc(struct console_device *cdev, char c);
+
+struct console_device *__console_get_default(void);
+void __console_set_putc(struct console_device *cdev,
+			putc_func_t putcf, void *ctx);
+
 #endif
diff --git a/lib/Makefile b/lib/Makefile
index 09c250a1c..44188dc5a 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -65,4 +65,8 @@ obj-y			+= int_sqrt.o
 obj-y			+= parseopt.o
 obj-y			+= clz_ctz.o
 obj-$(CONFIG_CRC_CCITT) += crc-ccitt.o
-obj-pbl-y		+= clock.o
\ No newline at end of file
+obj-pbl-y		+= clock.o
+pbl-$(CONFIG_PBL_CONSOLE)	+= console.o
+obj-$(CONFIG_CONSOLE_FULL)	+= console.o
+obj-$(CONFIG_CONSOLE_SIMPLE)	+= console.o
+
diff --git a/lib/console.c b/lib/console.c
new file mode 100644
index 000000000..d2d2ae775
--- /dev/null
+++ b/lib/console.c
@@ -0,0 +1,130 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+/*
+ * File containing all of the console-related code that is used by all
+ * possible consumers: PBL, CONSOLE_FULL, CONSOLE_SIMPLE, etc.
+ *
+ * Copyright (C) 2018 Zodiac Inflight Innovations
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
+ */
+
+#include <debug_ll.h>
+#include <console.h>
+
+/*
+ * Put this in the data section so that it survives the clearing of
+ * the BSS segment.
+ */
+#define __data __attribute__ ((section(".data")))
+
+/**
+ * console_ll - most basic low-level console
+ */
+__data struct console_device console_ll = {
+	.putc = NULL,
+	.ctx  = NULL,
+};
+__data struct console_device *console;
+
+/**
+ * __console_ll_putc - Early, most primitive putc() implemenatation
+ *
+ * Internal function used as a .putc() callback in console_ll when
+ * nothing better is configured.
+ */
+static void __console_ll_putc(struct console_device *cdev, char c)
+{
+	putc_ll(c);
+}
+
+/**
+ * __console_get_default - Return default output console
+ *
+ * Internal function used to determine which console to use for early
+ * output. It has the following two use-cases:
+ *
+ *   1. PBL, where it falls back onto console_ll and whatever it is
+ *      set up to (either putc_ll or custome callback set with
+ *      pbl_set_putc())
+ *
+ *   2. CONSOLE_SIMPLE, where it falls back onto console_ll (which in
+ *      this case always boils down to a putc_ll() call) until first
+ *      (and only) console is registered via console_register().
+ */
+struct console_device *__console_get_default(void)
+{
+	/*
+	 * Doing on-demand initialization here as opposed to in the
+	 * definition of console_ll above has that advantage that on
+	 * some architecutres (e.g. AArch64) it allows us to avoid
+	 * additional relocation and makes it possible to use console
+	 * infrastructure before any relocation happens
+	 */
+	if (unlikely(!console_ll.putc))
+		console_ll.putc = __console_ll_putc;
+
+	if (IS_ENABLED(__PBL__) || !console)
+		return &console_ll;
+
+	return console;
+}
+
+/**
+ * __console_set_putc - Early console initalization helper
+ *
+ * @cdev:	Console device to initialize
+ * @putcf:	putc() implementation to be used for this console
+ * @ctx:	Context to pass to putc()
+ *
+ * Internal function used to initialize early/trivial console devices
+ * capable of only outputting a single character
+ */
+void __console_set_putc(struct console_device *cdev,
+			putc_func_t putcf, void *ctx)
+{
+	cdev->putc = (void *)putcf;
+	cdev->ctx = ctx;
+}
+
+/**
+ * __cdev_putc - Internal .putc() callback dispatcher
+ *
+ * @cdev:	Console device to use
+ * @c:		Character to print
+ *
+ * Internal .putc() callback dispatcher needed to correctly select
+ * which context to pass.
+ *
+ * This is needed becuase when being used in PBL in conjunction with
+ * pbl_set_putc(), .putc() callback is expecting to receive a void *
+ * context that was registered earlier.
+ *
+ * In the "normal" world, however all of the .putc() callback are
+ * written with expectation of receiving struct console_device * as a
+ * first argument.
+ *
+ * Accomodation of both of those use-cases is the purpoese of this
+ * function
+ */
+void __cdev_putc(struct console_device *cdev, char c)
+{
+	void *ctx = cdev->ctx ? : cdev;
+
+	cdev->putc(ctx, c);
+}
+
+/**
+ * __console_putc - Internal high-level putc() implementation
+ *
+ * @cdev:	Console device to use
+ * @c:		Character to print
+ *
+ * Internal high-level putc() implementation based on __cdev_putc()
+ * that performs correct '\n' -> '\n\r' substitution.
+ */
+void __console_putc(struct console_device *cdev, char c)
+{
+	__cdev_putc(cdev, c);
+	if (c == '\n')
+		__cdev_putc(cdev, '\r');
+}
diff --git a/pbl/console.c b/pbl/console.c
index 75576ec79..c1c3e1dde 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -2,12 +2,7 @@
 #include <debug_ll.h>
 #include <linux/err.h>
 
-/*
- * Put these in the data section so that they survive the clearing of the
- * BSS segment.
- */
-static __attribute__ ((section(".data"))) putc_func_t __putc;
-static __attribute__ ((section(".data"))) void *putc_ctx;
+extern struct console_device console_ll;
 
 /**
  * pbl_set_putc() - setup UART used for PBL console
@@ -19,16 +14,12 @@ static __attribute__ ((section(".data"))) void *putc_ctx;
  */
 void pbl_set_putc(putc_func_t putcf, void *ctx)
 {
-	__putc = putcf;
-	putc_ctx = ctx;
+	__console_set_putc(&console_ll, putcf, ctx);
 }
 
 void console_putc(unsigned int ch, char c)
 {
-	if (__putc)
-		__putc(putc_ctx, c);
-	else
-		putc_ll(c);
+	__cdev_putc(__console_get_default(), c);
 }
 
 int console_puts(unsigned int ch, const char *str)
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
