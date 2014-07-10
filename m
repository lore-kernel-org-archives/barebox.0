Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X5KdY-0000m4-IV
 for barebox@lists.infradead.org; Thu, 10 Jul 2014 20:08:14 +0000
Received: by mail-lb0-f173.google.com with SMTP id s7so81783lbd.32
 for <barebox@lists.infradead.org>; Thu, 10 Jul 2014 13:07:48 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 11 Jul 2014 00:07:25 +0400
Message-Id: <1405022845-12402-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1405022845-12402-1-git-send-email-antonynpavlov@gmail.com>
References: <1405022845-12402-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 2/2] gpio: add driver for PCA95[357]x, PCA9698, TCA64xx,
 and MAX7310 SMBus I/O expanders
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/gpio/Kconfig            |  21 ++
 drivers/gpio/Makefile           |   1 +
 drivers/gpio/gpio-pca953x.c     | 481 ++++++++++++++++++++++++++++++++++++++++
 include/platform_data/pca953x.h |  27 +++
 4 files changed, 530 insertions(+)

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index f98a9c0..179c63d 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -64,6 +64,27 @@ config GPIO_ORION
 	  found on Marvell Orion and MVEBU SoCs (Armada 370/XP,
 	  Dove, Kirkwood, MV78x00, Orion5x).
 
+config GPIO_PCA953X
+	bool "PCA95[357]x, PCA9698, TCA64xx, and MAX7310 I/O ports"
+	depends on I2C
+	select I2C_SMBUS
+	help
+	  Say yes here to provide access to several register-oriented
+	  SMBus I/O expanders, made mostly by NXP or TI.  Compatible
+	  models include:
+
+	  4 bits:	pca9536, pca9537
+
+	  8 bits:	max7310, max7315, pca6107, pca9534, pca9538, pca9554,
+			pca9556, pca9557, pca9574, tca6408, xra1202
+
+	  16 bits:	max7312, max7313, pca9535, pca9539, pca9555, pca9575,
+			tca6416
+
+	  24 bits:	tca6424
+
+	  40 bits:	pca9505, pca9698
+
 config GPIO_PL061
 	bool "PrimeCell PL061 GPIO support"
 	depends on ARM_AMBA
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 22d2ac0..ece5efd 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_GPIO_JZ4740)	+= gpio-jz4740.o
 obj-$(CONFIG_GPIO_MALTA_FPGA_I2C) += gpio-malta-fpga-i2c.o
 obj-$(CONFIG_GPIO_ORION)	+= gpio-orion.o
 obj-$(CONFIG_GPIO_OMAP)		+= gpio-omap.o
+obj-$(CONFIG_GPIO_PCA953X)	+= gpio-pca953x.o
 obj-$(CONFIG_GPIO_PL061)	+= gpio-pl061.o
 obj-$(CONFIG_GPIO_STMPE)	+= gpio-stmpe.o
 obj-$(CONFIG_GPIO_TEGRA)	+= gpio-tegra.o
diff --git a/drivers/gpio/gpio-pca953x.c b/drivers/gpio/gpio-pca953x.c
new file mode 100644
index 0000000..aabbb09
--- /dev/null
+++ b/drivers/gpio/gpio-pca953x.c
@@ -0,0 +1,481 @@
+/*
+ *  PCA953x 4/8/16/24/40 bit I/O ports
+ *
+ *  This code was ported from linux-3.15 kernel by Antony Pavlov.
+ *
+ *  Copyright (C) 2005 Ben Gardner <bgardner@wabtec.com>
+ *  Copyright (C) 2007 Marvell International Ltd.
+ *
+ *  Derived from drivers/i2c/chips/pca9539.c
+ *
+ *  This program is free software; you can redistribute it and/or modify
+ *  it under the terms of the GNU General Public License as published by
+ *  the Free Software Foundation; version 2 of the License.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <i2c/i2c.h>
+
+#include <gpio.h>
+#include <platform_data/pca953x.h>
+
+#define PCA953X_INPUT		0
+#define PCA953X_OUTPUT		1
+#define PCA953X_INVERT		2
+#define PCA953X_DIRECTION	3
+
+#define REG_ADDR_AI		0x80
+
+#define PCA957X_IN		0
+#define PCA957X_INVRT		1
+#define PCA957X_BKEN		2
+#define PCA957X_PUPD		3
+#define PCA957X_CFG		4
+#define PCA957X_OUT		5
+#define PCA957X_MSK		6
+#define PCA957X_INTS		7
+
+#define PCA_GPIO_MASK		0x00FF
+#define PCA_INT			0x0100
+#define PCA953X_TYPE		0x1000
+#define PCA957X_TYPE		0x2000
+
+static struct platform_device_id pca953x_id[] = {
+	{ "pca9505", 40 | PCA953X_TYPE | PCA_INT, },
+	{ "pca9534", 8  | PCA953X_TYPE | PCA_INT, },
+	{ "pca9535", 16 | PCA953X_TYPE | PCA_INT, },
+	{ "pca9536", 4  | PCA953X_TYPE, },
+	{ "pca9537", 4  | PCA953X_TYPE | PCA_INT, },
+	{ "pca9538", 8  | PCA953X_TYPE | PCA_INT, },
+	{ "pca9539", 16 | PCA953X_TYPE | PCA_INT, },
+	{ "pca9554", 8  | PCA953X_TYPE | PCA_INT, },
+	{ "pca9555", 16 | PCA953X_TYPE | PCA_INT, },
+	{ "pca9556", 8  | PCA953X_TYPE, },
+	{ "pca9557", 8  | PCA953X_TYPE, },
+	{ "pca9574", 8  | PCA957X_TYPE | PCA_INT, },
+	{ "pca9575", 16 | PCA957X_TYPE | PCA_INT, },
+	{ "pca9698", 40 | PCA953X_TYPE, },
+
+	{ "max7310", 8  | PCA953X_TYPE, },
+	{ "max7312", 16 | PCA953X_TYPE | PCA_INT, },
+	{ "max7313", 16 | PCA953X_TYPE | PCA_INT, },
+	{ "max7315", 8  | PCA953X_TYPE | PCA_INT, },
+	{ "pca6107", 8  | PCA953X_TYPE | PCA_INT, },
+	{ "tca6408", 8  | PCA953X_TYPE | PCA_INT, },
+	{ "tca6416", 16 | PCA953X_TYPE | PCA_INT, },
+	{ "tca6424", 24 | PCA953X_TYPE | PCA_INT, },
+	{ "xra1202", 8  | PCA953X_TYPE },
+	{ }
+};
+
+#define MAX_BANK 5
+#define BANK_SZ 8
+
+#define NBANK(chip) (chip->gpio_chip.ngpio / BANK_SZ)
+
+struct pca953x_chip {
+	unsigned gpio_start;
+	u8 reg_output[MAX_BANK];
+	u8 reg_direction[MAX_BANK];
+	struct i2c_client *client;
+	struct gpio_chip gpio_chip;
+	const char *const *names;
+	int	chip_type;
+};
+
+static inline struct pca953x_chip *to_pca(struct gpio_chip *gc)
+{
+	return container_of(gc, struct pca953x_chip, gpio_chip);
+}
+
+static int pca953x_read_single(struct pca953x_chip *chip, int reg, u32 *val,
+				int off)
+{
+	int ret;
+	int bank_shift = fls((chip->gpio_chip.ngpio - 1) / BANK_SZ);
+	int offset = off / BANK_SZ;
+
+	ret = i2c_smbus_read_byte_data(chip->client,
+				(reg << bank_shift) + offset);
+	*val = ret;
+
+	if (ret < 0) {
+		dev_err(&chip->client->dev, "failed reading register\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int pca953x_write_single(struct pca953x_chip *chip, int reg, u32 val,
+				int off)
+{
+	int ret = 0;
+	int bank_shift = fls((chip->gpio_chip.ngpio - 1) / BANK_SZ);
+	int offset = off / BANK_SZ;
+
+	ret = i2c_smbus_write_byte_data(chip->client,
+					(reg << bank_shift) + offset, val);
+
+	if (ret < 0) {
+		dev_err(&chip->client->dev, "failed writing register\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int pca953x_write_regs(struct pca953x_chip *chip, int reg, u8 *val)
+{
+	int ret = 0;
+
+	if (chip->gpio_chip.ngpio <= 8)
+		ret = i2c_smbus_write_byte_data(chip->client, reg, *val);
+	else if (chip->gpio_chip.ngpio >= 24) {
+		int bank_shift = fls((chip->gpio_chip.ngpio - 1) / BANK_SZ);
+		ret = i2c_smbus_write_i2c_block_data(chip->client,
+					(reg << bank_shift) | REG_ADDR_AI,
+					NBANK(chip), val);
+	} else {
+		switch (chip->chip_type) {
+		case PCA953X_TYPE:
+			ret = i2c_smbus_write_word_data(chip->client,
+							reg << 1, (u16) *val);
+			break;
+		case PCA957X_TYPE:
+			ret = i2c_smbus_write_byte_data(chip->client, reg << 1,
+							val[0]);
+			if (ret < 0)
+				break;
+			ret = i2c_smbus_write_byte_data(chip->client,
+							(reg << 1) + 1,
+							val[1]);
+			break;
+		}
+	}
+
+	if (ret < 0) {
+		dev_err(&chip->client->dev, "failed writing register\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int pca953x_read_regs(struct pca953x_chip *chip, int reg, u8 *val)
+{
+	int ret;
+
+	if (chip->gpio_chip.ngpio <= 8) {
+		ret = i2c_smbus_read_byte_data(chip->client, reg);
+		*val = ret;
+	} else if (chip->gpio_chip.ngpio >= 24) {
+		int bank_shift = fls((chip->gpio_chip.ngpio - 1) / BANK_SZ);
+
+		ret = i2c_smbus_read_i2c_block_data(chip->client,
+					(reg << bank_shift) | REG_ADDR_AI,
+					NBANK(chip), val);
+	} else {
+		ret = i2c_smbus_read_word_data(chip->client, reg << 1);
+		val[0] = (u16)ret & 0xFF;
+		val[1] = (u16)ret >> 8;
+	}
+	if (ret < 0) {
+		dev_err(&chip->client->dev, "failed reading register\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int pca953x_gpio_direction_input(struct gpio_chip *gc, unsigned off)
+{
+	struct pca953x_chip *chip = to_pca(gc);
+	u8 reg_val;
+	int ret, offset = 0;
+
+	reg_val = chip->reg_direction[off / BANK_SZ] | (1u << (off % BANK_SZ));
+
+	switch (chip->chip_type) {
+	case PCA953X_TYPE:
+		offset = PCA953X_DIRECTION;
+		break;
+	case PCA957X_TYPE:
+		offset = PCA957X_CFG;
+		break;
+	}
+	ret = pca953x_write_single(chip, offset, reg_val, off);
+	if (ret)
+		goto exit;
+
+	chip->reg_direction[off / BANK_SZ] = reg_val;
+	ret = 0;
+exit:
+	return ret;
+}
+
+static int pca953x_gpio_direction_output(struct gpio_chip *gc,
+		unsigned off, int val)
+{
+	struct pca953x_chip *chip = to_pca(gc);
+	u8 reg_val;
+	int ret, offset = 0;
+
+	/* set output level */
+	if (val)
+		reg_val = chip->reg_output[off / BANK_SZ]
+			| (1u << (off % BANK_SZ));
+	else
+		reg_val = chip->reg_output[off / BANK_SZ]
+			& ~(1u << (off % BANK_SZ));
+
+	switch (chip->chip_type) {
+	case PCA953X_TYPE:
+		offset = PCA953X_OUTPUT;
+		break;
+	case PCA957X_TYPE:
+		offset = PCA957X_OUT;
+		break;
+	}
+	ret = pca953x_write_single(chip, offset, reg_val, off);
+	if (ret)
+		goto exit;
+
+	chip->reg_output[off / BANK_SZ] = reg_val;
+
+	/* then direction */
+	reg_val = chip->reg_direction[off / BANK_SZ] & ~(1u << (off % BANK_SZ));
+	switch (chip->chip_type) {
+	case PCA953X_TYPE:
+		offset = PCA953X_DIRECTION;
+		break;
+	case PCA957X_TYPE:
+		offset = PCA957X_CFG;
+		break;
+	}
+	ret = pca953x_write_single(chip, offset, reg_val, off);
+	if (ret)
+		goto exit;
+
+	chip->reg_direction[off / BANK_SZ] = reg_val;
+	ret = 0;
+exit:
+	return ret;
+}
+
+static int pca953x_gpio_get_direction(struct gpio_chip *gc, unsigned off)
+{
+	struct pca953x_chip *chip = to_pca(gc);
+	u8 reg_val;
+
+	reg_val = chip->reg_direction[off / BANK_SZ] & (1u << (off % BANK_SZ));
+
+	if (reg_val)
+		return GPIOF_DIR_IN;
+
+	return GPIOF_DIR_OUT;
+}
+
+static int pca953x_gpio_get_value(struct gpio_chip *gc, unsigned off)
+{
+	struct pca953x_chip *chip = to_pca(gc);
+	u32 reg_val;
+	int ret, offset = 0;
+
+	switch (chip->chip_type) {
+	case PCA953X_TYPE:
+		offset = PCA953X_INPUT;
+		break;
+	case PCA957X_TYPE:
+		offset = PCA957X_IN;
+		break;
+	}
+	ret = pca953x_read_single(chip, offset, &reg_val, off);
+	if (ret < 0) {
+		/* NOTE:  diagnostic already emitted; that's all we should
+		 * do unless gpio_*_value_cansleep() calls become different
+		 * from their nonsleeping siblings (and report faults).
+		 */
+		return 0;
+	}
+
+	return (reg_val & (1u << (off % BANK_SZ))) ? 1 : 0;
+}
+
+static void pca953x_gpio_set_value(struct gpio_chip *gc, unsigned off, int val)
+{
+	struct pca953x_chip *chip = to_pca(gc);
+	u8 reg_val;
+	int ret, offset = 0;
+
+	if (val)
+		reg_val = chip->reg_output[off / BANK_SZ]
+			| (1u << (off % BANK_SZ));
+	else
+		reg_val = chip->reg_output[off / BANK_SZ]
+			& ~(1u << (off % BANK_SZ));
+
+	switch (chip->chip_type) {
+	case PCA953X_TYPE:
+		offset = PCA953X_OUTPUT;
+		break;
+	case PCA957X_TYPE:
+		offset = PCA957X_OUT;
+		break;
+	}
+	ret = pca953x_write_single(chip, offset, reg_val, off);
+	if (ret)
+		goto exit;
+
+	chip->reg_output[off / BANK_SZ] = reg_val;
+exit:
+	return;
+}
+
+static struct gpio_ops pca953x_gpio_ops = {
+	.direction_input  = pca953x_gpio_direction_input,
+	.direction_output = pca953x_gpio_direction_output,
+	.get_direction = pca953x_gpio_get_direction,
+	.get = pca953x_gpio_get_value,
+	.set = pca953x_gpio_set_value,
+};
+
+static void pca953x_setup_gpio(struct pca953x_chip *chip, int gpios)
+{
+	struct gpio_chip *gc;
+
+	gc = &chip->gpio_chip;
+
+	gc->ops = &pca953x_gpio_ops;
+
+	gc->base = chip->gpio_start;
+	gc->ngpio = gpios;
+	gc->dev = &chip->client->dev;
+}
+
+static int device_pca953x_init(struct pca953x_chip *chip, u32 invert)
+{
+	int ret;
+	u8 val[MAX_BANK];
+
+	ret = pca953x_read_regs(chip, PCA953X_OUTPUT, chip->reg_output);
+	if (ret)
+		goto out;
+
+	ret = pca953x_read_regs(chip, PCA953X_DIRECTION,
+			       chip->reg_direction);
+	if (ret)
+		goto out;
+
+	/* set platform specific polarity inversion */
+	if (invert)
+		memset(val, 0xFF, NBANK(chip));
+	else
+		memset(val, 0, NBANK(chip));
+
+	ret = pca953x_write_regs(chip, PCA953X_INVERT, val);
+out:
+	return ret;
+}
+
+static int device_pca957x_init(struct pca953x_chip *chip, u32 invert)
+{
+	int ret;
+	u8 val[MAX_BANK];
+
+	ret = pca953x_read_regs(chip, PCA957X_OUT, chip->reg_output);
+	if (ret)
+		goto out;
+	ret = pca953x_read_regs(chip, PCA957X_CFG, chip->reg_direction);
+	if (ret)
+		goto out;
+
+	/* set platform specific polarity inversion */
+	if (invert)
+		memset(val, 0xFF, NBANK(chip));
+	else
+		memset(val, 0, NBANK(chip));
+	pca953x_write_regs(chip, PCA957X_INVRT, val);
+
+	/* To enable register 6, 7 to controll pull up and pull down */
+	memset(val, 0x02, NBANK(chip));
+	pca953x_write_regs(chip, PCA957X_BKEN, val);
+
+	return 0;
+out:
+	return ret;
+}
+
+static int pca953x_probe(struct device_d *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	unsigned long driver_data;
+	struct pca953x_platform_data *pdata;
+	struct pca953x_chip *chip;
+	int ret;
+	u32 invert = 0;
+
+	chip = xzalloc(sizeof(struct pca953x_chip));
+
+	driver_data = 0;
+	pdata = dev->platform_data;
+	if (pdata) {
+		chip->gpio_start = pdata->gpio_base;
+		invert = pdata->invert;
+		chip->names = pdata->names;
+	} else {
+		int err;
+
+		err = dev_get_drvdata(dev, &driver_data);
+		if (err)
+			return err;
+
+		chip->gpio_start = -1;
+	}
+
+	chip->client = client;
+
+	chip->chip_type = driver_data & (PCA953X_TYPE | PCA957X_TYPE);
+
+	/* initialize cached registers from their original values.
+	 * we can't share this chip with another i2c master.
+	 */
+	pca953x_setup_gpio(chip, driver_data & PCA_GPIO_MASK);
+
+	if (chip->chip_type == PCA953X_TYPE)
+		ret = device_pca953x_init(chip, invert);
+	else
+		ret = device_pca957x_init(chip, invert);
+	if (ret)
+		return ret;
+
+	ret = gpiochip_add(&chip->gpio_chip);
+	if (ret)
+		return ret;
+
+	if (pdata && pdata->setup) {
+		ret = pdata->setup(client, chip->gpio_chip.base,
+				chip->gpio_chip.ngpio, pdata->context);
+		if (ret < 0)
+			dev_warn(&client->dev, "setup failed, %d\n", ret);
+	}
+
+	return 0;
+}
+
+static struct driver_d pca953x_driver = {
+	.name	= "pca953x",
+	.probe		= pca953x_probe,
+	.id_table	= pca953x_id,
+};
+
+static int __init pca953x_init(void)
+{
+	return i2c_driver_register(&pca953x_driver);
+}
+device_initcall(pca953x_init);
diff --git a/include/platform_data/pca953x.h b/include/platform_data/pca953x.h
new file mode 100644
index 0000000..cfd253e
--- /dev/null
+++ b/include/platform_data/pca953x.h
@@ -0,0 +1,27 @@
+#ifndef _LINUX_PCA953X_H
+#define _LINUX_PCA953X_H
+
+#include <linux/types.h>
+#include <i2c/i2c.h>
+
+/* platform data for the PCA9539 16-bit I/O expander driver */
+
+struct pca953x_platform_data {
+	/* number of the first GPIO */
+	unsigned	gpio_base;
+
+	/* initial polarity inversion setting */
+	u32		invert;
+
+	void		*context;	/* param to setup/teardown */
+
+	int		(*setup)(struct i2c_client *client,
+				unsigned gpio, unsigned ngpio,
+				void *context);
+	int		(*teardown)(struct i2c_client *client,
+				unsigned gpio, unsigned ngpio,
+				void *context);
+	const char	*const *names;
+};
+
+#endif /* _LINUX_PCA953X_H */
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
