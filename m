Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T10qp-0000sq-7i
 for barebox@lists.infradead.org; Mon, 13 Aug 2012 20:03:00 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 332F9105820B
 for <barebox@lists.infradead.org>; Mon, 13 Aug 2012 22:07:35 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 13 Aug 2012 22:03:03 +0200
Message-Id: <1344888183-1489-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] filetype: add command support
To: barebox@lists.infradead.org

this will allow to detect the filetype of a file and export it as filetype

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig    |    5 +++++
 commands/Makefile   |    1 +
 commands/filetype.c |   60 +++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 66 insertions(+)
 create mode 100644 commands/filetype.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 92a8152..e9fb9f6 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -220,6 +220,11 @@ config CMD_DIRNAME
 	  Strip last component of file name and store the result in a
 	  environment variable
 
+config CMD_FILETYPE
+	tristate
+	depends on FILETYPE
+	prompt "filetype"
+
 endmenu
 
 menu "console                       "
diff --git a/commands/Makefile b/commands/Makefile
index e9157bf..083782f 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -72,3 +72,4 @@ obj-$(CONFIG_CMD_AUTOMOUNT)	+= automount.o
 obj-$(CONFIG_CMD_GLOBAL)	+= global.o
 obj-$(CONFIG_CMD_BASENAME)	+= basename.o
 obj-$(CONFIG_CMD_DIRNAME)	+= dirname.o
+obj-$(CONFIG_CMD_FILETYPE)	+= filetype.o
diff --git a/commands/filetype.c b/commands/filetype.c
new file mode 100644
index 0000000..eba16bb
--- /dev/null
+++ b/commands/filetype.c
@@ -0,0 +1,60 @@
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
+#include <magicvar.h>
+#include <getopt.h>
+
+static int do_filetype(int argc, char *argv[])
+{
+	int opt;
+	enum filetype type;
+	char* filename = NULL;
+	int verbose = 0;
+
+	while ((opt = getopt(argc, argv, "vf:")) > 0) {
+		switch (opt) {
+		case 'f':
+			filename = optarg;
+			break;
+		case 'v':
+			verbose = 1;
+			break;
+		}
+	}
+
+	if (!filename)
+		return COMMAND_ERROR_USAGE;
+
+	type = file_name_detect_type(filename);
+
+	if (verbose)
+		pr_info("%s: %s detected\n", filename,
+			file_type_to_string(type));
+
+	export_env_ull("filetype" , type);
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(filetype)
+BAREBOX_CMD_HELP_USAGE("filetype -f file [-v]\n")
+BAREBOX_CMD_HELP_USAGE("export filetype\n")
+BAREBOX_CMD_HELP_USAGE("-v     verbose\n")
+BAREBOX_CMD_HELP_SHORT("detect file type\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(filetype)
+	.cmd		= do_filetype,
+	.usage		= "detect file type",
+	BAREBOX_CMD_HELP(cmd_filetype_help)
+BAREBOX_CMD_END
+
+BAREBOX_MAGICVAR(filetype, "Detected filetype id");
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
