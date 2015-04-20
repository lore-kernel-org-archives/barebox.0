Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yk7JI-0001jv-Qp
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 08:44:11 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 20 Apr 2015 10:43:37 +0200
Message-Id: <1429519419-20325-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1429519419-20325-1-git-send-email-mkl@pengutronix.de>
References: <1429519419-20325-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 3/5] timeout: factor out wait-for-key-press loop into separate
 file
To: barebox@lists.infradead.org

This patch factors out the wait-for-key-press loop from the shell command
"timeout" into a sparate file, so that it can be used from C, too.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 commands/Kconfig         |  1 +
 commands/timeout.c       | 62 ++++++++++-----------------------------------
 common/Kconfig           |  3 +++
 common/Makefile          |  1 +
 common/simple_timeout.c  | 66 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/simple_timeout.h | 11 ++++++++
 6 files changed, 95 insertions(+), 49 deletions(-)
 create mode 100644 common/simple_timeout.c
 create mode 100644 include/simple_timeout.h

diff --git a/commands/Kconfig b/commands/Kconfig
index 847ff76d1d8b..1c9083381fac 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1487,6 +1487,7 @@ config CMD_READLINE
 config CMD_TIMEOUT
 	tristate
 	prompt "timeout"
+	select SIMPLE_TIMEOUT
 	help
 	  Usage: timeout [-acrs] SECONDS
 
diff --git a/commands/timeout.c b/commands/timeout.c
index c8e930cd5b5b..23ee753d209b 100644
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
+#include <simple_timeout.h>
 
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
+			flags |= SIMPLE_TIMEOUT_RETURN;
 			break;
 		case 'c':
-			flags |= TIMEOUT_CTRLC;
+			flags |= SIMPLE_TIMEOUT_CTRLC;
 			break;
 		case 'a':
-			flags |= TIMEOUT_ANYKEY;
+			flags |= SIMPLE_TIMEOUT_ANYKEY;
 			break;
 		case 's':
-			flags |= TIMEOUT_SILENT;
+			flags |= SIMPLE_TIMEOUT_SILENT;
 			break;
 		case 'v':
 			varname = optarg;
@@ -63,43 +58,12 @@ static int do_timeout(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	timeout = simple_strtoul(argv[optind], NULL, 0);
+	ret = is_simple_timeout(timeout, flags, str);
 
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
+	return ret ? 0 : 1;
 }
 
 BAREBOX_CMD_HELP_START(timeout)
diff --git a/common/Kconfig b/common/Kconfig
index 1c5d14c1c0a4..b7a7b2cf8dcc 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -721,6 +721,9 @@ config RESET_SOURCE
 	  of the reset and why the bootloader is currently running. It can be
 	  useful for any kind of system recovery or repair.
 
+config SIMPLE_TIMEOUT
+	bool
+
 endmenu
 
 menu "Debugging"
diff --git a/common/Makefile b/common/Makefile
index eca1e3533c3f..89a2bf50bd90 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -51,6 +51,7 @@ lwl-$(CONFIG_IMD)		+= imd-barebox.o
 obj-$(CONFIG_IMD)		+= imd.o
 obj-$(CONFIG_FILE_LIST)		+= file-list.o
 obj-$(CONFIG_FIRMWARE)		+= firmware.o
+obj-$(CONFIG_SIMPLE_TIMEOUT)	+= simple_timeout.o
 
 quiet_cmd_pwd_h = PWDH    $@
 ifdef CONFIG_PASSWORD
diff --git a/common/simple_timeout.c b/common/simple_timeout.c
new file mode 100644
index 000000000000..d253476251a5
--- /dev/null
+++ b/common/simple_timeout.c
@@ -0,0 +1,66 @@
+/*
+ * timeout - wait for timeout
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
+#include <simple_timeout.h>
+#include <stdio.h>
+
+int is_simple_timeout(int timeout_s, unsigned flags, char *out_key)
+{
+	uint64_t start, second;
+	int countdown, ret = false;
+	int key = 0;
+
+	start = get_time_ns();
+	second = start;
+
+	countdown = timeout_s;
+
+	if (!(flags & SIMPLE_TIMEOUT_SILENT))
+		printf("%2d", countdown--);
+
+	do {
+		if (tstc()) {
+			key = getc();
+			if (flags & SIMPLE_TIMEOUT_ANYKEY)
+				goto out;
+			if (flags & SIMPLE_TIMEOUT_RETURN && key == '\n')
+				goto out;
+			if (flags & SIMPLE_TIMEOUT_CTRLC && key == 3)
+				goto out;
+			key = 0;
+		}
+		if (!(flags & SIMPLE_TIMEOUT_SILENT) && is_timeout(second, SECOND)) {
+			printf("\b\b%2d", countdown--);
+			second += SECOND;
+		}
+	} while (!is_timeout(start, timeout_s * SECOND));
+
+	ret = true;
+
+ out:
+	if (!(flags & SIMPLE_TIMEOUT_SILENT))
+		printf("\n");
+	if (key && out_key)
+		*out_key = key;
+
+	return ret;
+}
diff --git a/include/simple_timeout.h b/include/simple_timeout.h
new file mode 100644
index 000000000000..c1deb360955f
--- /dev/null
+++ b/include/simple_timeout.h
@@ -0,0 +1,11 @@
+#ifndef __SIMPLE_TIMEOUT_H
+#define __SIMPLE_TIMEOUT_H
+
+#define SIMPLE_TIMEOUT_SILENT (1 << 0)
+#define SIMPLE_TIMEOUT_ANYKEY (1 << 1)
+#define SIMPLE_TIMEOUT_RETURN (1 << 3)
+#define SIMPLE_TIMEOUT_CTRLC (1 << 4)
+
+int is_simple_timeout(int timeout_s, unsigned flags, char *out_key);
+
+#endif /* __SIMPLE_TIMEOUT_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
