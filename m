Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x235.google.com ([2607:f8b0:400e:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1awC9m-000754-9x
 for barebox@lists.infradead.org; Fri, 29 Apr 2016 17:24:46 +0000
Received: by mail-pf0-x235.google.com with SMTP id 206so50851096pfu.0
 for <barebox@lists.infradead.org>; Fri, 29 Apr 2016 10:24:25 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 29 Apr 2016 10:24:04 -0700
Message-Id: <1461950646-15037-5-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1461950646-15037-1-git-send-email-andrew.smirnov@gmail.com>
References: <1461950646-15037-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/6] commands: Add 'hwmon' command
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add 'hwmon' command which allows to display the readings of all
hardware monitoring sensors registered with Barebox.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/Kconfig  |  8 ++++++++
 commands/Makefile |  1 +
 commands/hwmon.c  | 35 +++++++++++++++++++++++++++++++++++
 3 files changed, 44 insertions(+)
 create mode 100644 commands/hwmon.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 57f2878..44a457b 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1830,6 +1830,14 @@ config CMD_HWCLOCK
 	help
 	  The hwclock command allows to query or set the hardware clock (RTC).
 
+config CMD_HWMON
+	bool
+	depends on AIODEV
+	prompt "hwmon command"
+	default y
+	help
+	  The hwmon command allows to query hardware sensors.
+
 config CMD_I2C
 	bool
 	depends on I2C
diff --git a/commands/Makefile b/commands/Makefile
index 065d649..3c8ad77 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -107,6 +107,7 @@ obj-$(CONFIG_CMD_REGULATOR)	+= regulator.o
 obj-$(CONFIG_CMD_LSPCI)		+= lspci.o
 obj-$(CONFIG_CMD_IMD)		+= imd.o
 obj-$(CONFIG_CMD_HWCLOCK)	+= hwclock.o
+obj-$(CONFIG_CMD_HWMON)		+= hwmon.o
 obj-$(CONFIG_CMD_USBGADGET)	+= usbgadget.o
 obj-$(CONFIG_CMD_FIRMWARELOAD)	+= firmwareload.o
 obj-$(CONFIG_CMD_CMP)		+= cmp.o
diff --git a/commands/hwmon.c b/commands/hwmon.c
new file mode 100644
index 0000000..ace4503
--- /dev/null
+++ b/commands/hwmon.c
@@ -0,0 +1,35 @@
+#include <common.h>
+#include <command.h>
+#include <getopt.h>
+#include <linux/err.h>
+#include <linux/ctype.h>
+#include <string.h>
+#include <environment.h>
+#include <aiodev.h>
+
+static int do_hwmon(int argc, char *argv[])
+{
+	int i;
+	struct aiodevice *aiodev;
+
+	for_each_aiodevice(aiodev) {
+		for (i = 0; i < aiodev->num_channels; i++) {
+			struct aiochannel *chan = aiodev->channels[i];
+			int value;
+			int ret = aiochannel_get_value(chan, &value);
+
+			if (!ret)
+				printf("%s: %d %s\n", chan->name, value, chan->unit);
+			else
+				printf("%s: failed to read (%d)\n", chan->name, ret);
+		}
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_START(hwmon)
+	.cmd		= do_hwmon,
+	BAREBOX_CMD_DESC("query hardware sensors (HWMON)")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+BAREBOX_CMD_END
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
