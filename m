Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f169.google.com ([209.85.212.169])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLLUY-00048o-2y
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 22:08:05 +0000
Received: by mail-wi0-f169.google.com with SMTP id hq4so3581900wib.0
 for <barebox@lists.infradead.org>; Mon, 08 Oct 2012 15:07:59 -0700 (PDT)
From: Carlo Caione <carlo.caione@gmail.com>
Date: Tue,  9 Oct 2012 00:07:38 +0200
Message-Id: <1349734061-32339-3-git-send-email-carlo.caione@gmail.com>
In-Reply-To: <1349734061-32339-1-git-send-email-carlo.caione@gmail.com>
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
Subject: [PATCH 2/5] Add support for BCM2835
References: <1349734061-32339-1-git-send-email-carlo.caione@gmail.com>
To: barebox@lists.infradead.org

Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
---
 arch/arm/Kconfig                              |   7 ++
 arch/arm/Makefile                             |   1 +
 arch/arm/mach-bcm2835/Makefile                |   2 +
 arch/arm/mach-bcm2835/clock.c                 |  48 ++++++++++++
 arch/arm/mach-bcm2835/core.c                  | 102 ++++++++++++++++++++++++++
 arch/arm/mach-bcm2835/include/mach/clkdev.h   |   7 ++
 arch/arm/mach-bcm2835/include/mach/clock.h    |   8 ++
 arch/arm/mach-bcm2835/include/mach/core.h     |  27 +++++++
 arch/arm/mach-bcm2835/include/mach/gpio.h     |   1 +
 arch/arm/mach-bcm2835/include/mach/platform.h |  53 +++++++++++++
 arch/arm/mach-bcm2835/include/mach/wd.h       |  50 +++++++++++++
 11 files changed, 306 insertions(+)
 create mode 100644 arch/arm/mach-bcm2835/Makefile
 create mode 100644 arch/arm/mach-bcm2835/clock.c
 create mode 100644 arch/arm/mach-bcm2835/core.c
 create mode 100644 arch/arm/mach-bcm2835/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/clock.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/core.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/gpio.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/platform.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/wd.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 1e45ebf..5815ec8 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -31,6 +31,12 @@ config ARCH_AT91
 	select HAS_DEBUG_LL
 	select HAVE_MACH_ARM_HEAD
 
+config ARCH_BCM2835
+	bool "Broadcom BCM2835 boards"
+	select GPIOLIB
+	select CPU_ARM1176
+    select CLOCKSOURCE_BCM2835
+
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
 	select CPU_ARM920T
@@ -101,6 +107,7 @@ endchoice
 
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
@@ -52,6 +52,7 @@ AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
 # Machine directory name.  This list is sorted alphanumerically
 # by CONFIG_* macro name.
 machine-$(CONFIG_ARCH_AT91)		:= at91
+machine-$(CONFIG_ARCH_BCM2835)		:= bcm2835
 machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
 machine-$(CONFIG_ARCH_IMX)		:= imx
 machine-$(CONFIG_ARCH_MXS)		:= mxs
diff --git a/arch/arm/mach-bcm2835/Makefile b/arch/arm/mach-bcm2835/Makefile
new file mode 100644
index 0000000..f0aa2e0
--- /dev/null
+++ b/arch/arm/mach-bcm2835/Makefile
@@ -0,0 +1,2 @@
+obj-y += core.o
+obj-y += clock.o
\ No newline at end of file
diff --git a/arch/arm/mach-bcm2835/clock.c b/arch/arm/mach-bcm2835/clock.c
new file mode 100644
index 0000000..2eb2b6c
--- /dev/null
+++ b/arch/arm/mach-bcm2835/clock.c
@@ -0,0 +1,48 @@
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
diff --git a/arch/arm/mach-bcm2835/core.c b/arch/arm/mach-bcm2835/core.c
new file mode 100644
index 0000000..de5085d
--- /dev/null
+++ b/arch/arm/mach-bcm2835/core.c
@@ -0,0 +1,102 @@
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
+#include <mach/wd.h>
+#include <mach/core.h>
+#include <mach/clock.h>
+#include <linux/amba/bus.h>
+
+static struct clk ref_3_clk = {
+	.rate = 3 * 1000 * 1000,
+};
+
+static struct clk ref_1_clk = {
+	.rate = 1 * 1000 * 1000,
+};
+
+static struct clk bcm2835_dummy;
+
+void bcm2835_add_device_sdram(u32 size)
+{
+	arm_add_mem_device("ram0", BCM2835_SDRAM_BASE, size);
+}
+
+static struct clk_lookup clocks_lookups[] = {
+	CLKDEV_CON_ID("apb_pclk", &bcm2835_dummy),
+	CLKDEV_DEV_ID("bcm2835-cs", &ref_1_clk),
+	CLKDEV_DEV_ID("uart0-pl0110", &ref_3_clk),
+};
+
+static int bcm2835_gpio_init(void)
+{
+	add_generic_device("bcm2835-gpio", 0, NULL, BCM2835_GPIO_BASE, 0xB0, IORESOURCE_MEM, NULL);
+	return 0;
+}
+coredevice_initcall(bcm2835_gpio_init);
+
+static int bcm2835_clkdev_init(void)
+{
+	clkdev_add_table(clocks_lookups, ARRAY_SIZE(clocks_lookups));
+	return 0;
+}
+postcore_initcall(bcm2835_clkdev_init);
+
+static int bcm2835_clocksource_init(void)
+{
+	add_generic_device("bcm2835-cs", DEVICE_ID_SINGLE, NULL, BCM2835_ST_BASE, 0x1C, IORESOURCE_MEM, NULL);
+	return 0;
+}
+coredevice_initcall(bcm2835_clocksource_init);
+
+void bcm2835_register_uart(void)
+{
+	amba_apb_device_add(NULL, "uart0-pl011", 0, BCM2835_UART0_BASE, 4096, NULL, 0);
+}
+
+#define RESET_TIMEOUT 10
+
+void __noreturn reset_cpu (unsigned long addr)
+{
+	uint32_t rstc;
+
+	rstc = readl(PM_RSTC);
+	rstc &= ~PM_RSTC_WRCFG_SET;
+	rstc |= PM_RSTC_WRCFG_FULL_RESET;
+	writel(PM_PASSWORD | RESET_TIMEOUT, PM_WDOG);
+	writel(PM_PASSWORD | rstc, PM_RSTC);
+}
+EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-bcm2835/include/mach/clkdev.h b/arch/arm/mach-bcm2835/include/mach/clkdev.h
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
diff --git a/arch/arm/mach-bcm2835/include/mach/clock.h b/arch/arm/mach-bcm2835/include/mach/clock.h
new file mode 100644
index 0000000..0550bf1
--- /dev/null
+++ b/arch/arm/mach-bcm2835/include/mach/clock.h
@@ -0,0 +1,8 @@
+#ifndef _BCM2835_CLOCK_H
+#define _BCM2835_CLOCK_H
+
+struct clk {
+	unsigned long rate;
+};
+
+#endif
diff --git a/arch/arm/mach-bcm2835/include/mach/core.h b/arch/arm/mach-bcm2835/include/mach/core.h
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
diff --git a/arch/arm/mach-bcm2835/include/mach/gpio.h b/arch/arm/mach-bcm2835/include/mach/gpio.h
new file mode 100644
index 0000000..306ab4c
--- /dev/null
+++ b/arch/arm/mach-bcm2835/include/mach/gpio.h
@@ -0,0 +1 @@
+#include <asm-generic/gpio.h>
diff --git a/arch/arm/mach-bcm2835/include/mach/platform.h b/arch/arm/mach-bcm2835/include/mach/platform.h
new file mode 100644
index 0000000..12d9cc6
--- /dev/null
+++ b/arch/arm/mach-bcm2835/include/mach/platform.h
@@ -0,0 +1,53 @@
+/*
+ * Extract from arch/arm/mach-bcm2708/include/mach/platform.h
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
+#ifndef _BCM2835_PLATFORM_H
+#define _BCM2835_PLATFORM_H
+
+/*
+ *  SDRAM
+ */
+#define BCM2835_SDRAM_BASE	0x00000000
+
+/*
+ * Definitions and addresses for the ARM CONTROL logic
+ * This file is manually generated.
+ */
+
+#define BCM2835_PERI_BASE	0x20000000
+#define BCM2835_ST_BASE		(BCM2835_PERI_BASE + 0x3000)   /* System Timer */
+#define BCM2835_DMA_BASE	(BCM2835_PERI_BASE + 0x7000)	/* DMA controller */
+#define BCM2835_ARM_BASE	(BCM2835_PERI_BASE + 0xB000)	 /* BCM2708 ARM control block */
+#define BCM2835_PM_BASE		(BCM2835_PERI_BASE + 0x100000) /* Power Management, Reset controller and Watchdog registers */
+#define BCM2835_GPIO_BASE	(BCM2835_PERI_BASE + 0x200000) /* GPIO */
+#define BCM2835_UART0_BASE	(BCM2835_PERI_BASE + 0x201000)	/* Uart 0 */
+#define BCM2835_MMCI0_BASE	(BCM2835_PERI_BASE + 0x202000) /* MMC interface */
+#define BCM2835_SPI0_BASE	(BCM2835_PERI_BASE + 0x204000) /* SPI0 */
+#define BCM2835_BSC0_BASE	(BCM2835_PERI_BASE + 0x205000) /* BSC0 I2C/TWI */
+#define BCM2835_UART1_BASE	(BCM2835_PERI_BASE + 0x215000) /* Uart 1 */
+#define BCM2835_EMMC_BASE	(BCM2835_PERI_BASE + 0x300000) /* eMMC interface */
+#define BCM2835_SMI_BASE	(BCM2835_PERI_BASE + 0x600000) /* SMI */
+#define BCM2835_BSC1_BASE	(BCM2835_PERI_BASE + 0x804000) /* BSC1 I2C/TWI */
+#define BCM2835_USB_BASE	(BCM2835_PERI_BASE + 0x980000) /* DTC_OTG USB controller */
+#define BCM2835_MCORE_BASE	(BCM2835_PERI_BASE + 0x0000)   /* Fake frame buffer device (actually the multicore sync block*/
+
+#endif
+
+/* END */
diff --git a/arch/arm/mach-bcm2835/include/mach/wd.h b/arch/arm/mach-bcm2835/include/mach/wd.h
new file mode 100644
index 0000000..8046734
--- /dev/null
+++ b/arch/arm/mach-bcm2835/include/mach/wd.h
@@ -0,0 +1,50 @@
+/*
+ * Extract from arch/arm/mach-bcm2708/include/mach/platform.h
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
+#ifndef _WD_H
+#define _WD_H
+
+/*
+ * Watchdog
+ */
+#define PM_RSTC		(BCM2835_PM_BASE+0x1c)
+#define PM_RSTS		(BCM2835_PM_BASE+0x20)
+#define PM_WDOG		(BCM2835_PM_BASE+0x24)
+
+#define PM_WDOG_RESET				0000000000
+#define PM_PASSWORD				0x5a000000
+#define PM_WDOG_TIME_SET			0x000fffff
+#define PM_RSTC_WRCFG_CLR			0xffffffcf
+#define PM_RSTC_WRCFG_SET			0x00000030
+#define PM_RSTC_WRCFG_FULL_RESET		0x00000020
+#define PM_RSTC_RESET				0x00000102
+
+#define PM_RSTS_HADPOR_SET			0x00001000
+#define PM_RSTS_HADSRH_SET			0x00000400
+#define PM_RSTS_HADSRF_SET			0x00000200
+#define PM_RSTS_HADSRQ_SET			0x00000100
+#define PM_RSTS_HADWRH_SET			0x00000040
+#define PM_RSTS_HADWRF_SET			0x00000020
+#define PM_RSTS_HADWRQ_SET			0x00000010
+#define PM_RSTS_HADDRH_SET			0x00000004
+#define PM_RSTS_HADDRF_SET			0x00000002
+#define PM_RSTS_HADDRQ_SET			0x00000001
+
+#endif
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
