Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RmMtZ-000885-4l
 for barebox@lists.infradead.org; Sun, 15 Jan 2012 10:01:02 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 02060FFADCB
 for <barebox@lists.infradead.org>; Sun, 15 Jan 2012 11:02:28 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 15 Jan 2012 11:00:20 +0100
Message-Id: <1326621621-11484-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120115095156.GH5002@game.jcrosoft.org>
References: <20120115095156.GH5002@game.jcrosoft.org>
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
Subject: [PATCH 4/5] filetype: add command support
To: barebox@lists.infradead.org

this will allow to detect the filetype of a file and export it as filetype

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig    |    5 +++++
 commands/Makefile   |    1 +
 commands/filetype.c |   39 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 45 insertions(+), 0 deletions(-)
 create mode 100644 commands/filetype.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 766428c..c613e22 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -181,6 +181,11 @@ config CMD_NANDTEST
 	select PARTITION_NEED_MTD
 	prompt "nandtest"
 
+config CMD_FILETYPE
+	tristate
+	depends on FILETYPE
+	prompt "filetype"
+
 endmenu
 
 menu "console                       "
diff --git a/commands/Makefile b/commands/Makefile
index 31442b5..a91eed2 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -64,3 +64,4 @@ obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
 obj-$(CONFIG_CMD_MAGICVAR)	+= magicvar.o
 obj-$(CONFIG_CMD_IOMEM)		+= iomem.o
 obj-$(CONFIG_CMD_LINUX_EXEC)	+= linux_exec.o
+obj-$(CONFIG_CMD_FILETYPE)	+= filetype.o
diff --git a/commands/filetype.c b/commands/filetype.c
new file mode 100644
index 0000000..7c5e907
--- /dev/null
+++ b/commands/filetype.c
@@ -0,0 +1,39 @@
+/*
+ * (C) Copyright 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2 Only
+ */
+
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <filetype.h>
+#include <environment.h>
+
+static int do_filetype(struct command *cmdtp, int argc, char *argv[])
+{
+	enum filetype type;
+
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
+
+	type = file_name_detect_type(argv[1]);
+
+	printf("%s: %s detected\n", argv[1], file_type_to_string(type));
+
+	export_env_ull("filetype" , type);
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(filetype)
+BAREBOX_CMD_HELP_USAGE("filetype file\n")
+BAREBOX_CMD_HELP_USAGE("export filetype\n")
+BAREBOX_CMD_HELP_SHORT("detect file type\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(filetype)
+	.cmd		= do_filetype,
+	.usage		= "detect file type",
+	BAREBOX_CMD_HELP(cmd_filetype_help)
+BAREBOX_CMD_END
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
