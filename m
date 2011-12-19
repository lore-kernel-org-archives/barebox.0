Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RcZLy-0008Hf-Px
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 09:17:52 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 19 Dec 2011 10:17:20 +0100
Message-Id: <1324286241-23083-4-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1324286241-23083-1-git-send-email-robert.jarzmik@free.fr>
References: <1324286241-23083-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] commands: add hexdump command
To: barebox@lists.infradead.org

Add a hexdump command to copycat the "hexdump -C <file>"
unix standard command.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 commands/Kconfig   |    5 ++
 commands/Makefile  |    1 +
 commands/hexdump.c |  126 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 132 insertions(+), 0 deletions(-)
 create mode 100644 commands/hexdump.c

diff --git a/commands/Kconfig b/commands/Kconfig
index d9e182f..9a9dfb9 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -173,6 +173,11 @@ config CMD_NAND
 	depends on NAND
 	prompt "nand"
 
+config CMD_HEXDUMP
+	tristate
+	default n
+	prompt "hexdump"
+
 endmenu
 
 menu "console                       "
diff --git a/commands/Makefile b/commands/Makefile
index 24753be..5725cc3 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -62,3 +62,4 @@ obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
 obj-$(CONFIG_CMD_MAGICVAR)	+= magicvar.o
 obj-$(CONFIG_CMD_IOMEM)		+= iomem.o
 obj-$(CONFIG_CMD_LINUX_EXEC)	+= linux_exec.o
+obj-$(CONFIG_CMD_HEXDUMP)	+= hexdump.o
\ No newline at end of file
diff --git a/commands/hexdump.c b/commands/hexdump.c
new file mode 100644
index 0000000..a7e8e4f
--- /dev/null
+++ b/commands/hexdump.c
@@ -0,0 +1,126 @@
+/*
+ * Copyright (c) 2011 Robert Jarzmik <robert.jarzmik@free.fr>
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
+ */
+
+/**
+ * @file
+ * @brief Cat a file on the console as standard "hexdump -C" would
+ */
+
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <linux/ctype.h>
+#include <errno.h>
+#include <xfuncs.h>
+#include <malloc.h>
+
+#define LINESZ  16
+#define BUFSIZE 1024
+
+static void printline(const u8 *src, int linesz, uint ofs, int len)
+{
+	static const int groupsz = 8;
+	int i, j;
+
+	printf("%08x  ", ofs);
+	for (j = 0; j * groupsz < linesz; j++) {
+		for (i = 0; i < groupsz; i++)
+			if (j * groupsz + i < len)
+				printf("%s%02x", i ? " " : "",
+				       src[j * groupsz + i]);
+			else
+				printf("%s  ", i ? " " : "");
+		printf("  ");
+	}
+	printf("\t|");
+	for (i = 0; i < linesz; i++) {
+		if (i && i % groupsz == 0)
+			printf(" ");
+		if (i < len)
+			printf("%c", isprint(src[i]) ? src[i] : '.');
+		else
+			printf(" ");
+	}
+	printf("|\n");
+}
+
+/**
+ * @param[in] cmdtp FIXME
+ * @param[in] argc Argument count from command line
+ * @param[in] argv List of input arguments
+ */
+static int do_hexdump(struct command *cmdtp, int argc, char *argv[])
+{
+	int ret, fd = -1, i, err = 1, samelastline = 0, nbsame = 0;
+	uint ofs = 0;
+	char *buf = NULL;
+
+	if (argc != 2) {
+		perror("hexdump require one argument");
+		goto out;
+	}
+
+	buf = xzalloc(BUFSIZE + LINESZ);
+	fd = open(argv[1], O_RDONLY);
+	if (fd < 0) {
+		err = 1;
+		printf("could not open %s: %s\n", argv[1], errno_str());
+		goto out;
+	}
+
+	while ((ret = read(fd, buf, BUFSIZE)) > 0) {
+		for (i = 0; i < ret; i += LINESZ) {
+			samelastline = !memcmp(buf + i, buf + BUFSIZE, LINESZ);
+			if (samelastline) {
+				nbsame++;
+			} else {
+				if (nbsame)
+					printf("*\n");
+				nbsame = 0;
+				printline(buf + i, LINESZ, ofs + i,
+					  min(ret - i, LINESZ));
+				memcpy(buf + BUFSIZE, buf + i, LINESZ);
+			}
+			if (ctrlc())
+				goto out;
+		}
+		ofs += BUFSIZE;
+	}
+	if (nbsame)
+		printf("*\n");
+	err = 0;
+
+out:
+	if (fd >= 0)
+		close(fd);
+	free(buf);
+
+	return err;
+}
+
+BAREBOX_CMD_HELP_START(hexdump)
+BAREBOX_CMD_HELP_USAGE("hexdump [FILE]\n")
+BAREBOX_CMD_HELP_SHORT("Dump in a pretty print a file on stdout.\n")
+BAREBOX_CMD_HELP_TEXT("Currently only printable characters are printed,\n")
+BAREBOX_CMD_HELP_TEXT("but this should be optional.\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(hexdump)
+	.cmd		= do_hexdump,
+	.usage		= "heximal dump of a file",
+	BAREBOX_CMD_HELP(cmd_hexdump_help)
+BAREBOX_CMD_END
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
