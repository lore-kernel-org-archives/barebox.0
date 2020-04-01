Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZiM-0001a9-7t
 for barebox@lists.infradead.org; Wed, 01 Apr 2020 09:31:17 +0000
Received: from geraet.fritz.box (muedsl-82-207-203-222.citykom.de
 [82.207.203.222]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 931181C000F
 for <barebox@lists.infradead.org>; Wed,  1 Apr 2020 09:31:12 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed,  1 Apr 2020 11:31:04 +0200
Message-Id: <20200401093104.959691-5-ahmad@a3f.at>
In-Reply-To: <20200401093104.959691-1-ahmad@a3f.at>
References: <20200401093104.959691-1-ahmad@a3f.at>
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
Subject: [RFC PATCH 4/4] commands: implement except test command
To: barebox@lists.infradead.org

This command is not meant for production, but is a useful tool to test
software and hardware exception handling in the works, especially when
porting to new platforms.

Reviewed-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/Kconfig  |   5 ++
 commands/Makefile |   1 +
 commands/except.c | 130 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 136 insertions(+)
 create mode 100644 commands/except.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 7784966282ac..bb415c2d7edd 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2196,6 +2196,11 @@ config CMD_UBSAN
 	  This is a test command for the undefined behavior sanitizer.
 	  It triggers various undefined behavior, and detect it.
 
+config CMD_EXCEPT
+	tristate "except"
+	help
+	  This is a test command for the barebox exceptions facility.
+
 # end Miscellaneous commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 01082de44c9b..65167ca92081 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -128,5 +128,6 @@ obj-$(CONFIG_CMD_NAND_BITFLIP)	+= nand-bitflip.o
 obj-$(CONFIG_CMD_SEED)		+= seed.o
 obj-$(CONFIG_CMD_IP_ROUTE_GET)  += ip-route-get.o
 obj-$(CONFIG_CMD_UBSAN)		+= ubsan.o
+obj-$(CONFIG_CMD_EXCEPT)	+= except.o
 
 UBSAN_SANITIZE_ubsan.o := y
diff --git a/commands/except.c b/commands/except.c
new file mode 100644
index 000000000000..e083cd5a1367
--- /dev/null
+++ b/commands/except.c
@@ -0,0 +1,130 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <common.h>
+#include <command.h>
+#include <exceptions.h>
+
+struct test_except {
+	const char *cmd;
+	void(*fun)(void);
+};
+
+static noinline void throw_here(int exception)
+{
+	pr_info("\tThrowing %d\n", exception);
+	THROW(exception);
+}
+
+
+static void test_segfault(void)
+{
+	long * volatile p = NULL;
+	u32 value;
+
+	TRY {
+		value = __raw_readl(p);
+	} CATCH (DataAbortException) {
+		value = 0x42;
+	}
+
+	ENDTRY;
+
+	pr_info("value == 0x%x\n", value);
+}
+
+static void test_catch(void)
+{
+	TRY {
+		pr_info("Try\n");
+		throw_here(RuntimeError);
+	} CATCH(RuntimeError) {
+		pr_info("Catch\n");
+	}
+
+	ENDTRY;
+}
+
+static void test_nothrow(void)
+{
+	TRY {
+		pr_info("Try\n");
+	} CATCH_ALL {
+		pr_info("Catch\n");
+	}
+
+	ENDTRY;
+}
+
+static void test_nocatch(void)
+{
+	TRY {
+		pr_info("Try\n");
+		THROW(RuntimeError);
+	} CATCH(LogicError) {
+		pr_info("Catch\n");
+	}
+
+	ENDTRY;
+}
+
+static void test_finally(void)
+{
+	TRY {
+		pr_info("Throw\n");
+		throw_here(RuntimeError);
+	} CATCH (RuntimeError) {
+		pr_info("Catch\n");
+	} FINALLY {
+		pr_info("Finally\n");
+	}
+
+	ENDTRY;
+}
+
+static void test_throw_notry(void)
+{
+	throw_here(RuntimeError);
+}
+
+static const struct test_except test_except_array[] = {
+	{ .cmd = "segfault", .fun = test_segfault },
+	{ .cmd = "catch", .fun = test_catch },
+	{ .cmd = "nothrow", .fun = test_nothrow },
+	{ .cmd = "nocatch", .fun = test_nocatch },
+	{ .cmd = "finally", .fun = test_finally },
+	{ .cmd = "notry", .fun = test_throw_notry },
+	{ /* sentinel */ }
+};
+
+static int do_except(int argc, char *argv[])
+{
+	const struct test_except *test;
+	const char *arg = argv[1];
+
+	if (argc == 1)
+		arg = "segfault";
+	else if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	for (test = test_except_array; test->cmd; test++) {
+		if (strcmp(test->cmd, arg) == 0) {
+			test->fun();
+			return 0;
+		}
+	}
+
+	return COMMAND_ERROR_USAGE;
+}
+
+BAREBOX_CMD_HELP_START(except)
+BAREBOX_CMD_HELP_TEXT("test throwing and catching exceptions")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Functions:")
+BAREBOX_CMD_HELP_TEXT("notry catch nothrow nocatch finally segfault")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(except)
+	.cmd		= do_except,
+	BAREBOX_CMD_DESC("test throwing and catching exceptions")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_except_help)
+BAREBOX_CMD_END
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
