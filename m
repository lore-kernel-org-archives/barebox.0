Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJhA7-0000PQ-GO
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:51:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:51:08 +0100
Message-Id: <20181105155113.3434-18-s.hauer@pengutronix.de>
In-Reply-To: <20181105155113.3434-1-s.hauer@pengutronix.de>
References: <20181105155113.3434-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 17/22] ARM: at91sam926x use writel rather than pmc accessor
 function
To: Barebox List <barebox@lists.infradead.org>

The pmc accessor function depends on a compile time base address, so
rather use writel directly. In this case we can hardcode the base
address again since all at91sam926x SoCs have the same pmc base address.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../include/mach/at91sam926x_board_init.h       | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
index 4141e80ddb..ee4dfa7187 100644
--- a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
+++ b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
@@ -121,6 +121,7 @@ static void __always_inline at91sam926x_sdramc_init(struct at91sam926x_board_cfg
 static void __always_inline at91sam926x_board_init(struct at91sam926x_board_cfg *cfg)
 {
 	u32 r;
+	void __iomem *pmc = IOMEM(AT91SAM926X_BASE_PMC);
 
 	if (!IS_ENABLED(CONFIG_AT91SAM926X_BOARD_INIT))
 		return;
@@ -142,28 +143,28 @@ static void __always_inline at91sam926x_board_init(struct at91sam926x_board_cfg
 	at91_smc_write(cfg->smc_cs, AT91_SMC_SETUP, cfg->smc_setup);
 
 	/* PMC Check if the PLL is already initialized */
-	r = at91_pmc_read(AT91_PMC_MCKR);
+	r = readl(pmc + AT91_PMC_MCKR);
 	if ((r & AT91_PMC_CSS) && !running_in_sram())
 		return;
 
 	/* Enable the Main Oscillator */
-	at91_pmc_write(AT91_CKGR_MOR, cfg->pmc_mor);
+	writel(cfg->pmc_mor, pmc + AT91_CKGR_MOR);
 	do {
-		r = at91_pmc_read(AT91_PMC_SR);
+		r = readl(pmc + AT91_PMC_SR);
 	} while (!(r & AT91_PMC_MOSCS));
 
 	/* PLLAR: x MHz for PCK */
-	at91_pmc_write(AT91_CKGR_PLLAR, cfg->pmc_pllar);
+	writel(cfg->pmc_pllar, pmc + AT91_CKGR_PLLAR);
 	do {
-		r = at91_pmc_read(AT91_PMC_SR);
+		r = readl(pmc + AT91_PMC_SR);
 	} while (!(r & AT91_PMC_LOCKA));
 
 	/* PCK/x = MCK Master Clock from SLOW */
-	at91_pmc_write(AT91_PMC_MCKR, cfg->pmc_mckr1);
+	writel(cfg->pmc_mckr1, pmc + AT91_PMC_MCKR);
 	pmc_check_mckrdy();
 
 	/* PCK/x = MCK Master Clock from PLLA */
-	at91_pmc_write(AT91_PMC_MCKR, cfg->pmc_mckr2);
+	writel(cfg->pmc_mckr2, pmc + AT91_PMC_MCKR);
 	pmc_check_mckrdy();
 
 	/* Init SDRAM */
@@ -178,7 +179,7 @@ static void __always_inline at91sam926x_board_init(struct at91sam926x_board_cfg
 	 * so enable all of them
 	 * We will shutdown what we don't need later
 	 */
-	at91_pmc_write(AT91_PMC_PCER, 0xffffffff);
+	writel(0xffffffff, pmc + AT91_PMC_PCER);
 }
 
 #endif /* __AT91SAM926X_BOARD_INIT_H__ */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
