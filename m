Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2sm-0003JL-7J
 for barebox@lists.infradead.org; Fri, 08 Nov 2019 11:56:53 +0000
Received: by mail-lf1-x144.google.com with SMTP id z24so1316225lfh.6
 for <barebox@lists.infradead.org>; Fri, 08 Nov 2019 03:56:51 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  8 Nov 2019 14:56:45 +0300
Message-Id: <20191108115645.29955-1-antonynpavlov@gmail.com>
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
Subject: [RFC] WIP: import gpio-poweroff driver from linux kernel
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/reset/Kconfig         |  7 +++
 drivers/reset/Makefile        |  1 +
 drivers/reset/gpio-poweroff.c | 86 +++++++++++++++++++++++++++++++++++
 3 files changed, 94 insertions(+)

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 048f2081f8..21b61e036f 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -26,4 +26,11 @@ config RESET_STM32
 	help
 	  This enables the reset controller driver for STM32MP and STM32 MCUs.
 
+config RESET_GPIO_POWEROFF
+	bool "GPIO power-off driver"
+	help
+	  This driver supports turning off your board via a GPIO line.
+	  If your board needs a GPIO high/low to power down, say Y and
+	  create a binding in your devicetree.
+
 endif
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 8460c4b154..efd9c951f3 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -2,3 +2,4 @@ obj-$(CONFIG_RESET_CONTROLLER) += core.o
 obj-$(CONFIG_ARCH_SOCFPGA) += reset-socfpga.o
 obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
 obj-$(CONFIG_RESET_STM32) += reset-stm32.o
+obj-$(CONFIG_RESET_GPIO_POWEROFF) += gpio-poweroff.o
diff --git a/drivers/reset/gpio-poweroff.c b/drivers/reset/gpio-poweroff.c
new file mode 100644
index 0000000000..89f9ff69c5
--- /dev/null
+++ b/drivers/reset/gpio-poweroff.c
@@ -0,0 +1,86 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Toggles a GPIO pin to power down a device
+ *
+ * Copyright (C) 2019 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * Based on linux/drivers/power/reset/gpio-poweroff.c
+ *
+ * Jamie Lentin <jm@lentin.co.uk>
+ * Andrew Lunn <andrew@lunn.ch>
+ *
+ * Copyright (C) 2012 Jamie Lentin
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <init.h>
+#include <gpio.h>
+#include <of_gpio.h>
+#include <poweroff.h>
+
+/*
+ * Hold configuration here.
+ * Cannot be more than one instance of the driver.
+ */
+static int reset_gpio;
+
+static void gpio_poweroff_do_poweroff(struct poweroff_handler *handler)
+{
+	shutdown_barebox();
+
+	/* drive it active, also inactive->active edge */
+	gpio_direction_output(reset_gpio, 1);
+	mdelay(100);
+	/* drive inactive, also active->inactive edge */
+	gpio_set_value(reset_gpio, 0);
+	mdelay(100);
+
+	/* drive it active, also inactive->active edge */
+	gpio_set_value(reset_gpio, 1);
+
+	/* give it some time */
+	mdelay(3000);
+
+	WARN_ON(1);
+	unreachable();
+}
+
+static int __init gpio_poweroff_probe(struct device_d *dev)
+{
+	int ret, reset_gpio;
+	enum of_gpio_flags flags;
+
+	if (!IS_ENABLED(CONFIG_OFDEVICE) || !IS_ENABLED(CONFIG_OF_GPIO))
+		return -ENODEV;
+
+	reset_gpio = of_get_named_gpio_flags(dev->device_node, "gpios", 0, &flags);
+	if (reset_gpio < 0) {
+		if (reset_gpio != -EPROBE_DEFER)
+			dev_err(dev, "failed to get gpio for %s: %d\n",
+				dev->device_node, reset_gpio);
+		return reset_gpio;
+	}
+
+	ret = gpio_request(reset_gpio, "gpio_poweroff");
+	if (ret) {
+		pr_err("gpio_poweroff: (%d) can not be requested\n", reset_gpio);
+		return ret;
+	}
+
+	poweroff_handler_register_fn(gpio_poweroff_do_poweroff);
+
+	return 0;
+}
+
+static const struct of_device_id of_gpio_poweroff_match[] = {
+	{ .compatible = "gpio-poweroff", },
+	{ }
+};
+
+static struct driver_d gpio_poweroff_driver = {
+	.name	= "poweroff-gpio",
+	.probe	= gpio_poweroff_probe,
+	.of_compatible = DRV_OF_COMPAT(of_gpio_poweroff_match),
+};
+device_platform_driver(gpio_poweroff_driver);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
