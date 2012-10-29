Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSp1T-0006OX-3w
 for barebox@lists.infradead.org; Mon, 29 Oct 2012 13:04:57 +0000
Received: from mail172.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id AF73E104E94D
 for <barebox@lists.infradead.org>; Mon, 29 Oct 2012 14:11:56 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 29 Oct 2012 14:02:37 +0100
Message-Id: <1351515759-25548-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351515759-25548-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121029124609.GG28904@game.jcrosoft.org>
 <1351515759-25548-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/5] 1-wire: add gpio bus
To: barebox@lists.infradead.org

Based on linux implementation.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/w1/masters/Kconfig   |    7 +++
 drivers/w1/masters/Makefile  |    1 +
 drivers/w1/masters/w1-gpio.c |  116 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/w1-gpio.h      |   25 +++++++++
 4 files changed, 149 insertions(+)
 create mode 100644 drivers/w1/masters/w1-gpio.c
 create mode 100644 include/linux/w1-gpio.h

diff --git a/drivers/w1/masters/Kconfig b/drivers/w1/masters/Kconfig
index 86aa8df..e429c14 100644
--- a/drivers/w1/masters/Kconfig
+++ b/drivers/w1/masters/Kconfig
@@ -4,4 +4,11 @@
 
 menu "1-wire Bus Masters"
 
+config W1_MASTER_GPIO
+	bool "GPIO 1-wire busmaster"
+	depends on GENERIC_GPIO
+	help
+	  Say Y here if you want to communicate with your 1-wire devices using
+	  GPIO pins. This driver uses the GPIO API to control the wire.
+
 endmenu
diff --git a/drivers/w1/masters/Makefile b/drivers/w1/masters/Makefile
index ed1b9d9..84b35bb 100644
--- a/drivers/w1/masters/Makefile
+++ b/drivers/w1/masters/Makefile
@@ -2,3 +2,4 @@
 # Makefile for 1-wire bus master drivers.
 #
 
+obj-$(CONFIG_W1_MASTER_GPIO)		+= w1-gpio.o
diff --git a/drivers/w1/masters/w1-gpio.c b/drivers/w1/masters/w1-gpio.c
new file mode 100644
index 0000000..0a3794d
--- /dev/null
+++ b/drivers/w1/masters/w1-gpio.c
@@ -0,0 +1,116 @@
+/*
+ * w1-gpio - GPIO w1 bus master driver
+ *
+ * Copyright (C) 2007 Ville Syrjala <syrjala@sci.fi>
+ * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <xfuncs.h>
+#include <driver.h>
+#include <linux/w1-gpio.h>
+#include <gpio.h>
+
+#include "../w1.h"
+
+static void w1_gpio_write_bit_dir(struct w1_bus *bus, u8 bit)
+{
+	struct w1_gpio_platform_data *pdata = bus->data;
+
+	if (bit)
+		gpio_direction_input(pdata->pin);
+	else
+		gpio_direction_output(pdata->pin, 0);
+}
+
+static void w1_gpio_write_bit_val(struct w1_bus *bus, u8 bit)
+{
+	struct w1_gpio_platform_data *pdata = bus->data;
+
+	gpio_set_value(pdata->pin, bit);
+}
+
+static u8 w1_gpio_read_bit(struct w1_bus *bus)
+{
+	struct w1_gpio_platform_data *pdata = bus->data;
+
+	return gpio_get_value(pdata->pin) ? 1 : 0;
+}
+
+static int __init w1_gpio_probe(struct device_d *dev)
+{
+	struct w1_bus *master;
+	struct w1_gpio_platform_data *pdata;
+	int err;
+
+	pdata = dev->platform_data;
+
+	if (!pdata)
+		return -ENXIO;
+
+	master = xzalloc(sizeof(struct w1_bus));
+
+	err = gpio_request(pdata->pin, "w1");
+	if (err)
+		goto free_master;
+
+	if (gpio_is_valid(pdata->ext_pullup_enable_pin)) {
+		err = gpio_request(pdata->pin, "w1 pullup");
+		if (err < 0)
+			goto free_gpio;
+
+		gpio_direction_output(pdata->pin, 0);
+	}
+
+	master->data = pdata;
+	master->read_bit = w1_gpio_read_bit;
+
+	if (pdata->is_open_drain) {
+		gpio_direction_output(pdata->pin, 1);
+		master->write_bit = w1_gpio_write_bit_val;
+	} else {
+		gpio_direction_input(pdata->pin);
+		master->write_bit = w1_gpio_write_bit_dir;
+	}
+
+	master->parent = dev;
+
+	err = w1_bus_register(master);
+	if (err)
+		goto free_gpio_ext_pu;
+
+	if (pdata->enable_external_pullup)
+		pdata->enable_external_pullup(1);
+
+	if (gpio_is_valid(pdata->ext_pullup_enable_pin))
+		gpio_set_value(pdata->ext_pullup_enable_pin, 1);
+
+	return 0;
+
+ free_gpio_ext_pu:
+	if (gpio_is_valid(pdata->ext_pullup_enable_pin))
+		gpio_free(pdata->ext_pullup_enable_pin);
+ free_gpio:
+	gpio_free(pdata->pin);
+ free_master:
+	kfree(master);
+
+	return err;
+}
+
+static struct driver_d w1_gpio_driver = {
+	.name	= "w1-gpio",
+	.probe	= w1_gpio_probe,
+};
+
+static int __init w1_gpio_init(void)
+{
+	return platform_driver_register(&w1_gpio_driver);
+}
+device_initcall(w1_gpio_init);
diff --git a/include/linux/w1-gpio.h b/include/linux/w1-gpio.h
new file mode 100644
index 0000000..065e3ae
--- /dev/null
+++ b/include/linux/w1-gpio.h
@@ -0,0 +1,25 @@
+/*
+ * w1-gpio interface to platform code
+ *
+ * Copyright (C) 2007 Ville Syrjala <syrjala@sci.fi>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ */
+#ifndef _LINUX_W1_GPIO_H
+#define _LINUX_W1_GPIO_H
+
+/**
+ * struct w1_gpio_platform_data - Platform-dependent data for w1-gpio
+ * @pin: GPIO pin to use
+ * @is_open_drain: GPIO pin is configured as open drain
+ */
+struct w1_gpio_platform_data {
+	unsigned int pin;
+	unsigned int is_open_drain:1;
+	void (*enable_external_pullup)(int enable);
+	unsigned int ext_pullup_enable_pin;
+};
+
+#endif /* _LINUX_W1_GPIO_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
