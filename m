Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ra9cU-00022R-TP
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 17:24:55 +0000
Received: from mail240.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 41B1ADC64A9
 for <barebox@lists.infradead.org>; Mon, 12 Dec 2011 18:25:11 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 12 Dec 2011 18:20:27 +0100
Message-Id: <1323710427-8362-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [re-PATCH 1/1] sanbox: add linux_execve and linux_exec command
To: barebox@lists.infradead.org

this will allow to execute a program of the host from barebox

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
Hi,

	I do not known why but we lost a part of the commit

Best Regards,
J.
 commands/linux_exec.c |   60 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 60 insertions(+), 0 deletions(-)
 create mode 100644 commands/linux_exec.c

diff --git a/commands/linux_exec.c b/commands/linux_exec.c
new file mode 100644
index 0000000..00c7e80
--- /dev/null
+++ b/commands/linux_exec.c
@@ -0,0 +1,60 @@
+/*
+ * Copyright (c) 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
+#include <mach/linux.h>
+
+static int do_linux_exec(struct command *cmdtp, int argc, char *argv[])
+{
+	int ret;
+	char **newargv;
+	char *newenv[] = { NULL };
+	int i, j;
+
+	if (argc < 2)
+		return 1;
+
+	newargv = xzalloc(sizeof(char*) * argc);
+
+	for (j = 0, i = 1; i < argc; i++, j++)
+		newargv[j] = argv[i];
+
+	newargv[j] = NULL;
+	ret = linux_execve(argv[1], newargv, newenv);
+
+	free(newargv);
+
+	if (ret)
+		return 1;
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(linux_exec)
+BAREBOX_CMD_HELP_USAGE("linux_exec ...\n")
+BAREBOX_CMD_HELP_SHORT("Execute a command on the host\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(linux_exec)
+	.cmd		= do_linux_exec,
+	.usage		= "Execute a command on the host",
+	BAREBOX_CMD_HELP(cmd_linux_exec_help)
+BAREBOX_CMD_END
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
