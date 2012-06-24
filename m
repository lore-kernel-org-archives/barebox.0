Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sil0R-0001UT-Oy
 for barebox@lists.infradead.org; Sun, 24 Jun 2012 11:29:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 24 Jun 2012 13:29:14 +0200
Message-Id: <1340537355-22243-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340537355-22243-1-git-send-email-s.hauer@pengutronix.de>
References: <1340537355-22243-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] Add basename command
To: barebox@lists.infradead.org

The basename command allows to set an environment variable with
the basename of a path.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig    |    7 +++++++
 commands/Makefile   |    1 +
 commands/basename.c |   47 +++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 55 insertions(+)
 create mode 100644 commands/basename.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 52e1f17..233ddfc 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -198,6 +198,13 @@ config CMD_AUTOMOUNT
 	  this directory available (discover USB devices, bring network interface
 	  up and finally mount the filesystem).
 
+config CMD_BASENAME
+	tristate
+	prompt "basename"
+	help
+	  Strip directory and suffix from filenames and store the result in a
+	  environment variable
+
 endmenu
 
 menu "console                       "
diff --git a/commands/Makefile b/commands/Makefile
index 4c8a0a9..6c0f2f9 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -66,3 +66,4 @@ obj-$(CONFIG_CMD_IOMEM)		+= iomem.o
 obj-$(CONFIG_CMD_LINUX_EXEC)	+= linux_exec.o
 obj-$(CONFIG_CMD_AUTOMOUNT)	+= automount.o
 obj-$(CONFIG_CMD_GLOBAL)	+= global.o
+obj-$(CONFIG_CMD_BASENAME)	+= basename.o
diff --git a/commands/basename.c b/commands/basename.c
new file mode 100644
index 0000000..b47ff8c
--- /dev/null
+++ b/commands/basename.c
@@ -0,0 +1,47 @@
+/*
+ * basename.c - strip directory and suffix from filenames
+ *
+ * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#include <common.h>
+#include <command.h>
+#include <libgen.h>
+#include <environment.h>
+
+static int do_basename(int argc, char *argv[])
+{
+	if (argc != 3)
+		return COMMAND_ERROR_USAGE;
+
+	setenv(argv[2], basename(argv[1]));
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(basename)
+BAREBOX_CMD_HELP_USAGE("basename NAME BASENAME\n")
+BAREBOX_CMD_HELP_SHORT("strip NAME and store into $BASENAME\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(basename)
+	.cmd		= do_basename,
+	.usage		= "strip directory and suffix from filenames",
+	BAREBOX_CMD_HELP(cmd_basename_help)
+BAREBOX_CMD_END
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
