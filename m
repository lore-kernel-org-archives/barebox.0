Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PTyVF-0000ML-5f
	for barebox@lists.infradead.org; Sat, 18 Dec 2010 15:15:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 18 Dec 2010 16:15:08 +0100
Message-Id: <1292685309-32326-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1292685309-32326-1-git-send-email-s.hauer@pengutronix.de>
References: <1292685309-32326-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] LED: Add trigger command
To: barebox@lists.infradead.org

This patch allows controlling LED triggers vie the command line.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig   |    8 ++++
 commands/Makefile  |    1 +
 commands/trigger.c |  106 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 115 insertions(+), 0 deletions(-)
 create mode 100644 commands/trigger.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 64e08bb..f137f47 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -379,4 +379,12 @@ config CMD_LED
 	help
 	  include led command to control LEDs
 
+config CMD_LED_TRIGGER
+	bool
+	depends on LED_TRIGGERS
+	prompt "trigger command"
+	help
+	  The trigger command allows to control LED triggers from the command
+	  line.
+
 endmenu
diff --git a/commands/Makefile b/commands/Makefile
index 0820483..c89adcf 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -54,3 +54,4 @@ obj-$(CONFIG_CMD_MENU)		+= menu.o
 obj-$(CONFIG_CMD_PASSWD)	+= passwd.o
 obj-$(CONFIG_CMD_LOGIN)		+= login.o
 obj-$(CONFIG_CMD_LED)		+= led.o
+obj-$(CONFIG_CMD_LED_TRIGGER)	+= trigger.o
diff --git a/commands/trigger.c b/commands/trigger.c
new file mode 100644
index 0000000..51d4ce3
--- /dev/null
+++ b/commands/trigger.c
@@ -0,0 +1,106 @@
+/*
+ * LED trigger command support for barebox
+ *
+ * (C) Copyright 2010 Sascha Hauer, Pengutronix
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <led.h>
+#include <command.h>
+#include <getopt.h>
+#include <errno.h>
+
+#define LED_COMMAND_SET_TRIGGER		1
+#define LED_COMMAND_SHOW_INFO		2
+#define	LED_COMMAND_DISABLE_TRIGGER	3
+
+static char *trigger_names[] = {
+	[led_trigger_panic] = "panic",
+	[led_trigger_heartbeat] = "heartbeat",
+	[led_trigger_net_rx] = "net rx",
+	[led_trigger_net_tx] = "net tx",
+	[led_trigger_net_txrx] = "net",
+};
+
+static int do_trigger(struct command *cmdtp, int argc, char *argv[])
+{
+	struct led *led;
+	int i, opt, ret = 0;
+	int cmd = LED_COMMAND_SHOW_INFO;
+	unsigned long trigger = 0, ledno;
+
+	while((opt = getopt(argc, argv, "t:d:")) > 0) {
+		switch(opt) {
+		case 't':
+			trigger = simple_strtoul(optarg, NULL, 0);
+			cmd = LED_COMMAND_SET_TRIGGER;
+			break;
+		case 'd':
+			trigger = simple_strtoul(optarg, NULL, 0);
+			cmd = LED_COMMAND_DISABLE_TRIGGER;
+		}
+	}
+
+	switch (cmd) {
+	case LED_COMMAND_SHOW_INFO:
+		for (i = 0; i < led_trigger_max; i++) {
+			int led = led_get_trigger(i);
+			printf("%d: %s", i, trigger_names[i]);
+			if (led >= 0)
+				printf(" (led %d)", led);
+			printf("\n");
+		}
+		break;
+
+	case LED_COMMAND_DISABLE_TRIGGER:
+		led_set_trigger(trigger, NULL);
+		return 0;
+	case LED_COMMAND_SET_TRIGGER:
+		if (argc - optind != 1)
+			return COMMAND_ERROR_USAGE;
+		ledno = simple_strtoul(argv[optind], NULL, 0);
+		led = led_by_number(ledno);
+
+		if (!led) {
+			printf("no such led: %d\n", ledno);
+			return 1;
+		}
+
+		ret = led_set_trigger(trigger, led);
+		break;
+	}
+
+	return ret ? 1 : 0;
+}
+
+BAREBOX_CMD_HELP_START(trigger)
+BAREBOX_CMD_HELP_USAGE("trigger [OPTIONS]\n")
+BAREBOX_CMD_HELP_SHORT("control a LED trigger. Without options the currently assigned triggers are shown.\n")
+BAREBOX_CMD_HELP_OPT  ("-t <trigger> <led>",  "set a trigger for a led\n")
+BAREBOX_CMD_HELP_OPT  ("-d <trigger>",  "disable a trigger\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(trigger)
+	.cmd		= do_trigger,
+	.usage		= "handle LED triggers",
+	BAREBOX_CMD_HELP(cmd_trigger_help)
+BAREBOX_CMD_END
+
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
