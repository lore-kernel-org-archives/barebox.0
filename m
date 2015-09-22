Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeW96-0007MH-IL
 for barebox@lists.infradead.org; Tue, 22 Sep 2015 22:34:46 +0000
Received: by lahg1 with SMTP id g1so30675667lah.1
 for <barebox@lists.infradead.org>; Tue, 22 Sep 2015 15:34:20 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 23 Sep 2015 01:34:09 +0300
Message-Id: <1442961253-24762-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1442961253-24762-1-git-send-email-antonynpavlov@gmail.com>
References: <1442961253-24762-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/6] gpio: add ath79-gpio driver for Atheros MIPS SoCs
To: barebox@lists.infradead.org

This driver is based on linux-4.2 driver.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h |  17 +++
 drivers/gpio/Makefile                           |   1 +
 drivers/gpio/gpio-ath79.c                       | 156 ++++++++++++++++++++++++
 3 files changed, 174 insertions(+)

diff --git a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
index 77138ab..b82a8c3 100644
--- a/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
+++ b/arch/mips/mach-ath79/include/mach/ar71xx_regs.h
@@ -23,6 +23,8 @@
 
 #define AR71XX_APB_BASE		0x18000000
 
+#define AR71XX_GPIO_BASE	(AR71XX_APB_BASE + 0x00040000)
+#define AR71XX_GPIO_SIZE	0x100
 #define AR71XX_PLL_BASE		(AR71XX_APB_BASE + 0x00050000)
 #define AR71XX_PLL_SIZE		0x100
 #define AR71XX_RESET_BASE	(AR71XX_APB_BASE + 0x00060000)
@@ -32,6 +34,21 @@
 #define AR933X_UART_SIZE	0x14
 
 /*
+ * GPIO block
+ */
+#define AR71XX_GPIO_REG_OE		0x00
+#define AR71XX_GPIO_REG_IN		0x04
+#define AR71XX_GPIO_REG_OUT		0x08
+#define AR71XX_GPIO_REG_SET		0x0c
+#define AR71XX_GPIO_REG_CLEAR		0x10
+#define AR71XX_GPIO_REG_INT_MODE	0x14
+#define AR71XX_GPIO_REG_INT_TYPE	0x18
+#define AR71XX_GPIO_REG_INT_POLARITY	0x1c
+#define AR71XX_GPIO_REG_INT_PENDING	0x20
+#define AR71XX_GPIO_REG_INT_ENABLE	0x24
+#define AR71XX_GPIO_REG_FUNC		0x28
+
+/*
  * PLL block
  */
 #define AR933X_PLL_CPU_CONFIG_REG	0x00
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 1d94661..f39e8da 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -1,6 +1,7 @@
 obj-$(CONFIG_GPIOLIB)		+= gpiolib.o
 
 obj-$(CONFIG_GPIO_74164)	+= gpio-74164.o
+obj-$(CONFIG_MACH_MIPS_ATH79)	+= gpio-ath79.o
 obj-$(CONFIG_GPIO_BCM2835)	+= gpio-bcm2835.o
 obj-$(CONFIG_GPIO_DAVINCI)	+= gpio-davinci.o
 obj-$(CONFIG_GPIO_CLPS711X)	+= gpio-clps711x.o
diff --git a/drivers/gpio/gpio-ath79.c b/drivers/gpio/gpio-ath79.c
new file mode 100644
index 0000000..a1e42c4
--- /dev/null
+++ b/drivers/gpio/gpio-ath79.c
@@ -0,0 +1,156 @@
+/*
+ *  Atheros AR71XX/AR724X/AR913X GPIO API support
+ *
+ *  Copyright (C) 2010-2011 Jaiganesh Narayanan <jnarayanan@atheros.com>
+ *  Copyright (C) 2008-2011 Gabor Juhos <juhosg@openwrt.org>
+ *  Copyright (C) 2008 Imre Kaloz <kaloz@openwrt.org>
+ *  Copyright (C) 2015 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ *  Parts of this file are based on Atheros' 2.6.15/2.6.31 BSP
+ *
+ *  This program is free software; you can redistribute it and/or modify it
+ *  under the terms of the GNU General Public License version 2 as published
+ *  by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <gpio.h>
+#include <malloc.h>
+
+#include <mach/ar71xx_regs.h>
+#include <mach/ath79.h>
+
+static void __iomem *ath79_gpio_base;
+static u32 ath79_gpio_count;
+
+static void __ath79_gpio_set_value(unsigned gpio, int value)
+{
+	void __iomem *base = ath79_gpio_base;
+
+	if (value)
+		__raw_writel(1 << gpio, base + AR71XX_GPIO_REG_SET);
+	else
+		__raw_writel(1 << gpio, base + AR71XX_GPIO_REG_CLEAR);
+}
+
+static int __ath79_gpio_get_value(unsigned gpio)
+{
+	return (__raw_readl(ath79_gpio_base + AR71XX_GPIO_REG_IN) >> gpio) & 1;
+}
+
+static int ath79_gpio_get_value(struct gpio_chip *chip, unsigned offset)
+{
+	return __ath79_gpio_get_value(offset);
+}
+
+static void ath79_gpio_set_value(struct gpio_chip *chip,
+				  unsigned offset, int value)
+{
+	__ath79_gpio_set_value(offset, value);
+}
+
+static int ath79_gpio_direction_input(struct gpio_chip *chip,
+				       unsigned offset)
+{
+	void __iomem *base = ath79_gpio_base;
+
+	__raw_writel(__raw_readl(base + AR71XX_GPIO_REG_OE) & ~(1 << offset),
+		     base + AR71XX_GPIO_REG_OE);
+
+	return 0;
+}
+
+static int ath79_gpio_direction_output(struct gpio_chip *chip,
+					unsigned offset, int value)
+{
+	void __iomem *base = ath79_gpio_base;
+
+	if (value)
+		__raw_writel(1 << offset, base + AR71XX_GPIO_REG_SET);
+	else
+		__raw_writel(1 << offset, base + AR71XX_GPIO_REG_CLEAR);
+
+	__raw_writel(__raw_readl(base + AR71XX_GPIO_REG_OE) | (1 << offset),
+		     base + AR71XX_GPIO_REG_OE);
+
+	return 0;
+}
+
+static int ath79_gpio_get_direction(struct gpio_chip *chip, unsigned offset)
+{
+
+	void __iomem *base = ath79_gpio_base;
+	uint32_t oe = __raw_readl(base + AR71XX_GPIO_REG_OE);
+
+	return (oe & (1 << offset)) ? GPIOF_DIR_OUT : GPIOF_DIR_IN;
+}
+
+static struct gpio_ops ath79_gpio_ops = {
+	.get			= ath79_gpio_get_value,
+	.set			= ath79_gpio_set_value,
+	.direction_input	= ath79_gpio_direction_input,
+	.direction_output	= ath79_gpio_direction_output,
+	.get_direction		= ath79_gpio_get_direction,
+};
+
+static struct gpio_chip ath79_gpio_chip = {
+	.ops = &ath79_gpio_ops,
+	.base = 0,
+};
+
+static const struct of_device_id ath79_gpio_of_match[] = {
+	{ .compatible = "qca,ar7100-gpio" },
+	{},
+};
+
+static int ath79_gpio_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	int err;
+
+	if (!np) {
+		dev_err(dev, "No DT node or platform data found\n");
+		return -EINVAL;
+	}
+
+	err = of_property_read_u32(np, "ngpios", &ath79_gpio_count);
+	if (err) {
+		dev_err(dev, "ngpios property is not valid\n");
+		return err;
+	}
+	if (ath79_gpio_count >= 32) {
+		dev_err(dev, "ngpios must be less than 32\n");
+		return -EINVAL;
+	}
+
+	ath79_gpio_base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(ath79_gpio_base)) {
+		dev_err(dev, "could not get memory region\n");
+		return PTR_ERR(ath79_gpio_base);
+	}
+
+	ath79_gpio_chip.dev = dev;
+	ath79_gpio_chip.ngpio = ath79_gpio_count;
+
+	err = gpiochip_add(&ath79_gpio_chip);
+	if (err) {
+		dev_err(dev, "cannot add AR71xx GPIO chip, error=%d", err);
+		return err;
+	}
+
+	return 0;
+}
+
+static struct driver_d ath79_gpio_driver = {
+	.name = "ath79-gpio",
+	.probe = ath79_gpio_probe,
+	.of_compatible = DRV_OF_COMPAT(ath79_gpio_of_match),
+};
+
+static int ath79_gpio_init(void)
+{
+	return platform_driver_register(&ath79_gpio_driver);
+}
+coredevice_initcall(ath79_gpio_init);
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
