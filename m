Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dTS8j-0006h2-0b
 for barebox@lists.infradead.org; Fri, 07 Jul 2017 12:13:49 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Fri,  7 Jul 2017 14:12:29 +0200
Message-Id: <20170707121242.18499-10-sam@ravnborg.org>
In-Reply-To: <20170707121000.GA16920@ravnborg.org>
References: <20170707121000.GA16920@ravnborg.org>
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
Subject: [PATCH 10/23] at91: delete at91sam926x_lowlevel_init
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

The last user of at91sam926x_lowlevel_init is gone, so delete it

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/mach-at91/Kconfig                     |   4 -
 arch/arm/mach-at91/Makefile                    |   2 -
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c | 199 -------------------------
 3 files changed, 205 deletions(-)
 delete mode 100644 arch/arm/mach-at91/at91sam926x_lowlevel_init.c

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 1c9dbd578..e38589127 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -33,10 +33,6 @@ config HAVE_AT91_GENERATED_CLK
 config HAVE_AT91_BOOTSTRAP
 	bool
 
-# Select is board uses the common at91sam926x_lowlevel_init
-config AT91SAM926X_LWL
-	bool
-
 # Select if board uses barebox reset vector from mach-at91
 # as implemented in the *lowlevel_init.c files
 config AT91SAM9260_LWL
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 587402903..8293f279a 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -8,8 +8,6 @@ obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
 
 obj-$(CONFIG_AT91_BOOTSTRAP) += bootstrap.o
 
-lwl-$(CONFIG_AT91SAM926X_LWL) += at91sam926x_lowlevel_init.o
-
 lwl-$(CONFIG_AT91SAM9260_LWL) += at91sam9260_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9263_LWL) += at91sam9263_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9G45_LWL) += at91sam9g45_lowlevel_init.o
diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
deleted file mode 100644
index 5dd8bc4e6..000000000
--- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
+++ /dev/null
@@ -1,199 +0,0 @@
-/*
- * Copyright (C) 2008 Ronetix Ilko Iliev (www.ronetix.at)
- * Copyright (C) 2009-2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * Under GPLv2
-  */
-
-#define __LOWLEVEL_INIT__
-
-#include <common.h>
-#include <asm/system.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-#include <mach/hardware.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91_pio.h>
-#include <mach/at91_rstc.h>
-#include <mach/at91_wdt.h>
-#include <mach/at91sam9_matrix.h>
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91sam9_smc.h>
-#include <mach/at91_lowlevel_init.h>
-#include <mach/gpio.h>
-#include <mach/io.h>
-#include <init.h>
-#include <linux/sizes.h>
-
-#include "gpio.h"
-
-static void inline access_sdram(void)
-{
-	writel(0x00000000, AT91_SDRAM_BASE);
-}
-
-static void inline pmc_check_mckrdy(void)
-{
-	u32 r;
-
-	do {
-		r = at91_pmc_read(AT91_PMC_SR);
-	} while (!(r & AT91_PMC_MCKRDY));
-}
-
-static int inline running_in_sram(void)
-{
-	u32 addr = get_pc();
-
-	addr >>= 28;
-	return addr == 0;
-}
-
-#define at91_sdramc_read(field) \
-	__raw_readl(cfg->sdramc + field)
-
-#define at91_sdramc_write(field, value) \
-	__raw_writel(value, cfg->sdramc + field)
-
-void __bare_init at91sam926x_sdramc_init(struct at91sam926x_lowlevel_cfg *cfg)
-{
-	u32 r;
-	int i;
-	int in_sram = running_in_sram();
-
-	/*
-	 * SDRAMC Check if Refresh Timer Counter is already initialized
-	 */
-	r = at91_sdramc_read(AT91_SDRAMC_TR);
-	if (r && !in_sram)
-		return;
-
-	/* SDRAMC_MR : Normal Mode */
-	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);
-
-	/* SDRAMC_TR - Refresh Timer register */
-	at91_sdramc_write(AT91_SDRAMC_TR, cfg->sdrc_tr1);
-
-	/* SDRAMC_CR - Configuration register*/
-	at91_sdramc_write(AT91_SDRAMC_CR, cfg->sdrc_cr);
-
-	/* Memory Device Type */
-	at91_sdramc_write(AT91_SDRAMC_MDR, cfg->sdrc_mdr);
-
-	/* SDRAMC_MR : Precharge All */
-	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_PRECHARGE);
-
-	/* access SDRAM */
-	access_sdram();
-
-	/* SDRAMC_MR : refresh */
-	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_REFRESH);
-
-	/* access SDRAM 8 times */
-	for (i = 0; i < 8; i++)
-		access_sdram();
-
-	/* SDRAMC_MR : Load Mode Register */
-	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_LMR);
-
-	/* access SDRAM */
-	access_sdram();
-
-	/* SDRAMC_MR : Normal Mode */
-	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);
-
-	/* access SDRAM */
-	access_sdram();
-
-	/* SDRAMC_TR : Refresh Timer Counter */
-	at91_sdramc_write(AT91_SDRAMC_TR, cfg->sdrc_tr2);
-
-	/* access SDRAM */
-	access_sdram();
-}
-
-void __bare_init at91sam926x_lowlevel_init(struct at91sam926x_lowlevel_cfg *cfg)
-{
-	u32 r;
-	int in_sram = running_in_sram();
-
-	at91sam926x_lowlevel_board_config(cfg);
-
-	__raw_writel(cfg->wdt_mr, AT91_BASE_WDT + AT91_WDT_MR);
-
-	/* configure PIOx as EBI0 D[16-31] */
-	at91_mux_gpio_disable(cfg->pio, cfg->ebi_pio_pdr);
-	at91_mux_set_pullup(cfg->pio, cfg->ebi_pio_ppudr, true);
-	if (cfg->ebi_pio_is_peripha)
-		at91_mux_set_A_periph(cfg->pio, cfg->ebi_pio_ppudr);
-
-	at91_sys_write(cfg->matrix_csa, cfg->ebi_csa);
-
-	/* flash */
-	at91_smc_write(cfg->smc_cs, AT91_SAM9_SMC_MODE, cfg->smc_mode);
-
-	at91_smc_write(cfg->smc_cs, AT91_SMC_CYCLE, cfg->smc_cycle);
-
-	at91_smc_write(cfg->smc_cs, AT91_SMC_PULSE, cfg->smc_pulse);
-
-	at91_smc_write(cfg->smc_cs, AT91_SMC_SETUP, cfg->smc_setup);
-
-	/*
-	 * PMC Check if the PLL is already initialized
-	 */
-	r = at91_pmc_read(AT91_PMC_MCKR);
-	if (r & AT91_PMC_CSS && !in_sram)
-		return;
-
-	/*
-	 * Enable the Main Oscillator
-	 */
-	at91_pmc_write(AT91_CKGR_MOR, cfg->pmc_mor);
-
-	do {
-		r = at91_pmc_read(AT91_PMC_SR);
-	} while (!(r & AT91_PMC_MOSCS));
-
-	/*
-	 * PLLAR: x MHz for PCK
-	 */
-	at91_pmc_write(AT91_CKGR_PLLAR, cfg->pmc_pllar);
-
-	do {
-		r = at91_pmc_read(AT91_PMC_SR);
-	} while (!(r & AT91_PMC_LOCKA));
-
-	/*
-	 * PCK/x = MCK Master Clock from SLOW
-	 */
-	at91_pmc_write(AT91_PMC_MCKR, cfg->pmc_mckr1);
-
-	pmc_check_mckrdy();
-
-	/*
-	 * PCK/x = MCK Master Clock from PLLA
-	 */
-	at91_pmc_write(AT91_PMC_MCKR, cfg->pmc_mckr2);
-
-	pmc_check_mckrdy();
-
-	/*
-	 * Init SDRAM
-	 */
-	at91sam926x_sdramc_init(cfg);
-
-	/* User reset enable*/
-	at91_sys_write(AT91_RSTC_MR, cfg->rstc_rmr);
-
-#ifdef CONFIG_SYS_MATRIX_MCFG_REMAP
-	/* MATRIX_MCFG - REMAP all masters */
-	at91_sys_write(AT91_MATRIX_MCFG0, 0x1FF);
-#endif
-	/*
-	 * When boot from external boot
-	 * we need to enable mck and ohter clock
-	 * so enable all of them
-	 * We will shutdown what we don't need later
-	 */
-	at91_pmc_write(AT91_PMC_PCER, 0xffffffff);
-}
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
