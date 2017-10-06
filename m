Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.high-consulting.de ([62.245.247.194])
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1e0NvC-0002b1-LJ
 for barebox@lists.infradead.org; Fri, 06 Oct 2017 08:23:54 +0000
From: Gerd Pauli <gp@high-consulting.de>
Date: Fri,  6 Oct 2017 10:23:16 +0200
Message-Id: <1507278196-15424-1-git-send-email-gp@high-consulting.de>
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
Subject: [PATCH v1] writef: added command to write content of variable to file
To: barebox@lists.infradead.org
Cc: Gerd Pauli <gp@high-consulting.de>

writef: added command to write content of variable to file.
        Adds a newline at the emd of the string.

Usage: writef VAR FILE

Signed-off-by: Gerd Pauli <gp@high-consulting.de>
---
 commands/Kconfig  | 11 +++++++++
 commands/Makefile |  1 +
 commands/writef.c | 71 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 83 insertions(+)
 create mode 100644 commands/writef.c

diff --git a/commands/Kconfig b/commands/Kconfig
index ae2dc4b..af2b215 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1082,6 +1082,17 @@ config CMD_READF
 	  whitespaces are removed, nonvisible characters are stripped. Input is
 	  limited to 1024 characters.
 
+config CMD_WRITEF
+        tristate
+        prompt "writef"
+        help
+          Write variable into file
+
+          Usage: writef VAR FILE
+
+          Write Content of VARiable to FILE. A Newline is added
+          at the end of the String.
+
 config CMD_SLEEP
 	tristate
 	prompt "sleep"
diff --git a/commands/Makefile b/commands/Makefile
index 37486dc..16c1768 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -103,6 +103,7 @@ obj-$(CONFIG_CMD_BOOT)		+= boot.o
 obj-$(CONFIG_CMD_DEVINFO)	+= devinfo.o
 obj-$(CONFIG_CMD_DRVINFO)	+= drvinfo.o
 obj-$(CONFIG_CMD_READF)		+= readf.o
+obj-$(CONFIG_CMD_WRITEF)	+= writef.o
 obj-$(CONFIG_CMD_MENUTREE)	+= menutree.o
 obj-$(CONFIG_CMD_2048)		+= 2048.o
 obj-$(CONFIG_CMD_REGULATOR)	+= regulator.o
diff --git a/commands/writef.c b/commands/writef.c
new file mode 100644
index 0000000..dea18b0
--- /dev/null
+++ b/commands/writef.c
@@ -0,0 +1,71 @@
+/* -*- Mode:C; c-file-style:"linux"; -*- */
+
+/*
+ * writef.c - Write Content of Variable to File
+ *
+ * Copyright (c) 2017 Gerd Pauli <gp@high-consulting.de>
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
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <libfile.h>
+#include <malloc.h>
+#include <linux/stat.h>
+#include <linux/ctype.h>
+#include <environment.h>
+
+static int do_writef(int argc, char *argv[])
+{
+	const char *val;
+	char *variable, *filename;
+	size_t size;
+	void *buf;
+	int ret;
+
+	if (argc != 3)
+		return COMMAND_ERROR_USAGE;
+
+	variable = argv[1];
+	filename = argv[2];
+
+	val = getenv(variable);
+	if (val == NULL)
+		return COMMAND_ERROR;
+
+	size = strlen(val);
+	size++;
+
+	buf = xmalloc(size+1);
+	sprintf(buf, "%s\n", val);
+
+	ret = write_file(filename, buf, size);
+	free(buf);
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(writef)
+BAREBOX_CMD_HELP_TEXT("Write Content of VARiable to FILE. A Newline is added")
+BAREBOX_CMD_HELP_TEXT("at the end of the String.")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(writef)
+.cmd		= do_writef,
+	BAREBOX_CMD_DESC("write variable into file")
+	BAREBOX_CMD_OPTS("VAR FILE")
+	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
+	BAREBOX_CMD_HELP(cmd_writef_help)
+	BAREBOX_CMD_END
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
