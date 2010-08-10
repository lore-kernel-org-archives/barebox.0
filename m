Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OiiH8-0004mR-HW
	for barebox@lists.infradead.org; Tue, 10 Aug 2010 06:25:28 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Tue, 10 Aug 2010 09:25:04 +0300
Message-Id: <82c0fbf5703ae752521a1bea229a616d4d924583.1281421396.git.baruch@tkos.co.il>
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
Subject: [PATCH 1/2] cmd: add fuse_blow/fuse_sense for the i.MX IIM fusebox
To: barebox@lists.infradead.org

This has only been tested on i.MX25, but should work on other i.MX chips with
IIM.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 commands/Kconfig  |    5 ++
 commands/Makefile |    1 +
 commands/fuse.c   |  161 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 167 insertions(+), 0 deletions(-)
 create mode 100644 commands/fuse.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 9d11a8b..eb3e48e 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -173,6 +173,11 @@ config CMD_MTEST_ALTERNATIVE
 	depends on CMD_MTEST
 	prompt "alternative mtest implementation"
 
+config CMD_FUSE_BLOW
+	tristate
+	depends on ARCH_IMX25 || ARCH_IMX35
+	prompt "fuse_blow"
+
 endmenu
 
 menu "flash                         "
diff --git a/commands/Makefile b/commands/Makefile
index 276af85..aa1c12e 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_CMD_ECHO)		+= echo.o
 obj-$(CONFIG_CMD_MEMORY)	+= mem.o
 obj-$(CONFIG_CMD_LOADS)		+= s_record.o
 obj-$(CONFIG_CMD_MTEST)		+= memtest.o
+obj-$(CONFIG_CMD_FUSE_BLOW)	+= fuse.o
 obj-$(CONFIG_CMD_EDIT)		+= edit.o
 obj-$(CONFIG_CMD_EXEC)		+= exec.o
 obj-$(CONFIG_CMD_SLEEP)		+= sleep.o
diff --git a/commands/fuse.c b/commands/fuse.c
new file mode 100644
index 0000000..1c0ccd6
--- /dev/null
+++ b/commands/fuse.c
@@ -0,0 +1,161 @@
+/*
+ * fuse.c - i.MX IIM fusebox programing and sensing
+ *
+ * Copyright (c) 2010 Baruch Siach <baruch@tkos.co.il>,
+ * 	Orex Computed Radiography
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include <common.h>
+#include <command.h>
+#include <asm/io.h>
+#include <mach/imx-regs.h>
+#include <mach/iim.h>
+
+static int do_fuse_blow(struct command *cmdtp, int argc, char *argv[])
+{
+	unsigned int bank, row, value;
+	int bit, ret = 0;
+	u8 err, stat;
+
+	if (argc != 4)
+		return COMMAND_ERROR_USAGE;
+
+	bank	= simple_strtoul(argv[1], NULL, 0);
+	row	= simple_strtoul(argv[2], NULL, 0);
+	value	= simple_strtoul(argv[3], NULL, 0);
+
+	if (bank > 7) {
+		printf("fuse_blow: invalid bank number\n");
+		return 1;
+	}
+
+	if (row > 0x3ff) {
+		printf("fuse_blow: invalid row offset\n");
+		return 1;
+	}
+
+	if (value > 0xff) {
+		printf("fuse_blow: invalid value\n");
+		return 1;
+	}
+
+	/* clear status and error registers */
+	writeb(3, IMX_IIM_BASE + IIM_STATM);
+	writeb(0xfe, IMX_IIM_BASE + IIM_ERR);
+
+	/* unprotect fuse programing */
+	writeb(0xaa, IMX_IIM_BASE + IIM_PREG_P);
+
+	/* upper half address register */
+	writeb((bank << 3) | (row >> 7), IMX_IIM_BASE + IIM_UA);
+
+	for (bit = 0; bit < 8; bit++) {
+		if (((value >> bit) & 1) == 0)
+			continue;
+
+		/* lower half address register */
+		writeb(((row << 1) | bit), IMX_IIM_BASE + IIM_LA);
+
+		/* start fuse programing */
+		writeb(0x71, IMX_IIM_BASE + IIM_FCTL);
+
+		/* wait for program done */
+		while ((readb(IMX_IIM_BASE + IIM_STAT) & 0x80) != 0)
+			;
+
+		/* clear program done status */
+		stat = readb(IMX_IIM_BASE + IIM_STAT);
+		writeb(stat, IMX_IIM_BASE + IIM_STAT);
+
+		err = readb(IMX_IIM_BASE + IIM_ERR);
+		if (err) {
+			printf("fuse_blow: bit %d program error (0x%02x)\n",
+					bit, err);
+			ret = 1;
+			goto out;
+		}
+	}
+
+out:
+	/* protect fuse programing */
+	writeb(0, IMX_IIM_BASE + IIM_PREG_P);
+	return ret;
+}
+
+static const __maybe_unused char cmd_fuse_blow_help[] =
+"Usage: fuse_blow <bank> <row> <value>\n"
+"Blow fuses in <bank> <row> to match <value>\n";
+
+BAREBOX_CMD_START(fuse_blow)
+	.cmd	= do_fuse_blow,
+	.usage	= "program fuse row",
+	BAREBOX_CMD_HELP(cmd_fuse_blow_help)
+BAREBOX_CMD_END
+
+static int do_fuse_sense(struct command *cmdtp, int argc, char *argv[])
+{
+	unsigned int bank, row;
+	u8 err, stat;
+
+	if (argc != 3)
+		return COMMAND_ERROR_USAGE;
+
+	bank	= simple_strtoul(argv[1], NULL, 0);
+	row	= simple_strtoul(argv[2], NULL, 0);
+
+	if (bank > 7) {
+		printf("fuse_sense: invalid bank number\n");
+		return 1;
+	}
+
+	if (row > 0x3ff) {
+		printf("fuse_sense: invalid row offset\n");
+		return 1;
+	}
+
+	/* clear status and error registers */
+	writeb(3, IMX_IIM_BASE + IIM_STATM);
+	writeb(0xfe, IMX_IIM_BASE + IIM_ERR);
+
+	/* upper and lower address halves */
+	writeb((bank << 3) | (row >> 7), IMX_IIM_BASE + IIM_UA);
+	writeb((row << 1) & 0xf8, IMX_IIM_BASE + IIM_LA);
+
+	/* start fuse sensing */
+	writeb(0x08, IMX_IIM_BASE + IIM_FCTL);
+
+	/* wait for sense done */
+	while ((readb(IMX_IIM_BASE + IIM_STAT) & 0x80) != 0)
+		;
+
+	stat =  readb(IMX_IIM_BASE + IIM_STAT);
+	writeb(stat, IMX_IIM_BASE + IIM_STAT);
+
+	err = readb(IMX_IIM_BASE + IIM_ERR);
+	if (err) {
+		printf("fuse_sense: sense error (0x%02x)\n", err);
+		return 1;
+	}
+
+	printf("bank %u row 0x%02x: 0x%02x\n", bank, row,
+			readb(IMX_IIM_BASE + IIM_SDAT));
+
+	return 0;
+}
+
+static const __maybe_unused char cmd_fuse_sense_help[] =
+"Usage: fuse_sense <bank> <row>\n"
+"Sense the fuses row at <bank> <row>\n";
+
+BAREBOX_CMD_START(fuse_sense)
+	.cmd	= do_fuse_sense,
+	.usage	= "sense fuse row",
+	BAREBOX_CMD_HELP(cmd_fuse_sense_help)
+BAREBOX_CMD_END
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
