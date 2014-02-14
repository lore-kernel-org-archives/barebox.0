Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WEKsZ-0004ay-Pq
 for barebox@lists.infradead.org; Fri, 14 Feb 2014 15:40:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Feb 2014 16:40:17 +0100
Message-Id: <1392392417-27338-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Add readf command
To: barebox@lists.infradead.org

The readf command is useful to read the content of a file into
a shell variable. It should be used for ascii content and thus
stops reading at all nonprintable characters including newline.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  |  6 ++++++
 commands/Makefile |  1 +
 commands/readf.c  | 63 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 70 insertions(+)
 create mode 100644 commands/readf.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 1e07b5b..352e8bf 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -57,6 +57,12 @@ config CMD_READLINE
 	tristate
 	prompt "readline"
 
+config CMD_READF
+	tristate
+	prompt "readf"
+	help
+	  The readf command is used to read a files content into a shell variable.
+
 config CMD_LET
 	tristate
 	prompt "let"
diff --git a/commands/Makefile b/commands/Makefile
index 58d27fa..91ec0e9 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -93,3 +93,4 @@ obj-$(CONFIG_CMD_MIITOOL)	+= miitool.o
 obj-$(CONFIG_CMD_DETECT)	+= detect.o
 obj-$(CONFIG_CMD_BOOT)		+= boot.o
 obj-$(CONFIG_CMD_DEVINFO)	+= devinfo.o
+obj-$(CONFIG_CMD_READF)		+= readf.o
diff --git a/commands/readf.c b/commands/readf.c
new file mode 100644
index 0000000..6314c7e
--- /dev/null
+++ b/commands/readf.c
@@ -0,0 +1,63 @@
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <malloc.h>
+#include <linux/stat.h>
+#include <linux/ctype.h>
+#include <environment.h>
+
+static int do_readf(int argc, char *argv[])
+{
+	unsigned char *buf = NULL, *val;
+	char *variable, *filename;
+	struct stat s;
+	size_t size;
+	int ret, i;
+
+	if (argc != 3)
+		return COMMAND_ERROR_USAGE;
+
+	filename = argv[1];
+	variable = argv[2];
+
+	ret = stat(filename, &s);
+	if (ret)
+		goto out;
+
+	if (s.st_size > 1024) {
+		ret = -EFBIG;
+		goto out;
+	}
+
+	buf = read_file(filename, &size);
+	if (!buf)
+		goto out;
+
+	for (i = 0; i < size; i++) {
+		if (!isprint(buf[i])) {
+			buf[i] = '\0';
+			break;
+		}
+	}
+
+	val = strim(buf);
+
+	ret = setenv(variable, val);
+out:
+	free(buf);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(readf)
+BAREBOX_CMD_HELP_USAGE("readf <file> <variable>\n")
+BAREBOX_CMD_HELP_SHORT("Read a single line of a file into a shell variable. Leading and trailing whitespaces\n")
+BAREBOX_CMD_HELP_SHORT("are removed, nonvisible characters are stripped. Input is limited to 1024\n")
+BAREBOX_CMD_HELP_SHORT("characters.\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(readf)
+	.cmd		= do_readf,
+	.usage		= "read file into variable",
+	BAREBOX_CMD_HELP(cmd_readf_help)
+BAREBOX_CMD_END
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
