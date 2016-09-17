Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1blJ5q-0002Wn-0I
 for barebox@lists.infradead.org; Sat, 17 Sep 2016 17:07:59 +0000
Received: from ravnborg.org (unknown [188.228.89.252])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id B18AB80231
 for <barebox@lists.infradead.org>; Sat, 17 Sep 2016 19:07:33 +0200 (CEST)
Date: Sat, 17 Sep 2016 19:07:31 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20160917170731.GA30325@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] strings: new command
To: Barebox List <barebox@lists.infradead.org>

From 724382cf9aa173b6ced9fd213bbb369d9a5e3739 Mon Sep 17 00:00:00 2001
From: Sam Ravnborg <sam@ravnborg.org>
Date: Sat, 17 Sep 2016 19:01:15 +0200
Subject: [PATCH 1/1] strings: new command

Implement a simple version of strings that will print
printable strings from one or more files.
Strings shall be at least 4 chars before thay are printed

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---

I was in a situation where I missed "strings".
So here it is....
I started out with cat.c - but ended up re-writing everything.

It has seen light testing on my x86 box.
Ran it through checkpatch for good measure - fixed a few things.

The location in Makefile seems random, so I just put it next to cat.

Before applying please consider if strings is really
general useful in barebox.


	Sam


 commands/Kconfig   |  10 +++++
 commands/Makefile  |   1 +
 commands/strings.c | 121 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 132 insertions(+)
 create mode 100644 commands/strings.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 30bf429..2f9b5d8 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -993,6 +993,16 @@ config CMD_SHA512SUM
 
 	  Calculate a SHA512 digest over a FILE or a memory area.
 
+config CMD_STRINGS
+	tristate
+	default y
+	prompt "strings"
+	help
+	  Display printable strings in file(s) to stdout
+
+	  Usage: strings FILE...
+
+
 config CMD_UNCOMPRESS
 	bool
 	select UNCOMPRESS
diff --git a/commands/Makefile b/commands/Makefile
index 601f15f..7b11d73 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -32,6 +32,7 @@ obj-$(CONFIG_CMD_RMDIR)		+= rmdir.o
 obj-$(CONFIG_CMD_CP)		+= cp.o
 obj-$(CONFIG_CMD_RM)		+= rm.o
 obj-$(CONFIG_CMD_CAT)		+= cat.o
+obj-$(CONFIG_CMD_STRINGS)	+= strings.o
 obj-$(CONFIG_CMD_MOUNT)		+= mount.o
 obj-$(CONFIG_CMD_UMOUNT)	+= umount.o
 obj-$(CONFIG_CMD_REGINFO)	+= reginfo.o
diff --git a/commands/strings.c b/commands/strings.c
new file mode 100644
index 0000000..e1e7287
--- /dev/null
+++ b/commands/strings.c
@@ -0,0 +1,121 @@
+/*
+ * strings.c - find strings in a file
+ *
+ * Copyright (c) 2016 Sam Ravnborg <sam@ravnborg.org>
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
+#include <command.h>
+#include <fs.h>
+
+#include <linux/ctype.h>
+
+#define BUFSIZE    (1024)
+#define STRINGBUF  (1024 - 3)
+#define MIN_STRING 4
+
+/**
+ * @param[in] argc Argument count from command line
+ * @param[in] argv List of input arguments
+ */
+static int do_strings(int argc, char *argv[])
+{
+	char *string;
+	char *buf;
+	int args;
+	int err;
+	int ret;
+	int fd;
+	int i;
+	int s;
+
+	if (argc < 2) {
+		printf("strings: no file specified\n");
+		return 1;
+	}
+
+	buf = xmalloc(BUFSIZE);
+	/* Reserve room for newline + null */
+	string = xmalloc(STRINGBUF + 3);
+
+	args = 1;
+	err = 0;
+	s = 0;
+
+	while (args < argc) {
+		fd = open(argv[args], O_RDONLY);
+		if (fd < 0) {
+			err = 1;
+			printf("could not open %s: %s\n",
+				argv[args], errno_str());
+			goto out;
+		}
+
+		while ((ret = read(fd, buf, BUFSIZE)) > 0) {
+			for (i = 0; i < ret; i++) {
+				int nonprint = 0;
+
+				if (isascii(buf[i]) && isprint(buf[i]))
+					string[s++] = buf[i];
+				else
+					nonprint = 1;
+
+				if (nonprint) {
+					if (s >= MIN_STRING || s >= STRINGBUF) {
+						string[s++] = '\n';
+						string[s++] = '\0';
+						puts(string);
+					}
+
+					s = 0;
+				}
+			}
+
+			if (s >= MIN_STRING) {
+				string[s++] = '\n';
+				string[s++] = '\0';
+				puts(string);
+			}
+			s = 0;
+
+			if (ctrlc()) {
+				err = 1;
+				close(fd);
+				goto out;
+			}
+		}
+
+		close(fd);
+		args++;
+	}
+
+out:
+	free(string);
+	free(buf);
+
+	return err;
+}
+
+BAREBOX_CMD_HELP_START(strings)
+BAREBOX_CMD_HELP_TEXT("Display strings from a file")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(strings)
+	.cmd = do_strings,
+	BAREBOX_CMD_DESC("display strings")
+	BAREBOX_CMD_OPTS("FILE...")
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
+	BAREBOX_CMD_HELP(cmd_strings_help)
+BAREBOX_CMD_END
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
