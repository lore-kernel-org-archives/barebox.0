Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmMfX-00038Y-E6
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 13:00:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Nov 2014 13:59:36 +0100
Message-Id: <1415278778-20826-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1415278778-20826-1-git-send-email-s.hauer@pengutronix.de>
References: <1415278778-20826-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/11] Add defaultenv command
To: barebox@lists.infradead.org

This adds a command to explicitly restore the environment (or
parts thereof) from the default environment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig      |  7 ++++
 commands/Makefile     |  1 +
 commands/defaultenv.c | 95 +++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 103 insertions(+)
 create mode 100644 commands/defaultenv.c

diff --git a/commands/Kconfig b/commands/Kconfig
index cf32548..f4c7835 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -699,6 +699,13 @@ config CMD_EXPORT
 
 	  Export an environment variable to subsequently executed scripts.
 
+config CMD_DEFAULTENV
+	tristate
+	select ENV_HANDLING
+	prompt "defaultenv"
+	help
+	  restore environment from default environment
+
 config CMD_GLOBAL
 	select GLOBALVAR
 	tristate
diff --git a/commands/Makefile b/commands/Makefile
index b4fc3d3..99a65d4 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -108,3 +108,4 @@ obj-$(CONFIG_CMD_USBGADGET)	+= usbgadget.o
 obj-$(CONFIG_CMD_FIRMWARELOAD)	+= firmwareload.o
 obj-$(CONFIG_CMD_CMP)		+= cmp.o
 obj-$(CONFIG_CMD_NV)		+= nv.o
+obj-$(CONFIG_CMD_DEFAULTENV)	+= defaultenv.o
diff --git a/commands/defaultenv.c b/commands/defaultenv.c
new file mode 100644
index 0000000..bae2d78
--- /dev/null
+++ b/commands/defaultenv.c
@@ -0,0 +1,95 @@
+/*
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
+
+#include <common.h>
+#include <getopt.h>
+#include <command.h>
+#include <envfs.h>
+#include <errno.h>
+#include <fs.h>
+#include <libfile.h>
+#include <malloc.h>
+#include <globalvar.h>
+
+static int do_defaultenv(int argc, char *argv[])
+{
+	char *dirname;
+	int opt, ret;
+	char *restorepath = "/";
+	char *from, *to;
+	int restore = 0, scrub = 0;
+
+	while ((opt = getopt(argc, argv, "p:rs")) > 0) {
+		switch (opt) {
+		case 'r':
+			restore = 1;
+			break;
+		case 'p':
+			restorepath = optarg;
+			break;
+		case 's':
+			scrub = 1;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (!restore || argc != optind)
+		return COMMAND_ERROR_USAGE;
+
+	dirname = "/env";
+
+	make_directory(dirname);
+
+	ret = defaultenv_load("/.defaultenv", 0);
+	if (ret)
+		return ret;
+
+	from = asprintf("/.defaultenv/%s", restorepath);
+	to = asprintf("%s/%s", dirname, restorepath);
+
+	printf("Restoring %s from default environment\n", restorepath);
+
+	if (scrub)
+		unlink_recursive(to, NULL);
+
+	ret = copy_recursive(from, to);
+	free(from);
+	free(to);
+
+	nvvar_load();
+
+	unlink_recursive("/.defaultenv", NULL);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(defaultenv)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-r", "restore default environment")
+BAREBOX_CMD_HELP_OPT("-s", "scrub, remove files not in default environment")
+BAREBOX_CMD_HELP_OPT("-p <PATH>", "limit to <PATH>")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(defaultenv)
+	.cmd		= do_defaultenv,
+	BAREBOX_CMD_DESC("Restore environment from default environment")
+	BAREBOX_CMD_OPTS("[-rs] [-p <PATH>]")
+	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
+	BAREBOX_CMD_HELP(cmd_defaultenv_help)
+BAREBOX_CMD_END
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
