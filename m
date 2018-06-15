Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x233.google.com ([2607:f8b0:400e:c00::233])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg5p-0000cS-62
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:15 +0000
Received: by mail-pf0-x233.google.com with SMTP id c22-v6so4261920pfi.2
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:11:58 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:12 -0700
Message-Id: <20180615041136.23492-7-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/27] pbl: console: Move '\n' handling into console_putc()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

To make putchar() work correctly in PBL we need to make sure that '\n'
-> '\r\n' replacement is done in console_putc() instead of
console_puts(). This also allows us to share a bit more code by
moving console_putc() to lib/console.c.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/console_simple.c | 6 ------
 lib/console.c           | 5 +++++
 pbl/console.c           | 8 --------
 3 files changed, 5 insertions(+), 14 deletions(-)

diff --git a/common/console_simple.c b/common/console_simple.c
index 62b811b3f..d560f8534 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -26,12 +26,6 @@ int console_puts(unsigned int ch, const char *str)
 }
 EXPORT_SYMBOL(console_puts);
 
-void console_putc(unsigned int ch, char c)
-{
-	__console_putc(__console_get_default(), c);
-}
-EXPORT_SYMBOL(console_putc);
-
 int tstc(void)
 {
 	if (!console)
diff --git a/lib/console.c b/lib/console.c
index d2d2ae775..94c20dada 100644
--- a/lib/console.c
+++ b/lib/console.c
@@ -128,3 +128,8 @@ void __console_putc(struct console_device *cdev, char c)
 	if (c == '\n')
 		__cdev_putc(cdev, '\r');
 }
+
+__weak void console_putc(unsigned int ch, char c)
+{
+	__console_putc(__console_get_default(), c);
+}
diff --git a/pbl/console.c b/pbl/console.c
index c1c3e1dde..b76c8cd75 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -17,19 +17,11 @@ void pbl_set_putc(putc_func_t putcf, void *ctx)
 	__console_set_putc(&console_ll, putcf, ctx);
 }
 
-void console_putc(unsigned int ch, char c)
-{
-	__cdev_putc(__console_get_default(), c);
-}
-
 int console_puts(unsigned int ch, const char *str)
 {
 	int n = 0;
 
 	while (*str) {
-		if (*str == '\n')
-			console_putc(CONSOLE_STDOUT, '\r');
-
 		console_putc(CONSOLE_STDOUT, *str);
 		str++;
 		n++;
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
