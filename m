Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp16.mail.ru ([94.100.176.153])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEz0U-0005lZ-GU
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 09:27:01 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 11 Mar 2013 13:26:37 +0400
Message-Id: <1362994003-22653-7-git-send-email-shc_work@mail.ru>
In-Reply-To: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
References: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 07/13] ARM: clps711x: Add GPIO driver
To: barebox@lists.infradead.org

This patch adds support for CLPS711X GPIOs. Driver based on
generic GPIO driver.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/Kconfig                           |    1 +
 arch/arm/mach-clps711x/devices.c           |   82 ++++++++++++++++++++++++++++
 arch/arm/mach-clps711x/include/mach/gpio.h |    3 +
 drivers/gpio/Kconfig                       |    7 +++
 drivers/gpio/Makefile                      |    1 +
 drivers/gpio/gpio-clps711x.c               |   70 ++++++++++++++++++++++++
 6 files changed, 164 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-clps711x/include/mach/gpio.h
 create mode 100644 drivers/gpio/gpio-clps711x.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 6463746..ed0b453 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -42,6 +42,7 @@ config ARCH_CLPS711X
 	select CLOCKSOURCE_CLPS711X
 	select COMMON_CLK
 	select CPU_32v4T
+	select GPIOLIB
 
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
diff --git a/arch/arm/mach-clps711x/devices.c b/arch/arm/mach-clps711x/devices.c
index 6221da3..f94b584 100644
--- a/arch/arm/mach-clps711x/devices.c
+++ b/arch/arm/mach-clps711x/devices.c
@@ -111,3 +111,85 @@ void clps711x_add_uart(unsigned int id)
 		break;
 	}
 }
+
+static struct resource gpio0_resources[] = {
+	{
+		.start	= PADR,
+		.end	= PADR,
+		.flags	= IORESOURCE_MEM,
+	},
+	{
+		.start	= PADDR,
+		.end	= PADDR,
+		.flags	= IORESOURCE_MEM,
+	},
+};
+
+static struct resource gpio1_resources[] = {
+	{
+		.start	= PBDR,
+		.end	= PBDR,
+		.flags	= IORESOURCE_MEM,
+	},
+	{
+		.start	= PBDDR,
+		.end	= PBDDR,
+		.flags	= IORESOURCE_MEM,
+	},
+};
+
+static struct resource gpio2_resources[] = {
+	{
+		.start	= PCDR,
+		.end	= PCDR,
+		.flags	= IORESOURCE_MEM,
+	},
+	{
+		.start	= PCDDR,
+		.end	= PCDDR,
+		.flags	= IORESOURCE_MEM,
+	},
+};
+
+static struct resource gpio3_resources[] = {
+	{
+		.start	= PDDR,
+		.end	= PDDR,
+		.flags	= IORESOURCE_MEM,
+	},
+	{
+		.start	= PDDDR,
+		.end	= PDDDR,
+		.flags	= IORESOURCE_MEM,
+	},
+};
+
+static struct resource gpio4_resources[] = {
+	{
+		.start	= PEDR,
+		.end	= PEDR,
+		.flags	= IORESOURCE_MEM,
+	},
+	{
+		.start	= PEDDR,
+		.end	= PEDDR,
+		.flags	= IORESOURCE_MEM,
+	},
+};
+
+static __init int clps711x_gpio_init(void)
+{
+	add_generic_device_res("clps711x-gpio", 0, gpio0_resources,
+			       ARRAY_SIZE(gpio0_resources), NULL);
+	add_generic_device_res("clps711x-gpio", 1, gpio1_resources,
+			       ARRAY_SIZE(gpio1_resources), NULL);
+	add_generic_device_res("clps711x-gpio", 2, gpio2_resources,
+			       ARRAY_SIZE(gpio2_resources), NULL);
+	add_generic_device_res("clps711x-gpio", 3, gpio3_resources,
+			       ARRAY_SIZE(gpio3_resources), NULL);
+	add_generic_device_res("clps711x-gpio", 4, gpio4_resources,
+			       ARRAY_SIZE(gpio4_resources), NULL);
+
+	return 0;
+}
+coredevice_initcall(clps711x_gpio_init);
diff --git a/arch/arm/mach-clps711x/include/mach/gpio.h b/arch/arm/mach-clps711x/include/mach/gpio.h
new file mode 100644
index 0000000..3428fe5
--- /dev/null
+++ b/arch/arm/mach-clps711x/include/mach/gpio.h
@@ -0,0 +1,3 @@
+#include <asm-generic/gpio.h>
+
+#define CLPS711X_GPIO(prt,bit)	((prt) * 8 + (bit))
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 895eb68..ea07028 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -13,6 +13,13 @@ config GPIO_BCM2835
 	bool "GPIO support for BCM2835"
 	depends on ARCH_BCM2835
 
+config GPIO_CLPS711X
+	bool "GPIO support for CLPS711X"
+	depends on ARCH_CLPS711X
+	select GPIO_GENERIC
+	help
+	  Say yes here to enable the GPIO driver for the CLPS711X CPUs
+
 config GPIO_GENERIC_PLATFORM
 	bool "Generic memory-mapped GPIO controller support"
 	select GPIO_GENERIC
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 1ef345c..00acb68 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_GPIOLIB)		+= gpio.o
 obj-$(CONFIG_GPIO_BCM2835)	+= gpio-bcm2835.o
+obj-$(CONFIG_GPIO_CLPS711X)	+= gpio-clps711x.o
 obj-$(CONFIG_GPIO_GENERIC)	+= gpio-generic.o
 obj-$(CONFIG_GPIO_PL061)	+= gpio-pl061.o
 obj-$(CONFIG_GPIO_STMPE)	+= gpio-stmpe.o
diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
new file mode 100644
index 0000000..feead51
--- /dev/null
+++ b/drivers/gpio/gpio-clps711x.c
@@ -0,0 +1,70 @@
+/*
+ * Copyright (C) 2013 Alexander Shiyan <shc_work@mail.ru>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ */
+
+#include <init.h>
+#include <common.h>
+#include <malloc.h>
+
+#include <linux/basic_mmio_gpio.h>
+
+static int clps711x_gpio_probe(struct device_d *dev)
+{
+	int err;
+	void __iomem *dat, *dir = NULL, *dir_inv = NULL;
+	struct bgpio_chip *bgc;
+
+	if ((dev->id < 0) || (dev->id > 4))
+		return -ENODEV;
+
+	dat = dev_request_mem_region(dev, 0);
+	switch (dev->id) {
+	case 3:
+		dir_inv = dev_request_mem_region(dev, 1);
+		break;
+	default:
+		dir = dev_request_mem_region(dev, 1);
+		break;
+	}
+
+	if (!dat || (!dir && !dir_inv))
+		return -EINVAL;
+
+	bgc = xzalloc(sizeof(struct bgpio_chip));
+	if (!bgc)
+		return -ENOMEM;
+
+	err = bgpio_init(bgc, dev, 1, dat, NULL, NULL, dir, dir_inv, 0);
+	if (err) {
+		free(bgc);
+		return err;
+	}
+
+	bgc->gc.base = dev->id * 8;
+	switch (dev->id) {
+	case 4:
+		bgc->gc.ngpio = 3;
+		break;
+	default:
+		bgc->gc.ngpio = 8;
+		break;
+	}
+
+	return gpiochip_add(&bgc->gc);
+}
+
+static struct driver_d clps711x_gpio_driver = {
+	.name	= "clps711x-gpio",
+	.probe	= clps711x_gpio_probe,
+};
+
+static __init int clps711x_gpio_register(void)
+{
+	return platform_driver_register(&clps711x_gpio_driver);
+}
+coredevice_initcall(clps711x_gpio_register);
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
