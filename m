Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s1.linux-source.de ([2a03:4000:2:2ac::2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XQF3e-0001zF-Tc
 for barebox@lists.infradead.org; Sat, 06 Sep 2014 12:25:36 +0000
Received: from localhost (localhost [127.0.0.1])
 by s1.linux-source.de (Postfix) with ESMTP id CEAF11805B3
 for <barebox@lists.infradead.org>; Sat,  6 Sep 2014 14:25:06 +0200 (CEST)
Received: from s1.linux-source.de ([127.0.0.1])
 by localhost (v22010076022355399.yourvserver.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id UFHrQkt5trp4 for <barebox@lists.infradead.org>;
 Sat,  6 Sep 2014 14:25:06 +0200 (CEST)
Received: from [192.168.1.127]
 (HSI-KBW-109-193-020-184.hsi7.kabel-badenwuerttemberg.de [109.193.20.184])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by s1.linux-source.de (Postfix) with ESMTPSA id 4C3A117FBDF
 for <barebox@lists.infradead.org>; Sat,  6 Sep 2014 14:25:06 +0200 (CEST)
Message-ID: <540AFD24.1000802@linux-source.de>
Date: Sat, 06 Sep 2014 14:25:08 +0200
From: Sebastian Block <basti@linux-source.de>
MIME-Version: 1.0
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
Subject: [PATCH] commands: add lodvar - load variable from file content
To: barebox@lists.infradead.org

This adds a command to load a variable from file content.
It is a work-a-round for "var=$(cat file)".

Signed-off-by: Sebastian Block <basti@linux-source.de>
---
 commands/Kconfig   |  7 +++++
 commands/Makefile  |  1 +
 commands/loadvar.c | 90 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 98 insertions(+)
 create mode 100644 commands/loadvar.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 3a49baf..c6b4e03 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -752,6 +752,13 @@ config CMD_SAVEENV
 	  /dev/env0. Note that envfs can only handle files, directories are being
 	  skipped silently.
 
+config CMD_LOADVAR
+	tristate
+	prompt "loadvar"
+	help
+	  Load variables from file contents.
+	  Usage: loadvar VAR FILE
+
 # end Environment commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 52b6137..6553154 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -103,3 +103,4 @@ obj-$(CONFIG_CMD_LSPCI)		+= lspci.o
 obj-$(CONFIG_CMD_IMD)		+= imd.o
 obj-$(CONFIG_CMD_HWCLOCK)	+= hwclock.o
 obj-$(CONFIG_CMD_USBGADGET)	+= usbgadget.o
+obj-$(CONFIG_CMD_LOADVAR)	+= loadvar.o
diff --git a/commands/loadvar.c b/commands/loadvar.c
new file mode 100644
index 0000000..f0b38d2
--- /dev/null
+++ b/commands/loadvar.c
@@ -0,0 +1,90 @@
+/*
+ * Copyright (c) 2014 Sebastian Block <basti@linux-source.de>
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
+#include <command.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <linux/ctype.h>
+#include <linux/stat.h>
+#include <errno.h>
+#include <xfuncs.h>
+#include <malloc.h>
+#include <environment.h>
+
+static int do_loadvar(int argc, char *argv[])
+{
+	int ret;
+	int fd;
+	char *buf;
+	int err = 0;
+	struct stat s;
+
+	if (argc < 3) {
+		perror("loadvar");
+		return 1;
+	}
+
+	ret = stat(argv[2], &s);
+	if (ret) {
+		perror("loadvar - could not stat file");
+		return 1;
+	}
+
+	buf = xmalloc(s.st_size + 1);
+
+	fd = open(argv[2], O_RDONLY);
+	if (fd < 0) {
+		err = 1;
+		printf("could not open %s: %s\n", argv[2], errno_str());
+		goto out;
+	}
+
+	ret = read(fd, buf, s.st_size);
+	if (ret < 0) {
+		err = 1;
+		printf("could not read %s: %s\n", argv[2], errno_str());
+		goto out;
+	}
+	close(fd);
+
+	buf[s.st_size] = '\0'; /* add string termination */
+	
+	ret = setenv(argv[1], buf);
+	if (ret) {
+		printf("could not set var %s with value %s\n", argv[1], buf);
+		err = 1;
+		goto out;
+	}
+out:
+	free(buf);
+
+	return err;
+}
+
+BAREBOX_CMD_HELP_START(loadvar)
+BAREBOX_CMD_HELP_TEXT("Load content of FILE into VAR.")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(loadvar)
+	.cmd		= do_loadvar,
+	BAREBOX_CMD_DESC("load file content to var")
+	BAREBOX_CMD_OPTS("VAR FILE")
+	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
+	BAREBOX_CMD_HELP(cmd_loadvar_help)
+BAREBOX_CMD_END
+
-- 
1.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
