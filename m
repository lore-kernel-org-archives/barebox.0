Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo1.mail-out.ovh.net ([46.105.43.205]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TwWay-0006B3-85
 for barebox@lists.infradead.org; Sat, 19 Jan 2013 11:28:31 +0000
Received: from mail405.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 61105FF91A0
 for <barebox@lists.infradead.org>; Sat, 19 Jan 2013 12:42:28 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 19 Jan 2013 12:26:50 +0100
Message-Id: <1358594814-8297-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358594814-8297-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130119112125.GH22953@game.jcrosoft.org>
 <1358594814-8297-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/7] at91: sam926x: switch lowlevel param to c code
To: barebox@lists.infradead.org

Instead of hardcode define use a struct that the board fill

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9263ek/Makefile             |    5 +
 arch/arm/boards/at91sam9263ek/config.h             |   99 +-------------
 arch/arm/boards/at91sam9263ek/lowlevel_init.c      |  104 +++++++++++++++
 arch/arm/boards/mmccpu/Makefile                    |    5 +
 arch/arm/boards/mmccpu/config.h                    |  130 +------------------
 arch/arm/boards/mmccpu/lowlevel_init.c             |  135 ++++++++++++++++++++
 arch/arm/boards/pm9261/Makefile                    |    5 +
 arch/arm/boards/pm9261/config.h                    |   99 +-------------
 arch/arm/boards/pm9261/lowlevel_init.c             |  102 +++++++++++++++
 arch/arm/boards/pm9263/Makefile                    |    5 +
 arch/arm/boards/pm9263/config.h                    |  115 +----------------
 arch/arm/boards/pm9263/lowlevel_init.c             |  121 ++++++++++++++++++
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c     |   64 ++++++----
 .../mach-at91/include/mach/at91_lowlevel_init.h    |   33 +++++
 14 files changed, 580 insertions(+), 442 deletions(-)
 rewrite arch/arm/boards/at91sam9263ek/config.h (95%)
 create mode 100644 arch/arm/boards/at91sam9263ek/lowlevel_init.c
 rewrite arch/arm/boards/mmccpu/config.h (97%)
 create mode 100644 arch/arm/boards/mmccpu/lowlevel_init.c
 rewrite arch/arm/boards/pm9261/config.h (95%)
 create mode 100644 arch/arm/boards/pm9261/lowlevel_init.c
 rewrite arch/arm/boards/pm9263/config.h (97%)
 create mode 100644 arch/arm/boards/pm9263/lowlevel_init.c
 create mode 100644 arch/arm/mach-at91/include/mach/at91_lowlevel_init.h

diff --git a/arch/arm/boards/at91sam9263ek/Makefile b/arch/arm/boards/at91sam9263ek/Makefile
index eb072c0..aecbc5a 100644
--- a/arch/arm/boards/at91sam9263ek/Makefile
+++ b/arch/arm/boards/at91sam9263ek/Makefile
@@ -1 +1,6 @@
 obj-y += init.o
+
+lowlevel_init-y = lowlevel_init.o
+obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
+
+pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
diff --git a/arch/arm/boards/at91sam9263ek/config.h b/arch/arm/boards/at91sam9263ek/config.h
dissimilarity index 95%
index 14eb4fe..cc12040 100644
--- a/arch/arm/boards/at91sam9263ek/config.h
+++ b/arch/arm/boards/at91sam9263ek/config.h
@@ -1,93 +1,6 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#define AT91_MAIN_CLOCK		16367660	/* 16.367 MHz crystal */
-
-#define MASTER_PLL_MUL		171
-#define MASTER_PLL_DIV		14
-
-/* clocks */
-#define CONFIG_SYS_MOR_VAL						\
-		(AT91_PMC_MOSCEN |					\
-		 (255 << 8))		/* Main Oscillator Start-up Time */
-#define CONFIG_SYS_PLLAR_VAL						\
-		(AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */ \
-		 AT91_PMC_OUT |						\
-		 AT91_PMC_PLLCOUNT |	/* PLL Counter */		\
-		 (2 << 28) |		/* PLL Clock Frequency Range */	\
-		 ((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV))
-
-/* PCK/2 = MCK Master Clock from PLLA */
-#define	CONFIG_SYS_MCKR1_VAL		\
-		(AT91_PMC_CSS_SLOW |	\
-		 AT91_PMC_PRES_1 |	\
-		 AT91SAM9_PMC_MDIV_2 |	\
-		 AT91_PMC_PDIV_1)
-/* PCK/2 = MCK Master Clock from PLLA */
-#define	CONFIG_SYS_MCKR2_VAL		\
-		(AT91_PMC_CSS_PLLA |	\
-		 AT91_PMC_PRES_1 |	\
-		 AT91SAM9_PMC_MDIV_2 |	\
-		 AT91_PMC_PDIV_1)
-
-/* define PDC[31:16] as DATA[31:16] */
-#define CONFIG_SYS_PIOD_PDR_VAL1	0xFFFF0000
-/* no pull-up for D[31:16] */
-#define CONFIG_SYS_PIOD_PPUDR_VAL	0xFFFF0000
-/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
-#define CONFIG_SYS_MATRIX_EBI0CSA_VAL					\
-	(AT91_MATRIX_EBI0_DBPUC | AT91_MATRIX_EBI0_VDDIOMSEL_3_3V |	\
-	 AT91_MATRIX_EBI0_CS1A_SDRAMC)
-
-/* SDRAM */
-/* SDRAMC_TR - Refresh Timer register */
-#define CONFIG_SYS_SDRC_TR_VAL1		0x13C
-/* SDRAMC_CR - Configuration register*/
-#define CONFIG_SYS_SDRC_CR_VAL							\
-		(AT91_SDRAMC_NC_9 |						\
-		 AT91_SDRAMC_NR_13 |						\
-		 AT91_SDRAMC_NB_4 |						\
-		 AT91_SDRAMC_CAS_3 |						\
-		 AT91_SDRAMC_DBW_32 |						\
-		 (1 <<  8) |		/* Write Recovery Delay */		\
-		 (7 << 12) |		/* Row Cycle Delay */			\
-		 (2 << 16) |		/* Row Precharge Delay */		\
-		 (2 << 20) |		/* Row to Column Delay */		\
-		 (5 << 24) |		/* Active to Precharge Delay */		\
-		 (1 << 28))		/* Exit Self Refresh to Active Delay */
-
-/* Memory Device Register -> SDRAM */
-#define CONFIG_SYS_SDRC_MDR_VAL		AT91_SDRAMC_MD_SDRAM
-#define CONFIG_SYS_SDRC_TR_VAL2		1200		/* SDRAM_TR */
-
-/* setup SMC0, CS0 (NOR Flash) - 16-bit, 15 WS */
-#define CONFIG_SYS_SMC_CS	0
-#define CONFIG_SYS_SMC_SETUP_VAL					\
-		(AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |	\
-		 AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10))
-#define CONFIG_SYS_SMC_PULSE_VAL					\
-		(AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |	\
-		 AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11))
-#define CONFIG_SYS_SMC_CYCLE_VAL	\
-		(AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22))
-#define CONFIG_SYS_SMC_MODE_VAL					\
-		(AT91_SMC_READMODE | AT91_SMC_WRITEMODE |	\
-		 AT91_SMC_DBW_16 |				\
-		 AT91_SMC_TDFMODE |				\
-		 AT91_SMC_TDF_(6))
-
-/* user reset enable */
-#define CONFIG_SYS_RSTC_RMR_VAL			\
-		(AT91_RSTC_KEY |		\
-		AT91_RSTC_PROCRST |		\
-		AT91_RSTC_RSTTYP_WAKEUP |	\
-		AT91_RSTC_RSTTYP_WATCHDOG)
-
-/* Disable Watchdog */
-#define CONFIG_SYS_WDTC_WDMR_VAL				\
-		(AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |	\
-		 AT91_WDT_WDV |					\
-		 AT91_WDT_WDDIS |				\
-		 AT91_WDT_WDD)
-
-#endif	/* __CONFIG_H */
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		16367660	/* 16.367 MHz crystal */
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9263ek/lowlevel_init.c b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
new file mode 100644
index 0000000..2f8b312
--- /dev/null
+++ b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
@@ -0,0 +1,104 @@
+/*
+ * Copyright (C) 2009-2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mach/hardware.h>
+#include <mach/at91_rstc.h>
+#include <mach/at91_wdt.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/at91sam9_sdramc.h>
+#include <mach/at91sam9_matrix.h>
+#include <mach/at91_lowlevel_init.h>
+
+#define MASTER_PLL_MUL		171
+#define MASTER_PLL_DIV		14
+
+void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg)
+{
+	/* Disable Watchdog */
+	cfg->wdt_mr =
+		AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |
+		AT91_WDT_WDV |
+		AT91_WDT_WDDIS |
+		AT91_WDT_WDD;
+
+	/* define PDC[31:16] as DATA[31:16] */
+	cfg->ebi_pio_pdr = 0xFFFF0000;
+	/* no pull-up for D[31:16] */
+	cfg->ebi_pio_ppudr = 0xFFFF0000;
+	/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
+	cfg->ebi_csa =
+		AT91_MATRIX_EBI0_DBPUC | AT91_MATRIX_EBI0_VDDIOMSEL_3_3V |
+		AT91_MATRIX_EBI0_CS1A_SDRAMC;
+
+	cfg->smc_cs = 0;
+	cfg->smc_mode =
+		AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
+		AT91_SMC_DBW_16 |
+		AT91_SMC_TDFMODE |
+		AT91_SMC_TDF_(6);
+	cfg->smc_cycle =
+		AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22);
+	cfg->smc_pulse =
+		AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |
+		AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11);
+	cfg->smc_setup =
+		AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |
+		AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10);
+
+	cfg->pmc_mor =
+		AT91_PMC_MOSCEN |
+		(255 << 8);		/* Main Oscillator Start-up Time */
+	cfg->pmc_pllar =
+		AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */
+		AT91_PMC_OUT |
+		AT91_PMC_PLLCOUNT |	/* PLL Counter */
+		(2 << 28) |		/* PLL Clock Frequency Range */
+		((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV);
+	/* PCK/2 = MCK Master Clock from PLLA */
+	cfg->pmc_mckr1 =
+		AT91_PMC_CSS_SLOW |
+		AT91_PMC_PRES_1 |
+		AT91SAM9_PMC_MDIV_2 |
+		AT91_PMC_PDIV_1;
+	/* PCK/2 = MCK Master Clock from PLLA */
+	cfg->pmc_mckr2 =
+		AT91_PMC_CSS_PLLA |
+		AT91_PMC_PRES_1 |
+		AT91SAM9_PMC_MDIV_2 |
+		AT91_PMC_PDIV_1;
+
+	/* SDRAM */
+	/* SDRAMC_TR - Refresh Timer register */
+	cfg->sdrc_tr1 = 0x13C;
+	/* SDRAMC_CR - Configuration register*/
+	cfg->sdrc_cr =
+		AT91_SDRAMC_NC_9 |
+		AT91_SDRAMC_NR_13 |
+		AT91_SDRAMC_NB_4 |
+		AT91_SDRAMC_CAS_3 |
+		AT91_SDRAMC_DBW_32 |
+		(1 <<  8) |		/* Write Recovery Delay */
+		(7 << 12) |		/* Row Cycle Delay */
+		(2 << 16) |		/* Row Precharge Delay */
+		(2 << 20) |		/* Row to Column Delay */
+		(5 << 24) |		/* Active to Precharge Delay */
+		(1 << 28);		/* Exit Self Refresh to Active Delay */
+
+	/* Memory Device Register -> SDRAM */
+	cfg->sdrc_mdr = AT91_SDRAMC_MD_SDRAM;
+	/* SDRAM_TR */
+	cfg->sdrc_tr2 = 1200;
+
+	/* user reset enable */
+	cfg->rstc_rmr =
+		AT91_RSTC_KEY |
+		AT91_RSTC_PROCRST |
+		AT91_RSTC_RSTTYP_WAKEUP |
+		AT91_RSTC_RSTTYP_WATCHDOG;
+}
diff --git a/arch/arm/boards/mmccpu/Makefile b/arch/arm/boards/mmccpu/Makefile
index eb072c0..aecbc5a 100644
--- a/arch/arm/boards/mmccpu/Makefile
+++ b/arch/arm/boards/mmccpu/Makefile
@@ -1 +1,6 @@
 obj-y += init.o
+
+lowlevel_init-y = lowlevel_init.o
+obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
+
+pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
diff --git a/arch/arm/boards/mmccpu/config.h b/arch/arm/boards/mmccpu/config.h
dissimilarity index 97%
index e6215dc..c896a93 100644
--- a/arch/arm/boards/mmccpu/config.h
+++ b/arch/arm/boards/mmccpu/config.h
@@ -1,124 +1,6 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#define AT91_MAIN_CLOCK		18432000
-
-/* values */
-#define MASTER_PLL_MUL		54
-#define MASTER_PLL_DIV		4
-
-/* clocks */
-#define CONFIG_SYS_MOR_VAL						\
-		(AT91_PMC_MOSCEN |					\
-		 (255 << 8))		/* Main Oscillator Start-up Time */
-#define CONFIG_SYS_PLLAR_VAL						\
-		(AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */ \
-		 AT91_PMC_OUT |						\
-		 AT91_PMC_PLLCOUNT |	/* PLL Counter */		\
-		 (2 << 28) |		/* PLL Clock Frequency Range */	\
-		 ((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV))
-
-/* PCK/2 = MCK Master Clock from PLLA */
-#define	CONFIG_SYS_MCKR1_VAL		\
-		(AT91_PMC_CSS_SLOW |	\
-		 AT91_PMC_PRES_1 |	\
-		 AT91SAM9_PMC_MDIV_2 |	\
-		 AT91_PMC_PDIV_1)
-/* PCK/2 = MCK Master Clock from PLLA */
-#define	CONFIG_SYS_MCKR2_VAL		\
-		(AT91_PMC_CSS_PLLA |	\
-		 AT91_PMC_PRES_1 |	\
-		 AT91SAM9_PMC_MDIV_2 |	\
-		 AT91_PMC_PDIV_1)
-
-/* define PDC[31:16] as DATA[31:16] */
-#define CONFIG_SYS_PIOD_PDR_VAL1	0xFFFF0000
-/* no pull-up for D[31:16] */
-#define CONFIG_SYS_PIOD_PPUDR_VAL	0xFFFF0000
-/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 1.8V memories */
-#define CONFIG_SYS_MATRIX_EBI0CSA_VAL					\
-	(AT91_MATRIX_EBI0_DBPUC | AT91_MATRIX_EBI0_VDDIOMSEL_1_8V |	\
-	 AT91_MATRIX_EBI0_CS1A_SDRAMC | AT91_MATRIX_EBI0_CS3A_SMC_SMARTMEDIA)
-
-/* SDRAM */
-/* SDRAMC_TR - Refresh Timer register */
-#define CONFIG_SYS_SDRC_TR_VAL1		0x13c
-/* SDRAMC_CR - Configuration register*/
-#define CONFIG_SYS_SDRC_CR_VAL							\
-		(AT91_SDRAMC_NC_9 |						\
-		 AT91_SDRAMC_NR_13 |						\
-		 AT91_SDRAMC_NB_4 |						\
-		 AT91_SDRAMC_CAS_3 |						\
-		 AT91_SDRAMC_DBW_32 |						\
-		 (2 <<  8) |	/* tWR -  Write Recovery Delay */		\
-		 (8 << 12) |	/* tRC -  Row Cycle Delay */			\
-		 (2 << 16) |	/* tRP -  Row Precharge Delay */		\
-		 (2 << 20) |	/* tRCD - Row to Column Delay */		\
-		 (5 << 24) |	/* tRAS - Active to Precharge Delay */		\
-		 (12 << 28))	/* tXSR - Exit Self Refresh to Active Delay */
-
-/* Memory Device Register -> SDRAM */
-#define CONFIG_SYS_SDRC_MDR_VAL		AT91_SDRAMC_MD_SDRAM
-#define CONFIG_SYS_SDRC_TR_VAL2		780		/* SDRAM_TR */
-
-/* setup CS0 (NOR Flash) - 16-bit */
-#define CONFIG_SYS_SMC_CS	0
-#if 1
-#define CONFIG_SYS_SMC_SETUP_VAL					\
-		(AT91_SMC_NWESETUP_(3) | AT91_SMC_NCS_WRSETUP_(2) |	\
-		 AT91_SMC_NRDSETUP_(8) | AT91_SMC_NCS_RDSETUP_(0))
-#define CONFIG_SYS_SMC_PULSE_VAL					\
-		(AT91_SMC_NWEPULSE_(5) | AT91_SMC_NCS_WRPULSE_(7) |	\
-		 AT91_SMC_NRDPULSE_(5) | AT91_SMC_NCS_RDPULSE_(13))
-#define CONFIG_SYS_SMC_CYCLE_VAL	\
-		(AT91_SMC_NWECYCLE_(16) | AT91_SMC_NRDCYCLE_(16))
-#define CONFIG_SYS_SMC_MODE_VAL					\
-		(AT91_SMC_READMODE | AT91_SMC_WRITEMODE |	\
-		 AT91_SMC_DBW_16 |				\
-		 AT91_SMC_TDFMODE |				\
-		 AT91_SMC_TDF_(6))
-#elif 0	/* slow setup */
-#define CONFIG_SYS_SMC_SETUP_VAL					\
-		(AT91_SMC_NWESETUP_(3) | AT91_SMC_NCS_WRSETUP_(2) |	\
-		 AT91_SMC_NRDSETUP_(8) | AT91_SMC_NCS_RDSETUP_(0))
-#define CONFIG_SYS_SMC_PULSE_VAL					\
-		(AT91_SMC_NWEPULSE_(5) | AT91_SMC_NCS_WRPULSE_(7) |	\
-		 AT91_SMC_NRDPULSE_(5) | AT91_SMC_NCS_RDPULSE_(13))
-#define CONFIG_SYS_SMC_CYCLE_VAL	\
-		(AT91_SMC_NWECYCLE_(0xd00) | AT91_SMC_NRDCYCLE_(0xd00))
-#define CONFIG_SYS_SMC_MODE_VAL					\
-		(AT91_SMC_READMODE | AT91_SMC_WRITEMODE |	\
-		 AT91_SMC_DBW_16 |				\
-		 AT91_SMC_TDFMODE |				\
-		 AT91_SMC_TDF_(1))
-#else	/* RONETIX' original values */
-#define CONFIG_SYS_SMC_SETUP_VAL					\
-		(AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |	\
-		 AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10))
-#define CONFIG_SYS_SMC_PULSE_VAL					\
-		(AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |	\
-		 AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11))
-#define CONFIG_SYS_SMC_CYCLE_VAL	\
-		(AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22))
-#define CONFIG_SYS_SMC_MODE_VAL					\
-		(AT91_SMC_READMODE | AT91_SMC_WRITEMODE |	\
-		 AT91_SMC_DBW_16 |				\
-		 AT91_SMC_TDFMODE |				\
-		 AT91_SMC_TDF_(6))
-#endif
-
-/* user reset enable */
-#define CONFIG_SYS_RSTC_RMR_VAL			\
-		(AT91_RSTC_KEY |		\
-		AT91_RSTC_PROCRST |		\
-		AT91_RSTC_RSTTYP_WAKEUP |	\
-		AT91_RSTC_RSTTYP_WATCHDOG)
-
-/* Disable Watchdog */
-#define CONFIG_SYS_WDTC_WDMR_VAL				\
-		(AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |	\
-		 AT91_WDT_WDV |					\
-		 AT91_WDT_WDDIS |				\
-		 AT91_WDT_WDD)
-
-#endif	/* __CONFIG_H */
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		18432000
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/mmccpu/lowlevel_init.c b/arch/arm/boards/mmccpu/lowlevel_init.c
new file mode 100644
index 0000000..68c609f
--- /dev/null
+++ b/arch/arm/boards/mmccpu/lowlevel_init.c
@@ -0,0 +1,135 @@
+/*
+ * Copyright (C) 2009-2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mach/hardware.h>
+#include <mach/at91_rstc.h>
+#include <mach/at91_wdt.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/at91sam9_sdramc.h>
+#include <mach/at91sam9_matrix.h>
+#include <mach/at91_lowlevel_init.h>
+
+#define MASTER_PLL_MUL		54
+#define MASTER_PLL_DIV		4
+
+void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg)
+{
+	/* Disable Watchdog */
+	cfg->wdt_mr =
+		AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |
+		AT91_WDT_WDV |
+		AT91_WDT_WDDIS |
+		AT91_WDT_WDD;
+
+	/* define PDC[31:16] as DATA[31:16] */
+	cfg->ebi_pio_pdr = 0xFFFF0000;
+	/* no pull-up for D[31:16] */
+	cfg->ebi_pio_ppudr = 0xFFFF0000;
+	/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
+	cfg->ebi_csa =
+		AT91_MATRIX_EBI0_DBPUC | AT91_MATRIX_EBI0_VDDIOMSEL_1_8V |
+		AT91_MATRIX_EBI0_CS1A_SDRAMC |
+		AT91_MATRIX_EBI0_CS3A_SMC_SMARTMEDIA;
+
+	cfg->smc_cs = 0;
+#if 1
+	cfg->smc_mode =
+		AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
+		AT91_SMC_DBW_16 |
+		AT91_SMC_TDFMODE |
+		AT91_SMC_TDF_(6);
+	cfg->smc_cycle =
+		AT91_SMC_NWECYCLE_(16) | AT91_SMC_NRDCYCLE_(16);
+	cfg->smc_pulse =
+		AT91_SMC_NWEPULSE_(5) | AT91_SMC_NCS_WRPULSE_(7) |
+		AT91_SMC_NRDPULSE_(5) | AT91_SMC_NCS_RDPULSE_(13);
+	cfg->smc_setup =
+		AT91_SMC_NWESETUP_(3) | AT91_SMC_NCS_WRSETUP_(2) |
+		AT91_SMC_NRDSETUP_(8) | AT91_SMC_NCS_RDSETUP_(0);
+#elif 0	/* slow setup */
+	cfg->smc_mode =
+		AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
+		AT91_SMC_DBW_16 |
+		AT91_SMC_TDFMODE |
+		AT91_SMC_TDF_(1);
+	cfg->smc_cycle =
+		AT91_SMC_NWECYCLE_(0xd00) | AT91_SMC_NRDCYCLE_(0xd00);
+	cfg->smc_pulse =
+		AT91_SMC_NWEPULSE_(5) | AT91_SMC_NCS_WRPULSE_(7) |
+		AT91_SMC_NRDPULSE_(5) | AT91_SMC_NCS_RDPULSE_(13);
+	cfg->smc_setup =
+		AT91_SMC_NWESETUP_(3) | AT91_SMC_NCS_WRSETUP_(2) |
+		AT91_SMC_NRDSETUP_(8) | AT91_SMC_NCS_RDSETUP_(0);
+#else	/* RONETIX' original values */
+	cfg->smc_mode =
+		AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
+		AT91_SMC_DBW_16 |
+		AT91_SMC_TDFMODE |
+		AT91_SMC_TDF_(6);
+	cfg->smc_cycle =
+		AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22);
+	cfg->smc_pulse =
+		AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |
+		AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11);
+	cfg->smc_setup =
+		AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |
+		AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10);
+#endif
+
+	cfg->pmc_mor =
+		AT91_PMC_MSCEN |
+		(255 << 8);		/* Main Oscillator Start-up Time */
+	cfg->pmc_pllar =
+		AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */
+		AT91_PMC_OUT |
+		AT91_PMC_PLLCOUNT |	/* PLL Counter */
+		(2 << 28) |		/* PLL Clock Frequency Range */
+		((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV);
+	/* PCK/2 = MCK Master Clock from PLLA */
+	cfg->pmc_mckr1 =
+		AT91_PMC_CSS_SLOW |
+		AT91_PMC_PRES_1 |
+		AT91SAM9_PMC_MDIV_2 |
+		AT91_PMC_PDIV_1;
+	/* PCK/2 = MCK Master Clock from PLLA */
+	cfg->pmc_mckr2 =
+		AT91_PMC_CSS_PLLA |
+		AT91_PMC_PRES_1 |
+		AT91SAM9_PMC_MDIV_2 |
+		AT91_PMC_PDIV_1;
+
+	/* SDRAM */
+	/* SDRAMC_TR - Refresh Timer register */
+	cfg->sdrc_tr1 = 0x13C;
+	/* SDRAMC_CR - Configuration register*/
+	cfg->sdrc_cr =
+		AT91_SDRAMC_NC_9 |
+		AT91_SDRAMC_NR_13 |
+		AT91_SDRAMC_NB_4 |
+		AT91_SDRAMC_CAS_3 |
+		AT91_SDRAMC_DBW_32 |
+		(2 <<  8) |	/* tWR -  Write Recovery Delay */
+		(8 << 12) |	/* tRC -  Row Cycle Delay */
+		(2 << 16) |	/* tRP -  Row Precharge Delay */
+		(2 << 20) |	/* tRCD - Row to Column Delay */
+		(5 << 24) |	/* tRAS - Active to Precharge Delay */
+		(12 << 28);	/* tXSR - Exit Self Refresh to Active Delay */
+
+	/* Memory Device Register -> SDRAM */
+	cfg->sdrc_mdr = AT91_SDRAMC_MD_SDRAM;
+	/* SDRAM_TR */
+	cfg->sdrc_tr2 = 780;
+
+	/* user reset enable */
+	cfg->rstc_rmr =
+		AT91_RSTC_KEY |
+		AT91_RSTC_PROCRST |
+		AT91_RSTC_RSTTYP_WAKEUP |
+		AT91_RSTC_RSTTYP_WATCHDOG;
+}
diff --git a/arch/arm/boards/pm9261/Makefile b/arch/arm/boards/pm9261/Makefile
index eb072c0..aecbc5a 100644
--- a/arch/arm/boards/pm9261/Makefile
+++ b/arch/arm/boards/pm9261/Makefile
@@ -1 +1,6 @@
 obj-y += init.o
+
+lowlevel_init-y = lowlevel_init.o
+obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
+
+pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
diff --git a/arch/arm/boards/pm9261/config.h b/arch/arm/boards/pm9261/config.h
dissimilarity index 95%
index 4602aa7..006820c 100644
--- a/arch/arm/boards/pm9261/config.h
+++ b/arch/arm/boards/pm9261/config.h
@@ -1,93 +1,6 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#define AT91_MAIN_CLOCK		18432000	/* 18.432 MHz crystal */
-
-#define MASTER_PLL_DIV		15
-#define MASTER_PLL_MUL		162
-#define MAIN_PLL_DIV		2
-
-/* clocks */
-#define CONFIG_SYS_MOR_VAL						\
-		(AT91_PMC_MOSCEN |					\
-		 (255 << 8))		/* Main Oscillator Start-up Time */
-#define CONFIG_SYS_PLLAR_VAL						\
-		(AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */ \
-		 AT91_PMC_OUT |						\
-		 ((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV))
-
-/* PCK/2 = MCK Master Clock from PLLA */
-#define	CONFIG_SYS_MCKR1_VAL		\
-		(AT91_PMC_CSS_SLOW |	\
-		 AT91_PMC_PRES_1 |	\
-		 AT91SAM9_PMC_MDIV_2 |	\
-		 AT91_PMC_PDIV_1)
-
-/* PCK/2 = MCK Master Clock from PLLA */
-#define	CONFIG_SYS_MCKR2_VAL		\
-		(AT91_PMC_CSS_PLLA |	\
-		 AT91_PMC_PRES_1 |	\
-		 AT91SAM9_PMC_MDIV_2 |	\
-		 AT91_PMC_PDIV_1)
-
-/* define PDC[31:16] as DATA[31:16] */
-#define CONFIG_SYS_PIOC_PDR_VAL1	0xFFFF0000
-/* no pull-up for D[31:16] */
-#define CONFIG_SYS_PIOC_PPUDR_VAL	0xFFFF0000
-
-/* EBI_CSA, no pull-ups for D[15:0], CS1 SDRAM, CS3 NAND Flash */
-#define CONFIG_SYS_MATRIX_EBICSA_VAL		\
-       (AT91_MATRIX_DBPUC | AT91_MATRIX_CS1A_SDRAMC)
-
-/* SDRAM */
-/* SDRAMC_TR - Refresh Timer register */
-#define CONFIG_SYS_SDRC_TR_VAL1		0x13C
-/* SDRAMC_CR - Configuration register*/
-#define CONFIG_SYS_SDRC_CR_VAL							\
-		(AT91_SDRAMC_NC_9 |						\
-		 AT91_SDRAMC_NR_13 |						\
-		 AT91_SDRAMC_NB_4 |						\
-		 AT91_SDRAMC_CAS_3 |						\
-		 AT91_SDRAMC_DBW_32 |						\
-		 (1 <<  8) |		/* Write Recovery Delay */		\
-		 (7 << 12) |		/* Row Cycle Delay */			\
-		 (3 << 16) |		/* Row Precharge Delay */		\
-		 (2 << 20) |		/* Row to Column Delay */		\
-		 (5 << 24) |		/* Active to Precharge Delay */		\
-		 (1 << 28))		/* Exit Self Refresh to Active Delay */
-
-/* Memory Device Register -> SDRAM */
-#define CONFIG_SYS_SDRC_MDR_VAL		AT91_SDRAMC_MD_SDRAM
-#define CONFIG_SYS_SDRC_TR_VAL2		1200		/* SDRAM_TR */
-
-/* setup SMC0, CS0 (NOR Flash) - 16-bit, 15 WS */
-#define CONFIG_SYS_SMC_CS	0
-#define CONFIG_SYS_SMC_SETUP_VAL					\
-		(AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |	\
-		 AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10))
-#define CONFIG_SYS_SMC_PULSE_VAL					\
-		(AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |	\
-		 AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11))
-#define CONFIG_SYS_SMC_CYCLE_VAL	\
-		(AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22))
-#define CONFIG_SYS_SMC_MODE_VAL					\
-		(AT91_SMC_READMODE | AT91_SMC_WRITEMODE |	\
-		 AT91_SMC_DBW_16 |				\
-		 AT91_SMC_TDFMODE |				\
-		 AT91_SMC_TDF_(6))
-
-/* user reset enable */
-#define CONFIG_SYS_RSTC_RMR_VAL			\
-		(AT91_RSTC_KEY |		\
-		AT91_RSTC_PROCRST |		\
-		AT91_RSTC_RSTTYP_WAKEUP |	\
-		AT91_RSTC_RSTTYP_WATCHDOG)
-
-/* Disable Watchdog */
-#define CONFIG_SYS_WDTC_WDMR_VAL				\
-		(AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |	\
-		 AT91_WDT_WDV |					\
-		 AT91_WDT_WDDIS |				\
-		 AT91_WDT_WDD)
-
-#endif	/* __CONFIG_H */
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		18432000	/* 18.432 MHz crystal */
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/pm9261/lowlevel_init.c b/arch/arm/boards/pm9261/lowlevel_init.c
new file mode 100644
index 0000000..91a64b4
--- /dev/null
+++ b/arch/arm/boards/pm9261/lowlevel_init.c
@@ -0,0 +1,102 @@
+/*
+ * Copyright (C) 2009-2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mach/hardware.h>
+#include <mach/at91_rstc.h>
+#include <mach/at91_wdt.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/at91sam9_sdramc.h>
+#include <mach/at91sam9_matrix.h>
+#include <mach/at91_lowlevel_init.h>
+
+#define MASTER_PLL_DIV		15
+#define MASTER_PLL_MUL		162
+#define MAIN_PLL_DIV		2
+
+void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg)
+{
+	/* Disable Watchdog */
+	cfg->wdt_mr =
+		AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |
+		AT91_WDT_WDV |
+		AT91_WDT_WDDIS |
+		AT91_WDT_WDD;
+
+	/* define PDC[31:16] as DATA[31:16] */
+	cfg->ebi_pio_pdr = 0xFFFF0000;
+	/* no pull-up for D[31:16] */
+	cfg->ebi_pio_ppudr = 0xFFFF0000;
+	/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
+	cfg->ebi_csa =
+		AT91_MATRIX_DBPUC | AT91_MATRIX_CS1A_SDRAMC;
+
+	cfg->smc_cs = 0;
+	cfg->smc_mode =
+		AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
+		AT91_SMC_DBW_16 |
+		AT91_SMC_TDFMODE |
+		AT91_SMC_TDF_(6);
+	cfg->smc_cycle =
+		AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22);
+	cfg->smc_pulse =
+		AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |
+		AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11);
+	cfg->smc_setup =
+		AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |
+		AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10);
+
+	cfg->pmc_mor =
+		AT91_PMC_MOSCEN |
+		(255 << 8);		/* Main Oscillator Start-up Time */
+	cfg->pmc_pllar =
+		AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */
+		AT91_PMC_OUT |
+		((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV);
+	/* PCK/2 = MCK Master Clock from PLLA */
+	cfg->pmc_mckr1 =
+		AT91_PMC_CSS_SLOW |
+		AT91_PMC_PRES_1 |
+		AT91SAM9_PMC_MDIV_2 |
+		AT91_PMC_PDIV_1;
+	/* PCK/2 = MCK Master Clock from PLLA */
+	cfg->pmc_mckr2 =
+		AT91_PMC_CSS_PLLA |
+		AT91_PMC_PRES_1 |
+		AT91SAM9_PMC_MDIV_2 |
+		AT91_PMC_PDIV_1;
+
+	/* SDRAM */
+	/* SDRAMC_TR - Refresh Timer register */
+	cfg->sdrc_tr1 = 0x13C;
+	/* SDRAMC_CR - Configuration register*/
+	cfg->sdrc_cr =
+		AT91_SDRAMC_NC_9 |
+		AT91_SDRAMC_NR_13 |
+		AT91_SDRAMC_NB_4 |
+		AT91_SDRAMC_CAS_3 |
+		AT91_SDRAMC_DBW_32 |
+		(1 <<  8) |		/* Write Recovery Delay */
+		(7 << 12) |		/* Row Cycle Delay */
+		(3 << 16) |		/* Row Precharge Delay */
+		(2 << 20) |		/* Row to Column Delay */
+		(5 << 24) |		/* Active to Precharge Delay */
+		(1 << 28);		/* Exit Self Refresh to Active Delay */
+
+	/* Memory Device Register -> SDRAM */
+	cfg->sdrc_mdr = AT91_SDRAMC_MD_SDRAM;
+	/* SDRAM_TR */
+	cfg->sdrc_tr2 = 1200;
+
+	/* user reset enable */
+	cfg->rstc_rmr =
+		AT91_RSTC_KEY |
+		AT91_RSTC_PROCRST |
+		AT91_RSTC_RSTTYP_WAKEUP |
+		AT91_RSTC_RSTTYP_WATCHDOG;
+}
diff --git a/arch/arm/boards/pm9263/Makefile b/arch/arm/boards/pm9263/Makefile
index eb072c0..aecbc5a 100644
--- a/arch/arm/boards/pm9263/Makefile
+++ b/arch/arm/boards/pm9263/Makefile
@@ -1 +1,6 @@
 obj-y += init.o
+
+lowlevel_init-y = lowlevel_init.o
+obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
+
+pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
diff --git a/arch/arm/boards/pm9263/config.h b/arch/arm/boards/pm9263/config.h
dissimilarity index 97%
index 322c1f3..9066613 100644
--- a/arch/arm/boards/pm9263/config.h
+++ b/arch/arm/boards/pm9263/config.h
@@ -1,109 +1,6 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#define AT91_MAIN_CLOCK	18432000
-
-#define MASTER_PLL_DIV		6
-#define MASTER_PLL_MUL		65
-#define MAIN_PLL_DIV		2	/* 2 or 4 */
-
-/* clocks */
-#define CONFIG_SYS_MOR_VAL						\
-		(AT91_PMC_MOSCEN |					\
-		 (255 << 8))		/* Main Oscillator Start-up Time */
-#define CONFIG_SYS_PLLAR_VAL						\
-		(AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */ \
-		 AT91_PMC_OUT |						\
-		 AT91_PMC_PLLCOUNT |	/* PLL Counter */		\
-		 (2 << 28) |		/* PLL Clock Frequency Range */	\
-		 ((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV))
-
-#if (MAIN_PLL_DIV == 2)
-/* PCK/2 = MCK Master Clock from PLLA */
-#define	CONFIG_SYS_MCKR1_VAL		\
-		(AT91_PMC_CSS_SLOW |	\
-		 AT91_PMC_PRES_1 |	\
-		 AT91SAM9_PMC_MDIV_2 |	\
-		 AT91_PMC_PDIV_1)
-/* PCK/2 = MCK Master Clock from PLLA */
-#define	CONFIG_SYS_MCKR2_VAL		\
-		(AT91_PMC_CSS_PLLA |	\
-		 AT91_PMC_PRES_1 |	\
-		 AT91SAM9_PMC_MDIV_2 |	\
-		 AT91_PMC_PDIV_1)
-#else
-/* PCK/4 = MCK Master Clock from PLLA */
-#define	CONFIG_SYS_MCKR1_VAL			\
-		(AT91_PMC_CSS_SLOW |		\
-		 AT91_PMC_PRES_1 |		\
-		 AT91RM9200_PMC_MDIV_3 |	\
-		 AT91_PMC_PDIV_1)
-/* PCK/4 = MCK Master Clock from PLLA */
-#define	CONFIG_SYS_MCKR2_VAL			\
-		(AT91_PMC_CSS_PLLA |		\
-		 AT91_PMC_PRES_1 |		\
-		 AT91RM9200_PMC_MDIV_3 |	\
-		 AT91_PMC_PDIV_1)
-#endif
-/* define PDC[31:16] as DATA[31:16] */
-#define CONFIG_SYS_PIOD_PDR_VAL1	0xFFFF0000
-/* no pull-up for D[31:16] */
-#define CONFIG_SYS_PIOD_PPUDR_VAL	0xFFFF0000
-/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
-#define CONFIG_SYS_MATRIX_EBI0CSA_VAL					\
-	(AT91_MATRIX_EBI0_DBPUC | AT91_MATRIX_EBI0_VDDIOMSEL_3_3V |	\
-	 AT91_MATRIX_EBI0_CS1A_SDRAMC)
-
-/* SDRAM */
-/* SDRAMC_TR - Refresh Timer register */
-#define CONFIG_SYS_SDRC_TR_VAL1		0x3AA
-/* SDRAMC_CR - Configuration register*/
-#define CONFIG_SYS_SDRC_CR_VAL							\
-		(AT91_SDRAMC_NC_9 |						\
-		 AT91_SDRAMC_NR_13 |						\
-		 AT91_SDRAMC_NB_4 |						\
-		 AT91_SDRAMC_CAS_2 |						\
-		 AT91_SDRAMC_DBW_32 |						\
-		 (2 <<  8) |	/* tWR -  Write Recovery Delay */		\
-		 (7 << 12) |	/* tRC -  Row Cycle Delay */			\
-		 (2 << 16) |	/* tRP -  Row Precharge Delay */		\
-		 (2 << 20) |	/* tRCD - Row to Column Delay */		\
-		 (5 << 24) |	/* tRAS - Active to Precharge Delay */		\
-		 (8 << 28))	/* tXSR - Exit Self Refresh to Active Delay */
-
-/* Memory Device Register -> SDRAM */
-#define CONFIG_SYS_SDRC_MDR_VAL		AT91_SDRAMC_MD_SDRAM
-#define CONFIG_SYS_SDRC_TR_VAL2		1200		/* SDRAM_TR */
-
-/* setup SMC0, CS0 (NOR Flash) - 16-bit, 15 WS */
-#define CONFIG_SYS_SMC_CS	0
-#define CONFIG_SYS_SMC_SETUP_VAL					\
-		(AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |	\
-		 AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10))
-#define CONFIG_SYS_SMC_PULSE_VAL					\
-		(AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |	\
-		 AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11))
-#define CONFIG_SYS_SMC_CYCLE_VAL	\
-		(AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22))
-#define CONFIG_SYS_SMC_MODE_VAL					\
-		(AT91_SMC_READMODE | AT91_SMC_WRITEMODE |	\
-		 AT91_SMC_DBW_16 |				\
-		 AT91_SMC_TDFMODE |				\
-		 AT91_SMC_TDF_(6))
-
-/* user reset enable */
-#define CONFIG_SYS_RSTC_RMR_VAL			\
-		(AT91_RSTC_KEY |		\
-		AT91_RSTC_PROCRST |		\
-		AT91_RSTC_RSTTYP_WAKEUP |	\
-		AT91_RSTC_RSTTYP_WATCHDOG)
-
-/* Disable Watchdog */
-#define CONFIG_SYS_WDTC_WDMR_VAL				\
-		(AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |	\
-		 AT91_WDT_WDV |					\
-		 AT91_WDT_WDDIS |				\
-		 AT91_WDT_WDD)
-
-
-#endif	/* __CONFIG_H */
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK	18432000
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/pm9263/lowlevel_init.c b/arch/arm/boards/pm9263/lowlevel_init.c
new file mode 100644
index 0000000..6336d51
--- /dev/null
+++ b/arch/arm/boards/pm9263/lowlevel_init.c
@@ -0,0 +1,121 @@
+/*
+ * Copyright (C) 2009-2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mach/hardware.h>
+#include <mach/at91_rstc.h>
+#include <mach/at91_wdt.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/at91sam9_sdramc.h>
+#include <mach/at91sam9_matrix.h>
+#include <mach/at91_lowlevel_init.h>
+
+#define MASTER_PLL_DIV		6
+#define MASTER_PLL_MUL		65
+#define MAIN_PLL_DIV		2	/* 2 or 4 */
+
+void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg)
+{
+	/* Disable Watchdog */
+	cfg->wdt_mr =
+		AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |
+		AT91_WDT_WDV |
+		AT91_WDT_WDDIS |
+		AT91_WDT_WDD;
+
+	/* define PDC[31:16] as DATA[31:16] */
+	cfg->ebi_pio_pdr = 0xFFFF0000;
+	/* no pull-up for D[31:16] */
+	cfg->ebi_pio_ppudr = 0xFFFF0000;
+	/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
+	cfg->ebi_csa =
+		AT91_MATRIX_EBI0_DBPUC | AT91_MATRIX_EBI0_VDDIOMSEL_3_3V |
+		AT91_MATRIX_EBI0_CS1A_SDRAMC;
+
+	cfg->smc_cs = 0;
+	cfg->smc_mode =
+		AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
+		AT91_SMC_DBW_16 |
+		AT91_SMC_TDFMODE |
+		AT91_SMC_TDF_(6);
+	cfg->smc_cycle =
+		AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22);
+	cfg->smc_pulse =
+		AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |
+		AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11);
+	cfg->smc_setup =
+		AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |
+		AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10);
+
+	cfg->pmc_mor =
+		AT91_PMC_MOSCEN |
+		(255 << 8);		/* Main Oscillator Start-up Time */
+	cfg->pmc_pllar =
+		AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */
+		AT91_PMC_OUT |
+		AT91_PMC_PLLCOUNT |	/* PLL Counter */
+		(2 << 28) |		/* PLL Clock Frequency Range */
+		((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV);
+
+	if (MAIN_PLL_DIV == 2) {
+		/* PCK/2 = MCK Master Clock from PLLA */
+		cfg->pmc_mckr1 =
+			AT91_PMC_CSS_SLOW |
+			AT91_PMC_PRES_1 |
+			AT91SAM9_PMC_MDIV_2 |
+			AT91_PMC_PDIV_1;
+		/* PCK/2 = MCK Master Clock from PLLA */
+		cfg->pmc_mckr2 =
+			AT91_PMC_CSS_PLLA |
+			AT91_PMC_PRES_1 |
+			AT91SAM9_PMC_MDIV_2 |
+			AT91_PMC_PDIV_1;
+	} else {
+		/* PCK/2 = MCK Master Clock from PLLA */
+		cfg->pmc_mckr1 =
+			AT91_PMC_CSS_SLOW |
+			AT91_PMC_PRES_1 |
+			AT91RM9200_PMC_MDIV_3 |
+			AT91_PMC_PDIV_1;
+		/* PCK/2 = MCK Master Clock from PLLA */
+		cfg->pmc_mckr2 =
+			AT91_PMC_CSS_PLLA |
+			AT91_PMC_PRES_1 |
+			AT91RM9200_PMC_MDIV_3 |
+			AT91_PMC_PDIV_1;
+	}
+
+	/* SDRAM */
+	/* SDRAMC_TR - Refresh Timer register */
+	cfg->sdrc_tr1 = 0x3AA;
+	/* SDRAMC_CR - Configuration register*/
+	cfg->sdrc_cr =
+		AT91_SDRAMC_NC_9 |
+		AT91_SDRAMC_NR_13 |
+		AT91_SDRAMC_NB_4 |
+		AT91_SDRAMC_CAS_2 |
+		AT91_SDRAMC_DBW_32 |
+		(2 <<  8) |	/* tWR -  Write Recovery Delay */
+		(7 << 12) |	/* tRC -  Row Cycle Delay */
+		(2 << 16) |	/* tRP -  Row Precharge Delay */
+		(2 << 20) |	/* tRCD - Row to Column Delay */
+		(5 << 24) |	/* tRAS - Active to Precharge Delay */
+		(8 << 28);	/* tXSR - Exit Self Refresh to Active Delay */
+
+	/* Memory Device Register -> SDRAM */
+	cfg->sdrc_mdr = AT91_SDRAMC_MD_SDRAM;
+	/* SDRAM_TR */
+	cfg->sdrc_tr2 = 1200;
+
+	/* user reset enable */
+	cfg->rstc_rmr =
+		AT91_RSTC_KEY |
+		AT91_RSTC_PROCRST |
+		AT91_RSTC_RSTTYP_WAKEUP |
+		AT91_RSTC_RSTTYP_WATCHDOG;
+}
diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
index 4dec275..e7145b4 100644
--- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
@@ -19,8 +19,10 @@
 #include <mach/at91sam9_matrix.h>
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91sam9_smc.h>
+#include <mach/at91_lowlevel_init.h>
 #include <mach/io.h>
 #include <init.h>
+#include <sizes.h>
 
 static void inline access_sdram(void)
 {
@@ -44,40 +46,41 @@ static int inline running_in_sram(void)
 	return addr == 0;
 }
 
-void __naked __bare_init reset(void)
+void __bare_init at91sam926x_lowlevel_init(void)
 {
 	u32 r;
 	int i;
 	int in_sram = running_in_sram();
+	struct at91sam926x_lowlevel_cfg cfg;
 
-	common_reset();
+	at91sam926x_lowlevel_board_config(&cfg);
 
-	__raw_writel(CONFIG_SYS_WDTC_WDMR_VAL, AT91_BASE_WDT + AT91_WDT_MR);
+	__raw_writel(cfg.wdt_mr, AT91_BASE_WDT + AT91_WDT_MR);
 
 	/* configure PIOx as EBI0 D[16-31] */
 #ifdef CONFIG_ARCH_AT91SAM9263
-	__raw_writel(CONFIG_SYS_PIOD_PDR_VAL1, AT91_BASE_PIOD + PIO_PDR);
-	__raw_writel(CONFIG_SYS_PIOD_PPUDR_VAL, AT91_BASE_PIOD + PIO_PUDR);
-	__raw_writel(CONFIG_SYS_PIOD_PPUDR_VAL, AT91_BASE_PIOD + PIO_ASR);
+	__raw_writel(cfg.ebi_pio_pdr, AT91_BASE_PIOD + PIO_PDR);
+	__raw_writel(cfg.ebi_pio_ppudr, AT91_BASE_PIOD + PIO_PUDR);
+	__raw_writel(cfg.ebi_pio_ppudr, AT91_BASE_PIOD + PIO_ASR);
 #else
-	__raw_writel(CONFIG_SYS_PIOC_PDR_VAL1, AT91_BASE_PIOC + PIO_PDR);
-	__raw_writel(CONFIG_SYS_PIOC_PPUDR_VAL, AT91_BASE_PIOC + PIO_PUDR);
+	__raw_writel(cfg.ebi_pio_pdr, AT91_BASE_PIOC + PIO_PDR);
+	__raw_writel(cfg.ebi_pio_ppudrL, AT91_BASE_PIOC + PIO_PUDR);
 #endif
 
 #if defined(AT91_MATRIX_EBI0CSA)
-	at91_sys_write(AT91_MATRIX_EBI0CSA, CONFIG_SYS_MATRIX_EBI0CSA_VAL);
+	at91_sys_write(AT91_MATRIX_EBI0CSA, cfg.ebi_csa);
 #else /* AT91_MATRIX_EBICSA */
-	at91_sys_write(AT91_MATRIX_EBICSA, CONFIG_SYS_MATRIX_EBICSA_VAL);
+	at91_sys_write(AT91_MATRIX_EBICSA, cfg.ebi_csa);
 #endif
 
 	/* flash */
-	at91_smc_write(CONFIG_SYS_SMC_CS, AT91_SMC_MODE, CONFIG_SYS_SMC_MODE_VAL);
+	at91_smc_write(cfg.smc_cs, AT91_SMC_MODE, cfg.smc_mode);
 
-	at91_smc_write(CONFIG_SYS_SMC_CS, AT91_SMC_CYCLE, CONFIG_SYS_SMC_CYCLE_VAL);
+	at91_smc_write(cfg.smc_cs, AT91_SMC_CYCLE, cfg.smc_cycle);
 
-	at91_smc_write(CONFIG_SYS_SMC_CS, AT91_SMC_PULSE, CONFIG_SYS_SMC_PULSE_VAL);
+	at91_smc_write(cfg.smc_cs, AT91_SMC_PULSE, cfg.smc_pulse);
 
-	at91_smc_write(CONFIG_SYS_SMC_CS, AT91_SMC_SETUP, CONFIG_SYS_SMC_SETUP_VAL);
+	at91_smc_write(cfg.smc_cs, AT91_SMC_SETUP, cfg.smc_setup);
 
 	/*
 	 * PMC Check if the PLL is already initialized
@@ -89,7 +92,7 @@ void __naked __bare_init reset(void)
 	/*
 	 * Enable the Main Oscillator
 	 */
-	at91_pmc_write(AT91_CKGR_MOR, CONFIG_SYS_MOR_VAL);
+	at91_pmc_write(AT91_CKGR_MOR, cfg.pmc_mor);
 
 	do {
 		r = at91_pmc_read(AT91_PMC_SR);
@@ -98,7 +101,7 @@ void __naked __bare_init reset(void)
 	/*
 	 * PLLAR: x MHz for PCK
 	 */
-	at91_pmc_write(AT91_CKGR_PLLAR, CONFIG_SYS_PLLAR_VAL);
+	at91_pmc_write(AT91_CKGR_PLLAR, cfg.pmc_pllar);
 
 	do {
 		r = at91_pmc_read(AT91_PMC_SR);
@@ -107,14 +110,14 @@ void __naked __bare_init reset(void)
 	/*
 	 * PCK/x = MCK Master Clock from SLOW
 	 */
-	at91_pmc_write(AT91_PMC_MCKR, CONFIG_SYS_MCKR1_VAL);
+	at91_pmc_write(AT91_PMC_MCKR, cfg.pmc_mckr1);
 
 	pmc_check_mckrdy();
 
 	/*
 	 * PCK/x = MCK Master Clock from PLLA
 	 */
-	at91_pmc_write(AT91_PMC_MCKR, CONFIG_SYS_MCKR2_VAL);
+	at91_pmc_write(AT91_PMC_MCKR, cfg.pmc_mckr2);
 
 	pmc_check_mckrdy();
 
@@ -133,13 +136,13 @@ void __naked __bare_init reset(void)
 	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);
 
 	/* SDRAMC_TR - Refresh Timer register */
-	at91_sys_write(AT91_SDRAMC_TR, CONFIG_SYS_SDRC_TR_VAL1);
+	at91_sys_write(AT91_SDRAMC_TR, cfg.sdrc_tr1);
 
 	/* SDRAMC_CR - Configuration register*/
-	at91_sys_write(AT91_SDRAMC_CR, CONFIG_SYS_SDRC_CR_VAL);
+	at91_sys_write(AT91_SDRAMC_CR, cfg.sdrc_cr);
 
 	/* Memory Device Type */
-	at91_sys_write(AT91_SDRAMC_MDR, CONFIG_SYS_SDRC_MDR_VAL);
+	at91_sys_write(AT91_SDRAMC_MDR, cfg.sdrc_mdr);
 
 	/* SDRAMC_MR : Precharge All */
 	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_PRECHARGE);
@@ -167,13 +170,13 @@ void __naked __bare_init reset(void)
 	access_sdram();
 
 	/* SDRAMC_TR : Refresh Timer Counter */
-	at91_sys_write(AT91_SDRAMC_TR, CONFIG_SYS_SDRC_TR_VAL2);
+	at91_sys_write(AT91_SDRAMC_TR, cfg.sdrc_tr2);
 
 	/* access SDRAM */
 	access_sdram();
 
 	/* User reset enable*/
-	at91_sys_write(AT91_RSTC_MR, CONFIG_SYS_RSTC_RMR_VAL);
+	at91_sys_write(AT91_RSTC_MR, cfg.rstc_rmr);
 
 #ifdef CONFIG_SYS_MATRIX_MCFG_REMAP
 	/* MATRIX_MCFG - REMAP all masters */
@@ -190,3 +193,18 @@ void __naked __bare_init reset(void)
 end:
 	board_init_lowlevel_return();
 }
+
+void __naked __bare_init reset(void)
+{
+	common_reset();
+
+#ifdef CONFIG_ARCH_AT91SAM9263
+	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
+#elif defined(CONFIG_ARCH_AT91SAM9261) || defined(CONFIG_ARCH_AT91SAM9G10)
+	arm_setup_stack(AT91SAM9261_SRAM_BASE + AT91SAM9261_SRAM_SIZE - 16);
+#elif defined(CONFIG_ARCH_AT91SAM9260) || defined(CONFIG_ARCH_AT91SAM9G20)
+	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE - 16);
+#endif
+
+	at91sam926x_lowlevel_init();
+}
diff --git a/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h b/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
new file mode 100644
index 0000000..29d9628
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
@@ -0,0 +1,33 @@
+/*
+ * Copyright (C) 2009-2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#ifndef __AT91_LOWLEVEL_INIT_H__
+#define __AT91_LOWLEVEL_INIT_H__
+
+struct at91sam926x_lowlevel_cfg {
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
+void at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg);
+
+#endif /* __AT91_LOWLEVEL_INIT_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
