Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eW0uD-0003Ou-9P
 for barebox@lists.infradead.org; Mon, 01 Jan 2018 14:17:40 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon,  1 Jan 2018 15:16:43 +0100
Message-Id: <20180101141659.19554-8-sam@ravnborg.org>
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
Subject: [PATCH 09/25] pm9263: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/pm9263/lowlevel_init.c | 43 +++++++++++++++++++++++++---------
 arch/arm/mach-at91/Kconfig             |  3 +--
 2 files changed, 33 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/pm9263/lowlevel_init.c b/arch/arm/boards/pm9263/lowlevel_init.c
index 6336d5106..6849f0a5b 100644
--- a/arch/arm/boards/pm9263/lowlevel_init.c
+++ b/arch/arm/boards/pm9263/lowlevel_init.c
@@ -4,22 +4,18 @@
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
+#include <linux/sizes.h>
+
+#include <asm/barebox-arm.h>
+
+#include <mach/at91sam926x_board_init.h>
+#include <mach/at91sam9263_matrix.h>
 
 #define MASTER_PLL_DIV		6
 #define MASTER_PLL_MUL		65
 #define MAIN_PLL_DIV		2	/* 2 or 4 */
 
-void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg)
+static void __bare_init pm9263_board_config(struct at91sam926x_board_cfg *cfg)
 {
 	/* Disable Watchdog */
 	cfg->wdt_mr =
@@ -119,3 +115,28 @@ void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_c
 		AT91_RSTC_RSTTYP_WAKEUP |
 		AT91_RSTC_RSTTYP_WATCHDOG;
 }
+
+static void __bare_init pm9263_board_init(void)
+{
+	struct at91sam926x_board_cfg cfg;
+
+	cfg.pio = IOMEM(AT91SAM9263_BASE_PIOD);
+	cfg.sdramc = IOMEM(AT91SAM9263_BASE_SDRAMC0);
+	cfg.ebi_pio_is_peripha = true;
+	cfg.matrix_csa = AT91_MATRIX_EBI0CSA;
+
+	pm9263_board_config(&cfg);
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
+	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
+
+	pm9263_board_init();
+}
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index ced75d762..a622279d7 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -450,8 +450,7 @@ config MACH_MMCCPU
 config MACH_PM9263
 	bool "Ronetix PM9263"
 	select HAVE_AT91_BOOTSTRAP
-	select AT91SAM9263_LWL
-	select AT91SAM926X_LWL
+	select AT91SAM926X_BOARD_INIT
 	help
 	  Say y here if you are using the Ronetix PM9263 Board
 
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
