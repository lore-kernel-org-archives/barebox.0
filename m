Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg6E-00032C-7U
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:36 +0000
Received: by mail-pl0-x243.google.com with SMTP id w17-v6so4674818pll.9
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:21 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:31 -0700
Message-Id: <20180615041136.23492-26-andrew.smirnov@gmail.com>
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
Subject: [PATCH 22/27] console: Convert pr_print into a single line #define
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

If we change dev_printf() to not print device related info at the
start if NULL is passed as device pointer, we can easliy use that
function to do what pr_print does. With this change we can convert
pr_print to be a simple macro that expands into a dev_printf() and
drop a bit of exctra code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/console_common.c | 28 +++++-----------------------
 include/printk.h        |  3 +--
 2 files changed, 6 insertions(+), 25 deletions(-)

diff --git a/common/console_common.c b/common/console_common.c
index f440a9448..296b181d9 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -124,26 +124,6 @@ static void print_colored_log_level(const int level)
 	pr_puts(level, colored_log_level[level]);
 }
 
-int pr_print(int level, const char *fmt, ...)
-{
-	va_list args;
-	int i;
-	char printbuffer[CFG_PBSIZE];
-
-	if (!IS_ENABLED(CONFIG_LOGBUF) && level > barebox_loglevel)
-		return 0;
-
-	print_colored_log_level(level);
-
-	va_start(args, fmt);
-	i = vsprintf(printbuffer, fmt, args);
-	va_end(args);
-
-	pr_puts(level, printbuffer);
-
-	return i;
-}
-
 int dev_printf(int level, const struct device_d *dev, const char *format, ...)
 {
 	va_list args;
@@ -155,10 +135,12 @@ int dev_printf(int level, const struct device_d *dev, const char *format, ...)
 
 	print_colored_log_level(level);
 
-	if (dev->driver && dev->driver->name)
-		ret += sprintf(printbuffer, "%s ", dev->driver->name);
+	if (dev) {
+		if (dev->driver && dev->driver->name)
+			ret += sprintf(printbuffer, "%s ", dev->driver->name);
 
-	ret += sprintf(printbuffer + ret, "%s: ", dev_name(dev));
+		ret += sprintf(printbuffer + ret, "%s: ", dev_name(dev));
+	}
 
 	va_start(args, format);
 
diff --git a/include/printk.h b/include/printk.h
index 9f1831fbe..2bf0cb25b 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -35,8 +35,7 @@ static inline int dev_printf(int level, const struct device_d *dev, const char *
 #endif
 
 #if (!defined(__PBL__) && !defined(CONFIG_CONSOLE_NONE))
-int pr_print(int level, const char *format, ...)
-	__attribute__ ((format(__printf__, 2, 3)));
+#define pr_print(level, format, arg...)	dev_printf(level, NULL, format, ## arg)
 #elif defined(__PBL__) && defined(CONFIG_PBL_CONSOLE)
 #define pr_print(level, format, arg...)	printf(format, ## arg)
 #else
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
