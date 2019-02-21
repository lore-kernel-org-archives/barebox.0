Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwoMa-00048Q-Nx
 for barebox@lists.infradead.org; Thu, 21 Feb 2019 13:26:10 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 21 Feb 2019 14:26:03 +0100
Message-Id: <20190221132603.21201-2-o.rempel@pengutronix.de>
In-Reply-To: <20190221132603.21201-1-o.rempel@pengutronix.de>
References: <20190221132603.21201-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 2/2] commands: dmesg: add -l option to restrict output level
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Same as linux dmesg, barebox dmesg will be able to restrict output level
by using -l option. For example "dmesg -l err,warn"
This functionality can be used for test automation.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/dmesg.c        | 48 ++++++++++++++++++++++++++++++++++++++---
 common/console_common.c |  5 ++++-
 include/printk.h        | 20 ++++++++++++-----
 3 files changed, 64 insertions(+), 9 deletions(-)

diff --git a/commands/dmesg.c b/commands/dmesg.c
index 5c2728581d..a7def2f158 100644
--- a/commands/dmesg.c
+++ b/commands/dmesg.c
@@ -24,13 +24,49 @@
 #include <getopt.h>
 #include <clock.h>
 
+static unsigned dmesg_get_levels(const char *__args)
+{
+	char *args = xstrdup(__args);
+	char *str, *levels = args;
+	unsigned flags = 0;
+
+	while (1) {
+		str = strsep(&levels, ",");
+		if (!str)
+			break;
+
+		if(!strcmp(str, "vdebug"))
+			flags |= BAREBOX_LOG_PRINT_VDEBUG;
+		else if(!strcmp(str, "debug"))
+			flags |= BAREBOX_LOG_PRINT_DEBUG;
+		else if(!strcmp(str, "info"))
+			flags |= BAREBOX_LOG_PRINT_INFO;
+		else if(!strcmp(str, "notice"))
+			flags |= BAREBOX_LOG_PRINT_NOTICE;
+		else if(!strcmp(str, "warn"))
+			flags |= BAREBOX_LOG_PRINT_WARNING;
+		else if(!strcmp(str, "err"))
+			flags |= BAREBOX_LOG_PRINT_ERR;
+		else if(!strcmp(str, "crit"))
+			flags |= BAREBOX_LOG_PRINT_CRIT;
+		else if(!strcmp(str, "alert"))
+			flags |= BAREBOX_LOG_PRINT_ALERT;
+		else if(!strcmp(str, "emerg"))
+			flags |= BAREBOX_LOG_PRINT_EMERG;
+	}
+
+	free(args);
+
+	return flags;
+}
+
 static int do_dmesg(int argc, char *argv[])
 {
 	int opt, i;
 	int delete_buf = 0, emit = 0;
-	unsigned flags = 0;
+	unsigned flags = 0, levels = 0;
 
-	while ((opt = getopt(argc, argv, "ctder")) > 0) {
+	while ((opt = getopt(argc, argv, "ctderl:")) > 0) {
 		switch (opt) {
 		case 'c':
 			delete_buf = 1;
@@ -44,6 +80,11 @@ static int do_dmesg(int argc, char *argv[])
 		case 'e':
 			emit = 1;
 			break;
+		case 'l':
+			levels = dmesg_get_levels(optarg);
+			if (!levels)
+				return COMMAND_ERROR_USAGE;
+			break;
 		case 'r':
 			flags |= BAREBOX_LOG_PRINT_RAW | BAREBOX_LOG_PRINT_TIME;
 			break;
@@ -78,7 +119,7 @@ static int do_dmesg(int argc, char *argv[])
 		return 0;
 	}
 
-	log_print(flags);
+	log_print(flags, levels);
 
 	if (delete_buf)
 		log_clean(10);
@@ -91,6 +132,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-c",		"Delete messages after printing them")
 BAREBOX_CMD_HELP_OPT ("-d",		"Show a time delta to the last message")
 BAREBOX_CMD_HELP_OPT ("-e <msg>",	"Emit a log message")
+BAREBOX_CMD_HELP_OPT ("-l <vdebug|debug|info|notice|warn|err|crit|alert|emerg>", "Restrict output to the given (comma-separated) list of levels")
 BAREBOX_CMD_HELP_OPT ("-r",		"Print timestamp and log-level prefixes.")
 BAREBOX_CMD_HELP_OPT ("-t",		"Show timestamp informations")
 BAREBOX_CMD_HELP_END
diff --git a/common/console_common.c b/common/console_common.c
index bc3a305b27..4aa54de97a 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -193,7 +193,7 @@ static int console_common_init(void)
 }
 device_initcall(console_common_init);
 
-void log_print(unsigned flags)
+void log_print(unsigned flags, unsigned levels)
 {
 	struct log_entry *log;
 	unsigned long last = 0;
@@ -202,6 +202,9 @@ void log_print(unsigned flags)
 		uint64_t diff = log->timestamp - time_beginning;
 		unsigned long difful;
 
+		if (levels && !(levels & (1 << log->level)))
+			continue;
+
 		if (flags & (BAREBOX_LOG_PRINT_RAW))
 			printf("<%i>", log->level);
 
diff --git a/include/printk.h b/include/printk.h
index 64205b2880..b0d5d09f83 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -134,11 +134,21 @@ extern struct list_head barebox_logbuf;
 
 extern void log_clean(unsigned int limit);
 
-#define BAREBOX_LOG_PRINT_TIME	(1 << 0)
-#define BAREBOX_LOG_DIFF_TIME	(1 << 1)
-#define BAREBOX_LOG_PRINT_RAW	(1 << 2)
-
-void log_print(unsigned flags);
+#define BAREBOX_LOG_PRINT_RAW		BIT(2)
+#define BAREBOX_LOG_DIFF_TIME		BIT(1)
+#define BAREBOX_LOG_PRINT_TIME		BIT(0)
+
+#define BAREBOX_LOG_PRINT_VDEBUG	BIT(8)
+#define BAREBOX_LOG_PRINT_DEBUG		BIT(7)
+#define BAREBOX_LOG_PRINT_INFO		BIT(6)
+#define BAREBOX_LOG_PRINT_NOTICE	BIT(5)
+#define BAREBOX_LOG_PRINT_WARNING	BIT(4)
+#define BAREBOX_LOG_PRINT_ERR		BIT(3)
+#define BAREBOX_LOG_PRINT_CRIT		BIT(2)
+#define BAREBOX_LOG_PRINT_ALERT		BIT(1)
+#define BAREBOX_LOG_PRINT_EMERG		BIT(0)
+
+void log_print(unsigned flags, unsigned levels);
 
 struct va_format {
 	const char *fmt;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
