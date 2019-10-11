Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIpFk-0005XC-D3
 for barebox@lists.infradead.org; Fri, 11 Oct 2019 07:22:22 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1iIpFj-0008Vq-9r
 for barebox@lists.infradead.org; Fri, 11 Oct 2019 09:22:19 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1iIpFj-0003Yl-2A
 for barebox@lists.infradead.org; Fri, 11 Oct 2019 09:22:19 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Fri, 11 Oct 2019 09:22:17 +0200
Message-Id: <20191011072217.13607-1-m.felsch@pengutronix.de>
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
Subject: [PATCH] fixup! gpio: add DA9062 MFD gpio support
To: barebox@lists.infradead.org

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Hi,

We need to move the gpio-controller to the mfd root node due to
hierarchical GPIO irqchips to keep inline with the linux bindings.
Please see the discussion [1] for further information.

[1] https://patchwork.ozlabs.org/patch/1163309/

Regards,
  Marco

 drivers/gpio/Kconfig       |   4 -
 drivers/gpio/Makefile      |   1 -
 drivers/gpio/gpio-da9062.c | 206 -------------------------------------
 drivers/mfd/da9063.c       | 136 ++++++++++++++++++++++++
 4 files changed, 136 insertions(+), 211 deletions(-)
 delete mode 100644 drivers/gpio/gpio-da9062.c

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 806b96ae26..7a1503198b 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -13,10 +13,6 @@ config GPIO_DIGIC
 	bool "GPIO support for Canon DIGIC"
 	depends on ARCH_DIGIC
 
-config GPIO_DA9062
-	bool "GPIO support for DA9062 MFD"
-	depends on MFD_DA9063
-
 config GPIO_74164
 	bool "Generic SPI attached shift register"
 	depends on SPI
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 6f2bf11af8..990df01788 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -4,7 +4,6 @@ obj-$(CONFIG_GPIO_74164)	+= gpio-74164.o
 obj-$(CONFIG_MACH_MIPS_ATH79)	+= gpio-ath79.o
 obj-$(CONFIG_GPIO_DAVINCI)	+= gpio-davinci.o
 obj-$(CONFIG_GPIO_CLPS711X)	+= gpio-clps711x.o
-obj-$(CONFIG_GPIO_DA9062)	+= gpio-da9062.o
 obj-$(CONFIG_GPIO_DIGIC)	+= gpio-digic.o
 obj-$(CONFIG_GPIO_GENERIC)	+= gpio-generic.o
 obj-$(CONFIG_GPIO_IMX)		+= gpio-imx.o
diff --git a/drivers/gpio/gpio-da9062.c b/drivers/gpio/gpio-da9062.c
deleted file mode 100644
index 2f018166cc..0000000000
--- a/drivers/gpio/gpio-da9062.c
+++ /dev/null
@@ -1,206 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * Copyright (C) 2019 Pengutronix, Marco Felsch <kernel@pengutronix.de>
- */
-
-#include <common.h>
-#include <driver.h>
-#include <gpio.h>
-#include <i2c/i2c.h>
-#include <linux/bitops.h>
-#include <malloc.h>
-
-struct da9062_gpio {
-	struct gpio_chip	gpio;
-	struct i2c_client	*client;
-	struct device_d		*dev;
-};
-
-#define DA9062AA_STATUS_B       0x002
-#define DA9062AA_GPIO_0_1       0x015
-#define DA9062AA_GPIO_MODE0_4	0x01D
-
-/* DA9062AA_GPIO_0_1 (addr=0x015) */
-#define DA9062AA_GPIO0_PIN_MASK         0x03
-
-#define DA9062_PIN_SHIFT(offset)	(4 * (offset % 2))
-#define DA9062_PIN_ALTERNATE		0x00 /* gpio alternate mode */
-#define DA9062_PIN_GPI			0x01 /* gpio in */
-#define DA9062_PIN_GPO_OD		0x02 /* gpio out open-drain */
-#define DA9062_PIN_GPO_PP		0x03 /* gpio out push-pull */
-
-static inline struct da9062_gpio *to_da9062(struct gpio_chip *chip)
-{
-	return container_of(chip, struct da9062_gpio, gpio);
-}
-
-static int gpio_da9062_reg_update(struct da9062_gpio *priv, unsigned int reg,
-				  uint8_t mask, uint8_t val)
-{
-	struct i2c_client *client;
-	uint8_t tmp;
-	int ret;
-
-	if (reg < 0x100)
-		client = priv->client;
-
-	if (WARN_ON(!client))
-		return -EINVAL;
-
-	ret = i2c_read_reg(client, reg & 0xffu, &tmp, 1);
-	if (ret < 0) {
-		dev_warn(priv->dev, "failed to read reg %02x\n", reg);
-		return ret;
-	}
-
-	tmp &= ~mask;
-	tmp |= val;
-
-	ret = i2c_write_reg(client, reg & 0xffu, &tmp, 1);
-	if (ret < 0) {
-		dev_warn(priv->dev, "failed to write %02x into reg %02x\n",
-			 tmp, reg);
-		return ret;
-	}
-
-	return 0;
-}
-
-static int gpio_da9062_direction_input(struct gpio_chip *chip, unsigned offset)
-{
-	struct da9062_gpio *priv = to_da9062(chip);
-	u8 mask, mode;
-
-	mode = DA9062_PIN_GPI << DA9062_PIN_SHIFT(offset);
-	mask = DA9062AA_GPIO0_PIN_MASK << DA9062_PIN_SHIFT(offset);
-
-	return gpio_da9062_reg_update(priv, DA9062AA_GPIO_0_1 + (offset >> 1),
-				      mask, mode);
-}
-
-static int gpio_da9062_direction_output(struct gpio_chip *chip, unsigned offset,
-					int value)
-{
-	struct da9062_gpio *priv = to_da9062(chip);
-
-	return gpio_da9062_reg_update(priv, DA9062AA_GPIO_MODE0_4, BIT(offset),
-				      value << offset);
-}
-
-static int gpio_da9062_get_pin_mode(struct da9062_gpio *priv, unsigned offset)
-{
-	int ret;
-	u8 val;
-
-	ret = i2c_read_reg(priv->client, DA9062AA_GPIO_0_1 + (offset >> 1),
-			   &val, 1);
-	if (ret < 0)
-		return ret;
-
-	val >>= DA9062_PIN_SHIFT(offset);
-	val &= DA9062AA_GPIO0_PIN_MASK;
-
-	return val;
-}
-
-static int gpio_da9062_get(struct gpio_chip *chip, unsigned offset)
-{
-	struct da9062_gpio *priv = to_da9062(chip);
-	int gpio_dir;
-	int ret;
-	u8 val;
-
-	gpio_dir = gpio_da9062_get_pin_mode(priv, offset);
-	if (gpio_dir < 0)
-		return gpio_dir;
-
-	switch (gpio_dir) {
-	case DA9062_PIN_ALTERNATE:
-		return -ENOTSUPP;
-	case DA9062_PIN_GPI:
-		ret = i2c_read_reg(priv->client, DA9062AA_STATUS_B, &val, 1);
-		if (ret < 0)
-			return ret;
-		break;
-	case DA9062_PIN_GPO_OD:
-		/* falltrough */
-	case DA9062_PIN_GPO_PP:
-		ret = i2c_read_reg(priv->client, DA9062AA_GPIO_MODE0_4, &val, 1);
-		if (ret < 0)
-			return ret;
-	}
-
-	return val & BIT(offset);
-}
-
-static int gpio_da9062_get_direction(struct gpio_chip *chip, unsigned offset)
-{
-	struct da9062_gpio *priv = to_da9062(chip);
-	int gpio_dir;
-
-	gpio_dir = gpio_da9062_get_pin_mode(priv, offset);
-	if (gpio_dir < 0)
-		return gpio_dir;
-
-	switch (gpio_dir) {
-	case DA9062_PIN_ALTERNATE:
-		return -ENOTSUPP;
-	case DA9062_PIN_GPI:
-		return 1;
-	case DA9062_PIN_GPO_OD:
-		/* falltrough */
-	case DA9062_PIN_GPO_PP:
-		return 0;
-	}
-
-	return -EINVAL;
-}
-
-static void gpio_da9062_set(struct gpio_chip *chip, unsigned offset, int value)
-{
-	struct da9062_gpio *priv = to_da9062(chip);
-
-	gpio_da9062_reg_update(priv, DA9062AA_GPIO_MODE0_4, BIT(offset),
-			       value << offset);
-}
-
-static struct gpio_ops gpio_da9062_ops = {
-	.direction_input	= gpio_da9062_direction_input,
-	.direction_output	= gpio_da9062_direction_output,
-	.get_direction		= gpio_da9062_get_direction,
-	.get			= gpio_da9062_get,
-	.set			= gpio_da9062_set,
-};
-
-static int gpio_da9062_probe(struct device_d *dev)
-{
-	struct da9062_gpio *priv;
-
-	if (!dev->parent)
-		return -EPROBE_DEFER;
-
-	priv = xzalloc(sizeof(*priv));
-	if (!priv)
-		return -ENOMEM;
-
-	priv->client = to_i2c_client(dev->parent);
-	priv->dev = dev;
-	priv->gpio.base = -1;
-	priv->gpio.ngpio = 5;
-	priv->gpio.ops  = &gpio_da9062_ops;
-	priv->gpio.dev = dev;
-
-	return gpiochip_add(&priv->gpio);
-}
-
-static struct of_device_id const gpio_da9062_dt_ids[] = {
-	{ .compatible	= "dlg,da9062-gpio", },
-	{ }
-};
-
-static struct driver_d gpio_da9062_driver = {
-	.name = "da9062-gpio",
-	.probe = gpio_da9062_probe,
-	.of_compatible  = DRV_OF_COMPAT(gpio_da9062_dt_ids),
-};
-device_platform_driver(gpio_da9062_driver);
diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index 9c1752a38c..f0381944d9 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -15,8 +15,10 @@
 
 #include <common.h>
 #include <driver.h>
+#include <gpio.h>
 #include <restart.h>
 #include <i2c/i2c.h>
+#include <linux/bitops.h>
 #include <malloc.h>
 #include <notifier.h>
 #include <reset_source.h>
@@ -25,6 +27,7 @@
 struct da9063 {
 	struct restart_handler	restart;
 	struct watchdog		wd;
+	struct gpio_chip	gpio;
 	struct i2c_client	*client;
 	/* dummy client for accessing bank #1 */
 	struct i2c_client	*client1;
@@ -61,6 +64,19 @@ struct da9063 {
 /* DA9063_REG_CONTROL_I (addr=0x10e) */
 #define DA9062_WATCHDOG_SD	BIT(3)
 
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
 struct da906x_device_data {
 	int	(*init)(struct da9063 *priv);
 };
@@ -104,6 +120,118 @@ static int da906x_reg_update(struct da9063 *priv, unsigned int reg,
 	return 0;
 }
 
+static inline struct da9063 *to_da9063(struct gpio_chip *chip)
+{
+	return container_of(chip, struct da9063, gpio);
+}
+
+static int da9063_gpio_direction_input(struct gpio_chip *chip, unsigned offset)
+{
+	struct da9063 *priv = to_da9063(chip);
+	u8 mask, mode;
+
+	mode = DA9062_PIN_GPI << DA9062_PIN_SHIFT(offset);
+	mask = DA9062AA_GPIO0_PIN_MASK << DA9062_PIN_SHIFT(offset);
+
+	return da906x_reg_update(priv, DA9062AA_GPIO_0_1 + (offset >> 1),
+				 mask, mode);
+}
+
+static int da9063_gpio_direction_output(struct gpio_chip *chip, unsigned offset,
+					int value)
+{
+	struct da9063 *priv = to_da9063(chip);
+
+	return da906x_reg_update(priv, DA9062AA_GPIO_MODE0_4, BIT(offset),
+				 value << offset);
+}
+
+static int da9063_gpio_get_pin_mode(struct da9063 *priv, unsigned offset)
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
+static int da9063_gpio_get(struct gpio_chip *chip, unsigned offset)
+{
+	struct da9063 *priv = to_da9063(chip);
+	int gpio_dir;
+	int ret;
+	u8 val;
+
+	gpio_dir = da9063_gpio_get_pin_mode(priv, offset);
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
+static int da9063_gpio_get_direction(struct gpio_chip *chip, unsigned offset)
+{
+	struct da9063 *priv = to_da9063(chip);
+	int gpio_dir;
+
+	gpio_dir = da9063_gpio_get_pin_mode(priv, offset);
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
+static void da9063_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
+{
+	struct da9063 *priv = to_da9063(chip);
+
+	da906x_reg_update(priv, DA9062AA_GPIO_MODE0_4, BIT(offset),
+			  value << offset);
+
+}
+
+static struct gpio_ops da9063_gpio_ops = {
+	.direction_input	= da9063_gpio_direction_input,
+	.direction_output	= da9063_gpio_direction_output,
+	.get_direction		= da9063_gpio_get_direction,
+	.get			= da9063_gpio_get,
+	.set			= da9063_gpio_set,
+};
+
 static int da9063_watchdog_ping(struct da9063 *priv)
 {
 	int ret;
@@ -265,6 +393,14 @@ static int da9063_probe(struct device_d *dev)
 
 	restart_handler_register(&priv->restart);
 
+	priv->gpio.base = -1;
+	priv->gpio.ngpio = 5;
+	priv->gpio.ops  = &da9063_gpio_ops;
+	priv->gpio.dev = dev;
+	ret = gpiochip_add(&priv->gpio);
+	if (ret)
+		goto on_error;
+
 	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node)
 		return of_platform_populate(dev->device_node, NULL, dev);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
