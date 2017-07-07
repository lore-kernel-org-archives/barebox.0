Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dTS8j-0006g0-0g
 for barebox@lists.infradead.org; Fri, 07 Jul 2017 12:13:46 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Fri,  7 Jul 2017 14:12:25 +0200
Message-Id: <20170707121242.18499-6-sam@ravnborg.org>
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
Subject: [PATCH 06/23] at91: drop unused at91sam9261_lowlevel_init
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

All at91sam9261 based boards uses board specific
reset vectors so the mach-at91 provided version is
no longer in use.
Delete unused CONFIG symbols too.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/mach-at91/Kconfig                     |  2 --
 arch/arm/mach-at91/Makefile                    |  1 -
 arch/arm/mach-at91/at91sam9261_lowlevel_init.c | 48 --------------------------
 3 files changed, 51 deletions(-)
 delete mode 100644 arch/arm/mach-at91/at91sam9261_lowlevel_init.c

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 3e41fe70d..704abcead 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -41,8 +41,6 @@ config AT91SAM926X_LWL
 # as implemented in the *lowlevel_init.c files
 config AT91SAM9260_LWL
 	bool
-config AT91SAM9261_LWL
-	bool
 config AT91SAM9263_LWL
 	bool
 config AT91SAM9G45_LWL
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index f683d0f65..587402903 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -11,7 +11,6 @@ obj-$(CONFIG_AT91_BOOTSTRAP) += bootstrap.o
 lwl-$(CONFIG_AT91SAM926X_LWL) += at91sam926x_lowlevel_init.o
 
 lwl-$(CONFIG_AT91SAM9260_LWL) += at91sam9260_lowlevel_init.o
-lwl-$(CONFIG_AT91SAM9261_LWL) += at91sam9261_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9263_LWL) += at91sam9263_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9G45_LWL) += at91sam9g45_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9N12_LWL) += at91sam9n12_lowlevel_init.o
diff --git a/arch/arm/mach-at91/at91sam9261_lowlevel_init.c b/arch/arm/mach-at91/at91sam9261_lowlevel_init.c
deleted file mode 100644
index 0ad7f0a0c..000000000
--- a/arch/arm/mach-at91/at91sam9261_lowlevel_init.c
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
-void __bare_init at91sam9261_lowlevel_init(void)
-{
-	struct at91sam926x_lowlevel_cfg cfg;
-
-	cfg.pio = IOMEM(AT91SAM9261_BASE_PIOC);
-	cfg.sdramc = IOMEM(AT91SAM9261_BASE_SDRAMC);
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
-	arm_setup_stack(AT91SAM9261_SRAM_BASE + AT91SAM9261_SRAM_SIZE - 16);
-
-	at91sam9261_lowlevel_init();
-}
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
