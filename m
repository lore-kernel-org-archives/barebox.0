Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XbVf6-0000J6-Rt
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 14:22:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XbVef-0003PE-8U
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:21 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1XbVef-0004E8-73
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:21 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue,  7 Oct 2014 16:22:18 +0200
Message-Id: <1412691738-11145-20-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
References: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 19/19] MPC5125/GPIO: add a generic GPIO driver
To: barebox@lists.infradead.org

The MPC5125 can handle up to 64 GPIOs divided in two units to control them.
Note: this driver cannot be used with a MPC521 or MPC5123!

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/include/asm/gpio.h                  |  28 ++++++
 arch/ppc/mach-mpc5xxx/Kconfig                |   1 +
 arch/ppc/mach-mpc5xxx/include/mach/mpc512x.h |   2 +
 drivers/gpio/Kconfig                         |   6 ++
 drivers/gpio/Makefile                        |   1 +
 drivers/gpio/gpio-mpc5125.c                  | 136 +++++++++++++++++++++++++++
 6 files changed, 174 insertions(+)
 create mode 100644 arch/ppc/include/asm/gpio.h
 create mode 100644 drivers/gpio/gpio-mpc5125.c

diff --git a/arch/ppc/include/asm/gpio.h b/arch/ppc/include/asm/gpio.h
new file mode 100644
index 0000000..63b712d
--- /dev/null
+++ b/arch/ppc/include/asm/gpio.h
@@ -0,0 +1,28 @@
+#ifndef _ARCH_PPC_GPIO_H
+#define _ARCH_PPC_GPIO_H
+
+#ifndef CONFIG_GPIOLIB
+#include <mach/gpio.h>
+#else /* CONFIG_GPIOLIB */
+#ifdef CONFIG_SOC_MPC5125
+# define ARCH_NR_GPIOS 64
+#else
+# error "GPIO count for this architecture is undefined"
+#endif
+
+static inline int gpio_is_valid(int gpio)
+{
+	if (gpio < 0)
+		return 0;
+	if (gpio < ARCH_NR_GPIOS)
+		return 1;
+	return 0;
+}
+
+void gpio_set_value(unsigned gpio, int value);
+int gpio_get_value(unsigned gpio);
+int gpio_direction_output(unsigned gpio, int value);
+int gpio_direction_input(unsigned gpio);
+#endif /* CONFIG_GPIOLIB */
+
+#endif /* _ARCH_PPC_GPIO_H */
diff --git a/arch/ppc/mach-mpc5xxx/Kconfig b/arch/ppc/mach-mpc5xxx/Kconfig
index a65c21d..0e969b7 100644
--- a/arch/ppc/mach-mpc5xxx/Kconfig
+++ b/arch/ppc/mach-mpc5xxx/Kconfig
@@ -35,6 +35,7 @@ config SOC_MPC5125
 	bool
 	select MPC5xxx
 	select ARCH_MPC512X
+	select GPIOLIB
 
 config MPC5xxx
 	bool
diff --git a/arch/ppc/mach-mpc5xxx/include/mach/mpc512x.h b/arch/ppc/mach-mpc5xxx/include/mach/mpc512x.h
index ed60f2a..20df42f 100644
--- a/arch/ppc/mach-mpc5xxx/include/mach/mpc512x.h
+++ b/arch/ppc/mach-mpc5xxx/include/mach/mpc512x.h
@@ -54,6 +54,8 @@
 #define MPC512X_RESET	(CFG_MBAR + 0x00E00)
 #define MPC512X_CLKM	(CFG_MBAR + 0x00f00)
 #define MPC512X_WDT	(CFG_MBAR + 0x00900)
+#define MPC512X_GPIO1	(CFG_MBAR + 0x01100)
+#define MPC512X_GPIO2	(CFG_MBAR + 0x01180)
 #define MPC512X_FEC1	(CFG_MBAR + 0x02800)
 #define MPC512X_FEC2	(CFG_MBAR + 0x04800)
 #define MPC512X_DRAMC	(CFG_MBAR + 0x09000)
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 0ca7df4..e16ff80 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -110,6 +110,12 @@ config GPIO_DESIGNWARE
 	help
 	  Say Y or M here to build support for the Synopsys DesignWare APB
 	  GPIO block.
+
+config GPIO_MPC5125
+	tristate "PowerPC MPC5125 GPIO driver"
+	depends on SOC_MPC5125
+	help
+	  Say Y here to build support for the MPC5125 GPIO block.
 endmenu
 
 endif
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 510d146..82206db 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -15,3 +15,4 @@ obj-$(CONFIG_GPIO_PL061)	+= gpio-pl061.o
 obj-$(CONFIG_GPIO_STMPE)	+= gpio-stmpe.o
 obj-$(CONFIG_GPIO_TEGRA)	+= gpio-tegra.o
 obj-$(CONFIG_GPIO_DESIGNWARE)	+= gpio-dw.o
+obj-$(CONFIG_GPIO_MPC5125)	+= gpio-mpc5125.o
diff --git a/drivers/gpio/gpio-mpc5125.c b/drivers/gpio/gpio-mpc5125.c
new file mode 100644
index 0000000..8d1bcb3
--- /dev/null
+++ b/drivers/gpio/gpio-mpc5125.c
@@ -0,0 +1,136 @@
+/*
+ * Copyright (C) 2014 Juergen Borleis, Pengutronix
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
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <init.h>
+#include <asm/io.h>
+#include <gpio.h>
+#include <mach/mpc5xxx.h>
+
+#define GPIO_DIR 0
+#define GPIO_ODR 1
+#define GPIO_DAT 2
+#define GPIO_IER 3
+#define GPIO_IMR 4
+#define GPIO_ICR1 5
+#define GPIO_ICR2 6
+
+struct mpc5125_gpio_chip {
+	u32 __iomem *base;
+	struct gpio_chip chip;
+};
+
+static unsigned gpio_no_to_bit(unsigned gpio)
+{
+	/*
+	 * GPIO0 is the highest bit in the register m(
+	 *  regular notation: GPIO0 is register bit 31
+	 *  PPC notation: GPIO0 is register bit 0
+	 */
+	return 1 << (31 - gpio);
+}
+
+static void mpc5125_gpio_set_value(struct gpio_chip *chip, unsigned gpio, int value)
+{
+	struct mpc5125_gpio_chip *mpcgpio = container_of(chip, struct mpc5125_gpio_chip, chip);
+
+	if (value != 0)
+		setbits_be32(&mpcgpio->base[GPIO_DAT], gpio_no_to_bit(gpio));
+	else
+		clrbits_be32(&mpcgpio->base[GPIO_DAT], gpio_no_to_bit(gpio));
+}
+
+static int mpc5125_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
+{
+	struct mpc5125_gpio_chip *mpcgpio = container_of(chip, struct mpc5125_gpio_chip, chip);
+
+	clrbits_be32(&mpcgpio->base[GPIO_DIR], gpio_no_to_bit(gpio));
+	return 0;
+}
+
+static int mpc5125_gpio_direction_output(struct gpio_chip *chip, unsigned gpio, int value)
+{
+	struct mpc5125_gpio_chip *mpcgpio = container_of(chip, struct mpc5125_gpio_chip, chip);
+
+	/* GPIO 0 ... 3 in GPIO unit 1 are input only */
+	if (mpcgpio->chip.dev->id == 0 && gpio < 4) {
+		dev_err(mpcgpio->chip.dev, "GPIO %u is input only\n", gpio);
+		return -ENODEV;
+	}
+
+	if (value != 0)
+		setbits_be32(&mpcgpio->base[GPIO_DAT], gpio_no_to_bit(gpio));
+	else
+		clrbits_be32(&mpcgpio->base[GPIO_DAT], gpio_no_to_bit(gpio));
+	setbits_be32(&mpcgpio->base[GPIO_DIR], gpio_no_to_bit(gpio));
+
+	return 0;
+}
+
+static int mpc5125_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
+{
+	struct mpc5125_gpio_chip *mpcgpio = container_of(chip, struct mpc5125_gpio_chip, chip);
+
+	return in_be32(&mpcgpio->base[GPIO_DAT]) & gpio_no_to_bit(gpio) ? 1 : 0;
+}
+
+static int mpc5125_get_direction(struct gpio_chip *chip, unsigned gpio)
+{
+	struct mpc5125_gpio_chip *mpcgpio = container_of(chip, struct mpc5125_gpio_chip, chip);
+
+	return in_be32(&mpcgpio->base[GPIO_DIR]) & gpio_no_to_bit(gpio) ?
+					GPIOF_DIR_OUT : GPIOF_DIR_IN;
+}
+
+static struct gpio_ops mpc5125_gpio_ops = {
+	.direction_input = mpc5125_gpio_direction_input,
+	.direction_output = mpc5125_gpio_direction_output,
+	.get = mpc5125_gpio_get_value,
+	.set = mpc5125_gpio_set_value,
+	.get_direction = mpc5125_get_direction,
+};
+
+static int mpc5125_gpio_probe(struct device_d *dev)
+{
+	struct mpc5125_gpio_chip *mpcgpio;
+
+	mpcgpio = xzalloc(sizeof(*mpcgpio));
+	mpcgpio->base = dev_request_mem_region(dev, 0);
+	mpcgpio->chip.ops = &mpc5125_gpio_ops;
+	mpcgpio->chip.base = dev->id * 32;
+	mpcgpio->chip.ngpio = 32;
+	mpcgpio->chip.dev = dev;
+	gpiochip_add(&mpcgpio->chip);
+
+	dev_dbg(dev, "probed gpiochip%d with base %d\n", dev->id, mpcgpio->chip.base);
+
+	return 0;
+}
+
+static struct driver_d mpc5125_gpio_driver = {
+	.name = "mpc5125-gpio",
+	.probe = mpc5125_gpio_probe,
+};
+
+static int mpc5125_gpio_add(void)
+{
+	platform_driver_register(&mpc5125_gpio_driver);
+	add_generic_device("mpc5125-gpio", 0, NULL, MPC512X_GPIO1,
+				0x80, IORESOURCE_MEM, NULL);
+	add_generic_device("mpc5125-gpio", 1, NULL, MPC512X_GPIO2,
+				0x80, IORESOURCE_MEM, NULL);
+	return 0;
+}
+coredevice_initcall(mpc5125_gpio_add);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
