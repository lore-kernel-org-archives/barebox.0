Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f44.google.com ([74.125.83.44])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ue8HX-0005pd-Eu
 for barebox@lists.infradead.org; Sun, 19 May 2013 18:24:40 +0000
Received: by mail-ee0-f44.google.com with SMTP id b57so3593762eek.3
 for <barebox@lists.infradead.org>; Sun, 19 May 2013 11:24:09 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sun, 19 May 2013 20:23:50 +0200
Message-Id: <1368987835-13323-7-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 06/11] arm: mvebu: convert Kirkwood to common init
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This patch converts Marvell Kirkwood SoC init to make use of common
lowlevel and init functions. Postcore initcall will now probe real memory
size, and setup UART console by config option.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Tested-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/include/mach/kirkwood-regs.h |   45 ++++++++++++++--------
 arch/arm/mach-mvebu/kirkwood.c                   |   44 ++++++++++-----------
 2 files changed, 49 insertions(+), 40 deletions(-)

diff --git a/arch/arm/mach-mvebu/include/mach/kirkwood-regs.h b/arch/arm/mach-mvebu/include/mach/kirkwood-regs.h
index 23e221b..39fa379 100644
--- a/arch/arm/mach-mvebu/include/mach/kirkwood-regs.h
+++ b/arch/arm/mach-mvebu/include/mach/kirkwood-regs.h
@@ -17,21 +17,34 @@
 #ifndef __MACH_MVEBU_KIRKWOOD_REGS_H
 #define __MACH_MVEBU_KIRKWOOD_REGS_H
 
-#define KIRKWOOD_INT_REGS_BASE IOMEM(0xd0000000)
-
-#define KIRKWOOD_SDRAM_WIN_BASE (KIRKWOOD_INT_REGS_BASE + 0x1500)
-#define  DDR_BASE_CS_OFF(n)     (0x0000 + ((n) << 3))
-#define   DDR_BASE_CS_HIGH_MASK  0xf
-#define   DDR_BASE_CS_LOW_MASK   0xff000000
-#define  DDR_SIZE_CS_OFF(n)     (0x0004 + ((n) << 3))
-#define   DDR_SIZE_ENABLED       (1 << 0)
-#define   DDR_SIZE_CS_MASK       0x1c
-#define   DDR_SIZE_CS_SHIFT      2
-#define   DDR_SIZE_MASK          0xff000000
-#define KIRKWOOD_SAR_BASE       (KIRKWOOD_INT_REGS_BASE + 0x10030)
-#define  KIRKWOOD_TCLK_BIT      21
-#define KIRKWOOD_UART_BASE      (KIRKWOOD_INT_REGS_BASE + 0x12000)
-#define KIRKWOOD_CPUCTRL_BASE   (KIRKWOOD_INT_REGS_BASE + 0x20100)
-#define KIRKWOOD_TIMER_BASE     (KIRKWOOD_INT_REGS_BASE + 0x20300)
+#include <mach/common.h>
+
+#define KIRKWOOD_INT_REGS_BASE	IOMEM(MVEBU_REMAP_INT_REG_BASE)
+
+#define KIRKWOOD_SDRAM_BASE	(KIRKWOOD_INT_REGS_BASE + 0x00000)
+#define DDR_BASE_CS		0x1500
+#define DDR_BASE_CSn(n)		(DDR_BASE_CS + ((n) * 0x8))
+#define  DDR_BASE_CS_HIGH_MASK	0x0000000f
+#define  DDR_BASE_CS_LOW_MASK	0xff000000
+#define DDR_SIZE_CS		0x1504
+#define DDR_SIZE_CSn(n)		(DDR_SIZE_CS + ((n) * 0x8))
+#define  DDR_SIZE_ENABLED	BIT(0)
+#define  DDR_SIZE_CS_MASK	0x1c
+#define  DDR_SIZE_CS_SHIFT	2
+#define  DDR_SIZE_MASK		0xff000000
+
+#define KIRKWOOD_SAR_BASE	(KIRKWOOD_INT_REGS_BASE + 0x10030)
+#define  SAR_TCLK_FREQ		BIT(21)
+
+#define KIRKWOOD_UART_BASE	(KIRKWOOD_INT_REGS_BASE + 0x12000)
+#define KIRKWOOD_UARTn_BASE(n)	(KIRKWOOD_UART_BASE + ((n) * 0x100))
+
+#define KIRKWOOD_BRIDGE_BASE	(KIRKWOOD_INT_REGS_BASE + 0x20000)
+#define  BRIDGE_RSTOUT_MASK	0x108
+#define  SOFT_RESET_OUT_EN	BIT(2)
+#define  BRIDGE_SYS_SOFT_RESET	0x10c
+#define  SOFT_RESET_EN		BIT(0)
+
+#define KIRKWOOD_TIMER_BASE	(KIRKWOOD_INT_REGS_BASE + 0x20300)
 
 #endif /* __MACH_MVEBU_KIRKWOOD_REGS_H */
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index b5b6aaf..3e16f41 100644
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -16,30 +16,30 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <ns16550.h>
 #include <linux/clk.h>
 #include <linux/clkdev.h>
-#include <ns16550.h>
-#include <mach/kirkwood-regs.h>
 #include <asm/memory.h>
-#include <asm/barebox-arm.h>
+#include <mach/kirkwood-regs.h>
+
+#define CONSOLE_UART_BASE	KIRKWOOD_UARTn_BASE(CONFIG_MVEBU_CONSOLE_UART)
 
 static struct clk *tclk;
 
 static inline void kirkwood_memory_find(unsigned long *phys_base,
-				     unsigned long *phys_size)
+					unsigned long *phys_size)
 {
-	void __iomem *sdram_win = IOMEM(KIRKWOOD_SDRAM_WIN_BASE);
 	int cs;
 
 	*phys_base = ~0;
 	*phys_size = 0;
 
 	for (cs = 0; cs < 4; cs++) {
-		uint32_t base = readl(sdram_win + DDR_BASE_CS_OFF(cs));
-		uint32_t ctrl = readl(sdram_win + DDR_SIZE_CS_OFF(cs));
+		u32 base = readl(KIRKWOOD_SDRAM_BASE + DDR_BASE_CSn(cs));
+		u32 ctrl = readl(KIRKWOOD_SDRAM_BASE + DDR_SIZE_CSn(cs));
 
 		/* Skip non-enabled CS */
-		if (! (ctrl & DDR_SIZE_ENABLED))
+		if ((ctrl & DDR_SIZE_ENABLED) != DDR_SIZE_ENABLED)
 			continue;
 
 		base &= DDR_BASE_CS_LOW_MASK;
@@ -49,34 +49,30 @@ static inline void kirkwood_memory_find(unsigned long *phys_base,
 	}
 }
 
-void __naked __noreturn kirkwood_barebox_entry(void)
-{
-	unsigned long phys_base, phys_size;
-	kirkwood_memory_find(&phys_base, &phys_size);
-	writel('E', 0xD0012000);
-	barebox_arm_entry(phys_base, phys_size, 0);
-}
-
 static struct NS16550_plat uart_plat = {
 	.shift = 2,
 };
 
-int kirkwood_add_uart0(void)
+static int kirkwood_add_uart(void)
 {
 	uart_plat.clock = clk_get_rate(tclk);
 	if (!add_ns16550_device(DEVICE_ID_DYNAMIC,
-				(unsigned int)KIRKWOOD_UART_BASE,
-				32, IORESOURCE_MEM_32BIT, &uart_plat))
+				(unsigned int)CONSOLE_UART_BASE, 32,
+				IORESOURCE_MEM_32BIT, &uart_plat))
 		return -ENODEV;
 	return 0;
 }
 
 static int kirkwood_init_clocks(void)
 {
-	uint32_t sar = readl(KIRKWOOD_SAR_BASE);
+	u32 val = readl(KIRKWOOD_SAR_BASE);
 	unsigned int rate;
 
-	if (sar & (1 << KIRKWOOD_TCLK_BIT))
+	/*
+	 * On Kirkwood, the TCLK frequency can be either
+	 * 166 Mhz or 200 Mhz
+	 */
+	if ((val & SAR_TCLK_FREQ) == SAR_TCLK_FREQ)
 		rate = 166666667;
 	else
 		rate = 200000000;
@@ -95,16 +91,16 @@ static int kirkwood_init_soc(void)
 			   IORESOURCE_MEM, NULL);
 	kirkwood_memory_find(&phys_base, &phys_size);
 	arm_add_mem_device("ram0", phys_base, phys_size);
+	kirkwood_add_uart();
 
 	return 0;
 }
-
 postcore_initcall(kirkwood_init_soc);
 
 void __noreturn reset_cpu(unsigned long addr)
 {
-	writel(0x4, KIRKWOOD_CPUCTRL_BASE + 0x8);
-	writel(0x1, KIRKWOOD_CPUCTRL_BASE + 0xC);
+	writel(SOFT_RESET_OUT_EN, KIRKWOOD_BRIDGE_BASE + BRIDGE_RSTOUT_MASK);
+	writel(SOFT_RESET_EN, KIRKWOOD_BRIDGE_BASE + BRIDGE_SYS_SOFT_RESET);
 	for(;;)
 		;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
