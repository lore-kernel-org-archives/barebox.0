Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22f.google.com ([2607:f8b0:400e:c00::22f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg63-0000jr-TO
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:50 +0000
Received: by mail-pf0-x22f.google.com with SMTP id a63-v6so4260672pfl.1
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:25 -0700
Message-Id: <20180615041136.23492-20-andrew.smirnov@gmail.com>
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
Subject: [PATCH 16/27] console_simple: Use tstc_raw() as tstc()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Semantics implemented by tstc_raw() in CONSOLE_FULL is reasonably
close to what testc() in CONSOLE_SIMPLE does. Arguably tstc_raw() is
bulkier that what CONSOLE_SIMPLE has, but this replacement allows us
to share more code between CONSOLE_SIMPLE and CONSOLE_FULL as well as
reduce our dependencies on global console pointer in CONSOLE_SIMPLE.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/console.c        | 14 --------------
 common/console_common.c | 17 +++++++++++++++++
 common/console_simple.c |  9 ---------
 include/console.h       |  2 ++
 4 files changed, 19 insertions(+), 23 deletions(-)

diff --git a/common/console.c b/common/console.c
index f454f91c0..c8c413a5e 100644
--- a/common/console.c
+++ b/common/console.c
@@ -454,20 +454,6 @@ static int getc_raw(void)
 	}
 }
 
-static int tstc_raw(void)
-{
-	struct console_device *cdev;
-
-	for_each_console(cdev) {
-		if (!(cdev->f_active & CONSOLE_STDIN))
-			continue;
-		if (cdev->tstc(cdev))
-			return 1;
-	}
-
-	return 0;
-}
-
 int getchar(void)
 {
 	unsigned char ch;
diff --git a/common/console_common.c b/common/console_common.c
index 324d42915..0653cb916 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -326,6 +326,23 @@ void console_flush(void)
 }
 EXPORT_SYMBOL(console_flush);
 
+int tstc_raw(void)
+{
+	struct console_device *cdev;
+
+	for_each_console(cdev) {
+		if (!(cdev->f_active & CONSOLE_STDIN))
+			continue;
+		if (cdev->tstc(cdev))
+			return 1;
+	}
+
+	return 0;
+}
+
+__weak int tstc(void) __alias(tstc_raw);
+EXPORT_SYMBOL(tstc);
+
 #endif /* !CONFIG_CONSOLE_NONE */
 
 int dprintf(int file, const char *fmt, ...)
diff --git a/common/console_simple.c b/common/console_simple.c
index 9da516ee9..475d96b68 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -7,15 +7,6 @@
 
 extern struct console_device *console;
 
-int tstc(void)
-{
-	if (!console)
-		return 0;
-
-	return console->tstc(console);
-}
-EXPORT_SYMBOL(tstc);
-
 int getchar(void)
 {
 	if (!console)
diff --git a/include/console.h b/include/console.h
index 81a5a5534..d8d36f219 100644
--- a/include/console.h
+++ b/include/console.h
@@ -218,4 +218,6 @@ struct console_device *__console_get_default(void);
 void __console_set_putc(struct console_device *cdev,
 			putc_func_t putcf, void *ctx);
 
+int tstc_raw(void);
+
 #endif
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
