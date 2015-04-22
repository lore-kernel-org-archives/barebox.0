Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ykptf-00081u-KA
 for barebox@lists.infradead.org; Wed, 22 Apr 2015 08:20:44 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 22 Apr 2015 10:20:10 +0200
Message-Id: <1429690812-26083-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1429690812-26083-1-git-send-email-mkl@pengutronix.de>
References: <1429690812-26083-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 3/5] timeout: factor out wait-for-key-press loop into
 separate file
To: barebox@lists.infradead.org

This patch factors out the wait-for-key-press loop from the shell command
"timeout" into a sparate file, so that it can be used from C, too.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 commands/timeout.c          | 62 +++++++++--------------------------------
 common/Makefile             |  1 +
 common/console_countdown.c  | 67 +++++++++++++++++++++++++++++++++++++++++++++
 include/console_countdown.h | 11 ++++++++
 4 files changed, 92 insertions(+), 49 deletions(-)
 create mode 100644 common/console_countdown.c
 create mode 100644 include/console_countdown.h

diff --git a/commands/timeout.c b/commands/timeout.c
index c8e930cd5b5b..2b99d4f74968 100644
--- a/commands/timeout.c
+++ b/commands/timeout.c
@@ -16,40 +16,35 @@
  * GNU General Public License for more details.
  *
  */
-#include <common.h>
+
 #include <command.h>
-#include <linux/stat.h>
 #include <errno.h>
 #include <getopt.h>
-#include <clock.h>
 #include <environment.h>
+#include <console_countdown.h>
 
-#define TIMEOUT_RETURN	(1 << 0)
-#define TIMEOUT_CTRLC	(1 << 1)
-#define TIMEOUT_ANYKEY	(1 << 2)
-#define TIMEOUT_SILENT	(1 << 3)
+#include <linux/kernel.h>
 
 static int do_timeout(int argc, char *argv[])
 {
-	int timeout = 3, ret = 1;
-	int flags = 0, opt, countdown;
-	int key = 0;
-	uint64_t start, second;
+	int timeout, ret, opt;
+	unsigned flags = 0;
+	char str[2] = { };
 	const char *varname = NULL;
 
 	while((opt = getopt(argc, argv, "crsav:")) > 0) {
 		switch(opt) {
 		case 'r':
-			flags |= TIMEOUT_RETURN;
+			flags |= CONSOLE_COUNTDOWN_RETURN;
 			break;
 		case 'c':
-			flags |= TIMEOUT_CTRLC;
+			flags |= CONSOLE_COUNTDOWN_CTRLC;
 			break;
 		case 'a':
-			flags |= TIMEOUT_ANYKEY;
+			flags |= CONSOLE_COUNTDOWN_ANYKEY;
 			break;
 		case 's':
-			flags |= TIMEOUT_SILENT;
+			flags |= CONSOLE_COUNTDOWN_SILENT;
 			break;
 		case 'v':
 			varname = optarg;
@@ -63,43 +58,12 @@ static int do_timeout(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	timeout = simple_strtoul(argv[optind], NULL, 0);
+	ret = console_countdown(timeout, flags, str);
 
-	start = get_time_ns();
-	second = start;
-
-	countdown = timeout;
-
-	if (!(flags & TIMEOUT_SILENT))
-		printf("%2d", countdown--);
-
-	do {
-		if (tstc()) {
-			key = getc();
-			if (flags & TIMEOUT_CTRLC && key == 3)
-				goto  out;
-			if (flags & TIMEOUT_ANYKEY)
-				goto out;
-			if (flags & TIMEOUT_RETURN && key == '\n')
-				goto out;
-			key = 0;
-		}
-		if (!(flags & TIMEOUT_SILENT) && is_timeout(second, SECOND)) {
-			printf("\b\b%2d", countdown--);
-			second += SECOND;
-		}
-	} while (!is_timeout(start, timeout * SECOND));
-
-	ret = 0;
-out:
-	if (varname && key) {
-		char str[2] = { };
-		str[0] = key;
+	if (varname && str[0])
 		setenv(varname, str);
-	}
-	if (!(flags & TIMEOUT_SILENT))
-		printf("\n");
 
-	return ret;
+	return ret ? 1 : 0;
 }
 
 BAREBOX_CMD_HELP_START(timeout)
diff --git a/common/Makefile b/common/Makefile
index eca1e3533c3f..2738238c67a8 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -20,6 +20,7 @@ obj-$(CONFIG_CMD_MEMTEST)	+= memtest.o
 obj-$(CONFIG_COMMAND_SUPPORT)	+= command.o
 obj-$(CONFIG_CONSOLE_FULL)	+= console.o
 obj-$(CONFIG_CONSOLE_SIMPLE)	+= console_simple.o
+obj-y				+= console_countdown.o
 obj-$(CONFIG_DDR_SPD)		+= ddr_spd.o
 obj-$(CONFIG_ENV_HANDLING)	+= environment.o
 obj-$(CONFIG_ENVIRONMENT_VARIABLES) += env.o
diff --git a/common/console_countdown.c b/common/console_countdown.c
new file mode 100644
index 000000000000..ffbdb4fa2d63
--- /dev/null
+++ b/common/console_countdown.c
@@ -0,0 +1,67 @@
+/*
+ * console_countdown - contdown on the console - interruptible by a keypress
+ *
+ * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+
+#include <clock.h>
+#include <command.h>
+#include <errno.h>
+#include <console_countdown.h>
+#include <stdio.h>
+
+int console_countdown(int timeout_s, unsigned flags, char *out_key)
+{
+	uint64_t start, second;
+	int countdown, ret = -EINTR;
+	int key = 0;
+
+	start = get_time_ns();
+	second = start;
+
+	countdown = timeout_s;
+
+	if (!(flags & CONSOLE_COUNTDOWN_SILENT))
+		printf("%2d", countdown--);
+
+	do {
+		if (tstc()) {
+			key = getc();
+			if (flags & CONSOLE_COUNTDOWN_ANYKEY)
+				goto out;
+			if (flags & CONSOLE_COUNTDOWN_RETURN && key == '\n')
+				goto out;
+			if (flags & CONSOLE_COUNTDOWN_CTRLC && key == 3)
+				goto out;
+			key = 0;
+		}
+		if (!(flags & CONSOLE_COUNTDOWN_SILENT) &&
+		    is_timeout(second, SECOND)) {
+			printf("\b\b%2d", countdown--);
+			second += SECOND;
+		}
+	} while (!is_timeout(start, timeout_s * SECOND));
+
+	ret = 0;
+
+ out:
+	if (!(flags & CONSOLE_COUNTDOWN_SILENT))
+		printf("\n");
+	if (key && out_key)
+		*out_key = key;
+
+	return ret;
+}
diff --git a/include/console_countdown.h b/include/console_countdown.h
new file mode 100644
index 000000000000..cb46964bc4cd
--- /dev/null
+++ b/include/console_countdown.h
@@ -0,0 +1,11 @@
+#ifndef __CONSOLE_COUNTDOWN_H
+#define __CONSOLE_COUNTDOWN_H
+
+#define CONSOLE_COUNTDOWN_SILENT (1 << 0)
+#define CONSOLE_COUNTDOWN_ANYKEY (1 << 1)
+#define CONSOLE_COUNTDOWN_RETURN (1 << 3)
+#define CONSOLE_COUNTDOWN_CTRLC (1 << 4)
+
+int console_countdown(int timeout_s, unsigned flags, char *out_key);
+
+#endif /* __CONSOLE_COUNTDOWN_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
