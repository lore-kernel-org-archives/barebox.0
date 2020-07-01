Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqVDn-0004qv-3B
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 05:24:00 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 07:23:22 +0200
Message-Id: <20200701052340.9462-11-a.fatoum@pengutronix.de>
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
Subject: [PATCH 10/28] ARM: at91: implement sama5d2 lowlevel init
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Port over the low level initialization for sama5d2 SoCs from
at91bootstrap.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../arm/boards/sama5d27-giantboard/lowlevel.c |  9 +--
 arch/arm/boards/sama5d27-som1/lowlevel.c      |  9 +--
 arch/arm/mach-at91/Makefile                   |  1 +
 arch/arm/mach-at91/include/mach/at91_pmc.h    | 22 +++++
 arch/arm/mach-at91/include/mach/sama5d2_ll.h  | 27 +++++++
 arch/arm/mach-at91/sama5d2_ll.c               | 80 +++++++++++++++++++
 6 files changed, 132 insertions(+), 16 deletions(-)
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d2_ll.h
 create mode 100644 arch/arm/mach-at91/sama5d2_ll.c

diff --git a/arch/arm/boards/sama5d27-giantboard/lowlevel.c b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
index 50bc2613c652..e08217105bcc 100644
--- a/arch/arm/boards/sama5d27-giantboard/lowlevel.c
+++ b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
@@ -8,9 +8,7 @@
 
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/at91_pmc_ll.h>
-
-#include <mach/hardware.h>
+#include <mach/sama5d2_ll.h>
 #include <mach/iomux.h>
 #include <debug_ll.h>
 #include <mach/at91_dbgu.h>
@@ -18,11 +16,6 @@
 /* PCK = 492MHz, MCK = 164MHz */
 #define MASTER_CLOCK	164000000
 
-static inline void sama5d2_pmc_enable_periph_clock(int clk)
-{
-	at91_pmc_sam9x5_enable_periph_clock(SAMA5D2_BASE_PMC, clk);
-}
-
 static void dbgu_init(void)
 {
 	unsigned mck = MASTER_CLOCK / 2;
diff --git a/arch/arm/boards/sama5d27-som1/lowlevel.c b/arch/arm/boards/sama5d27-som1/lowlevel.c
index 569960be445d..2b39e5abc396 100644
--- a/arch/arm/boards/sama5d27-som1/lowlevel.c
+++ b/arch/arm/boards/sama5d27-som1/lowlevel.c
@@ -8,9 +8,7 @@
 
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/at91_pmc_ll.h>
-
-#include <mach/hardware.h>
+#include <mach/sama5d2_ll.h>
 #include <mach/iomux.h>
 #include <debug_ll.h>
 #include <mach/at91_dbgu.h>
@@ -22,11 +20,6 @@
 /* PCK = 492MHz, MCK = 164MHz */
 #define MASTER_CLOCK	164000000
 
-static inline void sama5d2_pmc_enable_periph_clock(int clk)
-{
-	at91_pmc_sam9x5_enable_periph_clock(SAMA5D2_BASE_PMC, clk);
-}
-
 static void ek_turn_led(unsigned color)
 {
 	struct {
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index a7e9ce5938e8..ea39d7d8c240 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -25,6 +25,7 @@ ifeq ($(CONFIG_OFDEVICE),)
 obj-$(CONFIG_SOC_AT91SAM9263) += at91sam9263.o at91sam9263_devices.o
 obj-$(CONFIG_SOC_SAMA5D3)	+= sama5d3.o sama5d3_devices.o
 endif
+lwl-$(CONFIG_SOC_SAMA5D2)	+= sama5d2_ll.o
 obj-$(CONFIG_SOC_AT91SAM9G20) += at91sam9260.o at91sam9260_devices.o
 obj-$(CONFIG_SOC_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o
 obj-$(CONFIG_SOC_AT91SAM9X5)	+= at91sam9x5.o at91sam9x5_devices.o
diff --git a/arch/arm/mach-at91/include/mach/at91_pmc.h b/arch/arm/mach-at91/include/mach/at91_pmc.h
index 4d60becefbab..66b4e49286d7 100644
--- a/arch/arm/mach-at91/include/mach/at91_pmc.h
+++ b/arch/arm/mach-at91/include/mach/at91_pmc.h
@@ -42,6 +42,7 @@
 #define	AT91_CKGR_UCKR		0x1C			/* UTMI Clock Register [some SAM9] */
 #define		AT91_PMC_UPLLEN		(1   << 16)		/* UTMI PLL Enable */
 #define		AT91_PMC_UPLLCOUNT	(0xf << 20)		/* UTMI PLL Start-up Time */
+#define			AT91_PMC_UPLLCOUNT_DEFAULT	(0x1UL << 20)
 #define		AT91_PMC_BIASEN		(1   << 24)		/* UTMI BIAS Enable */
 #define		AT91_PMC_BIASCOUNT	(0xf << 28)		/* UTMI BIAS Start-up Time */
 
@@ -66,9 +67,17 @@
 #define	AT91_CKGR_PLLAR		0x28			/* PLL A Register */
 #define	AT91_CKGR_PLLBR		0x2c			/* PLL B Register */
 #define		AT91_PMC_DIV		(0xff  <<  0)		/* Divider */
+#define			AT91_PMC_DIV_BYPASS	(1 << 0)		/* Divider bypass */
 #define		AT91_PMC_PLLCOUNT	(0x3f  <<  8)		/* PLL Counter */
 #define		AT91_PMC_OUT		(3     << 14)		/* PLL Clock Frequency Range */
+#define			AT91_PMC_OUT_0		(0 << 14)
+#define			AT91_PMC_OUT_1		(1 << 14)
+#define			AT91_PMC_OUT_2		(2 << 14)
+#define			AT91_PMC_OUT_3		(3 << 14)
 #define		AT91_PMC_MUL		(0x7ff << 16)		/* PLL Multiplier */
+#define			AT91_PMC_MUL_(n)		(((n) << 16) & AT91_PMC_MUL)
+#define		AT91_PMC3_MUL		(0x7f << 18)		/* PLL Multiplier [SAMA5 only]*/
+#define			AT91_PMC3_MUL_(n)		(((n) << 18) & AT91_PMC3_MUL)
 #define		AT91_PMC_USBDIV		(3     << 28)		/* USB Divisor (PLLB only) */
 #define			AT91_PMC_USBDIV_1		(0 << 28)
 #define			AT91_PMC_USBDIV_2		(1 << 28)
@@ -153,6 +162,7 @@
 #define		AT91_PMC_MOSCSELS	(1 << 16)		/* Main Oscillator Selection [some SAM9] */
 #define		AT91_PMC_MOSCRCS	(1 << 17)		/* Main On-Chip RC [some SAM9] */
 #define		AT91_PMC_CFDEV		(1 << 18)		/* Clock Failure Detector Event [some SAM9] */
+#define		AT91_PMC_GCKRDY		(1 << 24)
 #define	AT91_PMC_IMR		0x6c			/* Interrupt Mask Register */
 #define	AT91_PMC_PLLICPR	0x80			/* PLL Charge Pump Current Register */
 #define		AT91_PMC_ICPPLLA	(0xf <<  0)
@@ -179,6 +189,13 @@
 
 #define AT91_PMC_PCR		0x10c			/* Peripheral Control Register [some SAM9] */
 #define		AT91_PMC_PCR_PID	(0x3f  <<  0)		/* Peripheral ID */
+#define		AT91_PMC_GCKCSS	(0x7 << 8)
+#define			AT91_PMC_GCKCSS_SLOW_CLK	(0x0 << 8)
+#define			AT91_PMC_GCKCSS_MAIN_CLK	(0x1 << 8)
+#define			AT91_PMC_GCKCSS_PLLA_CLK	(0x2 << 8)
+#define			AT91_PMC_GCKCSS_UPLL_CLK	(0x3 << 8)
+#define			AT91_PMC_GCKCSS_MCK_CLK		(0x4 << 8)
+#define			AT91_PMC_GCKCSS_AUDIO_CLK	(0x5 << 8)
 #define		AT91_PMC_PCR_CMD	(0x1  <<  12)		/* Command */
 #define		AT91_PMC_PCR_DIV_MASK	(0x3  <<  16)
 #define		AT91_PMC_PCR_DIV(n)	((n) <<  16)	/* Divisor value */
@@ -186,7 +203,12 @@
 #define			AT91_PMC_PCR_DIV2	0x1		/* Peripheral clock is MCK/2 */
 #define			AT91_PMC_PCR_DIV4	0x2		/* Peripheral clock is MCK/4 */
 #define			AT91_PMC_PCR_DIV8	0x3		/* Peripheral clock is MCK/8 */
+#define		AT91_PMC_GCKDIV		(0xff << 20)
+#define			AT91_PMC_GCKDIV_MSK		0xff
+#define			AT91_PMC_GCKDIV_OFFSET		20
+#define			AT91_PMC_GCKDIV_(x)		(((x) & AT91_PMC_GCKDIV_MSK) << AT91_PMC_GCKDIV_OFFSET)
 #define		AT91_PMC_PCR_EN		(0x1  <<  28)		/* Enable */
+#define		AT91_PMC_GCK_EN		(0x1  <<  29)
 
 #define	AT91_PMC_PCER1		0x100			/* Peripheral Clock Enable Register 1 */
 #define	AT91_PMC_PCDR1		0x104			/* Peripheral Clock Disable Register 1 */
diff --git a/arch/arm/mach-at91/include/mach/sama5d2_ll.h b/arch/arm/mach-at91/include/mach/sama5d2_ll.h
new file mode 100644
index 000000000000..7c38a84f5395
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/sama5d2_ll.h
@@ -0,0 +1,27 @@
+#ifndef __MACH_SAMA5D2_LL__
+#define __MACH_SAMA5D2_LL__
+
+#include <mach/sama5d2.h>
+#include <mach/at91_pmc_ll.h>
+#include <mach/early_udelay.h>
+#include <mach/ddramc.h>
+
+#include <common.h>
+
+static inline void sama5d2_pmc_enable_periph_clock(int clk)
+{
+	at91_pmc_sam9x5_enable_periph_clock(SAMA5D2_BASE_PMC, clk);
+}
+
+void sama5d2_lowlevel_init(void);
+
+/* requires relocation */
+static inline void sama5d2_udelay_init(unsigned int msc)
+{
+	early_udelay_init(SAMA5D2_BASE_PMC, SAMA5D2_BASE_PITC,
+			  SAMA5D2_ID_PIT, msc, AT91_PMC_LL_SAMA5D2);
+}
+
+void sama5d2_ddr2_init(struct at91_ddramc_register *ddramc_reg_config);
+
+#endif
diff --git a/arch/arm/mach-at91/sama5d2_ll.c b/arch/arm/mach-at91/sama5d2_ll.c
new file mode 100644
index 000000000000..a038bf4b86e6
--- /dev/null
+++ b/arch/arm/mach-at91/sama5d2_ll.c
@@ -0,0 +1,80 @@
+// SPDX-License-Identifier: BSD-1-Clause
+/*
+ * Copyright (c) 2017, Microchip Corporation
+ *
+ * Microchip's name may not be used to endorse or promote products derived
+ * from this software without specific prior written permission.
+ */
+
+#include <mach/sama5d2_ll.h>
+#include <mach/at91_ddrsdrc.h>
+#include <mach/ddramc.h>
+#include <mach/early_udelay.h>
+#include <mach/at91_rstc.h>
+#include <asm/barebox-arm.h>
+
+#define sama5d2_pmc_write(off, val) writel(val, SAMA5D2_BASE_PMC + off)
+#define sama5d2_pmc_read(off) readl(SAMA5D2_BASE_PMC + off)
+
+void sama5d2_ddr2_init(struct at91_ddramc_register *ddramc_reg_config)
+{
+	unsigned int reg;
+
+	/* enable ddr2 clock */
+	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_MPDDRC);
+	sama5d2_pmc_write(AT91_PMC_SCER, AT91CAP9_PMC_DDR);
+
+	reg = AT91_MPDDRC_RD_DATA_PATH_ONE_CYCLES;
+	writel(reg, SAMA5D2_BASE_MPDDRC + AT91_MPDDRC_RD_DATA_PATH);
+
+	reg = readl(SAMA5D2_BASE_MPDDRC + AT91_MPDDRC_IO_CALIBR);
+	reg &= ~AT91_MPDDRC_RDIV;
+	reg &= ~AT91_MPDDRC_TZQIO;
+	reg |= AT91_MPDDRC_RDIV_DDR2_RZQ_50;
+	reg |= AT91_MPDDRC_TZQIO_(101);
+	writel(reg, SAMA5D2_BASE_MPDDRC + AT91_MPDDRC_IO_CALIBR);
+
+	/* DDRAM2 Controller initialize */
+	at91_ddram_initialize(SAMA5D2_BASE_MPDDRC, IOMEM(SAMA5_DDRCS),
+			      ddramc_reg_config);
+}
+
+static void sama5d2_pmc_init(void)
+{
+	at91_pmc_init(SAMA5D2_BASE_PMC, AT91_PMC_LL_SAMA5D2);
+
+	/* Configure PLLA = MOSC * (PLL_MULA + 1) / PLL_DIVA */
+	sama5d2_pmc_write(AT91_CKGR_PLLAR, AT91_PMC_PLLA_WR_ERRATA);
+	sama5d2_pmc_write(AT91_CKGR_PLLAR, AT91_PMC_PLLA_WR_ERRATA
+		       | AT91_PMC3_MUL_(40) | AT91_PMC_OUT_0
+		       | AT91_PMC_PLLCOUNT
+		       | AT91_PMC_DIV_BYPASS);
+
+	while (!(sama5d2_pmc_read(AT91_PMC_SR) & AT91_PMC_LOCKA))
+		;
+
+	/* Initialize PLLA charge pump */
+	/* No need: we keep what is set in ROM code */
+	//sama5d2_pmc_write(AT91_PMC_PLLICPR, AT91_PMC_IPLLA_3);
+
+	/* Switch PCK/MCK on PLLA output */
+	at91_pmc_cfg_mck(SAMA5D2_BASE_PMC,
+			AT91_PMC_H32MXDIV
+			| AT91_PMC_PLLADIV2_ON
+			| AT91SAM9_PMC_MDIV_3
+			| AT91_PMC_CSS_PLLA,
+			AT91_PMC_LL_SAMA5D2);
+}
+
+static void sama5d2_rstc_init(void)
+{
+	writel(AT91_RSTC_KEY | AT91_RSTC_URSTEN,
+	       SAMA5D2_BASE_RSTC + AT91_RSTC_MR);
+}
+
+void sama5d2_lowlevel_init(void)
+{
+	arm_cpu_lowlevel_init();
+	sama5d2_pmc_init();
+	sama5d2_rstc_init();
+}
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
