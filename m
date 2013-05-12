Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f49.google.com ([74.125.83.49])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbW1y-0002tR-RL
 for barebox@lists.infradead.org; Sun, 12 May 2013 13:09:51 +0000
Received: by mail-ee0-f49.google.com with SMTP id d17so3072745eek.36
 for <barebox@lists.infradead.org>; Sun, 12 May 2013 06:09:17 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sun, 12 May 2013 15:09:06 +0200
Message-Id: <1368364146-6024-6-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 5/5] arm: mach-mvebu: rename Armada 370/XP core code
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

There are more than Armada 370/XP in Marvell MVEBU SoC familiy. To avoid
irritation with source file nameing, we rename setup source file for
Armada 370/XP from core.c to armada-370-xp.c.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/Makefile        |    4 +-
 arch/arm/mach-mvebu/armada-370-xp.c |  142 +++++++++++++++++++++++++++++++++++
 arch/arm/mach-mvebu/core.c          |  142 -----------------------------------
 3 files changed, 144 insertions(+), 144 deletions(-)
 create mode 100644 arch/arm/mach-mvebu/armada-370-xp.c
 delete mode 100644 arch/arm/mach-mvebu/core.c

diff --git a/arch/arm/mach-mvebu/Makefile b/arch/arm/mach-mvebu/Makefile
index 0257b73..043f08f 100644
--- a/arch/arm/mach-mvebu/Makefile
+++ b/arch/arm/mach-mvebu/Makefile
@@ -1,3 +1,3 @@
-obj-$(CONFIG_ARCH_ARMADA_370)	+= core.o
-obj-$(CONFIG_ARCH_ARMADA_XP)	+= core.o
+obj-$(CONFIG_ARCH_ARMADA_370)	+= armada-370-xp.o
+obj-$(CONFIG_ARCH_ARMADA_XP)	+= armada-370-xp.o
 obj-$(CONFIG_ARCH_DOVE)		+= dove.o
diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
new file mode 100644
index 0000000..f4672a3
--- /dev/null
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
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
diff --git a/arch/arm/mach-mvebu/core.c b/arch/arm/mach-mvebu/core.c
deleted file mode 100644
index f4672a3..0000000
--- a/arch/arm/mach-mvebu/core.c
+++ /dev/null
@@ -1,142 +0,0 @@
-/*
- * Copyright (C) 2013 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <init.h>
-#include <io.h>
-#include <linux/clk.h>
-#include <linux/clkdev.h>
-#include <ns16550.h>
-#include <asm/memory.h>
-#include <asm/barebox-arm.h>
-
-#define MVEBU_INT_REGS_BASE (0xd0000000)
-#define  MVEBU_UART0_BASE     (MVEBU_INT_REGS_BASE + 0x12000)
-#define  MVEBU_SYSCTL_BASE    (MVEBU_INT_REGS_BASE + 0x18200)
-#define  MVEBU_SDRAM_WIN_BASE (MVEBU_INT_REGS_BASE + 0x20180)
-#define  MVEBU_TIMER_BASE     (MVEBU_INT_REGS_BASE + 0x20300)
-#define  MVEBU_SAR_BASE       (MVEBU_INT_REGS_BASE + 0x18230)
-
-#define DDR_BASE_CS_OFF(n)     (0x0000 + ((n) << 3))
-#define  DDR_BASE_CS_HIGH_MASK  0xf
-#define  DDR_BASE_CS_LOW_MASK   0xff000000
-#define DDR_SIZE_CS_OFF(n)     (0x0004 + ((n) << 3))
-#define  DDR_SIZE_ENABLED       (1 << 0)
-#define  DDR_SIZE_CS_MASK       0x1c
-#define  DDR_SIZE_CS_SHIFT      2
-#define  DDR_SIZE_MASK          0xff000000
-
-#define SAR_LOW_REG_OFF         0
-#define  SAR_TCLK_FREQ_BIT      20
-#define SAR_HIGH_REG_OFF        0x4
-
-static struct clk *tclk;
-
-static inline void mvebu_memory_find(unsigned long *phys_base,
-				     unsigned long *phys_size)
-{
-	void __iomem *sdram_win = IOMEM(MVEBU_SDRAM_WIN_BASE);
-	int cs;
-
-	*phys_base = ~0;
-	*phys_size = 0;
-
-	for (cs = 0; cs < 4; cs++) {
-		uint32_t base = readl(sdram_win + DDR_BASE_CS_OFF(cs));
-		uint32_t ctrl = readl(sdram_win + DDR_SIZE_CS_OFF(cs));
-
-		/* Skip non-enabled CS */
-		if (! (ctrl & DDR_SIZE_ENABLED))
-			continue;
-
-		base &= DDR_BASE_CS_LOW_MASK;
-		if (base < *phys_base)
-			*phys_base = base;
-		*phys_size += (ctrl | ~DDR_SIZE_MASK) + 1;
-	}
-}
-
-void __naked __noreturn mvebu_barebox_entry(void)
-{
-	unsigned long phys_base, phys_size;
-	mvebu_memory_find(&phys_base, &phys_size);
-	barebox_arm_entry(phys_base, phys_size, 0);
-}
-
-static struct NS16550_plat uart0_plat = {
-	.shift = 2,
-};
-
-int mvebu_add_uart0(void)
-{
-	uart0_plat.clock = clk_get_rate(tclk);
-	add_ns16550_device(DEVICE_ID_DYNAMIC, MVEBU_UART0_BASE, 32,
-			   IORESOURCE_MEM_32BIT, &uart0_plat);
-	return 0;
-}
-
-#if defined(CONFIG_ARCH_ARMADA_370)
-static int mvebu_init_clocks(void)
-{
-	uint32_t val;
-	unsigned int rate;
-	void __iomem *sar = IOMEM(MVEBU_SAR_BASE) + SAR_LOW_REG_OFF;
-
-	val = readl(sar);
-
-	/* On Armada 370, the TCLK frequency can be either 166 Mhz or
-	 * 200 Mhz */
-	if (val & (1 << SAR_TCLK_FREQ_BIT))
-		rate = 200 * 1000 * 1000;
-	else
-		rate = 166 * 1000 * 1000;
-
-	tclk = clk_fixed("tclk", rate);
-	return clk_register_clkdev(tclk, NULL, "mvebu-timer");
-}
-#endif
-
-#if defined(CONFIG_ARCH_ARMADA_XP)
-static int mvebu_init_clocks(void)
-{
-	/* On Armada XP, the TCLK frequency is always 250 Mhz */
-	tclk = clk_fixed("tclk", 250 * 1000 * 1000);
-	return clk_register_clkdev(tclk, NULL, "mvebu-timer");
-}
-#endif
-
-static int mvebu_init_soc(void)
-{
-	unsigned long phys_base, phys_size;
-
-	mvebu_init_clocks();
-	add_generic_device("mvebu-timer", DEVICE_ID_SINGLE, NULL,
-			   MVEBU_TIMER_BASE, 0x30, IORESOURCE_MEM,
-			   NULL);
-	mvebu_memory_find(&phys_base, &phys_size);
-	arm_add_mem_device("ram0", phys_base, phys_size);
-	return 0;
-}
-
-postcore_initcall(mvebu_init_soc);
-
-void __noreturn reset_cpu(unsigned long addr)
-{
-	writel(0x1, MVEBU_SYSCTL_BASE + 0x60);
-	writel(0x1, MVEBU_SYSCTL_BASE + 0x64);
-	while (1)
-		;
-}
-EXPORT_SYMBOL(reset_cpu);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
