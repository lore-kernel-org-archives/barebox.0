Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo5.mail-out.ovh.net ([46.105.47.167]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RxJVt-0007om-Va
 for barebox@lists.infradead.org; Tue, 14 Feb 2012 14:37:54 +0000
Received: from mail98.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id B1967FFABAF
 for <barebox@lists.infradead.org>; Tue, 14 Feb 2012 15:40:09 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 14 Feb 2012 15:31:18 +0100
Message-Id: <1329229881-26751-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/4] add gpio keyboard support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/Kconfig           |    1 +
 drivers/Makefile          |    1 +
 drivers/input/Kconfig     |   19 ++++++
 drivers/input/Makefile    |    1 +
 drivers/input/gpio_keys.c |  146 +++++++++++++++++++++++++++++++++++++++++++++
 include/driver.h          |    5 ++
 include/gpio_keys.h       |   33 ++++++++++
 7 files changed, 206 insertions(+), 0 deletions(-)
 create mode 100644 drivers/input/Kconfig
 create mode 100644 drivers/input/Makefile
 create mode 100644 drivers/input/gpio_keys.c
 create mode 100644 include/gpio_keys.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index c4e1517..c058b25 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -14,5 +14,6 @@ source "drivers/clk/Kconfig"
 source "drivers/mfd/Kconfig"
 source "drivers/led/Kconfig"
 source "drivers/eeprom/Kconfig"
+source "drivers/input/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index 592c39e..61e85af 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -13,3 +13,4 @@ obj-y	+= clk/
 obj-y	+= mfd/
 obj-$(CONFIG_LED) += led/
 obj-y	+= eeprom/
+obj-y	+= input/
diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
new file mode 100644
index 0000000..b488553
--- /dev/null
+++ b/drivers/input/Kconfig
@@ -0,0 +1,19 @@
+#
+# Input device configuration
+#
+
+menu "Input device support"
+
+config KEYBOARD_GPIO
+	bool "GPIO Buttons"
+	depends on GENERIC_GPIO
+	help
+	  This driver implements support for buttons connected
+	  to GPIO pins of various CPUs (and some other chips).
+
+	  Say Y here if your device has buttons connected
+	  directly to such GPIO pins.  Your board-specific
+	  setup logic must also provide a platform device,
+	  with configuration data saying which GPIOs are used.
+
+endmenu
diff --git a/drivers/input/Makefile b/drivers/input/Makefile
new file mode 100644
index 0000000..7784d52
--- /dev/null
+++ b/drivers/input/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_KEYBOARD_GPIO) += gpio_keys.o
diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
new file mode 100644
index 0000000..ec5c701
--- /dev/null
+++ b/drivers/input/gpio_keys.c
@@ -0,0 +1,146 @@
+/*
+ * Copyright (C) 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <init.h>
+#include <clock.h>
+#include <gpio_keys.h>
+#include <poller.h>
+#include <gpio.h>
+
+static inline struct gpio_keys_platform_data *
+poller_to_gk_pdata(struct poller_struct *poller)
+{
+	return container_of(poller, struct gpio_keys_platform_data, poller);
+}
+
+static inline struct gpio_keys_platform_data *
+cdev_to_gk_pdata(struct console_device *cdev)
+{
+	return container_of(cdev, struct gpio_keys_platform_data, cdev);
+}
+
+static int pop_buf(struct gpio_keys_platform_data *pdata)
+{
+	int c;
+
+	if (pdata->len == 0)
+		return -EIO;
+
+	c = pdata->buf[pdata->pos];
+
+	if (!pdata->pos)
+		pdata->pos = pdata->buf_size - 1;
+	else
+		pdata->pos--;
+	pdata->len--;
+
+	return c;
+}
+
+static int push_buf(struct gpio_keys_platform_data *pdata, int c)
+{
+	if (pdata->len >= pdata->buf_size)
+		return -ENOSPC;
+
+	pdata->pos++;
+	pdata->len++;
+	if (pdata->pos >= pdata->buf_size)
+		pdata->pos = 0;
+
+	pdata->buf[pdata->pos] = c;
+
+	return 0;
+}
+
+static void gpio_key_poller(struct poller_struct *poller)
+{
+	struct gpio_keys_platform_data *pdata = poller_to_gk_pdata(poller);
+	struct gpio_keys_button *gb;
+	int i, val;
+
+	for (i = 0; i < pdata->nbuttons; i++) {
+
+		gb = &pdata->buttons[i];
+		val = gpio_get_value(gb->gpio);
+
+		if (val != gb->previous_state && val != gb->active_low) {
+			push_buf(pdata, gb->code);
+			debug("pressed ok\n");
+		}
+		gb->previous_state = val;
+	}
+}
+
+static int gpio_keys_tstc(struct console_device *cdev)
+{
+	struct gpio_keys_platform_data *pdata = cdev_to_gk_pdata(cdev);
+
+	return pdata->len;
+}
+
+static int gpio_keys_getc(struct console_device *cdev)
+{
+	struct gpio_keys_platform_data *pdata = cdev_to_gk_pdata(cdev);
+
+	return pop_buf(pdata);
+}
+
+static int __init gpio_keys_probe(struct device_d *dev)
+{
+	int ret, i, gpio;
+	struct gpio_keys_platform_data *pdata;
+	struct console_device *cdev;
+
+	pdata = dev->platform_data;
+
+	if (!pdata) {
+		/* small (so we copy it) but critical! */
+		pr_err("missing platform_data\n");
+		return -ENODEV;
+	}
+
+	if (!pdata->buf_size)
+		pdata->buf_size = 50;
+
+	pdata->buf = xzalloc(sizeof(int) * pdata->buf_size);
+
+	for (i = 0; i < pdata->nbuttons; i++) {
+		gpio = pdata->buttons->gpio;
+		ret = gpio_request(gpio, "gpio_keys");
+		if (ret) {
+			pr_err("gpio_keys: (%d) can not be requested\n", gpio);
+			return ret;
+		}
+		gpio_direction_input(gpio);
+	}
+
+	pdata->poller.func = gpio_key_poller;
+
+	cdev = &pdata->cdev;
+	dev->type_data = cdev;
+	cdev->dev = dev;
+	cdev->f_caps = CONSOLE_STDIN;
+	cdev->tstc = gpio_keys_tstc;
+	cdev->getc = gpio_keys_getc;
+
+	console_register(&pdata->cdev);
+
+	return poller_register(&pdata->poller);
+}
+
+static struct driver_d gpio_keys_driver = {
+	.name	= "gpio_keys",
+	.probe	= gpio_keys_probe,
+};
+
+static int gpio_keys_init(void)
+{
+	register_driver(&gpio_keys_driver);
+	return 0;
+}
+device_initcall(gpio_keys_init);
diff --git a/include/driver.h b/include/driver.h
index 1b8b16d..51d6393 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -260,6 +260,11 @@ static inline struct device_d *add_generic_usb_ehci_device(int id,
 	return add_usb_ehci_device(id, base + 0x100, base + 0x140, pdata);
 }
 
+static inline struct device_d *add_gpio_keys_device(int id, void *pdata)
+{
+	return add_generic_device_res("gpio_keys", id, 0, 0, pdata);
+}
+
 /* linear list over all available devices
  */
 extern struct list_head device_list;
diff --git a/include/gpio_keys.h b/include/gpio_keys.h
new file mode 100644
index 0000000..c5d484b
--- /dev/null
+++ b/include/gpio_keys.h
@@ -0,0 +1,33 @@
+#ifndef _GPIO_KEYS_H
+#define _GPIO_KEYS_H
+
+#include <poller.h>
+
+struct gpio_keys_button {
+	/* Configuration parameters */
+	int code;
+
+	int gpio;
+	int active_low;
+
+	/* internal */
+	int previous_state;
+};
+
+struct gpio_keys_platform_data {
+	struct gpio_keys_button *buttons;
+	int nbuttons;
+
+	/* optional */
+	int buf_size;
+
+	/* internal */
+	int* buf;
+	int pos;
+	int len;
+
+	struct poller_struct poller;
+	struct console_device cdev;
+};
+
+#endif
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
