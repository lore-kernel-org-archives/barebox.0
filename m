Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJ2ro-0008Si-S0
 for barebox@lists.infradead.org; Mon, 09 Sep 2013 14:55:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  9 Sep 2013 16:54:42 +0200
Message-Id: <1378738482-15488-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] gpio: Add designware gpio controller support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/Kconfig   |   6 ++
 drivers/gpio/Makefile  |   1 +
 drivers/gpio/gpio-dw.c | 151 +++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 158 insertions(+)
 create mode 100644 drivers/gpio/gpio-dw.c

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index d5ac532..18d3135 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -54,6 +54,12 @@ config GPIO_TEGRA
 	help
 	  Say yes here to include the driver for the GPIO controller found on the
 	  Tegra line of SoCs.
+
+config GPIO_DESIGNWARE
+	tristate "Synopsys DesignWare GPIO driver"
+	help
+	  Say Y or M here to build support for the Synopsys DesignWare APB
+	  GPIO block.
 endmenu
 
 endif
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index adb668f..dc9fb13 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -8,3 +8,4 @@ obj-$(CONFIG_GPIO_ORION)	+= gpio-orion.o
 obj-$(CONFIG_GPIO_PL061)	+= gpio-pl061.o
 obj-$(CONFIG_GPIO_STMPE)	+= gpio-stmpe.o
 obj-$(CONFIG_GPIO_TEGRA)	+= gpio-tegra.o
+obj-$(CONFIG_GPIO_DESIGNWARE)	+= gpio-dw.o
diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
new file mode 100644
index 0000000..54e7452
--- /dev/null
+++ b/drivers/gpio/gpio-dw.c
@@ -0,0 +1,151 @@
+/*
+ * Designware GPIO support functions
+ *
+ * Copyright (C) 2012 Altera
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <io.h>
+#include <gpio.h>
+#include <init.h>
+
+#define GPIO_INT_EN_REG_OFFSET 		0x30
+#define GPIO_INT_MASK_REG_OFFSET 	0x34
+#define GPIO_INT_TYPE_LEVEL_REG_OFFSET 	0x38
+#define GPIO_INT_POLARITY_REG_OFFSET 	0x3c
+#define GPIO_INT_STATUS_REG_OFFSET 	0x40
+#define GPIO_PORT_A_EOI_REG_OFFSET 	0x4c
+
+#define GPIO_DDR_OFFSET_PORT	 	0x4
+#define DW_GPIO_EXT 			0x50
+#define DW_GPIO_DR 			0x0
+
+struct dw_gpio_instance {
+	struct gpio_chip chip;
+	u32 gpio_state;		/* GPIO state shadow register */
+	u32 gpio_dir;		/* GPIO direction shadow register */
+	void __iomem *regs;
+};
+
+static inline struct dw_gpio_instance *to_dw_gpio(struct gpio_chip *gc)
+{
+	return container_of(gc, struct dw_gpio_instance, chip);
+}
+
+static int dw_gpio_get(struct gpio_chip *gc, unsigned offset)
+{
+	struct dw_gpio_instance *chip = to_dw_gpio(gc);
+
+	return (readl(chip->regs + DW_GPIO_EXT) >> offset) & 1;
+}
+
+static void dw_gpio_set(struct gpio_chip *gc, unsigned offset, int value)
+{
+	struct dw_gpio_instance *chip = to_dw_gpio(gc);
+	u32 data_reg;
+
+	data_reg = readl(chip->regs + DW_GPIO_DR);
+	data_reg = (data_reg & ~(1<<offset)) | (value << offset);
+	writel(data_reg, chip->regs + DW_GPIO_DR);
+}
+
+static int dw_gpio_direction_input(struct gpio_chip *gc, unsigned offset)
+{
+	struct dw_gpio_instance *chip = to_dw_gpio(gc);
+	u32 gpio_ddr;
+
+	/* Set pin as input, assumes software controlled IP */
+	gpio_ddr = readl(chip->regs + GPIO_DDR_OFFSET_PORT);
+	gpio_ddr &= ~(1 << offset);
+	writel(gpio_ddr, chip->regs + GPIO_DDR_OFFSET_PORT);
+
+	return 0;
+}
+
+static int dw_gpio_direction_output(struct gpio_chip *gc,
+		unsigned offset, int value)
+{
+	struct dw_gpio_instance *chip = to_dw_gpio(gc);
+	u32 gpio_ddr;
+
+	dw_gpio_set(gc, offset, value);
+
+	/* Set pin as output, assumes software controlled IP */
+	gpio_ddr = readl(chip->regs + GPIO_DDR_OFFSET_PORT);
+	gpio_ddr |= (1 << offset);
+	writel(gpio_ddr, chip->regs + GPIO_DDR_OFFSET_PORT);
+
+	return 0;
+}
+
+static struct gpio_ops imx_gpio_ops = {
+	.direction_input = dw_gpio_direction_input,
+	.direction_output = dw_gpio_direction_output,
+	.get = dw_gpio_get,
+	.set = dw_gpio_set,
+};
+
+static int dw_gpio_probe(struct device_d *dev)
+{
+	struct dw_gpio_instance *chip;
+	int ret;
+
+	chip = xzalloc(sizeof(*chip));
+	chip->regs = dev_request_mem_region(dev, 0);
+	if (!chip->regs)
+		return -EBUSY;
+
+	chip->chip.ops = &imx_gpio_ops;
+	if (dev->id < 0) {
+		chip->chip.base = of_alias_get_id(dev->device_node, "gpio");
+		if (chip->chip.base < 0)
+			return chip->chip.base;
+		chip->chip.base *= 32;
+	} else {
+		chip->chip.base = dev->id * 32;
+	}
+	chip->chip.ngpio = 32;
+	chip->chip.dev = dev;
+
+	ret = gpiochip_add(&chip->chip);
+	if (ret)
+		return ret;
+
+	dev_dbg(dev, "probed gpiochip%d with base %d\n", dev->id, chip->chip.base);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id dwgpio_match[] = {
+	{
+		.compatible = "snps,dw-gpio",
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct driver_d dwgpio_driver = {
+	.name = "dw-gpio",
+	.probe = dw_gpio_probe,
+	.of_compatible = DRV_OF_COMPAT(dwgpio_match),
+};
+
+static int __init dwgpio_init(void)
+{
+	return platform_driver_register(&dwgpio_driver);
+}
+core_initcall(dwgpio_init);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
