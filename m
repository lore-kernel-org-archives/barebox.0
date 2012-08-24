Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T4lqW-0005qF-OQ
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 04:50:17 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id C0239DC0FC0
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 06:55:09 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Aug 2012 06:50:11 +0200
Message-Id: <1345783818-28784-11-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120824044613.GI6271@game.jcrosoft.org>
 <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 11/18] command: add ln support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig  |    4 ++++
 commands/Makefile |    1 +
 commands/ln.c     |   51 +++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 56 insertions(+)
 create mode 100644 commands/ln.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 876f2f8..337f545 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -57,6 +57,10 @@ config CMD_READLINE
 	tristate
 	prompt "readline"
 
+config CMD_LN
+	tristate
+	prompt "ln"
+
 config CMD_TRUE
 	tristate
 	default y
diff --git a/commands/Makefile b/commands/Makefile
index ab6c7ea..ccebd7f 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -73,3 +73,4 @@ obj-$(CONFIG_CMD_GLOBAL)	+= global.o
 obj-$(CONFIG_CMD_BASENAME)	+= basename.o
 obj-$(CONFIG_CMD_DIRNAME)	+= dirname.o
 obj-$(CONFIG_CMD_READLINK)	+= readlink.o
+obj-$(CONFIG_CMD_LN)		+= ln.o
diff --git a/commands/ln.c b/commands/ln.c
new file mode 100644
index 0000000..0237447
--- /dev/null
+++ b/commands/ln.c
@@ -0,0 +1,51 @@
+/*
+ * ln.c - make links between files
+ *
+ * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
+#include <fs.h>
+#include <errno.h>
+
+static int do_ln(int argc, char *argv[])
+{
+	if (argc != 3)
+		return COMMAND_ERROR_USAGE;
+
+	if (symlink(argv[1], argv[2]) < 0) {
+		perror("ln");
+		return 1;
+	}
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(ln)
+BAREBOX_CMD_HELP_USAGE("ln SRC DEST\n")
+BAREBOX_CMD_HELP_SHORT("symlink - make a new name for a file\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(ln)
+	.cmd		= do_ln,
+	.usage		= "symlink - make a new name for a file",
+	BAREBOX_CMD_HELP(cmd_ln_help)
+BAREBOX_CMD_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
