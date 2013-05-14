Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcNmS-0002IH-HP
 for barebox@lists.infradead.org; Tue, 14 May 2013 22:33:19 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Wed, 15 May 2013 00:32:23 +0200
Message-Id: <1368570745-23348-11-git-send-email-thomas.petazzoni@free-electrons.com>
In-Reply-To: <1368570745-23348-1-git-send-email-thomas.petazzoni@free-electrons.com>
References: <1368570745-23348-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCH 10/12] arm: mvebu: initial support for Marvell Kirkwood SoCs
To: barebox@lists.infradead.org
Cc: Lior Amsalem <alior@marvell.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Marvell Kirkwood SoCs are based on a ARMv5 compatible core designed by
Marvell, and a large number of peripherals with Marvell Dove, Marvell
Armada 370 and Marvell Armada XP SoCs. The Marvell Kirkwood are used
in a large number of consumer-grade NAS devices, for example.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/mach-mvebu/Kconfig                      |   14 +++
 arch/arm/mach-mvebu/Makefile                     |    1 +
 arch/arm/mach-mvebu/include/mach/kirkwood-regs.h |   37 ++++++++
 arch/arm/mach-mvebu/include/mach/kirkwood.h      |   22 +++++
 arch/arm/mach-mvebu/kirkwood.c                   |  111 ++++++++++++++++++++++
 5 files changed, 185 insertions(+)
 create mode 100644 arch/arm/mach-mvebu/include/mach/kirkwood-regs.h
 create mode 100644 arch/arm/mach-mvebu/include/mach/kirkwood.h
 create mode 100644 arch/arm/mach-mvebu/kirkwood.c

diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index c02eea1..d7d5c1f 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -29,6 +29,11 @@ config ARCH_DOVE
 	select CPU_V7
 	select CLOCKSOURCE_ORION
 
+config ARCH_KIRKWOOD
+	bool "Kirkwood"
+	select CPU_FEROCEON
+	select CLOCKSOURCE_ORION
+
 endchoice
 
 if ARCH_ARMADA_370
@@ -67,4 +72,13 @@ endchoice
 
 endif # ARCH_DOVE
 
+if ARCH_KIRKWOOD
+
+choice
+	prompt "Kirkwood Board Type"
+
+endchoice
+
+endif # ARCH_KIRKWOOD
+
 endif # ARCH_MVEBU
diff --git a/arch/arm/mach-mvebu/Makefile b/arch/arm/mach-mvebu/Makefile
index 043f08f..8047725 100644
--- a/arch/arm/mach-mvebu/Makefile
+++ b/arch/arm/mach-mvebu/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_ARCH_ARMADA_370)	+= armada-370-xp.o
 obj-$(CONFIG_ARCH_ARMADA_XP)	+= armada-370-xp.o
 obj-$(CONFIG_ARCH_DOVE)		+= dove.o
+obj-$(CONFIG_ARCH_KIRKWOOD)	+= kirkwood.o
diff --git a/arch/arm/mach-mvebu/include/mach/kirkwood-regs.h b/arch/arm/mach-mvebu/include/mach/kirkwood-regs.h
new file mode 100644
index 0000000..23e221b
--- /dev/null
+++ b/arch/arm/mach-mvebu/include/mach/kirkwood-regs.h
@@ -0,0 +1,37 @@
+/*
+ * Copyright
+ * (C) 2013 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
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
+#ifndef __MACH_MVEBU_KIRKWOOD_REGS_H
+#define __MACH_MVEBU_KIRKWOOD_REGS_H
+
+#define KIRKWOOD_INT_REGS_BASE IOMEM(0xd0000000)
+
+#define KIRKWOOD_SDRAM_WIN_BASE (KIRKWOOD_INT_REGS_BASE + 0x1500)
+#define  DDR_BASE_CS_OFF(n)     (0x0000 + ((n) << 3))
+#define   DDR_BASE_CS_HIGH_MASK  0xf
+#define   DDR_BASE_CS_LOW_MASK   0xff000000
+#define  DDR_SIZE_CS_OFF(n)     (0x0004 + ((n) << 3))
+#define   DDR_SIZE_ENABLED       (1 << 0)
+#define   DDR_SIZE_CS_MASK       0x1c
+#define   DDR_SIZE_CS_SHIFT      2
+#define   DDR_SIZE_MASK          0xff000000
+#define KIRKWOOD_SAR_BASE       (KIRKWOOD_INT_REGS_BASE + 0x10030)
+#define  KIRKWOOD_TCLK_BIT      21
+#define KIRKWOOD_UART_BASE      (KIRKWOOD_INT_REGS_BASE + 0x12000)
+#define KIRKWOOD_CPUCTRL_BASE   (KIRKWOOD_INT_REGS_BASE + 0x20100)
+#define KIRKWOOD_TIMER_BASE     (KIRKWOOD_INT_REGS_BASE + 0x20300)
+
+#endif /* __MACH_MVEBU_KIRKWOOD_REGS_H */
diff --git a/arch/arm/mach-mvebu/include/mach/kirkwood.h b/arch/arm/mach-mvebu/include/mach/kirkwood.h
new file mode 100644
index 0000000..7fe002d
--- /dev/null
+++ b/arch/arm/mach-mvebu/include/mach/kirkwood.h
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
+#ifndef __MACH_KIRKWOOD_H
+#define __MACH_KIRKWOOD_H
+
+int kirkwood_add_uart0(void);
+void __naked __noreturn kirkwood_barebox_entry(void);
+
+#endif /* __MACH_KIRKWOOD_H */
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
new file mode 100644
index 0000000..b5b6aaf
--- /dev/null
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -0,0 +1,111 @@
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
+#include <mach/kirkwood-regs.h>
+#include <asm/memory.h>
+#include <asm/barebox-arm.h>
+
+static struct clk *tclk;
+
+static inline void kirkwood_memory_find(unsigned long *phys_base,
+				     unsigned long *phys_size)
+{
+	void __iomem *sdram_win = IOMEM(KIRKWOOD_SDRAM_WIN_BASE);
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
+void __naked __noreturn kirkwood_barebox_entry(void)
+{
+	unsigned long phys_base, phys_size;
+	kirkwood_memory_find(&phys_base, &phys_size);
+	writel('E', 0xD0012000);
+	barebox_arm_entry(phys_base, phys_size, 0);
+}
+
+static struct NS16550_plat uart_plat = {
+	.shift = 2,
+};
+
+int kirkwood_add_uart0(void)
+{
+	uart_plat.clock = clk_get_rate(tclk);
+	if (!add_ns16550_device(DEVICE_ID_DYNAMIC,
+				(unsigned int)KIRKWOOD_UART_BASE,
+				32, IORESOURCE_MEM_32BIT, &uart_plat))
+		return -ENODEV;
+	return 0;
+}
+
+static int kirkwood_init_clocks(void)
+{
+	uint32_t sar = readl(KIRKWOOD_SAR_BASE);
+	unsigned int rate;
+
+	if (sar & (1 << KIRKWOOD_TCLK_BIT))
+		rate = 166666667;
+	else
+		rate = 200000000;
+
+	tclk = clk_fixed("tclk", rate);
+	return clk_register_clkdev(tclk, NULL, "orion-timer");
+}
+
+static int kirkwood_init_soc(void)
+{
+	unsigned long phys_base, phys_size;
+
+	kirkwood_init_clocks();
+	add_generic_device("orion-timer", DEVICE_ID_SINGLE, NULL,
+			   (unsigned int)KIRKWOOD_TIMER_BASE, 0x30,
+			   IORESOURCE_MEM, NULL);
+	kirkwood_memory_find(&phys_base, &phys_size);
+	arm_add_mem_device("ram0", phys_base, phys_size);
+
+	return 0;
+}
+
+postcore_initcall(kirkwood_init_soc);
+
+void __noreturn reset_cpu(unsigned long addr)
+{
+	writel(0x4, KIRKWOOD_CPUCTRL_BASE + 0x8);
+	writel(0x1, KIRKWOOD_CPUCTRL_BASE + 0xC);
+	for(;;)
+		;
+}
+EXPORT_SYMBOL(reset_cpu);
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
