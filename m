Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i846Z-0003SJ-0u
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 15:00:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1i846X-0002P0-TJ
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 17:00:21 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1i846X-0001SP-LR
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 17:00:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 11 Sep 2019 17:00:19 +0200
Message-Id: <20190911150019.5236-2-m.felsch@pengutronix.de>
In-Reply-To: <20190911150019.5236-1-m.felsch@pengutronix.de>
References: <20190911150019.5236-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 2/2] gpio: add DA9062 MFD gpio support
To: barebox@lists.infradead.org

The DA9062 PMIC is a mfd device which have 5 gpios. These can be
configured to work as input/output or to have an alternate function.
This commit adds the support to configure the gpios as input or output.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpio/Kconfig       |   4 +
 drivers/gpio/Makefile      |   1 +
 drivers/gpio/gpio-da9062.c | 206 +++++++++++++++++++++++++++++++++++++
 3 files changed, 211 insertions(+)
 create mode 100644 drivers/gpio/gpio-da9062.c

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 7a1503198b..806b96ae26 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -13,6 +13,10 @@ config GPIO_DIGIC
 	bool "GPIO support for Canon DIGIC"
 	depends on ARCH_DIGIC
 
+config GPIO_DA9062
+	bool "GPIO support for DA9062 MFD"
+	depends on MFD_DA9063
+
 config GPIO_74164
 	bool "Generic SPI attached shift register"
 	depends on SPI
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 990df01788..6f2bf11af8 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -4,6 +4,7 @@ obj-$(CONFIG_GPIO_74164)	+= gpio-74164.o
 obj-$(CONFIG_MACH_MIPS_ATH79)	+= gpio-ath79.o
 obj-$(CONFIG_GPIO_DAVINCI)	+= gpio-davinci.o
 obj-$(CONFIG_GPIO_CLPS711X)	+= gpio-clps711x.o
+obj-$(CONFIG_GPIO_DA9062)	+= gpio-da9062.o
 obj-$(CONFIG_GPIO_DIGIC)	+= gpio-digic.o
 obj-$(CONFIG_GPIO_GENERIC)	+= gpio-generic.o
 obj-$(CONFIG_GPIO_IMX)		+= gpio-imx.o
diff --git a/drivers/gpio/gpio-da9062.c b/drivers/gpio/gpio-da9062.c
new file mode 100644
index 0000000000..2f018166cc
--- /dev/null
+++ b/drivers/gpio/gpio-da9062.c
@@ -0,0 +1,206 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Pengutronix, Marco Felsch <kernel@pengutronix.de>
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <gpio.h>
+#include <i2c/i2c.h>
+#include <linux/bitops.h>
+#include <malloc.h>
+
+struct da9062_gpio {
+	struct gpio_chip	gpio;
+	struct i2c_client	*client;
+	struct device_d		*dev;
+};
+
+#define DA9062AA_STATUS_B       0x002
+#define DA9062AA_GPIO_0_1       0x015
+#define DA9062AA_GPIO_MODE0_4	0x01D
+
+/* DA9062AA_GPIO_0_1 (addr=0x015) */
+#define DA9062AA_GPIO0_PIN_MASK         0x03
+
+#define DA9062_PIN_SHIFT(offset)	(4 * (offset % 2))
+#define DA9062_PIN_ALTERNATE		0x00 /* gpio alternate mode */
+#define DA9062_PIN_GPI			0x01 /* gpio in */
+#define DA9062_PIN_GPO_OD		0x02 /* gpio out open-drain */
+#define DA9062_PIN_GPO_PP		0x03 /* gpio out push-pull */
+
+static inline struct da9062_gpio *to_da9062(struct gpio_chip *chip)
+{
+	return container_of(chip, struct da9062_gpio, gpio);
+}
+
+static int gpio_da9062_reg_update(struct da9062_gpio *priv, unsigned int reg,
+				  uint8_t mask, uint8_t val)
+{
+	struct i2c_client *client;
+	uint8_t tmp;
+	int ret;
+
+	if (reg < 0x100)
+		client = priv->client;
+
+	if (WARN_ON(!client))
+		return -EINVAL;
+
+	ret = i2c_read_reg(client, reg & 0xffu, &tmp, 1);
+	if (ret < 0) {
+		dev_warn(priv->dev, "failed to read reg %02x\n", reg);
+		return ret;
+	}
+
+	tmp &= ~mask;
+	tmp |= val;
+
+	ret = i2c_write_reg(client, reg & 0xffu, &tmp, 1);
+	if (ret < 0) {
+		dev_warn(priv->dev, "failed to write %02x into reg %02x\n",
+			 tmp, reg);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int gpio_da9062_direction_input(struct gpio_chip *chip, unsigned offset)
+{
+	struct da9062_gpio *priv = to_da9062(chip);
+	u8 mask, mode;
+
+	mode = DA9062_PIN_GPI << DA9062_PIN_SHIFT(offset);
+	mask = DA9062AA_GPIO0_PIN_MASK << DA9062_PIN_SHIFT(offset);
+
+	return gpio_da9062_reg_update(priv, DA9062AA_GPIO_0_1 + (offset >> 1),
+				      mask, mode);
+}
+
+static int gpio_da9062_direction_output(struct gpio_chip *chip, unsigned offset,
+					int value)
+{
+	struct da9062_gpio *priv = to_da9062(chip);
+
+	return gpio_da9062_reg_update(priv, DA9062AA_GPIO_MODE0_4, BIT(offset),
+				      value << offset);
+}
+
+static int gpio_da9062_get_pin_mode(struct da9062_gpio *priv, unsigned offset)
+{
+	int ret;
+	u8 val;
+
+	ret = i2c_read_reg(priv->client, DA9062AA_GPIO_0_1 + (offset >> 1),
+			   &val, 1);
+	if (ret < 0)
+		return ret;
+
+	val >>= DA9062_PIN_SHIFT(offset);
+	val &= DA9062AA_GPIO0_PIN_MASK;
+
+	return val;
+}
+
+static int gpio_da9062_get(struct gpio_chip *chip, unsigned offset)
+{
+	struct da9062_gpio *priv = to_da9062(chip);
+	int gpio_dir;
+	int ret;
+	u8 val;
+
+	gpio_dir = gpio_da9062_get_pin_mode(priv, offset);
+	if (gpio_dir < 0)
+		return gpio_dir;
+
+	switch (gpio_dir) {
+	case DA9062_PIN_ALTERNATE:
+		return -ENOTSUPP;
+	case DA9062_PIN_GPI:
+		ret = i2c_read_reg(priv->client, DA9062AA_STATUS_B, &val, 1);
+		if (ret < 0)
+			return ret;
+		break;
+	case DA9062_PIN_GPO_OD:
+		/* falltrough */
+	case DA9062_PIN_GPO_PP:
+		ret = i2c_read_reg(priv->client, DA9062AA_GPIO_MODE0_4, &val, 1);
+		if (ret < 0)
+			return ret;
+	}
+
+	return val & BIT(offset);
+}
+
+static int gpio_da9062_get_direction(struct gpio_chip *chip, unsigned offset)
+{
+	struct da9062_gpio *priv = to_da9062(chip);
+	int gpio_dir;
+
+	gpio_dir = gpio_da9062_get_pin_mode(priv, offset);
+	if (gpio_dir < 0)
+		return gpio_dir;
+
+	switch (gpio_dir) {
+	case DA9062_PIN_ALTERNATE:
+		return -ENOTSUPP;
+	case DA9062_PIN_GPI:
+		return 1;
+	case DA9062_PIN_GPO_OD:
+		/* falltrough */
+	case DA9062_PIN_GPO_PP:
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
+static void gpio_da9062_set(struct gpio_chip *chip, unsigned offset, int value)
+{
+	struct da9062_gpio *priv = to_da9062(chip);
+
+	gpio_da9062_reg_update(priv, DA9062AA_GPIO_MODE0_4, BIT(offset),
+			       value << offset);
+}
+
+static struct gpio_ops gpio_da9062_ops = {
+	.direction_input	= gpio_da9062_direction_input,
+	.direction_output	= gpio_da9062_direction_output,
+	.get_direction		= gpio_da9062_get_direction,
+	.get			= gpio_da9062_get,
+	.set			= gpio_da9062_set,
+};
+
+static int gpio_da9062_probe(struct device_d *dev)
+{
+	struct da9062_gpio *priv;
+
+	if (!dev->parent)
+		return -EPROBE_DEFER;
+
+	priv = xzalloc(sizeof(*priv));
+	if (!priv)
+		return -ENOMEM;
+
+	priv->client = to_i2c_client(dev->parent);
+	priv->dev = dev;
+	priv->gpio.base = -1;
+	priv->gpio.ngpio = 5;
+	priv->gpio.ops  = &gpio_da9062_ops;
+	priv->gpio.dev = dev;
+
+	return gpiochip_add(&priv->gpio);
+}
+
+static struct of_device_id const gpio_da9062_dt_ids[] = {
+	{ .compatible	= "dlg,da9062-gpio", },
+	{ }
+};
+
+static struct driver_d gpio_da9062_driver = {
+	.name = "da9062-gpio",
+	.probe = gpio_da9062_probe,
+	.of_compatible  = DRV_OF_COMPAT(gpio_da9062_dt_ids),
+};
+device_platform_driver(gpio_da9062_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
