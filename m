Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOvze-0002f6-5O
 for barebox@lists.infradead.org; Thu, 18 Oct 2012 19:43:00 +0000
Received: by mail-wi0-f171.google.com with SMTP id hj13so1946881wib.0
 for <barebox@lists.infradead.org>; Thu, 18 Oct 2012 12:42:57 -0700 (PDT)
From: Carlo Caione <carlo.caione@gmail.com>
Date: Thu, 18 Oct 2012 21:42:42 +0200
Message-Id: <1350589363-82697-5-git-send-email-carlo.caione@gmail.com>
In-Reply-To: <1350589363-82697-1-git-send-email-carlo.caione@gmail.com>
References: <1350589363-82697-1-git-send-email-carlo.caione@gmail.com>
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
Subject: [PATCH 4/5] BCM2835: add support (arch)
To: barebox@lists.infradead.org

Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
---
 arch/arm/Kconfig                              |  10 +++
 arch/arm/Makefile                             |   1 +
 arch/arm/mach-bcm2835/Kconfig                 |   3 +
 arch/arm/mach-bcm2835/Makefile                |   1 +
 arch/arm/mach-bcm2835/core.c                  | 101 ++++++++++++++++++++++++++
 arch/arm/mach-bcm2835/include/mach/clkdev.h   |   7 ++
 arch/arm/mach-bcm2835/include/mach/core.h     |  22 ++++++
 arch/arm/mach-bcm2835/include/mach/gpio.h     |   1 +
 arch/arm/mach-bcm2835/include/mach/platform.h |  50 +++++++++++++
 arch/arm/mach-bcm2835/include/mach/wd.h       |  47 ++++++++++++
 10 files changed, 243 insertions(+)
 create mode 100644 arch/arm/mach-bcm2835/Kconfig
 create mode 100644 arch/arm/mach-bcm2835/Makefile
 create mode 100644 arch/arm/mach-bcm2835/core.c
 create mode 100644 arch/arm/mach-bcm2835/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/core.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/gpio.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/platform.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/wd.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 69a6e57..2e2a8ff 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -31,6 +31,15 @@ config ARCH_AT91
 	select HAS_DEBUG_LL
 	select HAVE_MACH_ARM_HEAD
 
+config ARCH_BCM2835
+	bool "Broadcom BCM2835 boards"
+	select GPIOLIB
+	select CPU_ARM1176
+	select CLKDEV_LOOKUP
+	select COMMON_CLK
+	select CLOCKSOURCE_BCM2835
+	select ARM_AMBA
+
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
 	select CPU_ARM920T
@@ -100,6 +109,7 @@ endchoice
 
 source arch/arm/cpu/Kconfig
 source arch/arm/mach-at91/Kconfig
+source arch/arm/mach-bcm2835/Kconfig
 source arch/arm/mach-ep93xx/Kconfig
 source arch/arm/mach-imx/Kconfig
 source arch/arm/mach-mxs/Kconfig
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index de570d7..3449fd7 100644
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
diff --git a/arch/arm/mach-bcm2835/Kconfig b/arch/arm/mach-bcm2835/Kconfig
new file mode 100644
index 0000000..c42fe1c
--- /dev/null
+++ b/arch/arm/mach-bcm2835/Kconfig
@@ -0,0 +1,3 @@
+if ARCH_BCM2835
+
+endif
diff --git a/arch/arm/mach-bcm2835/Makefile b/arch/arm/mach-bcm2835/Makefile
new file mode 100644
index 0000000..820eb10
--- /dev/null
+++ b/arch/arm/mach-bcm2835/Makefile
@@ -0,0 +1 @@
+obj-y += core.o
diff --git a/arch/arm/mach-bcm2835/core.c b/arch/arm/mach-bcm2835/core.c
new file mode 100644
index 0000000..b0fec8b
--- /dev/null
+++ b/arch/arm/mach-bcm2835/core.c
@@ -0,0 +1,101 @@
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
+ */
+
+#include <common.h>
+#include <init.h>
+
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+
+#include <io.h>
+#include <asm/armlinux.h>
+#include <sizes.h>
+
+#include <mach/platform.h>
+#include <mach/wd.h>
+#include <mach/core.h>
+#include <linux/amba/bus.h>
+
+enum brcm_clks {
+	dummy, clk_ref_3, clk_ref_1, clks_max
+};
+
+static struct clk *clks[clks_max];
+
+static int bcm2835_clk_init(void)
+{
+	int ret;
+
+	clks[dummy] = clk_fixed("dummy", 0);
+	clks[clk_ref_3] = clk_fixed("ref3", 3 * 1000 * 1000);
+	clks[clk_ref_1] = clk_fixed("ref1", 1 * 1000 * 1000);
+
+	ret = clk_register_clkdev(clks[dummy], "apb_pclk", NULL);
+	if (ret)
+		goto clk_err;
+
+	ret = clk_register_clkdev(clks[clk_ref_3], NULL, "uart0-pl0110");
+	if (ret)
+		goto clk_err;
+
+	ret = clk_register_clkdev(clks[clk_ref_1], NULL, "bcm2835-cs");
+	if (ret)
+		goto clk_err;
+
+	return 0;
+
+clk_err:
+	return ret;
+
+}
+postcore_initcall(bcm2835_clk_init);
+
+static int bcm2835_dev_init(void)
+{
+	add_generic_device("bcm2835-gpio", 0, NULL, BCM2835_GPIO_BASE, 0xB0, IORESOURCE_MEM, NULL);
+	add_generic_device("bcm2835-cs", DEVICE_ID_SINGLE, NULL, BCM2835_ST_BASE, 0x1C, IORESOURCE_MEM, NULL);
+	return 0;
+}
+coredevice_initcall(bcm2835_dev_init);
+
+void bcm2835_register_uart(void)
+{
+	amba_apb_device_add(NULL, "uart0-pl011", 0, BCM2835_UART0_BASE, 4096, NULL, 0);
+}
+
+void bcm2835_add_device_sdram(u32 size)
+{
+	if (!size)
+		size = get_ram_size((ulong *) BCM2835_SDRAM_BASE, SZ_128M);
+
+	arm_add_mem_device("ram0", BCM2835_SDRAM_BASE, size);
+}
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
diff --git a/arch/arm/mach-bcm2835/include/mach/core.h b/arch/arm/mach-bcm2835/include/mach/core.h
new file mode 100644
index 0000000..9379af2
--- /dev/null
+++ b/arch/arm/mach-bcm2835/include/mach/core.h
@@ -0,0 +1,22 @@
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
index 0000000..e55085a
--- /dev/null
+++ b/arch/arm/mach-bcm2835/include/mach/platform.h
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
+#define BCM2835_ST_BASE		(BCM2835_PERI_BASE + 0x3000)	/* System Timer */
+#define BCM2835_DMA_BASE	(BCM2835_PERI_BASE + 0x7000)	/* DMA controller */
+#define BCM2835_ARM_BASE	(BCM2835_PERI_BASE + 0xB000)	/* BCM2708 ARM control block */
+#define BCM2835_PM_BASE		(BCM2835_PERI_BASE + 0x100000)	/* Power Management, Reset controller and Watchdog registers */
+#define BCM2835_GPIO_BASE	(BCM2835_PERI_BASE + 0x200000)	/* GPIO */
+#define BCM2835_UART0_BASE	(BCM2835_PERI_BASE + 0x201000)	/* Uart 0 */
+#define BCM2835_MMCI0_BASE	(BCM2835_PERI_BASE + 0x202000)	/* MMC interface */
+#define BCM2835_SPI0_BASE	(BCM2835_PERI_BASE + 0x204000)	/* SPI0 */
+#define BCM2835_BSC0_BASE	(BCM2835_PERI_BASE + 0x205000)	/* BSC0 I2C/TWI */
+#define BCM2835_UART1_BASE	(BCM2835_PERI_BASE + 0x215000)	/* Uart 1 */
+#define BCM2835_EMMC_BASE	(BCM2835_PERI_BASE + 0x300000)	/* eMMC interface */
+#define BCM2835_SMI_BASE	(BCM2835_PERI_BASE + 0x600000)	/* SMI */
+#define BCM2835_BSC1_BASE	(BCM2835_PERI_BASE + 0x804000)	/* BSC1 I2C/TWI */
+#define BCM2835_USB_BASE	(BCM2835_PERI_BASE + 0x980000)	/* DTC_OTG USB controller */
+#define BCM2835_MCORE_BASE	(BCM2835_PERI_BASE + 0x0000)	/* Fake frame buffer device (actually the multicore sync block*/
+
+#endif
+
+/* END */
diff --git a/arch/arm/mach-bcm2835/include/mach/wd.h b/arch/arm/mach-bcm2835/include/mach/wd.h
new file mode 100644
index 0000000..ad8b762
--- /dev/null
+++ b/arch/arm/mach-bcm2835/include/mach/wd.h
@@ -0,0 +1,47 @@
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
1.7.12.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
