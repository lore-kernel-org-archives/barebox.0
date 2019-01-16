Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjpGO-00063I-QM
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 17:46:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gjpGL-0006gX-Co
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 18:46:01 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC4)
 (envelope-from <afa@pengutronix.de>) id 1gjpGK-0007qd-Qv
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 18:46:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Jan 2019 18:45:53 +0100
Message-Id: <20190116174559.17416-6-a.fatoum@pengutronix.de>
In-Reply-To: <20190116174559.17416-1-a.fatoum@pengutronix.de>
References: <20190116174559.17416-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 05/11] ARM: at91: import lowlevel clock initialization from
 at91bootstrap
To: barebox@lists.infradead.org

For use by future at91 first stage bootloaders, this commit imports
https://github.com/linux4sam/at91bootstrap/blob/v3.8.12/driver/pmc.c
to do the low level clock initialization.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Makefile                   |   1 +
 .../include/mach/at91_lowlevel_clock.h        |  30 ++++
 arch/arm/mach-at91/include/mach/at91_pmc.h    |   5 +-
 arch/arm/mach-at91/lowlevel_clock.c           | 164 ++++++++++++++++++
 4 files changed, 199 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-at91/include/mach/at91_lowlevel_clock.h
 create mode 100644 arch/arm/mach-at91/lowlevel_clock.c

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index d81683ac121a..7c4c58b080a1 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,4 +1,5 @@
 obj-y += setup.o
+pbl-y += lowlevel_clock.o
 
 ifeq ($(CONFIG_COMMON_CLK_OF_PROVIDER),)
 obj-y += clock.o
diff --git a/arch/arm/mach-at91/include/mach/at91_lowlevel_clock.h b/arch/arm/mach-at91/include/mach/at91_lowlevel_clock.h
new file mode 100644
index 000000000000..5b32cfdc69bf
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91_lowlevel_clock.h
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: BSD-1-Clause
+/*
+ * Copyright (c) 2006, Atmel Corporation
+ */
+
+#ifndef AT91_LOWLEVEL_CLOCK_H
+#define AT91_LOWLEVEL_CLOCK_H
+
+#include <errno.h>
+#include <asm/io.h>
+#include <mach/at91_pmc.h>
+
+void at91_lowlevel_clock_init(void __iomem *pmc_base);
+void at91_pmc_cfg_mck(void __iomem *pmc_base, unsigned int pmc_mckr);
+static inline int at91_pmc_enable_periph_clock(void __iomem *pmc_base,
+					  unsigned periph_id)
+{
+	u32 mask = 0x01 << (periph_id % 32);
+
+	if ((periph_id / 32) == 1)
+		__raw_writel(mask, pmc_base + AT91_PMC_PCER1);
+	else if ((periph_id / 32) == 0)
+		__raw_writel(mask, pmc_base + AT91_PMC_PCER);
+	else
+		return -EINVAL;
+
+	return 0;
+}
+
+#endif
diff --git a/arch/arm/mach-at91/include/mach/at91_pmc.h b/arch/arm/mach-at91/include/mach/at91_pmc.h
index bbbd497afaed..0f13e4f4d391 100644
--- a/arch/arm/mach-at91/include/mach/at91_pmc.h
+++ b/arch/arm/mach-at91/include/mach/at91_pmc.h
@@ -50,7 +50,9 @@
 #define		AT91_PMC_OSCBYPASS	(1    <<  1)		/* Oscillator Bypass */
 #define		AT91_PMC_MOSCRCEN	(1    <<  3)		/* Main On-Chip RC Oscillator Enable [some SAM9] */
 #define		AT91_PMC_OSCOUNT	(0xff <<  8)		/* Main Oscillator Start-up Time */
-#define		AT91_PMC_KEY		(0x37 << 16)		/* MOR Writing Key */
+#define			AT91_PMC_OSCOUNT_(x) ((x) << 8)
+#define		AT91_PMC_KEY_MASK	(0xff << 16)		/* MOR Writing Key */
+#define			AT91_PMC_KEY		(0x37 << 16)
 #define		AT91_PMC_MOSCSEL	(1    << 24)		/* Main Oscillator Selection [some SAM9] */
 #define		AT91_PMC_CFDEN		(1    << 25)		/* Clock Failure Detector Enable [some SAM9] */
 
@@ -133,6 +135,7 @@
 #define			AT91_PMC_CSSMCK_MCK		(1 << 8)
 
 #define	AT91_PMC_IER		0x60			/* Interrupt Enable Register */
+#define		AT91_PMC_MOSCXTS	(1 << 0)		/* Oscillator Startup Time */
 #define	AT91_PMC_IDR		0x64			/* Interrupt Disable Register */
 #define	AT91_PMC_SR		0x68			/* Status Register */
 #define		AT91_PMC_MOSCS		(1 <<  0)		/* MOSCS Flag */
diff --git a/arch/arm/mach-at91/lowlevel_clock.c b/arch/arm/mach-at91/lowlevel_clock.c
new file mode 100644
index 000000000000..c974409a99fc
--- /dev/null
+++ b/arch/arm/mach-at91/lowlevel_clock.c
@@ -0,0 +1,164 @@
+// SPDX-License-Identifier: BSD-1-Clause
+/*
+ * Copyright (c) 2006, Atmel Corporation
+ */
+
+#include <common.h>
+#include <mach/at91_lowlevel_clock.h>
+#include <mach/at91_pmc.h>
+
+#define at91_pmc_write(off, val) writel(val, pmc_base + off)
+#define at91_pmc_read(off) readl(pmc_base + off)
+
+void at91_lowlevel_clock_init(void __iomem *pmc_base)
+{
+	unsigned long tmp;
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
+	if (IS_ENABLED(CONFIG_SOC_AT91SAM9X5) || IS_ENABLED(CONFIG_SOC_AT91SAM9N12)
+	   || IS_ENABLED(CONFIG_SOC_SAMA5)) {
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
+		/* Switch from internal 12MHz RC to the Main Cristal Oscillator */
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
+		if (!IS_ENABLED(CONFIG_ARCH_SAMA5D4)) {
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
+		while (!(at91_pmc_read(AT91_PMC_SR) & AT91_PMC_MOSCXTS))
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
+void at91_pmc_cfg_mck(void __iomem *pmc_base, unsigned int pmc_mckr)
+{
+	u32 tmp;
+
+	/*
+	 * Program the PRES field in the AT91_PMC_MCKR register
+	 */
+	tmp = at91_pmc_read(AT91_PMC_MCKR);
+	tmp &= ~(0x1 << 13);
+	if (IS_ENABLED(CONFIG_SOC_AT91SAM9X5)
+	    || IS_ENABLED(CONFIG_SOC_AT91SAM9N12)
+	    || IS_ENABLED(CONFIG_SOC_SAMA5)) {
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
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
