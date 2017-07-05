Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSrMe-0004oG-Vs
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 20:57:39 +0000
Received: from ravnborg.org (unknown [188.228.89.252])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 7F475802A7
 for <barebox@lists.infradead.org>; Wed,  5 Jul 2017 22:57:15 +0200 (CEST)
Date: Wed, 5 Jul 2017 22:57:14 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170705205714.GD19343@ravnborg.org>
References: <20170705204935.GA20093@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170705204935.GA20093@ravnborg.org>
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
Subject: [PATCH 4/5] at91sam9261ek, at91sam9g10ek: move reset vector to board
 code
To: barebox@lists.infradead.org

From 865c099363aac74310f6bacb7f6e0b1b290ecfc7 Mon Sep 17 00:00:00 2001
From: Sam Ravnborg <srn@skov.dk>
Date: Wed, 5 Jul 2017 22:19:16 +0200
Subject: [PATCH 4/5] at91sam9261ek, at91sam9g10ek: move reset vector to board
 code

The two evaluation boards share the same board code.

Drop obsolete select of CONFIG symbols
Simplify Makefile

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/at91sam9261ek/Makefile        |  2 +-
 arch/arm/boards/at91sam9261ek/lowlevel_init.c | 41 ++++++++++++++++++++-------
 arch/arm/mach-at91/Kconfig                    |  3 --
 3 files changed, 31 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boards/at91sam9261ek/Makefile b/arch/arm/boards/at91sam9261ek/Makefile
index 667095ae4..e7a9cde41 100644
--- a/arch/arm/boards/at91sam9261ek/Makefile
+++ b/arch/arm/boards/at91sam9261ek/Makefile
@@ -1,4 +1,4 @@
 obj-y += init.o
 
-lwl-$(CONFIG_AT91SAM926X_LWL) += lowlevel_init.o
+lwl-y += lowlevel_init.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9261ek
diff --git a/arch/arm/boards/at91sam9261ek/lowlevel_init.c b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
index 056584166..c4e4957ca 100644
--- a/arch/arm/boards/at91sam9261ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
@@ -4,16 +4,10 @@
  * Under GPLv2
  */
 
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
+#include <asm/barebox-arm.h>
+
+#include <mach/at91sam926x_board_init.h>
+#include <mach/at91sam9261_matrix.h>
 
 #define MASTER_CLOCK		200
 
@@ -25,7 +19,7 @@
 #define MASTER_PLL_DIV		1
 #endif
 
-void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg)
+static void __bare_init at91sam9261ek_board_config(struct at91sam926x_board_cfg *cfg)
 {
 	/* Disable Watchdog */
 	cfg->wdt_mr =
@@ -106,3 +100,28 @@ void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_c
 		AT91_RSTC_RSTTYP_WAKEUP |
 		AT91_RSTC_RSTTYP_WATCHDOG;
 }
+
+static void __bare_init at91sam9261ek_init(void)
+{
+	struct at91sam926x_board_cfg cfg;
+
+	cfg.pio = IOMEM(AT91SAM9261_BASE_PIOC);
+	cfg.sdramc = IOMEM(AT91SAM9261_BASE_SDRAMC);
+	cfg.ebi_pio_is_peripha = false;
+	cfg.matrix_csa = AT91_MATRIX_EBICSA;
+
+	at91sam9261ek_board_config(&cfg);
+	at91sam926x_board_init(&cfg);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(cfg.sdramc),
+	                  NULL);
+}
+
+void __naked __bare_init barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(AT91SAM9261_SRAM_BASE + AT91SAM9261_SRAM_SIZE - 16);
+
+	at91sam9261ek_init();
+}
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 99a8fdeb2..6ae794f06 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -331,8 +331,6 @@ config MACH_AT91SAM9261EK
 	select HAVE_AT91_DATAFLASH_CARD
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
 	select HAVE_AT91_BOOTSTRAP
-	select AT91SAM9261_LWL
-	select AT91SAM926X_LWL
 	help
 	  Select this if you are using Atmel's AT91SAM9261-EK Evaluation Kit.
 	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3820>
@@ -361,7 +359,6 @@ config MACH_AT91SAM9G10EK
 	bool "Atmel AT91SAM9G10-EK Evaluation Kit"
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
 	select HAS_DM9000
-	select AT91SAM9261_LWL
 	help
 	  Select this if you are using Atmel's AT91SAM9G10-EK Evaluation Kit.
 	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=4588>
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
