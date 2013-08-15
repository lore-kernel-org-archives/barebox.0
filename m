Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x233.google.com ([2a00:1450:4008:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9xXm-00061o-Jk
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 13:24:52 +0000
Received: by mail-bk0-f51.google.com with SMTP id mx10so219568bkb.24
 for <barebox@lists.infradead.org>; Thu, 15 Aug 2013 06:24:27 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Thu, 15 Aug 2013 15:24:19 +0200
Message-Id: <1376573059-15055-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1376573059-15055-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1376573059-15055-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 3/3] ARM: dove: remove temporary clock and non-DT device
 probing
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

With OF clock providers, we can now remove temporary clocks and clock
aliases. Also, non-DT device probing for timer and serial is removed.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/dove.c |   58 --------------------------------------------
 1 files changed, 0 insertions(+), 58 deletions(-)

diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index 16ee116..f081e50 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -17,16 +17,9 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <ns16550.h>
-#include <linux/clk.h>
-#include <linux/clkdev.h>
 #include <asm/memory.h>
 #include <mach/dove-regs.h>
 
-#define CONSOLE_UART_BASE	DOVE_UARTn_BASE(CONFIG_MVEBU_CONSOLE_UART)
-
-static struct clk *tclk;
-
 static inline void dove_remap_mc_regs(void)
 {
 	void __iomem *mcboot = IOMEM(DOVE_BOOTUP_MC_REGS);
@@ -74,64 +67,13 @@ static inline void dove_memory_find(unsigned long *phys_base,
 	}
 }
 
-static struct NS16550_plat uart_plat = {
-	.shift = 2,
-};
-
-static int dove_add_uart(void)
-{
-	uart_plat.clock = clk_get_rate(tclk);
-	if (!add_ns16550_device(DEVICE_ID_DYNAMIC,
-				(unsigned int)CONSOLE_UART_BASE, 32,
-				IORESOURCE_MEM_32BIT, &uart_plat))
-		return -ENODEV;
-	return 0;
-}
-
-/*
- * Dove TCLK sample-at-reset configuation
- *
- * SAR0[24:23] : TCLK frequency
- *		 0 = 166 MHz
- *		 1 = 125 MHz
- *		 others reserved.
- */
-static int dove_init_clocks(void)
-{
-	uint32_t strap, sar = readl(DOVE_SAR_BASE + SAR0);
-	unsigned int rate;
-
-	strap = (sar & TCLK_FREQ_MASK) >> TCLK_FREQ_SHIFT;
-	switch (strap) {
-	case 0:
-		rate = 166666667;
-		break;
-	case 1:
-		rate = 125000000;
-		break;
-	default:
-		panic("Unknown TCLK strapping %d\n", strap);
-	}
-
-	tclk = clk_fixed("tclk", rate);
-	return 0;
-}
-
 static int dove_init_soc(void)
 {
 	unsigned long phys_base, phys_size;
 
 	dove_remap_mc_regs();
-	dove_init_clocks();
-	clkdev_add_physbase(tclk, (unsigned int)DOVE_TIMER_BASE, NULL);
-	clkdev_add_physbase(tclk, (unsigned int)DOVE_SPI0_BASE, NULL);
-	clkdev_add_physbase(tclk, (unsigned int)DOVE_SPI1_BASE, NULL);
-	add_generic_device("orion-timer", DEVICE_ID_SINGLE, NULL,
-			   (unsigned int)DOVE_TIMER_BASE, 0x30,
-			   IORESOURCE_MEM, NULL);
 	dove_memory_find(&phys_base, &phys_size);
 	arm_add_mem_device("ram0", phys_base, phys_size);
-	dove_add_uart();
 
 	return 0;
 }
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
