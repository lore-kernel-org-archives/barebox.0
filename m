Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXvkn-0007pe-73
 for barebox@lists.infradead.org; Sat, 06 Jan 2018 21:11:59 +0000
Received: by mail-lf0-x243.google.com with SMTP id j143so8474939lfg.0
 for <barebox@lists.infradead.org>; Sat, 06 Jan 2018 13:11:37 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Sat,  6 Jan 2018 22:11:02 +0100
Message-Id: <20180106211118.24249-6-sam@ravnborg.org>
In-Reply-To: <20180106210450.GA21127@ravnborg.org>
References: <20180106210450.GA21127@ravnborg.org>
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
Subject: [PATCH v5 06/22] at91sam9263ek: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Move reset code to the board specific code.
This drops the dependency where mach-at91/ code
calls into the board code.

Drop the now (for this board) unessesary CONFIG select's

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/at91sam9263ek/lowlevel_init.c | 43 ++++++++++++++++++++-------
 arch/arm/mach-at91/Kconfig                    |  4 +--
 2 files changed, 33 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boards/at91sam9263ek/lowlevel_init.c b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
index 2f8b312d3..70e0da3b1 100644
--- a/arch/arm/boards/at91sam9263ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
@@ -4,21 +4,17 @@
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
 
 #define MASTER_PLL_MUL		171
 #define MASTER_PLL_DIV		14
 
-void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg)
+static void __bare_init at91sam9263ek_board_config(struct at91sam926x_board_cfg *cfg)
 {
 	/* Disable Watchdog */
 	cfg->wdt_mr =
@@ -102,3 +98,28 @@ void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_c
 		AT91_RSTC_RSTTYP_WAKEUP |
 		AT91_RSTC_RSTTYP_WATCHDOG;
 }
+
+static void __bare_init at91sam9263ek_init(void)
+{
+	struct at91sam926x_board_cfg cfg;
+
+	cfg.pio = IOMEM(AT91SAM9263_BASE_PIOD);
+	cfg.sdramc = IOMEM(AT91SAM9263_BASE_SDRAMC0);
+	cfg.ebi_pio_is_peripha = true;
+	cfg.matrix_csa = AT91_MATRIX_EBI0CSA;
+
+	at91sam9263ek_board_config(&cfg);
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
+	at91sam9263ek_init();
+}
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 234257eb9..552c992c0 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -442,9 +442,7 @@ config MACH_AT91SAM9263EK
 	bool "Atmel AT91SAM9263-EK"
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
 	select HAVE_AT91_BOOTSTRAP
-	select AT91SAM9263_LWL
-	select AT91SAM926X_LWL
-
+	select AT91SAM926X_BOARD_INIT
 	help
 	  Say y here if you are using Atmel's AT91SAM9263-EK Evaluation board
 
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
