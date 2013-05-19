Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f43.google.com ([74.125.83.43])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ue8HY-0005pe-0z
 for barebox@lists.infradead.org; Sun, 19 May 2013 18:24:42 +0000
Received: by mail-ee0-f43.google.com with SMTP id d41so3267843eek.2
 for <barebox@lists.infradead.org>; Sun, 19 May 2013 11:24:08 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sun, 19 May 2013 20:23:48 +0200
Message-Id: <1368987835-13323-5-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 04/11] arm: mvebu: convert Dove to common init
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This patch converts Marvell Dove SoC init to make use of common lowlevel
and init functions. Postcore initcall will now setup memory controller
base registers to match internal registers base, probe real memory size,
and setup UART console by config option.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/dove.c                   |   56 +++++++++-----------------
 arch/arm/mach-mvebu/include/mach/dove-regs.h |   21 +++++-----
 2 files changed, 32 insertions(+), 45 deletions(-)

diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index f073596..6e8e113 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -17,38 +17,35 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <ns16550.h>
 #include <linux/clk.h>
 #include <linux/clkdev.h>
-#include <ns16550.h>
-#include <mach/dove-regs.h>
 #include <asm/memory.h>
-#include <asm/barebox-arm.h>
+#include <mach/dove-regs.h>
+
+#define CONSOLE_UART_BASE	DOVE_UARTn_BASE(CONFIG_MVEBU_CONSOLE_UART)
 
 static struct clk *tclk;
 
-static inline void dove_remap_reg_base(uint32_t intbase,
-				       uint32_t mcbase)
+static inline void dove_remap_mc_regs(void)
 {
+	void __iomem *mcboot = IOMEM(DOVE_BOOTUP_MC_REGS);
 	uint32_t val;
 
 	/* remap ahb slave base */
 	val  = readl(DOVE_CPU_CTRL) & 0xffff0000;
-	val |= (mcbase & 0xffff0000) >> 16;
+	val |= (DOVE_REMAP_MC_REGS & 0xffff0000) >> 16;
 	writel(val, DOVE_CPU_CTRL);
 
 	/* remap axi bridge address */
 	val  = readl(DOVE_AXI_CTRL) & 0x007fffff;
-	val |= mcbase & 0xff800000;
+	val |= DOVE_REMAP_MC_REGS & 0xff800000;
 	writel(val, DOVE_AXI_CTRL);
 
 	/* remap memory controller base address */
-	val = readl(DOVE_SDRAM_BASE + SDRAM_REGS_BASE_DECODE) & 0x0000ffff;
-	val |= mcbase & 0xffff0000;
-	writel(val, DOVE_SDRAM_BASE + SDRAM_REGS_BASE_DECODE);
-
-	/* remap internal register */
-	val = intbase & 0xfff00000;
-	writel(val, DOVE_BRIDGE_BASE + INT_REGS_BASE_MAP);
+	val = readl(mcboot + SDRAM_REGS_BASE_DECODE) & 0x0000ffff;
+	val |= DOVE_REMAP_MC_REGS & 0xffff0000;
+	writel(val, mcboot + SDRAM_REGS_BASE_DECODE);
 }
 
 static inline void dove_memory_find(unsigned long *phys_base,
@@ -77,32 +74,16 @@ static inline void dove_memory_find(unsigned long *phys_base,
 	}
 }
 
-void __naked __noreturn dove_barebox_entry(void)
-{
-	unsigned long phys_base, phys_size;
-	dove_memory_find(&phys_base, &phys_size);
-	barebox_arm_entry(phys_base, phys_size, 0);
-}
-
-static struct NS16550_plat uart_plat[] = {
-	[0] = { .shift = 2, },
-	[1] = { .shift = 2, },
-	[2] = { .shift = 2, },
-	[3] = { .shift = 2, },
+static struct NS16550_plat uart_plat = {
+	.shift = 2,
 };
 
-int dove_add_uart(int num)
+static int dove_add_uart(void)
 {
-	struct NS16550_plat *plat;
-
-	if (num < 0 || num > 4)
-		return -EINVAL;
-
-	plat = &uart_plat[num];
-	plat->clock = clk_get_rate(tclk);
+	uart_plat.clock = clk_get_rate(tclk);
 	if (!add_ns16550_device(DEVICE_ID_DYNAMIC,
-				(unsigned int)DOVE_UARTn_BASE(num),
-				32, IORESOURCE_MEM_32BIT, plat))
+				(unsigned int)CONSOLE_UART_BASE, 32,
+				IORESOURCE_MEM_32BIT, &uart_plat))
 		return -ENODEV;
 	return 0;
 }
@@ -140,12 +121,15 @@ static int dove_init_soc(void)
 {
 	unsigned long phys_base, phys_size;
 
+	dove_remap_mc_regs();
 	dove_init_clocks();
 	add_generic_device("orion-timer", DEVICE_ID_SINGLE, NULL,
 			   (unsigned int)DOVE_TIMER_BASE, 0x30,
 			   IORESOURCE_MEM, NULL);
 	dove_memory_find(&phys_base, &phys_size);
 	arm_add_mem_device("ram0", phys_base, phys_size);
+	dove_add_uart();
+
 	return 0;
 }
 postcore_initcall(dove_init_soc);
diff --git a/arch/arm/mach-mvebu/include/mach/dove-regs.h b/arch/arm/mach-mvebu/include/mach/dove-regs.h
index 5e20368..519457e 100644
--- a/arch/arm/mach-mvebu/include/mach/dove-regs.h
+++ b/arch/arm/mach-mvebu/include/mach/dove-regs.h
@@ -17,15 +17,18 @@
 #ifndef __MACH_MVEBU_DOVE_REGS_H
 #define __MACH_MVEBU_DOVE_REGS_H
 
-/* At Boot-up register base is at 0xd000000 */
-#define DOVE_INT_REGS_BOOTUP	0xd0000000
-#define DOVE_MC_REGS_BOOTUP	0xd0800000
-/* Linux wants it remapped to 0xf1000000 */
-#define DOVE_INT_REGS_REMAP	0xf1000000
-#define DOVE_MC_REGS_REMAP	0xf1800000
-
-#define DOVE_INT_REGS_BASE	IOMEM(DOVE_INT_REGS_BOOTUP)
-#define DOVE_MC_REGS_BASE	IOMEM(DOVE_MC_REGS_BOOTUP)
+#include <mach/common.h>
+
+/*
+ * Even after MVEBU SoC internal register base remap. Dove MC
+ * registers are still at 0xd0800000. We remap it right after
+ * internal registers to 0xf1800000.
+*/
+#define DOVE_BOOTUP_MC_REGS	0xd0800000
+#define DOVE_REMAP_MC_REGS	0xf1800000
+
+#define DOVE_INT_REGS_BASE	IOMEM(MVEBU_REMAP_INT_REG_BASE)
+#define DOVE_MC_REGS_BASE	IOMEM(DOVE_REMAP_MC_REGS)
 
 #define DOVE_UART_BASE		(DOVE_INT_REGS_BASE + 0x12000)
 #define DOVE_UARTn_BASE(n)	(DOVE_UART_BASE + ((n) * 0x100))
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
