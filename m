Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OgyY1-0001Jh-Kx
	for barebox@lists.infradead.org; Thu, 05 Aug 2010 11:23:43 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Thu,  5 Aug 2010 14:23:18 +0300
Message-Id: <7a1057f8529fef23994321d48ab50c64a362dfeb.1281007209.git.baruch@tkos.co.il>
In-Reply-To: <f375ed4cd64b27529dd717f6f39518eb261e1853.1281007209.git.baruch@tkos.co.il>
References: <f375ed4cd64b27529dd717f6f39518eb261e1853.1281007209.git.baruch@tkos.co.il>
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
Subject: [PATCH 2/2] setser: new command to set serial number on ARM
To: barebox@lists.infradead.org

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 commands/Kconfig  |    8 ++++++++
 commands/Makefile |    1 +
 commands/setser.c |   43 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 52 insertions(+), 0 deletions(-)
 create mode 100644 commands/setser.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 1ffc826..9d11a8b 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -231,6 +231,14 @@ config CMD_BOOTU
 	   compile in the 'bootu' command to start raw (uncompressed)
 	   Linux images
 
+config CMD_SETSER
+	tristate
+	depends on ARM
+	prompt "setser"
+	help
+	  compile in the 'setser' command to set the 64bit serial number to be 
+	  passed to the Linux kernel upon boot
+
 config CMD_LINUX16
 	tristate
 	default y if X86
diff --git a/commands/Makefile b/commands/Makefile
index b99f042..276af85 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
+obj-$(CONFIG_CMD_SETSER)	+= setser.o
 obj-$(CONFIG_CMD_LINUX16)	+= linux16.o
 obj-$(CONFIG_CMD_LOADB)		+= loadb.o xyzModem.o
 obj-$(CONFIG_CMD_LOADY)		+= loadb.o xyzModem.o
diff --git a/commands/setser.c b/commands/setser.c
new file mode 100644
index 0000000..ef4fb0a
--- /dev/null
+++ b/commands/setser.c
@@ -0,0 +1,43 @@
+/*
+ * Copyright (c) 2010 Baruch Siach <baruch@tkos.co.il>,
+ *	Orex Computed Radiography
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
+#include <asm/armlinux.h>
+#include <asm/byteorder.h>
+
+static int do_setser(struct command *cmdtp, int argc, char *argv[])
+{
+	int ret;
+	u8 buf[8];
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	ret = string_to_bin(argv[1], buf, 8);
+	if (ret < 0)
+		return COMMAND_ERROR_USAGE;
+
+	armlinux_set_serial(be64_to_cpup((u64 *)buf));
+
+	return 0;
+}
+
+static const __maybe_unused char cmd_setser_help[] =
+"Usage: setser xx:xx:xx:xx:xx:xx:xx:xx\n"
+"Set 64bit serial number to pass to the Linux kernel\n";
+
+BAREBOX_CMD_START(setser)
+	.cmd	= do_setser,
+	.usage	= "set serial number",
+	BAREBOX_CMD_HELP(cmd_setser_help)
+BAREBOX_CMD_END
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
