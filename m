Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dTS98-0007KO-2u
 for barebox@lists.infradead.org; Fri, 07 Jul 2017 12:14:13 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Fri,  7 Jul 2017 14:12:42 +0200
Message-Id: <20170707121242.18499-23-sam@ravnborg.org>
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
Subject: [PATCH 23/23] at91: remove leftovers from reset code in mach-at91
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/mach-at91/Kconfig                         |  5 ---
 arch/arm/mach-at91/Makefile                        |  2 -
 arch/arm/mach-at91/at91sam9260_lowlevel_init.c     | 48 ----------------------
 .../mach-at91/include/mach/at91_lowlevel_init.h    | 46 ---------------------
 4 files changed, 101 deletions(-)
 delete mode 100644 arch/arm/mach-at91/at91sam9260_lowlevel_init.c
 delete mode 100644 arch/arm/mach-at91/include/mach/at91_lowlevel_init.h

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 323287e6f..17e432fea 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -33,11 +33,6 @@ config HAVE_AT91_GENERATED_CLK
 config HAVE_AT91_BOOTSTRAP
 	bool
 
-# Select if board uses barebox reset vector from mach-at91
-# as implemented in the *lowlevel_init.c files
-config AT91SAM9260_LWL
-	bool
-
 config AT91SAM9_SMC
 	bool
 
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index af41802cf..a5e839248 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -8,8 +8,6 @@ obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
 
 obj-$(CONFIG_AT91_BOOTSTRAP) += bootstrap.o
 
-lwl-$(CONFIG_AT91SAM9260_LWL) += at91sam9260_lowlevel_init.o
-
 obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
 obj-$(CONFIG_AT91SAM9G45_RESET) += at91sam9g45_reset.o
 
diff --git a/arch/arm/mach-at91/at91sam9260_lowlevel_init.c b/arch/arm/mach-at91/at91sam9260_lowlevel_init.c
deleted file mode 100644
index 7f84185ef..000000000
--- a/arch/arm/mach-at91/at91sam9260_lowlevel_init.c
+++ /dev/null
@@ -1,48 +0,0 @@
-/*
- * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * Under GPLv2
-  */
-
-#define __LOWLEVEL_INIT__
-
-#include <common.h>
-#include <asm/system.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-#include <mach/hardware.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91_pio.h>
-#include <mach/at91_rstc.h>
-#include <mach/at91_wdt.h>
-#include <mach/at91sam9_matrix.h>
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91sam9_smc.h>
-#include <mach/at91_lowlevel_init.h>
-#include <mach/io.h>
-#include <init.h>
-#include <linux/sizes.h>
-
-void __bare_init at91sam9260_lowlevel_init(void)
-{
-	struct at91sam926x_lowlevel_cfg cfg;
-
-	cfg.pio = IOMEM(AT91SAM9260_BASE_PIOC);
-	cfg.sdramc = IOMEM(AT91SAM9260_BASE_SDRAMC);
-	cfg.ebi_pio_is_peripha = false;
-	cfg.matrix_csa = AT91_MATRIX_EBICSA;
-
-	at91sam926x_lowlevel_init(&cfg);
-
-	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
-	                  NULL);
-}
-
-void __naked __bare_init barebox_arm_reset_vector(void)
-{
-	arm_cpu_lowlevel_init();
-
-	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE - 16);
-
-	at91sam9260_lowlevel_init();
-}
diff --git a/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h b/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
deleted file mode 100644
index d72dfff38..000000000
--- a/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
+++ /dev/null
@@ -1,46 +0,0 @@
-/*
- * Copyright (C) 2009-2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * Under GPLv2
- */
-
-#ifndef __AT91_LOWLEVEL_INIT_H__
-#define __AT91_LOWLEVEL_INIT_H__
-
-struct at91sam926x_lowlevel_cfg {
-	/* SoC specific */
-	void __iomem *pio;
-	void __iomem *sdramc;
-	u32 ebi_pio_is_peripha;
-	u32 matrix_csa;
-
-	/* board specific */
-	u32 wdt_mr;
-	u32 ebi_pio_pdr;
-	u32 ebi_pio_ppudr;
-	u32 ebi_csa;
-	u32 smc_cs;
-	u32 smc_mode;
-	u32 smc_cycle;
-	u32 smc_pulse;
-	u32 smc_setup;
-	u32 pmc_mor;
-	u32 pmc_pllar;
-	u32 pmc_mckr1;
-	u32 pmc_mckr2;
-	u32 sdrc_cr;
-	u32 sdrc_tr1;
-	u32 sdrc_mdr;
-	u32 sdrc_tr2;
-	u32 rstc_rmr;
-};
-
-#ifdef CONFIG_AT91SAM926X_LWL
-void at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg);
-void at91sam926x_lowlevel_init(struct at91sam926x_lowlevel_cfg *cfg);
-#else
-static inline void at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg) {}
-static inline void at91sam926x_lowlevel_init(struct at91sam926x_lowlevel_cfg *cfg) {}
-#endif
-
-#endif /* __AT91_LOWLEVEL_INIT_H__ */
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
