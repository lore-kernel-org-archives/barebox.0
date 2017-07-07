Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dTS8L-0006dR-Mi
 for barebox@lists.infradead.org; Fri, 07 Jul 2017 12:13:21 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Fri,  7 Jul 2017 14:12:22 +0200
Message-Id: <20170707121242.18499-3-sam@ravnborg.org>
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
Subject: [PATCH 03/23] at91sam9263ek: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Create a new file at91sam926x_board_init.h which
is a copy of at91sam926x_lowlevel_init.c with a few minor
adjustments:
- We no longer call board code from this function
- The struct is renamed to avoid name clashes
- the function is rename to better match the prurpose

This file will be used in subsequent transformations

Otherwise just added the reset vector to the board code
and drop the now obsolete CONFIG selectst

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/at91sam9263ek/lowlevel_init.c      |  43 ++--
 arch/arm/mach-at91/Kconfig                         |   2 -
 .../include/mach/at91sam926x_board_init.h          | 220 +++++++++++++++++++++
 3 files changed, 252 insertions(+), 13 deletions(-)
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam926x_board_init.h

diff --git a/arch/arm/boards/at91sam9263ek/lowlevel_init.c b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
index 2f8b312d3..70e0da3b1 100644
--- a/arch/arm/boards/at91sam9263ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
@@ -4,21 +4,17 @@
  * Under GPLv2
  */
 
-#include <common.h>
-#include <init.h>
-#include <mach/hardware.h>
-#include <mach/at91_rstc.h>
-#include <mach/at91_wdt.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91sam9_smc.h>
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91sam9_matrix.h>
-#include <mach/at91_lowlevel_init.h>
+#include <linux/sizes.h>
+
+#include <asm/barebox-arm.h>
+
+#include <mach/at91sam926x_board_init.h>
+#include <mach/at91sam9263_matrix.h>
 
 #define MASTER_PLL_MUL		171
 #define MASTER_PLL_DIV		14
 
-void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg)
+static void __bare_init at91sam9263ek_board_config(struct at91sam926x_board_cfg *cfg)
 {
 	/* Disable Watchdog */
 	cfg->wdt_mr =
@@ -102,3 +98,28 @@ void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_c
 		AT91_RSTC_RSTTYP_WAKEUP |
 		AT91_RSTC_RSTTYP_WATCHDOG;
 }
+
+static void __bare_init at91sam9263ek_init(void)
+{
+	struct at91sam926x_board_cfg cfg;
+
+	cfg.pio = IOMEM(AT91SAM9263_BASE_PIOD);
+	cfg.sdramc = IOMEM(AT91SAM9263_BASE_SDRAMC0);
+	cfg.ebi_pio_is_peripha = true;
+	cfg.matrix_csa = AT91_MATRIX_EBI0CSA;
+
+	at91sam9263ek_board_config(&cfg);
+	at91sam926x_board_init(&cfg);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
+	                  NULL);
+}
+
+void __naked __bare_init barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
+
+	at91sam9263ek_init();
+}
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 970ee07b1..99a8fdeb2 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -437,8 +437,6 @@ config MACH_AT91SAM9263EK
 	bool "Atmel AT91SAM9263-EK"
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
 	select HAVE_AT91_BOOTSTRAP
-	select AT91SAM9263_LWL
-	select AT91SAM926X_LWL
 	help
 	  Say y here if you are using Atmel's AT91SAM9263-EK Evaluation board
 
diff --git a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
new file mode 100644
index 000000000..11959ae07
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
@@ -0,0 +1,220 @@
+#ifndef __AT91SAM926X_BOARD_INIT_H__
+#define __AT91SAM926X_BOARD_INIT_H__
+/*
+ * Copyright (C) 2008 Ronetix Ilko Iliev (www.ronetix.at)
+ * Copyright (C) 2009-2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <init.h>
+
+#include <mach/at91sam9_sdramc.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/at91_rstc.h>
+#include <mach/at91_pio.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91_wdt.h>
+#include <mach/hardware.h>
+#include <mach/gpio.h>
+
+struct at91sam926x_board_cfg {
+	/* SoC specific */
+	void __iomem *pio;
+	void __iomem *sdramc;
+	u32 ebi_pio_is_peripha;
+	u32 matrix_csa;
+
+	/* board specific */
+	u32 wdt_mr;
+	u32 ebi_pio_pdr;
+	u32 ebi_pio_ppudr;
+	u32 ebi_csa;
+	u32 smc_cs;
+	u32 smc_mode;
+	u32 smc_cycle;
+	u32 smc_pulse;
+	u32 smc_setup;
+	u32 pmc_mor;
+	u32 pmc_pllar;
+	u32 pmc_mckr1;
+	u32 pmc_mckr2;
+	u32 sdrc_cr;
+	u32 sdrc_tr1;
+	u32 sdrc_mdr;
+	u32 sdrc_tr2;
+	u32 rstc_rmr;
+};
+
+
+static void inline access_sdram(void)
+{
+	writel(0x00000000, AT91_SDRAM_BASE);
+}
+
+static void inline pmc_check_mckrdy(void)
+{
+	u32 r;
+
+	do {
+		r = at91_pmc_read(AT91_PMC_SR);
+	} while (!(r & AT91_PMC_MCKRDY));
+}
+
+static int inline running_in_sram(void)
+{
+	u32 addr = get_pc();
+
+	addr >>= 28;
+	return addr == 0;
+}
+
+#define at91_sdramc_read(field) \
+	__raw_readl(cfg->sdramc + field)
+
+#define at91_sdramc_write(field, value) \
+	__raw_writel(value, cfg->sdramc + field)
+
+static void inline __bare_init at91sam926x_sdramc_init(struct at91sam926x_board_cfg *cfg)
+{
+	u32 r;
+	int i;
+	int in_sram = running_in_sram();
+
+	/*
+	 * SDRAMC Check if Refresh Timer Counter is already initialized
+	 */
+	r = at91_sdramc_read(AT91_SDRAMC_TR);
+	if (r && !in_sram)
+		return;
+
+	/* SDRAMC_MR : Normal Mode */
+	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);
+
+	/* SDRAMC_TR - Refresh Timer register */
+	at91_sdramc_write(AT91_SDRAMC_TR, cfg->sdrc_tr1);
+
+	/* SDRAMC_CR - Configuration register*/
+	at91_sdramc_write(AT91_SDRAMC_CR, cfg->sdrc_cr);
+
+	/* Memory Device Type */
+	at91_sdramc_write(AT91_SDRAMC_MDR, cfg->sdrc_mdr);
+
+	/* SDRAMC_MR : Precharge All */
+	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_PRECHARGE);
+
+	/* access SDRAM */
+	access_sdram();
+
+	/* SDRAMC_MR : refresh */
+	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_REFRESH);
+
+	/* access SDRAM 8 times */
+	for (i = 0; i < 8; i++)
+		access_sdram();
+
+	/* SDRAMC_MR : Load Mode Register */
+	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_LMR);
+
+	/* access SDRAM */
+	access_sdram();
+
+	/* SDRAMC_MR : Normal Mode */
+	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);
+
+	/* access SDRAM */
+	access_sdram();
+
+	/* SDRAMC_TR : Refresh Timer Counter */
+	at91_sdramc_write(AT91_SDRAMC_TR, cfg->sdrc_tr2);
+
+	/* access SDRAM */
+	access_sdram();
+}
+
+static void inline __bare_init at91sam926x_board_init(struct at91sam926x_board_cfg *cfg)
+{
+	u32 r;
+	int in_sram = running_in_sram();
+
+	__raw_writel(cfg->wdt_mr, AT91_BASE_WDT + AT91_WDT_MR);
+
+	/* configure PIOx as EBI0 D[16-31] */
+	at91_mux_gpio_disable(cfg->pio, cfg->ebi_pio_pdr);
+	at91_mux_set_pullup(cfg->pio, cfg->ebi_pio_ppudr, true);
+	if (cfg->ebi_pio_is_peripha)
+		at91_mux_set_A_periph(cfg->pio, cfg->ebi_pio_ppudr);
+
+	at91_sys_write(cfg->matrix_csa, cfg->ebi_csa);
+
+	/* flash */
+	at91_smc_write(cfg->smc_cs, AT91_SAM9_SMC_MODE, cfg->smc_mode);
+
+	at91_smc_write(cfg->smc_cs, AT91_SMC_CYCLE, cfg->smc_cycle);
+
+	at91_smc_write(cfg->smc_cs, AT91_SMC_PULSE, cfg->smc_pulse);
+
+	at91_smc_write(cfg->smc_cs, AT91_SMC_SETUP, cfg->smc_setup);
+
+	/*
+	 * PMC Check if the PLL is already initialized
+	 */
+	r = at91_pmc_read(AT91_PMC_MCKR);
+	if (r & AT91_PMC_CSS && !in_sram)
+		return;
+
+	/*
+	 * Enable the Main Oscillator
+	 */
+	at91_pmc_write(AT91_CKGR_MOR, cfg->pmc_mor);
+
+	do {
+		r = at91_pmc_read(AT91_PMC_SR);
+	} while (!(r & AT91_PMC_MOSCS));
+
+	/*
+	 * PLLAR: x MHz for PCK
+	 */
+	at91_pmc_write(AT91_CKGR_PLLAR, cfg->pmc_pllar);
+
+	do {
+		r = at91_pmc_read(AT91_PMC_SR);
+	} while (!(r & AT91_PMC_LOCKA));
+
+	/*
+	 * PCK/x = MCK Master Clock from SLOW
+	 */
+	at91_pmc_write(AT91_PMC_MCKR, cfg->pmc_mckr1);
+
+	pmc_check_mckrdy();
+
+	/*
+	 * PCK/x = MCK Master Clock from PLLA
+	 */
+	at91_pmc_write(AT91_PMC_MCKR, cfg->pmc_mckr2);
+
+	pmc_check_mckrdy();
+
+	/*
+	 * Init SDRAM
+	 */
+	at91sam926x_sdramc_init(cfg);
+
+	/* User reset enable*/
+	at91_sys_write(AT91_RSTC_MR, cfg->rstc_rmr);
+
+#ifdef CONFIG_SYS_MATRIX_MCFG_REMAP
+	/* MATRIX_MCFG - REMAP all masters */
+	at91_sys_write(AT91_MATRIX_MCFG0, 0x1FF);
+#endif
+	/*
+	 * When boot from external boot
+	 * we need to enable mck and ohter clock
+	 * so enable all of them
+	 * We will shutdown what we don't need later
+	 */
+	at91_pmc_write(AT91_PMC_PCER, 0xffffffff);
+}
+
+#endif /* __AT91SAM926X_BOARD_INIT_H__ */
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
