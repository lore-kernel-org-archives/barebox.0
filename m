Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Twbad-00046p-6y
 for barebox@lists.infradead.org; Sat, 19 Jan 2013 16:48:24 +0000
Received: from mail412.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 5203BFF864F
 for <barebox@lists.infradead.org>; Sat, 19 Jan 2013 17:52:29 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 19 Jan 2013 17:37:23 +0100
Message-Id: <1358613446-1168-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358613446-1168-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130119163524.GC26329@game.jcrosoft.org>
 <1358613446-1168-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/9] at91: usb-a9263 add lowlevel init
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/usb-a926x/Makefile                 |    6 ++
 .../arm/boards/usb-a926x/usb_a9263_lowlevel_init.c |  111 ++++++++++++++++++++
 arch/arm/mach-at91/Kconfig                         |    1 +
 3 files changed, 118 insertions(+)
 create mode 100644 arch/arm/boards/usb-a926x/usb_a9263_lowlevel_init.c

diff --git a/arch/arm/boards/usb-a926x/Makefile b/arch/arm/boards/usb-a926x/Makefile
index eb072c0..9511a76 100644
--- a/arch/arm/boards/usb-a926x/Makefile
+++ b/arch/arm/boards/usb-a926x/Makefile
@@ -1 +1,7 @@
 obj-y += init.o
+
+lowlevel_init-$(CONFIG_MACH_USB_A9263) = usb_a9263_lowlevel_init.o
+
+obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
+
+pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
diff --git a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel_init.c b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel_init.c
new file mode 100644
index 0000000..f6dc58e
--- /dev/null
+++ b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel_init.c
@@ -0,0 +1,111 @@
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
+#define MASTER_CLOCK		180
+
+#if MASTER_CLOCK == 200
+#define MASTER_PLL_MUL		100
+#else
+#define MASTER_PLL_MUL		90
+#endif
+#define MASTER_PLL_DIV		6
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
+	cfg->smc_cs = 3;
+	cfg->smc_mode =
+		AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
+		AT91_SMC_DBW_8 |
+		AT91_SMC_EXNWMODE_DISABLE |
+		AT91_SMC_TDF_(2);
+	cfg->smc_cycle =
+		AT91_SMC_NWECYCLE_(5) | AT91_SMC_NRDCYCLE_(5);
+	cfg->smc_pulse =
+		AT91_SMC_NWEPULSE_(3) | AT91_SMC_NCS_WRPULSE_(3) |
+		AT91_SMC_NRDPULSE_(3) | AT91_SMC_NCS_RDPULSE_(3);
+	cfg->smc_setup =
+		AT91_SMC_NWESETUP_(1) | AT91_SMC_NCS_WRSETUP_(0) |
+		AT91_SMC_NRDSETUP_(1) | AT91_SMC_NCS_RDSETUP_(0);
+
+	cfg->pmc_mor = AT91_PMC_OSCBYPASS;
+	cfg->pmc_pllar =
+		AT91_PMC_PLLA_WR_ERRATA | /* Bit 29 must be 1 when prog */
+		AT91_PMC_PLLCOUNT |	/* PLL Counter */
+		(0 << 28) |		/* PLL Clock Frequency Range */
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
+		AT91_SDRAMC_NR_13 |
+		AT91_SDRAMC_NB_4 |
+		AT91_SDRAMC_CAS_2 |
+		AT91_SDRAMC_DBW_32 |
+		(2 <<  8) |		/* Write Recovery Delay */
+		(7 << 12) |		/* Row Cycle Delay */
+		(2 << 16) |		/* Row Precharge Delay */
+		(2 << 20) |		/* Row to Column Delay */
+		(5 << 24) |		/* Active to Precharge Delay */
+		(8 << 28);		/* Exit Self Refresh to Active Delay */
+
+	if (IS_ENABLED(CONFIG_AT91_HAVE_SRAM_128M))
+		cfg->sdrc_cr |= AT91_SDRAMC_NC_10;
+	else
+		cfg->sdrc_cr |= AT91_SDRAMC_NC_9;
+
+	/* Memory Device Register -> SDRAM */
+	cfg->sdrc_mdr = AT91_SDRAMC_MD_SDRAM;
+	/* SDRAM_TR */
+	cfg->sdrc_tr2 = (MASTER_CLOCK * 7);
+
+	/* user reset enable */
+	cfg->rstc_rmr =
+		AT91_RSTC_KEY |
+		AT91_RSTC_PROCRST |
+		AT91_RSTC_RSTTYP_WAKEUP |
+		AT91_RSTC_RSTTYP_WATCHDOG;
+}
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 62a61fc..1889596 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -357,6 +357,7 @@ config MACH_TNY_A9263
 
 config MACH_USB_A9263
 	bool "CALAO USB-A9263"
+	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Select this if you are using a Calao Systems USB-A9263.
 	  <http://www.calao-systems.com>
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
