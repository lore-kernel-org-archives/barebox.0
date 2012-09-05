Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9AuB-0003hP-7E
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 08:24:15 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed,  5 Sep 2012 10:23:53 +0200
Message-Id: <1346833433-24733-3-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1346833433-24733-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1346833433-24733-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v4 2/2] gpio: add driver for stmpe io-expander
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/Kconfig           |    1 +
 drivers/gpio/Kconfig      |    9 +++
 drivers/gpio/Makefile     |    2 +
 drivers/gpio/gpio-stmpe.c |  161 +++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 173 insertions(+)
 create mode 100644 drivers/gpio/Kconfig
 create mode 100644 drivers/gpio/Makefile
 create mode 100644 drivers/gpio/gpio-stmpe.c

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 883b0e7..adf8fcd 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -18,5 +18,6 @@ source "drivers/input/Kconfig"
 source "drivers/watchdog/Kconfig"
 source "drivers/pwm/Kconfig"
 source "drivers/dma/Kconfig"
+source "drivers/gpio/Kconfig"
 
 endmenu
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
new file mode 100644
index 0000000..acfd4ef
--- /dev/null
+++ b/drivers/gpio/Kconfig
@@ -0,0 +1,9 @@
+menu "GPIO                          "
+
+config STMPE_GPIO
+	depends on I2C
+	depends on GPIOLIB
+	select I2C_STMPE
+	bool "STMPE GPIO Expander"
+
+endmenu
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
new file mode 100644
index 0000000..da1bc21
--- /dev/null
+++ b/drivers/gpio/Makefile
@@ -0,0 +1,2 @@
+obj-y += gpio.o
+obj-$(CONFIG_STMPE_GPIO) += gpio-stmpe.o
diff --git a/drivers/gpio/gpio-stmpe.c b/drivers/gpio/gpio-stmpe.c
new file mode 100644
index 0000000..fa3b041
--- /dev/null
+++ b/drivers/gpio/gpio-stmpe.c
@@ -0,0 +1,161 @@
+/*
+ * Copyright (C) 2012 Pengutronix
+ * Steffen Trumtrar <s.trumtrar@pengutronix.de>
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
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <io.h>
+#include <gpio.h>
+#include <init.h>
+#include <mfd/stmpe-i2c.h>
+
+#define GPIO_BASE	0x80
+#define GPIO_SET	(GPIO_BASE + 0x02)
+#define GPIO_CLR	(GPIO_BASE + 0x04)
+#define GPIO_MP		(GPIO_BASE + 0x06)
+#define GPIO_SET_DIR	(GPIO_BASE + 0x08)
+#define GPIO_ED		(GPIO_BASE + 0x0a)
+#define GPIO_RE		(GPIO_BASE + 0x0c)
+#define GPIO_FE		(GPIO_BASE + 0x0e)
+#define GPIO_PULL_UP	(GPIO_BASE + 0x10)
+#define GPIO_AF		(GPIO_BASE + 0x12)
+#define GPIO_LT		(GPIO_BASE + 0x16)
+
+#define OFFSET(gpio)	(0xff & (1 << (gpio)) ? 1 : 0)
+
+struct stmpe_gpio_chip {
+	struct gpio_chip chip;
+	struct stmpe_client_info *ci;
+};
+
+static void stmpe_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
+{
+	struct stmpe_gpio_chip *stmpegpio = container_of(chip, struct stmpe_gpio_chip, chip);
+	struct stmpe_client_info *ci = (struct stmpe_client_info *)stmpegpio->ci;
+	int ret;
+	u8 val;
+
+	ci->read_reg(ci->stmpe, GPIO_MP + OFFSET(gpio), &val);
+
+	val |= 1 << (gpio % 8);
+
+	if (value)
+		ret = ci->write_reg(ci->stmpe, GPIO_SET + OFFSET(gpio), val);
+	else
+		ret = ci->write_reg(ci->stmpe, GPIO_CLR + OFFSET(gpio), val);
+
+	if (ret)
+		dev_err(chip->dev, "write failed!\n");
+}
+
+static int stmpe_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
+{
+	struct stmpe_gpio_chip *stmpegpio = container_of(chip, struct stmpe_gpio_chip, chip);
+	struct stmpe_client_info *ci = (struct stmpe_client_info *)stmpegpio->ci;
+	int ret;
+	u8 val;
+
+	ci->read_reg(ci->stmpe, GPIO_SET_DIR + OFFSET(gpio), &val);
+	val &= ~(1 << (gpio % 8));
+	ret = ci->write_reg(ci->stmpe, GPIO_SET_DIR + OFFSET(gpio), val);
+
+	if (ret)
+		dev_err(chip->dev, "couldn't change direction. Write failed!\n");
+
+	return ret;
+}
+
+static int stmpe_gpio_direction_output(struct gpio_chip *chip, unsigned gpio, int value)
+{
+	struct stmpe_gpio_chip *stmpegpio = container_of(chip, struct stmpe_gpio_chip, chip);
+	struct stmpe_client_info *ci = (struct stmpe_client_info *)stmpegpio->ci;
+	int ret;
+	u8 val;
+
+	ci->read_reg(ci->stmpe, GPIO_SET_DIR + OFFSET(gpio), &val);
+	val |= 1 << (gpio % 8);
+	ret = ci->write_reg(ci->stmpe, GPIO_SET_DIR + OFFSET(gpio), val);
+
+	stmpe_gpio_set_value(chip, gpio, value);
+
+	if (ret)
+		dev_err(chip->dev, "couldn't change direction. Write failed!\n");
+
+	return ret;
+}
+
+static int stmpe_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
+{
+	struct stmpe_gpio_chip *stmpegpio = container_of(chip, struct stmpe_gpio_chip, chip);
+	struct stmpe_client_info *ci = (struct stmpe_client_info *)stmpegpio->ci;
+	u8 val;
+	int ret;
+
+	ret = ci->read_reg(ci->stmpe, GPIO_MP + OFFSET(gpio), &val);
+
+	if (ret)
+		dev_err(chip->dev, "read failed\n");
+
+	return val & (1 << (gpio % 8)) ? 1 : 0;
+}
+
+static struct gpio_ops stmpe_gpio_ops = {
+	.direction_input = stmpe_gpio_direction_input,
+	.direction_output = stmpe_gpio_direction_output,
+	.get = stmpe_gpio_get_value,
+	.set = stmpe_gpio_set_value,
+};
+
+static int stmpe_gpio_probe(struct device_d *dev)
+{
+	struct stmpe_gpio_chip *stmpegpio;
+	struct stmpe_client_info *ci;
+	int ret;
+
+	stmpegpio = xzalloc(sizeof(*stmpegpio));
+
+	stmpegpio->chip.ops = &stmpe_gpio_ops;
+	stmpegpio->ci = dev->platform_data;
+
+	ci = (struct stmpe_client_info *)stmpegpio->ci;
+
+	if (ci->stmpe->pdata->gpio_base)
+		stmpegpio->chip.base = ci->stmpe->pdata->gpio_base;
+	else
+		stmpegpio->chip.base = -1;
+	stmpegpio->chip.ngpio = 16;
+	stmpegpio->chip.dev = dev;
+
+	ret = gpiochip_add(&stmpegpio->chip);
+
+	if (ret) {
+		dev_err(dev, "couldn't add gpiochip\n");
+		return ret;
+	}
+
+	dev_info(dev, "probed stmpe gpiochip%d with base %d\n", dev->id, stmpegpio->chip.base);
+	return 0;
+}
+
+static struct driver_d stmpe_gpio_driver = {
+	.name = "stmpe-gpio",
+	.probe = stmpe_gpio_probe,
+};
+
+static int stmpe_gpio_add(void)
+{
+	return register_driver(&stmpe_gpio_driver);
+}
+coredevice_initcall(stmpe_gpio_add);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
