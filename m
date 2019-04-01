Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hAu1R-0005N6-6e
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 10:18:42 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 12:18:14 +0200
Message-Id: <20190401101822.7392-7-a.fatoum@pengutronix.de>
In-Reply-To: <20190401101822.7392-1-a.fatoum@pengutronix.de>
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 06/15] ARM: at91: import lowlevel clock initialization from
 at91bootstrap
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

For use by future at91 first stage bootloaders, this commit imports
https://github.com/linux4sam/at91bootstrap/blob/v3.8.12/driver/pmc.c

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Makefile                   |   1 +
 arch/arm/mach-at91/at91_pmc_ll.c              | 184 ++++++++++++++++++
 arch/arm/mach-at91/include/mach/at91_pmc.h    |  24 ++-
 arch/arm/mach-at91/include/mach/at91_pmc_ll.h |  78 ++++++++
 4 files changed, 284 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/mach-at91/at91_pmc_ll.c
 create mode 100644 arch/arm/mach-at91/include/mach/at91_pmc_ll.h

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index d81683ac121a..91b06c085107 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,4 +1,5 @@
 obj-y += setup.o
+pbl-y += at91_pmc_ll.o
 
 ifeq ($(CONFIG_COMMON_CLK_OF_PROVIDER),)
 obj-y += clock.o
diff --git a/arch/arm/mach-at91/at91_pmc_ll.c b/arch/arm/mach-at91/at91_pmc_ll.c
new file mode 100644
index 000000000000..bb3b3e6cf970
--- /dev/null
+++ b/arch/arm/mach-at91/at91_pmc_ll.c
@@ -0,0 +1,184 @@
+// SPDX-License-Identifier: BSD-1-Clause
+/*
+ * Copyright (c) 2006, Atmel Corporation
+ */
+
+#include <common.h>
+#include <mach/at91_pmc_ll.h>
+
+#define at91_pmc_write(off, val) writel(val, pmc_base + off)
+#define at91_pmc_read(off) readl(pmc_base + off)
+
+void at91_pmc_init(void __iomem *pmc_base, unsigned int flags)
+{
+	u32 tmp;
+
+	/*
+	 * Switch the master clock to the slow clock without modifying other
+	 * parameters. It is assumed that ROM code set H32MXDIV, PLLADIV2,
+	 * PCK_DIV3.
+	 */
+	tmp = at91_pmc_read(AT91_PMC_MCKR);
+	tmp &= ~AT91_PMC_ALT_PCKR_CSS;
+	tmp |= AT91_PMC_CSS_SLOW;
+	at91_pmc_write(AT91_PMC_MCKR, tmp);
+
+	while (!(at91_pmc_read(AT91_PMC_SR) & AT91_PMC_MCKRDY))
+		;
+
+	if (flags & AT91_PMC_LL_FLAG_SAM9X5_PMC) {
+		/*
+		 * Enable the Main Crystal Oscillator
+		 * tST_max = 2ms
+		 * Startup Time: 32768 * 2ms / 8 = 8
+		 */
+		tmp = at91_pmc_read(AT91_CKGR_MOR);
+		tmp &= ~AT91_PMC_OSCOUNT;
+		tmp &= ~AT91_PMC_KEY_MASK;
+		tmp |= AT91_PMC_MOSCEN;
+		tmp |= AT91_PMC_OSCOUNT_(8);
+		tmp |= AT91_PMC_KEY;
+		at91_pmc_write(AT91_CKGR_MOR, tmp);
+
+		while (!(at91_pmc_read(AT91_PMC_SR) & AT91_PMC_MOSCS))
+			;
+
+		if (flags & AT91_PMC_LL_FLAG_MEASURE_XTAL) {
+			/* Enable a measurement of the Main Crystal Oscillator */
+			tmp = at91_pmc_read(AT91_CKGR_MCFR);
+			tmp |= AT91_PMC_CCSS_XTAL_OSC;
+			tmp |= AT91_PMC_RCMEAS;
+			at91_pmc_write(AT91_CKGR_MCFR, tmp);
+
+			while (!(at91_pmc_read(AT91_CKGR_MCFR) & AT91_PMC_MAINRDY))
+				;
+		}
+
+
+		/* Switch from internal 12MHz RC to the Main Crystal Oscillator */
+		tmp = at91_pmc_read(AT91_CKGR_MOR);
+		tmp &= ~AT91_PMC_OSCBYPASS;
+		tmp &= ~AT91_PMC_KEY_MASK;
+		tmp |= AT91_PMC_KEY;
+		at91_pmc_write(AT91_CKGR_MOR, tmp);
+
+		tmp = at91_pmc_read(AT91_CKGR_MOR);
+		tmp |= AT91_PMC_MOSCSEL;
+		tmp &= ~AT91_PMC_KEY_MASK;
+		tmp |= AT91_PMC_KEY;
+		at91_pmc_write(AT91_CKGR_MOR, tmp);
+
+		while (!(at91_pmc_read(AT91_PMC_SR) & AT91_PMC_MOSCSELS))
+			;
+
+		if (flags & AT91_PMC_LL_FLAG_DISABLE_RC) {
+			/* Disable the 12MHz RC Oscillator */
+			tmp = at91_pmc_read(AT91_CKGR_MOR);
+			tmp &= ~AT91_PMC_MOSCRCEN;
+			tmp &= ~AT91_PMC_KEY_MASK;
+			tmp |= AT91_PMC_KEY;
+			at91_pmc_write(AT91_CKGR_MOR, tmp);
+		}
+
+	} else {
+		/*
+		 * Enable the Main Crystal Oscillator
+		 * tST_max = 2ms
+		 * Startup Time: 32768 * 2ms / 8 = 8
+		 */
+		tmp = at91_pmc_read(AT91_CKGR_MOR);
+		tmp &= ~AT91_PMC_OSCOUNT;
+		tmp |= AT91_PMC_MOSCEN;
+		tmp |= AT91_PMC_OSCOUNT_(8);
+		at91_pmc_write(AT91_CKGR_MOR, tmp);
+
+		while (!(at91_pmc_read(AT91_PMC_SR) & AT91_PMC_MOSCS))
+			;
+	}
+
+	/* After stablization, switch to Main Clock */
+	if ((at91_pmc_read(AT91_PMC_MCKR) & AT91_PMC_ALT_PCKR_CSS) == AT91_PMC_CSS_SLOW) {
+		tmp = at91_pmc_read(AT91_PMC_MCKR);
+		tmp &= ~(0x1 << 13);
+		tmp &= ~AT91_PMC_ALT_PCKR_CSS;
+		tmp |= AT91_PMC_CSS_MAIN;
+		at91_pmc_write(AT91_PMC_MCKR, tmp);
+
+		while (!(at91_pmc_read(AT91_PMC_SR) & AT91_PMC_MCKRDY))
+			;
+
+		tmp &= ~AT91_PMC_PRES;
+		tmp |= AT91_PMC_PRES_1;
+		at91_pmc_write(AT91_PMC_MCKR, tmp);
+
+		while (!(at91_pmc_read(AT91_PMC_SR) & AT91_PMC_MCKRDY))
+			;
+	}
+}
+
+void at91_pmc_cfg_plla(void __iomem *pmc_base, u32 pmc_pllar,
+		       unsigned int __always_unused flags)
+{
+	/* Always disable PLL before configuring it */
+	at91_pmc_write(AT91_CKGR_PLLAR, AT91_PMC_PLLA_WR_ERRATA);
+	at91_pmc_write(AT91_CKGR_PLLAR, AT91_PMC_PLLA_WR_ERRATA | pmc_pllar);
+
+	while (!(at91_pmc_read(AT91_PMC_SR) & AT91_PMC_LOCKA))
+		;
+}
+
+void at91_pmc_cfg_mck(void __iomem *pmc_base, u32 pmc_mckr, unsigned int flags)
+{
+	u32 tmp;
+
+	/*
+	 * Program the PRES field in the AT91_PMC_MCKR register
+	 */
+	tmp = at91_pmc_read(AT91_PMC_MCKR);
+	tmp &= ~(0x1 << 13);
+
+	if (flags & AT91_PMC_LL_FLAG_SAM9X5_PMC) {
+		tmp &= ~AT91_PMC_ALT_PRES;
+		tmp |= pmc_mckr & AT91_PMC_ALT_PRES;
+	} else {
+		tmp &= ~AT91_PMC_PRES;
+		tmp |= pmc_mckr & AT91_PMC_PRES;
+	}
+	at91_pmc_write(AT91_PMC_MCKR, tmp);
+
+	/*
+	 * Program the MDIV field in the AT91_PMC_MCKR register
+	 */
+	tmp = at91_pmc_read(AT91_PMC_MCKR);
+	tmp &= ~AT91_PMC_MDIV;
+	tmp |= pmc_mckr & AT91_PMC_MDIV;
+	at91_pmc_write(AT91_PMC_MCKR, tmp);
+
+	/*
+	 * Program the PLLADIV2 field in the AT91_PMC_MCKR register
+	 */
+	tmp = at91_pmc_read(AT91_PMC_MCKR);
+	tmp &= ~AT91_PMC_PLLADIV2;
+	tmp |= pmc_mckr & AT91_PMC_PLLADIV2;
+	at91_pmc_write(AT91_PMC_MCKR, tmp);
+
+	/*
+	 * Program the H32MXDIV field in the AT91_PMC_MCKR register
+	 */
+	tmp = at91_pmc_read(AT91_PMC_MCKR);
+	tmp &= ~AT91_PMC_H32MXDIV;
+	tmp |= pmc_mckr & AT91_PMC_H32MXDIV;
+	at91_pmc_write(AT91_PMC_MCKR, tmp);
+
+	/*
+	 * Program the CSS field in the AT91_PMC_MCKR register,
+	 * wait for MCKRDY bit to be set in the PMC_SR register
+	 */
+	tmp = at91_pmc_read(AT91_PMC_MCKR);
+	tmp &= ~AT91_PMC_ALT_PCKR_CSS;
+	tmp |= pmc_mckr & AT91_PMC_ALT_PCKR_CSS;
+	at91_pmc_write(AT91_PMC_MCKR, tmp);
+
+	while (!(at91_pmc_read(AT91_PMC_SR) & AT91_PMC_MCKRDY))
+		;
+}
diff --git a/arch/arm/mach-at91/include/mach/at91_pmc.h b/arch/arm/mach-at91/include/mach/at91_pmc.h
index bbbd497afaed..4d60becefbab 100644
--- a/arch/arm/mach-at91/include/mach/at91_pmc.h
+++ b/arch/arm/mach-at91/include/mach/at91_pmc.h
@@ -50,14 +50,19 @@
 #define		AT91_PMC_OSCBYPASS	(1    <<  1)		/* Oscillator Bypass */
 #define		AT91_PMC_MOSCRCEN	(1    <<  3)		/* Main On-Chip RC Oscillator Enable [some SAM9] */
 #define		AT91_PMC_OSCOUNT	(0xff <<  8)		/* Main Oscillator Start-up Time */
-#define		AT91_PMC_KEY		(0x37 << 16)		/* MOR Writing Key */
+#define			AT91_PMC_OSCOUNT_(x) ((x) << 8)
+#define		AT91_PMC_KEY_MASK	(0xff << 16)		/* MOR Writing Key */
+#define			AT91_PMC_KEY		(0x37 << 16)
 #define		AT91_PMC_MOSCSEL	(1    << 24)		/* Main Oscillator Selection [some SAM9] */
 #define		AT91_PMC_CFDEN		(1    << 25)		/* Clock Failure Detector Enable [some SAM9] */
 
 #define	AT91_CKGR_MCFR		0x24			/* Main Clock Frequency Register */
 #define		AT91_PMC_MAINF		(0xffff <<  0)		/* Main Clock Frequency */
-#define		AT91_PMC_MAINRDY	(1	<< 16)		/* Main Clock Ready */
-
+#define		AT91_PMC_MAINRDY        (1      << 16)          /* Main Clock Frequency Measure Ready */
+#define		AT91_PMC_RCMEAS         (1      << 20)          /* RC Oscillator Frequency Measure (write-only) */
+#define		AT91_PMC_CCSS           (1      << 24)          /* Counter Clock Source Selection */
+#define			AT91_PMC_CCSS_RC_OSC    (0      << 24)          /* MAINF counter clock is the RC oscillator. */
+#define			AT91_PMC_CCSS_XTAL_OSC  (1      << 24)          /* MAINF counter clock is the crystal oscillator. */
 #define	AT91_CKGR_PLLAR		0x28			/* PLL A Register */
 #define	AT91_CKGR_PLLBR		0x2c			/* PLL B Register */
 #define		AT91_PMC_DIV		(0xff  <<  0)		/* Divider */
@@ -133,6 +138,7 @@
 #define			AT91_PMC_CSSMCK_MCK		(1 << 8)
 
 #define	AT91_PMC_IER		0x60			/* Interrupt Enable Register */
+#define		AT91_PMC_MOSCXTS	(1 << 0)		/* Oscillator Startup Time */
 #define	AT91_PMC_IDR		0x64			/* Interrupt Disable Register */
 #define	AT91_PMC_SR		0x68			/* Status Register */
 #define		AT91_PMC_MOSCS		(1 <<  0)		/* MOSCS Flag */
@@ -148,6 +154,17 @@
 #define		AT91_PMC_MOSCRCS	(1 << 17)		/* Main On-Chip RC [some SAM9] */
 #define		AT91_PMC_CFDEV		(1 << 18)		/* Clock Failure Detector Event [some SAM9] */
 #define	AT91_PMC_IMR		0x6c			/* Interrupt Mask Register */
+#define	AT91_PMC_PLLICPR	0x80			/* PLL Charge Pump Current Register */
+#define		AT91_PMC_ICPPLLA	(0xf <<  0)
+#define			AT91_PMC_ICPPLLA_0		(0 <<  0)
+#define			AT91_PMC_ICPPLLA_1		(1 <<  0)
+#define		AT91_PMC_REALLOCK	(0x1 <<  7)
+#define		AT91_PMC_IPLLA		(0xf <<  8)
+#define			AT91_PMC_IPLLA_0		(0 <<  8)
+#define			AT91_PMC_IPLLA_1		(1 <<  8)
+#define			AT91_PMC_IPLLA_2		(2 <<  8)
+#define			AT91_PMC_IPLLA_3		(3 <<  8)
+
 
 #define AT91_PMC_PROT		0xe4			/* Write Protect Mode Register [some SAM9] */
 #define		AT91_PMC_WPEN		(0x1  <<  0)		/* Write Protect Enable */
@@ -163,6 +180,7 @@
 #define AT91_PMC_PCR		0x10c			/* Peripheral Control Register [some SAM9] */
 #define		AT91_PMC_PCR_PID	(0x3f  <<  0)		/* Peripheral ID */
 #define		AT91_PMC_PCR_CMD	(0x1  <<  12)		/* Command */
+#define		AT91_PMC_PCR_DIV_MASK	(0x3  <<  16)
 #define		AT91_PMC_PCR_DIV(n)	((n) <<  16)	/* Divisor value */
 #define			AT91_PMC_PCR_DIV0	0x0		/* Peripheral clock is MCK */
 #define			AT91_PMC_PCR_DIV2	0x1		/* Peripheral clock is MCK/2 */
diff --git a/arch/arm/mach-at91/include/mach/at91_pmc_ll.h b/arch/arm/mach-at91/include/mach/at91_pmc_ll.h
new file mode 100644
index 000000000000..eda40e8e12e7
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91_pmc_ll.h
@@ -0,0 +1,78 @@
+// SPDX-License-Identifier: BSD-1-Clause
+/*
+ * Copyright (c) 2006, Atmel Corporation
+ */
+
+#ifndef AT91_PMC_LL_H
+#define AT91_PMC_LL_H
+
+#include <errno.h>
+#include <asm/io.h>
+#include <mach/at91_pmc.h>
+
+#define AT91_PMC_LL_FLAG_SAM9X5_PMC	(1 << 0)
+#define AT91_PMC_LL_FLAG_MEASURE_XTAL	(1 << 1)
+#define AT91_PMC_LL_FLAG_DISABLE_RC	(1 << 2)
+
+#define AT91_PMC_LL_AT91RM9200	(0)
+#define AT91_PMC_LL_AT91SAM9260	(0)
+#define AT91_PMC_LL_AT91SAM9261	(0)
+#define AT91_PMC_LL_AT91SAM9263	(0)
+#define AT91_PMC_LL_AT91SAM9G45	(0)
+#define AT91_PMC_LL_AT91SAM9X5	(AT91_PMC_LL_FLAG_SAM9X5_PMC | \
+				 AT91_PMC_LL_FLAG_DISABLE_RC)
+#define AT91_PMC_LL_AT91SAM9N12	(AT91_PMC_LL_FLAG_SAM9X5_PMC | \
+				 AT91_PMC_LL_FLAG_DISABLE_RC)
+#define AT91_PMC_LL_SAMA5D2	(AT91_PMC_LL_FLAG_SAM9X5_PMC | \
+				 AT91_PMC_LL_FLAG_MEASURE_XTAL)
+#define AT91_PMC_LL_SAMA5D3	(AT91_PMC_LL_FLAG_SAM9X5_PMC | \
+				 AT91_PMC_LL_FLAG_DISABLE_RC)
+#define AT91_PMC_LL_SAMA5D4	(AT91_PMC_LL_FLAG_SAM9X5_PMC)
+
+void at91_pmc_init(void __iomem *pmc_base, unsigned int flags);
+void at91_pmc_cfg_mck(void __iomem *pmc_base, u32 pmc_mckr, unsigned int flags);
+void at91_pmc_cfg_plla(void __iomem *pmc_base, u32 pmc_pllar, unsigned int flags);
+
+static inline void at91_pmc_init_pll(void __iomem *pmc_base, u32 pmc_pllicpr)
+{
+	writel(pmc_pllicpr, pmc_base + AT91_PMC_PLLICPR);
+}
+
+static inline void at91_pmc_enable_system_clock(void __iomem *pmc_base,
+						unsigned clock_id)
+{
+	writel(clock_id, pmc_base +  AT91_PMC_SCER);
+}
+
+static inline int at91_pmc_enable_periph_clock(void __iomem *pmc_base,
+					       unsigned periph_id)
+{
+	u32 mask = 0x01 << (periph_id % 32);
+
+	if ((periph_id / 32) == 1)
+		writel(mask, pmc_base + AT91_PMC_PCER1);
+	else if ((periph_id / 32) == 0)
+		writel(mask, pmc_base + AT91_PMC_PCER);
+	else
+		return -EINVAL;
+
+	return 0;
+}
+
+static inline int at91_pmc_sam9x5_enable_periph_clock(void __iomem *pmc_base,
+						      unsigned periph_id)
+{
+       u32 pcr = periph_id;
+
+       if (periph_id >= 0x80) /* 7 bits only */
+               return -EINVAL;
+
+       writel(pcr, pmc_base + AT91_PMC_PCR);
+       pcr |= readl(pmc_base + AT91_PMC_PCR) & AT91_PMC_PCR_DIV_MASK;
+       pcr |= AT91_PMC_PCR_CMD | AT91_PMC_PCR_EN;
+       writel(pcr, pmc_base + AT91_PMC_PCR);
+
+       return 0;
+}
+
+#endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
