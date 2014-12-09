Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyPMO-0003f5-U7
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 18:18:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 19:17:37 +0100
Message-Id: <1418149064-26448-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418149064-26448-1-git-send-email-s.hauer@pengutronix.de>
References: <1418149064-26448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] printf: move panic() to common/misc.c
To: barebox@lists.infradead.org

panic() is not really a printf like function, so move it to common/misc.c.
This is done because we want to have printf support in the PBL, but PBL
has it's own panic() implementation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/misc.c  | 22 ++++++++++++++++++++++
 lib/vsprintf.c | 21 ---------------------
 2 files changed, 22 insertions(+), 21 deletions(-)

diff --git a/common/misc.c b/common/misc.c
index 65f3306..6da71c7 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -22,6 +22,7 @@
 #include <magicvar.h>
 #include <globalvar.h>
 #include <environment.h>
+#include <led.h>
 #include <of.h>
 
 int errno;
@@ -188,3 +189,24 @@ EXPORT_SYMBOL(barebox_get_hostname);
 
 BAREBOX_MAGICVAR_NAMED(global_hostname, global.hostname,
 		"shortname of the board. Also used as hostname for DHCP requests");
+
+void __noreturn panic(const char *fmt, ...)
+{
+	va_list args;
+	va_start(args, fmt);
+	vprintf(fmt, args);
+	putchar('\n');
+	va_end(args);
+
+	dump_stack();
+
+	led_trigger(LED_TRIGGER_PANIC, TRIGGER_ENABLE);
+
+	if (IS_ENABLED(CONFIG_PANIC_HANG)) {
+		hang();
+	} else {
+		udelay(100000);	/* allow messages to go out */
+		reset_cpu(0);
+	}
+}
+EXPORT_SYMBOL(panic);
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 512c882..a1f95fe 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -680,24 +680,3 @@ char *asprintf(const char *fmt, ...)
 	return p;
 }
 EXPORT_SYMBOL(asprintf);
-
-void __noreturn panic(const char *fmt, ...)
-{
-	va_list args;
-	va_start(args, fmt);
-	vprintf(fmt, args);
-	putchar('\n');
-	va_end(args);
-
-	dump_stack();
-
-	led_trigger(LED_TRIGGER_PANIC, TRIGGER_ENABLE);
-
-	if (IS_ENABLED(CONFIG_PANIC_HANG)) {
-		hang();
-	} else {
-		udelay(100000);	/* allow messages to go out */
-		reset_cpu(0);
-	}
-}
-EXPORT_SYMBOL(panic);
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
