Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJhAC-0000VD-9T
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:51:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:51:09 +0100
Message-Id: <20181105155113.3434-19-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/22] ARM: at91rm9200ek: use plain readl/writel for pmc
 accesses
To: Barebox List <barebox@lists.infradead.org>

at91_pmc_write() needs a compile time base address, so rather use plain
read/writel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91rm9200ek/lowlevel.c      | 17 +++++++++--------
 arch/arm/mach-at91/include/mach/at91rm9200.h |  1 +
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/lowlevel.c b/arch/arm/boards/at91rm9200ek/lowlevel.c
index 3fb6ca3381..a5c9058552 100644
--- a/arch/arm/boards/at91rm9200ek/lowlevel.c
+++ b/arch/arm/boards/at91rm9200ek/lowlevel.c
@@ -26,23 +26,24 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 	u32 r;
 	int i;
 	void __iomem *mc = IOMEM(AT91RM9200_BASE_MC);
+	void __iomem *pmc = IOMEM(AT91RM9200_BASE_PMC);
 
 	arm_cpu_lowlevel_init();
 
 	/*
 	 * PMC Check if the PLL is already initialized
 	 */
-	r = at91_pmc_read(AT91_PMC_MCKR);
+	r = __raw_readl(pmc + AT91_PMC_MCKR);
 	if (r & AT91_PMC_CSS)
 		goto end;
 
 	/*
 	 * Enable the Main Oscillator
 	 */
-	at91_pmc_write(AT91_CKGR_MOR, CONFIG_SYS_MOR_VAL);
+	__raw_writel(CONFIG_SYS_MOR_VAL, pmc + AT91_CKGR_MOR);
 
 	do {
-		r = at91_pmc_read(AT91_PMC_SR);
+		r = __raw_readl(pmc + AT91_PMC_SR);
 	} while (!(r & AT91_PMC_MOSCS));
 
 	/*
@@ -62,24 +63,24 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 	/*
 	 * PLLAR: x MHz for PCK
 	 */
-	at91_pmc_write(AT91_CKGR_PLLAR, CONFIG_SYS_PLLAR_VAL);
+	__raw_writel(CONFIG_SYS_PLLAR_VAL, pmc + AT91_CKGR_PLLAR);
 
 	do {
-		r = at91_pmc_read(AT91_PMC_SR);
+		r = __raw_readl(pmc + AT91_PMC_SR);
 	} while (!(r & AT91_PMC_LOCKA));
 
 	/*
 	 * PCK/x = MCK Master Clock from SLOW
 	 */
-	at91_pmc_write(AT91_PMC_MCKR, CONFIG_SYS_MCKR2_VAL1);
+	__raw_writel(CONFIG_SYS_MCKR2_VAL1, pmc + AT91_PMC_MCKR);
 
 	/*
 	 * PCK/x = MCK Master Clock from PLLA
 	 */
-	at91_pmc_write(AT91_PMC_MCKR, CONFIG_SYS_MCKR2_VAL2);
+	__raw_writel(CONFIG_SYS_MCKR2_VAL2, pmc + AT91_PMC_MCKR);
 
 	do {
-		r = at91_pmc_read(AT91_PMC_SR);
+		r = __raw_readl(pmc + AT91_PMC_SR);
 	} while (!(r & AT91_PMC_MCKRDY));
 
 	/*
diff --git a/arch/arm/mach-at91/include/mach/at91rm9200.h b/arch/arm/mach-at91/include/mach/at91rm9200.h
index d06dfa7388..e2af3585af 100644
--- a/arch/arm/mach-at91/include/mach/at91rm9200.h
+++ b/arch/arm/mach-at91/include/mach/at91rm9200.h
@@ -84,6 +84,7 @@
 #define AT91RM9200_BASE_PIOB	0xfffff600	/* PIO Controller B */
 #define AT91RM9200_BASE_PIOC	0xfffff800	/* PIO Controller C */
 #define AT91RM9200_BASE_PIOD	0xfffffa00	/* PIO Controller D */
+#define AT91RM9200_BASE_PMC	0xfffffc00
 #define AT91RM9200_BASE_ST	0xfffffd00	/* System Timer */
 #define AT91RM9200_BASE_RTC	0xfffffe00	/* Real-Time Clock */
 #define AT91RM9200_BASE_MC	0xffffff00	/* Memory Controllers */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
