Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PUcRu-0000MS-H7
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 09:54:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Dec 2010 10:53:49 +0100
Message-Id: <1292838831-25038-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1292838831-25038-1-git-send-email-s.hauer@pengutronix.de>
References: <1292838831-25038-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] LED: Add led command
To: barebox <barebox@lists.infradead.org>

This patch allows controlling LEDs via the command line.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  |    7 ++++
 commands/Makefile |    1 +
 commands/led.c    |   90 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 98 insertions(+), 0 deletions(-)
 create mode 100644 commands/led.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 5416073..64e08bb 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -372,4 +372,11 @@ config CMD_I2C
 	  include i2c_probe, i2c_read and i2c_write commands to communicate
 	  on i2c bus.
 
+config CMD_LED
+	bool
+	depends on LED
+	prompt "led command"
+	help
+	  include led command to control LEDs
+
 endmenu
diff --git a/commands/Makefile b/commands/Makefile
index ca30b5f..0820483 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -53,3 +53,4 @@ obj-$(CONFIG_CMD_UBI)		+= ubi.o
 obj-$(CONFIG_CMD_MENU)		+= menu.o
 obj-$(CONFIG_CMD_PASSWD)	+= passwd.o
 obj-$(CONFIG_CMD_LOGIN)		+= login.o
+obj-$(CONFIG_CMD_LED)		+= led.o
diff --git a/commands/led.c b/commands/led.c
new file mode 100644
index 0000000..360ce7c
--- /dev/null
+++ b/commands/led.c
@@ -0,0 +1,90 @@
+/*
+ * LED command support for barebox
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
+static int do_led(struct command *cmdtp, int argc, char *argv[])
+{
+	unsigned long value;
+	struct led *led;
+	int ret;
+
+	if (argc == 1) {
+		int i = 0;
+
+		printf("registered LEDs:\n");
+
+		while ((led = led_by_number(i))) {
+			printf("%-2d: name: %-10s max_value: %d\n",
+					i, led->name ? led->name : "none",
+					led->max_value);
+			i++;
+		}
+		return 0;
+	}
+
+	if (argc != 3)
+		return COMMAND_ERROR_USAGE;
+
+	led = led_by_name_or_number(argv[1]);
+	if (!led) {
+		printf("no such LED: %s\n", argv[1]);
+		return 1;
+	}
+
+	value = simple_strtoul(argv[optind + 1], NULL, 0);
+
+	ret = led_set(led, value);
+	if (ret < 0) {
+		perror("led");
+		return 1;
+	}
+
+	return 0;
+}
+
+/**
+ * @page led_command
+
+The exact meaning of <value> is unspecified. It can be a color in case of rgb
+LEDs or a brightness if this is controllable. In most cases only 1 for enabled
+is allowed.
+
+*/
+
+BAREBOX_CMD_HELP_START(led)
+BAREBOX_CMD_HELP_USAGE("led <led> <value>\n")
+BAREBOX_CMD_HELP_SHORT("control the value of a LED. a value of 0 means disabled\n")
+BAREBOX_CMD_HELP_SHORT("without arguments the available LEDs are listed\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(led)
+	.cmd		= do_led,
+	.usage		= "led <led> <value>",
+	BAREBOX_CMD_HELP(cmd_led_help)
+BAREBOX_CMD_END
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
