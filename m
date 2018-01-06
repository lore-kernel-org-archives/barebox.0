Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXvkn-0007ow-72
 for barebox@lists.infradead.org; Sat, 06 Jan 2018 21:12:00 +0000
Received: by mail-lf0-x243.google.com with SMTP id y71so8444916lfd.12
 for <barebox@lists.infradead.org>; Sat, 06 Jan 2018 13:11:36 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Sat,  6 Jan 2018 22:11:01 +0100
Message-Id: <20180106211118.24249-5-sam@ravnborg.org>
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
Subject: [PATCH v5 05/22] arm: at91: code cleanup in at91sam926x_board_init
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

- drop dead code (CONFIG_SYS_MATRIX_MCFG_REMAP not defined)
- drop use of macros for simple __read/__write functions
- delete extra lines
- Trivial comments kept on a single line

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../include/mach/at91sam926x_board_init.h          | 73 +++++-----------------
 1 file changed, 17 insertions(+), 56 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
index 54d67404c..70ae90337 100644
--- a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
+++ b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
@@ -70,66 +70,50 @@ static int __always_inline running_in_sram(void)
 	return addr == 0;
 }
 
-#define at91_sdramc_read(field) \
-	__raw_readl(cfg->sdramc + field)
-
-#define at91_sdramc_write(field, value) \
-	__raw_writel(value, cfg->sdramc + field)
-
 static void __always_inline at91sam926x_sdramc_init(struct at91sam926x_board_cfg *cfg)
 {
 	u32 r;
 	int i;
 	int in_sram = running_in_sram();
 
-	/*
-	 * SDRAMC Check if Refresh Timer Counter is already initialized
-	 */
-	r = at91_sdramc_read(AT91_SDRAMC_TR);
+	/* SDRAMC Check if Refresh Timer Counter is already initialized */
+	r = __raw_readl(cfg->sdramc + AT91_SDRAMC_TR);
 	if (r && !in_sram)
 		return;
 
 	/* SDRAMC_MR : Normal Mode */
-	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);
+	__raw_writel(AT91_SDRAMC_MR, cfg->sdramc + AT91_SDRAMC_MODE_NORMAL);
 
 	/* SDRAMC_TR - Refresh Timer register */
-	at91_sdramc_write(AT91_SDRAMC_TR, cfg->sdrc_tr1);
+	__raw_writel(AT91_SDRAMC_TR, cfg->sdramc + cfg->sdrc_tr1);
 
 	/* SDRAMC_CR - Configuration register*/
-	at91_sdramc_write(AT91_SDRAMC_CR, cfg->sdrc_cr);
+	__raw_writel(AT91_SDRAMC_CR, cfg->sdramc + cfg->sdrc_cr);
 
 	/* Memory Device Type */
-	at91_sdramc_write(AT91_SDRAMC_MDR, cfg->sdrc_mdr);
+	__raw_writel(AT91_SDRAMC_MDR, cfg->sdramc + cfg->sdrc_mdr);
 
 	/* SDRAMC_MR : Precharge All */
-	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_PRECHARGE);
-
-	/* access SDRAM */
+	__raw_writel(AT91_SDRAMC_MR, cfg->sdramc + AT91_SDRAMC_MODE_PRECHARGE);
 	access_sdram();
 
 	/* SDRAMC_MR : refresh */
-	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_REFRESH);
+	__raw_writel(AT91_SDRAMC_MR, cfg->sdramc + AT91_SDRAMC_MODE_REFRESH);
 
 	/* access SDRAM 8 times */
 	for (i = 0; i < 8; i++)
 		access_sdram();
 
 	/* SDRAMC_MR : Load Mode Register */
-	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_LMR);
-
-	/* access SDRAM */
+	__raw_writel(AT91_SDRAMC_MR, cfg->sdramc + AT91_SDRAMC_MODE_LMR);
 	access_sdram();
 
 	/* SDRAMC_MR : Normal Mode */
-	at91_sdramc_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);
-
-	/* access SDRAM */
+	__raw_writel(AT91_SDRAMC_MR, cfg->sdramc + AT91_SDRAMC_MODE_NORMAL);
 	access_sdram();
 
 	/* SDRAMC_TR : Refresh Timer Counter */
-	at91_sdramc_write(AT91_SDRAMC_TR, cfg->sdrc_tr2);
-
-	/* access SDRAM */
+	__raw_writel(AT91_SDRAMC_TR, cfg->sdramc + cfg->sdrc_tr2);
 	access_sdram();
 }
 
@@ -152,64 +136,41 @@ static void __always_inline at91sam926x_board_init(struct at91sam926x_board_cfg
 
 	/* flash */
 	at91_smc_write(cfg->smc_cs, AT91_SAM9_SMC_MODE, cfg->smc_mode);
-
 	at91_smc_write(cfg->smc_cs, AT91_SMC_CYCLE, cfg->smc_cycle);
-
 	at91_smc_write(cfg->smc_cs, AT91_SMC_PULSE, cfg->smc_pulse);
-
 	at91_smc_write(cfg->smc_cs, AT91_SMC_SETUP, cfg->smc_setup);
 
-	/*
-	 * PMC Check if the PLL is already initialized
-	 */
+	/* PMC Check if the PLL is already initialized */
 	r = at91_pmc_read(AT91_PMC_MCKR);
 	if ((r & AT91_PMC_CSS) && !running_in_sram())
 		return;
 
-	/*
-	 * Enable the Main Oscillator
-	 */
+	/* Enable the Main Oscillator */
 	at91_pmc_write(AT91_CKGR_MOR, cfg->pmc_mor);
-
 	do {
 		r = at91_pmc_read(AT91_PMC_SR);
 	} while (!(r & AT91_PMC_MOSCS));
 
-	/*
-	 * PLLAR: x MHz for PCK
-	 */
+	/* PLLAR: x MHz for PCK */
 	at91_pmc_write(AT91_CKGR_PLLAR, cfg->pmc_pllar);
-
 	do {
 		r = at91_pmc_read(AT91_PMC_SR);
 	} while (!(r & AT91_PMC_LOCKA));
 
-	/*
-	 * PCK/x = MCK Master Clock from SLOW
-	 */
+	/* PCK/x = MCK Master Clock from SLOW */
 	at91_pmc_write(AT91_PMC_MCKR, cfg->pmc_mckr1);
-
 	pmc_check_mckrdy();
 
-	/*
-	 * PCK/x = MCK Master Clock from PLLA
-	 */
+	/* PCK/x = MCK Master Clock from PLLA */
 	at91_pmc_write(AT91_PMC_MCKR, cfg->pmc_mckr2);
-
 	pmc_check_mckrdy();
 
-	/*
-	 * Init SDRAM
-	 */
+	/* Init SDRAM */
 	at91sam926x_sdramc_init(cfg);
 
 	/* User reset enable*/
 	at91_sys_write(AT91_RSTC_MR, cfg->rstc_rmr);
 
-#ifdef CONFIG_SYS_MATRIX_MCFG_REMAP
-	/* MATRIX_MCFG - REMAP all masters */
-	at91_sys_write(AT91_MATRIX_MCFG0, 0x1FF);
-#endif
 	/*
 	 * When boot from external boot
 	 * we need to enable mck and ohter clock
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
