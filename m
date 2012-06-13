Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SekPy-00043H-WB
 for barebox@lists.infradead.org; Wed, 13 Jun 2012 10:03:16 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 13 Jun 2012 12:01:50 +0200
Message-Id: <1339581710-5460-1-git-send-email-s.trumtrar@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] commands: add msleep command
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Add a command to sleep for n milliseconds.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 commands/Kconfig  |    4 ++++
 commands/Makefile |    1 +
 commands/msleep.c |   40 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 45 insertions(+)
 create mode 100644 commands/msleep.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 52e1f17..adc0914 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -25,6 +25,10 @@ config CMD_SLEEP
 	tristate
 	prompt "sleep"
 
+config CMD_MSLEEP
+	tristate
+	prompt "msleep"
+
 config CMD_SAVEENV
 	tristate
 	select ENV_HANDLING
diff --git a/commands/Makefile b/commands/Makefile
index 4c8a0a9..0970ba3 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -10,6 +10,7 @@ obj-$(CONFIG_CMD_MTEST)		+= memtest.o
 obj-$(CONFIG_CMD_EDIT)		+= edit.o
 obj-$(CONFIG_CMD_EXEC)		+= exec.o
 obj-$(CONFIG_CMD_SLEEP)		+= sleep.o
+obj-$(CONFIG_CMD_MSLEEP)	+= msleep.o
 obj-$(CONFIG_CMD_RESET)		+= reset.o
 obj-$(CONFIG_CMD_GO)		+= go.o
 obj-$(CONFIG_NET)		+= net.o
diff --git a/commands/msleep.c b/commands/msleep.c
new file mode 100644
index 0000000..c9fa23c
--- /dev/null
+++ b/commands/msleep.c
@@ -0,0 +1,40 @@
+/*
+ * msleep.c - delay execution for n milliseconds
+ *
+ * Copyright (c) 2012 Steffen Trumtrar <s.trumtrar@pengutronix.de>, Pengutronix
+ *
+ * derived from commands/sleep.c
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
+#include <common.h>
+#include <command.h>
+#include <clock.h>
+
+static int do_msleep(int argc, char *argv[])
+{
+	ulong delay;
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	delay = simple_strtoul(argv[1], NULL, 10);
+
+	mdelay(delay);
+
+	return 0;
+}
+
+BAREBOX_CMD_START(msleep)
+	.cmd		= do_msleep,
+	.usage		= "delay execution for n milliseconds",
+BAREBOX_CMD_END
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
