Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-f182.google.com ([209.85.192.182])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WitlO-0004z6-Oj
 for barebox@lists.infradead.org; Fri, 09 May 2014 22:59:35 +0000
Received: by mail-pd0-f182.google.com with SMTP id v10so4171779pde.41
 for <barebox@lists.infradead.org>; Fri, 09 May 2014 15:59:12 -0700 (PDT)
Received: from [172.16.16.185] ([184.71.143.130])
 by mx.google.com with ESMTPSA id tg9sm9509954pbc.29.2014.05.09.15.59.10
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Fri, 09 May 2014 15:59:11 -0700 (PDT)
Message-ID: <536D5DBF.7040708@exegin.com>
Date: Fri, 09 May 2014 15:59:11 -0700
From: Owen Kirby <osk@exegin.com>
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
Subject: [PATCH] Add readmem command to read values out of memory.
To: barebox@lists.infradead.org

From 299ffc6a961c807b118605bdd9e736c7b096fec9 Mon Sep 17 00:00:00 2001
From: Owen Kirby <osk@exegin.com>
Date: Fri, 9 May 2014 15:14:30 -0700
Subject: [PATCH] Add readmem command to read values out of memory.

I was trying to do something conditionally from a shell script based on the type
of image present in flash, and finding it rather cumbersome to do. So I added a
command that reads values out of memory and into shell variables as hexadecimal.

Signed-off-by: Owen Kirby <osk@exegin.com>
---
 commands/Kconfig   |    8 ++++
 commands/Makefile  |    1 +
 commands/readmem.c |  103 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 112 insertions(+)
 create mode 100644 commands/readmem.c

diff --git a/commands/Kconfig b/commands/Kconfig
index cc014f3..52fa0df 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -367,6 +367,14 @@ config CMD_MEMSET
 	  the memset command allows to set regions of memory and files to
 	  a specific value.
 
+config CMD_READMEM
+	tristate
+	default y
+	select CMD_MEMORY
+	prompt "readmem"
+	help
+	  the readmem command reads values from memory into a shell variable.
+
 config CMD_CRC
 	tristate
 	select CRC32
diff --git a/commands/Makefile b/commands/Makefile
index e463031..a01e642 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -13,6 +13,7 @@ obj-$(CONFIG_CMD_MW)		+= mw.o
 obj-$(CONFIG_CMD_MEMCMP)	+= memcmp.o
 obj-$(CONFIG_CMD_MEMCPY)	+= memcpy.o
 obj-$(CONFIG_CMD_MEMSET)	+= memset.o
+obj-$(CONFIG_CMD_READMEM)	+= readmem.o
 obj-$(CONFIG_CMD_EDIT)		+= edit.o
 obj-$(CONFIG_CMD_EXEC)		+= exec.o
 obj-$(CONFIG_CMD_SLEEP)		+= sleep.o
diff --git a/commands/readmem.c b/commands/readmem.c
new file mode 100644
index 0000000..7070637
--- /dev/null
+++ b/commands/readmem.c
@@ -0,0 +1,103 @@
+/*
+ * (C) Copyright 2014
+ * Owen Kirby, Exegin Technologies Limited, osk@exegin.com
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
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
+#include <init.h>
+#include <driver.h>
+#include <malloc.h>
+#include <errno.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <getopt.h>
+#include <linux/stat.h>
+#include <xfuncs.h>
+#include <environment.h>
+
+extern char *mem_rw_buf;
+
+static int do_readmem(int argc, char *argv[])
+{
+	loff_t src;
+	int	ret = 0;
+	int fd;
+	char *filename = "/dev/mem";
+	char *varname;
+	int mode = O_RWSIZE_4;
+	int swab = 0;
+
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
+
+	if (mem_parse_options(argc, argv, "bwls:x", &mode, &filename, NULL,
+			&swab) < 0)
+		return 1;
+
+	if (optind + 2 > argc)
+		return COMMAND_ERROR_USAGE;
+
+	src = strtoull_suffix(argv[optind], NULL, 0);
+	varname = argv[optind+1];
+	fd = open_and_lseek(filename, mode | O_RDONLY, src);
+	if (fd < 0)
+		return 1;
+
+	/* Read the magic var. */
+	if (read(fd, mem_rw_buf, mode >> O_RWSIZE_SHIFT) < 0) {
+		perror("read");
+		ret = 1;
+	}
+	/* Set the environment variable. */
+	else if (mode == O_RWSIZE_4) {
+		u32 res = *(uint *)mem_rw_buf;
+		char buf[sizeof(res)*2+1];
+		sprintf(buf, "%08x", swab ? __swab32(res) : res);
+		setenv(varname, buf);
+	} else if (mode == O_RWSIZE_2) {
+		u16 res = *(ushort *)mem_rw_buf;
+		char buf[sizeof(res)*2+1];
+		sprintf(buf, "%04x", swab ? __swab16(res) : res);
+		setenv(varname, buf);
+	} else {
+		char buf[sizeof(u_char)*2+1];
+		sprintf(buf, "%02x", *(u_char *)mem_rw_buf);
+		setenv(varname, buf);
+	}
+	close(fd);
+	return ret;
+}
+
+static const __maybe_unused char cmd_readmem_help[] =
+"Usage: readmem [OPTIONS] <src> VAR\n"
+"\n"
+"options:\n"
+"  -s <file>   source file (default /dev/mem)\n"
+"  -b          read a byte\n"
+"  -w          read a halfword (16bit)\n"
+"  -l          read a word (32bit)\n"
+"  -x          swap bytes\n"
+"\n"
+"read a magic value from <src> into variable VAR.\n";
+
+BAREBOX_CMD_START(readmem)
+	.cmd		= do_readmem,
+	.usage		= "read magic values from memory",
+	BAREBOX_CMD_HELP(cmd_readmem_help)
+BAREBOX_CMD_END
+
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
