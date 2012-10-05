Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TK7wt-0005ks-17
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 13:28:15 +0000
Received: from mail413.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 9448E104F78D
 for <barebox@lists.infradead.org>; Fri,  5 Oct 2012 15:34:20 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  5 Oct 2012 15:25:35 +0200
Message-Id: <1349443536-16923-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1349443536-16923-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121005132017.GS26553@game.jcrosoft.org>
 <1349443536-16923-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/4] gpio: add ARM Primcell pl061 support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/gpio/Kconfig       |    6 ++
 drivers/gpio/Makefile      |    2 +
 drivers/gpio/gpio-pl061.c  |  158 ++++++++++++++++++++++++++++++++++++++++++++
 include/linux/amba/pl061.h |   12 ++++
 4 files changed, 178 insertions(+)
 create mode 100644 drivers/gpio/gpio-pl061.c
 create mode 100644 include/linux/amba/pl061.h

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index f03fbf6..a0e9b58 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -6,6 +6,12 @@ if GPIOLIB
 
 menu "GPIO                          "
 
+config GPIO_PL061
+	bool "PrimeCell PL061 GPIO support"
+	depends on ARM_AMBA
+	help
+	  Say yes here to support the PrimeCell PL061 GPIO device
+
 config GPIO_STMPE
 	depends on I2C_STMPE
 	bool "STMPE GPIO Expander"
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 945122b..e2e97d3 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -1,2 +1,4 @@
 obj-$(CONFIG_GPIOLIB) += gpio.o
+
+obj-$(CONFIG_GPIO_PL061)	+= gpio-pl061.o
 obj-$(CONFIG_GPIO_STMPE) += gpio-stmpe.o
diff --git a/drivers/gpio/gpio-pl061.c b/drivers/gpio/gpio-pl061.c
new file mode 100644
index 0000000..f34aba9
--- /dev/null
+++ b/drivers/gpio/gpio-pl061.c
@@ -0,0 +1,158 @@
+/*
+ * Copyright (C) 2008, 2009 Provigent Ltd.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * Driver for the ARM PrimeCell(tm) General Purpose Input/Output (PL061)
+ *
+ * Data sheet: ARM DDI 0190B, September 2000
+ */
+#include <common.h>
+#include <malloc.h>
+#include <errno.h>
+#include <io.h>
+#include <gpio.h>
+#include <init.h>
+
+#include <linux/amba/bus.h>
+#include <linux/amba/pl061.h>
+
+#define GPIODIR 0x400
+#define GPIOIS  0x404
+#define GPIOIBE 0x408
+#define GPIOIEV 0x40C
+#define GPIOIE  0x410
+#define GPIORIS 0x414
+#define GPIOMIS 0x418
+#define GPIOIC  0x41C
+
+#define PL061_GPIO_NR	8
+
+struct pl061_gpio {
+	void __iomem		*base;
+	struct gpio_chip	gc;
+};
+
+static int pl061_direction_input(struct gpio_chip *gc, unsigned offset)
+{
+	struct pl061_gpio *chip = container_of(gc, struct pl061_gpio, gc);
+	unsigned char gpiodir;
+
+	if (offset >= gc->ngpio)
+		return -EINVAL;
+
+	gpiodir = readb(chip->base + GPIODIR);
+	gpiodir &= ~(1 << offset);
+	writeb(gpiodir, chip->base + GPIODIR);
+
+	return 0;
+}
+
+static int pl061_direction_output(struct gpio_chip *gc, unsigned offset,
+		int value)
+{
+	struct pl061_gpio *chip = container_of(gc, struct pl061_gpio, gc);
+	unsigned char gpiodir;
+
+	if (offset >= gc->ngpio)
+		return -EINVAL;
+
+	writeb(!!value << offset, chip->base + (1 << (offset + 2)));
+	gpiodir = readb(chip->base + GPIODIR);
+	gpiodir |= 1 << offset;
+	writeb(gpiodir, chip->base + GPIODIR);
+
+	/*
+	 * gpio value is set again, because pl061 doesn't allow to set value of
+	 * a gpio pin before configuring it in OUT mode.
+	 */
+	writeb(!!value << offset, chip->base + (1 << (offset + 2)));
+
+	return 0;
+}
+
+static int pl061_get_value(struct gpio_chip *gc, unsigned offset)
+{
+	struct pl061_gpio *chip = container_of(gc, struct pl061_gpio, gc);
+
+	return !!readb(chip->base + (1 << (offset + 2)));
+}
+
+static void pl061_set_value(struct gpio_chip *gc, unsigned offset, int value)
+{
+	struct pl061_gpio *chip = container_of(gc, struct pl061_gpio, gc);
+
+	writeb(!!value << offset, chip->base + (1 << (offset + 2)));
+}
+
+static struct gpio_ops pl061_gpio_ops = {
+	.direction_input = pl061_direction_input,
+	.direction_output = pl061_direction_output,
+	.get = pl061_get_value,
+	.set = pl061_set_value,
+};
+
+static int pl061_probe(struct amba_device *dev, const struct amba_id *id)
+{
+	struct pl061_platform_data *pdata;
+	struct pl061_gpio *chip;
+	int ret;
+
+	chip = xzalloc(sizeof(*chip));
+
+	pdata = dev->dev.platform_data;
+	if (pdata) {
+		chip->gc.base = pdata->gpio_base;
+	} else {
+		chip->gc.base = -1;
+	}
+
+	chip->base = amba_get_mem_region(dev);
+
+	chip->gc.ops = &pl061_gpio_ops;
+	chip->gc.ngpio = PL061_GPIO_NR;
+	chip->gc.dev = &dev->dev;
+
+	ret = gpiochip_add(&chip->gc);
+	if (ret) {
+		dev_err(&dev->dev, "couldn't add gpiochip, ret = %d\n", ret);
+		goto free_mem;
+	}
+
+	writeb(0, chip->base + GPIOIE); /* disable irqs */
+
+	return 0;
+
+free_mem:
+	kfree(chip);
+
+	return ret;
+}
+
+static struct amba_id pl061_ids[] = {
+	{
+		.id	= 0x00041061,
+		.mask	= 0x000fffff,
+	},
+	{ 0, 0 },
+};
+
+static struct amba_driver pl061_gpio_driver = {
+	.drv = {
+		.name	= "pl061_gpio",
+	},
+	.id_table	= pl061_ids,
+	.probe		= pl061_probe,
+};
+
+static int __init pl061_gpio_init(void)
+{
+	return amba_driver_register(&pl061_gpio_driver);
+}
+coredevice_initcall(pl061_gpio_init);
+
+MODULE_AUTHOR("Baruch Siach <baruch@tkos.co.il>");
+MODULE_DESCRIPTION("PL061 GPIO driver");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/amba/pl061.h b/include/linux/amba/pl061.h
new file mode 100644
index 0000000..d498cd7
--- /dev/null
+++ b/include/linux/amba/pl061.h
@@ -0,0 +1,12 @@
+#ifndef __AMBA_PL061_H__
+#define __AMBA_PL061_H__
+
+#include <linux/types.h>
+
+/* platform data for the PL061 GPIO driver */
+
+struct pl061_platform_data {
+	/* number of the first GPIO */
+	unsigned	gpio_base;
+};
+#endif /* __AMBA_PL061_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
