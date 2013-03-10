Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f47.google.com ([74.125.82.47])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEpnb-0006pm-K2
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 23:37:04 +0000
Received: by mail-wg0-f47.google.com with SMTP id dr13so4256809wgb.26
 for <barebox@lists.infradead.org>; Sun, 10 Mar 2013 16:37:01 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Mon, 11 Mar 2013 00:36:05 +0100
Message-Id: <1362958567-6110-3-git-send-email-vicencb@gmail.com>
In-Reply-To: <1362958567-6110-1-git-send-email-vicencb@gmail.com>
References: <1362958567-6110-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 2/4] twl6030: add power button as an input key
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>


Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 drivers/input/Kconfig          |  7 ++++
 drivers/input/Makefile         |  1 +
 drivers/input/twl6030_pwrbtn.c | 95 ++++++++++++++++++++++++++++++++++++++++++
 include/twl6030_pwrbtn.h       | 23 ++++++++++
 4 files changed, 126 insertions(+)
 create mode 100644 drivers/input/twl6030_pwrbtn.c
 create mode 100644 include/twl6030_pwrbtn.h

diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index a6f1f47..3d9016b 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -38,4 +38,11 @@ config KEYBOARD_QT1070
 	  Say Y here if you want to use Atmel AT42QT1070 QTouch
 	  Sensor chip as input device.
 
+config KEYBOARD_TWL6030
+	tristate "TWL6030 power button"
+	depends on MFD_TWL6030
+	select POLLER
+	help
+	  Say Y here if you want to use TWL6030 power button as a key.
+
 endmenu
diff --git a/drivers/input/Makefile b/drivers/input/Makefile
index d042980..b9bcc82 100644
--- a/drivers/input/Makefile
+++ b/drivers/input/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_KEYBOARD_GPIO) += gpio_keys.o
+obj-$(CONFIG_KEYBOARD_TWL6030) += twl6030_pwrbtn.o
 obj-$(CONFIG_KEYBOARD_IMX_KEYPAD) += imx_keypad.o
 obj-$(CONFIG_KEYBOARD_QT1070) += qt1070.o
diff --git a/drivers/input/twl6030_pwrbtn.c b/drivers/input/twl6030_pwrbtn.c
new file mode 100644
index 0000000..b22404c
--- /dev/null
+++ b/drivers/input/twl6030_pwrbtn.c
@@ -0,0 +1,95 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <init.h>
+#include <clock.h>
+#include <poller.h>
+#include <twl6030_pwrbtn.h>
+
+#define PWR_PWRON_IRQ (1 << 0)
+
+static void ic2_key_poller(struct poller_struct *poller)
+{
+	struct twl6030_pwrbtn_platform_data *pdata = container_of(
+		poller, struct twl6030_pwrbtn_platform_data, poller);
+	u8 val;
+
+	if (twl6030_reg_read(pdata->twl6030, TWL6030_PMCM_HW, &val)) {
+		pr_err("reading i2c\n");
+		return;
+	}
+	val = !(val & PWR_PWRON_IRQ);
+	if (val != pdata->previous_state && val) {
+		kfifo_put(pdata->recv_fifo, (u_char *)&pdata->code,
+			sizeof(int));
+		debug("pressed power button as %d\n", pdata->code);
+	}
+	pdata->previous_state = val;
+}
+
+static int twl6030_pwrbtn_tstc(struct console_device *cdev)
+{
+	struct twl6030_pwrbtn_platform_data *pdata = container_of(
+		cdev, struct twl6030_pwrbtn_platform_data, cdev);
+
+	return (kfifo_len(pdata->recv_fifo) == 0) ? 0 : 1;
+}
+
+static int twl6030_pwrbtn_getc(struct console_device *cdev)
+{
+	int code = 0;
+	struct twl6030_pwrbtn_platform_data *pdata = container_of(
+		cdev, struct twl6030_pwrbtn_platform_data, cdev);
+
+	kfifo_get(pdata->recv_fifo, (u_char *)&code, sizeof(int));
+	return code;
+}
+
+static int __init twl6030_pwrbtn_probe(struct device_d *dev)
+{
+	struct twl6030_pwrbtn_platform_data *pdata;
+	struct console_device *cdev;
+
+	pdata = dev->platform_data;
+
+	if (!pdata) {
+		pr_err("missing platform_data\n");
+		return -ENODEV;
+	}
+
+	pdata->twl6030 = twl6030_get();
+	if (!pdata->fifo_size)
+		pdata->fifo_size = 4;
+
+	pdata->recv_fifo = kfifo_alloc(pdata->fifo_size);
+
+	pdata->poller.func = ic2_key_poller;
+
+	cdev = &pdata->cdev;
+	dev->type_data = cdev;
+	cdev->dev = dev;
+	cdev->f_caps = CONSOLE_STDIN;
+	cdev->tstc = twl6030_pwrbtn_tstc;
+	cdev->getc = twl6030_pwrbtn_getc;
+
+	console_register(&pdata->cdev);
+
+	return poller_register(&pdata->poller);
+}
+
+static struct driver_d twl6030_pwrbtn_driver = {
+	.name	= "twl6030_pwrbtn",
+	.probe	= twl6030_pwrbtn_probe,
+};
+device_platform_driver(twl6030_pwrbtn_driver);
diff --git a/include/twl6030_pwrbtn.h b/include/twl6030_pwrbtn.h
new file mode 100644
index 0000000..e7e8383
--- /dev/null
+++ b/include/twl6030_pwrbtn.h
@@ -0,0 +1,23 @@
+#ifndef _TWL6030_PWRBTN_H
+#define _TWL6030_PWRBTN_H
+
+#include <poller.h>
+#include <kfifo.h>
+#include <mfd/twl6030.h>
+
+struct twl6030_pwrbtn_platform_data {
+	/* Configuration parameters */
+	int code;
+	/* optional */
+	int fifo_size;
+
+	/* internal */
+	u8 previous_state;
+
+	struct twl6030 *twl6030;
+	struct kfifo *recv_fifo;
+	struct poller_struct poller;
+	struct console_device cdev;
+};
+
+#endif
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
