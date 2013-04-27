Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp53.i.mail.ru ([94.100.177.113])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UW8Sr-0007tF-O6
 for barebox@lists.infradead.org; Sat, 27 Apr 2013 16:59:11 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 27 Apr 2013 20:58:55 +0400
Message-Id: <1367081935-6738-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1367081935-6738-1-git-send-email-shc_work@mail.ru>
References: <1367081935-6738-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] ARM: Use syslib instead of using private functions
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/edb93xx/early_udelay.h | 30 ------------------------------
 arch/arm/boards/edb93xx/pll_cfg.c      |  4 ++--
 arch/arm/boards/edb93xx/sdram_cfg.c    |  6 +++---
 arch/arm/mach-omap/omap4_generic.c     | 10 ++--------
 4 files changed, 7 insertions(+), 43 deletions(-)
 delete mode 100644 arch/arm/boards/edb93xx/early_udelay.h

diff --git a/arch/arm/boards/edb93xx/early_udelay.h b/arch/arm/boards/edb93xx/early_udelay.h
deleted file mode 100644
index 97e018a..0000000
--- a/arch/arm/boards/edb93xx/early_udelay.h
+++ /dev/null
@@ -1,30 +0,0 @@
-/*
- * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
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
-
-/* delay execution before timers are initialized */
-static inline void early_udelay(uint32_t usecs)
-{
-	/* loop takes 4 cycles at 5.0ns (fastest case, running at 200MHz) */
-	register uint32_t loops = usecs * (1000 / 20);
-
-	__asm__ volatile ("1:\n"
-			"subs %0, %1, #1\n"
-			"bne 1b":"=r" (loops):"0" (loops));
-}
diff --git a/arch/arm/boards/edb93xx/pll_cfg.c b/arch/arm/boards/edb93xx/pll_cfg.c
index 9d7e178..95f9fc1 100644
--- a/arch/arm/boards/edb93xx/pll_cfg.c
+++ b/arch/arm/boards/edb93xx/pll_cfg.c
@@ -23,7 +23,7 @@
 #include <common.h>
 #include <io.h>
 #include "pll_cfg.h"
-#include "early_udelay.h"
+#include <asm/syslib.h>
 
 void pll_cfg(void)
 {
@@ -50,5 +50,5 @@ void pll_cfg(void)
 	 * the user's guide recommends to wait at least 1 ms for PLL2 to
 	 * stabilize
 	 */
-	early_udelay(1000);
+	sdelay(1000 * (1000 / 20));
 }
diff --git a/arch/arm/boards/edb93xx/sdram_cfg.c b/arch/arm/boards/edb93xx/sdram_cfg.c
index 5c2a537..9e8787e 100644
--- a/arch/arm/boards/edb93xx/sdram_cfg.c
+++ b/arch/arm/boards/edb93xx/sdram_cfg.c
@@ -21,7 +21,7 @@
 #include <common.h>
 #include <io.h>
 #include "sdram_cfg.h"
-#include "early_udelay.h"
+#include <asm/syslib.h>
 
 #define PROGRAM_MODE_REG(bank)		(*(volatile uint32_t *)		\
 		(SDRAM_BASE_ADDR | SDRAM_BANK_SEL_##bank | SDRAM_MODE_REG_VAL))
@@ -46,7 +46,7 @@ void sdram_cfg(void)
 	/* Issue continous NOP commands */
 	writel(GLCONFIG_INIT | GLCONFIG_MRS | GLCONFIG_CKE, &sdram->glconfig);
 
-	early_udelay(200);
+	sdelay(200 * (1000 / 20));
 
 	precharge_all_banks();
 
@@ -102,7 +102,7 @@ static void setup_refresh_timer(void)
 	 * Wait at least 80 clock cycles to provide 8 refresh cycles
 	 * to all SDRAMs
 	 */
-	early_udelay(1);
+	sdelay(1 * (1000 / 20));
 
 	/*
 	 * Program refresh timer with normal value
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 9d26f97..a73a722 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -152,12 +152,6 @@ static void wait_for_command_complete(void)
 
 #define CS1_MR(mr)	((mr) | 0x80000000)
 
-static inline void delay(unsigned long loops)
-{
-	__asm__ volatile ("1:\n" "subs %0, %1, #1\n"
-			  "bne 1b" : "=r" (loops) : "0"(loops));
-}
-
 int omap4_emif_config(unsigned int base, const struct ddr_regs *ddr_regs)
 {
 	/*
@@ -229,7 +223,7 @@ int omap4_emif_config(unsigned int base, const struct ddr_regs *ddr_regs)
 	writel(MR10_ZQINIT, base + EMIF_LPDDR2_MODE_REG_DATA);
 
 	/* wait for tZQINIT=1us  */
-	delay(10);
+	sdelay(10);
 
 	/* set MR1 register */
 	writel(MR1_ADDR, base + EMIF_LPDDR2_MODE_REG_CFG);
@@ -329,7 +323,7 @@ void omap4_ddr_init(const struct ddr_regs *ddr_regs,
 	/* Set DLL_OVERRIDE = 0 */
 	writel(0x0, CM_DLL_CTRL);
 
-	delay(200);
+	sdelay(200);
 
 	/* Check for DDR PHY ready for EMIF1 & EMIF2 */
 	while (((readl(OMAP44XX_EMIF1_BASE + EMIF_STATUS) & 0x04) != 0x04) \
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
