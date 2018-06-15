Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x231.google.com ([2607:f8b0:400e:c01::231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg65-0000kw-93
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:50 +0000
Received: by mail-pl0-x231.google.com with SMTP id g20-v6so4676286plq.1
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:14 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:26 -0700
Message-Id: <20180615041136.23492-21-andrew.smirnov@gmail.com>
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
Subject: [PATCH 17/27] console_simple: Use getc_raw() as getchar()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Semantics implemented by getc_raw() in CONSOLE_FULL is reasonably
close to what getchar() in CONSOLE_SIMPLE does. Arguably getc_raw() is
bulkier than what CONSOLE_SIMPLE has, but this replacement allows us
to share more code between CONSOLE_SIMPLE and CONSOLE_FULL as well as
reduce our dependencies on global console pointer in CONSOLE_SIMPLE.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/console.c        | 27 ---------------------------
 common/console_common.c | 29 +++++++++++++++++++++++++++++
 common/console_simple.c |  8 --------
 include/console.h       |  1 +
 4 files changed, 30 insertions(+), 35 deletions(-)

diff --git a/common/console.c b/common/console.c
index c8c413a5e..a6f8ac445 100644
--- a/common/console.c
+++ b/common/console.c
@@ -427,33 +427,6 @@ int console_unregister(struct console_device *cdev)
 }
 EXPORT_SYMBOL(console_unregister);
 
-static int getc_raw(void)
-{
-	struct console_device *cdev;
-	int active = 0;
-
-	while (1) {
-		for_each_console(cdev) {
-			if (!(cdev->f_active & CONSOLE_STDIN))
-				continue;
-			active = 1;
-			if (cdev->tstc(cdev)) {
-				int ch = cdev->getc(cdev);
-
-				if (IS_ENABLED(CONFIG_RATP) && ch == 0x01) {
-					barebox_ratp(cdev);
-					return -1;
-				}
-
-				return ch;
-			}
-		}
-		if (!active)
-			/* no active console found. bail out */
-			return -1;
-	}
-}
-
 int getchar(void)
 {
 	unsigned char ch;
diff --git a/common/console_common.c b/common/console_common.c
index 0653cb916..06ed74fc2 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -30,6 +30,7 @@
 #include <clock.h>
 #include <malloc.h>
 #include <asm-generic/div64.h>
+#include <ratp_bb.h>
 
 #ifndef CONFIG_CONSOLE_NONE
 
@@ -343,6 +344,34 @@ int tstc_raw(void)
 __weak int tstc(void) __alias(tstc_raw);
 EXPORT_SYMBOL(tstc);
 
+int getc_raw(void)
+{
+	struct console_device *cdev;
+	int active = 0;
+
+	while (1) {
+		for_each_console(cdev) {
+			if (!(cdev->f_active & CONSOLE_STDIN))
+				continue;
+			active = 1;
+			if (cdev->tstc(cdev)) {
+				int ch = cdev->getc(cdev);
+
+				if (IS_ENABLED(CONFIG_RATP) && ch == 0x01) {
+					barebox_ratp(cdev);
+					return -1;
+				}
+
+				return ch;
+			}
+		}
+		if (!active)
+			/* no active console found. bail out */
+			return -1;
+	}
+}
+__weak int getchar(void) __alias(getc_raw);
+
 #endif /* !CONFIG_CONSOLE_NONE */
 
 int dprintf(int file, const char *fmt, ...)
diff --git a/common/console_simple.c b/common/console_simple.c
index 475d96b68..ac22a2592 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -7,14 +7,6 @@
 
 extern struct console_device *console;
 
-int getchar(void)
-{
-	if (!console)
-		return -EINVAL;
-	return console->getc(console);
-}
-EXPORT_SYMBOL(getchar);
-
 int console_register(struct console_device *newcdev)
 {
 	if (console)
diff --git a/include/console.h b/include/console.h
index d8d36f219..2a9f5fb79 100644
--- a/include/console.h
+++ b/include/console.h
@@ -219,5 +219,6 @@ void __console_set_putc(struct console_device *cdev,
 			putc_func_t putcf, void *ctx);
 
 int tstc_raw(void);
+int getc_raw(void);
 
 #endif
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
