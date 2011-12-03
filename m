Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RWsym-0006eD-0O
 for barebox@lists.infradead.org; Sat, 03 Dec 2011 17:02:35 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat,  3 Dec 2011 18:02:00 +0100
Message-Id: <1322931722-23569-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH V3 1/3] arm/mach-pxa: Initial Intel/Marvell PXA support
To: barebox@lists.infradead.org
Cc: Luotao Fu <l.fu@pengutronix.de>

From: Marc Kleine-Budde <mkl@pengutronix.de>

The core support was brought by Marc and Sascha.
The cache choice was fixed by Luotao Fu.
Some gpio and devices addons were provided by Robert.

Signed-off-by: Luotao Fu <l.fu@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

---
Since V1: squashed patches
          fixed pxa_serial
Since V2: cleanups
---
 arch/arm/Kconfig                             |    5 +
 arch/arm/Makefile                            |    2 +
 arch/arm/cpu/Kconfig                         |    5 +
 arch/arm/mach-pxa/Kconfig                    |   37 ++
 arch/arm/mach-pxa/Makefile                   |    6 +
 arch/arm/mach-pxa/clocksource.c              |   45 +++
 arch/arm/mach-pxa/common.c                   |   37 ++
 arch/arm/mach-pxa/devices.c                  |   49 +++
 arch/arm/mach-pxa/gpio.c                     |   68 ++++
 arch/arm/mach-pxa/include/mach/clock.h       |   16 +
 arch/arm/mach-pxa/include/mach/devices.h     |   26 ++
 arch/arm/mach-pxa/include/mach/gpio.h        |  132 ++++++++
 arch/arm/mach-pxa/include/mach/hardware.h    |   31 ++
 arch/arm/mach-pxa/include/mach/mfp-pxa27x.h  |  438 ++++++++++++++++++++++++
 arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h  |  133 ++++++++
 arch/arm/mach-pxa/include/mach/mfp.h         |   21 ++
 arch/arm/mach-pxa/include/mach/pxa-regs.h    |   33 ++
 arch/arm/mach-pxa/include/mach/pxa27x-regs.h |    6 +
 arch/arm/mach-pxa/include/mach/pxa2xx-regs.h |  267 +++++++++++++++
 arch/arm/mach-pxa/include/mach/regs-intc.h   |   34 ++
 arch/arm/mach-pxa/include/mach/regs-ost.h    |   34 ++
 arch/arm/mach-pxa/include/plat/gpio.h        |   74 ++++
 arch/arm/mach-pxa/include/plat/mfp.h         |  468 ++++++++++++++++++++++++++
 arch/arm/mach-pxa/mfp-pxa2xx.c               |  189 +++++++++++
 arch/arm/mach-pxa/speed-pxa27x.c             |   20 ++
 drivers/serial/Kconfig                       |    4 +
 drivers/serial/Makefile                      |    1 +
 drivers/serial/serial_pxa.c                  |  201 +++++++++++
 28 files changed, 2382 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-pxa/Kconfig
 create mode 100644 arch/arm/mach-pxa/Makefile
 create mode 100644 arch/arm/mach-pxa/clocksource.c
 create mode 100644 arch/arm/mach-pxa/common.c
 create mode 100644 arch/arm/mach-pxa/devices.c
 create mode 100644 arch/arm/mach-pxa/gpio.c
 create mode 100644 arch/arm/mach-pxa/include/mach/clock.h
 create mode 100644 arch/arm/mach-pxa/include/mach/devices.h
 create mode 100644 arch/arm/mach-pxa/include/mach/gpio.h
 create mode 100644 arch/arm/mach-pxa/include/mach/hardware.h
 create mode 100644 arch/arm/mach-pxa/include/mach/mfp-pxa27x.h
 create mode 100644 arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h
 create mode 100644 arch/arm/mach-pxa/include/mach/mfp.h
 create mode 100644 arch/arm/mach-pxa/include/mach/pxa-regs.h
 create mode 100644 arch/arm/mach-pxa/include/mach/pxa27x-regs.h
 create mode 100644 arch/arm/mach-pxa/include/mach/pxa2xx-regs.h
 create mode 100644 arch/arm/mach-pxa/include/mach/regs-intc.h
 create mode 100644 arch/arm/mach-pxa/include/mach/regs-ost.h
 create mode 100644 arch/arm/mach-pxa/include/plat/gpio.h
 create mode 100644 arch/arm/mach-pxa/include/plat/mfp.h
 create mode 100644 arch/arm/mach-pxa/mfp-pxa2xx.c
 create mode 100644 arch/arm/mach-pxa/speed-pxa27x.c
 create mode 100644 drivers/serial/serial_pxa.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index b15728e..40677a3 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -62,6 +62,10 @@ config ARCH_NOMADIK
 config ARCH_OMAP
 	bool "TI OMAP"
 
+config ARCH_PXA
+	bool "Intel/Marvell PXA based"
+	select GENERIC_GPIO
+
 config ARCH_S3C24xx
 	bool "Samsung S3C2410, S3C2412, S3C2413, S3C2440, S3C2442, S3C2443"
 	select CPU_ARM920T
@@ -81,6 +85,7 @@ source arch/arm/mach-mxs/Kconfig
 source arch/arm/mach-netx/Kconfig
 source arch/arm/mach-nomadik/Kconfig
 source arch/arm/mach-omap/Kconfig
+source arch/arm/mach-pxa/Kconfig
 source arch/arm/mach-s3c24xx/Kconfig
 source arch/arm/mach-versatile/Kconfig
 
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 0c42f3d..913a90e 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -27,6 +27,7 @@ arch-$(CONFIG_CPU_32v4T)	:=-D__LINUX_ARM_ARCH__=4 -march=armv4t
 # This selects how we optimise for the processor.
 tune-$(CONFIG_CPU_ARM920T)	:=-mtune=arm9tdmi
 tune-$(CONFIG_CPU_ARM926T)	:=-mtune=arm9tdmi
+tune-$(CONFIG_CPU_XSCALE)	:=$(call cc-option,-mtune=xscale,-mtune=strongarm110) -Wa,-mcpu=xscale
 
 ifeq ($(CONFIG_AEABI),y)
 CFLAGS_ABI	:=-mabi=aapcs-linux -mno-thumb-interwork
@@ -50,6 +51,7 @@ machine-$(CONFIG_ARCH_MXS)		:= mxs
 machine-$(CONFIG_ARCH_NOMADIK)		:= nomadik
 machine-$(CONFIG_ARCH_NETX)		:= netx
 machine-$(CONFIG_ARCH_OMAP)		:= omap
+machine-$(CONFIG_ARCH_PXA)		:= pxa
 machine-$(CONFIG_ARCH_S3C24xx)		:= s3c24xx
 machine-$(CONFIG_ARCH_VERSATILE)	:= versatile
 
diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 5337c46..f55e862 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -45,6 +45,11 @@ config CPU_V7
 	bool
 	select CPU_32v7
 
+# Xscale PXA25x, PXA27x
+config CPU_XSCALE
+	bool
+	select CPU_32v4T
+
 # Figure out what processor architecture version we should be using.
 # This defines the compiler instruction set which depends on the machine type.
 config CPU_32v4T
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
new file mode 100644
index 0000000..9e3c53a
--- /dev/null
+++ b/arch/arm/mach-pxa/Kconfig
@@ -0,0 +1,37 @@
+if ARCH_PXA
+
+config ARCH_TEXT_BASE
+	hex
+
+config BOARDINFO
+	string
+
+# ----------------------------------------------------------
+
+config ARCH_PXA2XX
+	bool
+	select CPU_XSCALE
+
+choice
+	prompt "Intel/Marvell PXA Processor"
+
+config ARCH_PXA27X
+	bool "PXA27x"
+	select ARCH_PXA2XX
+
+endchoice
+
+# ----------------------------------------------------------
+
+if ARCH_PXA27X
+
+choice
+	prompt "PXA27x Board Type"
+
+endchoice
+
+endif
+
+# ----------------------------------------------------------
+
+endif
diff --git a/arch/arm/mach-pxa/Makefile b/arch/arm/mach-pxa/Makefile
new file mode 100644
index 0000000..c01a9e0
--- /dev/null
+++ b/arch/arm/mach-pxa/Makefile
@@ -0,0 +1,6 @@
+obj-y += clocksource.o
+obj-y += common.o
+obj-y += gpio.o
+
+obj-$(CONFIG_ARCH_PXA2XX) += mfp-pxa2xx.o
+obj-$(CONFIG_ARCH_PXA27X) += speed-pxa27x.o
diff --git a/arch/arm/mach-pxa/clocksource.c b/arch/arm/mach-pxa/clocksource.c
new file mode 100644
index 0000000..04d090a
--- /dev/null
+++ b/arch/arm/mach-pxa/clocksource.c
@@ -0,0 +1,45 @@
+/*
+ * (C) Copyright 2009 Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+#include <init.h>
+#include <clock.h>
+#include <asm/io.h>
+
+#define OSCR	0x40A00010
+
+uint64_t pxa_clocksource_read(void)
+{
+	return readl(OSCR);
+}
+
+static struct clocksource cs = {
+	.read	= pxa_clocksource_read,
+	.mask	= 0xffffffff,
+	.shift	= 20,
+};
+
+static int clocksource_init(void)
+{
+	cs.mult = clocksource_hz2mult(3250000, cs.shift);
+
+	init_clock(&cs);
+
+	return 0;
+}
+
+core_initcall(clocksource_init);
diff --git a/arch/arm/mach-pxa/common.c b/arch/arm/mach-pxa/common.c
new file mode 100644
index 0000000..82e81b7
--- /dev/null
+++ b/arch/arm/mach-pxa/common.c
@@ -0,0 +1,37 @@
+/*
+ * (C) Copyright 2009 Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+#include <asm/io.h>
+
+#define OSMR3	0x40A0000C
+#define OSCR	0x40A00010
+#define OSSR	0x40A00014
+#define OWER	0x40A00018
+
+#define OWER_WME	(1 << 0)	/* Watch-dog Match Enable */
+#define OSSR_M3		(1 << 3)	/* Match status channel 3 */
+
+void reset_cpu(ulong addr)
+{
+	/* Initialize the watchdog and let it fire */
+	writel(OWER_WME, OWER);
+	writel(OSSR_M3, OSSR);
+	writel(readl(OSCR) + 368640, OSMR3);  /* ... in 100 ms */
+
+	while (1);
+}
diff --git a/arch/arm/mach-pxa/devices.c b/arch/arm/mach-pxa/devices.c
new file mode 100644
index 0000000..1a396f1
--- /dev/null
+++ b/arch/arm/mach-pxa/devices.c
@@ -0,0 +1,49 @@
+/*
+ * (C) 2011 Robert Jarzmik <robert.jarzmik@free.fr>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+ */
+#include <common.h>
+#include <driver.h>
+#include <mach/devices.h>
+#include <mach/pxafb.h>
+
+static inline struct device_d *pxa_add_device(char *name, int id, void *base,
+					      int size, void *pdata)
+{
+	return add_generic_device(name, id, NULL, (resource_size_t)base, size,
+				  IORESOURCE_MEM, pdata);
+}
+
+struct device_d *pxa_add_i2c(void *base, int id,
+			     struct i2c_platform_data *pdata)
+{
+	return pxa_add_device("i2c-pxa", id, base, 0x1000, pdata);
+}
+
+struct device_d *pxa_add_uart(void *base, int id)
+{
+	return pxa_add_device("pxa_serial", id, base, 0x1000, NULL);
+}
+
+struct device_d *pxa_add_fb(void *base, struct pxafb_platform_data *pdata)
+{
+	return pxa_add_device("pxafb", -1, base, 0x1000, pdata);
+}
+
+struct device_d *pxa_add_mmc(void *base, int id, void *pdata)
+{
+	return pxa_add_device("pxa-mmc", id, base, 0x1000, pdata);
+}
diff --git a/arch/arm/mach-pxa/gpio.c b/arch/arm/mach-pxa/gpio.c
new file mode 100644
index 0000000..4e98493
--- /dev/null
+++ b/arch/arm/mach-pxa/gpio.c
@@ -0,0 +1,68 @@
+/*
+ *  Generic PXA GPIO handling
+ *
+ *  Author:	Nicolas Pitre
+ *  Created:	Jun 15, 2001
+ *  Copyright:	MontaVista Software Inc.
+ *
+ *  This program is free software; you can redistribute it and/or modify
+ *  it under the terms of the GNU General Public License version 2 as
+ *  published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <errno.h>
+
+#include <mach/gpio.h>
+#include <asm/io.h>
+
+int pxa_last_gpio;
+
+struct pxa_gpio_chip {
+	void __iomem	*regbase;
+};
+
+static struct pxa_gpio_chip *pxa_gpio_chips;
+
+#define for_each_gpio_chip(i, c) \
+	for (i = 0, c = &pxa_gpio_chips[0]; i <= pxa_last_gpio; i += 32, c++)
+
+static int __init pxa_init_gpio_chip(int gpio_end)
+{
+	int i, gpio, nbanks = gpio_to_bank(gpio_end) + 1;
+	struct pxa_gpio_chip *chips;
+
+	chips = kzalloc(nbanks * sizeof(struct pxa_gpio_chip), GFP_KERNEL);
+	if (chips == NULL) {
+		pr_err("%s: failed to allocate GPIO chips\n", __func__);
+		return -ENOMEM;
+	}
+
+	for (i = 0, gpio = 0; i < nbanks; i++, gpio += 32)
+		chips[i].regbase = (void __iomem *)GPIO_BANK(i);
+
+	pxa_gpio_chips = chips;
+	return 0;
+}
+
+int __init pxa_init_gpio(int start, int end)
+{
+	struct pxa_gpio_chip *c;
+	int err,  gpio;
+
+	pxa_last_gpio = end;
+
+	/* Initialize GPIO chips */
+	err = pxa_init_gpio_chip(end);
+	if (err)
+		return err;
+
+	for_each_gpio_chip(gpio, c) {
+		/* clear all GPIO edge detects */
+		__raw_writel(0, c->regbase + GFER_OFFSET);
+		__raw_writel(0, c->regbase + GRER_OFFSET);
+		__raw_writel(~0, c->regbase + GEDR_OFFSET);
+	}
+
+	return 0;
+}
diff --git a/arch/arm/mach-pxa/include/mach/clock.h b/arch/arm/mach-pxa/include/mach/clock.h
new file mode 100644
index 0000000..cd0ab8e
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/clock.h
@@ -0,0 +1,16 @@
+
+/*
+ * clock.h - definitions of the PXA clock functions
+ *
+ * Copyright (C) 2010 by Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+#ifndef __MACH_CLOCK_H
+#define __MACH_CLOCK_H
+
+unsigned long pxa_get_uartclk(void);
+
+#endif	/* !__MACH_CLOCK_H */
diff --git a/arch/arm/mach-pxa/include/mach/devices.h b/arch/arm/mach-pxa/include/mach/devices.h
new file mode 100644
index 0000000..e205b7c
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/devices.h
@@ -0,0 +1,26 @@
+/*
+ * (C) 2011 Robert Jarzmik <robert.jarzmik@free.fr>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+ */
+#include <i2c/i2c.h>
+#include <mach/pxafb.h>
+
+struct device_d *pxa_add_i2c(void *base, int id,
+			     struct i2c_platform_data *pdata);
+struct device_d *pxa_add_uart(void *base, int id);
+struct device_d *pxa_add_fb(void *base, struct pxafb_platform_data *pdata);
+struct device_d *pxa_add_mmc(void *base, int id, void *pdata);
+
diff --git a/arch/arm/mach-pxa/include/mach/gpio.h b/arch/arm/mach-pxa/include/mach/gpio.h
new file mode 100644
index 0000000..e6724e1
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/gpio.h
@@ -0,0 +1,132 @@
+/*
+ * arch/arm/mach-pxa/include/mach/gpio.h
+ *
+ * PXA GPIO wrappers for arch-neutral GPIO calls
+ *
+ * Written by Philipp Zabel <philipp.zabel@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __ASM_ARCH_PXA_GPIO_H
+#define __ASM_ARCH_PXA_GPIO_H
+
+#include <mach/hardware.h>
+
+#define GPIO_REGS_VIRT	(0x40E00000)
+
+#define BANK_OFF(n)	(((n) < 3) ? (n) << 2 : 0x100 + (((n) - 3) << 2))
+#define GPIO_REG(x)	(*(volatile u32 *)(GPIO_REGS_VIRT + (x)))
+
+/* GPIO Pin Level Registers */
+#define GPLR0		GPIO_REG(BANK_OFF(0) + 0x00)
+#define GPLR1		GPIO_REG(BANK_OFF(1) + 0x00)
+#define GPLR2		GPIO_REG(BANK_OFF(2) + 0x00)
+#define GPLR3		GPIO_REG(BANK_OFF(3) + 0x00)
+
+/* GPIO Pin Direction Registers */
+#define GPDR0		GPIO_REG(BANK_OFF(0) + 0x0c)
+#define GPDR1		GPIO_REG(BANK_OFF(1) + 0x0c)
+#define GPDR2		GPIO_REG(BANK_OFF(2) + 0x0c)
+#define GPDR3		GPIO_REG(BANK_OFF(3) + 0x0c)
+
+/* GPIO Pin Output Set Registers */
+#define GPSR0		GPIO_REG(BANK_OFF(0) + 0x18)
+#define GPSR1		GPIO_REG(BANK_OFF(1) + 0x18)
+#define GPSR2		GPIO_REG(BANK_OFF(2) + 0x18)
+#define GPSR3		GPIO_REG(BANK_OFF(3) + 0x18)
+
+/* GPIO Pin Output Clear Registers */
+#define GPCR0		GPIO_REG(BANK_OFF(0) + 0x24)
+#define GPCR1		GPIO_REG(BANK_OFF(1) + 0x24)
+#define GPCR2		GPIO_REG(BANK_OFF(2) + 0x24)
+#define GPCR3		GPIO_REG(BANK_OFF(3) + 0x24)
+
+/* GPIO Rising Edge Detect Registers */
+#define GRER0		GPIO_REG(BANK_OFF(0) + 0x30)
+#define GRER1		GPIO_REG(BANK_OFF(1) + 0x30)
+#define GRER2		GPIO_REG(BANK_OFF(2) + 0x30)
+#define GRER3		GPIO_REG(BANK_OFF(3) + 0x30)
+
+/* GPIO Falling Edge Detect Registers */
+#define GFER0		GPIO_REG(BANK_OFF(0) + 0x3c)
+#define GFER1		GPIO_REG(BANK_OFF(1) + 0x3c)
+#define GFER2		GPIO_REG(BANK_OFF(2) + 0x3c)
+#define GFER3		GPIO_REG(BANK_OFF(3) + 0x3c)
+
+/* GPIO Edge Detect Status Registers */
+#define GEDR0		GPIO_REG(BANK_OFF(0) + 0x48)
+#define GEDR1		GPIO_REG(BANK_OFF(1) + 0x48)
+#define GEDR2		GPIO_REG(BANK_OFF(2) + 0x48)
+#define GEDR3		GPIO_REG(BANK_OFF(3) + 0x48)
+
+/* GPIO Alternate Function Select Registers */
+#define GAFR0_L		GPIO_REG(0x0054)
+#define GAFR0_U		GPIO_REG(0x0058)
+#define GAFR1_L		GPIO_REG(0x005C)
+#define GAFR1_U		GPIO_REG(0x0060)
+#define GAFR2_L		GPIO_REG(0x0064)
+#define GAFR2_U		GPIO_REG(0x0068)
+#define GAFR3_L		GPIO_REG(0x006C)
+#define GAFR3_U		GPIO_REG(0x0070)
+
+/* More handy macros.  The argument is a literal GPIO number. */
+
+#define GPIO_bit(x)	(1 << ((x) & 0x1f))
+
+#define GPLR(x)		GPIO_REG(BANK_OFF((x) >> 5) + 0x00)
+#define GPDR(x)		GPIO_REG(BANK_OFF((x) >> 5) + 0x0c)
+#define GPSR(x)		GPIO_REG(BANK_OFF((x) >> 5) + 0x18)
+#define GPCR(x)		GPIO_REG(BANK_OFF((x) >> 5) + 0x24)
+#define GRER(x)		GPIO_REG(BANK_OFF((x) >> 5) + 0x30)
+#define GFER(x)		GPIO_REG(BANK_OFF((x) >> 5) + 0x3c)
+#define GEDR(x)		GPIO_REG(BANK_OFF((x) >> 5) + 0x48)
+#define GAFR(x)		GPIO_REG(0x54 + (((x) & 0x70) >> 2))
+
+
+#define NR_BUILTIN_GPIO 128
+
+#define gpio_to_bank(gpio)	((gpio) >> 5)
+
+#ifdef CONFIG_CPU_PXA26x
+/* GPIO86/87/88/89 on PXA26x have their direction bits in GPDR2 inverted,
+ * as well as their Alternate Function value being '1' for GPIO in GAFRx.
+ */
+static inline int __gpio_is_inverted(unsigned gpio)
+{
+	return cpu_is_pxa25x() && gpio > 85;
+}
+#else
+static inline int __gpio_is_inverted(unsigned gpio) { return 0; }
+#endif
+
+/*
+ * On PXA25x and PXA27x, GAFRx and GPDRx together decide the alternate
+ * function of a GPIO, and GPDRx cannot be altered once configured. It
+ * is attributed as "occupied" here (I know this terminology isn't
+ * accurate, you are welcome to propose a better one :-)
+ */
+static inline int __gpio_is_occupied(unsigned gpio)
+{
+	if (cpu_is_pxa27x() || cpu_is_pxa25x()) {
+		int af = (GAFR(gpio) >> ((gpio & 0xf) * 2)) & 0x3;
+		int dir = GPDR(gpio) & GPIO_bit(gpio);
+
+		if (__gpio_is_inverted(gpio))
+			return af != 1 || dir == 0;
+		else
+			return af != 0 || dir != 0;
+	} else
+		return GPDR(gpio) & GPIO_bit(gpio);
+}
+#include <plat/gpio.h>
+#endif
diff --git a/arch/arm/mach-pxa/include/mach/hardware.h b/arch/arm/mach-pxa/include/mach/hardware.h
new file mode 100644
index 0000000..e53085c
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/hardware.h
@@ -0,0 +1,31 @@
+/*
+ * (c) 2010 by Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * Copyright (C) 2010 by Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+#ifndef __MACH_HARDWARE_H
+#define __MACH_HARDWARE_H
+
+#ifdef CONFIG_ARCH_PXA2XX
+#define cpu_is_pxa2xx()	(1)
+#else
+#define cpi_is_pxa2xx()	(0)
+#endif
+
+#ifdef CONFIG_ARCH_PXA25X
+#define cpu_is_pxa25x()	(1)
+#else
+#define cpu_is_pxa25x()	(0)
+#endif
+
+#ifdef CONFIG_ARCH_PXA27X
+#define cpu_is_pxa27x()	(1)
+#else
+#define cpu_is_pxa27x()	(0)
+#endif
+
+#endif	/* !__MACH_HARDWARE_H */
diff --git a/arch/arm/mach-pxa/include/mach/mfp-pxa27x.h b/arch/arm/mach-pxa/include/mach/mfp-pxa27x.h
new file mode 100644
index 0000000..6543c05
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/mfp-pxa27x.h
@@ -0,0 +1,438 @@
+#ifndef __ASM_ARCH_MFP_PXA27X_H
+#define __ASM_ARCH_MFP_PXA27X_H
+
+/*
+ * NOTE:  for those special-function bidirectional GPIOs, as described
+ * in the "PXA27x Developer's Manual" Section 24.4.2.1, only its input
+ * alternative is preserved, the direction is actually selected by the
+ * specific controller, and this should work in most cases.
+ */
+
+#include <mach/mfp-pxa2xx.h>
+
+/* Note: GPIO3/GPIO4 will be driven by Power I2C when PCFR/PI2C_EN
+ * bit is set, regardless of the GPIO configuration
+ */
+#define GPIO3_GPIO		MFP_CFG_IN(GPIO3, AF0)
+#define GPIO4_GPIO		MFP_CFG_IN(GPIO4, AF0)
+
+/* GPIO */
+#define GPIO85_GPIO		MFP_CFG_IN(GPIO85, AF0)
+#define GPIO86_GPIO		MFP_CFG_IN(GPIO86, AF0)
+#define GPIO87_GPIO		MFP_CFG_IN(GPIO87, AF0)
+#define GPIO88_GPIO		MFP_CFG_IN(GPIO88, AF0)
+#define GPIO89_GPIO		MFP_CFG_IN(GPIO89, AF0)
+#define GPIO90_GPIO		MFP_CFG_IN(GPIO90, AF0)
+#define GPIO91_GPIO		MFP_CFG_IN(GPIO91, AF0)
+#define GPIO92_GPIO		MFP_CFG_IN(GPIO92, AF0)
+#define GPIO93_GPIO		MFP_CFG_IN(GPIO93, AF0)
+#define GPIO94_GPIO		MFP_CFG_IN(GPIO94, AF0)
+#define GPIO95_GPIO		MFP_CFG_IN(GPIO95, AF0)
+#define GPIO96_GPIO		MFP_CFG_IN(GPIO96, AF0)
+#define GPIO97_GPIO		MFP_CFG_IN(GPIO97, AF0)
+#define GPIO98_GPIO		MFP_CFG_IN(GPIO98, AF0)
+#define GPIO99_GPIO		MFP_CFG_IN(GPIO99, AF0)
+#define GPIO100_GPIO		MFP_CFG_IN(GPIO100, AF0)
+#define GPIO101_GPIO		MFP_CFG_IN(GPIO101, AF0)
+#define GPIO102_GPIO		MFP_CFG_IN(GPIO102, AF0)
+#define GPIO103_GPIO		MFP_CFG_IN(GPIO103, AF0)
+#define GPIO104_GPIO		MFP_CFG_IN(GPIO104, AF0)
+#define GPIO105_GPIO		MFP_CFG_IN(GPIO105, AF0)
+#define GPIO106_GPIO		MFP_CFG_IN(GPIO106, AF0)
+#define GPIO107_GPIO		MFP_CFG_IN(GPIO107, AF0)
+#define GPIO108_GPIO		MFP_CFG_IN(GPIO108, AF0)
+#define GPIO109_GPIO		MFP_CFG_IN(GPIO109, AF0)
+#define GPIO110_GPIO		MFP_CFG_IN(GPIO110, AF0)
+#define GPIO111_GPIO		MFP_CFG_IN(GPIO111, AF0)
+#define GPIO112_GPIO		MFP_CFG_IN(GPIO112, AF0)
+#define GPIO113_GPIO		MFP_CFG_IN(GPIO113, AF0)
+#define GPIO114_GPIO		MFP_CFG_IN(GPIO114, AF0)
+#define GPIO115_GPIO		MFP_CFG_IN(GPIO115, AF0)
+#define GPIO116_GPIO		MFP_CFG_IN(GPIO116, AF0)
+#define GPIO117_GPIO		MFP_CFG_IN(GPIO117, AF0)
+#define GPIO118_GPIO		MFP_CFG_IN(GPIO118, AF0)
+#define GPIO119_GPIO		MFP_CFG_IN(GPIO119, AF0)
+#define GPIO120_GPIO		MFP_CFG_IN(GPIO120, AF0)
+
+/* Crystal and Clock Signals */
+#define GPIO9_HZ_CLK		MFP_CFG_OUT(GPIO9,  AF1, DRIVE_LOW)
+#define GPIO10_HZ_CLK		MFP_CFG_OUT(GPIO10, AF1, DRIVE_LOW)
+#define GPIO11_48_MHz		MFP_CFG_OUT(GPIO11, AF3, DRIVE_LOW)
+#define GPIO12_48_MHz		MFP_CFG_OUT(GPIO12, AF3, DRIVE_LOW)
+#define GPIO13_CLK_EXT		MFP_CFG_IN(GPIO13, AF1)
+
+/* OS Timer Signals */
+#define GPIO11_EXT_SYNC_0	MFP_CFG_IN(GPIO11, AF1)
+#define GPIO12_EXT_SYNC_1	MFP_CFG_IN(GPIO12, AF1)
+#define GPIO9_CHOUT_0		MFP_CFG_OUT(GPIO9,  AF3, DRIVE_LOW)
+#define GPIO10_CHOUT_1		MFP_CFG_OUT(GPIO10, AF3, DRIVE_LOW)
+#define GPIO11_CHOUT_0		MFP_CFG_OUT(GPIO11, AF1, DRIVE_LOW)
+#define GPIO12_CHOUT_1		MFP_CFG_OUT(GPIO12, AF1, DRIVE_LOW)
+
+/* SDRAM and Static Memory I/O Signals */
+#define GPIO20_nSDCS_2		MFP_CFG_OUT(GPIO20, AF1, DRIVE_HIGH)
+#define GPIO21_nSDCS_3		MFP_CFG_OUT(GPIO21, AF1, DRIVE_HIGH)
+#define GPIO15_nCS_1		MFP_CFG_OUT(GPIO15, AF2, DRIVE_HIGH)
+#define GPIO78_nCS_2		MFP_CFG_OUT(GPIO78, AF2, DRIVE_HIGH)
+#define GPIO79_nCS_3		MFP_CFG_OUT(GPIO79, AF2, DRIVE_HIGH)
+#define GPIO80_nCS_4		MFP_CFG_OUT(GPIO80, AF2, DRIVE_HIGH)
+#define GPIO33_nCS_5		MFP_CFG_OUT(GPIO33, AF2, DRIVE_HIGH)
+
+/* Miscellaneous I/O and DMA Signals */
+#define GPIO21_DVAL_0		MFP_CFG_OUT(GPIO21, AF2, DRIVE_HIGH)
+#define GPIO116_DVAL_0		MFP_CFG_OUT(GPIO116, AF1, DRIVE_HIGH)
+#define GPIO33_DVAL_1		MFP_CFG_OUT(GPIO33, AF1, DRIVE_HIGH)
+#define GPIO96_DVAL_1		MFP_CFG_OUT(GPIO96, AF2, DRIVE_HIGH)
+#define GPIO18_RDY		MFP_CFG_IN(GPIO18, AF1)
+#define GPIO20_DREQ_0		MFP_CFG_IN(GPIO20, AF1)
+#define GPIO115_DREQ_0		MFP_CFG_IN(GPIO115, AF1)
+#define GPIO80_DREQ_1		MFP_CFG_IN(GPIO80, AF1)
+#define GPIO97_DREQ_1		MFP_CFG_IN(GPIO97, AF2)
+#define GPIO85_DREQ_2		MFP_CFG_IN(GPIO85, AF2)
+#define GPIO100_DREQ_2		MFP_CFG_IN(GPIO100, AF2)
+
+/* Alternate Bus Master Mode I/O Signals */
+#define GPIO20_MBREQ		MFP_CFG_IN(GPIO20, AF2)
+#define GPIO80_MBREQ		MFP_CFG_IN(GPIO80, AF2)
+#define GPIO96_MBREQ		MFP_CFG_IN(GPIO96, AF2)
+#define GPIO115_MBREQ		MFP_CFG_IN(GPIO115, AF3)
+#define GPIO21_MBGNT		MFP_CFG_OUT(GPIO21, AF3, DRIVE_LOW)
+#define GPIO33_MBGNT		MFP_CFG_OUT(GPIO33, AF3, DRIVE_LOW)
+#define GPIO97_MBGNT		MFP_CFG_OUT(GPIO97, AF2, DRIVE_LOW)
+#define GPIO116_MBGNT		MFP_CFG_OUT(GPIO116, AF3, DRIVE_LOW)
+
+/* PC CARD */
+#define GPIO15_nPCE_1		MFP_CFG_OUT(GPIO15, AF1, DRIVE_HIGH)
+#define GPIO85_nPCE_1		MFP_CFG_OUT(GPIO85, AF1, DRIVE_HIGH)
+#define GPIO86_nPCE_1		MFP_CFG_OUT(GPIO86, AF1, DRIVE_HIGH)
+#define GPIO102_nPCE_1		MFP_CFG_OUT(GPIO102, AF1, DRIVE_HIGH)
+#define GPIO54_nPCE_2		MFP_CFG_OUT(GPIO54, AF2, DRIVE_HIGH)
+#define GPIO78_nPCE_2		MFP_CFG_OUT(GPIO78, AF1, DRIVE_HIGH)
+#define GPIO87_nPCE_2		MFP_CFG_IN(GPIO87, AF1)
+#define GPIO55_nPREG		MFP_CFG_OUT(GPIO55, AF2, DRIVE_HIGH)
+#define GPIO50_nPIOR		MFP_CFG_OUT(GPIO50, AF2, DRIVE_HIGH)
+#define GPIO51_nPIOW		MFP_CFG_OUT(GPIO51, AF2, DRIVE_HIGH)
+#define GPIO49_nPWE		MFP_CFG_OUT(GPIO49, AF2, DRIVE_HIGH)
+#define GPIO48_nPOE		MFP_CFG_OUT(GPIO48, AF2, DRIVE_HIGH)
+#define GPIO57_nIOIS16		MFP_CFG_IN(GPIO57, AF1)
+#define GPIO56_nPWAIT		MFP_CFG_IN(GPIO56, AF1)
+#define GPIO79_PSKTSEL		MFP_CFG_OUT(GPIO79, AF1, DRIVE_HIGH)
+#define GPIO104_PSKTSEL		MFP_CFG_OUT(GPIO104, AF1, DRIVE_HIGH)
+
+/* I2C */
+#define GPIO117_I2C_SCL		MFP_CFG_IN(GPIO117, AF1)
+#define GPIO118_I2C_SDA		MFP_CFG_IN(GPIO118, AF1)
+
+/* FFUART */
+#define GPIO9_FFUART_CTS	MFP_CFG_IN(GPIO9, AF3)
+#define GPIO26_FFUART_CTS	MFP_CFG_IN(GPIO26, AF3)
+#define GPIO35_FFUART_CTS	MFP_CFG_IN(GPIO35, AF1)
+#define GPIO100_FFUART_CTS	MFP_CFG_IN(GPIO100, AF3)
+#define GPIO10_FFUART_DCD	MFP_CFG_IN(GPIO10, AF1)
+#define GPIO36_FFUART_DCD	MFP_CFG_IN(GPIO36, AF1)
+#define GPIO33_FFUART_DSR	MFP_CFG_IN(GPIO33, AF2)
+#define GPIO37_FFUART_DSR	MFP_CFG_IN(GPIO37, AF1)
+#define GPIO38_FFUART_RI	MFP_CFG_IN(GPIO38, AF1)
+#define GPIO89_FFUART_RI	MFP_CFG_IN(GPIO89, AF3)
+#define GPIO19_FFUART_RXD	MFP_CFG_IN(GPIO19, AF3)
+#define GPIO33_FFUART_RXD	MFP_CFG_IN(GPIO33, AF1)
+#define GPIO34_FFUART_RXD	MFP_CFG_IN(GPIO34, AF1)
+#define GPIO41_FFUART_RXD	MFP_CFG_IN(GPIO41, AF1)
+#define GPIO53_FFUART_RXD	MFP_CFG_IN(GPIO53, AF1)
+#define GPIO85_FFUART_RXD	MFP_CFG_IN(GPIO85, AF1)
+#define GPIO96_FFUART_RXD	MFP_CFG_IN(GPIO96, AF3)
+#define GPIO102_FFUART_RXD	MFP_CFG_IN(GPIO102, AF3)
+#define GPIO16_FFUART_TXD	MFP_CFG_OUT(GPIO16, AF3, DRIVE_HIGH)
+#define GPIO37_FFUART_TXD	MFP_CFG_OUT(GPIO37, AF3, DRIVE_HIGH)
+#define GPIO39_FFUART_TXD	MFP_CFG_OUT(GPIO39, AF2, DRIVE_HIGH)
+#define GPIO83_FFUART_TXD	MFP_CFG_OUT(GPIO83, AF2, DRIVE_HIGH)
+#define GPIO99_FFUART_TXD	MFP_CFG_OUT(GPIO99, AF3, DRIVE_HIGH)
+#define GPIO27_FFUART_RTS	MFP_CFG_OUT(GPIO27, AF3, DRIVE_HIGH)
+#define GPIO41_FFUART_RTS	MFP_CFG_OUT(GPIO41, AF2, DRIVE_HIGH)
+#define GPIO83_FFUART_RTS	MFP_CFG_OUT(GPIO83, AF3, DRIVE_HIGH)
+#define GPIO98_FFUART_RTS	MFP_CFG_OUT(GPIO98, AF3, DRIVE_HIGH)
+#define GPIO40_FFUART_DTR	MFP_CFG_OUT(GPIO40, AF2, DRIVE_HIGH)
+#define GPIO82_FFUART_DTR	MFP_CFG_OUT(GPIO82, AF3, DRIVE_HIGH)
+
+/* BTUART */
+#define GPIO44_BTUART_CTS	MFP_CFG_IN(GPIO44, AF1)
+#define GPIO42_BTUART_RXD	MFP_CFG_IN(GPIO42, AF1)
+#define GPIO45_BTUART_RTS	MFP_CFG_OUT(GPIO45, AF2, DRIVE_HIGH)
+#define GPIO43_BTUART_TXD	MFP_CFG_OUT(GPIO43, AF2, DRIVE_HIGH)
+
+/* STUART */
+#define GPIO46_STUART_RXD	MFP_CFG_IN(GPIO46, AF2)
+#define GPIO47_STUART_TXD	MFP_CFG_OUT(GPIO47, AF1, DRIVE_HIGH)
+
+/* FICP */
+#define GPIO42_FICP_RXD		MFP_CFG_IN(GPIO42, AF2)
+#define GPIO46_FICP_RXD		MFP_CFG_IN(GPIO46, AF1)
+#define GPIO43_FICP_TXD		MFP_CFG_OUT(GPIO43, AF1, DRIVE_HIGH)
+#define GPIO47_FICP_TXD		MFP_CFG_OUT(GPIO47, AF2, DRIVE_HIGH)
+
+/* PWM 0/1/2/3 */
+#define GPIO11_PWM2_OUT		MFP_CFG_OUT(GPIO11, AF2, DRIVE_LOW)
+#define GPIO12_PWM3_OUT		MFP_CFG_OUT(GPIO12, AF2, DRIVE_LOW)
+#define GPIO16_PWM0_OUT		MFP_CFG_OUT(GPIO16, AF2, DRIVE_LOW)
+#define GPIO17_PWM1_OUT		MFP_CFG_OUT(GPIO17, AF2, DRIVE_LOW)
+#define GPIO38_PWM1_OUT		MFP_CFG_OUT(GPIO38, AF3, DRIVE_LOW)
+#define GPIO46_PWM2_OUT		MFP_CFG_OUT(GPIO46, AF2, DRIVE_LOW)
+#define GPIO47_PWM3_OUT		MFP_CFG_OUT(GPIO47, AF3, DRIVE_LOW)
+#define GPIO79_PWM2_OUT		MFP_CFG_OUT(GPIO79, AF3, DRIVE_LOW)
+#define GPIO80_PWM3_OUT		MFP_CFG_OUT(GPIO80, AF3, DRIVE_LOW)
+#define GPIO115_PWM1_OUT	MFP_CFG_OUT(GPIO115, AF3, DRIVE_LOW)
+
+/* AC97 */
+#define GPIO31_AC97_SYNC	MFP_CFG_OUT(GPIO31, AF2, DRIVE_LOW)
+#define GPIO94_AC97_SYNC	MFP_CFG_OUT(GPIO94, AF1, DRIVE_LOW)
+#define GPIO30_AC97_SDATA_OUT	MFP_CFG_OUT(GPIO30, AF2, DRIVE_LOW)
+#define GPIO93_AC97_SDATA_OUT	MFP_CFG_OUT(GPIO93, AF1, DRIVE_LOW)
+#define GPIO45_AC97_SYSCLK	MFP_CFG_OUT(GPIO45, AF1, DRIVE_LOW)
+#define GPIO89_AC97_SYSCLK	MFP_CFG_OUT(GPIO89, AF1, DRIVE_LOW)
+#define GPIO98_AC97_SYSCLK	MFP_CFG_OUT(GPIO98, AF1, DRIVE_LOW)
+#define GPIO95_AC97_nRESET	MFP_CFG_OUT(GPIO95, AF1, DRIVE_LOW)
+#define GPIO113_AC97_nRESET	MFP_CFG_OUT(GPIO113, AF2, DRIVE_LOW)
+#define GPIO28_AC97_BITCLK	MFP_CFG_IN(GPIO28, AF1)
+#define GPIO29_AC97_SDATA_IN_0	MFP_CFG_IN(GPIO29, AF1)
+#define GPIO116_AC97_SDATA_IN_0	MFP_CFG_IN(GPIO116, AF2)
+#define GPIO99_AC97_SDATA_IN_1	MFP_CFG_IN(GPIO99, AF2)
+
+/* I2S */
+#define GPIO28_I2S_BITCLK_IN	MFP_CFG_IN(GPIO28, AF2)
+#define GPIO28_I2S_BITCLK_OUT	MFP_CFG_OUT(GPIO28, AF1, DRIVE_LOW)
+#define GPIO29_I2S_SDATA_IN	MFP_CFG_IN(GPIO29, AF2)
+#define GPIO30_I2S_SDATA_OUT	MFP_CFG_OUT(GPIO30, AF1, DRIVE_LOW)
+#define GPIO31_I2S_SYNC		MFP_CFG_OUT(GPIO31, AF1, DRIVE_LOW)
+#define GPIO113_I2S_SYSCLK	MFP_CFG_OUT(GPIO113, AF1, DRIVE_LOW)
+
+/* SSP 1 */
+#define GPIO23_SSP1_SCLK	MFP_CFG_OUT(GPIO23, AF2, DRIVE_LOW)
+#define GPIO29_SSP1_SCLK	MFP_CFG_IN(GPIO29, AF3)
+#define GPIO27_SSP1_SYSCLK	MFP_CFG_OUT(GPIO27, AF1, DRIVE_LOW)
+#define GPIO53_SSP1_SYSCLK	MFP_CFG_OUT(GPIO53, AF3, DRIVE_LOW)
+#define GPIO24_SSP1_SFRM	MFP_CFG_IN(GPIO24, AF2)
+#define GPIO28_SSP1_SFRM	MFP_CFG_IN(GPIO28, AF3)
+#define GPIO25_SSP1_TXD		MFP_CFG_OUT(GPIO25, AF2, DRIVE_LOW)
+#define GPIO57_SSP1_TXD		MFP_CFG_OUT(GPIO57, AF3, DRIVE_LOW)
+#define GPIO26_SSP1_RXD		MFP_CFG_IN(GPIO26, AF1)
+#define GPIO27_SSP1_SCLKEN	MFP_CFG_IN(GPIO27, AF2)
+
+/* SSP 2 */
+#define GPIO19_SSP2_SCLK	MFP_CFG_IN(GPIO19, AF1)
+#define GPIO22_SSP2_SCLK	MFP_CFG_IN(GPIO22, AF3)
+#define GPIO29_SSP2_SCLK	MFP_CFG_OUT(GPIO29, AF3, DRIVE_LOW)
+#define GPIO36_SSP2_SCLK	MFP_CFG_IN(GPIO36, AF2)
+#define GPIO50_SSP2_SCLK	MFP_CFG_IN(GPIO50, AF3)
+#define GPIO22_SSP2_SYSCLK	MFP_CFG_OUT(GPIO22, AF2, DRIVE_LOW)
+#define GPIO14_SSP2_SFRM	MFP_CFG_IN(GPIO14, AF2)
+#define GPIO37_SSP2_SFRM	MFP_CFG_IN(GPIO37, AF2)
+#define GPIO87_SSP2_SFRM	MFP_CFG_OUT(GPIO87, AF3, DRIVE_LOW)
+#define GPIO88_SSP2_SFRM	MFP_CFG_IN(GPIO88, AF3)
+#define GPIO13_SSP2_TXD		MFP_CFG_OUT(GPIO13, AF1, DRIVE_LOW)
+#define GPIO38_SSP2_TXD		MFP_CFG_OUT(GPIO38, AF2, DRIVE_LOW)
+#define GPIO87_SSP2_TXD		MFP_CFG_OUT(GPIO87, AF1, DRIVE_LOW)
+#define GPIO89_SSP2_TXD		MFP_CFG_OUT(GPIO89, AF3, DRIVE_LOW)
+#define GPIO11_SSP2_RXD		MFP_CFG_IN(GPIO11, AF2)
+#define GPIO29_SSP2_RXD		MFP_CFG_OUT(GPIO29, AF1, DRIVE_LOW)
+#define GPIO40_SSP2_RXD		MFP_CFG_IN(GPIO40, AF1)
+#define GPIO86_SSP2_RXD		MFP_CFG_IN(GPIO86, AF1)
+#define GPIO88_SSP2_RXD		MFP_CFG_IN(GPIO88, AF2)
+#define GPIO22_SSP2_EXTCLK	MFP_CFG_IN(GPIO22, AF1)
+#define GPIO27_SSP2_EXTCLK	MFP_CFG_IN(GPIO27, AF1)
+#define GPIO22_SSP2_SCLKEN	MFP_CFG_IN(GPIO22, AF2)
+#define GPIO23_SSP2_SCLKEN	MFP_CFG_IN(GPIO23, AF2)
+
+/* SSP 3 */
+#define GPIO34_SSP3_SCLK	MFP_CFG_IN(GPIO34, AF3)
+#define GPIO40_SSP3_SCLK	MFP_CFG_OUT(GPIO40, AF3, DRIVE_LOW)
+#define GPIO52_SSP3_SCLK	MFP_CFG_IN(GPIO52, AF2)
+#define GPIO84_SSP3_SCLK	MFP_CFG_IN(GPIO84, AF1)
+#define GPIO45_SSP3_SYSCLK	MFP_CFG_OUT(GPIO45, AF3, DRIVE_LOW)
+#define GPIO35_SSP3_SFRM	MFP_CFG_IN(GPIO35, AF3)
+#define GPIO39_SSP3_SFRM	MFP_CFG_IN(GPIO39, AF3)
+#define GPIO83_SSP3_SFRM	MFP_CFG_IN(GPIO83, AF1)
+#define GPIO35_SSP3_TXD		MFP_CFG_OUT(GPIO35, AF3, DRIVE_LOW)
+#define GPIO38_SSP3_TXD		MFP_CFG_OUT(GPIO38, AF1, DRIVE_LOW)
+#define GPIO81_SSP3_TXD		MFP_CFG_OUT(GPIO81, AF1, DRIVE_LOW)
+#define GPIO41_SSP3_RXD		MFP_CFG_IN(GPIO41, AF3)
+#define GPIO82_SSP3_RXD		MFP_CFG_IN(GPIO82, AF1)
+#define GPIO89_SSP3_RXD		MFP_CFG_IN(GPIO89, AF1)
+
+/* MMC */
+#define GPIO32_MMC_CLK		MFP_CFG_OUT(GPIO32, AF2, DRIVE_LOW)
+#define GPIO92_MMC_DAT_0	MFP_CFG_IN(GPIO92, AF1)
+#define GPIO109_MMC_DAT_1	MFP_CFG_IN(GPIO109, AF1)
+#define GPIO110_MMC_DAT_2	MFP_CFG_IN(GPIO110, AF1)
+#define GPIO111_MMC_DAT_3	MFP_CFG_IN(GPIO111, AF1)
+#define GPIO112_MMC_CMD		MFP_CFG_IN(GPIO112, AF1)
+
+/* LCD */
+#define GPIO58_LCD_LDD_0	MFP_CFG_OUT(GPIO58, AF2, DRIVE_LOW)
+#define GPIO59_LCD_LDD_1	MFP_CFG_OUT(GPIO59, AF2, DRIVE_LOW)
+#define GPIO60_LCD_LDD_2	MFP_CFG_OUT(GPIO60, AF2, DRIVE_LOW)
+#define GPIO61_LCD_LDD_3	MFP_CFG_OUT(GPIO61, AF2, DRIVE_LOW)
+#define GPIO62_LCD_LDD_4	MFP_CFG_OUT(GPIO62, AF2, DRIVE_LOW)
+#define GPIO63_LCD_LDD_5	MFP_CFG_OUT(GPIO63, AF2, DRIVE_LOW)
+#define GPIO64_LCD_LDD_6	MFP_CFG_OUT(GPIO64, AF2, DRIVE_LOW)
+#define GPIO65_LCD_LDD_7	MFP_CFG_OUT(GPIO65, AF2, DRIVE_LOW)
+#define GPIO66_LCD_LDD_8	MFP_CFG_OUT(GPIO66, AF2, DRIVE_LOW)
+#define GPIO67_LCD_LDD_9	MFP_CFG_OUT(GPIO67, AF2, DRIVE_LOW)
+#define GPIO68_LCD_LDD_10	MFP_CFG_OUT(GPIO68, AF2, DRIVE_LOW)
+#define GPIO69_LCD_LDD_11	MFP_CFG_OUT(GPIO69, AF2, DRIVE_LOW)
+#define GPIO70_LCD_LDD_12	MFP_CFG_OUT(GPIO70, AF2, DRIVE_LOW)
+#define GPIO71_LCD_LDD_13	MFP_CFG_OUT(GPIO71, AF2, DRIVE_LOW)
+#define GPIO72_LCD_LDD_14	MFP_CFG_OUT(GPIO72, AF2, DRIVE_LOW)
+#define GPIO73_LCD_LDD_15	MFP_CFG_OUT(GPIO73, AF2, DRIVE_LOW)
+#define GPIO86_LCD_LDD_16	MFP_CFG_OUT(GPIO86, AF2, DRIVE_LOW)
+#define GPIO87_LCD_LDD_17	MFP_CFG_OUT(GPIO87, AF2, DRIVE_LOW)
+#define GPIO74_LCD_FCLK		MFP_CFG_OUT(GPIO74, AF2, DRIVE_LOW)
+#define GPIO75_LCD_LCLK		MFP_CFG_OUT(GPIO75, AF2, DRIVE_LOW)
+#define GPIO76_LCD_PCLK		MFP_CFG_OUT(GPIO76, AF2, DRIVE_LOW)
+#define GPIO77_LCD_BIAS		MFP_CFG_OUT(GPIO77, AF2, DRIVE_LOW)
+#define GPIO14_LCD_VSYNC	MFP_CFG_IN(GPIO14, AF1)
+#define GPIO19_LCD_CS		MFP_CFG_OUT(GPIO19, AF2, DRIVE_LOW)
+
+/* Keypad */
+#define GPIO93_KP_DKIN_0	MFP_CFG_IN(GPIO93, AF1)
+#define GPIO94_KP_DKIN_1	MFP_CFG_IN(GPIO94, AF1)
+#define GPIO95_KP_DKIN_2	MFP_CFG_IN(GPIO95, AF1)
+#define GPIO96_KP_DKIN_3	MFP_CFG_IN(GPIO96, AF1)
+#define GPIO97_KP_DKIN_4	MFP_CFG_IN(GPIO97, AF1)
+#define GPIO98_KP_DKIN_5	MFP_CFG_IN(GPIO98, AF1)
+#define GPIO99_KP_DKIN_6	MFP_CFG_IN(GPIO99, AF1)
+#define GPIO13_KP_KDIN_7	MFP_CFG_IN(GPIO13, AF2)
+#define GPIO100_KP_MKIN_0	MFP_CFG_IN(GPIO100, AF1)
+#define GPIO101_KP_MKIN_1	MFP_CFG_IN(GPIO101, AF1)
+#define GPIO102_KP_MKIN_2	MFP_CFG_IN(GPIO102, AF1)
+#define GPIO34_KP_MKIN_3	MFP_CFG_IN(GPIO34, AF2)
+#define GPIO37_KP_MKIN_3	MFP_CFG_IN(GPIO37, AF3)
+#define GPIO97_KP_MKIN_3	MFP_CFG_IN(GPIO97, AF3)
+#define GPIO98_KP_MKIN_4	MFP_CFG_IN(GPIO98, AF3)
+#define GPIO38_KP_MKIN_4	MFP_CFG_IN(GPIO38, AF2)
+#define GPIO39_KP_MKIN_4	MFP_CFG_IN(GPIO39, AF1)
+#define GPIO16_KP_MKIN_5	MFP_CFG_IN(GPIO16, AF1)
+#define GPIO90_KP_MKIN_5	MFP_CFG_IN(GPIO90, AF1)
+#define GPIO99_KP_MKIN_5	MFP_CFG_IN(GPIO99, AF3)
+#define GPIO17_KP_MKIN_6	MFP_CFG_IN(GPIO17, AF1)
+#define GPIO91_KP_MKIN_6	MFP_CFG_IN(GPIO91, AF1)
+#define GPIO95_KP_MKIN_6	MFP_CFG_IN(GPIO95, AF3)
+#define GPIO13_KP_MKIN_7	MFP_CFG_IN(GPIO13, AF3)
+#define GPIO36_KP_MKIN_7	MFP_CFG_IN(GPIO36, AF3)
+#define GPIO103_KP_MKOUT_0	MFP_CFG_OUT(GPIO103, AF2, DRIVE_HIGH)
+#define GPIO104_KP_MKOUT_1	MFP_CFG_OUT(GPIO104, AF2, DRIVE_HIGH)
+#define GPIO105_KP_MKOUT_2	MFP_CFG_OUT(GPIO105, AF2, DRIVE_HIGH)
+#define GPIO106_KP_MKOUT_3	MFP_CFG_OUT(GPIO106, AF2, DRIVE_HIGH)
+#define GPIO107_KP_MKOUT_4	MFP_CFG_OUT(GPIO107, AF2, DRIVE_HIGH)
+#define GPIO108_KP_MKOUT_5	MFP_CFG_OUT(GPIO108, AF2, DRIVE_HIGH)
+#define GPIO35_KP_MKOUT_6	MFP_CFG_OUT(GPIO35, AF2, DRIVE_HIGH)
+#define GPIO22_KP_MKOUT_7	MFP_CFG_OUT(GPIO22, AF1, DRIVE_HIGH)
+#define GPIO40_KP_MKOUT_6	MFP_CFG_OUT(GPIO40, AF1, DRIVE_HIGH)
+#define GPIO41_KP_MKOUT_7	MFP_CFG_OUT(GPIO41, AF1, DRIVE_HIGH)
+#define GPIO96_KP_MKOUT_6	MFP_CFG_OUT(GPIO96, AF3, DRIVE_HIGH)
+
+/* USB P3 */
+#define GPIO10_USB_P3_5		MFP_CFG_IN(GPIO10, AF3)
+#define GPIO11_USB_P3_1		MFP_CFG_IN(GPIO11, AF3)
+#define GPIO30_USB_P3_2		MFP_CFG_OUT(GPIO30, AF3, DRIVE_LOW)
+#define GPIO31_USB_P3_6		MFP_CFG_OUT(GPIO31, AF3, DRIVE_LOW)
+#define GPIO56_USB_P3_4		MFP_CFG_OUT(GPIO56, AF1, DRIVE_LOW)
+#define GPIO86_USB_P3_5		MFP_CFG_IN(GPIO86, AF3)
+#define GPIO87_USB_P3_1		MFP_CFG_IN(GPIO87, AF3)
+#define GPIO90_USB_P3_5		MFP_CFG_IN(GPIO90, AF2)
+#define GPIO91_USB_P3_1		MFP_CFG_IN(GPIO91, AF2)
+#define GPIO113_USB_P3_3	MFP_CFG_IN(GPIO113, AF3)
+
+/* USB P2 */
+#define GPIO34_USB_P2_2		MFP_CFG_OUT(GPIO34, AF1, DRIVE_LOW)
+#define GPIO35_USB_P2_1		MFP_CFG_IN(GPIO35, AF2)
+#define GPIO36_USB_P2_4		MFP_CFG_OUT(GPIO36, AF1, DRIVE_LOW)
+#define GPIO37_USB_P2_8		MFP_CFG_OUT(GPIO37, AF1, DRIVE_LOW)
+#define GPIO38_USB_P2_3		MFP_CFG_IN(GPIO38, AF3)
+#define GPIO39_USB_P2_6		MFP_CFG_OUT(GPIO39, AF1, DRIVE_LOW)
+#define GPIO40_USB_P2_5		MFP_CFG_IN(GPIO40, AF3)
+#define GPIO41_USB_P2_7		MFP_CFG_IN(GPIO41, AF2)
+#define GPIO53_USB_P2_3		MFP_CFG_IN(GPIO53, AF2)
+
+/* USB Host Port 1/2 */
+#define GPIO88_USBH1_PWR	MFP_CFG_IN(GPIO88, AF1)
+#define GPIO89_USBH1_PEN	MFP_CFG_OUT(GPIO89, AF2, DRIVE_LOW)
+#define GPIO119_USBH2_PWR	MFP_CFG_IN(GPIO119, AF1)
+#define GPIO120_USBH2_PEN	MFP_CFG_OUT(GPIO120, AF2, DRIVE_LOW)
+
+/* QCI - default to Master Mode: CIF_FV/CIF_LV Direction In */
+#define GPIO115_CIF_DD_3	MFP_CFG_IN(GPIO115, AF2)
+#define GPIO116_CIF_DD_2	MFP_CFG_IN(GPIO116, AF1)
+#define GPIO12_CIF_DD_7		MFP_CFG_IN(GPIO12, AF2)
+#define GPIO17_CIF_DD_6		MFP_CFG_IN(GPIO17, AF2)
+#define GPIO23_CIF_MCLK		MFP_CFG_OUT(GPIO23, AF1, DRIVE_LOW)
+#define GPIO24_CIF_FV		MFP_CFG_IN(GPIO24, AF1)
+#define GPIO25_CIF_LV		MFP_CFG_IN(GPIO25, AF1)
+#define GPIO26_CIF_PCLK		MFP_CFG_IN(GPIO26, AF2)
+#define GPIO27_CIF_DD_0		MFP_CFG_IN(GPIO27, AF3)
+#define GPIO42_CIF_MCLK		MFP_CFG_OUT(GPIO42, AF3, DRIVE_LOW)
+#define GPIO43_CIF_FV		MFP_CFG_IN(GPIO43, AF3)
+#define GPIO44_CIF_LV		MFP_CFG_IN(GPIO44, AF3)
+#define GPIO45_CIF_PCLK		MFP_CFG_IN(GPIO45, AF3)
+#define GPIO47_CIF_DD_0		MFP_CFG_IN(GPIO47, AF1)
+#define GPIO48_CIF_DD_5		MFP_CFG_IN(GPIO48, AF1)
+#define GPIO50_CIF_DD_3		MFP_CFG_IN(GPIO50, AF1)
+#define GPIO51_CIF_DD_2		MFP_CFG_IN(GPIO51, AF1)
+#define GPIO52_CIF_DD_4		MFP_CFG_IN(GPIO52, AF1)
+#define GPIO53_CIF_MCLK		MFP_CFG_OUT(GPIO53, AF2, DRIVE_LOW)
+#define GPIO54_CIF_PCLK		MFP_CFG_IN(GPIO54, AF3)
+#define GPIO55_CIF_DD_1		MFP_CFG_IN(GPIO55, AF1)
+#define GPIO81_CIF_DD_0		MFP_CFG_IN(GPIO81, AF2)
+#define GPIO82_CIF_DD_5		MFP_CFG_IN(GPIO82, AF3)
+#define GPIO83_CIF_DD_4		MFP_CFG_IN(GPIO83, AF3)
+#define GPIO84_CIF_FV		MFP_CFG_IN(GPIO84, AF3)
+#define GPIO85_CIF_LV		MFP_CFG_IN(GPIO85, AF3)
+#define GPIO90_CIF_DD_4		MFP_CFG_IN(GPIO90, AF3)
+#define GPIO91_CIF_DD_5		MFP_CFG_IN(GPIO91, AF3)
+#define GPIO93_CIF_DD_6		MFP_CFG_IN(GPIO93, AF2)
+#define GPIO94_CIF_DD_5		MFP_CFG_IN(GPIO94, AF2)
+#define GPIO95_CIF_DD_4		MFP_CFG_IN(GPIO95, AF2)
+#define GPIO98_CIF_DD_0		MFP_CFG_IN(GPIO98, AF2)
+#define GPIO103_CIF_DD_3	MFP_CFG_IN(GPIO103, AF1)
+#define GPIO104_CIF_DD_2	MFP_CFG_IN(GPIO104, AF1)
+#define GPIO105_CIF_DD_1	MFP_CFG_IN(GPIO105, AF1)
+#define GPIO106_CIF_DD_9	MFP_CFG_IN(GPIO106, AF1)
+#define GPIO107_CIF_DD_8	MFP_CFG_IN(GPIO107, AF1)
+#define GPIO108_CIF_DD_7	MFP_CFG_IN(GPIO108, AF1)
+#define GPIO114_CIF_DD_1	MFP_CFG_IN(GPIO114, AF1)
+
+/* Universal Subscriber ID Interface */
+#define GPIO114_UVS0		MFP_CFG_OUT(GPIO114, AF2, DRIVE_LOW)
+#define GPIO115_nUVS1		MFP_CFG_OUT(GPIO115, AF2, DRIVE_LOW)
+#define GPIO116_nUVS2		MFP_CFG_OUT(GPIO116, AF2, DRIVE_LOW)
+#define GPIO14_UCLK		MFP_CFG_OUT(GPIO14, AF3, DRIVE_LOW)
+#define GPIO91_UCLK		MFP_CFG_OUT(GPIO91, AF2, DRIVE_LOW)
+#define GPIO19_nURST		MFP_CFG_OUT(GPIO19, AF3, DRIVE_LOW)
+#define GPIO90_nURST		MFP_CFG_OUT(GPIO90, AF2, DRIVE_LOW)
+#define GPIO116_UDET		MFP_CFG_IN(GPIO116, AF3)
+#define GPIO114_UEN		MFP_CFG_OUT(GPIO114, AF1, DRIVE_LOW)
+#define GPIO115_UEN		MFP_CFG_OUT(GPIO115, AF1, DRIVE_LOW)
+
+/* Mobile Scalable Link (MSL) Interface */
+#define GPIO81_BB_OB_DAT_0	MFP_CFG_OUT(GPIO81, AF2, DRIVE_LOW)
+#define GPIO48_BB_OB_DAT_1	MFP_CFG_OUT(GPIO48, AF1, DRIVE_LOW)
+#define GPIO50_BB_OB_DAT_2	MFP_CFG_OUT(GPIO50, AF1, DRIVE_LOW)
+#define GPIO51_BB_OB_DAT_3	MFP_CFG_OUT(GPIO51, AF1, DRIVE_LOW)
+#define GPIO52_BB_OB_CLK	MFP_CFG_OUT(GPIO52, AF1, DRIVE_LOW)
+#define GPIO53_BB_OB_STB	MFP_CFG_OUT(GPIO53, AF1, DRIVE_LOW)
+#define GPIO54_BB_OB_WAIT	MFP_CFG_IN(GPIO54, AF2)
+#define GPIO82_BB_IB_DAT_0	MFP_CFG_IN(GPIO82, AF2)
+#define GPIO55_BB_IB_DAT_1	MFP_CFG_IN(GPIO55, AF2)
+#define GPIO56_BB_IB_DAT_2	MFP_CFG_IN(GPIO56, AF2)
+#define GPIO57_BB_IB_DAT_3	MFP_CFG_IN(GPIO57, AF2)
+#define GPIO83_BB_IB_CLK	MFP_CFG_IN(GPIO83, AF2)
+#define GPIO84_BB_IB_STB	MFP_CFG_IN(GPIO84, AF2)
+#define GPIO85_BB_IB_WAIT	MFP_CFG_OUT(GPIO85, AF2, DRIVE_LOW)
+
+/* Memory Stick Host Controller */
+#define GPIO92_MSBS		MFP_CFG_OUT(GPIO92, AF2, DRIVE_LOW)
+#define GPIO109_MSSDIO		MFP_CFG_IN(GPIO109, AF2)
+#define GPIO112_nMSINS		MFP_CFG_IN(GPIO112, AF2)
+#define GPIO32_MSSCLK		MFP_CFG_OUT(GPIO32, AF1, DRIVE_LOW)
+
+extern int keypad_set_wake(unsigned int on);
+#endif /* __ASM_ARCH_MFP_PXA27X_H */
diff --git a/arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h b/arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h
new file mode 100644
index 0000000..658b28e
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h
@@ -0,0 +1,133 @@
+#ifndef __ASM_ARCH_MFP_PXA2XX_H
+#define __ASM_ARCH_MFP_PXA2XX_H
+
+#include <plat/mfp.h>
+
+/*
+ * the following MFP_xxx bit definitions in mfp.h are re-used for pxa2xx:
+ *
+ *  MFP_PIN(x)
+ *  MFP_AFx
+ *  MFP_LPM_DRIVE_{LOW, HIGH}
+ *  MFP_LPM_EDGE_x
+ *
+ * other MFP_x bit definitions will be ignored
+ *
+ * and adds the below two bits specifically for pxa2xx:
+ *
+ * bit     23 - Input/Output (PXA2xx specific)
+ * bit     24 - Wakeup Enable(PXA2xx specific)
+ */
+
+#define MFP_DIR_IN		(0x0 << 23)
+#define MFP_DIR_OUT		(0x1 << 23)
+#define MFP_DIR_MASK		(0x1 << 23)
+#define MFP_DIR(x)		(((x) >> 23) & 0x1)
+
+#define MFP_LPM_CAN_WAKEUP	(0x1 << 24)
+#define WAKEUP_ON_EDGE_RISE	(MFP_LPM_CAN_WAKEUP | MFP_LPM_EDGE_RISE)
+#define WAKEUP_ON_EDGE_FALL	(MFP_LPM_CAN_WAKEUP | MFP_LPM_EDGE_FALL)
+#define WAKEUP_ON_EDGE_BOTH	(MFP_LPM_CAN_WAKEUP | MFP_LPM_EDGE_BOTH)
+
+/* specifically for enabling wakeup on keypad GPIOs */
+#define WAKEUP_ON_LEVEL_HIGH	(MFP_LPM_CAN_WAKEUP)
+
+#define MFP_CFG_IN(pin, af)		\
+	((MFP_CFG_DEFAULT & ~(MFP_AF_MASK | MFP_DIR_MASK)) |\
+	 (MFP_PIN(MFP_PIN_##pin) | MFP_##af | MFP_DIR_IN))
+
+/* NOTE:  pins configured as output _must_ provide a low power state,
+ * and this state should help to minimize the power dissipation.
+ */
+#define MFP_CFG_OUT(pin, af, state)	\
+	((MFP_CFG_DEFAULT & ~(MFP_AF_MASK | MFP_DIR_MASK | MFP_LPM_STATE_MASK)) |\
+	 (MFP_PIN(MFP_PIN_##pin) | MFP_##af | MFP_DIR_OUT | MFP_LPM_##state))
+
+/* Common configurations for pxa25x and pxa27x
+ *
+ * Note: pins configured as GPIO are always initialized to input
+ * so not to cause any side effect
+ */
+#define GPIO0_GPIO	MFP_CFG_IN(GPIO0, AF0)
+#define GPIO1_GPIO	MFP_CFG_IN(GPIO1, AF0)
+#define GPIO9_GPIO	MFP_CFG_IN(GPIO9, AF0)
+#define GPIO10_GPIO	MFP_CFG_IN(GPIO10, AF0)
+#define GPIO11_GPIO	MFP_CFG_IN(GPIO11, AF0)
+#define GPIO12_GPIO	MFP_CFG_IN(GPIO12, AF0)
+#define GPIO13_GPIO	MFP_CFG_IN(GPIO13, AF0)
+#define GPIO14_GPIO	MFP_CFG_IN(GPIO14, AF0)
+#define GPIO15_GPIO	MFP_CFG_IN(GPIO15, AF0)
+#define GPIO16_GPIO	MFP_CFG_IN(GPIO16, AF0)
+#define GPIO17_GPIO	MFP_CFG_IN(GPIO17, AF0)
+#define GPIO18_GPIO	MFP_CFG_IN(GPIO18, AF0)
+#define GPIO19_GPIO	MFP_CFG_IN(GPIO19, AF0)
+#define GPIO20_GPIO	MFP_CFG_IN(GPIO20, AF0)
+#define GPIO21_GPIO	MFP_CFG_IN(GPIO21, AF0)
+#define GPIO22_GPIO	MFP_CFG_IN(GPIO22, AF0)
+#define GPIO23_GPIO	MFP_CFG_IN(GPIO23, AF0)
+#define GPIO24_GPIO	MFP_CFG_IN(GPIO24, AF0)
+#define GPIO25_GPIO	MFP_CFG_IN(GPIO25, AF0)
+#define GPIO26_GPIO	MFP_CFG_IN(GPIO26, AF0)
+#define GPIO27_GPIO	MFP_CFG_IN(GPIO27, AF0)
+#define GPIO28_GPIO	MFP_CFG_IN(GPIO28, AF0)
+#define GPIO29_GPIO	MFP_CFG_IN(GPIO29, AF0)
+#define GPIO30_GPIO	MFP_CFG_IN(GPIO30, AF0)
+#define GPIO31_GPIO	MFP_CFG_IN(GPIO31, AF0)
+#define GPIO32_GPIO	MFP_CFG_IN(GPIO32, AF0)
+#define GPIO33_GPIO	MFP_CFG_IN(GPIO33, AF0)
+#define GPIO34_GPIO	MFP_CFG_IN(GPIO34, AF0)
+#define GPIO35_GPIO	MFP_CFG_IN(GPIO35, AF0)
+#define GPIO36_GPIO	MFP_CFG_IN(GPIO36, AF0)
+#define GPIO37_GPIO	MFP_CFG_IN(GPIO37, AF0)
+#define GPIO38_GPIO	MFP_CFG_IN(GPIO38, AF0)
+#define GPIO39_GPIO	MFP_CFG_IN(GPIO39, AF0)
+#define GPIO40_GPIO	MFP_CFG_IN(GPIO40, AF0)
+#define GPIO41_GPIO	MFP_CFG_IN(GPIO41, AF0)
+#define GPIO42_GPIO	MFP_CFG_IN(GPIO42, AF0)
+#define GPIO43_GPIO	MFP_CFG_IN(GPIO43, AF0)
+#define GPIO44_GPIO	MFP_CFG_IN(GPIO44, AF0)
+#define GPIO45_GPIO	MFP_CFG_IN(GPIO45, AF0)
+#define GPIO46_GPIO	MFP_CFG_IN(GPIO46, AF0)
+#define GPIO47_GPIO	MFP_CFG_IN(GPIO47, AF0)
+#define GPIO48_GPIO	MFP_CFG_IN(GPIO48, AF0)
+#define GPIO49_GPIO	MFP_CFG_IN(GPIO49, AF0)
+#define GPIO50_GPIO	MFP_CFG_IN(GPIO50, AF0)
+#define GPIO51_GPIO	MFP_CFG_IN(GPIO51, AF0)
+#define GPIO52_GPIO	MFP_CFG_IN(GPIO52, AF0)
+#define GPIO53_GPIO	MFP_CFG_IN(GPIO53, AF0)
+#define GPIO54_GPIO	MFP_CFG_IN(GPIO54, AF0)
+#define GPIO55_GPIO	MFP_CFG_IN(GPIO55, AF0)
+#define GPIO56_GPIO	MFP_CFG_IN(GPIO56, AF0)
+#define GPIO57_GPIO	MFP_CFG_IN(GPIO57, AF0)
+#define GPIO58_GPIO	MFP_CFG_IN(GPIO58, AF0)
+#define GPIO59_GPIO	MFP_CFG_IN(GPIO59, AF0)
+#define GPIO60_GPIO	MFP_CFG_IN(GPIO60, AF0)
+#define GPIO61_GPIO	MFP_CFG_IN(GPIO61, AF0)
+#define GPIO62_GPIO	MFP_CFG_IN(GPIO62, AF0)
+#define GPIO63_GPIO	MFP_CFG_IN(GPIO63, AF0)
+#define GPIO64_GPIO	MFP_CFG_IN(GPIO64, AF0)
+#define GPIO65_GPIO	MFP_CFG_IN(GPIO65, AF0)
+#define GPIO66_GPIO	MFP_CFG_IN(GPIO66, AF0)
+#define GPIO67_GPIO	MFP_CFG_IN(GPIO67, AF0)
+#define GPIO68_GPIO	MFP_CFG_IN(GPIO68, AF0)
+#define GPIO69_GPIO	MFP_CFG_IN(GPIO69, AF0)
+#define GPIO70_GPIO	MFP_CFG_IN(GPIO70, AF0)
+#define GPIO71_GPIO	MFP_CFG_IN(GPIO71, AF0)
+#define GPIO72_GPIO	MFP_CFG_IN(GPIO72, AF0)
+#define GPIO73_GPIO	MFP_CFG_IN(GPIO73, AF0)
+#define GPIO74_GPIO	MFP_CFG_IN(GPIO74, AF0)
+#define GPIO75_GPIO	MFP_CFG_IN(GPIO75, AF0)
+#define GPIO76_GPIO	MFP_CFG_IN(GPIO76, AF0)
+#define GPIO77_GPIO	MFP_CFG_IN(GPIO77, AF0)
+#define GPIO78_GPIO	MFP_CFG_IN(GPIO78, AF0)
+#define GPIO79_GPIO	MFP_CFG_IN(GPIO79, AF0)
+#define GPIO80_GPIO	MFP_CFG_IN(GPIO80, AF0)
+#define GPIO81_GPIO	MFP_CFG_IN(GPIO81, AF0)
+#define GPIO82_GPIO	MFP_CFG_IN(GPIO82, AF0)
+#define GPIO83_GPIO	MFP_CFG_IN(GPIO83, AF0)
+#define GPIO84_GPIO	MFP_CFG_IN(GPIO84, AF0)
+
+extern void pxa2xx_mfp_config(unsigned long *mfp_cfgs, int num);
+extern void pxa2xx_mfp_set_lpm(int mfp, unsigned long lpm);
+extern int gpio_set_wake(unsigned int gpio, unsigned int on);
+#endif /* __ASM_ARCH_MFP_PXA2XX_H */
diff --git a/arch/arm/mach-pxa/include/mach/mfp.h b/arch/arm/mach-pxa/include/mach/mfp.h
new file mode 100644
index 0000000..271e249
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/mfp.h
@@ -0,0 +1,21 @@
+/*
+ * arch/arm/mach-pxa/include/mach/mfp.h
+ *
+ * Multi-Function Pin Definitions
+ *
+ * Copyright (C) 2007 Marvell International Ltd.
+ *
+ * 2007-8-21: eric miao <eric.miao@marvell.com>
+ *            initial version
+ *
+ *  This program is free software; you can redistribute it and/or modify
+ *  it under the terms of the GNU General Public License version 2 as
+ *  published by the Free Software Foundation.
+ */
+
+#ifndef __ASM_ARCH_MFP_H
+#define __ASM_ARCH_MFP_H
+
+#include <plat/mfp.h>
+
+#endif /* __ASM_ARCH_MFP_H */
diff --git a/arch/arm/mach-pxa/include/mach/pxa-regs.h b/arch/arm/mach-pxa/include/mach/pxa-regs.h
new file mode 100644
index 0000000..c32d2ae
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/pxa-regs.h
@@ -0,0 +1,33 @@
+/*
+ * (c) 2010 by Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * Copyright (C) 2010 by Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+#ifndef __MACH_PXA_REGS_H
+#define __MACH_PXA_REGS_H
+
+#ifndef __ASSEMBLY__
+# define __REG(x)	(*((volatile u32 *)(x)))
+# define __REG16(x)	(*(volatile u16 *)(x))
+# define __REG2(x, y)	(*(volatile u32 *)((u32)&__REG(x) + (y)))
+#else
+# define __REG(x)	(x)
+# define __REG16(x)	(x)
+# define __REG2(x, y)	((x) + (y))
+#endif
+
+#ifdef CONFIG_ARCH_PXA2XX
+# include <mach/pxa2xx-regs.h>
+#endif
+
+#ifdef CONFIG_ARCH_PXA27X
+# include <mach/pxa27x-regs.h>
+#else
+# error "unknown PXA soc type"
+#endif
+
+#endif	/* !__MACH_PXA_REGS_H */
diff --git a/arch/arm/mach-pxa/include/mach/pxa27x-regs.h b/arch/arm/mach-pxa/include/mach/pxa27x-regs.h
new file mode 100644
index 0000000..f4d88d4
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/pxa27x-regs.h
@@ -0,0 +1,6 @@
+#ifndef __MACH_PXA27X_REGS
+#define __MACH_PXA27X_REGS
+
+/* this file intentionally left blank */
+
+#endif	/* !__MACH_PXA27X_REGS */
diff --git a/arch/arm/mach-pxa/include/mach/pxa2xx-regs.h b/arch/arm/mach-pxa/include/mach/pxa2xx-regs.h
new file mode 100644
index 0000000..4762d8a
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/pxa2xx-regs.h
@@ -0,0 +1,267 @@
+/*
+ *  arch/arm/mach-pxa/include/mach/pxa2xx-regs.h
+ *
+ *  Taken from pxa-regs.h by Russell King
+ *
+ *  Author:	Nicolas Pitre
+ *  Copyright:	MontaVista Software Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#ifndef __PXA2XX_REGS_H
+#define __PXA2XX_REGS_H
+
+#include <mach/hardware.h>
+
+/*
+ * PXA Chip selects
+ */
+#define PXA_CS0_PHYS	0x00000000
+#define PXA_CS1_PHYS	0x04000000
+#define PXA_CS2_PHYS	0x08000000
+#define PXA_CS3_PHYS	0x0C000000
+#define PXA_CS4_PHYS	0x10000000
+#define PXA_CS5_PHYS	0x14000000
+
+/*
+ * Memory controller
+ */
+#define MDCNFG_OFFSET	0x00000000
+#define MDREFR_OFFSET	0x00000004
+#define MSC0_OFFSET	0x00000008
+#define MSC1_OFFSET	0x0000000C
+#define MSC2_OFFSET	0x00000010
+#define MECR_OFFSET	0x00000014
+#define SXCNFG_OFFSET	0x0000001C
+#define FLYCNFG_OFFSET	0x00000020
+#define MCMEM0_OFFSET	0x00000028
+#define MCMEM1_OFFSET	0x0000002C
+#define MCATT0_OFFSET	0x00000030
+#define MCATT1_OFFSET	0x00000034
+#define MCIO0_OFFSET	0x00000038
+#define MCIO1_OFFSET	0x0000003C
+#define MDMRS_OFFSET	0x00000040
+
+#define MDCNFG		__REG(0x48000000)  /* SDRAM Configuration Register 0 */
+#define MDREFR		__REG(0x48000004)  /* SDRAM Refresh Control Register */
+#define MSC0		__REG(0x48000008)  /* Static Memory Control Register 0 */
+#define MSC1		__REG(0x4800000C)  /* Static Memory Control Register 1 */
+#define MSC2		__REG(0x48000010)  /* Static Memory Control Register 2 */
+#define MECR		__REG(0x48000014)  /* Expansion Memory (PCMCIA/Compact Flash) Bus Configuration */
+#define SXLCR		__REG(0x48000018)  /* LCR value to be written to SDRAM-Timing Synchronous Flash */
+#define SXCNFG		__REG(0x4800001C)  /* Synchronous Static Memory Control Register */
+#define SXMRS		__REG(0x48000024)  /* MRS value to be written to Synchronous Flash or SMROM */
+#define MCMEM0		__REG(0x48000028)  /* Card interface Common Memory Space Socket 0 Timing */
+#define MCMEM1		__REG(0x4800002C)  /* Card interface Common Memory Space Socket 1 Timing */
+#define MCATT0		__REG(0x48000030)  /* Card interface Attribute Space Socket 0 Timing Configuration */
+#define MCATT1		__REG(0x48000034)  /* Card interface Attribute Space Socket 1 Timing Configuration */
+#define MCIO0		__REG(0x48000038)  /* Card interface I/O Space Socket 0 Timing Configuration */
+#define MCIO1		__REG(0x4800003C)  /* Card interface I/O Space Socket 1 Timing Configuration */
+#define MDMRS		__REG(0x48000040)  /* MRS value to be written to SDRAM */
+#define BOOT_DEF	__REG(0x48000044)  /* Read-Only Boot-Time Register. Contains BOOT_SEL and PKG_SEL */
+
+/*
+ * More handy macros for PCMCIA
+ *
+ * Arg is socket number
+ */
+#define MCMEM(s)	__REG2(0x48000028, (s)<<2 )  /* Card interface Common Memory Space Socket s Timing */
+#define MCATT(s)	__REG2(0x48000030, (s)<<2 )  /* Card interface Attribute Space Socket s Timing Configuration */
+#define MCIO(s)		__REG2(0x48000038, (s)<<2 )  /* Card interface I/O Space Socket s Timing Configuration */
+
+/* MECR register defines */
+#define MECR_NOS	(1 << 0)	/* Number Of Sockets: 0 -> 1 sock, 1 -> 2 sock */
+#define MECR_CIT	(1 << 1)	/* Card Is There: 0 -> no card, 1 -> card inserted */
+
+#define MDCNFG_DE0	(1 << 0)	/* SDRAM Bank 0 Enable */
+#define MDCNFG_DE1	(1 << 1)	/* SDRAM Bank 1 Enable */
+#define MDCNFG_DE2	(1 << 16)	/* SDRAM Bank 2 Enable */
+#define MDCNFG_DE3	(1 << 17)	/* SDRAM Bank 3 Enable */
+
+#define MDREFR_K0DB4	(1 << 29)	/* SDCLK0 Divide by 4 Control/Status */
+#define MDREFR_K2FREE	(1 << 25)	/* SDRAM Free-Running Control */
+#define MDREFR_K1FREE	(1 << 24)	/* SDRAM Free-Running Control */
+#define MDREFR_K0FREE	(1 << 23)	/* SDRAM Free-Running Control */
+#define MDREFR_SLFRSH	(1 << 22)	/* SDRAM Self-Refresh Control/Status */
+#define MDREFR_APD	(1 << 20)	/* SDRAM/SSRAM Auto-Power-Down Enable */
+#define MDREFR_K2DB2	(1 << 19)	/* SDCLK2 Divide by 2 Control/Status */
+#define MDREFR_K2RUN	(1 << 18)	/* SDCLK2 Run Control/Status */
+#define MDREFR_K1DB2	(1 << 17)	/* SDCLK1 Divide by 2 Control/Status */
+#define MDREFR_K1RUN	(1 << 16)	/* SDCLK1 Run Control/Status */
+#define MDREFR_E1PIN	(1 << 15)	/* SDCKE1 Level Control/Status */
+#define MDREFR_K0DB2	(1 << 14)	/* SDCLK0 Divide by 2 Control/Status */
+#define MDREFR_K0RUN	(1 << 13)	/* SDCLK0 Run Control/Status */
+#define MDREFR_E0PIN	(1 << 12)	/* SDCKE0 Level Control/Status */
+
+/*
+ * Power Manager
+ */
+
+#define PMCR		__REG(0x40F00000)  /* Power Manager Control Register */
+#define PSSR		__REG(0x40F00004)  /* Power Manager Sleep Status Register */
+#define PSPR		__REG(0x40F00008)  /* Power Manager Scratch Pad Register */
+#define PWER		__REG(0x40F0000C)  /* Power Manager Wake-up Enable Register */
+#define PRER		__REG(0x40F00010)  /* Power Manager GPIO Rising-Edge Detect Enable Register */
+#define PFER		__REG(0x40F00014)  /* Power Manager GPIO Falling-Edge Detect Enable Register */
+#define PEDR		__REG(0x40F00018)  /* Power Manager GPIO Edge Detect Status Register */
+#define PCFR		__REG(0x40F0001C)  /* Power Manager General Configuration Register */
+#define PGSR0		__REG(0x40F00020)  /* Power Manager GPIO Sleep State Register for GP[31-0] */
+#define PGSR1		__REG(0x40F00024)  /* Power Manager GPIO Sleep State Register for GP[63-32] */
+#define PGSR2		__REG(0x40F00028)  /* Power Manager GPIO Sleep State Register for GP[84-64] */
+#define PGSR3		__REG(0x40F0002C)  /* Power Manager GPIO Sleep State Register for GP[118-96] */
+#define RCSR		__REG(0x40F00030)  /* Reset Controller Status Register */
+
+#define PSLR		__REG(0x40F00034)	/* Power Manager Sleep Config Register */
+#define PSTR		__REG(0x40F00038)	/* Power Manager Standby Config Register */
+#define PSNR		__REG(0x40F0003C)	/* Power Manager Sense Config Register */
+#define PVCR		__REG(0x40F00040)	/* Power Manager VoltageControl Register */
+#define PKWR		__REG(0x40F00050)	/* Power Manager KB Wake-up Enable Reg */
+#define PKSR		__REG(0x40F00054)	/* Power Manager KB Level-Detect Register */
+#define PCMD(x)	__REG2(0x40F00080, (x)<<2)
+#define PCMD0	__REG(0x40F00080 + 0 * 4)
+#define PCMD1	__REG(0x40F00080 + 1 * 4)
+#define PCMD2	__REG(0x40F00080 + 2 * 4)
+#define PCMD3	__REG(0x40F00080 + 3 * 4)
+#define PCMD4	__REG(0x40F00080 + 4 * 4)
+#define PCMD5	__REG(0x40F00080 + 5 * 4)
+#define PCMD6	__REG(0x40F00080 + 6 * 4)
+#define PCMD7	__REG(0x40F00080 + 7 * 4)
+#define PCMD8	__REG(0x40F00080 + 8 * 4)
+#define PCMD9	__REG(0x40F00080 + 9 * 4)
+#define PCMD10	__REG(0x40F00080 + 10 * 4)
+#define PCMD11	__REG(0x40F00080 + 11 * 4)
+#define PCMD12	__REG(0x40F00080 + 12 * 4)
+#define PCMD13	__REG(0x40F00080 + 13 * 4)
+#define PCMD14	__REG(0x40F00080 + 14 * 4)
+#define PCMD15	__REG(0x40F00080 + 15 * 4)
+#define PCMD16	__REG(0x40F00080 + 16 * 4)
+#define PCMD17	__REG(0x40F00080 + 17 * 4)
+#define PCMD18	__REG(0x40F00080 + 18 * 4)
+#define PCMD19	__REG(0x40F00080 + 19 * 4)
+#define PCMD20	__REG(0x40F00080 + 20 * 4)
+#define PCMD21	__REG(0x40F00080 + 21 * 4)
+#define PCMD22	__REG(0x40F00080 + 22 * 4)
+#define PCMD23	__REG(0x40F00080 + 23 * 4)
+#define PCMD24	__REG(0x40F00080 + 24 * 4)
+#define PCMD25	__REG(0x40F00080 + 25 * 4)
+#define PCMD26	__REG(0x40F00080 + 26 * 4)
+#define PCMD27	__REG(0x40F00080 + 27 * 4)
+#define PCMD28	__REG(0x40F00080 + 28 * 4)
+#define PCMD29	__REG(0x40F00080 + 29 * 4)
+#define PCMD30	__REG(0x40F00080 + 30 * 4)
+#define PCMD31	__REG(0x40F00080 + 31 * 4)
+
+#define PCMD_MBC	(1<<12)
+#define PCMD_DCE	(1<<11)
+#define PCMD_LC	(1<<10)
+/* FIXME:  PCMD_SQC need be checked.   */
+#define PCMD_SQC	(3<<8)	/* currently only bit 8 is changeable,
+				   bit 9 should be 0 all day. */
+#define PVCR_VCSA	(0x1<<14)
+#define PVCR_CommandDelay (0xf80)
+#define PCFR_PI2C_EN	(0x1 << 6)
+
+#define PSSR_OTGPH	(1 << 6)	/* OTG Peripheral control Hold */
+#define PSSR_RDH	(1 << 5)	/* Read Disable Hold */
+#define PSSR_PH		(1 << 4)	/* Peripheral Control Hold */
+#define PSSR_STS	(1 << 3)	/* Standby Mode Status */
+#define PSSR_VFS	(1 << 2)	/* VDD Fault Status */
+#define PSSR_BFS	(1 << 1)	/* Battery Fault Status */
+#define PSSR_SSS	(1 << 0)	/* Software Sleep Status */
+
+#define PSLR_SL_ROD	(1 << 20)	/* Sleep-Mode/Depp-Sleep Mode nRESET_OUT Disable */
+
+#define PCFR_RO		(1 << 15)	/* RDH Override */
+#define PCFR_PO		(1 << 14)	/* PH Override */
+#define PCFR_GPROD	(1 << 12)	/* GPIO nRESET_OUT Disable */
+#define PCFR_L1_EN	(1 << 11)	/* Sleep Mode L1 converter Enable */
+#define PCFR_FVC	(1 << 10)	/* Frequency/Voltage Change */
+#define PCFR_DC_EN	(1 << 7)	/* Sleep/deep-sleep DC-DC Converter Enable */
+#define PCFR_PI2CEN	(1 << 6)	/* Enable PI2C controller */
+#define PCFR_GPR_EN	(1 << 4)	/* nRESET_GPIO Pin Enable */
+#define PCFR_DS		(1 << 3)	/* Deep Sleep Mode */
+#define PCFR_FS		(1 << 2)	/* Float Static Chip Selects */
+#define PCFR_FP		(1 << 1)	/* Float PCMCIA controls */
+#define PCFR_OPDE	(1 << 0)	/* 3.6864 MHz oscillator power-down enable */
+
+#define RCSR_GPR	(1 << 3)	/* GPIO Reset */
+#define RCSR_SMR	(1 << 2)	/* Sleep Mode */
+#define RCSR_WDR	(1 << 1)	/* Watchdog Reset */
+#define RCSR_HWR	(1 << 0)	/* Hardware Reset */
+
+#define PWER_GPIO(Nb)	(1 << Nb)	/* GPIO [0..15] wake-up enable     */
+#define PWER_GPIO0	PWER_GPIO(0)	/* GPIO  [0] wake-up enable        */
+#define PWER_GPIO1	PWER_GPIO(1)	/* GPIO  [1] wake-up enable        */
+#define PWER_GPIO2	PWER_GPIO(2)	/* GPIO  [2] wake-up enable        */
+#define PWER_GPIO3	PWER_GPIO(3)	/* GPIO  [3] wake-up enable        */
+#define PWER_GPIO4	PWER_GPIO(4)	/* GPIO  [4] wake-up enable        */
+#define PWER_GPIO5	PWER_GPIO(5)	/* GPIO  [5] wake-up enable        */
+#define PWER_GPIO6	PWER_GPIO(6)	/* GPIO  [6] wake-up enable        */
+#define PWER_GPIO7	PWER_GPIO(7)	/* GPIO  [7] wake-up enable        */
+#define PWER_GPIO8	PWER_GPIO(8)	/* GPIO  [8] wake-up enable        */
+#define PWER_GPIO9	PWER_GPIO(9)	/* GPIO  [9] wake-up enable        */
+#define PWER_GPIO10	PWER_GPIO(10)	/* GPIO [10] wake-up enable        */
+#define PWER_GPIO11	PWER_GPIO(11)	/* GPIO [11] wake-up enable        */
+#define PWER_GPIO12	PWER_GPIO(12)	/* GPIO [12] wake-up enable        */
+#define PWER_GPIO13	PWER_GPIO(13)	/* GPIO [13] wake-up enable        */
+#define PWER_GPIO14	PWER_GPIO(14)	/* GPIO [14] wake-up enable        */
+#define PWER_GPIO15	PWER_GPIO(15)	/* GPIO [15] wake-up enable        */
+#define PWER_RTC	0x80000000	/* RTC alarm wake-up enable        */
+
+/*
+ * PXA2xx specific Core clock definitions
+ */
+#define CCCR		__REG(0x41300000)  /* Core Clock Configuration Register */
+#define CCSR		__REG(0x4130000C)  /* Core Clock Status Register */
+#define CKEN		__REG(0x41300004)  /* Clock Enable Register */
+#define OSCC		__REG(0x41300008)  /* Oscillator Configuration Register */
+
+#define CCCR_N_MASK	0x0380	/* Run Mode Frequency to Turbo Mode Frequency Multiplier */
+#define CCCR_M_MASK	0x0060	/* Memory Frequency to Run Mode Frequency Multiplier */
+#define CCCR_L_MASK	0x001f	/* Crystal Frequency to Memory Frequency Multiplier */
+
+#define CKEN_AC97CONF   (1 << 31)    /* AC97 Controller Configuration */
+#define CKEN_CAMERA	(1 << 24)	/* Camera Interface Clock Enable */
+#define CKEN_SSP1	(1 << 23)	/* SSP1 Unit Clock Enable */
+#define CKEN_MEMC	(1 << 22)	/* Memory Controller Clock Enable */
+#define CKEN_MEMSTK	(1 << 21)	/* Memory Stick Host Controller */
+#define CKEN_IM		(1 << 20)	/* Internal Memory Clock Enable */
+#define CKEN_KEYPAD	(1 << 19)	/* Keypad Interface Clock Enable */
+#define CKEN_USIM	(1 << 18)	/* USIM Unit Clock Enable */
+#define CKEN_MSL	(1 << 17)	/* MSL Unit Clock Enable */
+#define CKEN_LCD	(1 << 16)	/* LCD Unit Clock Enable */
+#define CKEN_PWRI2C	(1 << 15)	/* PWR I2C Unit Clock Enable */
+#define CKEN_I2C	(1 << 14)	/* I2C Unit Clock Enable */
+#define CKEN_FICP	(1 << 13)	/* FICP Unit Clock Enable */
+#define CKEN_MMC	(1 << 12)	/* MMC Unit Clock Enable */
+#define CKEN_USB	(1 << 11)	/* USB Unit Clock Enable */
+#define CKEN_ASSP	(1 << 10)	/* ASSP (1 << SSP3) Clock Enable */
+#define CKEN_USBHOST	(1 << 10)	/* USB Host Unit Clock Enable */
+#define CKEN_OSTIMER	(1 << 9)	/* OS Timer Unit Clock Enable */
+#define CKEN_NSSP	(1 << 9)	/* NSSP (1 << SSP2) Clock Enable */
+#define CKEN_I2S	(1 << 8)	/* I2S Unit Clock Enable */
+#define CKEN_BTUART	(1 << 7)	/* BTUART Unit Clock Enable */
+#define CKEN_FFUART	(1 << 6)	/* FFUART Unit Clock Enable */
+#define CKEN_STUART	(1 << 5)	/* STUART Unit Clock Enable */
+#define CKEN_HWUART	(1 << 4)	/* HWUART Unit Clock Enable */
+#define CKEN_SSP3	(1 << 4)	/* SSP3 Unit Clock Enable */
+#define CKEN_SSP	(1 << 3)	/* SSP Unit Clock Enable */
+#define CKEN_SSP2	(1 << 3)	/* SSP2 Unit Clock Enable */
+#define CKEN_AC97	(1 << 2)	/* AC97 Unit Clock Enable */
+#define CKEN_PWM1	(1 << 1)	/* PWM1 Clock Enable */
+#define CKEN_PWM0	(1 << 0)	/* PWM0 Clock Enable */
+
+#define OSCC_OON	(1 << 1)	/* 32.768kHz OON (write-once only bit) */
+#define OSCC_OOK	(1 << 0)	/* 32.768kHz OOK (read-only bit) */
+
+/* PWRMODE register M field values */
+
+#define PWRMODE_IDLE		0x1
+#define PWRMODE_STANDBY		0x2
+#define PWRMODE_SLEEP		0x3
+#define PWRMODE_DEEPSLEEP	0x7
+
+#endif
diff --git a/arch/arm/mach-pxa/include/mach/regs-intc.h b/arch/arm/mach-pxa/include/mach/regs-intc.h
new file mode 100644
index 0000000..68464ce
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/regs-intc.h
@@ -0,0 +1,34 @@
+#ifndef __ASM_MACH_REGS_INTC_H
+#define __ASM_MACH_REGS_INTC_H
+
+#include <mach/hardware.h>
+
+/*
+ * Interrupt Controller
+ */
+
+#define ICIP		__REG(0x40D00000)  /* Interrupt Controller IRQ Pending Register */
+#define ICMR		__REG(0x40D00004)  /* Interrupt Controller Mask Register */
+#define ICLR		__REG(0x40D00008)  /* Interrupt Controller Level Register */
+#define ICFP		__REG(0x40D0000C)  /* Interrupt Controller FIQ Pending Register */
+#define ICPR		__REG(0x40D00010)  /* Interrupt Controller Pending Register */
+#define ICCR		__REG(0x40D00014)  /* Interrupt Controller Control Register */
+#define ICHP		__REG(0x40D00018)  /* Interrupt Controller Highest Priority Register */
+
+#define ICIP2		__REG(0x40D0009C)  /* Interrupt Controller IRQ Pending Register 2 */
+#define ICMR2		__REG(0x40D000A0)  /* Interrupt Controller Mask Register 2 */
+#define ICLR2		__REG(0x40D000A4)  /* Interrupt Controller Level Register 2 */
+#define ICFP2		__REG(0x40D000A8)  /* Interrupt Controller FIQ Pending Register 2 */
+#define ICPR2		__REG(0x40D000AC)  /* Interrupt Controller Pending Register 2 */
+
+#define ICIP3		__REG(0x40D00130)  /* Interrupt Controller IRQ Pending Register 3 */
+#define ICMR3		__REG(0x40D00134)  /* Interrupt Controller Mask Register 3 */
+#define ICLR3		__REG(0x40D00138)  /* Interrupt Controller Level Register 3 */
+#define ICFP3		__REG(0x40D0013C)  /* Interrupt Controller FIQ Pending Register 3 */
+#define ICPR3		__REG(0x40D00140)  /* Interrupt Controller Pending Register 3 */
+
+#define IPR(x)		__REG(0x40D0001C + (x < 32 ? (x << 2)		\
+				: (x < 64 ? (0x94 + ((x - 32) << 2))	\
+				: (0x128 + ((x - 64) << 2)))))
+
+#endif /* __ASM_MACH_REGS_INTC_H */
diff --git a/arch/arm/mach-pxa/include/mach/regs-ost.h b/arch/arm/mach-pxa/include/mach/regs-ost.h
new file mode 100644
index 0000000..a3e5f86
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/regs-ost.h
@@ -0,0 +1,34 @@
+#ifndef __ASM_MACH_REGS_OST_H
+#define __ASM_MACH_REGS_OST_H
+
+#include <mach/hardware.h>
+
+/*
+ * OS Timer & Match Registers
+ */
+
+#define OSMR0		__REG(0x40A00000)  /* */
+#define OSMR1		__REG(0x40A00004)  /* */
+#define OSMR2		__REG(0x40A00008)  /* */
+#define OSMR3		__REG(0x40A0000C)  /* */
+#define OSMR4		__REG(0x40A00080)  /* */
+#define OSCR		__REG(0x40A00010)  /* OS Timer Counter Register */
+#define OSCR4		__REG(0x40A00040)  /* OS Timer Counter Register */
+#define OMCR4		__REG(0x40A000C0)  /* */
+#define OSSR		__REG(0x40A00014)  /* OS Timer Status Register */
+#define OWER		__REG(0x40A00018)  /* OS Timer Watchdog Enable Register */
+#define OIER		__REG(0x40A0001C)  /* OS Timer Interrupt Enable Register */
+
+#define OSSR_M3		(1 << 3)	/* Match status channel 3 */
+#define OSSR_M2		(1 << 2)	/* Match status channel 2 */
+#define OSSR_M1		(1 << 1)	/* Match status channel 1 */
+#define OSSR_M0		(1 << 0)	/* Match status channel 0 */
+
+#define OWER_WME	(1 << 0)	/* Watchdog Match Enable */
+
+#define OIER_E3		(1 << 3)	/* Interrupt enable channel 3 */
+#define OIER_E2		(1 << 2)	/* Interrupt enable channel 2 */
+#define OIER_E1		(1 << 1)	/* Interrupt enable channel 1 */
+#define OIER_E0		(1 << 0)	/* Interrupt enable channel 0 */
+
+#endif /* __ASM_MACH_REGS_OST_H */
diff --git a/arch/arm/mach-pxa/include/plat/gpio.h b/arch/arm/mach-pxa/include/plat/gpio.h
new file mode 100644
index 0000000..4c7b526
--- /dev/null
+++ b/arch/arm/mach-pxa/include/plat/gpio.h
@@ -0,0 +1,74 @@
+#ifndef __PLAT_GPIO_H
+#define __PLAT_GPIO_H
+
+#include <mach/gpio.h>
+
+/*
+ * We handle the GPIOs by banks, each bank covers up to 32 GPIOs with
+ * one set of registers. The register offsets are organized below:
+ *
+ *           GPLR    GPDR    GPSR    GPCR    GRER    GFER    GEDR
+ * BANK 0 - 0x0000  0x000C  0x0018  0x0024  0x0030  0x003C  0x0048
+ * BANK 1 - 0x0004  0x0010  0x001C  0x0028  0x0034  0x0040  0x004C
+ * BANK 2 - 0x0008  0x0014  0x0020  0x002C  0x0038  0x0044  0x0050
+ *
+ * BANK 3 - 0x0100  0x010C  0x0118  0x0124  0x0130  0x013C  0x0148
+ * BANK 4 - 0x0104  0x0110  0x011C  0x0128  0x0134  0x0140  0x014C
+ * BANK 5 - 0x0108  0x0114  0x0120  0x012C  0x0138  0x0144  0x0150
+ *
+ * NOTE:
+ *   BANK 3 is only available on PXA27x and later processors.
+ *   BANK 4 and 5 are only available on PXA935
+ */
+
+#define GPIO_BANK(n)	(GPIO_REGS_VIRT + BANK_OFF(n))
+
+#define GPLR_OFFSET	0x00
+#define GPDR_OFFSET	0x0C
+#define GPSR_OFFSET	0x18
+#define GPCR_OFFSET	0x24
+#define GRER_OFFSET	0x30
+#define GFER_OFFSET	0x3C
+#define GEDR_OFFSET	0x48
+
+static inline int gpio_get_value(unsigned gpio)
+{
+	return GPLR(gpio) & GPIO_bit(gpio);
+}
+
+static inline void gpio_set_value(unsigned gpio, int value)
+{
+	if (value)
+		GPSR(gpio) = GPIO_bit(gpio);
+	else
+		GPCR(gpio) = GPIO_bit(gpio);
+}
+
+static inline int gpio_direction_input(unsigned gpio)
+{
+	if (__gpio_is_inverted(gpio))
+		GPDR(gpio) |= GPIO_bit(gpio);
+	else
+		GPDR(gpio) &= ~GPIO_bit(gpio);
+	return 0;
+}
+
+static inline int gpio_direction_output(unsigned gpio, int value)
+{
+	gpio_set_value(gpio, value);
+	if (__gpio_is_inverted(gpio))
+		GPDR(gpio) &= ~GPIO_bit(gpio);
+	else
+		GPDR(gpio) |= GPIO_bit(gpio);
+	return 0;
+}
+
+/* NOTE: some PXAs have fewer on-chip GPIOs (like PXA255, with 85).
+ * Those cases currently cause holes in the GPIO number space, the
+ * actual number of the last GPIO is recorded by 'pxa_last_gpio'.
+ */
+extern int pxa_last_gpio;
+
+extern int pxa_init_gpio(int start, int end);
+
+#endif /* __PLAT_GPIO_H */
diff --git a/arch/arm/mach-pxa/include/plat/mfp.h b/arch/arm/mach-pxa/include/plat/mfp.h
new file mode 100644
index 0000000..755b020
--- /dev/null
+++ b/arch/arm/mach-pxa/include/plat/mfp.h
@@ -0,0 +1,468 @@
+/*
+ * arch/arm/plat-pxa/include/plat/mfp.h
+ *
+ *   Common Multi-Function Pin Definitions
+ *
+ * Copyright (C) 2007 Marvell International Ltd.
+ *
+ * 2007-8-21: eric miao <eric.miao@marvell.com>
+ *            initial version
+ *
+ *  This program is free software; you can redistribute it and/or modify
+ *  it under the terms of the GNU General Public License version 2 as
+ *  published by the Free Software Foundation.
+ */
+
+#ifndef __ASM_PLAT_MFP_H
+#define __ASM_PLAT_MFP_H
+
+#define mfp_to_gpio(m)	((m) % 256)
+
+/* list of all the configurable MFP pins */
+enum {
+	MFP_PIN_INVALID = -1,
+
+	MFP_PIN_GPIO0 = 0,
+	MFP_PIN_GPIO1,
+	MFP_PIN_GPIO2,
+	MFP_PIN_GPIO3,
+	MFP_PIN_GPIO4,
+	MFP_PIN_GPIO5,
+	MFP_PIN_GPIO6,
+	MFP_PIN_GPIO7,
+	MFP_PIN_GPIO8,
+	MFP_PIN_GPIO9,
+	MFP_PIN_GPIO10,
+	MFP_PIN_GPIO11,
+	MFP_PIN_GPIO12,
+	MFP_PIN_GPIO13,
+	MFP_PIN_GPIO14,
+	MFP_PIN_GPIO15,
+	MFP_PIN_GPIO16,
+	MFP_PIN_GPIO17,
+	MFP_PIN_GPIO18,
+	MFP_PIN_GPIO19,
+	MFP_PIN_GPIO20,
+	MFP_PIN_GPIO21,
+	MFP_PIN_GPIO22,
+	MFP_PIN_GPIO23,
+	MFP_PIN_GPIO24,
+	MFP_PIN_GPIO25,
+	MFP_PIN_GPIO26,
+	MFP_PIN_GPIO27,
+	MFP_PIN_GPIO28,
+	MFP_PIN_GPIO29,
+	MFP_PIN_GPIO30,
+	MFP_PIN_GPIO31,
+	MFP_PIN_GPIO32,
+	MFP_PIN_GPIO33,
+	MFP_PIN_GPIO34,
+	MFP_PIN_GPIO35,
+	MFP_PIN_GPIO36,
+	MFP_PIN_GPIO37,
+	MFP_PIN_GPIO38,
+	MFP_PIN_GPIO39,
+	MFP_PIN_GPIO40,
+	MFP_PIN_GPIO41,
+	MFP_PIN_GPIO42,
+	MFP_PIN_GPIO43,
+	MFP_PIN_GPIO44,
+	MFP_PIN_GPIO45,
+	MFP_PIN_GPIO46,
+	MFP_PIN_GPIO47,
+	MFP_PIN_GPIO48,
+	MFP_PIN_GPIO49,
+	MFP_PIN_GPIO50,
+	MFP_PIN_GPIO51,
+	MFP_PIN_GPIO52,
+	MFP_PIN_GPIO53,
+	MFP_PIN_GPIO54,
+	MFP_PIN_GPIO55,
+	MFP_PIN_GPIO56,
+	MFP_PIN_GPIO57,
+	MFP_PIN_GPIO58,
+	MFP_PIN_GPIO59,
+	MFP_PIN_GPIO60,
+	MFP_PIN_GPIO61,
+	MFP_PIN_GPIO62,
+	MFP_PIN_GPIO63,
+	MFP_PIN_GPIO64,
+	MFP_PIN_GPIO65,
+	MFP_PIN_GPIO66,
+	MFP_PIN_GPIO67,
+	MFP_PIN_GPIO68,
+	MFP_PIN_GPIO69,
+	MFP_PIN_GPIO70,
+	MFP_PIN_GPIO71,
+	MFP_PIN_GPIO72,
+	MFP_PIN_GPIO73,
+	MFP_PIN_GPIO74,
+	MFP_PIN_GPIO75,
+	MFP_PIN_GPIO76,
+	MFP_PIN_GPIO77,
+	MFP_PIN_GPIO78,
+	MFP_PIN_GPIO79,
+	MFP_PIN_GPIO80,
+	MFP_PIN_GPIO81,
+	MFP_PIN_GPIO82,
+	MFP_PIN_GPIO83,
+	MFP_PIN_GPIO84,
+	MFP_PIN_GPIO85,
+	MFP_PIN_GPIO86,
+	MFP_PIN_GPIO87,
+	MFP_PIN_GPIO88,
+	MFP_PIN_GPIO89,
+	MFP_PIN_GPIO90,
+	MFP_PIN_GPIO91,
+	MFP_PIN_GPIO92,
+	MFP_PIN_GPIO93,
+	MFP_PIN_GPIO94,
+	MFP_PIN_GPIO95,
+	MFP_PIN_GPIO96,
+	MFP_PIN_GPIO97,
+	MFP_PIN_GPIO98,
+	MFP_PIN_GPIO99,
+	MFP_PIN_GPIO100,
+	MFP_PIN_GPIO101,
+	MFP_PIN_GPIO102,
+	MFP_PIN_GPIO103,
+	MFP_PIN_GPIO104,
+	MFP_PIN_GPIO105,
+	MFP_PIN_GPIO106,
+	MFP_PIN_GPIO107,
+	MFP_PIN_GPIO108,
+	MFP_PIN_GPIO109,
+	MFP_PIN_GPIO110,
+	MFP_PIN_GPIO111,
+	MFP_PIN_GPIO112,
+	MFP_PIN_GPIO113,
+	MFP_PIN_GPIO114,
+	MFP_PIN_GPIO115,
+	MFP_PIN_GPIO116,
+	MFP_PIN_GPIO117,
+	MFP_PIN_GPIO118,
+	MFP_PIN_GPIO119,
+	MFP_PIN_GPIO120,
+	MFP_PIN_GPIO121,
+	MFP_PIN_GPIO122,
+	MFP_PIN_GPIO123,
+	MFP_PIN_GPIO124,
+	MFP_PIN_GPIO125,
+	MFP_PIN_GPIO126,
+	MFP_PIN_GPIO127,
+
+	MFP_PIN_GPIO128,
+	MFP_PIN_GPIO129,
+	MFP_PIN_GPIO130,
+	MFP_PIN_GPIO131,
+	MFP_PIN_GPIO132,
+	MFP_PIN_GPIO133,
+	MFP_PIN_GPIO134,
+	MFP_PIN_GPIO135,
+	MFP_PIN_GPIO136,
+	MFP_PIN_GPIO137,
+	MFP_PIN_GPIO138,
+	MFP_PIN_GPIO139,
+	MFP_PIN_GPIO140,
+	MFP_PIN_GPIO141,
+	MFP_PIN_GPIO142,
+	MFP_PIN_GPIO143,
+	MFP_PIN_GPIO144,
+	MFP_PIN_GPIO145,
+	MFP_PIN_GPIO146,
+	MFP_PIN_GPIO147,
+	MFP_PIN_GPIO148,
+	MFP_PIN_GPIO149,
+	MFP_PIN_GPIO150,
+	MFP_PIN_GPIO151,
+	MFP_PIN_GPIO152,
+	MFP_PIN_GPIO153,
+	MFP_PIN_GPIO154,
+	MFP_PIN_GPIO155,
+	MFP_PIN_GPIO156,
+	MFP_PIN_GPIO157,
+	MFP_PIN_GPIO158,
+	MFP_PIN_GPIO159,
+	MFP_PIN_GPIO160,
+	MFP_PIN_GPIO161,
+	MFP_PIN_GPIO162,
+	MFP_PIN_GPIO163,
+	MFP_PIN_GPIO164,
+	MFP_PIN_GPIO165,
+	MFP_PIN_GPIO166,
+	MFP_PIN_GPIO167,
+	MFP_PIN_GPIO168,
+	MFP_PIN_GPIO169,
+	MFP_PIN_GPIO170,
+	MFP_PIN_GPIO171,
+	MFP_PIN_GPIO172,
+	MFP_PIN_GPIO173,
+	MFP_PIN_GPIO174,
+	MFP_PIN_GPIO175,
+	MFP_PIN_GPIO176,
+	MFP_PIN_GPIO177,
+	MFP_PIN_GPIO178,
+	MFP_PIN_GPIO179,
+	MFP_PIN_GPIO180,
+	MFP_PIN_GPIO181,
+	MFP_PIN_GPIO182,
+	MFP_PIN_GPIO183,
+	MFP_PIN_GPIO184,
+	MFP_PIN_GPIO185,
+	MFP_PIN_GPIO186,
+	MFP_PIN_GPIO187,
+	MFP_PIN_GPIO188,
+	MFP_PIN_GPIO189,
+	MFP_PIN_GPIO190,
+	MFP_PIN_GPIO191,
+
+	MFP_PIN_GPIO255 = 255,
+
+	MFP_PIN_GPIO0_2,
+	MFP_PIN_GPIO1_2,
+	MFP_PIN_GPIO2_2,
+	MFP_PIN_GPIO3_2,
+	MFP_PIN_GPIO4_2,
+	MFP_PIN_GPIO5_2,
+	MFP_PIN_GPIO6_2,
+	MFP_PIN_GPIO7_2,
+	MFP_PIN_GPIO8_2,
+	MFP_PIN_GPIO9_2,
+	MFP_PIN_GPIO10_2,
+	MFP_PIN_GPIO11_2,
+	MFP_PIN_GPIO12_2,
+	MFP_PIN_GPIO13_2,
+	MFP_PIN_GPIO14_2,
+	MFP_PIN_GPIO15_2,
+	MFP_PIN_GPIO16_2,
+	MFP_PIN_GPIO17_2,
+
+	MFP_PIN_ULPI_STP,
+	MFP_PIN_ULPI_NXT,
+	MFP_PIN_ULPI_DIR,
+
+	MFP_PIN_nXCVREN,
+	MFP_PIN_DF_CLE_nOE,
+	MFP_PIN_DF_nADV1_ALE,
+	MFP_PIN_DF_SCLK_E,
+	MFP_PIN_DF_SCLK_S,
+	MFP_PIN_nBE0,
+	MFP_PIN_nBE1,
+	MFP_PIN_DF_nADV2_ALE,
+	MFP_PIN_DF_INT_RnB,
+	MFP_PIN_DF_nCS0,
+	MFP_PIN_DF_nCS1,
+	MFP_PIN_nLUA,
+	MFP_PIN_nLLA,
+	MFP_PIN_DF_nWE,
+	MFP_PIN_DF_ALE_nWE,
+	MFP_PIN_DF_nRE_nOE,
+	MFP_PIN_DF_ADDR0,
+	MFP_PIN_DF_ADDR1,
+	MFP_PIN_DF_ADDR2,
+	MFP_PIN_DF_ADDR3,
+	MFP_PIN_DF_IO0,
+	MFP_PIN_DF_IO1,
+	MFP_PIN_DF_IO2,
+	MFP_PIN_DF_IO3,
+	MFP_PIN_DF_IO4,
+	MFP_PIN_DF_IO5,
+	MFP_PIN_DF_IO6,
+	MFP_PIN_DF_IO7,
+	MFP_PIN_DF_IO8,
+	MFP_PIN_DF_IO9,
+	MFP_PIN_DF_IO10,
+	MFP_PIN_DF_IO11,
+	MFP_PIN_DF_IO12,
+	MFP_PIN_DF_IO13,
+	MFP_PIN_DF_IO14,
+	MFP_PIN_DF_IO15,
+	MFP_PIN_DF_nCS0_SM_nCS2,
+	MFP_PIN_DF_nCS1_SM_nCS3,
+	MFP_PIN_SM_nCS0,
+	MFP_PIN_SM_nCS1,
+	MFP_PIN_DF_WEn,
+	MFP_PIN_DF_REn,
+	MFP_PIN_DF_CLE_SM_OEn,
+	MFP_PIN_DF_ALE_SM_WEn,
+	MFP_PIN_DF_RDY0,
+	MFP_PIN_DF_RDY1,
+
+	MFP_PIN_SM_SCLK,
+	MFP_PIN_SM_BE0,
+	MFP_PIN_SM_BE1,
+	MFP_PIN_SM_ADV,
+	MFP_PIN_SM_ADVMUX,
+	MFP_PIN_SM_RDY,
+
+	MFP_PIN_MMC1_DAT7,
+	MFP_PIN_MMC1_DAT6,
+	MFP_PIN_MMC1_DAT5,
+	MFP_PIN_MMC1_DAT4,
+	MFP_PIN_MMC1_DAT3,
+	MFP_PIN_MMC1_DAT2,
+	MFP_PIN_MMC1_DAT1,
+	MFP_PIN_MMC1_DAT0,
+	MFP_PIN_MMC1_CMD,
+	MFP_PIN_MMC1_CLK,
+	MFP_PIN_MMC1_CD,
+	MFP_PIN_MMC1_WP,
+
+	/* additional pins on PXA930 */
+	MFP_PIN_GSIM_UIO,
+	MFP_PIN_GSIM_UCLK,
+	MFP_PIN_GSIM_UDET,
+	MFP_PIN_GSIM_nURST,
+	MFP_PIN_PMIC_INT,
+	MFP_PIN_RDY,
+
+	MFP_PIN_MAX,
+};
+
+/*
+ * a possible MFP configuration is represented by a 32-bit integer
+ *
+ * bit  0.. 9 - MFP Pin Number (1024 Pins Maximum)
+ * bit 10..12 - Alternate Function Selection
+ * bit 13..15 - Drive Strength
+ * bit 16..18 - Low Power Mode State
+ * bit 19..20 - Low Power Mode Edge Detection
+ * bit 21..22 - Run Mode Pull State
+ *
+ * to facilitate the definition, the following macros are provided
+ *
+ * MFP_CFG_DEFAULT - default MFP configuration value, with
+ *		alternate function = 0,
+ *		drive strength = fast 3mA (MFP_DS03X)
+ *		low power mode = default
+ *		edge detection = none
+ *
+ * MFP_CFG	- default MFPR value with alternate function
+ * MFP_CFG_DRV	- default MFPR value with alternate function and
+ *		  pin drive strength
+ * MFP_CFG_LPM	- default MFPR value with alternate function and
+ *		  low power mode
+ * MFP_CFG_X	- default MFPR value with alternate function,
+ *		  pin drive strength and low power mode
+ */
+
+typedef unsigned long mfp_cfg_t;
+
+#define MFP_PIN(x)		((x) & 0x3ff)
+
+#define MFP_AF0			(0x0 << 10)
+#define MFP_AF1			(0x1 << 10)
+#define MFP_AF2			(0x2 << 10)
+#define MFP_AF3			(0x3 << 10)
+#define MFP_AF4			(0x4 << 10)
+#define MFP_AF5			(0x5 << 10)
+#define MFP_AF6			(0x6 << 10)
+#define MFP_AF7			(0x7 << 10)
+#define MFP_AF_MASK		(0x7 << 10)
+#define MFP_AF(x)		(((x) >> 10) & 0x7)
+
+#define MFP_DS01X		(0x0 << 13)
+#define MFP_DS02X		(0x1 << 13)
+#define MFP_DS03X		(0x2 << 13)
+#define MFP_DS04X		(0x3 << 13)
+#define MFP_DS06X		(0x4 << 13)
+#define MFP_DS08X		(0x5 << 13)
+#define MFP_DS10X		(0x6 << 13)
+#define MFP_DS13X		(0x7 << 13)
+#define MFP_DS_MASK		(0x7 << 13)
+#define MFP_DS(x)		(((x) >> 13) & 0x7)
+
+#define MFP_LPM_DEFAULT		(0x0 << 16)
+#define MFP_LPM_DRIVE_LOW	(0x1 << 16)
+#define MFP_LPM_DRIVE_HIGH	(0x2 << 16)
+#define MFP_LPM_PULL_LOW	(0x3 << 16)
+#define MFP_LPM_PULL_HIGH	(0x4 << 16)
+#define MFP_LPM_FLOAT		(0x5 << 16)
+#define MFP_LPM_INPUT		(0x6 << 16)
+#define MFP_LPM_STATE_MASK	(0x7 << 16)
+#define MFP_LPM_STATE(x)	(((x) >> 16) & 0x7)
+
+#define MFP_LPM_EDGE_NONE	(0x0 << 19)
+#define MFP_LPM_EDGE_RISE	(0x1 << 19)
+#define MFP_LPM_EDGE_FALL	(0x2 << 19)
+#define MFP_LPM_EDGE_BOTH	(0x3 << 19)
+#define MFP_LPM_EDGE_MASK	(0x3 << 19)
+#define MFP_LPM_EDGE(x)		(((x) >> 19) & 0x3)
+
+#define MFP_PULL_NONE		(0x0 << 21)
+#define MFP_PULL_LOW		(0x1 << 21)
+#define MFP_PULL_HIGH		(0x2 << 21)
+#define MFP_PULL_BOTH		(0x3 << 21)
+#define MFP_PULL_FLOAT		(0x4 << 21)
+#define MFP_PULL_MASK		(0x7 << 21)
+#define MFP_PULL(x)		(((x) >> 21) & 0x7)
+
+#define MFP_CFG_DEFAULT		(MFP_AF0 | MFP_DS03X | MFP_LPM_DEFAULT |\
+				 MFP_LPM_EDGE_NONE | MFP_PULL_NONE)
+
+#define MFP_CFG(pin, af)		\
+	((MFP_CFG_DEFAULT & ~MFP_AF_MASK) |\
+	 (MFP_PIN(MFP_PIN_##pin) | MFP_##af))
+
+#define MFP_CFG_DRV(pin, af, drv)	\
+	((MFP_CFG_DEFAULT & ~(MFP_AF_MASK | MFP_DS_MASK)) |\
+	 (MFP_PIN(MFP_PIN_##pin) | MFP_##af | MFP_##drv))
+
+#define MFP_CFG_LPM(pin, af, lpm)	\
+	((MFP_CFG_DEFAULT & ~(MFP_AF_MASK | MFP_LPM_STATE_MASK)) |\
+	 (MFP_PIN(MFP_PIN_##pin) | MFP_##af | MFP_LPM_##lpm))
+
+#define MFP_CFG_X(pin, af, drv, lpm)	\
+	((MFP_CFG_DEFAULT & ~(MFP_AF_MASK | MFP_DS_MASK | MFP_LPM_STATE_MASK)) |\
+	 (MFP_PIN(MFP_PIN_##pin) | MFP_##af | MFP_##drv | MFP_LPM_##lpm))
+
+#if defined(CONFIG_PXA3xx) || defined(CONFIG_ARCH_MMP)
+/*
+ * each MFP pin will have a MFPR register, since the offset of the
+ * register varies between processors, the processor specific code
+ * should initialize the pin offsets by mfp_init()
+ *
+ * mfp_init_base() - accepts a virtual base for all MFPR registers and
+ * initialize the MFP table to a default state
+ *
+ * mfp_init_addr() - accepts a table of "mfp_addr_map" structure, which
+ * represents a range of MFP pins from "start" to "end", with the offset
+ * begining at "offset", to define a single pin, let "end" = -1.
+ *
+ * use
+ *
+ * MFP_ADDR_X() to define a range of pins
+ * MFP_ADDR()   to define a single pin
+ * MFP_ADDR_END to signal the end of pin offset definitions
+ */
+struct mfp_addr_map {
+	unsigned int	start;
+	unsigned int	end;
+	unsigned long	offset;
+};
+
+#define MFP_ADDR_X(start, end, offset) \
+	{ MFP_PIN_##start, MFP_PIN_##end, offset }
+
+#define MFP_ADDR(pin, offset) \
+	{ MFP_PIN_##pin, -1, offset }
+
+#define MFP_ADDR_END	{ MFP_PIN_INVALID, 0 }
+
+void __init mfp_init_base(unsigned long mfpr_base);
+void __init mfp_init_addr(struct mfp_addr_map *map);
+
+/*
+ * mfp_{read, write}()	- for direct read/write access to the MFPR register
+ * mfp_config()		- for configuring a group of MFPR registers
+ * mfp_config_lpm()	- configuring all low power MFPR registers for suspend
+ * mfp_config_run()	- configuring all run time  MFPR registers after resume
+ */
+unsigned long mfp_read(int mfp);
+void mfp_write(int mfp, unsigned long mfpr_val);
+void mfp_config(unsigned long *mfp_cfgs, int num);
+void mfp_config_run(void);
+void mfp_config_lpm(void);
+#endif /* CONFIG_PXA3xx || CONFIG_ARCH_MMP */
+
+#endif /* __ASM_PLAT_MFP_H */
diff --git a/arch/arm/mach-pxa/mfp-pxa2xx.c b/arch/arm/mach-pxa/mfp-pxa2xx.c
new file mode 100644
index 0000000..4f393c4
--- /dev/null
+++ b/arch/arm/mach-pxa/mfp-pxa2xx.c
@@ -0,0 +1,189 @@
+/*
+ *  linux/arch/arm/mach-pxa/mfp-pxa2xx.c
+ *
+ *  PXA2xx pin mux configuration support
+ *
+ *  The GPIOs on PXA2xx can be configured as one of many alternate
+ *  functions, this is by concept samilar to the MFP configuration
+ *  on PXA3xx,  what's more important, the low power pin state and
+ *  wakeup detection are also supported by the same framework.
+ *
+ *  This program is free software; you can redistribute it and/or modify
+ *  it under the terms of the GNU General Public License version 2 as
+ *  published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <init.h>
+
+#include <mach/gpio.h>
+#include <mach/hardware.h>
+#include <mach/mfp-pxa2xx.h>
+#include <mach/pxa-regs.h>
+
+#define PGSR(x)		__REG2(0x40F00020, (x) << 2)
+#define __GAFR(u, x)	__REG2((u) ? 0x40E00058 : 0x40E00054, (x) << 3)
+#define GAFR_L(x)	__GAFR(0, x)
+#define GAFR_U(x)	__GAFR(1, x)
+
+struct gpio_desc {
+	unsigned	valid:1;
+	unsigned	dir_inverted:1;
+	unsigned long	config;
+};
+
+static struct gpio_desc gpio_desc[MFP_PIN_GPIO127 + 1];
+
+static unsigned long gpdr_lpm[4];
+
+static int __mfp_config_gpio(unsigned gpio, unsigned long c)
+{
+	unsigned long gafr, mask = GPIO_bit(gpio);
+	int bank = gpio_to_bank(gpio);
+	int uorl = !!(gpio & 0x10); /* GAFRx_U or GAFRx_L ? */
+	int shft = (gpio & 0xf) << 1;
+	int fn = MFP_AF(c);
+	int is_out = (c & MFP_DIR_OUT) ? 1 : 0;
+
+	if (fn > 3)
+		return -EINVAL;
+
+	/* alternate function and direction at run-time */
+	gafr = (uorl == 0) ? GAFR_L(bank) : GAFR_U(bank);
+	gafr = (gafr & ~(0x3 << shft)) | (fn << shft);
+
+	if (uorl == 0)
+		GAFR_L(bank) = gafr;
+	else
+		GAFR_U(bank) = gafr;
+
+	if (is_out ^ gpio_desc[gpio].dir_inverted)
+		GPDR(gpio) |= mask;
+	else
+		GPDR(gpio) &= ~mask;
+
+	/* alternate function and direction at low power mode */
+	switch (c & MFP_LPM_STATE_MASK) {
+	case MFP_LPM_DRIVE_HIGH:
+		PGSR(bank) |= mask;
+		is_out = 1;
+		break;
+	case MFP_LPM_DRIVE_LOW:
+		PGSR(bank) &= ~mask;
+		is_out = 1;
+		break;
+	case MFP_LPM_DEFAULT:
+		break;
+	default:
+		/* warning and fall through, treat as MFP_LPM_DEFAULT */
+		pr_warning("%s: GPIO%d: unsupported low power mode\n",
+				__func__, gpio);
+		break;
+	}
+
+	if (is_out ^ gpio_desc[gpio].dir_inverted)
+		gpdr_lpm[bank] |= mask;
+	else
+		gpdr_lpm[bank] &= ~mask;
+
+	return 0;
+}
+
+static inline int __mfp_validate(int mfp)
+{
+	int gpio = mfp_to_gpio(mfp);
+
+	if ((mfp > MFP_PIN_GPIO127) || !gpio_desc[gpio].valid) {
+		pr_warning("%s: GPIO%d is invalid pin\n", __func__, gpio);
+		return -1;
+	}
+
+	return gpio;
+}
+
+void pxa2xx_mfp_config(unsigned long *mfp_cfgs, int num)
+{
+	unsigned long *c;
+	int i, gpio;
+
+	for (i = 0, c = mfp_cfgs; i < num; i++, c++) {
+
+		gpio = __mfp_validate(MFP_PIN(*c));
+		if (gpio < 0)
+			continue;
+
+		gpio_desc[gpio].config = *c;
+		__mfp_config_gpio(gpio, *c);
+	}
+}
+
+void pxa2xx_mfp_set_lpm(int mfp, unsigned long lpm)
+{
+	unsigned long c;
+	int gpio;
+
+	gpio = __mfp_validate(mfp);
+	if (gpio < 0)
+		return;
+
+	c = gpio_desc[gpio].config;
+	c = (c & ~MFP_LPM_STATE_MASK) | lpm;
+	__mfp_config_gpio(gpio, c);
+}
+
+static void __init pxa25x_mfp_init(void)
+{
+	int i;
+
+	for (i = 0; i <= pxa_last_gpio; i++)
+		gpio_desc[i].valid = 1;
+
+	/* PXA26x has additional 4 GPIOs (86/87/88/89) which has the
+	 * direction bit inverted in GPDR2. See PXA26x DM 4.1.1.
+	 */
+	for (i = 86; i <= pxa_last_gpio; i++)
+		gpio_desc[i].dir_inverted = 1;
+}
+
+static void __init pxa27x_mfp_init(void)
+{
+	int i;
+
+	for (i = 0; i <= pxa_last_gpio; i++) {
+		/*
+		 * skip GPIO2, 5, 6, 7, 8, they are not
+		 * valid pins allow configuration
+		 */
+		if (i == 2 || i == 5 || i == 6 || i == 7 || i == 8)
+			continue;
+
+		gpio_desc[i].valid = 1;
+	}
+}
+
+static int __init pxa2xx_mfp_init(void)
+{
+	int i;
+
+	if (!cpu_is_pxa2xx())
+		return 0;
+
+	if (cpu_is_pxa25x())
+		pxa25x_mfp_init();
+
+	if (cpu_is_pxa27x()) {
+		pxa_init_gpio(2, 120);
+		pxa27x_mfp_init();
+	}
+
+	/* clear RDH bit to enable GPIO receivers after reset/sleep exit */
+	PSSR = PSSR_RDH;
+
+	/* initialize gafr_run[], pgsr_lpm[] from existing values */
+	for (i = 0; i <= gpio_to_bank(pxa_last_gpio); i++)
+		gpdr_lpm[i] = GPDR(i * 32);
+
+	return 0;
+}
+postcore_initcall(pxa2xx_mfp_init);
diff --git a/arch/arm/mach-pxa/speed-pxa27x.c b/arch/arm/mach-pxa/speed-pxa27x.c
new file mode 100644
index 0000000..e8d147f
--- /dev/null
+++ b/arch/arm/mach-pxa/speed-pxa27x.c
@@ -0,0 +1,20 @@
+/*
+ * clock.h - implementation of the PXA clock functions
+ *
+ * Copyright (C) 2010 by Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+#include <common.h>
+#include <mach/clock.h>
+#include <mach/pxa-regs.h>
+
+/* Crystal clock: 13MHz */
+#define BASE_CLK	13000000
+
+unsigned long pxa_get_uartclk(void)
+{
+	return 14857000;
+}
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index c2bee79..592d543 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -92,4 +92,8 @@ config DRIVER_SERIAL_S3C24X0_AUTOSYNC
 	  Say Y here if you want to use the auto flow feature of this
 	  UART. RTS and CTS will be handled by the hardware when enabled.
 
+config DRIVER_SERIAL_PXA
+	bool "PXA serial driver"
+	depends on ARCH_PXA
+
 endmenu
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 411b8c5..a702125 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -18,3 +18,4 @@ obj-$(CONFIG_DRIVER_SERIAL_PL010)		+= serial_pl010.o
 obj-$(CONFIG_DRIVER_SERIAL_S3C24X0)		+= serial_s3c24x0.o
 obj-$(CONFIG_DRIVER_SERIAL_ALTERA)		+= serial_altera.o
 obj-$(CONFIG_DRIVER_SERIAL_ALTERA_JTAG)		+= serial_altera_jtag.o
+obj-$(CONFIG_DRIVER_SERIAL_PXA)			+= serial_pxa.o
diff --git a/drivers/serial/serial_pxa.c b/drivers/serial/serial_pxa.c
new file mode 100644
index 0000000..0766009
--- /dev/null
+++ b/drivers/serial/serial_pxa.c
@@ -0,0 +1,201 @@
+/*
+ * (c) 2009 Sascha Hauer <s.hauer@pengutronix.de>
+ *     2010 by Marc Kleine-Budde <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+
+#include <mach/clock.h>
+#include <asm/io.h>
+
+#define RBR		0x00	/* Receive Buffer Register (read only) */
+#define THR		0x00	/* Transmit Holding Register (write only) */
+#define IER		0x04	/* Interrupt Enable Register (read/write) */
+#define IIR		0x08	/* Interrupt ID Register (read only) */
+#define FCR		0x08	/* FIFO Control Register (write only) */
+#define LCR		0x0c	/* Line Control Register (read/write) */
+#define MCR		0x10	/* Modem Control Register (read/write) */
+#define LSR		0x14	/* Line Status Register (read only) */
+#define MSR		0x18	/* Modem Status Register (read only) */
+#define SPR		0x1c	/* Scratch Pad Register (read/write) */
+#define ISR		0x20	/* Infrared Selection Register (read/write) */
+#define DLL		0x00	/* Divisor Latch Low Register (DLAB = 1) (read/write) */
+#define DLH		0x04	/* Divisor Latch High Register (DLAB = 1) (read/write) */
+
+#define IER_DMAE	(1 << 7)	/* DMA Requests Enable */
+#define IER_UUE		(1 << 6)	/* UART Unit Enable */
+#define IER_NRZE	(1 << 5)	/* NRZ coding Enable */
+#define IER_RTIOE	(1 << 4)	/* Receiver Time Out Interrupt Enable */
+#define IER_MIE		(1 << 3)	/* Modem Interrupt Enable */
+#define IER_RLSE	(1 << 2)	/* Receiver Line Status Interrupt Enable */
+#define IER_TIE		(1 << 1)	/* Transmit Data request Interrupt Enable */
+#define IER_RAVIE	(1 << 0)	/* Receiver Data Available Interrupt Enable */
+
+#define IIR_FIFOES1	(1 << 7)	/* FIFO Mode Enable Status */
+#define IIR_FIFOES0	(1 << 6)	/* FIFO Mode Enable Status */
+#define IIR_TOD		(1 << 3)	/* Time Out Detected */
+#define IIR_IID2	(1 << 2)	/* Interrupt Source Encoded */
+#define IIR_IID1	(1 << 1)	/* Interrupt Source Encoded */
+#define IIR_IP		(1 << 0)	/* Interrupt Pending (active low) */
+
+#define FCR_ITL2	(1 << 7)	/* Interrupt Trigger Level */
+#define FCR_ITL1	(1 << 6)	/* Interrupt Trigger Level */
+#define FCR_RESETTF	(1 << 2)	/* Reset Transmitter FIFO */
+#define FCR_RESETRF	(1 << 1)	/* Reset Receiver FIFO */
+#define FCR_TRFIFOE	(1 << 0)	/* Transmit and Receive FIFO Enable */
+#define FCR_ITL_1	(0)
+#define FCR_ITL_8	(FCR_ITL1)
+#define FCR_ITL_16	(FCR_ITL2)
+#define FCR_ITL_32	(FCR_ITL2 | F CR_ITL1)
+
+#define LCR_DLAB	(1 << 7)	/* Divisor Latch Access Bit */
+#define LCR_SB		(1 << 6)	/* Set Break */
+#define LCR_STKYP	(1 << 5)	/* Sticky Parity */
+#define LCR_EPS		(1 << 4)	/* Even Parity Select */
+#define LCR_PEN		(1 << 3)	/* Parity Enable */
+#define LCR_STB		(1 << 2)	/* Stop Bit */
+#define LCR_WLS1	(1 << 1)	/* Word Length Select */
+#define LCR_WLS0	(1 << 0)	/* Word Length Select */
+#define LCR_WLEN8	(LCR_WLS1 | LCR_WLS0)
+					/* Wordlength: 8 bits */
+
+#define LSR_FIFOE	(1 << 7)	/* FIFO Error Status */
+#define LSR_TEMT	(1 << 6)	/* Transmitter Empty */
+#define LSR_TDRQ	(1 << 5)	/* Transmit Data Request */
+#define LSR_BI		(1 << 4)	/* Break Interrupt */
+#define LSR_FE		(1 << 3)	/* Framing Error */
+#define LSR_PE		(1 << 2)	/* Parity Error */
+#define LSR_OE		(1 << 1)	/* Overrun Error */
+#define LSR_DR		(1 << 0)	/* Data Ready */
+
+#define MCR_LOOP	(1 << 4)	/* */
+#define MCR_OUT2	(1 << 3)	/* force MSR_DCD in loopback mode */
+#define MCR_OUT1	(1 << 2)	/* force MSR_RI in loopback mode */
+#define MCR_RTS		(1 << 1)	/* Request to Send */
+#define MCR_DTR		(1 << 0)	/* Data Terminal Ready */
+
+#define MSR_DCD		(1 << 7)	/* Data Carrier Detect */
+#define MSR_RI		(1 << 6)	/* Ring Indicator */
+#define MSR_DSR		(1 << 5)	/* Data Set Ready */
+#define MSR_CTS		(1 << 4)	/* Clear To Send */
+#define MSR_DDCD	(1 << 3)	/* Delta Data Carrier Detect */
+#define MSR_TERI	(1 << 2)	/* Trailing Edge Ring Indicator */
+#define MSR_DDSR	(1 << 1)	/* Delta Data Set Ready */
+#define MSR_DCTS	(1 << 0)	/* Delta Clear To Send */
+
+struct pxa_serial_priv {
+	void __iomem *regs;
+	struct console_device cdev;
+};
+
+static void __iomem *to_regs(struct console_device *cdev)
+{
+	struct pxa_serial_priv *priv =
+		container_of(cdev, struct pxa_serial_priv, cdev);
+	return priv->regs;
+}
+
+static void pxa_serial_putc(struct console_device *cdev, char c)
+{
+	while (!(readl(to_regs(cdev) + LSR) & LSR_TEMT));
+
+	writel(c, to_regs(cdev) + THR);
+}
+
+static int pxa_serial_tstc(struct console_device *cdev)
+{
+	return readl(to_regs(cdev) + LSR) & LSR_DR;
+}
+
+static int pxa_serial_getc(struct console_device *cdev)
+{
+	while (!(readl(to_regs(cdev) + LSR) & LSR_DR));
+
+	return readl(to_regs(cdev) + RBR) & 0xff;
+}
+
+static void pxa_serial_flush(struct console_device *cdev)
+{
+}
+
+static int pxa_serial_setbaudrate(struct console_device *cdev, int baudrate)
+{
+	unsigned char cval = LCR_WLEN8;			/* 8N1 */
+	unsigned int quot;
+
+	/* enable uart */
+	writel(IER_UUE, to_regs(cdev) + IER);
+
+	/* write divisor */
+	quot = (pxa_get_uartclk() + (8 * baudrate)) / (16 * baudrate);
+
+	writel(cval | LCR_DLAB, to_regs(cdev) + LCR);	/* set DLAB */
+	writel(quot & 0xff, to_regs(cdev) + DLL);
+	/*
+	 * work around Errata #75 according to Intel(R) PXA27x
+	 * Processor Family Specification Update (Nov 2005)
+	 */
+	readl(to_regs(cdev) + DLL);
+	writel(quot >> 8, to_regs(cdev) + DLH);
+	writel(cval, to_regs(cdev) + LCR);		/* reset DLAB */
+
+	/* enable fifos */
+	writel(FCR_TRFIFOE, to_regs(cdev) + FCR);
+
+	return 0;
+}
+
+static int pxa_serial_probe(struct device_d *dev)
+{
+	struct console_device *cdev;
+	struct pxa_serial_priv *priv;
+
+	priv = malloc(sizeof(*priv));
+	cdev = &priv->cdev;
+	priv->regs = dev_request_mem_region(dev, 0);
+
+	dev->type_data = cdev;
+	cdev->dev = dev;
+	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
+	cdev->tstc = pxa_serial_tstc;
+	cdev->putc = pxa_serial_putc;
+	cdev->getc = pxa_serial_getc;
+	cdev->flush = pxa_serial_flush;
+	cdev->setbrg = pxa_serial_setbaudrate;
+
+	console_register(cdev);
+
+	return 0;
+}
+
+static void pxa_serial_remove(struct device_d *dev)
+{
+	free(dev->type_data);
+}
+
+static struct driver_d pxa_serial_driver = {
+	.name = "pxa_serial",
+	.probe = pxa_serial_probe,
+	.remove = pxa_serial_remove,
+};
+
+static int pxa_serial_init(void)
+{
+	return register_driver(&pxa_serial_driver);
+}
+
+console_initcall(pxa_serial_init);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
