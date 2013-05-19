Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x232.google.com ([2a00:1450:4013:c01::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ue8HV-0005ph-H4
 for barebox@lists.infradead.org; Sun, 19 May 2013 18:24:35 +0000
Received: by mail-ea0-f178.google.com with SMTP id q16so3620456ead.9
 for <barebox@lists.infradead.org>; Sun, 19 May 2013 11:24:11 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sun, 19 May 2013 20:23:49 +0200
Message-Id: <1368987835-13323-6-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1368987835-13323-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1368987835-13323-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 05/11] arm: mvebu: convert Armada 370/XP to common init
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This patch converts Marvell Armada 370/XP SoCs init to make use of common
lowlevel and init functions. Postcore initcall will now probe real memory
size, and setup UART console by config option. Also register definitions
are moved into a mach include and functions are named after SoC name.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Tested-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/armada-370-xp.c                |  103 ++++++++------------
 .../mach-mvebu/include/mach/armada-370-xp-regs.h   |   47 +++++++++
 2 files changed, 88 insertions(+), 62 deletions(-)
 create mode 100644 arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index f4672a3..2cdc3b0 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -1,5 +1,6 @@
 /*
- * Copyright (C) 2013 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
+ * Copyright
+ * (C) 2013 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
@@ -16,49 +17,31 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <ns16550.h>
 #include <linux/clk.h>
 #include <linux/clkdev.h>
-#include <ns16550.h>
 #include <asm/memory.h>
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
+#include <mach/armada-370-xp-regs.h>
+
+#define CONSOLE_UART_BASE	\
+	ARMADA_370_XP_UARTn_BASE(CONFIG_MVEBU_CONSOLE_UART)
 
 static struct clk *tclk;
 
-static inline void mvebu_memory_find(unsigned long *phys_base,
-				     unsigned long *phys_size)
+static inline void armada_370_xp_memory_find(unsigned long *phys_base,
+					     unsigned long *phys_size)
 {
-	void __iomem *sdram_win = IOMEM(MVEBU_SDRAM_WIN_BASE);
 	int cs;
 
 	*phys_base = ~0;
 	*phys_size = 0;
 
 	for (cs = 0; cs < 4; cs++) {
-		uint32_t base = readl(sdram_win + DDR_BASE_CS_OFF(cs));
-		uint32_t ctrl = readl(sdram_win + DDR_SIZE_CS_OFF(cs));
+		u32 base = readl(ARMADA_370_XP_SDRAM_BASE + DDR_BASE_CSn(cs));
+		u32 ctrl = readl(ARMADA_370_XP_SDRAM_BASE + DDR_SIZE_CSn(cs));
 
 		/* Skip non-enabled CS */
-		if (! (ctrl & DDR_SIZE_ENABLED))
+		if ((ctrl & DDR_SIZE_ENABLED) != DDR_SIZE_ENABLED)
 			continue;
 
 		base &= DDR_BASE_CS_LOW_MASK;
@@ -68,74 +51,70 @@ static inline void mvebu_memory_find(unsigned long *phys_base,
 	}
 }
 
-void __naked __noreturn mvebu_barebox_entry(void)
-{
-	unsigned long phys_base, phys_size;
-	mvebu_memory_find(&phys_base, &phys_size);
-	barebox_arm_entry(phys_base, phys_size, 0);
-}
-
-static struct NS16550_plat uart0_plat = {
+static struct NS16550_plat uart_plat = {
 	.shift = 2,
 };
 
-int mvebu_add_uart0(void)
+static int armada_370_xp_add_uart(void)
 {
-	uart0_plat.clock = clk_get_rate(tclk);
-	add_ns16550_device(DEVICE_ID_DYNAMIC, MVEBU_UART0_BASE, 32,
-			   IORESOURCE_MEM_32BIT, &uart0_plat);
+	uart_plat.clock = clk_get_rate(tclk);
+	if (!add_ns16550_device(DEVICE_ID_DYNAMIC,
+				(unsigned int)CONSOLE_UART_BASE, 32,
+				IORESOURCE_MEM_32BIT, &uart_plat))
+	    return -ENODEV;
 	return 0;
 }
 
 #if defined(CONFIG_ARCH_ARMADA_370)
-static int mvebu_init_clocks(void)
+static int armada_370_init_clocks(void)
 {
-	uint32_t val;
+	u32 val = readl(ARMADA_370_XP_SAR_BASE + SAR_LOW);
 	unsigned int rate;
-	void __iomem *sar = IOMEM(MVEBU_SAR_BASE) + SAR_LOW_REG_OFF;
 
-	val = readl(sar);
-
-	/* On Armada 370, the TCLK frequency can be either 166 Mhz or
-	 * 200 Mhz */
-	if (val & (1 << SAR_TCLK_FREQ_BIT))
-		rate = 200 * 1000 * 1000;
+	/*
+	 * On Armada 370, the TCLK frequency can be either
+	 * 166 Mhz or 200 Mhz
+	 */
+	if ((val & SAR_TCLK_FREQ) == SAR_TCLK_FREQ)
+		rate = 200000000;
 	else
-		rate = 166 * 1000 * 1000;
+		rate = 166000000;
 
 	tclk = clk_fixed("tclk", rate);
 	return clk_register_clkdev(tclk, NULL, "mvebu-timer");
 }
+#define armada_370_xp_init_clocks()	armada_370_init_clocks()
 #endif
 
 #if defined(CONFIG_ARCH_ARMADA_XP)
-static int mvebu_init_clocks(void)
+static int armada_xp_init_clocks(void)
 {
 	/* On Armada XP, the TCLK frequency is always 250 Mhz */
-	tclk = clk_fixed("tclk", 250 * 1000 * 1000);
+	tclk = clk_fixed("tclk", 250000000);
 	return clk_register_clkdev(tclk, NULL, "mvebu-timer");
 }
+#define armada_370_xp_init_clocks()	armada_xp_init_clocks()
 #endif
 
-static int mvebu_init_soc(void)
+static int armada_370_xp_init_soc(void)
 {
 	unsigned long phys_base, phys_size;
 
-	mvebu_init_clocks();
+	armada_370_xp_init_clocks();
 	add_generic_device("mvebu-timer", DEVICE_ID_SINGLE, NULL,
-			   MVEBU_TIMER_BASE, 0x30, IORESOURCE_MEM,
-			   NULL);
-	mvebu_memory_find(&phys_base, &phys_size);
+			   (unsigned int)ARMADA_370_XP_TIMER_BASE, 0x30,
+			   IORESOURCE_MEM, NULL);
+	armada_370_xp_memory_find(&phys_base, &phys_size);
 	arm_add_mem_device("ram0", phys_base, phys_size);
+	armada_370_xp_add_uart();
 	return 0;
 }
-
-postcore_initcall(mvebu_init_soc);
+postcore_initcall(armada_370_xp_init_soc);
 
 void __noreturn reset_cpu(unsigned long addr)
 {
-	writel(0x1, MVEBU_SYSCTL_BASE + 0x60);
-	writel(0x1, MVEBU_SYSCTL_BASE + 0x64);
+	writel(0x1, ARMADA_370_XP_SYSCTL_BASE + 0x60);
+	writel(0x1, ARMADA_370_XP_SYSCTL_BASE + 0x64);
 	while (1)
 		;
 }
diff --git a/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h b/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
new file mode 100644
index 0000000..5fd16e5
--- /dev/null
+++ b/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
@@ -0,0 +1,47 @@
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
+#ifndef __MACH_MVEBU_ARMADA_370_XP_REGS_H
+#define __MACH_MVEBU_ARMADA_370_XP_REGS_H
+
+#include <mach/common.h>
+
+#define ARMADA_370_XP_INT_REGS_BASE	IOMEM(MVEBU_REMAP_INT_REG_BASE)
+#define ARMADA_370_XP_UART_BASE		(ARMADA_370_XP_INT_REGS_BASE + 0x12000)
+#define ARMADA_370_XP_UARTn_BASE(n)	\
+	(ARMADA_370_XP_UART_BASE + ((n) * 0x100))
+
+#define ARMADA_370_XP_SYSCTL_BASE	(ARMADA_370_XP_INT_REGS_BASE + 0x18200)
+#define ARMADA_370_XP_SAR_BASE		(ARMADA_370_XP_INT_REGS_BASE + 0x18230)
+#define  SAR_LOW			0x00
+#define  SAR_TCLK_FREQ			BIT(20)
+#define  SAR_HIGH			0x04
+
+#define ARMADA_370_XP_SDRAM_BASE	(ARMADA_370_XP_INT_REGS_BASE + 0x20000)
+#define  DDR_BASE_CS			0x180
+#define  DDR_BASE_CSn(n)		(DDR_BASE_CS + ((n) * 0x8))
+#define  DDR_BASE_CS_HIGH_MASK		0x0000000f
+#define  DDR_BASE_CS_LOW_MASK		0xff000000
+#define  DDR_SIZE_CS			0x184
+#define  DDR_SIZE_CSn(n)		(DDR_SIZE_CS + ((n) * 0x8))
+#define  DDR_SIZE_ENABLED		BIT(0)
+#define  DDR_SIZE_CS_MASK		0x0000001c
+#define  DDR_SIZE_CS_SHIFT		2
+#define  DDR_SIZE_MASK			0xff000000
+
+#define ARMADA_370_XP_TIMER_BASE	(ARMADA_370_XP_INT_REGS_BASE + 0x20300)
+
+#endif /* __MACH_MVEBU_DOVE_REGS_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
