Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqVDm-0004r3-09
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 05:23:51 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 07:23:26 +0200
Message-Id: <20200701052340.9462-15-a.fatoum@pengutronix.de>
In-Reply-To: <20200701052340.9462-1-a.fatoum@pengutronix.de>
References: <20200701052340.9462-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 14/28] ARM: at91: extend low level PMC driver for generic clk
 support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The SAMA5D2 and SAM9X60 both feature generic clocks, which we already
support in barebox proper, but not in PBL. Add PBL support for setting
the parent and enabling them, so we may use it to enable the SDMMC
peripherals in first stage.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/at91_pmc_ll.c              | 169 ++++++++++++++++--
 arch/arm/mach-at91/include/mach/at91_pmc_ll.h |  21 ++-
 arch/arm/mach-at91/include/mach/sama5d2_ll.h  |  15 +-
 3 files changed, 187 insertions(+), 18 deletions(-)

diff --git a/arch/arm/mach-at91/at91_pmc_ll.c b/arch/arm/mach-at91/at91_pmc_ll.c
index 4d39f579091e..9205322db972 100644
--- a/arch/arm/mach-at91/at91_pmc_ll.c
+++ b/arch/arm/mach-at91/at91_pmc_ll.c
@@ -1,17 +1,51 @@
 // SPDX-License-Identifier: BSD-1-Clause
 /*
  * Copyright (c) 2006, Atmel Corporation
+ * Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries
  *
- * Atmel's name may not be used to endorse or promote products
+ * Atmel/Microchip's name may not be used to endorse or promote products
  * derived from this software without specific prior written permission.
  */
 
+#define pr_fmt(fmt) "at91pmc: " fmt
+
 #include <common.h>
+#include <mach/hardware.h>
+#include <mach/at91_pmc.h>
 #include <mach/at91_pmc_ll.h>
+#include <mach/early_udelay.h>
+
+#define SFR_UTMICKTRIM	0x30	/* UTMI Clock Trimming Register */
+#define AT91_UTMICKTRIM_FREQ	0x03
+
+#define PMC_GCSR0	0xC0	/* PMCv2 Generic Clock Status Register 0 */
+#define PMC_GCSR1	0xC4	/* PMCv2 Generic Clock Status Register 1 */
 
 #define at91_pmc_write(off, val) writel(val, pmc_base + off)
 #define at91_pmc_read(off) readl(pmc_base + off)
 
+#define MHZ (1000 * 1000UL)
+
+static unsigned long at91_pmc_get_main_xtal(void __iomem *pmc_base)
+{
+	u32 tmp;
+
+	/* Enable a measurement of the Main Crystal Oscillator */
+	tmp = at91_pmc_read(AT91_CKGR_MCFR);
+	tmp |= AT91_PMC_CCSS_XTAL_OSC;
+	tmp |= AT91_PMC_RCMEAS;
+	at91_pmc_write(AT91_CKGR_MCFR, tmp);
+
+	do {
+		tmp = at91_pmc_read(AT91_CKGR_MCFR);
+	} while (!(tmp & AT91_PMC_MAINRDY));
+
+	/* read once more like the datasheet says */
+	tmp = at91_pmc_read(AT91_CKGR_MCFR) & AT91_PMC_MAINF;
+
+	return tmp * (AT91_SLOW_CLOCK / 16);
+}
+
 void at91_pmc_init(void __iomem *pmc_base, unsigned int flags)
 {
 	u32 tmp;
@@ -46,16 +80,8 @@ void at91_pmc_init(void __iomem *pmc_base, unsigned int flags)
 		while (!(at91_pmc_read(AT91_PMC_SR) & AT91_PMC_MOSCS))
 			;
 
-		if (flags & AT91_PMC_LL_FLAG_MEASURE_XTAL) {
-			/* Enable a measurement of the Main Crystal Oscillator */
-			tmp = at91_pmc_read(AT91_CKGR_MCFR);
-			tmp |= AT91_PMC_CCSS_XTAL_OSC;
-			tmp |= AT91_PMC_RCMEAS;
-			at91_pmc_write(AT91_CKGR_MCFR, tmp);
-
-			while (!(at91_pmc_read(AT91_CKGR_MCFR) & AT91_PMC_MAINRDY))
-				;
-		}
+		if (flags & AT91_PMC_LL_FLAG_MEASURE_XTAL)
+			(void)at91_pmc_get_main_xtal(pmc_base);
 
 		/* Switch from internal 12MHz RC to the Main Crystal Oscillator */
 		tmp = at91_pmc_read(AT91_CKGR_MOR);
@@ -184,3 +210,124 @@ void at91_pmc_cfg_mck(void __iomem *pmc_base, u32 pmc_mckr, unsigned int flags)
 	while (!(at91_pmc_read(AT91_PMC_SR) & AT91_PMC_MCKRDY))
 		;
 }
+
+static void pmc_configure_utmi_ref_clk(void __iomem *pmc_base,
+				       void __iomem *sfr_base,
+				       unsigned long main_xtal)
+{
+	unsigned int utmi_ref_clk_freq = 0, tmp;
+
+	/*
+	 * If mainck rate is different from 12 MHz, we have to configure
+	 * the FREQ field of the SFR_UTMICKTRIM register to generate properly
+	 * the utmi clock.
+	 */
+	if (main_xtal < (16 +  4) * MHZ)
+		utmi_ref_clk_freq++;
+	if (main_xtal < (24 + 10) * MHZ)
+		utmi_ref_clk_freq++;
+	if (main_xtal < (48 + 10) * MHZ)
+		utmi_ref_clk_freq++;
+
+	/*
+	 * Not supported on SAMA5D2 but it's not an issue since MAINCK
+	 * maximum value is 24 MHz.
+	 */
+	tmp = readl(sfr_base + SFR_UTMICKTRIM);
+	tmp &= ~AT91_UTMICKTRIM_FREQ;
+	tmp |= utmi_ref_clk_freq;
+	writel(tmp, sfr_base + SFR_UTMICKTRIM);
+}
+
+static void pmc_uckr_clk(void __iomem *pmc_base,
+			 void __iomem *sfr_base,
+			 unsigned long main_xtal)
+{
+	unsigned int uckr = at91_pmc_read(AT91_CKGR_UCKR);
+	unsigned int sr;
+
+	if (main_xtal) {
+		pmc_configure_utmi_ref_clk(pmc_base, sfr_base,
+						 main_xtal);
+		uckr |= (AT91_PMC_UPLLCOUNT_DEFAULT |
+			 AT91_PMC_UPLLEN | AT91_PMC_BIASEN);
+		sr = AT91_PMC_LOCKU;
+	} else {
+		uckr &= ~(AT91_PMC_UPLLEN | AT91_PMC_BIASEN);
+		sr = 0;
+	}
+
+	at91_pmc_write(AT91_CKGR_UCKR, uckr);
+
+	do {
+		early_udelay(1);
+	} while ((at91_pmc_read(AT91_PMC_SR) & AT91_PMC_LOCKU) != sr);
+}
+
+static inline unsigned gck_status(unsigned periph_id,
+				  unsigned flags)
+{
+	if (flags & AT91_PMC_LL_FLAG_GCSR)
+		return periph_id < 32 ? PMC_GCSR0 : PMC_GCSR1;
+
+	return AT91_PMC_SR;
+}
+
+static inline unsigned gck_ready(unsigned status,
+				 unsigned periph_id,
+				 unsigned flags)
+{
+	unsigned mask;
+
+	if (flags & AT91_PMC_LL_FLAG_GCSR)
+		mask = 1 << (periph_id & 0x1f);
+	else
+		mask = AT91_PMC_GCKRDY;
+
+	return status & mask;
+}
+
+int at91_pmc_enable_generic_clock(void __iomem *pmc_base,
+				  void __iomem *sfr_base,
+				  unsigned int periph_id,
+				  unsigned int clk_source, unsigned int div,
+				  unsigned int flags)
+{
+	unsigned long main_xtal;
+	unsigned int regval, status;
+	unsigned int timeout = 1000;
+
+	if (periph_id > 0x7f)
+		return -EINVAL;
+
+	if (div > 0xff)
+		return -EINVAL;
+
+	main_xtal = at91_pmc_get_main_xtal(pmc_base);
+
+	if ((flags & AT91_PMC_LL_FLAG_PMC_UTMI) &&
+	    !(at91_pmc_read(AT91_PMC_SR) & AT91_PMC_LOCKU))
+		pmc_uckr_clk(pmc_base, sfr_base, main_xtal);
+
+	at91_pmc_write(AT91_PMC_PCR, periph_id);
+	regval = at91_pmc_read(AT91_PMC_PCR);
+	regval &= ~AT91_PMC_GCKCSS;
+	regval &= ~AT91_PMC_GCKDIV;
+
+	regval |= clk_source;
+	regval |= AT91_PMC_PCR_CMD | AT91_PMC_GCKDIV_(div) | AT91_PMC_GCK_EN;
+
+	at91_pmc_write(AT91_PMC_PCR, regval);
+
+	for (timeout = 1000; timeout; timeout--) {
+		early_udelay(1);
+
+		status = at91_pmc_read(gck_status(periph_id, flags));
+		if (gck_ready(status, periph_id, flags))
+			return 0;
+	}
+
+	pr_warn("Timeout waiting for GCK ready!\n");
+
+	return 0;
+}
diff --git a/arch/arm/mach-at91/include/mach/at91_pmc_ll.h b/arch/arm/mach-at91/include/mach/at91_pmc_ll.h
index e3d3e3ad59db..6ec3ae0852c6 100644
--- a/arch/arm/mach-at91/include/mach/at91_pmc_ll.h
+++ b/arch/arm/mach-at91/include/mach/at91_pmc_ll.h
@@ -14,27 +14,38 @@
 #define AT91_PMC_LL_FLAG_MEASURE_XTAL	(1 << 1)
 #define AT91_PMC_LL_FLAG_DISABLE_RC	(1 << 2)
 #define AT91_PMC_LL_FLAG_H32MXDIV	(1 << 3)
+#define AT91_PMC_LL_FLAG_PMC_UTMI	(1 << 4)
+#define AT91_PMC_LL_FLAG_GCSR		(1 << 5)
 
 #define AT91_PMC_LL_AT91RM9200	(0)
 #define AT91_PMC_LL_AT91SAM9260	(0)
 #define AT91_PMC_LL_AT91SAM9261	(0)
 #define AT91_PMC_LL_AT91SAM9263	(0)
-#define AT91_PMC_LL_AT91SAM9G45	(0)
+#define AT91_PMC_LL_AT91SAM9G45	(AT91_PMC_LL_FLAG_PMC_UTMI)
 #define AT91_PMC_LL_AT91SAM9X5	(AT91_PMC_LL_FLAG_SAM9X5_PMC | \
-				 AT91_PMC_LL_FLAG_DISABLE_RC)
+				 AT91_PMC_LL_FLAG_DISABLE_RC | \
+				 AT91_PMC_LL_FLAG_PMC_UTMI)
 #define AT91_PMC_LL_AT91SAM9N12	(AT91_PMC_LL_FLAG_SAM9X5_PMC | \
 				 AT91_PMC_LL_FLAG_DISABLE_RC)
 #define AT91_PMC_LL_SAMA5D2	(AT91_PMC_LL_FLAG_SAM9X5_PMC | \
-				 AT91_PMC_LL_FLAG_MEASURE_XTAL)
+				 AT91_PMC_LL_FLAG_MEASURE_XTAL | \
+				 AT91_PMC_LL_FLAG_PMC_UTMI)
 #define AT91_PMC_LL_SAMA5D3	(AT91_PMC_LL_FLAG_SAM9X5_PMC | \
-				 AT91_PMC_LL_FLAG_DISABLE_RC)
+				 AT91_PMC_LL_FLAG_DISABLE_RC | \
+				 AT91_PMC_LL_FLAG_PMC_UTMI)
 #define AT91_PMC_LL_SAMA5D4	(AT91_PMC_LL_FLAG_SAM9X5_PMC | \
-				 AT91_PMC_LL_FLAG_H32MXDIV)
+				 AT91_PMC_LL_FLAG_H32MXDIV | \
+				 AT91_PMC_LL_FLAG_PMC_UTMI)
 
 void at91_pmc_init(void __iomem *pmc_base, unsigned int flags);
 void at91_pmc_cfg_mck(void __iomem *pmc_base, u32 pmc_mckr, unsigned int flags);
 void at91_pmc_cfg_plla(void __iomem *pmc_base, u32 pmc_pllar, unsigned int flags);
 
+int at91_pmc_enable_generic_clock(void __iomem *pmc_base, void __iomem *sfr_base,
+				  unsigned int periph_id,
+				  unsigned int clk_source, unsigned int div,
+				  unsigned int flags);
+
 static inline void at91_pmc_init_pll(void __iomem *pmc_base, u32 pmc_pllicpr)
 {
 	writel(pmc_pllicpr, pmc_base + AT91_PMC_PLLICPR);
diff --git a/arch/arm/mach-at91/include/mach/sama5d2_ll.h b/arch/arm/mach-at91/include/mach/sama5d2_ll.h
index 7c38a84f5395..e6fa3914250b 100644
--- a/arch/arm/mach-at91/include/mach/sama5d2_ll.h
+++ b/arch/arm/mach-at91/include/mach/sama5d2_ll.h
@@ -8,13 +8,13 @@
 
 #include <common.h>
 
+void sama5d2_lowlevel_init(void);
+
 static inline void sama5d2_pmc_enable_periph_clock(int clk)
 {
 	at91_pmc_sam9x5_enable_periph_clock(SAMA5D2_BASE_PMC, clk);
 }
 
-void sama5d2_lowlevel_init(void);
-
 /* requires relocation */
 static inline void sama5d2_udelay_init(unsigned int msc)
 {
@@ -22,6 +22,17 @@ static inline void sama5d2_udelay_init(unsigned int msc)
 			  SAMA5D2_ID_PIT, msc, AT91_PMC_LL_SAMA5D2);
 }
 
+
 void sama5d2_ddr2_init(struct at91_ddramc_register *ddramc_reg_config);
 
+static inline int sama5d2_pmc_enable_generic_clock(unsigned int periph_id,
+						   unsigned int clk_source,
+						   unsigned int div)
+{
+	return at91_pmc_enable_generic_clock(SAMA5D2_BASE_PMC,
+					     SAMA5D2_BASE_SFR,
+					     periph_id, clk_source, div,
+					     AT91_PMC_LL_SAMA5D2);
+}
+
 #endif
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
