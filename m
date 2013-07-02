Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x230.google.com ([2a00:1450:4008:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uu5MH-00063A-6L
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 18:31:27 +0000
Received: by mail-bk0-f48.google.com with SMTP id jf17so2488925bkc.7
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2013 11:31:01 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue,  2 Jul 2013 20:30:46 +0200
Message-Id: <1372789849-12194-8-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 07/10] GPIO: add Marvell Orion/MVEBU SoC GPIO driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This adds a DT only driver for the GPIO controller found on Marvell
Orion/MVEBU SoCs (Armada 370/XP, Dove, Kirkwood, MV78x00, Orion5x).

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 arch/arm/Kconfig                        |    1 +
 arch/arm/mach-mvebu/include/mach/gpio.h |    6 ++
 drivers/gpio/Kconfig                    |    8 ++
 drivers/gpio/Makefile                   |    1 +
 drivers/gpio/gpio-orion.c               |  132 +++++++++++++++++++++++++++++++
 5 files changed, 148 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-mvebu/include/mach/gpio.h
 create mode 100644 drivers/gpio/gpio-orion.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index cfb82b0..c60deb4 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -83,6 +83,7 @@ config ARCH_MVEBU
 	bool "Marvell EBU platforms"
 	select COMMON_CLK
 	select CLKDEV_LOOKUP
+	select GPIOLIB
 	select HAS_DEBUG_LL
 
 config ARCH_MXS
diff --git a/arch/arm/mach-mvebu/include/mach/gpio.h b/arch/arm/mach-mvebu/include/mach/gpio.h
new file mode 100644
index 0000000..fee693e
--- /dev/null
+++ b/arch/arm/mach-mvebu/include/mach/gpio.h
@@ -0,0 +1,6 @@
+#ifndef __ASM_ARCH_GPIO_H
+#define __ASM_ARCH_GPIO_H
+
+#include <asm-generic/gpio.h>
+
+#endif /* __ASM_ARCH_GPIO_H */
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index e976db4..d5ac532 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -30,6 +30,14 @@ config GPIO_GENERIC_PLATFORM
 config GPIO_IMX
 	def_bool ARCH_IMX
 
+config GPIO_ORION
+	bool "GPIO support for Marvell Orion/MVEBU SoCs"
+	depends on ARCH_MVEBU
+	help
+	  Say yes here to add the driver for the GPIO controller
+	  found on Marvell Orion and MVEBU SoCs (Armada 370/XP,
+	  Dove, Kirkwood, MV78x00, Orion5x).
+
 config GPIO_PL061
 	bool "PrimeCell PL061 GPIO support"
 	depends on ARM_AMBA
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index c1ec5bf..adb668f 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -4,6 +4,7 @@ obj-$(CONFIG_GPIO_BCM2835)	+= gpio-bcm2835.o
 obj-$(CONFIG_GPIO_CLPS711X)	+= gpio-clps711x.o
 obj-$(CONFIG_GPIO_GENERIC)	+= gpio-generic.o
 obj-$(CONFIG_GPIO_IMX)		+= gpio-imx.o
+obj-$(CONFIG_GPIO_ORION)	+= gpio-orion.o
 obj-$(CONFIG_GPIO_PL061)	+= gpio-pl061.o
 obj-$(CONFIG_GPIO_STMPE)	+= gpio-stmpe.o
 obj-$(CONFIG_GPIO_TEGRA)	+= gpio-tegra.o
diff --git a/drivers/gpio/gpio-orion.c b/drivers/gpio/gpio-orion.c
new file mode 100644
index 0000000..855763e
--- /dev/null
+++ b/drivers/gpio/gpio-orion.c
@@ -0,0 +1,132 @@
+/*
+ * Marvell Orion/MVEBU SoC GPIO driver
+ *
+ * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
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
+#include <gpio.h>
+#include <init.h>
+#include <io.h>
+#include <malloc.h>
+
+struct orion_gpio_regs {
+	u32 data_o;
+	u32 data_o_en;
+	u32 blink;
+	u32 data_i_pol;
+	u32 data_i;
+	u32 irq_cause;
+	u32 irq_mask;
+	u32 irq_level_mask;
+};
+
+struct orion_gpio_chip {
+	struct gpio_chip chip;
+	struct orion_gpio_regs __iomem *regs;
+};
+
+static int orion_gpio_direction_input(struct gpio_chip *chip, unsigned off)
+{
+	struct orion_gpio_chip *gpio =
+		container_of(chip, struct orion_gpio_chip, chip);
+	writel(readl(&gpio->regs->data_o_en) | BIT(off),
+		&gpio->regs->data_o_en);
+	return 0;
+}
+
+static int orion_gpio_direction_output(
+	struct gpio_chip *chip, unsigned off, int value)
+{
+	struct orion_gpio_chip *gpio =
+		container_of(chip, struct orion_gpio_chip, chip);
+	gpio->chip.ops->set(chip, off, value);
+	writel(readl(&gpio->regs->data_o_en) & ~BIT(off),
+		&gpio->regs->data_o_en);
+	return 0;
+}
+
+static int orion_gpio_get_value(struct gpio_chip *chip, unsigned off)
+{
+	struct orion_gpio_chip *gpio =
+		container_of(chip, struct orion_gpio_chip, chip);
+	return (readl(&gpio->regs->data_i) & BIT(off)) ? 1 : 0;
+}
+
+static void orion_gpio_set_value(
+	struct gpio_chip *chip, unsigned off, int value)
+{
+	struct orion_gpio_chip *gpio =
+		container_of(chip, struct orion_gpio_chip, chip);
+	u32 val;
+
+	val = readl(&gpio->regs->data_o);
+	if (value)
+		val |= BIT(off);
+	else
+		val &= ~BIT(off);
+	writel(val, &gpio->regs->data_o);
+}
+
+static struct gpio_ops orion_gpio_ops = {
+	.direction_input = orion_gpio_direction_input,
+	.direction_output = orion_gpio_direction_output,
+	.get = orion_gpio_get_value,
+	.set = orion_gpio_set_value,
+};
+
+static int orion_gpio_probe(struct device_d *dev)
+{
+	struct orion_gpio_chip *gpio;
+
+	dev->id = of_alias_get_id(dev->device_node, "gpio");
+	if (dev->id < 0)
+		return dev->id;
+
+	gpio = xzalloc(sizeof(*gpio));
+	gpio->regs = dev_request_mem_region(dev, 0);
+	if (!gpio->regs) {
+		free(gpio);
+		return -EINVAL;
+	}
+	gpio->chip.dev = dev;
+	gpio->chip.ops = &orion_gpio_ops;
+	gpio->chip.base = dev->id * 32;
+	gpio->chip.ngpio = 32;
+	of_property_read_u32(dev->device_node, "ngpios", &gpio->chip.ngpio);
+
+	gpiochip_add(&gpio->chip);
+
+	dev_dbg(dev, "probed gpio%d with base %d\n", dev->id, gpio->chip.base);
+
+	return 0;
+}
+
+static struct of_device_id orion_gpio_dt_ids[] = {
+	{ .compatible = "marvell,orion-gpio", },
+	{ }
+};
+
+static struct driver_d orion_gpio_driver = {
+	.name = "orion-gpio",
+	.probe = orion_gpio_probe,
+	.of_compatible = DRV_OF_COMPAT(orion_gpio_dt_ids),
+};
+
+static int orion_gpio_init(void)
+{
+	return platform_driver_register(&orion_gpio_driver);
+}
+postcore_initcall(orion_gpio_init);
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
