Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgNMn-0003HJ-JI
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 01:04:19 +0000
Received: by widdi4 with SMTP id di4so111288402wid.0
 for <barebox@lists.infradead.org>; Thu, 09 Apr 2015 18:03:56 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 10 Apr 2015 03:03:39 +0200
Message-Id: <1428627830-17281-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1428627830-17281-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1428627830-17281-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 02/13] gpio: Add driver for 74x164 compatible shift-registers
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

A 74x164 shift register can be seen as a SPI attached GPIO expander.
This adds a driver for those poor-man expanders based on the Linux
driver.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/gpio/Kconfig      |   8 +++
 drivers/gpio/Makefile     |   1 +
 drivers/gpio/gpio-74164.c | 131 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 140 insertions(+)
 create mode 100644 drivers/gpio/gpio-74164.c

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index c8b1efb1f23a..9cb22613dd91 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -13,6 +13,14 @@ config GPIO_DIGIC
 	bool "GPIO support for Canon DIGIC"
 	depends on ARCH_DIGIC
 
+config GPIO_74164
+	bool "Generic SPI attached shift register"
+	depends on SPI
+	help
+	  Driver for 74x164 compatible serial-in/parallel-out 8-outputs
+	  shift registers. This driver can be used to provide access
+	  to more gpio outputs.
+
 config GPIO_BCM2835
 	bool "GPIO support for BCM2835"
 	depends on ARCH_BCM2835
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 508e228bac2c..1d946614e3a6 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_GPIOLIB)		+= gpiolib.o
 
+obj-$(CONFIG_GPIO_74164)	+= gpio-74164.o
 obj-$(CONFIG_GPIO_BCM2835)	+= gpio-bcm2835.o
 obj-$(CONFIG_GPIO_DAVINCI)	+= gpio-davinci.o
 obj-$(CONFIG_GPIO_CLPS711X)	+= gpio-clps711x.o
diff --git a/drivers/gpio/gpio-74164.c b/drivers/gpio/gpio-74164.c
new file mode 100644
index 000000000000..535a508bf15e
--- /dev/null
+++ b/drivers/gpio/gpio-74164.c
@@ -0,0 +1,131 @@
+/*
+ * Generic serial-in/parallel-out 8-bits shift register GPIO driver
+ *   e.g. for 74x164
+ *
+ * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * Based on Linux driver
+ *  Copyright (C) 2010 Gabor Juhos <juhosg@openwrt.org>
+ *  Copyright (C) 2010 Miguel Gaio <miguel.gaio@efixo.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <errno.h>
+#include <gpio.h>
+#include <init.h>
+#include <io.h>
+#include <malloc.h>
+#include <spi/spi.h>
+
+#define MAX_REGS	4
+
+struct gpio_74164 {
+	struct gpio_chip chip;
+	struct spi_device *spi;
+	u8 buffer[MAX_REGS];
+	u8 num_regs;
+};	
+
+#define gc_to_gpio_74164(c)	container_of(c, struct gpio_74164, chip)
+
+/*
+ * Since the registers are chained, every byte sent will make
+ * the previous byte shift to the next register in the
+ * chain. Thus, the first byte send will end up in the last
+ * register at the end of the transfer. So, to have a logical
+ * numbering, send the bytes in reverse order so that the last
+ * byte of the buffer will end up in the last register.
+ */
+static int gpio_74164_update_buffers(struct gpio_74164 *priv)
+{
+	u8 b[MAX_REGS];
+	int n;
+
+	for (n = 0; n < priv->num_regs; n++)
+		b[priv->num_regs - n - 1] = priv->buffer[n];
+	spi_write(priv->spi, b, priv->num_regs);
+
+	return 0;
+}
+
+static int gpio_74164_get_value(struct gpio_chip *chip, unsigned off)
+{
+	struct gpio_74164 *priv = gc_to_gpio_74164(chip);
+	u8 bank = off / 8;
+	u8 pin = off % 8;
+
+	return (priv->buffer[bank] >> pin) & 1;
+}
+
+static void gpio_74164_set_value(struct gpio_chip *chip,
+				 unsigned off, int val)
+{
+	struct gpio_74164 *priv = gc_to_gpio_74164(chip);
+	u8 bank = off / 8;
+	u8 pin = off % 8;
+
+	if (val)
+		priv->buffer[bank] |= BIT(pin);
+	else
+		priv->buffer[bank] &= ~BIT(pin);
+
+	gpio_74164_update_buffers(priv);
+}
+
+static int gpio_74164_direction_output(struct gpio_chip *chip,
+				       unsigned off, int val)
+{
+	gpio_74164_set_value(chip, off, val);
+	return 0;
+}
+
+static struct gpio_ops gpio_74164_ops = {
+	.direction_output = gpio_74164_direction_output,
+	.get = gpio_74164_get_value,
+	.set = gpio_74164_set_value,
+};
+
+static struct platform_device_id gpio_74164_ids[] = {
+	{ "74hc164" },
+	{ "74hc595" },
+	{ }
+};
+
+static int gpio_74164_probe(struct device_d *dev)
+{
+	struct spi_device *spi = (struct spi_device *)dev->type_data;
+	struct gpio_74164 *priv;
+	u32 num_regs = 1;
+
+	dev->id = DEVICE_ID_DYNAMIC;
+	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node) {
+		dev->id = of_alias_get_id(dev->device_node, "gpio");
+		of_property_read_u32(dev->device_node, "registers-number",
+				     &num_regs);
+	}
+
+	if (num_regs > MAX_REGS)
+		num_regs = MAX_REGS;
+
+	priv = xzalloc(sizeof(*priv));
+	priv->spi = spi;
+	priv->num_regs = num_regs;
+	priv->chip.dev = dev;
+	priv->chip.ops = &gpio_74164_ops;
+	priv->chip.base = dev->id * 32;
+	priv->chip.ngpio = num_regs * 8;
+
+	return gpiochip_add(&priv->chip);
+}
+
+static struct driver_d gpio_74164_driver = {
+	.name = "gpio-74164",
+	.probe = gpio_74164_probe,
+	.id_table = gpio_74164_ids,
+};
+device_spi_driver(gpio_74164_driver);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
