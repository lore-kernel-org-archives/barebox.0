Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bk5SK-0002Ha-FW
 for barebox@lists.infradead.org; Wed, 14 Sep 2016 08:22:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Sep 2016 10:21:29 +0200
Message-Id: <1473841290-3935-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] pbl: console: Make it work with multiple setup_c()
To: Barebox List <barebox@lists.infradead.org>

setup_c() may be called multiple times. When we store the pointer
to the console in bss, then it's zeroed during setup_c() and the
pointer to the console is lost. Initialize the pointer explicitly
to a non zero value to force storing it in the data section.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 pbl/console.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/pbl/console.c b/pbl/console.c
index 4cefe748..0607a31 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -1,8 +1,10 @@
 #include <common.h>
 #include <debug_ll.h>
 
-static void (*__putc)(void *ctx, int c);
-static void *putc_ctx;
+#define INVALID_PTR ((void *)-1)
+
+static void (*__putc)(void *ctx, int c) = INVALID_PTR;
+static void *putc_ctx = INVALID_PTR;
 
 /**
  * pbl_set_putc() - setup UART used for PBL console
@@ -20,10 +22,10 @@ void pbl_set_putc(void (*putcf)(void *ctx, int c), void *ctx)
 
 void console_putc(unsigned int ch, char c)
 {
-	if (!__putc)
-		putc_ll(c);
-	else
+	if (__putc != INVALID_PTR)
 		__putc(putc_ctx, c);
+	else
+		putc_ll(c);
 }
 
 int console_puts(unsigned int ch, const char *str)
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
