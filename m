Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGN7K-0000Fr-3x
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 07:32:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Jan 2015 08:32:08 +0100
Message-Id: <1422430339-11969-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
References: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/15] ARM: MXS: Make gpio a driver
To: Barebox List <barebox@lists.infradead.org>

This turns the MXS gpio support into a driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig              |   1 +
 arch/arm/mach-mxs/iomux-imx.c |  60 --------------
 arch/arm/mach-mxs/soc-imx23.c |   3 +
 arch/arm/mach-mxs/soc-imx28.c |   5 ++
 drivers/gpio/Kconfig          |   3 +
 drivers/gpio/Makefile         |   1 +
 drivers/gpio/gpio-mxs.c       | 186 ++++++++++++++++++++++++++++++++++++++++++
 7 files changed, 199 insertions(+), 60 deletions(-)
 create mode 100644 drivers/gpio/gpio-mxs.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 09bbe05..f682803 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -120,6 +120,7 @@ config ARCH_MVEBU
 
 config ARCH_MXS
 	bool "Freescale i.MX23/28 (mxs) based"
+	select GPIOLIB
 	select GENERIC_GPIO
 	select COMMON_CLK
 	select CLKDEV_LOOKUP
diff --git a/arch/arm/mach-mxs/iomux-imx.c b/arch/arm/mach-mxs/iomux-imx.c
index 84c6ca4..68a4e3c 100644
--- a/arch/arm/mach-mxs/iomux-imx.c
+++ b/arch/arm/mach-mxs/iomux-imx.c
@@ -75,12 +75,6 @@ static unsigned calc_output_reg(unsigned no)
 	return  ((no >> 5) << 4) + HW_PINCTRL_DOUT0;
 }
 
-static unsigned calc_input_reg(unsigned no)
-{
-	/* each register controls 32 pads */
-	return  ((no >> 5) << 4) + HW_PINCTRL_DIN0;
-}
-
 /**
  * @param[in] m One pin define per call from iomux-mx23.h/iomux-mx28.h
  */
@@ -168,57 +162,3 @@ void imx_gpio_mode(uint32_t m)
 		}
 	}
 }
-
-int gpio_direction_input(unsigned gpio)
-{
-	unsigned reg_offset;
-
-	if (gpio > MAX_GPIO_NO)
-		return -EINVAL;
-
-	reg_offset = calc_output_enable_reg(gpio);
-	writel(0x1 << (gpio % 32), IMX_IOMUXC_BASE + reg_offset + STMP_OFFSET_REG_CLR);
-
-	return 0;
-}
-
-int gpio_direction_output(unsigned gpio, int val)
-{
-	unsigned reg_offset;
-
-	if (gpio > MAX_GPIO_NO)
-		return -EINVAL;
-
-	/* first set the output value... */
-	reg_offset = calc_output_reg(gpio);
-	writel(0x1 << (gpio % 32), IMX_IOMUXC_BASE +
-		reg_offset + (val != 0 ? STMP_OFFSET_REG_SET : STMP_OFFSET_REG_CLR));
-	/* ...then the direction */
-	reg_offset = calc_output_enable_reg(gpio);
-	writel(0x1 << (gpio % 32), IMX_IOMUXC_BASE + reg_offset + STMP_OFFSET_REG_SET);
-
-	return 0;
-}
-
-void gpio_set_value(unsigned gpio, int val)
-{
-	unsigned reg_offset;
-
-	reg_offset = calc_output_reg(gpio);
-	writel(0x1 << (gpio % 32), IMX_IOMUXC_BASE +
-				reg_offset + (val != 0 ?
-					STMP_OFFSET_REG_SET : STMP_OFFSET_REG_CLR));
-}
-
-int gpio_get_value(unsigned gpio)
-{
-	uint32_t reg;
-	unsigned reg_offset;
-
-	reg_offset = calc_input_reg(gpio);
-	reg = readl(IMX_IOMUXC_BASE + reg_offset);
-	if (reg & (0x1 << (gpio % 32)))
-		return 1;
-
-	return 0;
-}
diff --git a/arch/arm/mach-mxs/soc-imx23.c b/arch/arm/mach-mxs/soc-imx23.c
index ece91e5..339c577 100644
--- a/arch/arm/mach-mxs/soc-imx23.c
+++ b/arch/arm/mach-mxs/soc-imx23.c
@@ -43,6 +43,9 @@ static int imx23_devices_init(void)
 
 	add_generic_device("imx23-dma-apbh", 0, NULL, MXS_APBH_BASE, 0x2000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx23-clkctrl", 0, NULL, IMX_CCM_BASE, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx23-gpio", 0, NULL, IMX_IOMUXC_BASE, 0x2000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx23-gpio", 1, NULL, IMX_IOMUXC_BASE, 0x2000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx23-gpio", 2, NULL, IMX_IOMUXC_BASE, 0x2000, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
diff --git a/arch/arm/mach-mxs/soc-imx28.c b/arch/arm/mach-mxs/soc-imx28.c
index 001c969..4f0d895 100644
--- a/arch/arm/mach-mxs/soc-imx28.c
+++ b/arch/arm/mach-mxs/soc-imx28.c
@@ -61,6 +61,11 @@ static int imx28_devices_init(void)
 
 	add_generic_device("imx28-dma-apbh", 0, NULL, MXS_APBH_BASE, 0x2000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx28-clkctrl", 0, NULL, IMX_CCM_BASE, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx28-gpio", 0, NULL, IMX_IOMUXC_BASE, 0x2000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx28-gpio", 1, NULL, IMX_IOMUXC_BASE, 0x2000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx28-gpio", 2, NULL, IMX_IOMUXC_BASE, 0x2000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx28-gpio", 3, NULL, IMX_IOMUXC_BASE, 0x2000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx28-gpio", 4, NULL, IMX_IOMUXC_BASE, 0x2000, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 0ca7df4..c8b1efb 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -41,6 +41,9 @@ config GPIO_GENERIC_PLATFORM
 config GPIO_IMX
 	def_bool ARCH_IMX
 
+config GPIO_MXS
+	def_bool ARCH_MXS
+
 config GPIO_JZ4740
 	bool "GPIO support for Ingenic SoCs"
 	depends on MACH_MIPS_XBURST
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 510d146..508e228 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -6,6 +6,7 @@ obj-$(CONFIG_GPIO_CLPS711X)	+= gpio-clps711x.o
 obj-$(CONFIG_GPIO_DIGIC)	+= gpio-digic.o
 obj-$(CONFIG_GPIO_GENERIC)	+= gpio-generic.o
 obj-$(CONFIG_GPIO_IMX)		+= gpio-imx.o
+obj-$(CONFIG_GPIO_MXS)		+= gpio-mxs.o
 obj-$(CONFIG_GPIO_JZ4740)	+= gpio-jz4740.o
 obj-$(CONFIG_GPIO_MALTA_FPGA_I2C) += gpio-malta-fpga-i2c.o
 obj-$(CONFIG_GPIO_ORION)	+= gpio-orion.o
diff --git a/drivers/gpio/gpio-mxs.c b/drivers/gpio/gpio-mxs.c
new file mode 100644
index 0000000..30f9589
--- /dev/null
+++ b/drivers/gpio/gpio-mxs.c
@@ -0,0 +1,186 @@
+/*
+ * Freescale MXS gpio support
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
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <io.h>
+#include <of.h>
+#include <gpio.h>
+#include <init.h>
+#include <stmp-device.h>
+#include <linux/err.h>
+
+struct mxs_gpio_chip {
+	void __iomem *base;
+	void __iomem *din;
+	void __iomem *doe;
+	void __iomem *dout;
+	struct gpio_chip chip;
+	struct mxs_gpio_regs *regs;
+};
+
+struct mxs_gpio_regs {
+	unsigned int din;
+	unsigned int doe;
+	unsigned int dout;
+};
+
+static struct mxs_gpio_regs regs_mxs23 = {
+	.din = 0x0600,
+	.dout = 0x0500,
+	.doe = 0x0700,
+};
+
+static struct mxs_gpio_regs regs_mxs28 = {
+	.din = 0x0900,
+	.dout = 0x0700,
+	.doe = 0x0b00,
+};
+
+static void mxs_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
+{
+	struct mxs_gpio_chip *mxsgpio = container_of(chip, struct mxs_gpio_chip, chip);
+
+	if (value)
+		writel(0x1 << gpio, mxsgpio->dout + STMP_OFFSET_REG_SET);
+	else
+		writel(0x1 << gpio, mxsgpio->dout + STMP_OFFSET_REG_CLR);
+}
+
+static int mxs_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
+{
+	struct mxs_gpio_chip *mxsgpio = container_of(chip, struct mxs_gpio_chip, chip);
+
+	writel(0x1 << gpio, mxsgpio->doe + STMP_OFFSET_REG_CLR);
+
+	return 0;
+}
+
+
+static int mxs_gpio_direction_output(struct gpio_chip *chip, unsigned gpio, int value)
+{
+	struct mxs_gpio_chip *mxsgpio = container_of(chip, struct mxs_gpio_chip, chip);
+
+	mxs_gpio_set_value(chip, gpio, value);
+	writel(0x1 << gpio, mxsgpio->doe + STMP_OFFSET_REG_SET);
+
+	return 0;
+}
+
+static int mxs_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
+{
+	struct mxs_gpio_chip *mxsgpio = container_of(chip, struct mxs_gpio_chip, chip);
+
+	if (readl(mxsgpio->din) & (1 << gpio))
+		return 1;
+	else
+		return 0;
+}
+
+static int mxs_get_direction(struct gpio_chip *chip, unsigned gpio)
+{
+	struct mxs_gpio_chip *mxsgpio = container_of(chip, struct mxs_gpio_chip, chip);
+
+	if (readl(mxsgpio->doe) & (1 << gpio))
+		return GPIOF_DIR_OUT;
+	else
+		return GPIOF_DIR_IN;
+}
+
+static struct gpio_ops mxs_gpio_ops = {
+	.direction_input = mxs_gpio_direction_input,
+	.direction_output = mxs_gpio_direction_output,
+	.get = mxs_gpio_get_value,
+	.set = mxs_gpio_set_value,
+	.get_direction = mxs_get_direction,
+};
+
+static int mxs_gpio_probe(struct device_d *dev)
+{
+	struct mxs_gpio_chip *mxsgpio;
+	struct mxs_gpio_regs *regs;
+	int ret, id;
+
+	ret = dev_get_drvdata(dev, (unsigned long *)&regs);
+	if (ret)
+		return ret;
+
+	mxsgpio = xzalloc(sizeof(*mxsgpio));
+	mxsgpio->chip.ops = &mxs_gpio_ops;
+	if (dev->id < 0) {
+		id = of_alias_get_id(dev->device_node, "gpio");
+		if (id < 0)
+			return id;
+		mxsgpio->base = dev_get_mem_region(dev->parent, 0);
+		mxsgpio->chip.base = id * 32;
+	} else {
+		id = dev->id;
+		mxsgpio->base = dev_get_mem_region(dev, 0);
+		mxsgpio->chip.base = dev->id * 32;
+	}
+
+	if (IS_ERR(mxsgpio->base))
+		return PTR_ERR(mxsgpio->base);
+
+	mxsgpio->doe = mxsgpio->base + regs->doe + id * 0x10;
+	mxsgpio->dout = mxsgpio->base + regs->dout + id * 0x10;
+	mxsgpio->din = mxsgpio->base + regs->din + id * 0x10;
+
+	mxsgpio->chip.ngpio = 32;
+	mxsgpio->chip.dev = dev;
+	mxsgpio->regs = regs;
+	gpiochip_add(&mxsgpio->chip);
+
+	dev_dbg(dev, "probed gpiochip%d with base %d\n", dev->id, mxsgpio->chip.base);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id mxs_gpio_dt_ids[] = {
+	{
+		.compatible = "fsl,imx23-gpio",
+		.data = (unsigned long)&regs_mxs23,
+	}, {
+		.compatible = "fsl,imx28-gpio",
+		.data = (unsigned long)&regs_mxs28,
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct platform_device_id mxs_gpio_ids[] = {
+	{
+		.name = "imx23-gpio",
+		.driver_data = (unsigned long)&regs_mxs23,
+	}, {
+		.name = "imx28-gpio",
+		.driver_data = (unsigned long)&regs_mxs28,
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct driver_d mxs_gpio_driver = {
+	.name = "gpio-mxs",
+	.probe = mxs_gpio_probe,
+	.of_compatible = DRV_OF_COMPAT(mxs_gpio_dt_ids),
+	.id_table = mxs_gpio_ids,
+};
+
+static int mxs_gpio_add(void)
+{
+	platform_driver_register(&mxs_gpio_driver);
+	return 0;
+}
+core_initcall(mxs_gpio_add);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
