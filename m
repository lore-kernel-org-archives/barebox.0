Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dTS8j-0006hb-0e
 for barebox@lists.infradead.org; Fri, 07 Jul 2017 12:13:46 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Fri,  7 Jul 2017 14:12:33 +0200
Message-Id: <20170707121242.18499-14-sam@ravnborg.org>
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
Subject: [PATCH 14/23] at91: delete unused at91sam9263_lowlevel_init.c
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

With the last users gone delete it

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/mach-at91/Kconfig                     |  2 --
 arch/arm/mach-at91/Makefile                    |  1 -
 arch/arm/mach-at91/at91sam9263_lowlevel_init.c | 48 --------------------------
 3 files changed, 51 deletions(-)
 delete mode 100644 arch/arm/mach-at91/at91sam9263_lowlevel_init.c

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 89ef5bfa7..225b4735b 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -37,8 +37,6 @@ config HAVE_AT91_BOOTSTRAP
 # as implemented in the *lowlevel_init.c files
 config AT91SAM9260_LWL
 	bool
-config AT91SAM9263_LWL
-	bool
 config AT91SAM9G45_LWL
 	bool
 config AT91SAM9N12_LWL
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 8293f279a..c044bfe26 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -9,7 +9,6 @@ obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
 obj-$(CONFIG_AT91_BOOTSTRAP) += bootstrap.o
 
 lwl-$(CONFIG_AT91SAM9260_LWL) += at91sam9260_lowlevel_init.o
-lwl-$(CONFIG_AT91SAM9263_LWL) += at91sam9263_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9G45_LWL) += at91sam9g45_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9N12_LWL) += at91sam9n12_lowlevel_init.o
 lwl-$(CONFIG_AT91RM9200_LWL) += at91rm9200_lowlevel_init.o
diff --git a/arch/arm/mach-at91/at91sam9263_lowlevel_init.c b/arch/arm/mach-at91/at91sam9263_lowlevel_init.c
deleted file mode 100644
index 0be84551f..000000000
--- a/arch/arm/mach-at91/at91sam9263_lowlevel_init.c
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
-void __bare_init at91sam9263_lowlevel_init(void)
-{
-	struct at91sam926x_lowlevel_cfg cfg;
-
-	cfg.pio = IOMEM(AT91SAM9263_BASE_PIOD);
-	cfg.sdramc = IOMEM(AT91SAM9263_BASE_SDRAMC0);
-	cfg.ebi_pio_is_peripha = true;
-	cfg.matrix_csa = AT91_MATRIX_EBI0CSA;
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
-	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
-
-	at91sam9263_lowlevel_init();
-}
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
