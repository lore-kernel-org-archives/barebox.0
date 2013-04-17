Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USQhk-0002KS-1g
 for barebox@lists.infradead.org; Wed, 17 Apr 2013 11:39:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Apr 2013 13:39:08 +0200
Message-Id: <1366198748-22717-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1366198748-22717-1-git-send-email-s.hauer@pengutronix.de>
References: <1366198748-22717-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] Add memory modify command (mm)
To: barebox@lists.infradead.org

As of now we have no way to manipulate individual bits of registers on the
command line. This introduces a memory modify command which allows this. It
has the syntax:

mm [OPTIONS] <adr> <val> <mask>

With [OPTIONS] being the usual memory command options (-b, -w, -l, -d <file>).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  |   8 ++++
 commands/Makefile |   1 +
 commands/mm.c     | 117 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 126 insertions(+)
 create mode 100644 commands/mm.c

diff --git a/commands/Kconfig b/commands/Kconfig
index fe171d8..e6168ce 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -320,6 +320,14 @@ config CMD_MW
 	help
 	  the mw command allows to write to memory locations and files.
 
+config CMD_MM
+	tristate
+	select CMD_MEMORY
+	prompt "memory modify (mm)"
+	help
+	  the mm command allows to read-modify-write registers by doing:
+	  reg = (reg & ~mask) | (val & mask)
+
 config CMD_MEMCMP
 	tristate
 	default y
diff --git a/commands/Makefile b/commands/Makefile
index beec8e9..953ecc2 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_CMD_LOADS)		+= loads.o
 obj-$(CONFIG_CMD_ECHO)		+= echo.o
 obj-$(CONFIG_CMD_MEMORY)	+= mem.o
 obj-$(CONFIG_CMD_MD)		+= md.o
+obj-$(CONFIG_CMD_MM)		+= mm.o
 obj-$(CONFIG_CMD_MW)		+= mw.o
 obj-$(CONFIG_CMD_MEMCMP)	+= memcmp.o
 obj-$(CONFIG_CMD_MEMCPY)	+= memcpy.o
diff --git a/commands/mm.c b/commands/mm.c
new file mode 100644
index 0000000..f51fd27
--- /dev/null
+++ b/commands/mm.c
@@ -0,0 +1,117 @@
+/*
+ * Copyright (c) 2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+#include <init.h>
+#include <driver.h>
+#include <malloc.h>
+#include <errno.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <getopt.h>
+#include <linux/stat.h>
+#include <xfuncs.h>
+
+static int do_mem_mm(int argc, char *argv[])
+{
+	int ret = 0;
+	int fd;
+	char *filename = "/dev/mem";
+	int mode = O_RWSIZE_4;
+	loff_t adr;
+	int swab = 0;
+	u8 val8;
+	u16 val16;
+	u32 val32;
+	u32 value, mask;
+
+	if (mem_parse_options(argc, argv, "bwld:", &mode, NULL, &filename,
+			&swab) < 0)
+		return 1;
+
+	if (optind + 2 >= argc)
+		return COMMAND_ERROR_USAGE;
+
+	adr = strtoull_suffix(argv[optind++], NULL, 0);
+	value = simple_strtoul(argv[optind++], NULL, 0);
+	mask = simple_strtoul(argv[optind++], NULL, 0);
+
+	fd = open_and_lseek(filename, mode | O_RDWR, adr);
+	if (fd < 0)
+		return 1;
+
+	switch (mode) {
+	case O_RWSIZE_1:
+		ret = pread(fd, &val8, 1, adr);
+		if (ret < 0)
+			goto out_read;
+		val8 &= ~mask;
+		val8 |= (value & mask);
+		ret = pwrite(fd, &val8, 1, adr);
+		if (ret < 0)
+			goto out_write;
+		break;
+	case O_RWSIZE_2:
+		ret = pread(fd, &val16, 2, adr);
+		if (ret < 0)
+			goto out_read;
+		val16 &= ~mask;
+		val16 |= (value & mask);
+		ret = pwrite(fd, &val16, 2, adr);
+		if (ret < 0)
+			goto out_write;
+		break;
+	case O_RWSIZE_4:
+		if (ret < 0)
+			goto out_read;
+		ret = pread(fd, &val32, 4, adr);
+		val32 &= ~mask;
+		val32 |= (value & mask);
+		ret = pwrite(fd, &val32, 4, adr);
+		if (ret < 0)
+			goto out_write;
+		break;
+	}
+
+	close(fd);
+
+	return 0;
+
+out_read:
+	perror("read");
+	close(fd);
+	return 1;
+
+out_write:
+	perror("write");
+	close(fd);
+	return 1;
+}
+
+static const __maybe_unused char cmd_mm_help[] =
+"Usage: mm [OPTIONS] <adr> <val> <mask>\n"
+"set/clear bits specified with <mask> in <adr> to <value>\n"
+"options:\n"
+"  -b, -w, -l	use byte, halfword, or word accesses\n"
+"  -d <file>	write file (default /dev/mem)\n";
+
+BAREBOX_CMD_START(mm)
+	.cmd		= do_mem_mm,
+	.usage		= "memory modify write with mask",
+	BAREBOX_CMD_HELP(cmd_mm_help)
+BAREBOX_CMD_END
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
