Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCRG-00051D-HK
 for barebox@lists.infradead.org; Mon, 27 May 2019 10:01:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1hVCRD-0003fZ-I2
 for barebox@lists.infradead.org; Mon, 27 May 2019 12:01:03 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1hVCRD-0003t0-Ah
 for barebox@lists.infradead.org; Mon, 27 May 2019 12:01:03 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon, 27 May 2019 12:00:58 +0200
Message-Id: <20190527100058.30507-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH v2] gpio: add driver for PCF857x, PCA{85, 96}7x,
 and MAX732[89] I2C GPIO expanders
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
v1 -> v2:

- removed unnecessary chapter in kconfig helptext
- removed platform data setup and teardown callbacks
- removed error path for xzalloc

 drivers/gpio/Kconfig            |  16 ++
 drivers/gpio/Makefile           |   1 +
 drivers/gpio/gpio-pcf857x.c     | 261 ++++++++++++++++++++++++++++++++
 include/platform_data/pcf857x.h |  41 +++++
 4 files changed, 319 insertions(+)
 create mode 100644 drivers/gpio/gpio-pcf857x.c
 create mode 100644 include/platform_data/pcf857x.h

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index c535904ed0..9bfa97160c 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -98,6 +98,22 @@ config GPIO_PCA953X
 
 	  40 bits: pca9505, pca9698
 
+config GPIO_PCF857X
+	tristate "PCF857x, PCA{85,96}7x, and MAX732[89] I2C GPIO expanders"
+	depends on I2C
+	help
+	  Say yes here to provide access to most "quasi-bidirectional" I2C
+	  GPIO expanders used for additional digital outputs or inputs.
+	  Most of these parts are from NXP, though TI is a second source for
+	  some of them.  Compatible models include:
+
+	  8 bits:   pcf8574, pcf8574a, pca8574, pca8574a,
+	            pca9670, pca9672, pca9674, pca9674a,
+	  	    max7328, max7329
+
+	  16 bits:  pcf8575, pcf8575c, pca8575,
+	            pca9671, pca9673, pca9675
+
 config GPIO_PL061
 	bool "PrimeCell PL061 GPIO support"
 	depends on ARM_AMBA
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 52280f0bb4..990df01788 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -14,6 +14,7 @@ obj-$(CONFIG_GPIO_MALTA_FPGA_I2C) += gpio-malta-fpga-i2c.o
 obj-$(CONFIG_GPIO_ORION)	+= gpio-orion.o
 obj-$(CONFIG_GPIO_OMAP)		+= gpio-omap.o
 obj-$(CONFIG_GPIO_PCA953X)	+= gpio-pca953x.o
+obj-$(CONFIG_GPIO_PCF857X)	+= gpio-pcf857x.o
 obj-$(CONFIG_GPIO_PL061)	+= gpio-pl061.o
 obj-$(CONFIG_GPIO_STMPE)	+= gpio-stmpe.o
 obj-$(CONFIG_GPIO_TEGRA)	+= gpio-tegra.o
diff --git a/drivers/gpio/gpio-pcf857x.c b/drivers/gpio/gpio-pcf857x.c
new file mode 100644
index 0000000000..f857a24f8a
--- /dev/null
+++ b/drivers/gpio/gpio-pcf857x.c
@@ -0,0 +1,261 @@
+/*
+ * Driver for pcf857x, pca857x, and pca967x I2C GPIO expanders
+ *
+ * This code was ported from linux-5.1 kernel by Michael Grzeschik.
+ *
+ * Copyright (C) 2007 David Brownell
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#include <common.h>
+#include <malloc.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <i2c/i2c.h>
+
+#include <gpio.h>
+#include <platform_data/pcf857x.h>
+
+static const struct platform_device_id pcf857x_id[] = {
+	{ "pcf8574", 8 },
+	{ "pcf8574a", 8 },
+	{ "pca8574", 8 },
+	{ "pca9670", 8 },
+	{ "pca9672", 8 },
+	{ "pca9674", 8 },
+	{ "pcf8575", 16 },
+	{ "pca8575", 16 },
+	{ "pca9671", 16 },
+	{ "pca9673", 16 },
+	{ "pca9675", 16 },
+	{ "max7328", 8 },
+	{ "max7329", 8 },
+	{ }
+};
+
+/*
+ * The pcf857x, pca857x, and pca967x chips only expose one read and one
+ * write register.  Writing a "one" bit (to match the reset state) lets
+ * that pin be used as an input; it's not an open-drain model, but acts
+ * a bit like one.  This is described as "quasi-bidirectional"; read the
+ * chip documentation for details.
+ *
+ * Many other I2C GPIO expander chips (like the pca953x models) have
+ * more complex register models and more conventional circuitry using
+ * push/pull drivers.  They often use the same 0x20..0x27 addresses as
+ * pcf857x parts, making the "legacy" I2C driver model problematic.
+ */
+struct pcf857x {
+	struct gpio_chip	chip;
+	struct i2c_client	*client;
+	unsigned		out;		/* software latch */
+
+	int (*write)(struct i2c_client *client, unsigned data);
+	int (*read)(struct i2c_client *client);
+};
+
+static inline struct pcf857x *to_pcf(struct gpio_chip *gc)
+{
+	return container_of(gc, struct pcf857x, chip);
+}
+
+/*-------------------------------------------------------------------------*/
+
+/* Talk to 8-bit I/O expander */
+
+static int i2c_write_le8(struct i2c_client *client, unsigned data)
+{
+	return i2c_smbus_write_byte(client, data);
+}
+
+static int i2c_read_le8(struct i2c_client *client)
+{
+	return (int)i2c_smbus_read_byte(client);
+}
+
+/* Talk to 16-bit I/O expander */
+
+static int i2c_write_le16(struct i2c_client *client, unsigned word)
+{
+	u8 buf[2] = { word & 0xff, word >> 8, };
+	int ret;
+
+	ret = i2c_master_send(client, buf, 2);
+	return (ret < 0) ? ret : 0;
+}
+
+static int i2c_read_le16(struct i2c_client *client)
+{
+	u8 buf[2];
+	int ret;
+
+	ret = i2c_master_recv(client, buf, 2);
+	if (ret < 0)
+		return ret;
+	return (buf[1] << 8) | buf[0];
+}
+
+/*-------------------------------------------------------------------------*/
+
+static int pcf857x_input(struct gpio_chip *chip, unsigned offset)
+{
+	struct pcf857x	*gpio = to_pcf(chip);
+	int		ret;
+
+	gpio->out |= (1 << offset);
+	ret = gpio->write(gpio->client, gpio->out);
+
+	return ret;
+}
+
+static int pcf857x_get(struct gpio_chip *chip, unsigned offset)
+{
+	struct pcf857x	*gpio = to_pcf(chip);
+	int		value;
+
+	value = gpio->read(gpio->client);
+	return (value < 0) ? value : !!(value & (1 << offset));
+}
+
+static int pcf857x_output(struct gpio_chip *chip, unsigned offset, int value)
+{
+	struct pcf857x	*gpio = to_pcf(chip);
+	unsigned	bit = 1 << offset;
+	int		ret;
+
+	if (value)
+		gpio->out |= bit;
+	else
+		gpio->out &= ~bit;
+	ret = gpio->write(gpio->client, gpio->out);
+
+	return ret;
+}
+
+static void pcf857x_set(struct gpio_chip *chip, unsigned offset, int value)
+{
+	pcf857x_output(chip, offset, value);
+}
+
+/*-------------------------------------------------------------------------*/
+
+static struct gpio_ops pcf857x_gpio_ops = {
+	.direction_input  = pcf857x_input,
+	.direction_output = pcf857x_output,
+	.get = pcf857x_get,
+	.set = pcf857x_set,
+};
+
+static int pcf857x_probe(struct device_d *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct pcf857x_platform_data	*pdata = dev->platform_data;
+	struct device_node		*np = dev->device_node;
+	struct pcf857x			*gpio;
+	unsigned long			driver_data;
+	unsigned int			n_latch = 0;
+	int				ret;
+
+	if (IS_ENABLED(CONFIG_OF) && np)
+		of_property_read_u32(np, "lines-initial-states", &n_latch);
+	else if (pdata)
+		n_latch = pdata->n_latch;
+
+	/* Allocate, initialize, and register this gpio_chip. */
+	gpio = xzalloc(sizeof(*gpio));
+
+	ret = dev_get_drvdata(dev, (const void **)&driver_data);
+	if (ret)
+		return ret;
+
+	gpio->chip.base			= pdata ? pdata->gpio_base : -1;
+	gpio->chip.ops			= &pcf857x_gpio_ops;
+	gpio->chip.ngpio		= driver_data;
+	gpio->chip.dev			= &client->dev;
+
+	/* NOTE:  the OnSemi jlc1562b is also largely compatible with
+	 * these parts, notably for output.  It has a low-resolution
+	 * DAC instead of pin change IRQs; and its inputs can be the
+	 * result of comparators.
+	 */
+
+	/* 8574 addresses are 0x20..0x27; 8574a uses 0x38..0x3f;
+	 * 9670, 9672, 9764, and 9764a use quite a variety.
+	 *
+	 * NOTE: we don't distinguish here between *4 and *4a parts.
+	 */
+	switch (gpio->chip.ngpio) {
+	case 8:
+		gpio->write	= i2c_write_le8;
+		gpio->read	= i2c_read_le8;
+		break;
+	/* '75/'75c addresses are 0x20..0x27, just like the '74;
+	 * the '75c doesn't have a current source pulling high.
+	 * 9671, 9673, and 9765 use quite a variety of addresses.
+	 *
+	 * NOTE: we don't distinguish here between '75 and '75c parts.
+	 */
+	case 16:
+		gpio->write	= i2c_write_le16;
+		gpio->read	= i2c_read_le16;
+		break;
+	default:
+		dev_warn(&client->dev, "unsupported number of gpios\n");
+		return -EINVAL;
+	}
+
+	gpio->client = client;
+
+	/* NOTE:  these chips have strange "quasi-bidirectional" I/O pins.
+	 * We can't actually know whether a pin is configured (a) as output
+	 * and driving the signal low, or (b) as input and reporting a low
+	 * value ... without knowing the last value written since the chip
+	 * came out of reset (if any).  We can't read the latched output.
+	 *
+	 * In short, the only reliable solution for setting up pin direction
+	 * is to do it explicitly.  The setup() method can do that, but it
+	 * may cause transient glitching since it can't know the last value
+	 * written (some pins may need to be driven low).
+	 *
+	 * Using n_latch avoids that trouble.  When left initialized to zero,
+	 * our software copy of the "latch" then matches the chip's all-ones
+	 * reset state.  Otherwise it flags pins to be driven low.
+	 */
+	gpio->out = ~n_latch;
+
+	ret = gpiochip_add(&gpio->chip);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
+static const struct of_device_id pcf857x_dt_ids[] = {
+	{ .compatible = "nxp,pcf8574", .data = (void *)8 },
+	{ .compatible = "nxp,pcf8574a", .data = (void *)8 },
+	{ .compatible = "nxp,pca8574", .data = (void *)8 },
+	{ .compatible = "nxp,pca9670", .data = (void *)8 },
+	{ .compatible = "nxp,pca9672", .data = (void *)8 },
+	{ .compatible = "nxp,pca9674", .data = (void *)8 },
+	{ .compatible = "nxp,pcf8575", .data = (void *)16 },
+	{ .compatible = "nxp,pca8575", .data = (void *)16 },
+	{ .compatible = "nxp,pca9671", .data = (void *)16 },
+	{ .compatible = "nxp,pca9673", .data = (void *)16 },
+	{ .compatible = "nxp,pca9675", .data = (void *)16 },
+	{ .compatible = "maxim,max7328", .data = (void *)8 },
+	{ .compatible = "maxim,max7329", .data = (void *)8 },
+	{ }
+};
+
+static struct driver_d pcf857x_driver = {
+	.name	= "pcf857x",
+	.probe	= pcf857x_probe,
+	.of_compatible = DRV_OF_COMPAT(pcf857x_dt_ids),
+	.id_table = pcf857x_id,
+};
+device_i2c_driver(pcf857x_driver);
diff --git a/include/platform_data/pcf857x.h b/include/platform_data/pcf857x.h
new file mode 100644
index 0000000000..2ea2b7dd52
--- /dev/null
+++ b/include/platform_data/pcf857x.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __LINUX_PCF857X_H
+#define __LINUX_PCF857X_H
+
+#include <linux/types.h>
+#include <i2c/i2c.h>
+
+/**
+ * struct pcf857x_platform_data - data to set up pcf857x driver
+ * @gpio_base: number of the chip's first GPIO
+ * @n_latch: optional bit-inverse of initial register value; if
+ *	you leave this initialized to zero the driver will act
+ *	like the chip was just reset
+ * @setup: optional callback issued once the GPIOs are valid
+ * @teardown: optional callback issued before the GPIOs are invalidated
+ * @context: optional parameter passed to setup() and teardown()
+ *
+ * In addition to the I2C_BOARD_INFO() state appropriate to each chip,
+ * the i2c_board_info used with the pcf875x driver must provide its
+ * platform_data (pointer to one of these structures) with at least
+ * the gpio_base value initialized.
+ *
+ * The @setup callback may be used with the kind of board-specific glue
+ * which hands the (now-valid) GPIOs to other drivers, or which puts
+ * devices in their initial states using these GPIOs.
+ *
+ * These GPIO chips are only "quasi-bidirectional"; read the chip specs
+ * to understand the behavior.  They don't have separate registers to
+ * record which pins are used for input or output, record which output
+ * values are driven, or provide access to input values.  That must be
+ * inferred by reading the chip's value and knowing the last value written
+ * to it.  If you leave n_latch initialized to zero, that last written
+ * value is presumed to be all ones (as if the chip were just reset).
+ */
+struct pcf857x_platform_data {
+	unsigned	gpio_base;
+	unsigned	n_latch;
+	void		*context;
+};
+
+#endif /* __LINUX_PCF857X_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
