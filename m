Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eW0uD-0003Os-7P
 for barebox@lists.infradead.org; Mon, 01 Jan 2018 14:17:44 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon,  1 Jan 2018 15:16:41 +0100
Message-Id: <20180101141659.19554-6-sam@ravnborg.org>
In-Reply-To: <20171231083407.GA16645@ravnborg.org>
References: <20171231083407.GA16645@ravnborg.org>
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
Subject: [PATCH 07/25] pm9261: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/pm9261/lowlevel_init.c | 39 +++++++++++++++++++++++++---------
 arch/arm/mach-at91/Kconfig             |  3 +--
 2 files changed, 30 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boards/pm9261/lowlevel_init.c b/arch/arm/boards/pm9261/lowlevel_init.c
index 91a64b415..a4cb8af69 100644
--- a/arch/arm/boards/pm9261/lowlevel_init.c
+++ b/arch/arm/boards/pm9261/lowlevel_init.c
@@ -4,22 +4,16 @@
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
+#include <asm/barebox-arm.h>
+
+#include <mach/at91sam926x_board_init.h>
 #include <mach/at91sam9_matrix.h>
-#include <mach/at91_lowlevel_init.h>
 
 #define MASTER_PLL_DIV		15
 #define MASTER_PLL_MUL		162
 #define MAIN_PLL_DIV		2
 
-void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg)
+static void __bare_init pm9261_board_config(struct at91sam926x_board_cfg *cfg)
 {
 	/* Disable Watchdog */
 	cfg->wdt_mr =
@@ -100,3 +94,28 @@ void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_c
 		AT91_RSTC_RSTTYP_WAKEUP |
 		AT91_RSTC_RSTTYP_WATCHDOG;
 }
+
+static void __bare_init pm9261_init(void)
+{
+	struct at91sam926x_board_cfg cfg;
+
+	cfg.pio = IOMEM(AT91SAM9261_BASE_PIOC);
+	cfg.sdramc = IOMEM(AT91SAM9261_BASE_SDRAMC);
+	cfg.ebi_pio_is_peripha = false;
+	cfg.matrix_csa = AT91_MATRIX_EBICSA;
+
+	pm9261_board_config(&cfg);
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
+	pm9261_init();
+}
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index be2173185..14ea5e4e2 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -345,8 +345,7 @@ config MACH_PM9261
 	bool "Ronetix PM9261"
 	select HAS_DM9000
 	select HAVE_AT91_BOOTSTRAP
-	select AT91SAM9261_LWL
-	select AT91SAM926X_LWL
+	select AT91SAM926X_BOARD_INIT
 	help
 	  Say y here if you are using the Ronetix PM9261 Board
 
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
