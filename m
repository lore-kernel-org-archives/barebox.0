Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg6A-0000ns-1c
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:58 +0000
Received: by mail-pg0-x244.google.com with SMTP id c9-v6so3858757pgf.5
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:19 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:30 -0700
Message-Id: <20180615041136.23492-25-andrew.smirnov@gmail.com>
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
Subject: [PATCH 21/27] pbl: console: Convert pr_print into a single line
 #define
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

PBL's implementation of pr_print(), doesn't use its 'level' argument
at all, so it is identical in its behaviour to simple printf(). In
light of that drop the custom code implementing that and convert it to
be a CPP macro that is expanded into simple printf().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/printk.h |  5 +++--
 pbl/console.c    | 14 --------------
 2 files changed, 3 insertions(+), 16 deletions(-)

diff --git a/include/printk.h b/include/printk.h
index b4ae0b321..9f1831fbe 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -34,10 +34,11 @@ static inline int dev_printf(int level, const struct device_d *dev, const char *
 }
 #endif
 
-#if (!defined(__PBL__) && !defined(CONFIG_CONSOLE_NONE)) || \
-	(defined(__PBL__) && defined(CONFIG_PBL_CONSOLE))
+#if (!defined(__PBL__) && !defined(CONFIG_CONSOLE_NONE))
 int pr_print(int level, const char *format, ...)
 	__attribute__ ((format(__printf__, 2, 3)));
+#elif defined(__PBL__) && defined(CONFIG_PBL_CONSOLE)
+#define pr_print(level, format, arg...)	printf(format, ## arg)
 #else
 static int pr_print(int level, const char *format, ...)
 	__attribute__ ((format(__printf__, 2, 3)));
diff --git a/pbl/console.c b/pbl/console.c
index 18df1efca..78beab688 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -17,17 +17,3 @@ void pbl_set_putc(putc_func_t putcf, void *ctx)
 	__console_set_putc(&console_ll, putcf, ctx);
 }
 
-int pr_print(int level, const char *fmt, ...)
-{
-	va_list args;
-	uint i;
-	char printbuffer[CFG_PBSIZE];
-
-	va_start(args, fmt);
-	i = vsprintf(printbuffer, fmt, args);
-	va_end(args);
-
-	console_puts(CONSOLE_STDOUT, printbuffer);
-
-	return i;
-}
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
