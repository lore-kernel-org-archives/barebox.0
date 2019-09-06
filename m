Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Ens-0002XD-Fp
 for barebox@lists.infradead.org; Fri, 06 Sep 2019 14:01:34 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  6 Sep 2019 16:01:27 +0200
Message-Id: <20190906140127.17396-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] gpio: add driver for SN74273 output expander
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The SN74273 is an octal D-Type Flip-Flop. When used as an output expander,
N existing output signals can be turned into (N-8)*8 outputs using
N-8 chips. Add driver to facilitate this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../bindings/gpio/ti,74273-gpio.rst           |  34 ++++
 drivers/gpio/Kconfig                          |   5 +
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-74273.c                     | 183 ++++++++++++++++++
 4 files changed, 223 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/ti,74273-gpio.rst
 create mode 100644 drivers/gpio/gpio-74273.c

diff --git a/Documentation/devicetree/bindings/gpio/ti,74273-gpio.rst b/Documentation/devicetree/bindings/gpio/ti,74273-gpio.rst
new file mode 100644
index 000000000000..6fc001451c2f
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/ti,74273-gpio.rst
@@ -0,0 +1,34 @@
+74273 output expander driver
+============================
+
+Required properties:
+
+- ``compatible``: Should be ``"ti,74273-gpio"``
+- ``gpio-controller``: Marks the device node as a gpio controller.
+- ``#gpio-cells``: Should be two. The first cell is the pin number and
+   the second cell is used to specify the GPIO polarity:
+    ``0`` = Active High,
+    ``1`` = Active Low.
+- ``clk-gpios``: One GPIO per connected 74273 chip
+- ``data-gpios``: Eight GPIOs per connected 74273 (D-Pins)
+
+Optional properties:
+
+- ``ti,clk-pulse-width-ns``: minimal width of clock pulse for each chip.
+			     If unspecified, ``<20>`` is used as default.
+
+Example::
+
+	sn74273-gpio {
+		compatible = "ti,74273-gpio";
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		clk-gpios = <&gpio3 7 GPIO_ACTIVE_HIGH>, <&gpio3 8 GPIO_ACTIVE_HIGH>;
+		ti,clk-pulse-width-ns = <30>, <30>;
+		data-gpios = <&gpio3 21 GPIO_ACTIVE_LOW>, <&gpio3 22 GPIO_ACTIVE_LOW>,
+			     <&gpio3 23 GPIO_ACTIVE_LOW>, <&gpio3 24 GPIO_ACTIVE_LOW>,
+			     <&gpio3 25 GPIO_ACTIVE_LOW>, <&gpio3 26 GPIO_ACTIVE_LOW>,
+			     <&gpio3 27 GPIO_ACTIVE_LOW>, <&gpio3 28 GPIO_ACTIVE_LOW>;
+	};
+
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 7a1503198b49..dd6e6dd0c1c8 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -145,6 +145,11 @@ config GPIO_SX150X
 	  Say Y here to build support for the Semtec Sx150x I2C GPIO
 	  expander chip.
 
+config GPIO_74273
+	bool "SN74273 output ports"
+	help
+	  Say Y here to include a driver for the SN74273 as output expander
+
 config GPIO_LIBFTDI1
 	bool "libftdi1 driver"
 	depends on SANDBOX
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 990df01788bc..ba818c7b94c0 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -21,3 +21,4 @@ obj-$(CONFIG_GPIO_TEGRA)	+= gpio-tegra.o
 obj-$(CONFIG_GPIO_DESIGNWARE)	+= gpio-dw.o
 obj-$(CONFIG_GPIO_SX150X)	+= gpio-sx150x.o
 obj-$(CONFIG_GPIO_VF610)	+= gpio-vf610.o
+obj-$(CONFIG_GPIO_74273)	+= gpio-74273.o
diff --git a/drivers/gpio/gpio-74273.c b/drivers/gpio/gpio-74273.c
new file mode 100644
index 000000000000..873f523c1b0b
--- /dev/null
+++ b/drivers/gpio/gpio-74273.c
@@ -0,0 +1,183 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2017 Sascha Hauer, Pengutronix
+ * Copyright (c) 2019 Ahmad Fatoum, Pengutronix
+ */
+
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <gpio.h>
+#include <of_gpio.h>
+#include <of.h>
+#include <clock.h>
+
+#define DEFAULT_DELAY_NS	20
+
+struct clk_gpio {
+	int desc;
+	u32 delay_ns;
+};
+
+struct sn74273 {
+	struct gpio_chip chip;
+	struct clk_gpio *clk_gpios;
+	int *data_gpios;
+	u8 *shadow;
+	unsigned n_ports;
+	unsigned n_pins;
+};
+
+static inline struct sn74273 *to_sn74273(struct gpio_chip *chip)
+{
+	return container_of(chip, struct sn74273, chip);
+}
+
+static void sn74273_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
+{
+	struct sn74273 *sn74273 = to_sn74273(chip);
+	unsigned port = gpio / 8;
+	unsigned pin = gpio % 8;
+	int i, j;
+	u8 val;
+
+	val = sn74273->shadow[port];
+	if (value)
+		val |= 1 << pin;
+	else
+		val &= ~(1 << pin);
+	sn74273->shadow[port] = val;
+
+	for (i = 0; i < sn74273->n_ports; i++) {
+		for (j = 0; j < sn74273->n_pins; j++) {
+			gpio_set_active(sn74273->data_gpios[j],
+				sn74273->shadow[i] & (1 << j));
+		}
+
+		ndelay(sn74273->clk_gpios[i].delay_ns);
+		gpio_set_active(sn74273->clk_gpios[i].desc, 1);
+		ndelay(sn74273->clk_gpios[i].delay_ns);
+		gpio_set_active(sn74273->clk_gpios[i].desc, 0);
+	}
+}
+
+static int sn74273_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
+{
+	struct sn74273 *sn74273 = to_sn74273(chip);
+	unsigned port = gpio / 8;
+	unsigned pin = gpio % 8;
+
+	return sn74273->shadow[port] & pin;
+}
+
+static int sn74273_gpio_direction_output(struct gpio_chip *chip,
+					 unsigned offset, int value)
+{
+	sn74273_gpio_set_value(chip, offset, value);
+	return 0;
+}
+
+static int sn74273_gpio_get_direction(struct gpio_chip *chip, unsigned offset)
+{
+	return GPIOF_DIR_OUT;
+}
+
+static struct gpio_ops sn74273_gpio_ops = {
+	.get			= sn74273_gpio_get_value,
+	.set			= sn74273_gpio_set_value,
+	.direction_output	= sn74273_gpio_direction_output,
+	.get_direction		= sn74273_gpio_get_direction,
+};
+
+static int sn74273_gpio_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	enum of_gpio_flags flags;
+	struct sn74273 *sn74273;
+	int i, ret;
+
+	sn74273 = xzalloc(sizeof(*sn74273));
+
+	sn74273->n_ports = of_gpio_named_count(np, "clk-gpios");
+	if (sn74273->n_ports < 0) {
+		dev_err(dev, "invalid or missing clk-gpios\n");
+		return -EINVAL;
+	}
+
+	sn74273->n_pins = of_gpio_named_count(np, "data-gpios");
+	if (sn74273->n_pins < 0) {
+		dev_err(dev, "invalid or missing data-gpios\n");
+		return -EINVAL;
+	}
+
+	sn74273->chip.base = -1;
+	sn74273->chip.ngpio = sn74273->n_ports * sn74273->n_pins;
+	sn74273->chip.dev = dev;
+	sn74273->chip.ops = &sn74273_gpio_ops;
+
+	sn74273->clk_gpios = xzalloc(sizeof(struct clk_gpio) * sn74273->n_ports);
+	sn74273->data_gpios = xzalloc(sizeof(int) * sn74273->n_pins);
+
+	for (i = 0; i < sn74273->n_ports; i++) {
+		struct clk_gpio *clk_gpio = &sn74273->clk_gpios[i];
+		clk_gpio->desc = of_get_named_gpio_flags(np, "clk-gpios",
+							 i, &flags);
+		ret = gpio_request_one(clk_gpio->desc,
+				 flags & OF_GPIO_ACTIVE_LOW ? GPIOF_ACTIVE_LOW : 0,
+				 dev_name(dev));
+		if (ret) {
+			if (ret != -EPROBE_DEFER)
+				dev_err(dev, "Cannot request gpio %d: %s\n", clk_gpio->desc,
+					strerror(-ret));
+			return ret;
+		}
+
+		gpio_direction_output(clk_gpio->desc, 0);
+
+		clk_gpio->delay_ns = DEFAULT_DELAY_NS;
+		of_property_read_u32_index(np, "ti,clk-pulse-width-ns",
+					   i, &clk_gpio->delay_ns);
+	}
+
+	for (i = 0; i < sn74273->n_pins; i++) {
+		sn74273->data_gpios[i] = of_get_named_gpio_flags(np, "data-gpios",
+								 i, &flags);
+		ret = gpio_request_one(sn74273->data_gpios[i],
+				 flags & OF_GPIO_ACTIVE_LOW ? GPIOF_ACTIVE_LOW : 0,
+				 dev_name(dev));
+		if (ret) {
+			if (ret != -EPROBE_DEFER)
+				dev_err(dev, "Cannot request gpio %d: %s\n", sn74273->data_gpios[i],
+					strerror(-ret));
+			return ret;
+		}
+
+		gpio_direction_output(sn74273->data_gpios[i], 0);
+	}
+
+	sn74273->shadow = xzalloc(DIV_ROUND_UP(sn74273->n_pins, 8) * sn74273->n_ports);
+
+	ret = gpiochip_add(&sn74273->chip);
+	if (ret)
+		dev_err(dev, "cannot add 74273 GPIO chip: %s\n", strerror(-ret));
+
+	return ret;
+}
+
+static const struct of_device_id of_sn74273_gpio_leds_match[] = {
+	{ .compatible = "ti,74273-gpio" },
+	{ /* sentinel */ },
+};
+
+static struct driver_d sn74273_gpio_driver = {
+	.name = "74273-gpio",
+	.probe = sn74273_gpio_probe,
+	.of_compatible = DRV_OF_COMPAT(of_sn74273_gpio_leds_match),
+};
+
+static int sn74273_gpio_add(void)
+{
+	platform_driver_register(&sn74273_gpio_driver);
+	return 0;
+}
+postcore_initcall(sn74273_gpio_add);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
