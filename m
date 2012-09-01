Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7mx0-0006RQ-Rs
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 12:37:28 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 3942BDC7056
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 14:42:34 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  1 Sep 2012 14:37:25 +0200
Message-Id: <1346503053-21862-10-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346503053-21862-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120901123511.GA19233@game.jcrosoft.org>
 <1346503053-21862-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 10/18] command: add readlink support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig    |    6 ++++
 commands/Makefile   |    1 +
 commands/readlink.c |   80 +++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 87 insertions(+)
 create mode 100644 commands/readlink.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 92a8152..876f2f8 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -220,6 +220,12 @@ config CMD_DIRNAME
 	  Strip last component of file name and store the result in a
 	  environment variable
 
+config CMD_READLINK
+	tristate
+	prompt "readlink"
+	help
+	  read value of a symbolic link
+
 endmenu
 
 menu "console                       "
diff --git a/commands/Makefile b/commands/Makefile
index e9157bf..ab6c7ea 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -72,3 +72,4 @@ obj-$(CONFIG_CMD_AUTOMOUNT)	+= automount.o
 obj-$(CONFIG_CMD_GLOBAL)	+= global.o
 obj-$(CONFIG_CMD_BASENAME)	+= basename.o
 obj-$(CONFIG_CMD_DIRNAME)	+= dirname.o
+obj-$(CONFIG_CMD_READLINK)	+= readlink.o
diff --git a/commands/readlink.c b/commands/readlink.c
new file mode 100644
index 0000000..d2671e0
--- /dev/null
+++ b/commands/readlink.c
@@ -0,0 +1,80 @@
+/*
+ * readlink.c - read value of a symbolic link
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
+#include <malloc.h>
+#include <getopt.h>
+
+static int do_readlink(int argc, char *argv[])
+{
+	char realname[PATH_MAX];
+	int canonicalize = 0;
+	int opt;
+
+	memset(realname, 0, PATH_MAX);
+
+	while ((opt = getopt(argc, argv, "f")) > 0) {
+		switch (opt) {
+		case 'f':
+			canonicalize = 1;
+			break;
+		}
+	}
+
+	if (argc < optind + 2)
+		return COMMAND_ERROR_USAGE;
+
+	if (readlink(argv[optind], realname, PATH_MAX - 1) < 0)
+		goto err;
+
+	if (canonicalize) {
+		char *buf = normalise_link(argv[optind], realname);
+
+		if (!buf)
+			goto err;
+		setenv(argv[optind + 1], buf);
+		free(buf);
+	} else {
+		setenv(argv[optind + 1], realname);
+	}
+
+	return 0;
+err:
+	setenv(argv[optind + 1], "");
+	return 1;
+}
+
+BAREBOX_CMD_HELP_START(readlink)
+BAREBOX_CMD_HELP_USAGE("readlink [-f] FILE REALNAME\n")
+BAREBOX_CMD_HELP_SHORT("read value of a symbolic link and store into $REALNAME\n")
+BAREBOX_CMD_HELP_SHORT("-f canonicalize by following first symlink");
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(readlink)
+	.cmd		= do_readlink,
+	.usage		= "read value of a symbolic link",
+	BAREBOX_CMD_HELP(cmd_readlink_help)
+BAREBOX_CMD_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
