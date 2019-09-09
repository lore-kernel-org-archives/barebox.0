Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Egi-0002sl-Ux
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 08:06:18 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Sep 2019 10:06:09 +0200
Message-Id: <20190909080609.2235-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2] input: add handler for reset and power key input events
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Kernel device trees may indicate linux,code = KEY_POWER or KEY_RESTART,
mostly for gpio-keys. Make barebox able to act on them by registering an
appropriate input notifier.

Suggested-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
 - announce reset/power on info log level, so users are aware why it
   happens. Suggested by Oleksij
---
 drivers/input/Kconfig       |  6 ++++++
 drivers/input/Makefile      |  1 +
 drivers/input/specialkeys.c | 36 ++++++++++++++++++++++++++++++++++++
 3 files changed, 43 insertions(+)
 create mode 100644 drivers/input/specialkeys.c

diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index 1f89ae3892dc..be061683fb0a 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -64,4 +64,10 @@ config KEYBOARD_USB
 	help
 	  This driver implements support for usb keyboard.
 
+config INPUT_SPECIALKEYS
+	bool "Special keys handler"
+	select INPUT
+	help
+	  Say Y here to handle key events like KEY_RESTART and KEY_POWER.
+
 endmenu
diff --git a/drivers/input/Makefile b/drivers/input/Makefile
index e694a98d1087..36a4204d5308 100644
--- a/drivers/input/Makefile
+++ b/drivers/input/Makefile
@@ -5,3 +5,4 @@ obj-$(CONFIG_KEYBOARD_GPIO) += gpio_keys.o
 obj-$(CONFIG_KEYBOARD_TWL6030) += twl6030_pwrbtn.o
 obj-$(CONFIG_KEYBOARD_IMX_KEYPAD) += imx_keypad.o
 obj-$(CONFIG_KEYBOARD_QT1070) += qt1070.o
+obj-$(CONFIG_INPUT_SPECIALKEYS)	+= specialkeys.o
diff --git a/drivers/input/specialkeys.c b/drivers/input/specialkeys.c
new file mode 100644
index 000000000000..ff29b8455d7a
--- /dev/null
+++ b/drivers/input/specialkeys.c
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (c) 2019 Ahmad Fatoum, Pengutronix
+
+#include <common.h>
+#include <restart.h>
+#include <poweroff.h>
+#include <init.h>
+#include <input/input.h>
+#include <dt-bindings/input/linux-event-codes.h>
+
+static void input_specialkeys_notify(struct input_notifier *in,
+				     struct input_event *ev)
+{
+	switch (ev->code) {
+	case KEY_RESTART:
+		pr_info("Triggering reset due to special key.\n", ev->code);
+		restart_machine();
+		break;
+
+	case KEY_POWER:
+		pr_info("Triggering poweroff due to special key.\n", ev->code);
+		poweroff_machine();
+		break;
+	}
+
+	pr_debug("ignoring code: %d\n", ev->code);
+}
+
+static struct input_notifier notifier;
+
+static int input_specialkeys_init(void)
+{
+	notifier.notify = input_specialkeys_notify;
+	return input_register_notfier(&notifier);
+}
+late_initcall(input_specialkeys_init);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
