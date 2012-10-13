Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMzoi-0002Lc-66
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 11:23:43 +0000
Received: by mail-wi0-f171.google.com with SMTP id hj13so254975wib.0
 for <barebox@lists.infradead.org>; Sat, 13 Oct 2012 04:23:36 -0700 (PDT)
From: Carlo Caione <carlo.caione@gmail.com>
Date: Sat, 13 Oct 2012 13:22:58 +0200
Message-Id: <1350127381-21312-3-git-send-email-carlo.caione@gmail.com>
In-Reply-To: <1350127381-21312-1-git-send-email-carlo.caione@gmail.com>
References: <1350127381-21312-1-git-send-email-carlo.caione@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/5] BCM2835: add gpio driver
To: barebox@lists.infradead.org

Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
---
 drivers/gpio/Kconfig        |   4 ++
 drivers/gpio/Makefile       |   1 +
 drivers/gpio/gpio-bcm2835.c | 165 ++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 170 insertions(+)
 create mode 100644 drivers/gpio/gpio-bcm2835.c

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index a0e9b58..e8eeb6d 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -6,6 +6,10 @@ if GPIOLIB
 
 menu "GPIO                          "
 
+config GPIO_BCM2835
+	bool "GPIO support for BCM2835"
+	depends on ARCH_BCM2835
+
 config GPIO_PL061
 	bool "PrimeCell PL061 GPIO support"
 	depends on ARM_AMBA
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index e2e97d3..aecdf24 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_GPIOLIB) += gpio.o
 
+obj-$(CONFIG_GPIO_BCM2835)	+= gpio-bcm2835.o
 obj-$(CONFIG_GPIO_PL061)	+= gpio-pl061.o
 obj-$(CONFIG_GPIO_STMPE) += gpio-stmpe.o
diff --git a/drivers/gpio/gpio-bcm2835.c b/drivers/gpio/gpio-bcm2835.c
new file mode 100644
index 0000000..2a9bc59
--- /dev/null
+++ b/drivers/gpio/gpio-bcm2835.c
@@ -0,0 +1,165 @@
+/*
+ * Author: Carlo Caione <carlo@carlocaione.org>
+ *
+ * Based on linux/arch/arm/mach-bcm2708/bcm2708_gpio.c
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <malloc.h>
+#include <io.h>
+#include <gpio.h>
+#include <init.h>
+#include <mach/platform.h>
+
+#define GPIOFSEL(x)  (0x00+(x)*4)
+#define GPIOSET(x)   (0x1c+(x)*4)
+#define GPIOCLR(x)   (0x28+(x)*4)
+#define GPIOLEV(x)   (0x34+(x)*4)
+#define GPIOEDS(x)   (0x40+(x)*4)
+#define GPIOREN(x)   (0x4c+(x)*4)
+#define GPIOFEN(x)   (0x58+(x)*4)
+#define GPIOHEN(x)   (0x64+(x)*4)
+#define GPIOLEN(x)   (0x70+(x)*4)
+#define GPIOAREN(x)  (0x7c+(x)*4)
+#define GPIOAFEN(x)  (0x88+(x)*4)
+#define GPIOUD(x)    (0x94+(x)*4)
+#define GPIOUDCLK(x) (0x98+(x)*4)
+
+enum {
+	GPIO_FSEL_INPUT, GPIO_FSEL_OUTPUT,
+	GPIO_FSEL_ALT5, GPIO_FSEL_ALT_4,
+	GPIO_FSEL_ALT0, GPIO_FSEL_ALT1,
+	GPIO_FSEL_ALT2, GPIO_FSEL_ALT3,
+};
+
+struct bcm2835_gpio_chip {
+	void __iomem *base;
+	struct gpio_chip chip;
+};
+
+static int bcm2835_set_function(struct gpio_chip *chip, unsigned gpio, int function)
+{
+	struct bcm2835_gpio_chip *bcmgpio = container_of(chip, struct bcm2835_gpio_chip, chip);
+	void __iomem *base = bcmgpio->base;
+	unsigned gpiodir;
+	unsigned gpio_bank = gpio / 10;
+	unsigned gpio_field_offset = (gpio - 10 * gpio_bank) * 3;
+
+	gpiodir = readl(base + GPIOFSEL(gpio_bank));
+	gpiodir &= ~(7 << gpio_field_offset);
+	gpiodir |= function << gpio_field_offset;
+	writel(gpiodir, base + GPIOFSEL(gpio_bank));
+	gpiodir = readl(base + GPIOFSEL(gpio_bank));
+
+	return 0;
+}
+
+static void bcm2835_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
+{
+	struct bcm2835_gpio_chip *bcmgpio = container_of(chip, struct bcm2835_gpio_chip, chip);
+	void __iomem *base = bcmgpio->base;
+	unsigned gpio_bank = gpio / 32;
+	unsigned gpio_field_offset = gpio % 32;
+
+	if (value)
+		writel(1 << gpio_field_offset, base + GPIOSET(gpio_bank));
+	else
+		writel(1 << gpio_field_offset, base + GPIOCLR(gpio_bank));
+}
+
+static int bcm2835_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
+{
+	struct bcm2835_gpio_chip *bcmgpio = container_of(chip, struct bcm2835_gpio_chip, chip);
+	void __iomem *base = bcmgpio->base;
+	unsigned gpio_bank = gpio / 32;
+	unsigned gpio_field_offset = gpio % 32;
+	unsigned lev;
+
+	lev = readl(base + GPIOLEV(gpio_bank));
+	return 0x1 & (lev >> gpio_field_offset);
+}
+
+static int bcm2835_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
+{
+	return bcm2835_set_function(chip, gpio, GPIO_FSEL_INPUT);
+}
+
+static int bcm2835_gpio_direction_output(struct gpio_chip *chip, unsigned gpio, int value)
+{
+	bcm2835_set_function(chip, gpio, GPIO_FSEL_OUTPUT);
+	bcm2835_gpio_set_value(chip, gpio, value);
+
+	return 0;
+}
+
+static struct gpio_ops bcm2835_gpio_ops = {
+	.direction_input = bcm2835_gpio_direction_input,
+	.direction_output = bcm2835_gpio_direction_output,
+	.get = bcm2835_gpio_get_value,
+	.set = bcm2835_gpio_set_value,
+};
+
+static int bcm2835_gpio_probe(struct device_d *dev)
+{
+	struct bcm2835_gpio_chip *bcmgpio;
+	int ret;
+
+	bcmgpio = xzalloc(sizeof(*bcmgpio));
+	bcmgpio->base = dev_request_mem_region(dev, 0);
+	bcmgpio->chip.ops = &bcm2835_gpio_ops;
+	bcmgpio->chip.base = -1;
+	bcmgpio->chip.ngpio = 54;
+	bcmgpio->chip.dev = dev;
+
+	ret = gpiochip_add(&bcmgpio->chip);
+	if (ret) {
+		dev_err(dev, "couldn't add gpiochip, ret = %d\n", ret);
+		goto err;
+	}
+	dev_info(dev, "probed gpiochip%d with base %d\n", dev->id, bcmgpio->chip.base);
+
+	return 0;
+
+err:
+	kfree(bcmgpio);
+
+	return ret;
+}
+
+static __maybe_unused struct of_device_id bcm2835_gpio_dt_ids[] = {
+	{
+			.compatible = "bcm,bcm2835-gpio",
+	}, {
+			/* sentinel */
+	}
+};
+
+static struct driver_d bcm2835_gpio_driver = {
+	.name = "bcm2835-gpio",
+	.probe = bcm2835_gpio_probe,
+	.of_compatible = DRV_OF_COMPAT(bcm2835_gpio_dt_ids),
+};
+
+static int bcm2835_gpio_add(void)
+{
+	platform_driver_register(&bcm2835_gpio_driver);
+	return 0;
+}
+coredevice_initcall(bcm2835_gpio_add);
-- 
1.7.12.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
