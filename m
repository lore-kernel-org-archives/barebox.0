Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo4.mail-out.ovh.net ([46.105.72.36]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VP4jt-0002wF-5O
 for barebox@lists.infradead.org; Thu, 26 Sep 2013 06:07:50 +0000
Received: from mail242.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 7F75D1054CE6
 for <barebox@lists.infradead.org>; Thu, 26 Sep 2013 08:07:25 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 26 Sep 2013 07:45:56 +0200
Message-Id: <1380174356-6399-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] command: add read command
To: barebox@lists.infradead.org

this will allow us to read file content into a var

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig  |   4 ++
 commands/Makefile |   1 +
 commands/read.c   | 126 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 131 insertions(+)
 create mode 100644 commands/read.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 55e46a0..cf17d2c 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -64,6 +64,10 @@ config CMD_LET
 	  the 'let' command is used for arithmetics. It works like the corresponding
 	  Unix shell command.
 
+config CMD_READ
+	tristate
+	prompt "read"
+
 config CMD_TRUE
 	tristate
 	default y
diff --git a/commands/Makefile b/commands/Makefile
index 6acffc8..64dbe99 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -91,3 +91,4 @@ obj-$(CONFIG_CMD_FILETYPE)	+= filetype.o
 obj-$(CONFIG_CMD_BAREBOX_UPDATE)+= barebox-update.o
 obj-$(CONFIG_CMD_MIITOOL)	+= miitool.o
 obj-$(CONFIG_CMD_DETECT)	+= detect.o
+obj-$(CONFIG_CMD_READ)		+= read.o
diff --git a/commands/read.c b/commands/read.c
new file mode 100644
index 0000000..8ba0dbc
--- /dev/null
+++ b/commands/read.c
@@ -0,0 +1,126 @@
+/*
+ * (C) Copyright 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * Under GPLv2 only
+ */
+
+#include <common.h>
+#include <command.h>
+#include <getopt.h>
+#include <errno.h>
+#include <linux/err.h>
+#include <fs.h>
+#include <environment.h>
+#include <malloc.h>
+#include <fcntl.h>
+
+static char *file;
+static int fd = -1;
+static size_t offset = 0;
+
+static void read_close(void)
+{
+	close(fd);
+	fd = -1;
+	free(file);
+	file = NULL;
+}
+
+static int do_read(int argc, char *argv[])
+{
+	int opt;
+	int cont = 0;
+	int ret = -EINVAL;
+	char *var;
+	char *buf = xzalloc(2049);
+	char *filename = NULL;
+
+	if (!argc)
+		return COMMAND_ERROR_USAGE;
+
+	while((opt = getopt(argc, argv, "cf:")) > 0) {
+		switch(opt) {
+		case 'c':
+			cont = 1;
+			break;
+		case 'f':
+			filename = optarg;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (optind == argc)
+		return COMMAND_ERROR_USAGE;
+
+	if (!file && !filename)
+		return COMMAND_ERROR_USAGE;
+
+	if (file && filename) {
+		if (strcmp(file, filename)) {
+			read_close();
+			file = xstrdup(filename);
+		}
+	} else if (!file && filename) {
+		file = xstrdup(filename);
+	}
+
+	var = argv[optind];
+
+	if (!cont || fd < 0) {
+		if (!file) {
+			fd = -EIO;
+		} else {
+			fd = open(file, O_RDONLY);
+			offset = 0;
+		}
+	}
+
+	if (fd < 0)
+		return 1;
+
+	ret = read(fd, buf, 2048);
+	if (ret < 0)
+		goto err;
+
+	if (ret) {
+		char *tmp = strchr(buf, '\n');
+		if (tmp) {
+			*tmp = '\0';
+			lseek(fd, offset, SEEK_SET);
+		}
+		setenv(var, buf);
+		offset += strlen(buf);
+		export(var);
+	}
+
+	if (!cont)
+		read_close();
+
+	free(buf);
+
+	return 0;
+
+err:
+	free(buf);
+	read_close();
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(read)
+BAREBOX_CMD_HELP_USAGE("read [-c] -f file va\n")
+BAREBOX_CMD_HELP_SHORT("read a ligne from a file into a var\n")
+BAREBOX_CMD_HELP_OPT  ("-c", "continue to read the same file.\n")
+BAREBOX_CMD_HELP_OPT  ("-f file", "file to work on.\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(read)
+	.cmd		= do_read,
+	.usage		= "read",
+	BAREBOX_CMD_HELP(cmd_read_help)
+BAREBOX_CMD_END
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
