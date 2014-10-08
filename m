Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbsAR-0008J5-0Q
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 14:24:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 Oct 2014 16:24:15 +0200
Message-Id: <1412778255-4153-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1412778255-4153-1-git-send-email-s.hauer@pengutronix.de>
References: <1412778255-4153-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] commands: implement 'diff' command
To: barebox@lists.infradead.org

This command compares two files. It does not show the differences,
it only returns successfully if both files are identical and with
an error if they differ.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  | 10 ++++++++++
 commands/Makefile |  1 +
 commands/diff.c   | 42 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 53 insertions(+)
 create mode 100644 commands/diff.c

diff --git a/commands/Kconfig b/commands/Kconfig
index d73a393..05d5426 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -811,6 +811,16 @@ config CMD_CP
 	  Options:
 		  -v	verbose
 
+config CMD_DIFF
+	tristate
+	prompt "diff"
+	help
+	  compare two files
+
+	  Usage: diff FILE1 FILE2
+
+	  Returns successfully if the two files are the same, return with an error if not
+
 config CMD_DIRNAME
 	tristate
 	prompt "dirname"
diff --git a/commands/Makefile b/commands/Makefile
index b1cdf33..e53bdde 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -106,3 +106,4 @@ obj-$(CONFIG_CMD_IMD)		+= imd.o
 obj-$(CONFIG_CMD_HWCLOCK)	+= hwclock.o
 obj-$(CONFIG_CMD_USBGADGET)	+= usbgadget.o
 obj-$(CONFIG_CMD_FIRMWARELOAD)	+= firmwareload.o
+obj-$(CONFIG_CMD_DIFF)		+= diff.o
diff --git a/commands/diff.c b/commands/diff.c
new file mode 100644
index 0000000..26eaf88
--- /dev/null
+++ b/commands/diff.c
@@ -0,0 +1,42 @@
+/*
+ * diff - determine if two files differ
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
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
+#include <complete.h>
+#include <libfile.h>
+
+static int do_diff(int argc, char *argv[])
+{
+	if (argc != 3)
+		return COMMAND_ERROR_USAGE;
+
+	return diff_file(argv[1], argv[2]);
+}
+
+BAREBOX_CMD_HELP_START(diff)
+BAREBOX_CMD_HELP_TEXT("Returns successfully if the two files are the same, return with an error if not")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(diff)
+	.cmd		= do_diff,
+	BAREBOX_CMD_DESC("compare two files")
+	BAREBOX_CMD_OPTS("FILE1 FILE2")
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
+	BAREBOX_CMD_HELP(cmd_diff_help)
+BAREBOX_CMD_END
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
