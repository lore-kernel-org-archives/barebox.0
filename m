Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBsHM-0002WP-Nf
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 21:16:22 +0000
Received: by mail-la0-f49.google.com with SMTP id hz20so5850952lab.22
 for <barebox@lists.infradead.org>; Mon, 28 Jul 2014 14:15:56 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 29 Jul 2014 01:15:24 +0400
Message-Id: <1406582130-10116-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406582130-10116-1-git-send-email-antonynpavlov@gmail.com>
References: <1406582130-10116-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 05/11] gpio: add driver for Canon DIGIC
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/gpio/Kconfig      |   4 ++
 drivers/gpio/Makefile     |   1 +
 drivers/gpio/gpio-digic.c | 180 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 185 insertions(+)

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 6928fcb..0ca7df4 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -9,6 +9,10 @@ menu "GPIO"
 config GPIO_GENERIC
 	bool
 
+config GPIO_DIGIC
+	bool "GPIO support for Canon DIGIC"
+	depends on ARCH_DIGIC
+
 config GPIO_BCM2835
 	bool "GPIO support for BCM2835"
 	depends on ARCH_BCM2835
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index ece5efd..510d146 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -3,6 +3,7 @@ obj-$(CONFIG_GPIOLIB)		+= gpiolib.o
 obj-$(CONFIG_GPIO_BCM2835)	+= gpio-bcm2835.o
 obj-$(CONFIG_GPIO_DAVINCI)	+= gpio-davinci.o
 obj-$(CONFIG_GPIO_CLPS711X)	+= gpio-clps711x.o
+obj-$(CONFIG_GPIO_DIGIC)	+= gpio-digic.o
 obj-$(CONFIG_GPIO_GENERIC)	+= gpio-generic.o
 obj-$(CONFIG_GPIO_IMX)		+= gpio-imx.o
 obj-$(CONFIG_GPIO_JZ4740)	+= gpio-jz4740.o
diff --git a/drivers/gpio/gpio-digic.c b/drivers/gpio/gpio-digic.c
new file mode 100644
index 0000000..468aaa7
--- /dev/null
+++ b/drivers/gpio/gpio-digic.c
@@ -0,0 +1,180 @@
+/*
+ * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <malloc.h>
+#include <errno.h>
+#include <io.h>
+#include <gpio.h>
+#include <init.h>
+
+/*
+ * See http://magiclantern.wikia.com/wiki/Register_Map#GPIO_Ports
+ */
+
+#define DIGIC_GPIO_IN_LVL	1
+#define DIGIC_GPIO_OUT_LVL	2
+#define DIGIC_GPIO_DIR	4
+#define DIGIC_GPIO_TRISTATE	8
+
+struct digic_gpio_chip {
+	void __iomem		*base;
+	struct gpio_chip	gc;
+};
+
+#define to_digic_gpio_chip(c) container_of(c, struct digic_gpio_chip, gc)
+
+static inline uint32_t digic_gpio_readl(struct digic_gpio_chip *chip,
+					uint32_t offset)
+{
+	return readl(chip->base + 4 * offset);
+}
+
+static inline void digic_gpio_writel(struct digic_gpio_chip *chip,
+					uint32_t value, uint32_t offset)
+{
+	writel(value, chip->base + 4 * offset);
+}
+
+static int digic_gpio_get_value(struct gpio_chip *gc, unsigned offset)
+{
+	struct digic_gpio_chip *chip = to_digic_gpio_chip(gc);
+
+	if (offset >= gc->ngpio)
+		return -EINVAL;
+
+	return digic_gpio_readl(chip, offset) & DIGIC_GPIO_IN_LVL;
+}
+
+static void digic_gpio_set_value(struct gpio_chip *gc, unsigned offset,
+					int value)
+{
+	struct digic_gpio_chip *chip = to_digic_gpio_chip(gc);
+	uint32_t t;
+
+	if (offset >= gc->ngpio)
+		return;
+
+	t = digic_gpio_readl(chip, offset);
+	/* Port direction (1 = OUT, 0 = IN) */
+	if (value)
+		t |= DIGIC_GPIO_OUT_LVL;
+	else
+		t &= ~(DIGIC_GPIO_OUT_LVL);
+	digic_gpio_writel(chip, t, offset);
+}
+
+static int digic_gpio_direction_input(struct gpio_chip *gc, unsigned offset)
+{
+	struct digic_gpio_chip *chip = to_digic_gpio_chip(gc);
+	uint32_t t;
+
+	if (offset >= gc->ngpio)
+		return -EINVAL;
+
+	t = digic_gpio_readl(chip, offset);
+	/* Port direction (1 = OUT, 0 = IN) */
+	t &= ~(DIGIC_GPIO_DIR);
+	digic_gpio_writel(chip, t, offset);
+
+	return 0;
+}
+
+static int digic_gpio_direction_output(struct gpio_chip *gc, unsigned offset,
+		int value)
+{
+	struct digic_gpio_chip *chip = to_digic_gpio_chip(gc);
+	uint32_t t;
+
+	if (offset >= gc->ngpio)
+		return -EINVAL;
+
+	t = digic_gpio_readl(chip, offset);
+	/* Port direction (1 = OUT, 0 = IN) */
+	t |= DIGIC_GPIO_DIR;
+	digic_gpio_writel(chip, t, offset);
+
+	digic_gpio_set_value(gc, offset, value);
+
+	return 0;
+}
+
+static struct gpio_ops digic_gpio_ops = {
+	.direction_input = digic_gpio_direction_input,
+	.direction_output = digic_gpio_direction_output,
+	.get = digic_gpio_get_value,
+	.set = digic_gpio_set_value,
+};
+
+static int digic_gpio_probe(struct device_d *dev)
+{
+	struct digic_gpio_chip *chip;
+	struct resource *res;
+	resource_size_t rsize;
+	int ret = -EINVAL;
+
+	chip = xzalloc(sizeof(*chip));
+
+	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	if (!res)
+		goto err;
+
+	rsize = resource_size(res);
+	chip->gc.ngpio = rsize / sizeof(int32_t);
+
+	chip->base = dev_request_mem_region(dev, 0);
+	chip->gc.ops = &digic_gpio_ops;
+	chip->gc.base = 0;
+
+	chip->gc.dev = dev;
+
+	ret = gpiochip_add(&chip->gc);
+	if (ret) {
+		dev_err(dev, "couldn't add gpiochip, ret = %d\n", ret);
+		goto err;
+	}
+
+	dev_info(dev, "probed gpiochip%d with base %d\n",
+			dev->id, chip->gc.base);
+
+	return 0;
+
+err:
+	kfree(chip);
+
+	return ret;
+}
+
+static __maybe_unused struct of_device_id digic_gpio_dt_ids[] = {
+	{
+		.compatible = "canon,digic-gpio",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d digic_gpio_driver = {
+	.name = "digic-gpio",
+	.probe = digic_gpio_probe,
+	.of_compatible = DRV_OF_COMPAT(digic_gpio_dt_ids),
+};
+
+static int digic_gpio_init(void)
+{
+	return platform_driver_register(&digic_gpio_driver);
+}
+coredevice_initcall(digic_gpio_init);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
