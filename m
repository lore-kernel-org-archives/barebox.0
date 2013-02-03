Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21Rg-00034O-KU
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:25:32 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 3DA3A104EC43
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:35:34 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:24:12 +0100
Message-Id: <1359905053-13109-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359905053-13109-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130203152218.GF18068@game.jcrosoft.org>
 <1359905053-13109-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] at91sam926x_lowlevel_init: use struct to pass soc config
To: barebox@lists.infradead.org

this will allow to pass more paraemeter to at91sam926x_lowlevel_init
and drop AT91_BASE_SYS

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9260_lowlevel_init.c     |   18 ++++++--
 arch/arm/mach-at91/at91sam9261_lowlevel_init.c     |   18 ++++++--
 arch/arm/mach-at91/at91sam9263_lowlevel_init.c     |   18 ++++++--
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c     |   44 ++++++++++----------
 .../mach-at91/include/mach/at91_lowlevel_init.h    |   10 ++++-
 5 files changed, 71 insertions(+), 37 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9260_lowlevel_init.c b/arch/arm/mach-at91/at91sam9260_lowlevel_init.c
index 875c767..d12572d 100644
--- a/arch/arm/mach-at91/at91sam9260_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam9260_lowlevel_init.c
@@ -23,14 +23,24 @@
 #include <init.h>
 #include <sizes.h>
 
+void __bare_init at91sam9260_lowlevel_init(void)
+{
+	struct at91sam926x_lowlevel_cfg cfg;
+
+	cfg.pio = IOMEM(AT91SAM9260_BASE_PIOC);
+	cfg.ebi_pio_is_peripha = false;
+	cfg.matrix_csa = AT91_MATRIX_EBICSA;
+
+	at91sam926x_lowlevel_init(&cfg);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(), 0);
+}
+
 void __naked __bare_init reset(void)
 {
 	common_reset();
 
 	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE - 16);
 
-	at91sam926x_lowlevel_init(IOMEM(AT91SAM9260_BASE_PIOC), false,
-				  AT91_MATRIX_EBICSA);
-
-	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(), 0);
+	at91sam9260_lowlevel_init();
 }
diff --git a/arch/arm/mach-at91/at91sam9261_lowlevel_init.c b/arch/arm/mach-at91/at91sam9261_lowlevel_init.c
index beaddc8..35d56b6 100644
--- a/arch/arm/mach-at91/at91sam9261_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam9261_lowlevel_init.c
@@ -23,14 +23,24 @@
 #include <init.h>
 #include <sizes.h>
 
+void __bare_init at91sam9261_lowlevel_init(void)
+{
+	struct at91sam926x_lowlevel_cfg cfg;
+
+	cfg.pio = IOMEM(AT91SAM9261_BASE_PIOC);
+	cfg.ebi_pio_is_peripha = false;
+	cfg.matrix_csa = AT91_MATRIX_EBICSA;
+
+	at91sam926x_lowlevel_init(&cfg);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(), 0);
+}
+
 void __naked __bare_init reset(void)
 {
 	common_reset();
 
 	arm_setup_stack(AT91SAM9261_SRAM_BASE + AT91SAM9261_SRAM_SIZE - 16);
 
-	at91sam926x_lowlevel_init(IOMEM(AT91SAM9261_BASE_PIOC), false,
-				  AT91_MATRIX_EBICSA);
-
-	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(), 0);
+	at91sam9261_lowlevel_init();
 }
diff --git a/arch/arm/mach-at91/at91sam9263_lowlevel_init.c b/arch/arm/mach-at91/at91sam9263_lowlevel_init.c
index 5102051..07a3ac9 100644
--- a/arch/arm/mach-at91/at91sam9263_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam9263_lowlevel_init.c
@@ -23,14 +23,24 @@
 #include <init.h>
 #include <sizes.h>
 
+void __bare_init at91sam9263_lowlevel_init(void)
+{
+	struct at91sam926x_lowlevel_cfg cfg;
+
+	cfg.pio = IOMEM(AT91SAM9263_BASE_PIOD);
+	cfg.ebi_pio_is_peripha = true;
+	cfg.matrix_csa = AT91_MATRIX_EBI0CSA;
+
+	at91sam926x_lowlevel_init(&cfg);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(), 0);
+}
+
 void __naked __bare_init reset(void)
 {
 	common_reset();
 
 	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
 
-	at91sam926x_lowlevel_init(IOMEM(AT91SAM9263_BASE_PIOD), true,
-				  AT91_MATRIX_EBI0CSA);
-
-	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(), 0);
+	at91sam9263_lowlevel_init();
 }
diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
index 75b080d..1e3f939 100644
--- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
@@ -49,34 +49,32 @@ static int inline running_in_sram(void)
 	return addr == 0;
 }
 
-void __bare_init at91sam926x_lowlevel_init(void *pio, bool is_pio_asr,
-					   u32 matrix_csa)
+void __bare_init at91sam926x_lowlevel_init(struct at91sam926x_lowlevel_cfg *cfg)
 {
 	u32 r;
 	int i;
 	int in_sram = running_in_sram();
-	struct at91sam926x_lowlevel_cfg cfg;
 
-	at91sam926x_lowlevel_board_config(&cfg);
+	at91sam926x_lowlevel_board_config(cfg);
 
-	__raw_writel(cfg.wdt_mr, AT91_BASE_WDT + AT91_WDT_MR);
+	__raw_writel(cfg->wdt_mr, AT91_BASE_WDT + AT91_WDT_MR);
 
 	/* configure PIOx as EBI0 D[16-31] */
-	at91_mux_gpio_disable(pio, cfg.ebi_pio_pdr);
-	at91_mux_set_pullup(pio, cfg.ebi_pio_ppudr, true);
-	if (is_pio_asr)
-		at91_mux_set_A_periph(pio, cfg.ebi_pio_ppudr);
+	at91_mux_gpio_disable(cfg->pio, cfg->ebi_pio_pdr);
+	at91_mux_set_pullup(cfg->pio, cfg->ebi_pio_ppudr, true);
+	if (cfg->ebi_pio_is_peripha)
+		at91_mux_set_A_periph(cfg->pio, cfg->ebi_pio_ppudr);
 
-	at91_sys_write(matrix_csa, cfg.ebi_csa);
+	at91_sys_write(cfg->matrix_csa, cfg->ebi_csa);
 
 	/* flash */
-	at91_smc_write(cfg.smc_cs, AT91_SMC_MODE, cfg.smc_mode);
+	at91_smc_write(cfg->smc_cs, AT91_SMC_MODE, cfg->smc_mode);
 
-	at91_smc_write(cfg.smc_cs, AT91_SMC_CYCLE, cfg.smc_cycle);
+	at91_smc_write(cfg->smc_cs, AT91_SMC_CYCLE, cfg->smc_cycle);
 
-	at91_smc_write(cfg.smc_cs, AT91_SMC_PULSE, cfg.smc_pulse);
+	at91_smc_write(cfg->smc_cs, AT91_SMC_PULSE, cfg->smc_pulse);
 
-	at91_smc_write(cfg.smc_cs, AT91_SMC_SETUP, cfg.smc_setup);
+	at91_smc_write(cfg->smc_cs, AT91_SMC_SETUP, cfg->smc_setup);
 
 	/*
 	 * PMC Check if the PLL is already initialized
@@ -88,7 +86,7 @@ void __bare_init at91sam926x_lowlevel_init(void *pio, bool is_pio_asr,
 	/*
 	 * Enable the Main Oscillator
 	 */
-	at91_pmc_write(AT91_CKGR_MOR, cfg.pmc_mor);
+	at91_pmc_write(AT91_CKGR_MOR, cfg->pmc_mor);
 
 	do {
 		r = at91_pmc_read(AT91_PMC_SR);
@@ -97,7 +95,7 @@ void __bare_init at91sam926x_lowlevel_init(void *pio, bool is_pio_asr,
 	/*
 	 * PLLAR: x MHz for PCK
 	 */
-	at91_pmc_write(AT91_CKGR_PLLAR, cfg.pmc_pllar);
+	at91_pmc_write(AT91_CKGR_PLLAR, cfg->pmc_pllar);
 
 	do {
 		r = at91_pmc_read(AT91_PMC_SR);
@@ -106,14 +104,14 @@ void __bare_init at91sam926x_lowlevel_init(void *pio, bool is_pio_asr,
 	/*
 	 * PCK/x = MCK Master Clock from SLOW
 	 */
-	at91_pmc_write(AT91_PMC_MCKR, cfg.pmc_mckr1);
+	at91_pmc_write(AT91_PMC_MCKR, cfg->pmc_mckr1);
 
 	pmc_check_mckrdy();
 
 	/*
 	 * PCK/x = MCK Master Clock from PLLA
 	 */
-	at91_pmc_write(AT91_PMC_MCKR, cfg.pmc_mckr2);
+	at91_pmc_write(AT91_PMC_MCKR, cfg->pmc_mckr2);
 
 	pmc_check_mckrdy();
 
@@ -132,13 +130,13 @@ void __bare_init at91sam926x_lowlevel_init(void *pio, bool is_pio_asr,
 	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);
 
 	/* SDRAMC_TR - Refresh Timer register */
-	at91_sys_write(AT91_SDRAMC_TR, cfg.sdrc_tr1);
+	at91_sys_write(AT91_SDRAMC_TR, cfg->sdrc_tr1);
 
 	/* SDRAMC_CR - Configuration register*/
-	at91_sys_write(AT91_SDRAMC_CR, cfg.sdrc_cr);
+	at91_sys_write(AT91_SDRAMC_CR, cfg->sdrc_cr);
 
 	/* Memory Device Type */
-	at91_sys_write(AT91_SDRAMC_MDR, cfg.sdrc_mdr);
+	at91_sys_write(AT91_SDRAMC_MDR, cfg->sdrc_mdr);
 
 	/* SDRAMC_MR : Precharge All */
 	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_PRECHARGE);
@@ -166,13 +164,13 @@ void __bare_init at91sam926x_lowlevel_init(void *pio, bool is_pio_asr,
 	access_sdram();
 
 	/* SDRAMC_TR : Refresh Timer Counter */
-	at91_sys_write(AT91_SDRAMC_TR, cfg.sdrc_tr2);
+	at91_sys_write(AT91_SDRAMC_TR, cfg->sdrc_tr2);
 
 	/* access SDRAM */
 	access_sdram();
 
 	/* User reset enable*/
-	at91_sys_write(AT91_RSTC_MR, cfg.rstc_rmr);
+	at91_sys_write(AT91_RSTC_MR, cfg->rstc_rmr);
 
 #ifdef CONFIG_SYS_MATRIX_MCFG_REMAP
 	/* MATRIX_MCFG - REMAP all masters */
diff --git a/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h b/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
index f8c020b..4f4887e 100644
--- a/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
+++ b/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
@@ -8,6 +8,12 @@
 #define __AT91_LOWLEVEL_INIT_H__
 
 struct at91sam926x_lowlevel_cfg {
+	/* SoC specific */
+	void __iomem *pio;
+	u32 ebi_pio_is_peripha;
+	u32 matrix_csa;
+
+	/* board specific */
 	u32 wdt_mr;
 	u32 ebi_pio_pdr;
 	u32 ebi_pio_ppudr;
@@ -30,10 +36,10 @@ struct at91sam926x_lowlevel_cfg {
 
 #ifdef CONFIG_HAVE_AT91_LOWLEVEL_INIT
 void at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg);
-void at91sam926x_lowlevel_init(void *pio, bool is_pio_asr, u32 matrix_csa);
+void at91sam926x_lowlevel_init(struct at91sam926x_lowlevel_cfg *cfg);
 #else
 static inline void at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg) {}
-static inline void at91sam926x_lowlevel_init(void *pio, bool is_pio_asr, u32 matrix_csa) {}
+static inline void at91sam926x_lowlevel_init(struct at91sam926x_lowlevel_cfg *cfg) {}
 #endif
 
 #endif /* __AT91_LOWLEVEL_INIT_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
