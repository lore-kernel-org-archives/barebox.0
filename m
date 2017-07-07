Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dTS8j-0006h1-0V
 for barebox@lists.infradead.org; Fri, 07 Jul 2017 12:13:50 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Fri,  7 Jul 2017 14:12:30 +0200
Message-Id: <20170707121242.18499-11-sam@ravnborg.org>
In-Reply-To: <20170707121000.GA16920@ravnborg.org>
References: <20170707121000.GA16920@ravnborg.org>
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
Subject: [PATCH 11/23] tny-a926x: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

This commit deletes the unused tny_a9263_lowlevel_init.c and
creates two files (one for each CPU) that contains the reset vector.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/tny-a926x/Makefile                 |   5 +-
 arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c     |  26 +++++
 arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c     |  26 +++++
 .../arm/boards/tny-a926x/tny_a9263_lowlevel_init.c | 107 ---------------------
 arch/arm/mach-at91/Kconfig                         |   3 -
 5 files changed, 55 insertions(+), 112 deletions(-)
 create mode 100644 arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
 create mode 100644 arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
 delete mode 100644 arch/arm/boards/tny-a926x/tny_a9263_lowlevel_init.c

diff --git a/arch/arm/boards/tny-a926x/Makefile b/arch/arm/boards/tny-a926x/Makefile
index 5dee09a11..1884cb3cd 100644
--- a/arch/arm/boards/tny-a926x/Makefile
+++ b/arch/arm/boards/tny-a926x/Makefile
@@ -2,6 +2,7 @@ obj-y += init.o
 
 obj-$(CONFIG_AT91_BOOTSTRAP) += tny_a9263_bootstrap.o
 
-# Not used, documented by an -n assignment
-lwl-n += tny_a9263_lowlevel_init.o
+lwl-$(CONFIG_MACH_TNY_A9260) += tny_a9260_lowlevel.o
+lwl-$(CONFIG_MACH_TNY_A9G20) += tny_a9260_lowlevel.o
+lwl-$(CONFIG_MACH_TNY_A9263) += tny_a9263_lowlevel.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-tny-a926x
diff --git a/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
new file mode 100644
index 000000000..02896856d
--- /dev/null
+++ b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
@@ -0,0 +1,26 @@
+/*
+ * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+  */
+
+#include <common.h>
+#include <init.h>
+
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+#include <mach/at91sam9_sdramc.h>
+#include <mach/at91sam9260.h>
+#include <mach/hardware.h>
+
+void __naked __bare_init barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE - 16);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1,
+			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
+			  NULL);
+}
diff --git a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
new file mode 100644
index 000000000..3ba24ce4c
--- /dev/null
+++ b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
@@ -0,0 +1,26 @@
+/*
+ * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+  */
+
+#include <common.h>
+#include <init.h>
+
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+#include <mach/at91sam9_sdramc.h>
+#include <mach/at91sam9263.h>
+#include <mach/hardware.h>
+
+void __naked __bare_init barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1,
+			  at91_get_sdram_size(IOMEM(AT91SAM9263_BASE_SDRAMC0)),
+	                  NULL);
+}
diff --git a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel_init.c b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel_init.c
deleted file mode 100644
index 1b146da62..000000000
--- a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel_init.c
+++ /dev/null
@@ -1,107 +0,0 @@
-/*
- * Copyright (C) 2009-2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * Under GPLv2
- */
-
-#include <common.h>
-#include <init.h>
-#include <mach/hardware.h>
-#include <mach/at91_rstc.h>
-#include <mach/at91_wdt.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91sam9_smc.h>
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91sam9_matrix.h>
-#include <mach/at91_lowlevel_init.h>
-
-#define MASTER_CLOCK		180
-
-#if MASTER_CLOCK == 200
-#define MASTER_PLL_MUL		100
-#else
-#define MASTER_PLL_MUL		90
-#endif
-#define MASTER_PLL_DIV		6
-
-void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg)
-{
-	/* Disable Watchdog */
-	cfg->wdt_mr =
-		AT91_WDT_WDIDLEHLT | AT91_WDT_WDDBGHLT |
-		AT91_WDT_WDV |
-		AT91_WDT_WDDIS |
-		AT91_WDT_WDD;
-
-	/* define PDC[31:16] as DATA[31:16] */
-	cfg->ebi_pio_pdr = 0xFFFF0000;
-	/* no pull-up for D[31:16] */
-	cfg->ebi_pio_ppudr = 0xFFFF0000;
-	/* EBI0_CSA, CS1 SDRAM, CS3 NAND Flash, 3.3V memories */
-	cfg->ebi_csa =
-		AT91_MATRIX_EBI0_DBPUC | AT91_MATRIX_EBI0_VDDIOMSEL_3_3V |
-		AT91_MATRIX_EBI0_CS1A_SDRAMC;
-
-	cfg->smc_cs = 3;
-	cfg->smc_mode =
-		AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
-		AT91_SMC_DBW_8 |
-		AT91_SMC_EXNWMODE_DISABLE |
-		AT91_SMC_TDF_(2);
-	cfg->smc_cycle =
-		AT91_SMC_NWECYCLE_(5) | AT91_SMC_NRDCYCLE_(5);
-	cfg->smc_pulse =
-		AT91_SMC_NWEPULSE_(3) | AT91_SMC_NCS_WRPULSE_(3) |
-		AT91_SMC_NRDPULSE_(3) | AT91_SMC_NCS_RDPULSE_(3);
-	cfg->smc_setup =
-		AT91_SMC_NWESETUP_(1) | AT91_SMC_NCS_WRSETUP_(0) |
-		AT91_SMC_NRDSETUP_(1) | AT91_SMC_NCS_RDSETUP_(0);
-
-	cfg->pmc_mor = AT91_PMC_OSCBYPASS;
-	cfg->pmc_pllar =
-		AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */
-		AT91_PMC_PLLCOUNT |	/* PLL Counter */
-		(0 << 28) |		/* PLL Clock Frequency Range */
-		((MASTER_PLL_MUL - 1) << 16) | (MASTER_PLL_DIV);
-	/* PCK/2 = MCK Master Clock from PLLA */
-	cfg->pmc_mckr1 =
-		AT91_PMC_CSS_SLOW |
-		AT91_PMC_PRES_1 |
-		AT91SAM9_PMC_MDIV_2 |
-		AT91_PMC_PDIV_1;
-	/* PCK/2 = MCK Master Clock from PLLA */
-	cfg->pmc_mckr2 =
-		AT91_PMC_CSS_PLLA |
-		AT91_PMC_PRES_1 |
-		AT91SAM9_PMC_MDIV_2 |
-		AT91_PMC_PDIV_1;
-
-	/* SDRAM */
-	/* SDRAMC_TR - Refresh Timer register */
-	cfg->sdrc_tr1 = 0x13C;
-	/* SDRAMC_CR - Configuration register*/
-	cfg->sdrc_cr =
-		AT91_SDRAMC_NR_13 |
-		AT91_SDRAMC_NC_9 |
-		AT91_SDRAMC_NB_4 |
-		AT91_SDRAMC_CAS_2 |
-		AT91_SDRAMC_DBW_32 |
-		(2 <<  8) |		/* Write Recovery Delay */
-		(7 << 12) |		/* Row Cycle Delay */
-		(2 << 16) |		/* Row Precharge Delay */
-		(2 << 20) |		/* Row to Column Delay */
-		(5 << 24) |		/* Active to Precharge Delay */
-		(8 << 28);		/* Exit Self Refresh to Active Delay */
-
-	/* Memory Device Register -> SDRAM */
-	cfg->sdrc_mdr = AT91_SDRAMC_MD_SDRAM;
-	/* SDRAM_TR */
-	cfg->sdrc_tr2 = (MASTER_CLOCK * 7);
-
-	/* user reset enable */
-	cfg->rstc_rmr =
-		AT91_RSTC_KEY |
-		AT91_RSTC_PROCRST |
-		AT91_RSTC_RSTTYP_WAKEUP |
-		AT91_RSTC_RSTTYP_WATCHDOG;
-}
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index e38589127..c48923ba6 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -288,7 +288,6 @@ config MACH_QIL_A9260
 config MACH_TNY_A9260
 	bool "CALAO TNY-A9260"
 	select SUPPORT_CALAO_MOB_TNY_MD2
-	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems TNY-A9260.
 	  <http://www.calao-systems.com>
@@ -376,7 +375,6 @@ config MACH_AT91SAM9G20EK
 config MACH_TNY_A9G20
 	select SUPPORT_CALAO_MOB_TNY_MD2
 	bool "CALAO TNY-A9G20"
-	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems TNY-A9G20.
 	  <http://www.calao-systems.com>
@@ -442,7 +440,6 @@ config MACH_TNY_A9263
 	bool "CALAO TNY-A9263"
 	select SUPPORT_CALAO_MOB_TNY_MD2
 	select HAVE_AT91_BOOTSTRAP
-	select AT91SAM9263_LWL
 	help
 	  Select this if you are using a Calao Systems TNY-A9263.
 	  <http://www.calao-systems.com>
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
