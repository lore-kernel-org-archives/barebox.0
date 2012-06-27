Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjtGX-0000IQ-Im
 for barebox@lists.infradead.org; Wed, 27 Jun 2012 14:30:47 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SjtGV-00087H-Al
 for barebox@lists.infradead.org; Wed, 27 Jun 2012 16:30:43 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1SjtGV-000346-9g
 for barebox@lists.infradead.org; Wed, 27 Jun 2012 16:30:43 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 27 Jun 2012 16:30:41 +0200
Message-Id: <1340807442-5440-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1340807442-5440-1-git-send-email-jbe@pengutronix.de>
References: <1340807442-5440-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/2] Add a simple watchdog framework
To: barebox@lists.infradead.org

This patch adds a simple wd command which can setup, trigger and stop a watchdog
on the platform.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 commands/Kconfig           |   19 +++++++++++++
 commands/Makefile          |    1 +
 commands/wd.c              |   68 ++++++++++++++++++++++++++++++++++++++++++++
 drivers/Kconfig            |    1 +
 drivers/Makefile           |    1 +
 drivers/watchdog/Kconfig   |    9 ++++++
 drivers/watchdog/Makefile  |    1 +
 drivers/watchdog/wd_core.c |   61 +++++++++++++++++++++++++++++++++++++++
 include/watchdog.h         |   24 ++++++++++++++++
 9 files changed, 185 insertions(+)
 create mode 100644 commands/wd.c
 create mode 100644 drivers/watchdog/Kconfig
 create mode 100644 drivers/watchdog/Makefile
 create mode 100644 drivers/watchdog/wd_core.c
 create mode 100644 include/watchdog.h

diff --git a/commands/Kconfig b/commands/Kconfig
index 9fe0c57..2478e3f 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -579,6 +579,25 @@ config CMD_USB
 	help
 	  The usb command allows to rescan for USB devices.
 
+menuconfig CMD_WD
+	bool
+	depends on WATCHDOG
+	prompt "wd command                    "
+	help
+	  The 'wd' command which allows to start, stop and trigger the onboard
+	  watchdog.
+
+if CMD_WD
+
+config CMD_WD_DEFAULT_TIMOUT
+	int
+	prompt "default timeout"
+	help
+	  Define the default timeout value in [seconds] if the first call of
+	  'wd' is done without a timeout value (which means the watchdog gets
+	  enabled and re-triggered with the default timeout value).
+endif
+
 endmenu
 
 endif
diff --git a/commands/Makefile b/commands/Makefile
index e9503da..54191b4 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -60,6 +60,7 @@ obj-$(CONFIG_CMD_MENU)		+= menu.o
 obj-$(CONFIG_CMD_PASSWD)	+= passwd.o
 obj-$(CONFIG_CMD_LOGIN)		+= login.o
 obj-$(CONFIG_CMD_LED)		+= led.o
+obj-$(CONFIG_CMD_WD)		+= wd.o
 obj-$(CONFIG_CMD_LED_TRIGGER)	+= trigger.o
 obj-$(CONFIG_CMD_USB)		+= usb.o
 obj-$(CONFIG_CMD_TIME)		+= time.o
diff --git a/commands/wd.c b/commands/wd.c
new file mode 100644
index 0000000..080bab9
--- /dev/null
+++ b/commands/wd.c
@@ -0,0 +1,68 @@
+/*
+ * (c) 2012 Juergen Beisert <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <command.h>
+#include <errno.h>
+#include <linux/ctype.h>
+#include <watchdog.h>
+
+/* default timeout in [sec] */
+static unsigned timeout = CONFIG_CMD_WD_DEFAULT_TIMOUT;
+
+static int do_wd(int argc, char *argv[])
+{
+	int rc;
+
+	if (argc > 1) {
+		if (isdigit(*argv[1])) {
+			timeout = simple_strtoul(argv[1], NULL, 0);
+		} else {
+			printf("numerical parameter expected\n");
+			return 1;
+		}
+	}
+
+	rc = watchdog_set_timeout(timeout);
+	if (rc < 0) {
+		switch (rc) {
+		case -EINVAL:
+			printf("Timeout value out of range\n");
+			break;
+		case -ENOSYS:
+			printf("Watchdog cannot be disabled\n");
+			break;
+		default:
+			printf("Watchdog fails: '%s'\n", strerror(-rc));
+			break;
+		}
+
+		return 1;
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(wd)
+BAREBOX_CMD_HELP_USAGE("wd [<time>]\n")
+BAREBOX_CMD_HELP_SHORT("enable the watchdog to bark in <time> seconds. "
+		"When <time> is 0, the watchdog gets disabled,\n"
+		"without a parameter the watchdog will be re-triggered\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(wd)
+	.cmd = do_wd,
+	.usage = "enable/disable/trigger the watchdog",
+	BAREBOX_CMD_HELP(cmd_wd_help)
+BAREBOX_CMD_END
diff --git a/drivers/Kconfig b/drivers/Kconfig
index 037b0d4..e193063 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -18,5 +18,6 @@ source "drivers/input/Kconfig"
 
 source "drivers/pwm/Kconfig"
 source "drivers/dma/Kconfig"
+source "drivers/watchdog/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index f40b321..52a44c9 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -16,3 +16,4 @@ obj-y	+= eeprom/
 obj-$(CONFIG_PWM) += pwm/
 obj-y	+= input/
 obj-y	+= dma/
+obj-y	+= watchdog/
diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
new file mode 100644
index 0000000..c734dfe
--- /dev/null
+++ b/drivers/watchdog/Kconfig
@@ -0,0 +1,9 @@
+menuconfig WATCHDOG
+	bool "Watchdog support              "
+	help
+	  Many platforms support a watchdog to keep track of a working machine.
+	  This framework provides routines to handle these watchdogs.
+
+if WATCHDOG
+
+endif
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
new file mode 100644
index 0000000..630f1b6
--- /dev/null
+++ b/drivers/watchdog/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_WATCHDOG) += wd_core.o
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
new file mode 100644
index 0000000..8d22212
--- /dev/null
+++ b/drivers/watchdog/wd_core.c
@@ -0,0 +1,61 @@
+/*
+ * (c) 2012 Juergen Beisert <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <command.h>
+#include <errno.h>
+#include <linux/ctype.h>
+#include <watchdog.h>
+
+/*
+ * Note: this simple framework supports one watchdog only.
+ */
+static struct watchdog *watchdog;
+
+int watchdog_register(struct watchdog *wd)
+{
+	if (wd == NULL)
+		return -EINVAL;
+	if (watchdog != NULL)
+		return -EBUSY;
+
+	watchdog = wd;
+	return 0;
+}
+EXPORT_SYMBOL(watchdog_register);
+
+int watchdog_deregister(struct watchdog *wd)
+{
+	if (wd == NULL)
+		return -EINVAL;
+	if (watchdog == NULL || wd != watchdog)
+		return -ENODEV;
+
+	watchdog = NULL;
+	return 0;
+}
+EXPORT_SYMBOL(watchdog_deregister);
+
+/*
+ * start, stop or retrigger the watchdog
+ * timeout in [seconds]. timeout of '0' will disable the watchdog (if possible)
+ */
+int watchdog_set_timeout(unsigned timeout)
+{
+	if (watchdog == NULL)
+		return -ENODEV;
+
+	return watchdog->set_timeout(watchdog, timeout);
+}
+EXPORT_SYMBOL(watchdog_set_timeout);
diff --git a/include/watchdog.h b/include/watchdog.h
new file mode 100644
index 0000000..3e2d08e
--- /dev/null
+++ b/include/watchdog.h
@@ -0,0 +1,24 @@
+/*
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef INCLUDE_WATCHDOG_H
+# define INCLUDE_WATCHDOG_H
+
+struct watchdog {
+	int (*set_timeout)(struct watchdog *, unsigned);
+};
+
+int watchdog_register(struct watchdog *);
+int watchdog_deregister(struct watchdog *);
+int watchdog_set_timeout(unsigned);
+
+#endif /* INCLUDE_WATCHDOG_H */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
