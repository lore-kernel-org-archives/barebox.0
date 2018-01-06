Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXvkn-0007ot-7E
 for barebox@lists.infradead.org; Sat, 06 Jan 2018 21:12:00 +0000
Received: by mail-lf0-x243.google.com with SMTP id c19so8474302lfg.3
 for <barebox@lists.infradead.org>; Sat, 06 Jan 2018 13:11:35 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Sat,  6 Jan 2018 22:11:00 +0100
Message-Id: <20180106211118.24249-4-sam@ravnborg.org>
In-Reply-To: <20180106210450.GA21127@ravnborg.org>
References: <20180106210450.GA21127@ravnborg.org>
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
Subject: [PATCH v5 04/22] arm: at91: add at91sam926x_board_init.h
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

To prepare moving reset code to board code create at91sam926x_board_init.h.

at91sam926x_board_init.h is a copy of at91sam926x_lowlevel_init.c
with a few changes:
- We no longer call board code from this function
- The struct is renamed to avoid name clashes
- Function renamed to better match the prurpose

This file allows board code to include at91sam926x_board_init.h
and use the init functions in their init code.

Users must select AT91SAM926X_BOARD_INIT

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../include/mach/at91sam926x_board_init.h          | 222 +++++++++++++++++++++
 1 file changed, 222 insertions(+)
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam926x_board_init.h

diff --git a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
new file mode 100644
index 000000000..54d67404c
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
@@ -0,0 +1,222 @@
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
+static void __always_inline access_sdram(void)
+{
+	writel(0x00000000, AT91_SDRAM_BASE);
+}
+
+static void __always_inline pmc_check_mckrdy(void)
+{
+	u32 r;
+
+	do {
+		r = at91_pmc_read(AT91_PMC_SR);
+	} while (!(r & AT91_PMC_MCKRDY));
+}
+
+static int __always_inline running_in_sram(void)
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
+static void __always_inline at91sam926x_sdramc_init(struct at91sam926x_board_cfg *cfg)
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
+static void __always_inline at91sam926x_board_init(struct at91sam926x_board_cfg *cfg)
+{
+	u32 r;
+
+	if (!IS_ENABLED(CONFIG_AT91SAM926X_BOARD_INIT))
+		return;
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
+	if ((r & AT91_PMC_CSS) && !running_in_sram())
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
