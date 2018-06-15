Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg6G-0000tL-Oe
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:13:00 +0000
Received: by mail-pl0-x244.google.com with SMTP id a7-v6so4674817plp.3
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:36 -0700
Message-Id: <20180615041136.23492-31-andrew.smirnov@gmail.com>
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
Subject: [PATCH 27/27] psci: console: Convert to use lib/console.c
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Convert PSCI debug facilities to use shared code in lib/console.c,
similar to what's been done to PBL_CONSOLE.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/psci.c         | 34 +++++++---------------------------
 arch/arm/include/asm/psci.h | 11 -----------
 2 files changed, 7 insertions(+), 38 deletions(-)

diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
index ad132c0a3..435ec92cc 100644
--- a/arch/arm/cpu/psci.c
+++ b/arch/arm/cpu/psci.c
@@ -33,35 +33,15 @@
  * warned.
  */
 
-static putc_func_t __putc;
-static void *putc_ctx;
+static void __console_psci_putc(struct console_device *cdev, char c) {}
 
-void psci_set_putc(putc_func_t putcf, void *ctx)
-{
-        __putc = putcf;
-        putc_ctx = ctx;
-}
-
-void psci_putc(char c)
-{
-	if (__putc)
-		__putc(putc_ctx, c);
-}
+static struct console_device console_psci = {
+	.putc = __console_psci_putc,
+};
 
-int psci_puts(const char *str)
+void psci_set_putc(putc_func_t putcf, void *ctx)
 {
-	int n = 0;
-
-	while (*str) {
-		if (*str == '\n')
-			psci_putc('\r');
-
-		psci_putc(*str);
-		str++;
-		n++;
-	}
-
-	return n;
+	__console_set_putc(&console_psci, putcf, ctx);
 }
 
 int psci_printf(const char *fmt, ...)
@@ -74,7 +54,7 @@ int psci_printf(const char *fmt, ...)
 	i = vsprintf(printbuffer, fmt, args);
 	va_end(args);
 
-	psci_puts(printbuffer);
+	__console_puts(&console_psci, printbuffer);
 
         return i;
 }
diff --git a/arch/arm/include/asm/psci.h b/arch/arm/include/asm/psci.h
index e0c452538..d2b40907f 100644
--- a/arch/arm/include/asm/psci.h
+++ b/arch/arm/include/asm/psci.h
@@ -110,8 +110,6 @@ void psci_cpu_entry(void);
 
 #ifdef CONFIG_ARM_PSCI_DEBUG
 void psci_set_putc(void (*putcf)(void *ctx, int c), void *ctx);
-void psci_putc(char c);
-int psci_puts(const char *str);
 int psci_printf(const char *fmt, ...)
             __attribute__ ((format(__printf__, 1, 2)));
 #else
@@ -120,15 +118,6 @@ static inline void psci_set_putc(void (*putcf)(void *ctx, int c), void *ctx)
 {
 }
 
-static inline void psci_putc(char c)
-{
-}
-
-static inline int psci_puts(const char *str)
-{
-	return 0;
-}
-
 static inline int psci_printf(const char *fmt, ...)
 {
 	return 0;
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
