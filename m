Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK3ZW-0006w9-Lc
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 08:47:52 +0000
Received: by mail-lb0-f177.google.com with SMTP id gi11so1099815lbb.36
 for <barebox@lists.infradead.org>; Fri, 05 Oct 2012 01:47:50 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 5 Oct 2012 10:47:50 +0200
Message-ID: <CAOQ7t2audMLVExJ6tWKWtadwPcsWfxK03L68RE0EbSBd0Dcjgg@mail.gmail.com>
From: Carlo Caione <carlo.caione@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] Add support for BCM2835
To: barebox@lists.infradead.org

Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
---
 arch/arm/Kconfig                              |   7 +
 arch/arm/Makefile                             |   1 +
 arch/arm/mach-bcm2835/Kconfig                 |  22 +++
 arch/arm/mach-bcm2835/Makefile                |   3 +
 arch/arm/mach-bcm2835/clock.c                 |  59 ++++++++
 arch/arm/mach-bcm2835/core.c                  | 108 ++++++++++++++
 arch/arm/mach-bcm2835/gpio.c                  | 145 ++++++++++++++++++
 arch/arm/mach-bcm2835/include/mach/clkdev.h   |   7 +
 arch/arm/mach-bcm2835/include/mach/clock.h    |  10 ++
 arch/arm/mach-bcm2835/include/mach/core.h     |  27 ++++
 arch/arm/mach-bcm2835/include/mach/gpio.h     |   9 ++
 arch/arm/mach-bcm2835/include/mach/platform.h | 207 ++++++++++++++++++++++++++
 12 files changed, 605 insertions(+)
 create mode 100644 arch/arm/mach-bcm2835/Kconfig
 create mode 100644 arch/arm/mach-bcm2835/Makefile
 create mode 100644 arch/arm/mach-bcm2835/clock.c
 create mode 100644 arch/arm/mach-bcm2835/core.c
 create mode 100644 arch/arm/mach-bcm2835/gpio.c
 create mode 100644 arch/arm/mach-bcm2835/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/clock.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/core.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/gpio.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/platform.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8278c82..5029c50 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -31,6 +31,12 @@ config ARCH_AT91
 	select HAS_DEBUG_LL
 	select HAVE_MACH_ARM_HEAD

+config ARCH_BCM2835
+	bool "Broadcom BCM2835 boards"
+	select GENERIC_GPIO
+	select GPIOLIB
+	select CPU_ARM1176
+
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
 	select CPU_ARM920T
@@ -99,6 +105,7 @@ endchoice

 source arch/arm/cpu/Kconfig
 source arch/arm/mach-at91/Kconfig
+source arch/arm/mach-bcm2835/Kconfig
 source arch/arm/mach-ep93xx/Kconfig
 source arch/arm/mach-imx/Kconfig
 source arch/arm/mach-mxs/Kconfig
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 855043a..2ea11d6 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -52,6 +52,7 @@ AFLAGS   += -include asm/unified.h -msoft-float
$(AFLAGS_THUMB2)
 # Machine directory name.  This list is sorted alphanumerically
 # by CONFIG_* macro name.
 machine-$(CONFIG_ARCH_AT91)		:= at91
+machine-$(CONFIG_ARCH_BCM2835)		:= bcm2835
 machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
 machine-$(CONFIG_ARCH_IMX)		:= imx
 machine-$(CONFIG_ARCH_MXS)		:= mxs
diff --git a/arch/arm/mach-bcm2835/Kconfig b/arch/arm/mach-bcm2835/Kconfig
new file mode 100644
index 0000000..9591004
--- /dev/null
+++ b/arch/arm/mach-bcm2835/Kconfig
@@ -0,0 +1,22 @@
+if ARCH_BCM2835
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x04000000 if MACH_RPI
+
+
+config BOARDINFO
+	default "RaspberryPi (BCM2835/ARM1176JZF-S)" if MACH_RPI
+
+choice
+	prompt "Broadcom Board type"
+
+config MACH_RPI
+	bool "RaspberryPi (BCM2835/ARM1176JZF-S)"
+	select ARM_AMBA
+	select CLKDEV_LOOKUP
+
+endchoice
+
+
+endif
diff --git a/arch/arm/mach-bcm2835/Makefile b/arch/arm/mach-bcm2835/Makefile
new file mode 100644
index 0000000..04e6470
--- /dev/null
+++ b/arch/arm/mach-bcm2835/Makefile
@@ -0,0 +1,3 @@
+obj-y += core.o
+obj-y += clock.o
+obj-y += gpio.o
diff --git a/arch/arm/mach-bcm2835/clock.c b/arch/arm/mach-bcm2835/clock.c
new file mode 100644
index 0000000..1d9b24a
--- /dev/null
+++ b/arch/arm/mach-bcm2835/clock.c
@@ -0,0 +1,59 @@
+/*
+ * Copyright (C) 2009 Alessandro Rubini
+ */
+
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <debug_ll.h>
+
+#include <linux/clkdev.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#include <io.h>
+#include <asm/hardware/arm_timer.h>
+#include <asm/armlinux.h>
+
+#include <mach/platform.h>
+#include <mach/clock.h>
+
+int clk_enable(struct clk *clk)
+{
+	return 0;
+}
+EXPORT_SYMBOL(clk_enable);
+
+void clk_disable(struct clk *clk)
+{
+}
+EXPORT_SYMBOL(clk_disable);
+
+unsigned long clk_get_rate(struct clk *clk)
+{
+	return clk->rate;
+}
+EXPORT_SYMBOL(clk_get_rate);
+
+long clk_round_rate(struct clk *clk, unsigned long rate)
+{
+	return clk->rate;
+}
+EXPORT_SYMBOL(clk_round_rate);
+
+int clk_set_rate(struct clk *clk, unsigned long rate)
+{
+	return -EIO;
+}
+EXPORT_SYMBOL(clk_set_rate);
+
+int bcm2835_clk_create(struct clk *clk, const char *dev_id)
+{
+	struct clk_lookup *clkdev;
+
+	clkdev = clkdev_alloc(clk, NULL, dev_id);
+	if (!clkdev)
+		return -ENOMEM;
+	clkdev_add(clkdev);
+	return 0;
+}
diff --git a/arch/arm/mach-bcm2835/core.c b/arch/arm/mach-bcm2835/core.c
new file mode 100644
index 0000000..2c41c86
--- /dev/null
+++ b/arch/arm/mach-bcm2835/core.c
@@ -0,0 +1,108 @@
+/*
+ * Author: Carlo Caione <carlo@carlocaione.org>
+ *
+ * Based on mach-nomadik
+ * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
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
+#include <init.h>
+#include <clock.h>
+#include <debug_ll.h>
+
+#include <linux/clkdev.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#include <io.h>
+#include <asm/hardware/arm_timer.h>
+#include <asm/armlinux.h>
+
+#include <mach/platform.h>
+#include <mach/core.h>
+#include <mach/clock.h>
+#include <linux/amba/bus.h>
+
+static struct clk ref30_clk = {
+	.rate = 3000000,
+};
+
+static struct clk bcm2835_dummy;
+
+void bcm2835_add_device_sdram(u32 size)
+{
+	arm_add_mem_device("ram0", 0x00000000, size);
+}
+
+static struct clk_lookup clocks_lookups[] = {
+	CLKDEV_CON_ID("apb_pclk", &bcm2835_dummy),
+	CLKDEV_DEV_ID("uart-pl0110", &ref30_clk),
+};
+
+#define STC_FREQ_HZ 1000000
+
+static uint64_t stc_read_cycles(void)
+{
+	return (uint64_t) readl(ST_BASE + 0x04);
+}
+
+static struct clocksource bcm2835_cs = {
+	.read = stc_read_cycles,
+	.mask = CLOCKSOURCE_MASK(32),
+};
+
+static int bcm2835_gpio_init(void)
+{
+    add_generic_device("bcm2835-gpio", 0, NULL, 0x20200000, 0xB0,
IORESOURCE_MEM, NULL);
+	return 0;
+}
+coredevice_initcall(bcm2835_gpio_init);
+
+static int bcm2835_clocksource_init(void)
+{
+	clocks_calc_mult_shift(&bcm2835_cs.mult, &bcm2835_cs.shift,
STC_FREQ_HZ, NSEC_PER_SEC, 60);
+	return init_clock(&bcm2835_cs);
+}
+core_initcall(bcm2835_clocksource_init);
+
+static int bcm2835_clkdev_init(void)
+{
+	clkdev_add_table(clocks_lookups, ARRAY_SIZE(clocks_lookups));
+	return 0;
+}
+postcore_initcall(bcm2835_clkdev_init);
+
+void bcm2835_register_uart(void)
+{
+	amba_apb_device_add(NULL, "uart-pl011", 0, UART0_BASE, 4096, NULL, 0);
+}
+
+#define RESET_TIMEOUT 10
+
+void __noreturn reset_cpu (unsigned long addr)
+{
+	uint32_t rstc;
+
+    rstc = readl(PM_RSTC);
+    rstc &= ~PM_RSTC_WRCFG_SET;
+    rstc |= PM_RSTC_WRCFG_FULL_RESET;
+    writel(PM_PASSWORD | RESET_TIMEOUT, PM_WDOG);
+    writel(PM_PASSWORD | rstc, PM_RSTC);
+}
+EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-bcm2835/gpio.c b/arch/arm/mach-bcm2835/gpio.c
new file mode 100644
index 0000000..a62cda4
--- /dev/null
+++ b/arch/arm/mach-bcm2835/gpio.c
@@ -0,0 +1,145 @@
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
+enum { GPIO_FSEL_INPUT, GPIO_FSEL_OUTPUT,
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
+static int bcm2835_set_function(struct gpio_chip *chip, unsigned
gpio, int function)
+{
+	struct bcm2835_gpio_chip *imxgpio = container_of(chip, struct
bcm2835_gpio_chip, chip);
+	void __iomem *base = imxgpio->base;
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
+static void bcm2835_gpio_set_value(struct gpio_chip *chip, unsigned
gpio, int value)
+{
+	struct bcm2835_gpio_chip *imxgpio = container_of(chip, struct
bcm2835_gpio_chip, chip);
+	void __iomem *base = imxgpio->base;
+	unsigned gpio_bank = gpio / 32;
+	unsigned gpio_field_offset = (gpio - 32 * gpio_bank);
+
+	if (value)
+		writel(1 << gpio_field_offset, base + GPIOSET(gpio_bank));
+	else
+		writel(1 << gpio_field_offset, base + GPIOCLR(gpio_bank));
+}
+
+static int bcm2835_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
+{
+	struct bcm2835_gpio_chip *bcmgpio = container_of(chip, struct
bcm2835_gpio_chip, chip);
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
+static int bcm2835_gpio_direction_output(struct gpio_chip *chip,
unsigned gpio, int value)
+{
+	int ret;
+	ret =  bcm2835_set_function(chip, gpio, GPIO_FSEL_OUTPUT);
+	if (ret >= 0)
+		bcm2835_gpio_set_value(chip, gpio, value);
+	return ret;
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
+
+	bcmgpio = xzalloc(sizeof(*bcmgpio));
+	bcmgpio->base = dev_request_mem_region(dev, 0);
+	bcmgpio->chip.ops = &bcm2835_gpio_ops;
+	bcmgpio->chip.base = -1;
+	bcmgpio->chip.ngpio = 54;
+	bcmgpio->chip.dev = dev;
+	gpiochip_add(&bcmgpio->chip);
+
+	dev_info(dev, "probed gpiochip%d with base %d\n", dev->id,
bcmgpio->chip.base);
+
+	return 0;
+}
+
+static struct driver_d bcm2835_gpio_driver = {
+	.name = "bcm2835-gpio",
+	.probe = bcm2835_gpio_probe,
+};
+
+static int bcm2835_gpio_add(void)
+{
+	register_driver(&bcm2835_gpio_driver);
+	return 0;
+}
+coredevice_initcall(bcm2835_gpio_add);
diff --git a/arch/arm/mach-bcm2835/include/mach/clkdev.h
b/arch/arm/mach-bcm2835/include/mach/clkdev.h
new file mode 100644
index 0000000..04b37a8
--- /dev/null
+++ b/arch/arm/mach-bcm2835/include/mach/clkdev.h
@@ -0,0 +1,7 @@
+#ifndef __ASM_MACH_CLKDEV_H
+#define __ASM_MACH_CLKDEV_H
+
+#define __clk_get(clk) ({ 1; })
+#define __clk_put(clk) do { } while (0)
+
+#endif
diff --git a/arch/arm/mach-bcm2835/include/mach/clock.h
b/arch/arm/mach-bcm2835/include/mach/clock.h
new file mode 100644
index 0000000..a365a77
--- /dev/null
+++ b/arch/arm/mach-bcm2835/include/mach/clock.h
@@ -0,0 +1,10 @@
+#ifndef _BCM2708_CLOCK_H
+#define _BCM2708_CLOCK_H
+
+int bcm2835_clk_create(struct clk *clk, const char *dev_id);
+
+struct clk {
+	unsigned long rate;
+};
+
+#endif
\ No newline at end of file
diff --git a/arch/arm/mach-bcm2835/include/mach/core.h
b/arch/arm/mach-bcm2835/include/mach/core.h
new file mode 100644
index 0000000..e60d947
--- /dev/null
+++ b/arch/arm/mach-bcm2835/include/mach/core.h
@@ -0,0 +1,27 @@
+/*
+ * Copyright (C) 2009 Carlo Caione <carlo@carlocaione.org>
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
+#ifndef __BCM2835_CORE_H__
+#define __BCM2835_CORE_H__
+
+void bcm2835_register_uart(void);
+void bcm2835_add_device_sdram(u32 size);
+
+#endif
diff --git a/arch/arm/mach-bcm2835/include/mach/gpio.h
b/arch/arm/mach-bcm2835/include/mach/gpio.h
new file mode 100644
index 0000000..6d31d20
--- /dev/null
+++ b/arch/arm/mach-bcm2835/include/mach/gpio.h
@@ -0,0 +1,9 @@
+#ifndef _BCM2835_GPIO_H
+#define _BCM2835_GPIO_H
+
+void gpio_set_value(unsigned gpio, int value);
+int gpio_get_value(unsigned gpio);
+int gpio_direction_output(unsigned gpio, int value);
+int gpio_direction_input(unsigned gpio);
+
+#endif /* _BCM2835_GPIO_H */
diff --git a/arch/arm/mach-bcm2835/include/mach/platform.h
b/arch/arm/mach-bcm2835/include/mach/platform.h
new file mode 100644
index 0000000..3b92005
--- /dev/null
+++ b/arch/arm/mach-bcm2835/include/mach/platform.h
@@ -0,0 +1,207 @@
+/*
+ * arch/arm/mach-bcm2708/include/mach/platform.h
+ *
+ * Copyright (C) 2010 Broadcom
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
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#ifndef _BCM2708_PLATFORM_H
+#define _BCM2708_PLATFORM_H
+
+
+
+/*
+ *  SDRAM
+ */
+#define BCM2708_SDRAM_BASE           0x00000000
+
+/*
+ *  Logic expansion modules
+ *
+ */
+
+
+/*
+ * Definitions and addresses for the ARM CONTROL logic
+ * This file is manually generated.
+ */
+
+#define BCM2708_PERI_BASE        0x20000000
+#define ST_BASE                  (BCM2708_PERI_BASE + 0x3000)   /*
System Timer */
+#define DMA_BASE		 (BCM2708_PERI_BASE + 0x7000)	/* DMA controller */
+#define ARM_BASE                 (BCM2708_PERI_BASE + 0xB000)	 /*
BCM2708 ARM control block */
+#define PM_BASE			 (BCM2708_PERI_BASE + 0x100000) /* Power
Management, Reset controller and Watchdog registers */
+#define GPIO_BASE                (BCM2708_PERI_BASE + 0x200000) /* GPIO */
+#define UART0_BASE               (BCM2708_PERI_BASE + 0x201000)	/* Uart 0 */
+#define MMCI0_BASE               (BCM2708_PERI_BASE + 0x202000) /*
MMC interface */
+#define SPI0_BASE		 (BCM2708_PERI_BASE + 0x204000) /* SPI0 */
+#define BSC0_BASE		 (BCM2708_PERI_BASE + 0x205000) /* BSC0 I2C/TWI */
+#define UART1_BASE               (BCM2708_PERI_BASE + 0x215000) /* Uart 1 */
+#define EMMC_BASE                (BCM2708_PERI_BASE + 0x300000) /*
eMMC interface */
+#define SMI_BASE		 (BCM2708_PERI_BASE + 0x600000) /* SMI */
+#define BSC1_BASE		 (BCM2708_PERI_BASE + 0x804000) /* BSC1 I2C/TWI */
+#define USB_BASE                 (BCM2708_PERI_BASE + 0x980000) /*
DTC_OTG USB controller */
+#define MCORE_BASE               (BCM2708_PERI_BASE + 0x0000)   /*
Fake frame buffer device (actually the multicore sync block*/
+
+#define ARMCTRL_BASE             (ARM_BASE + 0x000)
+#define ARMCTRL_IC_BASE          (ARM_BASE + 0x200)           /* ARM
interrupt controller */
+#define ARMCTRL_TIMER0_1_BASE    (ARM_BASE + 0x400)           /*
Timer 0 and 1 */
+#define ARMCTRL_0_SBM_BASE       (ARM_BASE + 0x800)           /* User
0 (ARM)'s Semaphores Doorbells and Mailboxes */
+
+
+/*
+ * Interrupt assignments
+ */
+
+#define ARM_IRQ1_BASE                  0
+#define INTERRUPT_TIMER0               (ARM_IRQ1_BASE + 0)
+#define INTERRUPT_TIMER1               (ARM_IRQ1_BASE + 1)
+#define INTERRUPT_TIMER2               (ARM_IRQ1_BASE + 2)
+#define INTERRUPT_TIMER3               (ARM_IRQ1_BASE + 3)
+#define INTERRUPT_CODEC0               (ARM_IRQ1_BASE + 4)
+#define INTERRUPT_CODEC1               (ARM_IRQ1_BASE + 5)
+#define INTERRUPT_CODEC2               (ARM_IRQ1_BASE + 6)
+#define INTERRUPT_VC_JPEG              (ARM_IRQ1_BASE + 7)
+#define INTERRUPT_ISP                  (ARM_IRQ1_BASE + 8)
+#define INTERRUPT_VC_USB               (ARM_IRQ1_BASE + 9)
+#define INTERRUPT_VC_3D                (ARM_IRQ1_BASE + 10)
+#define INTERRUPT_TRANSPOSER           (ARM_IRQ1_BASE + 11)
+#define INTERRUPT_MULTICORESYNC0       (ARM_IRQ1_BASE + 12)
+#define INTERRUPT_MULTICORESYNC1       (ARM_IRQ1_BASE + 13)
+#define INTERRUPT_MULTICORESYNC2       (ARM_IRQ1_BASE + 14)
+#define INTERRUPT_MULTICORESYNC3       (ARM_IRQ1_BASE + 15)
+#define INTERRUPT_DMA0                 (ARM_IRQ1_BASE + 16)
+#define INTERRUPT_DMA1                 (ARM_IRQ1_BASE + 17)
+#define INTERRUPT_VC_DMA2              (ARM_IRQ1_BASE + 18)
+#define INTERRUPT_VC_DMA3              (ARM_IRQ1_BASE + 19)
+#define INTERRUPT_DMA4                 (ARM_IRQ1_BASE + 20)
+#define INTERRUPT_DMA5                 (ARM_IRQ1_BASE + 21)
+#define INTERRUPT_DMA6                 (ARM_IRQ1_BASE + 22)
+#define INTERRUPT_DMA7                 (ARM_IRQ1_BASE + 23)
+#define INTERRUPT_DMA8                 (ARM_IRQ1_BASE + 24)
+#define INTERRUPT_DMA9                 (ARM_IRQ1_BASE + 25)
+#define INTERRUPT_DMA10                (ARM_IRQ1_BASE + 26)
+#define INTERRUPT_DMA11                (ARM_IRQ1_BASE + 27)
+#define INTERRUPT_DMA12                (ARM_IRQ1_BASE + 28)
+#define INTERRUPT_AUX                (ARM_IRQ1_BASE + 29)
+#define INTERRUPT_ARM                  (ARM_IRQ1_BASE + 30)
+#define INTERRUPT_VPUDMA               (ARM_IRQ1_BASE + 31)
+
+#define ARM_IRQ2_BASE                  32
+#define INTERRUPT_HOSTPORT             (ARM_IRQ2_BASE + 0)
+#define INTERRUPT_VIDEOSCALER          (ARM_IRQ2_BASE + 1)
+#define INTERRUPT_CCP2TX               (ARM_IRQ2_BASE + 2)
+#define INTERRUPT_SDC                  (ARM_IRQ2_BASE + 3)
+#define INTERRUPT_DSI0                 (ARM_IRQ2_BASE + 4)
+#define INTERRUPT_AVE                  (ARM_IRQ2_BASE + 5)
+#define INTERRUPT_CAM0                 (ARM_IRQ2_BASE + 6)
+#define INTERRUPT_CAM1                 (ARM_IRQ2_BASE + 7)
+#define INTERRUPT_HDMI0                (ARM_IRQ2_BASE + 8)
+#define INTERRUPT_HDMI1                (ARM_IRQ2_BASE + 9)
+#define INTERRUPT_PIXELVALVE1          (ARM_IRQ2_BASE + 10)
+#define INTERRUPT_I2CSPISLV            (ARM_IRQ2_BASE + 11)
+#define INTERRUPT_DSI1                 (ARM_IRQ2_BASE + 12)
+#define INTERRUPT_PWA0                 (ARM_IRQ2_BASE + 13)
+#define INTERRUPT_PWA1                 (ARM_IRQ2_BASE + 14)
+#define INTERRUPT_CPR                  (ARM_IRQ2_BASE + 15)
+#define INTERRUPT_SMI                  (ARM_IRQ2_BASE + 16)
+#define INTERRUPT_GPIO0                (ARM_IRQ2_BASE + 17)
+#define INTERRUPT_GPIO1                (ARM_IRQ2_BASE + 18)
+#define INTERRUPT_GPIO2                (ARM_IRQ2_BASE + 19)
+#define INTERRUPT_GPIO3                (ARM_IRQ2_BASE + 20)
+#define INTERRUPT_VC_I2C               (ARM_IRQ2_BASE + 21)
+#define INTERRUPT_VC_SPI               (ARM_IRQ2_BASE + 22)
+#define INTERRUPT_VC_I2SPCM            (ARM_IRQ2_BASE + 23)
+#define INTERRUPT_VC_SDIO              (ARM_IRQ2_BASE + 24)
+#define INTERRUPT_VC_UART              (ARM_IRQ2_BASE + 25)
+#define INTERRUPT_SLIMBUS              (ARM_IRQ2_BASE + 26)
+#define INTERRUPT_VEC                  (ARM_IRQ2_BASE + 27)
+#define INTERRUPT_CPG                  (ARM_IRQ2_BASE + 28)
+#define INTERRUPT_RNG                  (ARM_IRQ2_BASE + 29)
+#define INTERRUPT_VC_ARASANSDIO        (ARM_IRQ2_BASE + 30)
+#define INTERRUPT_AVSPMON              (ARM_IRQ2_BASE + 31)
+
+#define ARM_IRQ0_BASE                  64
+#define INTERRUPT_ARM_TIMER            (ARM_IRQ0_BASE + 0)
+#define INTERRUPT_ARM_MAILBOX          (ARM_IRQ0_BASE + 1)
+#define INTERRUPT_ARM_DOORBELL_0       (ARM_IRQ0_BASE + 2)
+#define INTERRUPT_ARM_DOORBELL_1       (ARM_IRQ0_BASE + 3)
+#define INTERRUPT_VPU0_HALTED          (ARM_IRQ0_BASE + 4)
+#define INTERRUPT_VPU1_HALTED          (ARM_IRQ0_BASE + 5)
+#define INTERRUPT_ILLEGAL_TYPE0        (ARM_IRQ0_BASE + 6)
+#define INTERRUPT_ILLEGAL_TYPE1        (ARM_IRQ0_BASE + 7)
+#define INTERRUPT_PENDING1             (ARM_IRQ0_BASE + 8)
+#define INTERRUPT_PENDING2             (ARM_IRQ0_BASE + 9)
+#define INTERRUPT_JPEG                 (ARM_IRQ0_BASE + 10)
+#define INTERRUPT_USB                  (ARM_IRQ0_BASE + 11)
+#define INTERRUPT_3D                   (ARM_IRQ0_BASE + 12)
+#define INTERRUPT_DMA2                 (ARM_IRQ0_BASE + 13)
+#define INTERRUPT_DMA3                 (ARM_IRQ0_BASE + 14)
+#define INTERRUPT_I2C                  (ARM_IRQ0_BASE + 15)
+#define INTERRUPT_SPI                  (ARM_IRQ0_BASE + 16)
+#define INTERRUPT_I2SPCM               (ARM_IRQ0_BASE + 17)
+#define INTERRUPT_SDIO                 (ARM_IRQ0_BASE + 18)
+#define INTERRUPT_UART                 (ARM_IRQ0_BASE + 19)
+#define INTERRUPT_ARASANSDIO           (ARM_IRQ0_BASE + 20)
+
+#define MAXIRQNUM                      (32 + 32 + 20)
+#define MAXFIQNUM                      (32 + 32 + 20)
+
+#define MAX_TIMER                       2
+#define MAX_PERIOD                      699050
+#define TICKS_PER_uSEC                  1
+
+/*
+ *  These are useconds NOT ticks.
+ *
+ */
+#define mSEC_1                          1000
+#define mSEC_5                          (mSEC_1 * 5)
+#define mSEC_10                         (mSEC_1 * 10)
+#define mSEC_25                         (mSEC_1 * 25)
+#define SEC_1                           (mSEC_1 * 1000)
+
+/*
+ * Watchdog
+ */
+#define PM_RSTC			       (PM_BASE+0x1c)
+#define PM_RSTS			       (PM_BASE+0x20)
+#define PM_WDOG			       (PM_BASE+0x24)
+
+#define PM_WDOG_RESET                                         0000000000
+#define PM_PASSWORD		       0x5a000000
+#define PM_WDOG_TIME_SET	       0x000fffff
+#define PM_RSTC_WRCFG_CLR              0xffffffcf
+#define PM_RSTC_WRCFG_SET              0x00000030
+#define PM_RSTC_WRCFG_FULL_RESET       0x00000020
+#define PM_RSTC_RESET                  0x00000102
+
+#define PM_RSTS_HADPOR_SET                                 0x00001000
+#define PM_RSTS_HADSRH_SET                                 0x00000400
+#define PM_RSTS_HADSRF_SET                                 0x00000200
+#define PM_RSTS_HADSRQ_SET                                 0x00000100
+#define PM_RSTS_HADWRH_SET                                 0x00000040
+#define PM_RSTS_HADWRF_SET                                 0x00000020
+#define PM_RSTS_HADWRQ_SET                                 0x00000010
+#define PM_RSTS_HADDRH_SET                                 0x00000004
+#define PM_RSTS_HADDRF_SET                                 0x00000002
+#define PM_RSTS_HADDRQ_SET                                 0x00000001
+
+#define UART0_CLOCK      3000000
+
+#endif
+
+/* END */
-- 
1.7.12.2

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
