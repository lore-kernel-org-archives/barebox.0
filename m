Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcNmS-0002Hv-HK
 for barebox@lists.infradead.org; Tue, 14 May 2013 22:33:20 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Wed, 15 May 2013 00:32:21 +0200
Message-Id: <1368570745-23348-9-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCH 08/12] arm: mvebu: initial support for Marvell Dove SoCs
To: barebox@lists.infradead.org
Cc: Lior Amsalem <alior@marvell.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

This commit adds minimal support for the Marvell Dove SoC (88AP510) as
first SoC of the Marvell Orion family. Orion SoCs have a different timer,
therefore current mach-mvebu and Armada 370/XP Kconfig and Makefiles are
slightly modified and a new clocksource drivers is added.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/Kconfig                             |    1 -
 arch/arm/mach-mvebu/Kconfig                  |   16 +++
 arch/arm/mach-mvebu/Makefile                 |    1 +
 arch/arm/mach-mvebu/dove.c                   |  161 ++++++++++++++++++++++++++
 arch/arm/mach-mvebu/include/mach/dove-regs.h |   59 ++++++++++
 arch/arm/mach-mvebu/include/mach/dove.h      |   23 ++++
 drivers/clocksource/Kconfig                  |    4 +
 drivers/clocksource/Makefile                 |    1 +
 drivers/clocksource/orion.c                  |   76 ++++++++++++
 9 files changed, 341 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-mvebu/dove.c
 create mode 100644 arch/arm/mach-mvebu/include/mach/dove-regs.h
 create mode 100644 arch/arm/mach-mvebu/include/mach/dove.h
 create mode 100644 drivers/clocksource/orion.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index a044ab3..cfb82b0 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -82,7 +82,6 @@ config ARCH_IMX
 config ARCH_MVEBU
 	bool "Marvell EBU platforms"
 	select COMMON_CLK
-	select CLOCKSOURCE_MVEBU
 	select CLKDEV_LOOKUP
 	select HAS_DEBUG_LL
 
diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index e553e2d..c02eea1 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -17,10 +17,17 @@ choice
 config ARCH_ARMADA_370
 	bool "Armada 370"
 	select CPU_V7
+	select CLOCKSOURCE_MVEBU
 
 config ARCH_ARMADA_XP
 	bool "Armada XP"
 	select CPU_V7
+	select CLOCKSOURCE_MVEBU
+
+config ARCH_DOVE
+	bool "Dove 88AP510"
+	select CPU_V7
+	select CLOCKSOURCE_ORION
 
 endchoice
 
@@ -51,4 +58,13 @@ endchoice
 
 endif # ARCH_ARMADA_XP
 
+if ARCH_DOVE
+
+choice
+	prompt "Dove 88AP510 Board Type"
+
+endchoice
+
+endif # ARCH_DOVE
+
 endif # ARCH_MVEBU
diff --git a/arch/arm/mach-mvebu/Makefile b/arch/arm/mach-mvebu/Makefile
index 16d271d..043f08f 100644
--- a/arch/arm/mach-mvebu/Makefile
+++ b/arch/arm/mach-mvebu/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_ARCH_ARMADA_370)	+= armada-370-xp.o
 obj-$(CONFIG_ARCH_ARMADA_XP)	+= armada-370-xp.o
+obj-$(CONFIG_ARCH_DOVE)		+= dove.o
diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
new file mode 100644
index 0000000..f073596
--- /dev/null
+++ b/arch/arm/mach-mvebu/dove.c
@@ -0,0 +1,161 @@
+/*
+ * Copyright
+ * (C) 2013 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
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
+#include <mach/dove-regs.h>
+#include <asm/memory.h>
+#include <asm/barebox-arm.h>
+
+static struct clk *tclk;
+
+static inline void dove_remap_reg_base(uint32_t intbase,
+				       uint32_t mcbase)
+{
+	uint32_t val;
+
+	/* remap ahb slave base */
+	val  = readl(DOVE_CPU_CTRL) & 0xffff0000;
+	val |= (mcbase & 0xffff0000) >> 16;
+	writel(val, DOVE_CPU_CTRL);
+
+	/* remap axi bridge address */
+	val  = readl(DOVE_AXI_CTRL) & 0x007fffff;
+	val |= mcbase & 0xff800000;
+	writel(val, DOVE_AXI_CTRL);
+
+	/* remap memory controller base address */
+	val = readl(DOVE_SDRAM_BASE + SDRAM_REGS_BASE_DECODE) & 0x0000ffff;
+	val |= mcbase & 0xffff0000;
+	writel(val, DOVE_SDRAM_BASE + SDRAM_REGS_BASE_DECODE);
+
+	/* remap internal register */
+	val = intbase & 0xfff00000;
+	writel(val, DOVE_BRIDGE_BASE + INT_REGS_BASE_MAP);
+}
+
+static inline void dove_memory_find(unsigned long *phys_base,
+				    unsigned long *phys_size)
+{
+	int n;
+
+	*phys_base = ~0;
+	*phys_size = 0;
+
+	for (n = 0; n < 2; n++) {
+		uint32_t map = readl(DOVE_SDRAM_BASE + SDRAM_MAPn(n));
+		uint32_t base, size;
+
+		/* skip disabled areas */
+		if ((map & SDRAM_MAP_VALID) != SDRAM_MAP_VALID)
+			continue;
+
+		base = map & SDRAM_START_MASK;
+		if (base < *phys_base)
+			*phys_base = base;
+
+		/* real size is encoded as ld(2^(16+length)) */
+		size = (map & SDRAM_LENGTH_MASK) >> SDRAM_LENGTH_SHIFT;
+		*phys_size += 1 << (16 + size);
+	}
+}
+
+void __naked __noreturn dove_barebox_entry(void)
+{
+	unsigned long phys_base, phys_size;
+	dove_memory_find(&phys_base, &phys_size);
+	barebox_arm_entry(phys_base, phys_size, 0);
+}
+
+static struct NS16550_plat uart_plat[] = {
+	[0] = { .shift = 2, },
+	[1] = { .shift = 2, },
+	[2] = { .shift = 2, },
+	[3] = { .shift = 2, },
+};
+
+int dove_add_uart(int num)
+{
+	struct NS16550_plat *plat;
+
+	if (num < 0 || num > 4)
+		return -EINVAL;
+
+	plat = &uart_plat[num];
+	plat->clock = clk_get_rate(tclk);
+	if (!add_ns16550_device(DEVICE_ID_DYNAMIC,
+				(unsigned int)DOVE_UARTn_BASE(num),
+				32, IORESOURCE_MEM_32BIT, plat))
+		return -ENODEV;
+	return 0;
+}
+
+/*
+ * Dove TCLK sample-at-reset configuation
+ *
+ * SAR0[24:23] : TCLK frequency
+ *		 0 = 166 MHz
+ *		 1 = 125 MHz
+ *		 others reserved.
+ */
+static int dove_init_clocks(void)
+{
+	uint32_t strap, sar = readl(DOVE_SAR_BASE + SAR0);
+	unsigned int rate;
+
+	strap = (sar & TCLK_FREQ_MASK) >> TCLK_FREQ_SHIFT;
+	switch (strap) {
+	case 0:
+		rate = 166666667;
+		break;
+	case 1:
+		rate = 125000000;
+		break;
+	default:
+		panic("Unknown TCLK strapping %d\n", strap);
+	}
+
+	tclk = clk_fixed("tclk", rate);
+	return clk_register_clkdev(tclk, NULL, "orion-timer");
+}
+
+static int dove_init_soc(void)
+{
+	unsigned long phys_base, phys_size;
+
+	dove_init_clocks();
+	add_generic_device("orion-timer", DEVICE_ID_SINGLE, NULL,
+			   (unsigned int)DOVE_TIMER_BASE, 0x30,
+			   IORESOURCE_MEM, NULL);
+	dove_memory_find(&phys_base, &phys_size);
+	arm_add_mem_device("ram0", phys_base, phys_size);
+	return 0;
+}
+postcore_initcall(dove_init_soc);
+
+void __noreturn reset_cpu(unsigned long addr)
+{
+	/* enable and assert RSTOUTn */
+	writel(SOFT_RESET_OUT_EN, DOVE_BRIDGE_BASE + BRIDGE_RSTOUT_MASK);
+	writel(SOFT_RESET_EN, DOVE_BRIDGE_BASE + BRIDGE_SYS_SOFT_RESET);
+	while (1)
+		;
+}
+EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-mvebu/include/mach/dove-regs.h b/arch/arm/mach-mvebu/include/mach/dove-regs.h
new file mode 100644
index 0000000..5e20368
--- /dev/null
+++ b/arch/arm/mach-mvebu/include/mach/dove-regs.h
@@ -0,0 +1,59 @@
+/*
+ * Copyright
+ * (C) 2013 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
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
+#ifndef __MACH_MVEBU_DOVE_REGS_H
+#define __MACH_MVEBU_DOVE_REGS_H
+
+/* At Boot-up register base is at 0xd000000 */
+#define DOVE_INT_REGS_BOOTUP	0xd0000000
+#define DOVE_MC_REGS_BOOTUP	0xd0800000
+/* Linux wants it remapped to 0xf1000000 */
+#define DOVE_INT_REGS_REMAP	0xf1000000
+#define DOVE_MC_REGS_REMAP	0xf1800000
+
+#define DOVE_INT_REGS_BASE	IOMEM(DOVE_INT_REGS_BOOTUP)
+#define DOVE_MC_REGS_BASE	IOMEM(DOVE_MC_REGS_BOOTUP)
+
+#define DOVE_UART_BASE		(DOVE_INT_REGS_BASE + 0x12000)
+#define DOVE_UARTn_BASE(n)	(DOVE_UART_BASE + ((n) * 0x100))
+
+#define DOVE_BRIDGE_BASE	(DOVE_INT_REGS_BASE + 0x20000)
+#define  INT_REGS_BASE_MAP	0x080
+#define  BRIDGE_RSTOUT_MASK	0x108
+#define  SOFT_RESET_OUT_EN	BIT(2)
+#define  BRIDGE_SYS_SOFT_RESET	0x10c
+#define  SOFT_RESET_EN		BIT(0)
+#define DOVE_TIMER_BASE		(DOVE_INT_REGS_BASE + 0x20300)
+
+#define DOVE_SAR_BASE		(DOVE_INT_REGS_BASE + 0xd0214)
+#define  SAR0			0x000
+#define  TCLK_FREQ_SHIFT	23
+#define  TCLK_FREQ_MASK		(0x3 << TCLK_FREQ_SHIFT)
+#define  SAR1			0x004
+
+#define DOVE_AXI_CTRL		(DOVE_INT_REGS_BASE + 0xd0224)
+#define DOVE_CPU_CTRL		(DOVE_INT_REGS_BASE + 0xd025c)
+
+#define DOVE_SDRAM_BASE		(DOVE_MC_REGS_BASE)
+#define  SDRAM_REGS_BASE_DECODE	0x010
+#define  SDRAM_MAPn(n)		(0x100 + ((n) * 0x10))
+#define  SDRAM_START_MASK	(0x1ff << 23)
+#define  SDRAM_LENGTH_SHIFT	16
+#define  SDRAM_LENGTH_MASK	(0x00f << SDRAM_LENGTH_SHIFT)
+#define  SDRAM_ADDRESS_MASK	(0x1ff << 7)
+#define  SDRAM_MAP_VALID	BIT(0)
+
+#endif /* __MACH_MVEBU_DOVE_REGS_H */
diff --git a/arch/arm/mach-mvebu/include/mach/dove.h b/arch/arm/mach-mvebu/include/mach/dove.h
new file mode 100644
index 0000000..1712fa7
--- /dev/null
+++ b/arch/arm/mach-mvebu/include/mach/dove.h
@@ -0,0 +1,23 @@
+/*
+ * Copyright
+ * (C) 2013 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
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
+#ifndef __MACH_MVEBU_DOVE_H
+#define __MACH_MVEBU_DOVE_H
+
+int dove_add_uart(int num);
+void __naked __noreturn dove_barebox_entry(void);
+
+#endif /* __MACH_MVEBU_DOVE_H */
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index dfc89dd..4ef25ec 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -21,3 +21,7 @@ config CLOCKSOURCE_MVEBU
 config CLOCKSOURCE_NOMADIK
 	bool
 	depends on ARM
+
+config CLOCKSOURCE_ORION
+	bool
+	depends on ARCH_MVEBU
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 0b42ce4..25b7f46 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -4,3 +4,4 @@ obj-$(CONFIG_CLOCKSOURCE_BCM2835) += bcm2835.o
 obj-$(CONFIG_CLOCKSOURCE_CLPS711X) += clps711x.o
 obj-$(CONFIG_CLOCKSOURCE_MVEBU)   += mvebu.o
 obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
+obj-$(CONFIG_CLOCKSOURCE_ORION)   += orion.o
diff --git a/drivers/clocksource/orion.c b/drivers/clocksource/orion.c
new file mode 100644
index 0000000..604b414
--- /dev/null
+++ b/drivers/clocksource/orion.c
@@ -0,0 +1,76 @@
+/*
+ * Copyright
+ * (C) 2013 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
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
+#define TIMER_CTRL		0x00
+#define  TIMER0_EN		BIT(0)
+#define  TIMER0_RELOAD_EN	BIT(1)
+#define  TIMER1_EN		BIT(2)
+#define  TIMER1_RELOAD_EN	BIT(3)
+#define TIMER0_RELOAD		0x10
+#define TIMER0_VAL		0x14
+#define TIMER1_RELOAD		0x18
+#define TIMER1_VAL		0x1c
+
+static __iomem void *timer_base;
+
+static uint64_t orion_clocksource_read(void)
+{
+	return __raw_readl(timer_base + TIMER0_VAL);
+}
+
+static struct clocksource clksrc = {
+	.read	= orion_clocksource_read,
+	.mask	= CLOCKSOURCE_MASK(32),
+	.shift	= 10,
+};
+
+static int orion_timer_probe(struct device_d *dev)
+{
+	struct clk *tclk;
+	uint32_t val;
+
+	timer_base = dev_request_mem_region(dev, 0);
+	tclk = clk_get(dev, "tclk");
+
+	/* setup TIMER0 as free-running clock source */
+	__raw_writel(~0, timer_base + TIMER0_VAL);
+	__raw_writel(~0, timer_base + TIMER0_RELOAD);
+	val = __raw_readl(timer_base + TIMER_CTRL);
+	__raw_writel(val | TIMER0_EN | TIMER0_RELOAD_EN,
+		     timer_base + TIMER_CTRL);
+
+	clksrc.mult = clocksource_hz2mult(clk_get_rate(tclk), clksrc.shift);
+	init_clock(&clksrc);
+
+	return 0;
+}
+
+static struct driver_d orion_timer_driver = {
+	.name = "orion-timer",
+	.probe = orion_timer_probe,
+};
+
+static int orion_timer_init(void)
+{
+	return platform_driver_register(&orion_timer_driver);
+}
+postcore_initcall(orion_timer_init);
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
