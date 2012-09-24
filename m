Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TA-0000eU-Th
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:04:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:33 +0200
Message-Id: <1348484692-24993-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
References: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/23] commands: Add clk commands
To: barebox@lists.infradead.org

This adds some basic commands to manupulate clocks on the command
line. Right now we have:

- clk_set_parent
- clk_set_rate
- clk_enable
- clk_disable
- clk_dump

The commands work based on the clock name, otherwise they behave like
the Linux Kernel C functions. clk_dump will dump the clocktree to the
console.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  |    8 ++++
 commands/Makefile |    1 +
 commands/clk.c    |  133 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 142 insertions(+)
 create mode 100644 commands/clk.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 930a9b1..7969937 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -605,6 +605,14 @@ config CMD_USB
 	help
 	  The usb command allows to rescan for USB devices.
 
+config CMD_CLK
+	tristate
+	depends on COMMON_CLK
+	prompt "clock manipulation commands"
+	help
+	  Say yes here to get clk_set_rate, clk_set_parent and clk_dump
+	  commands to manipulate clocks on your system.
+
 menuconfig CMD_WD
 	bool
 	depends on WATCHDOG
diff --git a/commands/Makefile b/commands/Makefile
index 24bf46a..7a36f60 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -74,3 +74,4 @@ obj-$(CONFIG_CMD_BASENAME)	+= basename.o
 obj-$(CONFIG_CMD_DIRNAME)	+= dirname.o
 obj-$(CONFIG_CMD_READLINK)	+= readlink.o
 obj-$(CONFIG_CMD_LN)		+= ln.o
+obj-$(CONFIG_CMD_CLK)		+= clk.o
diff --git a/commands/clk.c b/commands/clk.c
new file mode 100644
index 0000000..5cde3ca
--- /dev/null
+++ b/commands/clk.c
@@ -0,0 +1,133 @@
+#include <common.h>
+#include <command.h>
+#include <getopt.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+static int do_clk_enable(int argc, char *argv[])
+{
+	struct clk *clk;
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	clk = clk_lookup(argv[1]);
+
+	return clk_enable(clk);
+}
+
+BAREBOX_CMD_HELP_START(clk_enable)
+BAREBOX_CMD_HELP_USAGE("clk_enable <clk>\n")
+BAREBOX_CMD_HELP_SHORT("enable <clk>\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(clk_enable)
+	.cmd		= do_clk_enable,
+	.usage		= "enable a clock",
+	BAREBOX_CMD_HELP(cmd_clk_enable_help)
+BAREBOX_CMD_END
+
+static int do_clk_disable(int argc, char *argv[])
+{
+	struct clk *clk;
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	clk = clk_lookup(argv[1]);
+
+	clk_disable(clk);
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(clk_disable)
+BAREBOX_CMD_HELP_USAGE("clk_disable <clk>\n")
+BAREBOX_CMD_HELP_SHORT("disable <clk>\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(clk_disable)
+	.cmd		= do_clk_disable,
+	.usage		= "disable a clock",
+	BAREBOX_CMD_HELP(cmd_clk_disable_help)
+BAREBOX_CMD_END
+
+static int do_clk_set_rate(int argc, char *argv[])
+{
+	struct clk *clk;
+	unsigned long rate;
+
+	if (argc != 3)
+		return COMMAND_ERROR_USAGE;
+
+	clk = clk_lookup(argv[1]);
+	rate = simple_strtoul(argv[2], NULL, 0);
+
+	return clk_set_rate(clk, rate);
+}
+
+BAREBOX_CMD_HELP_START(clk_set_rate)
+BAREBOX_CMD_HELP_USAGE("clk_set_rate <clk> <rate_hz>\n")
+BAREBOX_CMD_HELP_SHORT("Set clock <clk> to <rate>\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(clk_set_rate)
+	.cmd		= do_clk_set_rate,
+	.usage		= "set a clocks rate",
+	BAREBOX_CMD_HELP(cmd_clk_set_rate_help)
+BAREBOX_CMD_END
+
+static int do_clk_dump(int argc, char *argv[])
+{
+	int opt, verbose = 0;
+
+	while ((opt = getopt(argc, argv, "v")) > 0) {
+		switch(opt) {
+		case 'v':
+			verbose = 1;
+			break;
+		default:
+			return -EINVAL;
+
+		}
+	}
+
+	clk_dump(verbose);
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(clk_dump)
+BAREBOX_CMD_HELP_USAGE("clk_dump [-v]\n")
+BAREBOX_CMD_HELP_OPT  ("-v",  "verbose\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(clk_dump)
+	.cmd		= do_clk_dump,
+	.usage		= "show information about registered clocks",
+	BAREBOX_CMD_HELP(cmd_clk_dump_help)
+BAREBOX_CMD_END
+
+static int do_clk_set_parent(int argc, char *argv[])
+{
+	struct clk *clk, *parent;
+
+	if (argc != 3)
+		return COMMAND_ERROR_USAGE;
+
+	clk = clk_lookup(argv[1]);
+	parent = clk_lookup(argv[2]);
+
+	return clk_set_parent(clk, parent);
+}
+
+BAREBOX_CMD_HELP_START(clk_set_parent)
+BAREBOX_CMD_HELP_USAGE("clk_set_parent <clk> <parent>\n")
+BAREBOX_CMD_HELP_SHORT("Set parent of <clk> to <parent>\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(clk_set_parent)
+	.cmd		= do_clk_set_parent,
+	.usage		= "set a parent of a clock",
+	BAREBOX_CMD_HELP(cmd_clk_set_parent_help)
+BAREBOX_CMD_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
