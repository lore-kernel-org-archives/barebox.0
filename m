Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QoVkI-00052F-QE
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 07:20:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Aug 2011 09:19:59 +0200
Message-Id: <1312355999-19496-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1312355999-19496-1-git-send-email-s.hauer@pengutronix.de>
References: <1312355999-19496-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] Add 'time' command to measure execution time of a command
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  |   10 +++++++++
 commands/Makefile |    1 +
 commands/time.c   |   57 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 68 insertions(+), 0 deletions(-)
 create mode 100644 commands/time.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 5700dc2..e922260 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -97,6 +97,16 @@ endchoice
 
 endif
 
+config CMD_TIME
+	bool "time"
+	  help
+	  Just like the unix time command this command allows to measure the
+	  execution time of a command. Note: barebox does not use interrupts,
+	  so the system timer can overrun during the execution of the command
+	  resulting in incorrect results. The timer gets updated in the function
+	  checking for ctrl-c, so the time command can be used with commands
+	  which are interruptible with ctrl-c.
+
 endmenu
 
 menu "file commands                 "
diff --git a/commands/Makefile b/commands/Makefile
index 8ee4aba..7c88b48 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -57,3 +57,4 @@ obj-$(CONFIG_CMD_LOGIN)		+= login.o
 obj-$(CONFIG_CMD_LED)		+= led.o
 obj-$(CONFIG_CMD_LED_TRIGGER)	+= trigger.o
 obj-$(CONFIG_CMD_USB)		+= usb.o
+obj-$(CONFIG_CMD_TIME)		+= time.o
diff --git a/commands/time.c b/commands/time.c
new file mode 100644
index 0000000..9a76945
--- /dev/null
+++ b/commands/time.c
@@ -0,0 +1,57 @@
+#include <common.h>
+#include <command.h>
+#include <clock.h>
+#include <asm-generic/div64.h>
+#include <malloc.h>
+
+static int do_time(struct command *cmdtp, int argc, char *argv[])
+{
+	int i;
+	unsigned char *buf;
+	u64 start, end, diff64;
+	unsigned long diff;
+	int len = 0;
+
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
+
+	for (i = 1; i < argc; i++)
+		len += strlen(argv[i]) + 1;
+
+	buf = xzalloc(len);
+
+	for (i = 1; i < argc; i++) {
+		strcat(buf, argv[i]);
+		strcat(buf, " ");
+	}
+
+	start = get_time_ns();
+
+	run_command(buf, 0);
+
+	end = get_time_ns();
+
+	diff64 = end - start;
+
+	do_div(diff64, 1000000);
+
+	diff = diff64;
+
+	printf("time: %ldms\n", diff);
+
+	free(buf);
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(time)
+BAREBOX_CMD_HELP_USAGE("time <command>\n")
+BAREBOX_CMD_HELP_SHORT("note: This command depends on <command> being interruptible,\n")
+BAREBOX_CMD_HELP_SHORT("Otherwise the timer may overrun resulting in incorrect results\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(time)
+	.cmd		= do_time,
+	.usage		= "measure execution time of a command",
+	BAREBOX_CMD_HELP(cmd_time_help)
+BAREBOX_CMD_END
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
