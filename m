Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzANT-0004oz-85
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 18:21:23 +0000
Received: from mail609.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id DF781FFA2A2
 for <barebox@lists.infradead.org>; Sat, 26 Jan 2013 19:31:15 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 26 Jan 2013 19:19:58 +0100
Message-Id: <1359224399-569-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359224399-569-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130126181809.GH26329@game.jcrosoft.org>
 <1359224399-569-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/5] at91sam9261ek: add boostrap support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9261ek/Makefile             |    4 +
 arch/arm/boards/at91sam9261ek/lowlevel_init.c      |  108 ++++++++++++++++++++
 arch/arm/configs/at91sam9261ek_bootstrap_defconfig |   25 +++++
 arch/arm/mach-at91/Kconfig                         |    1 +
 4 files changed, 138 insertions(+)
 create mode 100644 arch/arm/boards/at91sam9261ek/lowlevel_init.c
 create mode 100644 arch/arm/configs/at91sam9261ek_bootstrap_defconfig

diff --git a/arch/arm/boards/at91sam9261ek/Makefile b/arch/arm/boards/at91sam9261ek/Makefile
index eb072c0..b6460c3 100644
--- a/arch/arm/boards/at91sam9261ek/Makefile
+++ b/arch/arm/boards/at91sam9261ek/Makefile
@@ -1 +1,5 @@
 obj-y += init.o
+
+obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
+
+pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
diff --git a/arch/arm/boards/at91sam9261ek/lowlevel_init.c b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
new file mode 100644
index 0000000..0565841
--- /dev/null
+++ b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
@@ -0,0 +1,108 @@
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
+#define MASTER_CLOCK		200
+
+#if MASTER_CLOCK == 200
+#define MASTER_PLL_MUL		162
+#define MASTER_PLL_DIV		15
+#elif MASTER_CLOCK == 239
+#define MASTER_PLL_MUL		13
+#define MASTER_PLL_DIV		1
+#endif
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
+		AT91_SDRAMC_CAS_2 |
+		AT91_SDRAMC_DBW_32 |
+		(2 <<  8) |		/* Write Recovery Delay */
+		(7 << 12) |		/* Row Cycle Delay */
+		(2 << 16) |		/* Row Precharge Delay */
+		(2 << 20) |		/* Row to Column Delay */
+		(5 << 24) |		/* Active to Precharge Delay */
+		(8 << 28);		/* Exit Self Refresh to Active Delay */
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
diff --git a/arch/arm/configs/at91sam9261ek_bootstrap_defconfig b/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
new file mode 100644
index 0000000..1511ecb
--- /dev/null
+++ b/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
@@ -0,0 +1,25 @@
+CONFIG_ARCH_AT91SAM9261=y
+CONFIG_AT91_BOOTSTRAP=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x27000
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
+CONFIG_MALLOC_DUMMY=y
+CONFIG_PROMPT="9261-EK:"
+CONFIG_SHELL_NONE=y
+# CONFIG_TIMESTAMP is not set
+CONFIG_CONSOLE_SIMPLE=y
+# CONFIG_DEFAULT_ENVIRONMENT is not set
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+# CONFIG_MTD_WRITE is not set
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+CONFIG_NAND_ATMEL=y
+# CONFIG_FS_RAMFS is not set
+CONFIG_BOOTSTRAP_DEVFS=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index a964fd6..ba9a773 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -267,6 +267,7 @@ config MACH_AT91SAM9261EK
 	bool "Atmel AT91SAM9261-EK Evaluation Kit"
 	select HAS_DM9000
 	select HAVE_AT91_DATAFLASH_CARD
+	select MACH_HAS_LOWLEVEL_INIT
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
 	help
 	  Select this if you are using Atmel's AT91SAM9261-EK Evaluation Kit.
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
