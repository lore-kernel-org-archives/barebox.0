Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTD5o-0000p4-Mu
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 14:47:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Oct 2012 15:46:49 +0100
Message-Id: <1351608409-9793-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351608409-9793-1-git-send-email-s.hauer@pengutronix.de>
References: <1351608409-9793-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] add filetype command support
To: barebox@lists.infradead.org

This adds support for a filetype detection command. It can be
used to print a filename on the console or to set a variable
with the detection result for use in shell scripts.
The command also has an option to print the known filetypes
so that a user knows what to match for.

Based on an earlier version from Jean-Christophe.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig    |    5 +++
 commands/Makefile   |    1 +
 commands/filetype.c |   97 +++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 103 insertions(+)
 create mode 100644 commands/filetype.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 16706d3..460bc2c 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -230,6 +230,11 @@ config CMD_TFTP
 	  barebox can mount tftp as a filesystem. This command is only needed to
 	  preserve backward compatibility to the old tftp command.
 
+config CMD_FILETYPE
+	tristate
+	select FILETYPE
+	prompt "filetype"
+
 endmenu
 
 menu "console                       "
diff --git a/commands/Makefile b/commands/Makefile
index 610be55..6540802 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -76,3 +76,4 @@ obj-$(CONFIG_CMD_READLINK)	+= readlink.o
 obj-$(CONFIG_CMD_LN)		+= ln.o
 obj-$(CONFIG_CMD_CLK)		+= clk.o
 obj-$(CONFIG_CMD_TFTP)		+= tftp.o
+obj-$(CONFIG_CMD_FILETYPE)	+= filetype.o
diff --git a/commands/filetype.c b/commands/filetype.c
new file mode 100644
index 0000000..20d335b
--- /dev/null
+++ b/commands/filetype.c
@@ -0,0 +1,97 @@
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
+#include <linux/stat.h>
+#include <fs.h>
+
+static int do_filetype(int argc, char *argv[])
+{
+	int opt;
+	enum filetype type;
+	char *filename = NULL;
+	int verbose = -1, list = 0;
+	const char *varname = NULL;
+	struct stat s;
+	int ret;
+
+	while ((opt = getopt(argc, argv, "vls:")) > 0) {
+		switch (opt) {
+		case 'v':
+			verbose = 1;
+			break;
+		case 'l':
+			list = 1;
+			break;
+		case 's':
+			varname = optarg;
+			/* in scripting mode default to nonverbose */
+			if (verbose < 0)
+				verbose = 0;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (verbose < 0)
+		verbose = 1;
+
+	if (list) {
+		int i;
+
+		printf("known filetypes:\n");
+
+		for (i = 1; i < filetype_max; i++)
+			printf("%-16s: %s\n", file_type_to_short_string(i),
+					file_type_to_string(i));
+		return 0;
+	}
+
+	if (argc - optind < 1)
+		return COMMAND_ERROR_USAGE;
+
+	filename = argv[optind];
+
+	ret = stat(filename, &s);
+	if (ret)
+		return ret;
+
+	if (S_ISDIR(s.st_mode))
+		return -EISDIR;
+
+	type = file_name_detect_type(filename);
+
+	if (verbose)
+		printf("%s: %s (%s)\n", filename,
+				file_type_to_string(type),
+				file_type_to_short_string(type));
+
+	if (varname)
+		setenv(varname, file_type_to_short_string(type));
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(filetype)
+BAREBOX_CMD_HELP_USAGE("filetype [OPTIONS] <file>\n")
+BAREBOX_CMD_HELP_SHORT("detect type of a file and export result to a variable\n")
+BAREBOX_CMD_HELP_OPT("-v", "verbose\n")
+BAREBOX_CMD_HELP_OPT("-s <v>", "set <v> to shortname\n")
+BAREBOX_CMD_HELP_OPT("-l", "list known filetypes\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(filetype)
+	.cmd		= do_filetype,
+	.usage		= "detect file type",
+	BAREBOX_CMD_HELP(cmd_filetype_help)
+BAREBOX_CMD_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
