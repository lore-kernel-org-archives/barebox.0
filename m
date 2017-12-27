Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eUIf6-0003a9-MM
 for barebox@lists.infradead.org; Wed, 27 Dec 2017 20:50:57 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Wed, 27 Dec 2017 21:50:14 +0100
Message-Id: <20171227205033.26012-5-sam@ravnborg.org>
In-Reply-To: <20171227204842.GA20040@ravnborg.org>
References: <20171227204842.GA20040@ravnborg.org>
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
Subject: [PATCH 05/24] at91sam9261ek,
 at91sam9g10ek: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Move reset vector to board code and drop use
of arch/arm/mach-at91/at91sam9261_lowlevel_init.c.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/at91sam9261ek/Makefile        |  2 +-
 arch/arm/boards/at91sam9261ek/lowlevel_init.c | 41 ++++++++++++++++++++-------
 arch/arm/mach-at91/Kconfig                    |  4 +--
 3 files changed, 32 insertions(+), 15 deletions(-)

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
index e7b664e9a..be2173185 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -336,8 +336,7 @@ config MACH_AT91SAM9261EK
 	select HAVE_AT91_DATAFLASH_CARD
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
 	select HAVE_AT91_BOOTSTRAP
-	select AT91SAM9261_LWL
-	select AT91SAM926X_LWL
+	select AT91SAM926X_BOARD_INIT
 	help
 	  Select this if you are using Atmel's AT91SAM9261-EK Evaluation Kit.
 	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3820>
@@ -366,7 +365,6 @@ config MACH_AT91SAM9G10EK
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
