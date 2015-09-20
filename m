Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zdny8-0006Dz-62
 for barebox@lists.infradead.org; Sun, 20 Sep 2015 23:24:29 +0000
Received: by lahg1 with SMTP id g1so58715663lah.1
 for <barebox@lists.infradead.org>; Sun, 20 Sep 2015 16:24:06 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-254-180.pppoe.spdop.ru.
 [79.139.254.180])
 by smtp.gmail.com with ESMTPSA id x1sm3091424lbb.32.2015.09.20.16.24.05
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 20 Sep 2015 16:24:06 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 21 Sep 2015 02:23:50 +0300
Message-Id: <1442791433-10892-8-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1442791433-10892-1-git-send-email-antonynpavlov@gmail.com>
References: <1442791433-10892-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 07/10] gpio: add ath79-gpio driver for Atheros MIPS SoCs
To: barebox@lists.infradead.org

This driver is based on linux-4.2 driver.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/gpio/Makefile     |   1 +
 drivers/gpio/gpio-ath79.c | 146 ++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 147 insertions(+)

diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 1d94661..f39e8da 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -1,6 +1,7 @@
 obj-$(CONFIG_GPIOLIB)		+= gpiolib.o
 
 obj-$(CONFIG_GPIO_74164)	+= gpio-74164.o
+obj-$(CONFIG_MACH_MIPS_ATH79)	+= gpio-ath79.o
 obj-$(CONFIG_GPIO_BCM2835)	+= gpio-bcm2835.o
 obj-$(CONFIG_GPIO_DAVINCI)	+= gpio-davinci.o
 obj-$(CONFIG_GPIO_CLPS711X)	+= gpio-clps711x.o
diff --git a/drivers/gpio/gpio-ath79.c b/drivers/gpio/gpio-ath79.c
new file mode 100644
index 0000000..353b520
--- /dev/null
+++ b/drivers/gpio/gpio-ath79.c
@@ -0,0 +1,146 @@
+/*
+ *  Atheros AR71XX/AR724X/AR913X GPIO API support
+ *
+ *  Copyright (C) 2010-2011 Jaiganesh Narayanan <jnarayanan@atheros.com>
+ *  Copyright (C) 2008-2011 Gabor Juhos <juhosg@openwrt.org>
+ *  Copyright (C) 2008 Imre Kaloz <kaloz@openwrt.org>
+ *  Copyright (C) 2015 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ *  Parts of this file are based on Atheros' 2.6.15/2.6.31 BSP
+ *
+ *  This program is free software; you can redistribute it and/or modify it
+ *  under the terms of the GNU General Public License version 2 as published
+ *  by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <gpio.h>
+#include <malloc.h>
+
+#include <mach/ar71xx_regs.h>
+#include <mach/ath79.h>
+
+static void __iomem *ath79_gpio_base;
+static u32 ath79_gpio_count;
+
+static void __ath79_gpio_set_value(unsigned gpio, int value)
+{
+	void __iomem *base = ath79_gpio_base;
+
+	if (value)
+		__raw_writel(1 << gpio, base + AR71XX_GPIO_REG_SET);
+	else
+		__raw_writel(1 << gpio, base + AR71XX_GPIO_REG_CLEAR);
+}
+
+static int __ath79_gpio_get_value(unsigned gpio)
+{
+	return (__raw_readl(ath79_gpio_base + AR71XX_GPIO_REG_IN) >> gpio) & 1;
+}
+
+static int ath79_gpio_get_value(struct gpio_chip *chip, unsigned offset)
+{
+	return __ath79_gpio_get_value(offset);
+}
+
+static void ath79_gpio_set_value(struct gpio_chip *chip,
+				  unsigned offset, int value)
+{
+	__ath79_gpio_set_value(offset, value);
+}
+
+static int ath79_gpio_direction_input(struct gpio_chip *chip,
+				       unsigned offset)
+{
+	void __iomem *base = ath79_gpio_base;
+
+	__raw_writel(__raw_readl(base + AR71XX_GPIO_REG_OE) & ~(1 << offset),
+		     base + AR71XX_GPIO_REG_OE);
+
+	return 0;
+}
+
+static int ath79_gpio_direction_output(struct gpio_chip *chip,
+					unsigned offset, int value)
+{
+	void __iomem *base = ath79_gpio_base;
+
+	if (value)
+		__raw_writel(1 << offset, base + AR71XX_GPIO_REG_SET);
+	else
+		__raw_writel(1 << offset, base + AR71XX_GPIO_REG_CLEAR);
+
+	__raw_writel(__raw_readl(base + AR71XX_GPIO_REG_OE) | (1 << offset),
+		     base + AR71XX_GPIO_REG_OE);
+
+	return 0;
+}
+
+static struct gpio_ops ath79_gpio_ops = {
+	.get			= ath79_gpio_get_value,
+	.set			= ath79_gpio_set_value,
+	.direction_input	= ath79_gpio_direction_input,
+	.direction_output	= ath79_gpio_direction_output,
+};
+
+static struct gpio_chip ath79_gpio_chip = {
+	.ops = &ath79_gpio_ops,
+	.base = 0,
+};
+
+static const struct of_device_id ath79_gpio_of_match[] = {
+	{ .compatible = "qca,ar7100-gpio" },
+	{},
+};
+
+static int ath79_gpio_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	int err;
+
+	if (!np) {
+		dev_err(dev, "No DT node or platform data found\n");
+		return -EINVAL;
+	}
+
+	err = of_property_read_u32(np, "ngpios", &ath79_gpio_count);
+	if (err) {
+		dev_err(dev, "ngpios property is not valid\n");
+		return err;
+	}
+	if (ath79_gpio_count >= 32) {
+		dev_err(dev, "ngpios must be less than 32\n");
+		return -EINVAL;
+	}
+
+	ath79_gpio_base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(ath79_gpio_base)) {
+		dev_err(dev, "could not get memory region\n");
+		return PTR_ERR(ath79_gpio_base);
+	}
+
+	ath79_gpio_chip.dev = dev;
+	ath79_gpio_chip.ngpio = ath79_gpio_count;
+
+	err = gpiochip_add(&ath79_gpio_chip);
+	if (err) {
+		dev_err(dev, "cannot add AR71xx GPIO chip, error=%d", err);
+		return err;
+	}
+
+	return 0;
+}
+
+static struct driver_d ath79_gpio_driver = {
+	.name = "ath79-gpio",
+	.probe = ath79_gpio_probe,
+	.of_compatible = DRV_OF_COMPAT(ath79_gpio_of_match),
+};
+
+static int ath79_gpio_init(void)
+{
+	return platform_driver_register(&ath79_gpio_driver);
+}
+coredevice_initcall(ath79_gpio_init);
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
