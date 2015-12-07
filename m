Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x231.google.com ([2607:f8b0:400e:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a5qca-0003w6-5Q
 for barebox@lists.infradead.org; Mon, 07 Dec 2015 07:54:11 +0000
Received: by pacwq6 with SMTP id wq6so43720040pac.1
 for <barebox@lists.infradead.org>; Sun, 06 Dec 2015 23:53:46 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  6 Dec 2015 23:52:41 -0800
Message-Id: <1449474763-14099-5-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1449474763-14099-1-git-send-email-andrew.smirnov@gmail.com>
References: <1449474763-14099-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/7] commands: Add 'hwmon' command
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add 'hwmon' command which allows to display the readings of all
hardware monitoring sensors registered with Barebox.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/Kconfig  |  8 ++++++++
 commands/Makefile |  1 +
 commands/hwmon.c  | 47 +++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 56 insertions(+)
 create mode 100644 commands/hwmon.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 1743670..a338efd 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1799,6 +1799,14 @@ config CMD_HWCLOCK
 	help
 	  The hwclock command allows to query or set the hardware clock (RTC).

+config CMD_HWMON
+	bool
+	depends on HWMON
+	prompt "hwmon command"
+	default y
+	help
+	  The hwmon command allows to query hardware sensors.
+
 config CMD_I2C
 	bool
 	depends on I2C
diff --git a/commands/Makefile b/commands/Makefile
index d985341..6c5158c 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -105,6 +105,7 @@ obj-$(CONFIG_CMD_REGULATOR)	+= regulator.o
 obj-$(CONFIG_CMD_LSPCI)		+= lspci.o
 obj-$(CONFIG_CMD_IMD)		+= imd.o
 obj-$(CONFIG_CMD_HWCLOCK)	+= hwclock.o
+obj-$(CONFIG_CMD_HWMON)		+= hwmon.o
 obj-$(CONFIG_CMD_USBGADGET)	+= usbgadget.o
 obj-$(CONFIG_CMD_FIRMWARELOAD)	+= firmwareload.o
 obj-$(CONFIG_CMD_CMP)		+= cmp.o
diff --git a/commands/hwmon.c b/commands/hwmon.c
new file mode 100644
index 0000000..84c0c70
--- /dev/null
+++ b/commands/hwmon.c
@@ -0,0 +1,47 @@
+#include <common.h>
+#include <command.h>
+#include <getopt.h>
+#include <linux/err.h>
+#include <linux/ctype.h>
+#include <string.h>
+#include <environment.h>
+#include <hwmon.h>
+
+static int do_hwmon(int argc, char *argv[])
+{
+	struct hwmon_sensor *s;
+
+	for_each_hwmon_sensor(s) {
+		s32 value;
+		int ret = hwmon_sensor_read(s, &value);
+
+		if (ret < 0) {
+			printf("%s -- failed to read the sensor (%d)\n", s->name, ret);
+			continue;
+		}
+
+		switch (s->type) {
+		case SENSOR_TEMPERATURE:
+			printf("name: %s, reading: %d.%03d C\n",
+			       s->name, (int)(value / 1000), (int)abs(value % 1000));
+			break;
+		default:
+			printf("%s -- unknow type of sensor\n", s->name);
+			break;
+		}
+	}
+
+	return 0;
+}
+
+#if 0
+BAREBOX_CMD_HELP_START(hwmon)
+BAREBOX_CMD_HELP_END
+#endif
+
+BAREBOX_CMD_START(hwmon)
+	.cmd		= do_hwmon,
+	BAREBOX_CMD_DESC("query hardware sensors (HWMON)")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	/* BAREBOX_CMD_HELP(cmd_hwmon_help) */
+BAREBOX_CMD_END
--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
