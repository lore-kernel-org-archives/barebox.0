Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwopL-0002Nl-9o
 for barebox@lists.infradead.org; Thu, 21 Feb 2019 13:55:52 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 21 Feb 2019 14:55:48 +0100
Message-Id: <20190221135548.22027-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] common: console_common: do not store color additions to the
 log buffer
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

it is needed for raw dmesg output

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 common/console_common.c | 35 ++++++++++++++++++-----------------
 1 file changed, 18 insertions(+), 17 deletions(-)

diff --git a/common/console_common.c b/common/console_common.c
index 4aa54de97a..a4d2636753 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -79,6 +79,18 @@ void log_clean(unsigned int limit)
 	}
 }
 
+static void print_colored_log_level(const int level)
+{
+	if (!console_allow_color())
+		return;
+	if (level >= ARRAY_SIZE(colored_log_level))
+		return;
+	if (!colored_log_level[level])
+		return;
+
+	puts(colored_log_level[level]);
+}
+
 static void pr_puts(int level, const char *str)
 {
 	struct log_entry *log;
@@ -108,21 +120,10 @@ nolog:
 	if (level > barebox_loglevel)
 		return;
 
+	print_colored_log_level(level);
 	puts(str);
 }
 
-static void print_colored_log_level(const int level)
-{
-	if (!console_allow_color())
-		return;
-	if (level >= ARRAY_SIZE(colored_log_level))
-		return;
-	if (!colored_log_level[level])
-		return;
-
-	pr_puts(level, colored_log_level[level]);
-}
-
 int pr_print(int level, const char *fmt, ...)
 {
 	va_list args;
@@ -132,8 +133,6 @@ int pr_print(int level, const char *fmt, ...)
 	if (!IS_ENABLED(CONFIG_LOGBUF) && level > barebox_loglevel)
 		return 0;
 
-	print_colored_log_level(level);
-
 	va_start(args, fmt);
 	i = vsprintf(printbuffer, fmt, args);
 	va_end(args);
@@ -152,8 +151,6 @@ int dev_printf(int level, const struct device_d *dev, const char *format, ...)
 	if (!IS_ENABLED(CONFIG_LOGBUF) && level > barebox_loglevel)
 		return 0;
 
-	print_colored_log_level(level);
-
 	if (dev->driver && dev->driver->name)
 		ret += sprintf(printbuffer, "%s ", dev->driver->name);
 
@@ -205,7 +202,11 @@ void log_print(unsigned flags, unsigned levels)
 		if (levels && !(levels & (1 << log->level)))
 			continue;
 
-		if (flags & (BAREBOX_LOG_PRINT_RAW))
+		if (!(flags & (BAREBOX_LOG_PRINT_RAW | BAREBOX_LOG_PRINT_TIME
+			       | BAREBOX_LOG_DIFF_TIME)))
+			print_colored_log_level(log->level);
+
+		if (flags & BAREBOX_LOG_PRINT_RAW)
 			printf("<%i>", log->level);
 
 		do_div(diff, 1000);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
