Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UaNXN-0002Dz-Me
 for barebox@lists.infradead.org; Thu, 09 May 2013 09:53:26 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Thu,  9 May 2013 11:52:47 +0200
Message-Id: <1368093171-17845-4-git-send-email-thomas.petazzoni@free-electrons.com>
In-Reply-To: <1368093171-17845-1-git-send-email-thomas.petazzoni@free-electrons.com>
References: <1368093171-17845-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCH v3 3/7] arm: initial support for Marvell Armada 370/XP SoCs
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Lior Amsalem <alior@marvell.com>, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

This commit adds minimal support for the Armada 370 and Armada XP SoCs
from Marvell.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/Kconfig                            |    8 ++
 arch/arm/Makefile                           |    1 +
 arch/arm/mach-mvebu/Kconfig                 |   40 ++++++++
 arch/arm/mach-mvebu/Makefile                |    1 +
 arch/arm/mach-mvebu/core.c                  |  142 +++++++++++++++++++++++++++
 arch/arm/mach-mvebu/include/mach/clkdev.h   |    7 ++
 arch/arm/mach-mvebu/include/mach/debug_ll.h |   40 ++++++++
 arch/arm/mach-mvebu/include/mach/mvebu.h    |   22 +++++
 drivers/clocksource/Kconfig                 |    4 +
 drivers/clocksource/Makefile                |    1 +
 drivers/clocksource/mvebu.c                 |   90 +++++++++++++++++
 11 files changed, 356 insertions(+)
 create mode 100644 arch/arm/mach-mvebu/Kconfig
 create mode 100644 arch/arm/mach-mvebu/Makefile
 create mode 100644 arch/arm/mach-mvebu/core.c
 create mode 100644 arch/arm/mach-mvebu/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-mvebu/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-mvebu/include/mach/mvebu.h
 create mode 100644 drivers/clocksource/mvebu.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 0a4f821..a044ab3 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -79,6 +79,13 @@ config ARCH_IMX
 	select WATCHDOG_IMX_RESET_SOURCE
 	select HAS_DEBUG_LL
 
+config ARCH_MVEBU
+	bool "Marvell EBU platforms"
+	select COMMON_CLK
+	select CLOCKSOURCE_MVEBU
+	select CLKDEV_LOOKUP
+	select HAS_DEBUG_LL
+
 config ARCH_MXS
 	bool "Freescale i.MX23/28 (mxs) based"
 	select GENERIC_GPIO
@@ -161,6 +168,7 @@ source arch/arm/mach-ep93xx/Kconfig
 source arch/arm/mach-highbank/Kconfig
 source arch/arm/mach-imx/Kconfig
 source arch/arm/mach-mxs/Kconfig
+source arch/arm/mach-mvebu/Kconfig
 source arch/arm/mach-netx/Kconfig
 source arch/arm/mach-nomadik/Kconfig
 source arch/arm/mach-omap/Kconfig
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index d506b12..bb47506 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -58,6 +58,7 @@ machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
 machine-$(CONFIG_ARCH_HIGHBANK)		:= highbank
 machine-$(CONFIG_ARCH_IMX)		:= imx
 machine-$(CONFIG_ARCH_MXS)		:= mxs
+machine-$(CONFIG_ARCH_MVEBU)		:= mvebu
 machine-$(CONFIG_ARCH_NOMADIK)		:= nomadik
 machine-$(CONFIG_ARCH_NETX)		:= netx
 machine-$(CONFIG_ARCH_OMAP)		:= omap
diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
new file mode 100644
index 0000000..4cbe546
--- /dev/null
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -0,0 +1,40 @@
+if ARCH_MVEBU
+
+config ARCH_TEXT_BASE
+	hex
+
+config BOARDINFO
+	default
+
+choice
+	prompt "Marvell EBU Processor"
+
+config ARCH_ARMADA_370
+	bool "Armada 370"
+	select CPU_V7
+
+config ARCH_ARMADA_XP
+	bool "Armada XP"
+	select CPU_V7
+
+endchoice
+
+if ARCH_ARMADA_370
+
+choice
+	prompt "Armada 370 Board Type"
+
+endchoice
+
+endif # ARCH_ARMADA_370
+
+if ARCH_ARMADA_XP
+
+choice
+	prompt "Armada XP Board Type"
+
+endchoice
+
+endif # ARCH_ARMADA_XP
+
+endif # ARCH_MVEBU
diff --git a/arch/arm/mach-mvebu/Makefile b/arch/arm/mach-mvebu/Makefile
new file mode 100644
index 0000000..820eb10
--- /dev/null
+++ b/arch/arm/mach-mvebu/Makefile
@@ -0,0 +1 @@
+obj-y += core.o
diff --git a/arch/arm/mach-mvebu/core.c b/arch/arm/mach-mvebu/core.c
new file mode 100644
index 0000000..f4672a3
--- /dev/null
+++ b/arch/arm/mach-mvebu/core.c
@@ -0,0 +1,142 @@
+/*
+ * Copyright (C) 2013 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
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
+#include <io.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <ns16550.h>
+#include <asm/memory.h>
+#include <asm/barebox-arm.h>
+
+#define MVEBU_INT_REGS_BASE (0xd0000000)
+#define  MVEBU_UART0_BASE     (MVEBU_INT_REGS_BASE + 0x12000)
+#define  MVEBU_SYSCTL_BASE    (MVEBU_INT_REGS_BASE + 0x18200)
+#define  MVEBU_SDRAM_WIN_BASE (MVEBU_INT_REGS_BASE + 0x20180)
+#define  MVEBU_TIMER_BASE     (MVEBU_INT_REGS_BASE + 0x20300)
+#define  MVEBU_SAR_BASE       (MVEBU_INT_REGS_BASE + 0x18230)
+
+#define DDR_BASE_CS_OFF(n)     (0x0000 + ((n) << 3))
+#define  DDR_BASE_CS_HIGH_MASK  0xf
+#define  DDR_BASE_CS_LOW_MASK   0xff000000
+#define DDR_SIZE_CS_OFF(n)     (0x0004 + ((n) << 3))
+#define  DDR_SIZE_ENABLED       (1 << 0)
+#define  DDR_SIZE_CS_MASK       0x1c
+#define  DDR_SIZE_CS_SHIFT      2
+#define  DDR_SIZE_MASK          0xff000000
+
+#define SAR_LOW_REG_OFF         0
+#define  SAR_TCLK_FREQ_BIT      20
+#define SAR_HIGH_REG_OFF        0x4
+
+static struct clk *tclk;
+
+static inline void mvebu_memory_find(unsigned long *phys_base,
+				     unsigned long *phys_size)
+{
+	void __iomem *sdram_win = IOMEM(MVEBU_SDRAM_WIN_BASE);
+	int cs;
+
+	*phys_base = ~0;
+	*phys_size = 0;
+
+	for (cs = 0; cs < 4; cs++) {
+		uint32_t base = readl(sdram_win + DDR_BASE_CS_OFF(cs));
+		uint32_t ctrl = readl(sdram_win + DDR_SIZE_CS_OFF(cs));
+
+		/* Skip non-enabled CS */
+		if (! (ctrl & DDR_SIZE_ENABLED))
+			continue;
+
+		base &= DDR_BASE_CS_LOW_MASK;
+		if (base < *phys_base)
+			*phys_base = base;
+		*phys_size += (ctrl | ~DDR_SIZE_MASK) + 1;
+	}
+}
+
+void __naked __noreturn mvebu_barebox_entry(void)
+{
+	unsigned long phys_base, phys_size;
+	mvebu_memory_find(&phys_base, &phys_size);
+	barebox_arm_entry(phys_base, phys_size, 0);
+}
+
+static struct NS16550_plat uart0_plat = {
+	.shift = 2,
+};
+
+int mvebu_add_uart0(void)
+{
+	uart0_plat.clock = clk_get_rate(tclk);
+	add_ns16550_device(DEVICE_ID_DYNAMIC, MVEBU_UART0_BASE, 32,
+			   IORESOURCE_MEM_32BIT, &uart0_plat);
+	return 0;
+}
+
+#if defined(CONFIG_ARCH_ARMADA_370)
+static int mvebu_init_clocks(void)
+{
+	uint32_t val;
+	unsigned int rate;
+	void __iomem *sar = IOMEM(MVEBU_SAR_BASE) + SAR_LOW_REG_OFF;
+
+	val = readl(sar);
+
+	/* On Armada 370, the TCLK frequency can be either 166 Mhz or
+	 * 200 Mhz */
+	if (val & (1 << SAR_TCLK_FREQ_BIT))
+		rate = 200 * 1000 * 1000;
+	else
+		rate = 166 * 1000 * 1000;
+
+	tclk = clk_fixed("tclk", rate);
+	return clk_register_clkdev(tclk, NULL, "mvebu-timer");
+}
+#endif
+
+#if defined(CONFIG_ARCH_ARMADA_XP)
+static int mvebu_init_clocks(void)
+{
+	/* On Armada XP, the TCLK frequency is always 250 Mhz */
+	tclk = clk_fixed("tclk", 250 * 1000 * 1000);
+	return clk_register_clkdev(tclk, NULL, "mvebu-timer");
+}
+#endif
+
+static int mvebu_init_soc(void)
+{
+	unsigned long phys_base, phys_size;
+
+	mvebu_init_clocks();
+	add_generic_device("mvebu-timer", DEVICE_ID_SINGLE, NULL,
+			   MVEBU_TIMER_BASE, 0x30, IORESOURCE_MEM,
+			   NULL);
+	mvebu_memory_find(&phys_base, &phys_size);
+	arm_add_mem_device("ram0", phys_base, phys_size);
+	return 0;
+}
+
+postcore_initcall(mvebu_init_soc);
+
+void __noreturn reset_cpu(unsigned long addr)
+{
+	writel(0x1, MVEBU_SYSCTL_BASE + 0x60);
+	writel(0x1, MVEBU_SYSCTL_BASE + 0x64);
+	while (1)
+		;
+}
+EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-mvebu/include/mach/clkdev.h b/arch/arm/mach-mvebu/include/mach/clkdev.h
new file mode 100644
index 0000000..04b37a8
--- /dev/null
+++ b/arch/arm/mach-mvebu/include/mach/clkdev.h
@@ -0,0 +1,7 @@
+#ifndef __ASM_MACH_CLKDEV_H
+#define __ASM_MACH_CLKDEV_H
+
+#define __clk_get(clk) ({ 1; })
+#define __clk_put(clk) do { } while (0)
+
+#endif
diff --git a/arch/arm/mach-mvebu/include/mach/debug_ll.h b/arch/arm/mach-mvebu/include/mach/debug_ll.h
new file mode 100644
index 0000000..2653573
--- /dev/null
+++ b/arch/arm/mach-mvebu/include/mach/debug_ll.h
@@ -0,0 +1,40 @@
+/*
+ * Copyright (C) 2013 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
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
+#ifndef __MACH_DEBUG_LL_H__
+#define __MACH_DEBUG_LL_H__
+
+#include <io.h>
+
+#define UART_BASE 0xd0012000
+#define UART_THR  0x0
+#define UART_LSR  0x14
+#define   UART_LSR_THRE   (1 << 5)
+
+static inline void PUTC_LL(char c)
+{
+	/* Wait until there is space in the FIFO */
+	while (!(readl(UART_BASE + UART_LSR) & UART_LSR_THRE))
+		;
+
+	/* Send the character */
+	writel(c, UART_BASE + UART_THR)
+		;
+
+	/* Wait to make sure it hits the line, in case we die too soon. */
+	while (!(readl(UART_BASE + UART_LSR) & UART_LSR_THRE))
+		;
+}
+#endif
diff --git a/arch/arm/mach-mvebu/include/mach/mvebu.h b/arch/arm/mach-mvebu/include/mach/mvebu.h
new file mode 100644
index 0000000..e13a446
--- /dev/null
+++ b/arch/arm/mach-mvebu/include/mach/mvebu.h
@@ -0,0 +1,22 @@
+/*
+ * Copyright (C) 2013 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
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
+#ifndef __MACH_MVEBU_H
+#define __MACH_MVEBU_H
+
+int mvebu_add_uart0(void);
+void __naked __noreturn mvebu_barebox_entry(void);
+
+#endif /* __MACH_MVEBU_H */
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 9f3558b..dfc89dd 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -14,6 +14,10 @@ config CLOCKSOURCE_CLPS711X
 	bool
 	depends on ARCH_CLPS711X
 
+config CLOCKSOURCE_MVEBU
+	bool
+	depends on ARCH_MVEBU
+
 config CLOCKSOURCE_NOMADIK
 	bool
 	depends on ARM
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index d919881..0b42ce4 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -2,4 +2,5 @@ obj-$(CONFIG_AMBA_SP804) += amba-sp804.o
 obj-$(CONFIG_ARM_SMP_TWD) += arm_smp_twd.o
 obj-$(CONFIG_CLOCKSOURCE_BCM2835) += bcm2835.o
 obj-$(CONFIG_CLOCKSOURCE_CLPS711X) += clps711x.o
+obj-$(CONFIG_CLOCKSOURCE_MVEBU)   += mvebu.o
 obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
diff --git a/drivers/clocksource/mvebu.c b/drivers/clocksource/mvebu.c
new file mode 100644
index 0000000..2b48a5c
--- /dev/null
+++ b/drivers/clocksource/mvebu.c
@@ -0,0 +1,90 @@
+/*
+ * Copyright (C) 2013 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
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
+#include <clock.h>
+#include <linux/clk.h>
+#include <io.h>
+
+#define TIMER_CTRL_OFF          0x0000
+#define  TIMER0_EN               0x0001
+#define  TIMER0_RELOAD_EN        0x0002
+#define  TIMER0_25MHZ            0x0800
+#define  TIMER0_DIV(div)         ((div) << 19)
+#define  TIMER1_EN               0x0004
+#define  TIMER1_RELOAD_EN        0x0008
+#define  TIMER1_25MHZ            0x1000
+#define  TIMER1_DIV(div)         ((div) << 22)
+#define TIMER_EVENTS_STATUS     0x0004
+#define  TIMER0_CLR_MASK         (~0x1)
+#define  TIMER1_CLR_MASK         (~0x100)
+#define TIMER0_RELOAD_OFF       0x0010
+#define TIMER0_VAL_OFF          0x0014
+#define TIMER1_RELOAD_OFF       0x0018
+#define TIMER1_VAL_OFF          0x001c
+
+#define TIMER_DIVIDER_SHIFT     5
+
+static __iomem void *timer_base;
+
+uint64_t mvebu_clocksource_read(void)
+{
+	return __raw_readl(timer_base + TIMER0_VAL_OFF);
+}
+
+static struct clocksource cs = {
+	.read	= mvebu_clocksource_read,
+	.mask	= CLOCKSOURCE_MASK(32),
+	.shift	= 10,
+};
+
+static int mvebu_timer_probe(struct device_d *dev)
+{
+	struct clk *tclk;
+	u32 val;
+
+	timer_base = dev_request_mem_region(dev, 0);
+
+	tclk = clk_get(dev, "tclk");
+
+	val = __raw_readl(timer_base + TIMER_CTRL_OFF);
+	val &= ~TIMER0_25MHZ;
+	__raw_writel(val, timer_base + TIMER_CTRL_OFF);
+
+	__raw_writel(0xffffffff, timer_base + TIMER0_VAL_OFF);
+	__raw_writel(0xffffffff, timer_base + TIMER0_RELOAD_OFF);
+
+	val = __raw_readl(timer_base + TIMER_CTRL_OFF);
+	val |= TIMER0_EN | TIMER0_RELOAD_EN | TIMER0_DIV(TIMER_DIVIDER_SHIFT);
+	__raw_writel(val, timer_base + TIMER_CTRL_OFF);
+
+	cs.mult = clocksource_hz2mult(clk_get_rate(tclk), cs.shift);
+
+	init_clock(&cs);
+
+	return 0;
+}
+
+static struct driver_d mvebu_timer_driver = {
+	.name = "mvebu-timer",
+	.probe = mvebu_timer_probe,
+};
+
+static int mvebu_timer_init(void)
+{
+	return platform_driver_register(&mvebu_timer_driver);
+}
+postcore_initcall(mvebu_timer_init);
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
