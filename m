Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ogakx-0000VX-Ab
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 09:59:31 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed,  4 Aug 2010 11:59:08 +0200
Message-Id: <1280915957-2910-5-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1280915957-2910-1-git-send-email-m.grzeschik@pengutronix.de>
References: <1280915957-2910-1-git-send-email-m.grzeschik@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0943444911=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/13] arm omap: Add gpio support
To: barebox@lists.infradead.org

--===============0943444911==
Content-Type: text/plain

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig             |   15 ++-
 arch/arm/mach-omap/Makefile            |    1 +
 arch/arm/mach-omap/gpio.c              |  206 ++++++++++++++++++++++++++++++++
 arch/arm/mach-omap/include/mach/gpio.h |   92 ++++++++++++++
 4 files changed, 311 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/mach-omap/gpio.c
 create mode 100644 arch/arm/mach-omap/include/mach/gpio.h

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 158639e..630405b 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -78,9 +78,18 @@ config GPMC
 	depends on  (ARCH_OMAP2 || ARCH_OMAP3)
 	default y
 	help
-	 Enable this if you use Texas Instrument's General purpose Memory
-	 Controller(GPMC). GPMC allows you to configure devices such as NOR,
-	 NAND, OneNAND etc.
+	  Enable this if you use Texas Instrument's General purpose Memory
+	  Controller(GPMC). GPMC allows you to configure devices such as NOR,
+	  NAND, OneNAND etc.
+
+config GPIO
+	prompt "Support for GPIO configuration"
+	bool
+	select GENERIC_GPIO
+	depends on  (ARCH_OMAP2 || ARCH_OMAP3)
+	default y
+	help
+	  Enable this if you use Texas Instrument's General Purpose IO
 
 # Get the board specific configurations
 source arch/arm/boards/omap/Kconfig
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index f672dce..57bab99 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -24,3 +24,4 @@ obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o
 obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock_core.o omap3_clock.o
 obj-$(CONFIG_GPMC) += gpmc.o
+obj-$(CONFIG_GPIO) += gpio.o
diff --git a/arch/arm/mach-omap/gpio.c b/arch/arm/mach-omap/gpio.c
new file mode 100644
index 0000000..240ac8e
--- /dev/null
+++ b/arch/arm/mach-omap/gpio.c
@@ -0,0 +1,206 @@
+/*
+ * Copyright (c) 2009 Wind River Systems, Inc.
+ * Tom Rix <Tom.Rix@windriver.com>
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
+ * This work is derived from the linux 2.6.27 kernel source
+ * To fetch, use the kernel repository
+ * git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux-2.6.git
+ * Use the v2.6.27 tag.
+ *
+ * Below is the original's header including its copyright
+ *
+ *  linux/arch/arm/plat-omap/gpio.c
+ *
+ * Support functions for OMAP GPIO
+ *
+ * Copyright (C) 2003-2005 Nokia Corporation
+ * Written by Juha Yrj��l�� <juha.yrjola@nokia.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+#include <common.h>
+#include <mach/gpio.h>
+#include <asm/io.h>
+#include <errno.h>
+
+static struct gpio_bank gpio_bank_34xx[6] = {
+	{ (void *)OMAP34XX_GPIO1_BASE, METHOD_GPIO_24XX },
+	{ (void *)OMAP34XX_GPIO2_BASE, METHOD_GPIO_24XX },
+	{ (void *)OMAP34XX_GPIO3_BASE, METHOD_GPIO_24XX },
+	{ (void *)OMAP34XX_GPIO4_BASE, METHOD_GPIO_24XX },
+	{ (void *)OMAP34XX_GPIO5_BASE, METHOD_GPIO_24XX },
+	{ (void *)OMAP34XX_GPIO6_BASE, METHOD_GPIO_24XX },
+};
+
+static struct gpio_bank *gpio_bank = &gpio_bank_34xx[0];
+
+static inline struct gpio_bank *get_gpio_bank(int gpio)
+{
+	return &gpio_bank[gpio >> 5];
+}
+
+static inline int get_gpio_index(int gpio)
+{
+	return gpio & 0x1f;
+}
+
+static inline int gpio_valid(int gpio)
+{
+	if (gpio < 0)
+		return -1;
+	if (gpio < 192)
+		return 0;
+	return -1;
+}
+
+static int check_gpio(int gpio)
+{
+	if (gpio_valid(gpio) < 0) {
+		printf("ERROR : check_gpio: invalid GPIO %d\n", gpio);
+		return -1;
+	}
+	return 0;
+}
+
+void gpio_set_value(unsigned gpio, int value)
+{
+	struct gpio_bank *bank;
+	void *reg;
+	u32 l = 0;
+
+	if (check_gpio(gpio) < 0)
+		return;
+	bank = get_gpio_bank(gpio);
+	reg = bank->base;
+
+	switch (bank->method) {
+	case METHOD_GPIO_24XX:
+		if (value)
+			reg += OMAP24XX_GPIO_SETDATAOUT;
+		else
+			reg += OMAP24XX_GPIO_CLEARDATAOUT;
+		l = 1 << get_gpio_index(gpio);
+		break;
+	default:
+		printf("omap3-gpio unknown bank method %s %d\n",
+		       __FILE__, __LINE__);
+		return;
+	}
+	__raw_writel(l, reg);
+}
+
+int gpio_direction_input(unsigned gpio)
+{
+	struct gpio_bank *bank;
+	void *reg;
+	u32 val;
+
+	if (check_gpio(gpio) < 0)
+		return -EINVAL;
+	bank = get_gpio_bank(gpio);
+
+	reg = bank->base;
+
+	switch (bank->method) {
+	case METHOD_GPIO_24XX:
+		reg += OMAP24XX_GPIO_OE;
+		break;
+	default:
+		return -EINVAL;
+	}
+	val = __raw_readl(reg);
+	val |= 1 << get_gpio_index(gpio);
+	__raw_writel(val, reg);
+
+	return 0;
+}
+
+int gpio_direction_output(unsigned gpio, int value)
+{
+	struct gpio_bank *bank;
+	void *reg;
+	u32 val;
+
+	if (check_gpio(gpio) < 0)
+		return -EINVAL;
+	bank = get_gpio_bank(gpio);
+
+	reg = bank->base;
+
+	gpio_set_value(gpio, value);
+
+	switch (bank->method) {
+	case METHOD_GPIO_24XX:
+		reg += OMAP24XX_GPIO_OE;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	val = __raw_readl(reg);
+	val &= ~(1 << get_gpio_index(gpio));
+	__raw_writel(val, reg);
+
+	return 0;
+}
+
+int gpio_get_value(unsigned gpio)
+{
+	struct gpio_bank *bank;
+	void *reg;
+
+	if (check_gpio(gpio) < 0)
+		return -EINVAL;
+	bank = get_gpio_bank(gpio);
+	reg = bank->base;
+	switch (bank->method) {
+	case METHOD_GPIO_24XX:
+		reg += OMAP24XX_GPIO_DATAIN;
+		break;
+	default:
+		return -EINVAL;
+	}
+	return (__raw_readl(reg)
+			& (1 << get_gpio_index(gpio))) != 0;
+}
+
+static void _reset_gpio(int gpio)
+{
+	gpio_direction_input(gpio);
+}
+
+int omap_request_gpio(int gpio)
+{
+	if (check_gpio(gpio) < 0)
+		return -EINVAL;
+
+	return 0;
+}
+
+void omap_free_gpio(int gpio)
+{
+	struct gpio_bank *bank;
+
+	if (check_gpio(gpio) < 0)
+		return;
+	bank = get_gpio_bank(gpio);
+
+	_reset_gpio(gpio);
+}
diff --git a/arch/arm/mach-omap/include/mach/gpio.h b/arch/arm/mach-omap/include/mach/gpio.h
new file mode 100644
index 0000000..9840b6e
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/gpio.h
@@ -0,0 +1,92 @@
+/*
+ * Copyright (c) 2009 Wind River Systems, Inc.
+ * Tom Rix <Tom.Rix@windriver.com>
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
+ * This work is derived from the linux 2.6.27 kernel source
+ * To fetch, use the kernel repository
+ * git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux-2.6.git
+ * Use the v2.6.27 tag.
+ *
+ * Below is the original's header including its copyright
+ *
+ *  linux/arch/arm/plat-omap/gpio.c
+ *
+ * Support functions for OMAP GPIO
+ *
+ * Copyright (C) 2003-2005 Nokia Corporation
+ * Written by Juha Yrj��l�� <juha.yrjola@nokia.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+#ifndef _GPIO_H
+#define _GPIO_H
+
+#define OMAP24XX_GPIO_REVISION		0x0000
+#define OMAP24XX_GPIO_SYSCONFIG		0x0010
+#define OMAP24XX_GPIO_SYSSTATUS		0x0014
+#define OMAP24XX_GPIO_IRQSTATUS1	0x0018
+#define OMAP24XX_GPIO_IRQSTATUS2	0x0028
+#define OMAP24XX_GPIO_IRQENABLE2	0x002c
+#define OMAP24XX_GPIO_IRQENABLE1	0x001c
+#define OMAP24XX_GPIO_WAKE_EN		0x0020
+#define OMAP24XX_GPIO_CTRL		0x0030
+#define OMAP24XX_GPIO_OE		0x0034
+#define OMAP24XX_GPIO_DATAIN		0x0038
+#define OMAP24XX_GPIO_DATAOUT		0x003c
+#define OMAP24XX_GPIO_LEVELDETECT0	0x0040
+#define OMAP24XX_GPIO_LEVELDETECT1	0x0044
+#define OMAP24XX_GPIO_RISINGDETECT	0x0048
+#define OMAP24XX_GPIO_FALLINGDETECT	0x004c
+#define OMAP24XX_GPIO_DEBOUNCE_EN	0x0050
+#define OMAP24XX_GPIO_DEBOUNCE_VAL	0x0054
+#define OMAP24XX_GPIO_CLEARIRQENABLE1	0x0060
+#define OMAP24XX_GPIO_SETIRQENABLE1	0x0064
+#define OMAP24XX_GPIO_CLEARWKUENA	0x0080
+#define OMAP24XX_GPIO_SETWKUENA		0x0084
+#define OMAP24XX_GPIO_CLEARDATAOUT	0x0090
+#define OMAP24XX_GPIO_SETDATAOUT	0x0094
+
+struct gpio_bank {
+	void *base;
+	int method;
+};
+
+/* OMAP3 GPIO registers */
+#define OMAP34XX_GPIO1_BASE		0x48310000
+#define OMAP34XX_GPIO2_BASE		0x49050000
+#define OMAP34XX_GPIO3_BASE		0x49052000
+#define OMAP34XX_GPIO4_BASE		0x49054000
+#define OMAP34XX_GPIO5_BASE		0x49056000
+#define OMAP34XX_GPIO6_BASE		0x49058000
+
+#define METHOD_GPIO_24XX	4
+
+/* This is the interface */
+
+/* Request a gpio before using it */
+int omap_request_gpio(int gpio);
+/* Reset and free a gpio after using it */
+void omap_free_gpio(int gpio);
+void gpio_set_value(unsigned gpio, int value);
+int gpio_get_value(unsigned gpio);
+int gpio_direction_output(unsigned gpio, int value);
+int gpio_direction_input(unsigned gpio);
+
+#endif /* _GPIO_H_ */
-- 
1.7.1



--===============0943444911==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0943444911==--
