Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI9lB-0005s1-EA
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 12:08:34 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 15 Sep 2020 14:08:31 +0200
Message-Id: <20200915120831.20549-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200915120831.20549-1-a.fatoum@pengutronix.de>
References: <20200915120831.20549-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] commands: setenv: allow use with hush shell
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

setenv was so far restricted to the simple shell, because with hush,
users could just do dev.var=VAL for setting variables in the
environment. The hush syntax doesn't allow for setting all kinds of
environment variables though, e.g.

   5c00a000.tamp@5c00a000:reboot-mode.of.param

can't be set with hush, because of the special characters. It could
still be read by using the ${variable} syntax though.

Allow setting these variables by making the setenv command generally
available.  The default is chosen to be 'y', because the command is
deemed small and useful enough to have it there by default.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig   | 13 +++++++++++++
 commands/Makefile  |  2 +-
 commands/setenv.c  |  2 ++
 common/Kconfig     |  1 +
 common/complete.c  |  6 ++++++
 include/complete.h |  1 +
 6 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 608643fceb38..9114d3cb31a5 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -726,6 +726,19 @@ config CMD_SAVEENV
 	  /dev/env0. Note that envfs can only handle files, directories are being
 	  skipped silently.
 
+config CMD_SETENV
+	tristate
+	default y
+	depends on !CONFIG_SHELL_NONE
+	prompt "setenv"
+	help
+	  Set environment variable
+
+	  Usage: setenv NAME [VALUE]
+
+	  Set environment variable NAME to VALUE.
+	  If VALUE is ommitted, then the variable is deleted.
+
 # end Environment commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 01082de44c9b..6cc4997cc546 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -41,7 +41,7 @@ obj-$(CONFIG_CMD_FLASH)		+= flash.o
 obj-$(CONFIG_CMD_MEMINFO)	+= meminfo.o
 obj-$(CONFIG_CMD_TIMEOUT)	+= timeout.o
 obj-$(CONFIG_CMD_READLINE)	+= readline.o
-obj-$(CONFIG_SHELL_SIMPLE)	+= setenv.o
+obj-$(CONFIG_CMD_SETENV)	+= setenv.o
 obj-$(CONFIG_CMD_EXPORT)	+= export.o
 obj-$(CONFIG_CMD_PRINTENV)	+= printenv.o
 obj-$(CONFIG_CMD_SAVEENV)	+= saveenv.o
diff --git a/commands/setenv.c b/commands/setenv.c
index a70a0de4cebc..ad2677065552 100644
--- a/commands/setenv.c
+++ b/commands/setenv.c
@@ -5,6 +5,7 @@
 #include <command.h>
 #include <errno.h>
 #include <environment.h>
+#include <complete.h>
 
 static int do_setenv(int argc, char *argv[])
 {
@@ -34,5 +35,6 @@ BAREBOX_CMD_START(setenv)
 	BAREBOX_CMD_DESC("set environment variable")
 	BAREBOX_CMD_OPTS("NAME [VALUE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
+	BAREBOX_CMD_COMPLETE(env_param_noeval_complete)
 	BAREBOX_CMD_HELP(cmd_setenv_help)
 BAREBOX_CMD_END
diff --git a/common/Kconfig b/common/Kconfig
index a2861bc2314c..d066261f8d83 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -411,6 +411,7 @@ choice
 		select COMMAND_SUPPORT
 		select PARAMETER
 		select STDDEV
+		select CMD_SETENV
 		help
 		  simple shell. No if/then, no return values from commands, no loops
 
diff --git a/common/complete.c b/common/complete.c
index 919e5abc6a62..36e10405c850 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -336,6 +336,12 @@ static int env_param_complete(struct string_list *sl, char *instr, int eval)
 	return 0;
 }
 
+int env_param_noeval_complete(struct string_list *sl, char *instr)
+{
+	return env_param_complete(sl, instr, 0);
+}
+EXPORT_SYMBOL(env_param_noeval_complete);
+
 static int tab_pressed = 0;
 
 void complete_reset(void)
diff --git a/include/complete.h b/include/complete.h
index 763d256bf460..75a92fc86aa0 100644
--- a/include/complete.h
+++ b/include/complete.h
@@ -22,5 +22,6 @@ int devicetree_alias_complete(struct string_list *sl, char *instr);
 int devicetree_nodepath_complete(struct string_list *sl, char *instr);
 int devicetree_complete(struct string_list *sl, char *instr);
 int devicetree_file_complete(struct string_list *sl, char *instr);
+int env_param_noeval_complete(struct string_list *sl, char *instr);
 
 #endif /* __COMPLETE_ */
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
