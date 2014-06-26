Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0IUY-00036J-1r
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 22:50:07 +0000
Received: by mail-la0-f41.google.com with SMTP id hz20so2399005lab.14
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 15:49:42 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 27 Jun 2014 02:49:30 +0400
Message-Id: <1403822973-3151-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1403822973-3151-1-git-send-email-antonynpavlov@gmail.com>
References: <1403822973-3151-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/4] gpio: add jz4740-gpio driver for Ingenic MIPS SoCs
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/gpio/Kconfig       |   6 ++
 drivers/gpio/Makefile      |   1 +
 drivers/gpio/gpio-jz4740.c | 140 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 147 insertions(+)

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 45b8c53..f98a9c0 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -37,6 +37,12 @@ config GPIO_GENERIC_PLATFORM
 config GPIO_IMX
 	def_bool ARCH_IMX
 
+config GPIO_JZ4740
+	bool "GPIO support for Ingenic SoCs"
+	depends on MACH_MIPS_XBURST
+	help
+	  Say yes here to enable the GPIO driver for the Ingenic SoCs.
+
 config GPIO_MALTA_FPGA_I2C
 	bool "Malta CBUS FPGA I2C GPIO"
 	depends on MACH_MIPS_MALTA
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index add6ffc..22d2ac0 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_GPIO_DAVINCI)	+= gpio-davinci.o
 obj-$(CONFIG_GPIO_CLPS711X)	+= gpio-clps711x.o
 obj-$(CONFIG_GPIO_GENERIC)	+= gpio-generic.o
 obj-$(CONFIG_GPIO_IMX)		+= gpio-imx.o
+obj-$(CONFIG_GPIO_JZ4740)	+= gpio-jz4740.o
 obj-$(CONFIG_GPIO_MALTA_FPGA_I2C) += gpio-malta-fpga-i2c.o
 obj-$(CONFIG_GPIO_ORION)	+= gpio-orion.o
 obj-$(CONFIG_GPIO_OMAP)		+= gpio-omap.o
diff --git a/drivers/gpio/gpio-jz4740.c b/drivers/gpio/gpio-jz4740.c
new file mode 100644
index 0000000..3c8efad
--- /dev/null
+++ b/drivers/gpio/gpio-jz4740.c
@@ -0,0 +1,140 @@
+/*
+ * Copyright (C) 2013, 2014 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * Based on Linux JZ4740 platform GPIO support:
+ * Copyright (C) 2009-2010, Lars-Peter Clausen <lars@metafoo.de>
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
+#include <init.h>
+#include <io.h>
+#include <gpio.h>
+#include <malloc.h>
+
+#define JZ_REG_GPIO_PIN			0x00
+#define JZ_REG_GPIO_DATA		0x10
+#define JZ_REG_GPIO_DATA_SET		0x14
+#define JZ_REG_GPIO_DATA_CLEAR		0x18
+#define JZ_REG_GPIO_DIRECTION		0x60
+#define JZ_REG_GPIO_DIRECTION_SET	0x64
+#define JZ_REG_GPIO_DIRECTION_CLEAR	0x68
+
+#define GPIO_TO_BIT(gpio) BIT(gpio & 0x1f)
+#define CHIP_TO_REG(chip, reg) (gpio_chip_to_jz4740_gpio_chip(chip)->base + (reg))
+
+struct jz4740_gpio_chip {
+	void __iomem *base;
+	struct gpio_chip chip;
+};
+
+static inline struct jz4740_gpio_chip *gpio_chip_to_jz4740_gpio_chip(struct gpio_chip *chip)
+{
+	return container_of(chip, struct jz4740_gpio_chip, chip);
+}
+
+static int jz4740_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
+{
+	return !!(readl(CHIP_TO_REG(chip, JZ_REG_GPIO_PIN)) & BIT(gpio));
+}
+
+static void jz4740_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
+{
+	uint32_t __iomem *reg = CHIP_TO_REG(chip, JZ_REG_GPIO_DATA_SET);
+	reg += !value;
+	writel(BIT(gpio), reg);
+}
+
+static int jz4740_gpio_get_direction(struct gpio_chip *chip, unsigned gpio)
+{
+	if (readl(CHIP_TO_REG(chip, JZ_REG_GPIO_DIRECTION)) & BIT(gpio))
+		return GPIOF_DIR_OUT;
+
+	return GPIOF_DIR_IN;
+}
+
+static int jz4740_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
+{
+	writel(BIT(gpio), CHIP_TO_REG(chip, JZ_REG_GPIO_DIRECTION_CLEAR));
+
+	return 0;
+}
+
+static int jz4740_gpio_direction_output(struct gpio_chip *chip, unsigned gpio,
+	int value)
+{
+	jz4740_gpio_set_value(chip, gpio, value);
+	writel(BIT(gpio), CHIP_TO_REG(chip, JZ_REG_GPIO_DIRECTION_SET));
+
+	return 0;
+}
+
+static struct gpio_ops jz4740_gpio_ops = {
+	.direction_input = jz4740_gpio_direction_input,
+	.direction_output = jz4740_gpio_direction_output,
+	.get_direction = jz4740_gpio_get_direction,
+	.get = jz4740_gpio_get_value,
+	.set = jz4740_gpio_set_value,
+};
+
+static int jz4740_gpio_probe(struct device_d *dev)
+{
+	void __iomem *base;
+	struct jz4740_gpio_chip *jz4740_gpio;
+	int ret;
+
+	base = dev_request_mem_region(dev, 0);
+	if (!base) {
+		dev_err(dev, "could not get memory region\n");
+		return -ENODEV;
+	}
+
+	jz4740_gpio = xzalloc(sizeof(*jz4740_gpio));
+	jz4740_gpio->base = base;
+	jz4740_gpio->chip.ops = &jz4740_gpio_ops;
+	jz4740_gpio->chip.base = -1; /* dev->id * 32; */
+	jz4740_gpio->chip.ngpio = 32;
+	jz4740_gpio->chip.dev = dev;
+
+	ret = gpiochip_add(&jz4740_gpio->chip);
+	if (ret) {
+		dev_err(dev, "couldn't add gpiochip\n");
+		free(jz4740_gpio);
+		return ret;
+	}
+
+	dev_dbg(dev, "probed gpiochip%d with base %d\n",
+				dev->id, jz4740_gpio->chip.base);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id jz4740_gpio_dt_ids[] = {
+	{
+		.compatible = "ingenic,jz4740-gpio",
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct driver_d jz4740_gpio_driver = {
+	.name = "jz4740-gpio",
+	.probe = jz4740_gpio_probe,
+	.of_compatible	= DRV_OF_COMPAT(jz4740_gpio_dt_ids),
+};
+
+static int jz4740_gpio_init(void)
+{
+	return platform_driver_register(&jz4740_gpio_driver);
+}
+coredevice_initcall(jz4740_gpio_init);
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
