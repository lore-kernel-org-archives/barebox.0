Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XYyPM-0004Ak-Sd
 for barebox@lists.infradead.org; Tue, 30 Sep 2014 14:28:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Sep 2014 16:22:06 +0200
Message-Id: <1412086926-27167-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1412086926-27167-1-git-send-email-s.hauer@pengutronix.de>
References: <1412086926-27167-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] Introduce message logging support
To: barebox@lists.infradead.org

This adds a buffer for log messages and a 'dmesg' command to
print the messages. The log buffer is implemented as log objects
rather than a string buffer. This makes it easy to implement
limiting the messages, cleaning the buffer and timestamping
the messages.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig        |   7 +++
 commands/Makefile       |   1 +
 commands/dmesg.c        | 100 +++++++++++++++++++++++++++++++++++++
 common/Kconfig          |   3 ++
 common/console_common.c | 129 ++++++++++++++++++++++++++++++++++++++++++++++--
 drivers/base/driver.c   |  22 ---------
 include/printk.h        |  17 +++++++
 7 files changed, 254 insertions(+), 25 deletions(-)
 create mode 100644 commands/dmesg.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 3a49baf..f0cd8b2 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -84,6 +84,13 @@ config CMD_DEVINFO
 	  If called with a device path being the argument, devinfo shows more
 	  default information about this device and its parameters.
 
+config CMD_DMESG
+	tristate
+	prompt "dmesg"
+	select LOGBUF
+	help
+	  Print or control the log message buffer.
+
 config CMD_DRVINFO
 	tristate
 	default y
diff --git a/commands/Makefile b/commands/Makefile
index 52b6137..608ff5e 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -81,6 +81,7 @@ obj-$(CONFIG_CMD_IOMEM)		+= iomemport.o
 obj-$(CONFIG_CMD_LINUX_EXEC)	+= linux_exec.o
 obj-$(CONFIG_CMD_AUTOMOUNT)	+= automount.o
 obj-$(CONFIG_CMD_GLOBAL)	+= global.o
+obj-$(CONFIG_CMD_DMESG)		+= dmesg.o
 obj-$(CONFIG_CMD_BASENAME)	+= basename.o
 obj-$(CONFIG_CMD_DIRNAME)	+= dirname.o
 obj-$(CONFIG_CMD_READLINK)	+= readlink.o
diff --git a/commands/dmesg.c b/commands/dmesg.c
new file mode 100644
index 0000000..b2bb334
--- /dev/null
+++ b/commands/dmesg.c
@@ -0,0 +1,100 @@
+/*
+ * dmesg.c - barebox logbuffer handling
+ *
+ * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <malloc.h>
+#include <command.h>
+#include <globalvar.h>
+#include <environment.h>
+#include <getopt.h>
+#include <clock.h>
+
+static int do_dmesg(int argc, char *argv[])
+{
+	int opt, i;
+	int delete_buf = 0, emit = 0;
+	unsigned flags = 0;
+
+	while ((opt = getopt(argc, argv, "ctde")) > 0) {
+		switch (opt) {
+		case 'c':
+			delete_buf = 1;
+			break;
+		case 't':
+			flags |= BAREBOX_LOG_PRINT_TIME;
+			break;
+		case 'd':
+			flags |= BAREBOX_LOG_DIFF_TIME;
+			break;
+		case 'e':
+			emit = 1;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (emit) {
+		char *buf;
+		int len = 0;
+
+		for (i = optind; i < argc; i++)
+			len += strlen(argv[i]) + 1;
+
+		buf = malloc(len + 2);
+		if (!buf)
+			return -ENOMEM;
+
+		len = 0;
+
+		for (i = optind; i < argc; i++)
+			len += sprintf(buf + len, "%s ", argv[i]);
+
+		*(buf + len) = '\n';
+		*(buf + len + 1) = 0;
+
+		pr_info(buf);
+
+		free(buf);
+
+		return 0;
+	}
+
+	log_print(flags);
+
+	if (delete_buf)
+		log_clean(10);
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(dmesg)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-c",		"Delete messages after printing them")
+BAREBOX_CMD_HELP_OPT ("-d",		"Show a time delta to the last message")
+BAREBOX_CMD_HELP_OPT ("-e <msg>",	"Emit a log message")
+BAREBOX_CMD_HELP_OPT ("-t",		"Show timestamp informations")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(dmesg)
+	.cmd	= do_dmesg,
+	BAREBOX_CMD_DESC("Print or control log messages")
+	BAREBOX_CMD_OPTS("[-cdet]")
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_HELP(cmd_dmesg_help)
+BAREBOX_CMD_END
diff --git a/common/Kconfig b/common/Kconfig
index 9cc96b7..4a84cfa 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -66,6 +66,9 @@ config UIMAGE
 	select CRC32
 	bool
 
+config LOGBUF
+	bool
+
 config GLOBALVAR
 	bool
 
diff --git a/common/console_common.c b/common/console_common.c
index cc184df..cc25f97 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -27,6 +27,9 @@
 #include <globalvar.h>
 #include <magicvar.h>
 #include <password.h>
+#include <clock.h>
+#include <malloc.h>
+#include <asm-generic/div64.h>
 
 #ifndef CONFIG_CONSOLE_NONE
 
@@ -59,31 +62,151 @@ void console_allow_input(bool val)
 
 int barebox_loglevel = CONFIG_DEFAULT_LOGLEVEL;
 
+LIST_HEAD(barebox_logbuf);
+static int barebox_logbuf_num_messages;
+static int barebox_log_max_messages = 1000;
+
+static void log_del(struct log_entry *log)
+{
+	free(log->msg);
+	list_del(&log->list);
+	free(log);
+	barebox_logbuf_num_messages--;
+}
+
+/**
+ * log_clean - delete log messages from buffer
+ *
+ * @limit:	The maximum messages left in the buffer after
+ *		calling this function.
+ *
+ * This function deletes all messages in the logbuf exeeding
+ * the limit.
+ */
+void log_clean(unsigned int limit)
+{
+	struct log_entry *log, *tmp;
+
+	if (list_empty(&barebox_logbuf))
+		return;
+
+	list_for_each_entry_safe(log, tmp, &barebox_logbuf, list) {
+		if (barebox_logbuf_num_messages <= limit)
+			break;
+		log_del(log);
+	}
+}
+
+void pr_puts(int level, const char *str)
+{
+	struct log_entry *log;
+
+	if (IS_ENABLED(CONFIG_LOGBUF)) {
+		if (barebox_log_max_messages > 0)
+			log_clean(barebox_log_max_messages - 1);
+
+		if (barebox_log_max_messages >= 0) {
+			log = xzalloc(sizeof(*log));
+			log->msg = xstrdup(str);
+			log->timestamp = get_time_ns();
+			log->level = level;
+			list_add_tail(&log->list, &barebox_logbuf);
+			barebox_logbuf_num_messages++;
+		}
+	}
+
+	if (level > barebox_loglevel)
+		return;
+
+	puts(str);
+}
+
 int pr_print(int level, const char *fmt, ...)
 {
 	va_list args;
 	uint i;
 	char printbuffer[CFG_PBSIZE];
 
-	if (level > barebox_loglevel)
+	if (!IS_ENABLED(CONFIG_LOGBUF) && level > barebox_loglevel)
 		return 0;
 
 	va_start(args, fmt);
 	i = vsprintf(printbuffer, fmt, args);
 	va_end(args);
 
-	/* Print the string */
-	puts(printbuffer);
+	pr_puts(level, printbuffer);
 
 	return i;
 }
 
+int dev_printf(int level, const struct device_d *dev, const char *format, ...)
+{
+	va_list args;
+	int ret = 0;
+	char printbuffer[CFG_PBSIZE];
+
+	if (!IS_ENABLED(CONFIG_LOGBUF) && level > barebox_loglevel)
+		return 0;
+
+	if (dev->driver && dev->driver->name)
+		ret += sprintf(printbuffer, "%s ", dev->driver->name);
+
+	ret += sprintf(printbuffer + ret, "%s: ", dev_name(dev));
+
+	va_start(args, format);
+
+	ret += vsprintf(printbuffer + ret, format, args);
+
+	va_end(args);
+
+	pr_puts(level, printbuffer);
+
+	return ret;
+}
+
 static int loglevel_init(void)
 {
+	if (IS_ENABLED(CONFIG_LOGBUF))
+		globalvar_add_simple_int("log_max_messages",
+				&barebox_log_max_messages, "%d");
+
 	return globalvar_add_simple_int("loglevel", &barebox_loglevel, "%d");
 }
 device_initcall(loglevel_init);
 
+void log_print(unsigned flags)
+{
+	struct log_entry *log;
+	unsigned long last = 0;
+
+	list_for_each_entry(log, &barebox_logbuf, list) {
+		uint64_t diff = log->timestamp - time_beginning;
+		unsigned long difful;
+
+		do_div(diff, 1000);
+		difful = diff;
+
+		if (!log->timestamp)
+			difful = 0;
+
+		if (flags & (BAREBOX_LOG_PRINT_TIME | BAREBOX_LOG_DIFF_TIME))
+			printf("[");
+
+		if (flags & BAREBOX_LOG_PRINT_TIME)
+			printf("%10luus", difful);
+
+		if (flags & BAREBOX_LOG_DIFF_TIME) {
+			printf(" < %10luus", difful - last);
+			last = difful;
+		}
+
+		if (flags & (BAREBOX_LOG_PRINT_TIME | BAREBOX_LOG_DIFF_TIME))
+			printf("] ");
+
+		printf("%s", log->msg);
+	}
+}
+
 int printf(const char *fmt, ...)
 {
 	va_list args;
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 2cf3ee6..9709415 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -377,28 +377,6 @@ const char *dev_id(const struct device_d *dev)
 	return buf;
 }
 
-int dev_printf(int level, const struct device_d *dev, const char *format, ...)
-{
-	va_list args;
-	int ret = 0;
-
-	if (level > barebox_loglevel)
-		return 0;
-
-	if (dev->driver && dev->driver->name)
-		ret += printf("%s ", dev->driver->name);
-
-	ret += printf("%s: ", dev_name(dev));
-
-	va_start(args, format);
-
-	ret += vprintf(format, args);
-
-	va_end(args);
-
-	return ret;
-}
-
 void devices_shutdown(void)
 {
 	struct device_d *dev;
diff --git a/include/printk.h b/include/printk.h
index 4543156..fb63586 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -72,4 +72,21 @@ int dev_printf(int level, const struct device_d *dev, const char *format, ...)
 #define debug(fmt, arg...)	__pr_printk(7, pr_fmt(fmt), ##arg)
 #define pr_vdebug(fmt, arg...)	__pr_printk(8, pr_fmt(fmt), ##arg)
 
+struct log_entry {
+	struct list_head list;
+	char *msg;
+	void *dummy;
+	uint64_t timestamp;
+	int level;
+};
+
+extern struct list_head barebox_logbuf;
+
+extern void log_clean(unsigned int limit);
+
+#define BAREBOX_LOG_PRINT_TIME	(1 << 0)
+#define BAREBOX_LOG_DIFF_TIME	(1 << 1)
+
+void log_print(unsigned flags);
+
 #endif
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
