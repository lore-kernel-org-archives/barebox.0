Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg61-0000iu-Tb
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:49 +0000
Received: by mail-pl0-x242.google.com with SMTP id g20-v6so4676245plq.1
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:12 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:24 -0700
Message-Id: <20180615041136.23492-19-andrew.smirnov@gmail.com>
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
Subject: [PATCH 15/27] console_simple: Use console_flush() from CONSOLE_FULL
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both implementations of console_flush() should behave the same way.
Arguably CONSOLE_FULL's implementation is a bit bulkier that what
CONSOLE_SIMPLE has, but this replacement allows us to share more code
between CONSOLE_SIMPLE and CONSOLE_FULL as well as reduce our
dependencies on global console pointer in CONSOLE_SIMPLE.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/console.c        | 14 --------------
 common/console_common.c | 11 +++++++++++
 common/console_simple.c |  9 ---------
 lib/console.c           |  2 ++
 4 files changed, 13 insertions(+), 23 deletions(-)

diff --git a/common/console.c b/common/console.c
index 6f195e882..f454f91c0 100644
--- a/common/console.c
+++ b/common/console.c
@@ -38,9 +38,6 @@
 #include <linux/stringify.h>
 #include <debug_ll.h>
 
-LIST_HEAD(console_list);
-EXPORT_SYMBOL(console_list);
-
 #define CONSOLE_UNINITIALIZED		0
 #define CONSOLE_INITIALIZED_BUFFER	1
 #define CONSOLE_INIT_FULL		2
@@ -560,16 +557,5 @@ int console_puts(unsigned int ch, const char *str)
 }
 EXPORT_SYMBOL(console_puts);
 
-void console_flush(void)
-{
-	struct console_device *cdev;
-
-	for_each_console(cdev) {
-		if (cdev->flush)
-			cdev->flush(cdev);
-	}
-}
-EXPORT_SYMBOL(console_flush);
-
 BAREBOX_MAGICVAR_NAMED(global_linux_bootargs_console, global.linux.bootargs.console,
 		"console= argument for Linux from the linux,stdout-path property in /chosen node");
diff --git a/common/console_common.c b/common/console_common.c
index 0131a1190..324d42915 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -315,6 +315,17 @@ struct console_device *console_get_first_active(void)
 }
 EXPORT_SYMBOL(console_get_first_active);
 
+void console_flush(void)
+{
+	struct console_device *cdev;
+
+	for_each_console(cdev) {
+		if (cdev->flush)
+			cdev->flush(cdev);
+	}
+}
+EXPORT_SYMBOL(console_flush);
+
 #endif /* !CONFIG_CONSOLE_NONE */
 
 int dprintf(int file, const char *fmt, ...)
diff --git a/common/console_simple.c b/common/console_simple.c
index e2456e987..9da516ee9 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -5,8 +5,6 @@
 #include <debug_ll.h>
 #include <console.h>
 
-LIST_HEAD(console_list);
-EXPORT_SYMBOL(console_list);
 extern struct console_device *console;
 
 int tstc(void)
@@ -26,13 +24,6 @@ int getchar(void)
 }
 EXPORT_SYMBOL(getchar);
 
-void console_flush(void)
-{
-	if (console && console->flush)
-		console->flush(console);
-}
-EXPORT_SYMBOL(console_flush);
-
 int console_register(struct console_device *newcdev)
 {
 	if (console)
diff --git a/lib/console.c b/lib/console.c
index 91c446d6e..b8d6456c9 100644
--- a/lib/console.c
+++ b/lib/console.c
@@ -29,6 +29,8 @@ __data struct console_device console_ll = {
 	.ctx  = NULL,
 };
 __data struct console_device *console;
+LIST_HEAD(console_list);
+EXPORT_SYMBOL(console_list);
 
 /**
  * __console_ll_putc - Early, most primitive putc() implemenatation
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
