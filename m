Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzBgQ-0006wC-RC
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 21:21:48 +0000
Received: by mail-lb0-f181.google.com with SMTP id p9so5429834lbv.12
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 14:21:24 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 24 Jun 2014 01:21:07 +0400
Message-Id: <1403558473-26199-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1403558473-26199-1-git-send-email-antonynpavlov@gmail.com>
References: <1403558473-26199-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/7] gpio: add Malta CBUS FPGA I2C driver
To: barebox@lists.infradead.org

This driver provides common support for accessing
the CBUS FPGA I2C lines through the gpio library.

Additional i2c bitbang driver must be enabled
in order to use the functionality of the i2c controller.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/gpio/Kconfig               |  10 ++
 drivers/gpio/Makefile              |   1 +
 drivers/gpio/gpio-malta-fpga-i2c.c | 186 +++++++++++++++++++++++++++++++++++++
 3 files changed, 197 insertions(+)

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 7302955..45b8c53 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -37,6 +37,16 @@ config GPIO_GENERIC_PLATFORM
 config GPIO_IMX
 	def_bool ARCH_IMX
 
+config GPIO_MALTA_FPGA_I2C
+	bool "Malta CBUS FPGA I2C GPIO"
+	depends on MACH_MIPS_MALTA
+	help
+	  Support access to the CBUS FPGA I2C lines through the gpio library.
+
+	  This driver provides common support for accessing the device,
+	  additional drivers must be enabled in order to use the
+	  functionality of the device.
+
 config GPIO_OMAP
 	def_bool ARCH_OMAP
 
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 68a76a3..add6ffc 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_GPIO_DAVINCI)	+= gpio-davinci.o
 obj-$(CONFIG_GPIO_CLPS711X)	+= gpio-clps711x.o
 obj-$(CONFIG_GPIO_GENERIC)	+= gpio-generic.o
 obj-$(CONFIG_GPIO_IMX)		+= gpio-imx.o
+obj-$(CONFIG_GPIO_MALTA_FPGA_I2C) += gpio-malta-fpga-i2c.o
 obj-$(CONFIG_GPIO_ORION)	+= gpio-orion.o
 obj-$(CONFIG_GPIO_OMAP)		+= gpio-omap.o
 obj-$(CONFIG_GPIO_PL061)	+= gpio-pl061.o
diff --git a/drivers/gpio/gpio-malta-fpga-i2c.c b/drivers/gpio/gpio-malta-fpga-i2c.c
new file mode 100644
index 0000000..d6995aa
--- /dev/null
+++ b/drivers/gpio/gpio-malta-fpga-i2c.c
@@ -0,0 +1,186 @@
+/*
+ * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
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
+#include <linux/err.h>
+#include <malloc.h>
+
+struct malta_i2c_gpio {
+	void __iomem *base;
+	struct gpio_chip chip;
+};
+
+#define MALTA_I2CINP 0
+#define MALTA_I2COE  0x8
+#define MALTA_I2COUT 0x10
+#define MALTA_I2CSEL 0x18
+
+static inline struct malta_i2c_gpio *chip_to_malta_i2c_gpio(struct gpio_chip *c)
+{
+	return container_of(c, struct malta_i2c_gpio, chip);
+}
+
+static inline void malta_i2c_gpio_write(struct malta_i2c_gpio *sc,
+					u32 v, int reg)
+{
+	__raw_writel(v, sc->base + reg);
+}
+
+static inline u32 malta_i2c_gpio_read(struct malta_i2c_gpio *sc, int reg)
+{
+	return __raw_readl(sc->base + reg);
+}
+
+static inline int malta_i2c_gpio_get_bit(struct malta_i2c_gpio *sc,
+						int reg, int bit)
+{
+	return !!(malta_i2c_gpio_read(sc, reg) & BIT(bit));
+}
+
+static inline void malta_i2c_gpio_set_bit(struct malta_i2c_gpio *sc,
+						int reg, int bit, int v)
+{
+	u32 t;
+
+	t = malta_i2c_gpio_read(sc, reg);
+	if (v)
+		t |= BIT(bit);
+	else
+		t &= ~BIT(bit);
+
+	malta_i2c_gpio_write(sc, t, reg);
+}
+
+static int malta_i2c_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
+{
+	struct malta_i2c_gpio *sc = chip_to_malta_i2c_gpio(chip);
+
+	malta_i2c_gpio_set_bit(sc, MALTA_I2COE, gpio, 0);
+
+	return 0;
+}
+
+static int malta_i2c_gpio_direction_output(struct gpio_chip *chip,
+					unsigned gpio, int v)
+{
+	struct malta_i2c_gpio *sc = chip_to_malta_i2c_gpio(chip);
+
+	malta_i2c_gpio_set_bit(sc, MALTA_I2COUT, gpio, v);
+	malta_i2c_gpio_set_bit(sc, MALTA_I2COE, gpio, 1);
+
+	return 0;
+}
+
+static int malta_i2c_gpio_get_direction(struct gpio_chip *chip, unsigned gpio)
+{
+	struct malta_i2c_gpio *sc = chip_to_malta_i2c_gpio(chip);
+
+	if (malta_i2c_gpio_get_bit(sc, MALTA_I2COE, gpio))
+		return GPIOF_DIR_OUT;
+
+	return GPIOF_DIR_IN;
+}
+
+static int malta_i2c_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
+{
+	struct malta_i2c_gpio *sc = chip_to_malta_i2c_gpio(chip);
+	int v;
+
+	v = malta_i2c_gpio_get_bit(sc, MALTA_I2CINP, gpio);
+
+	pr_debug("%s: gpio_chip=%p gpio=%d value=%d\n",
+			__func__, chip, gpio, v);
+
+	return v;
+}
+
+static void malta_i2c_gpio_set_value(struct gpio_chip *chip,
+					unsigned gpio, int v)
+{
+	struct malta_i2c_gpio *sc = chip_to_malta_i2c_gpio(chip);
+
+	pr_debug("%s: gpio_chip=%p gpio=%d value=%d\n",
+			__func__, chip, gpio, v);
+
+	malta_i2c_gpio_set_bit(sc, MALTA_I2COUT, gpio, v);
+}
+
+static struct gpio_ops malta_i2c_gpio_ops = {
+	.direction_input = malta_i2c_gpio_direction_input,
+	.direction_output = malta_i2c_gpio_direction_output,
+	.get_direction = malta_i2c_gpio_get_direction,
+	.get = malta_i2c_gpio_get_value,
+	.set = malta_i2c_gpio_set_value,
+};
+
+static int malta_i2c_gpio_probe(struct device_d *dev)
+{
+	void __iomem *gpio_base;
+	struct malta_i2c_gpio *sc;
+	int ret;
+
+	gpio_base = dev_request_mem_region(dev, 0);
+	if (!gpio_base) {
+		dev_err(dev, "could not get memory region\n");
+		return -ENODEV;
+	}
+
+	sc = xzalloc(sizeof(*sc));
+	sc->base = gpio_base;
+	sc->chip.ops = &malta_i2c_gpio_ops;
+	sc->chip.base = -1;
+	sc->chip.ngpio = 2;
+	sc->chip.dev = dev;
+
+	ret = gpiochip_add(&sc->chip);
+	if (ret) {
+		dev_err(dev, "couldn't add gpiochip\n");
+		free(sc);
+		return ret;
+	}
+
+	malta_i2c_gpio_write(sc, 1, MALTA_I2CSEL);
+
+	dev_info(dev, "probed gpiochip%d with base %d\n",
+		dev->id, sc->chip.base);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id malta_i2c_gpio_dt_ids[] = {
+	{
+		.compatible = "mti,malta-fpga-i2c-gpio",
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct driver_d malta_i2c_gpio_driver = {
+	.name  = "malta-fpga-i2c-gpio",
+	.probe = malta_i2c_gpio_probe,
+	.of_compatible	= DRV_OF_COMPAT(malta_i2c_gpio_dt_ids),
+};
+
+static int malta_i2c_gpio_driver_init(void)
+{
+	return platform_driver_register(&malta_i2c_gpio_driver);
+}
+coredevice_initcall(malta_i2c_gpio_driver_init);
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
