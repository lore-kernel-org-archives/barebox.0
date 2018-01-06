Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXvkn-0007qX-7F
 for barebox@lists.infradead.org; Sat, 06 Jan 2018 21:12:06 +0000
Received: by mail-lf0-x243.google.com with SMTP id c19so8474437lfg.3
 for <barebox@lists.infradead.org>; Sat, 06 Jan 2018 13:11:41 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Sat,  6 Jan 2018 22:11:07 +0100
Message-Id: <20180106211118.24249-11-sam@ravnborg.org>
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
Subject: [PATCH v5 11/22] {usb,tny}-a926x: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

For all Calao USB boards move reset vector to board code.
Introduce two different lowlevel.c files, one
for each processor.
Include renames to make filenames similar.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/tny-a926x/Makefile                 |  5 ++-
 arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c     | 26 ++++++++++++
 ..._a9263_lowlevel_init.c => tny_a9263_lowlevel.c} | 48 +++++++++++++++-------
 arch/arm/boards/usb-a926x/Makefile                 |  4 +-
 arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c     | 26 ++++++++++++
 ..._a9263_lowlevel_init.c => usb_a9263_lowlevel.c} | 43 ++++++++++++++-----
 arch/arm/mach-at91/Kconfig                         | 10 +----
 7 files changed, 127 insertions(+), 35 deletions(-)
 create mode 100644 arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
 rename arch/arm/boards/tny-a926x/{tny_a9263_lowlevel_init.c => tny_a9263_lowlevel.c} (73%)
 create mode 100644 arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
 rename arch/arm/boards/usb-a926x/{usb_a9263_lowlevel_init.c => usb_a9263_lowlevel.c} (76%)

diff --git a/arch/arm/boards/tny-a926x/Makefile b/arch/arm/boards/tny-a926x/Makefile
index bebb197e4..d40078875 100644
--- a/arch/arm/boards/tny-a926x/Makefile
+++ b/arch/arm/boards/tny-a926x/Makefile
@@ -2,6 +2,9 @@ obj-y += init.o
 
 obj-$(CONFIG_AT91_BOOTSTRAP) += tny_a9263_bootstrap.o
 
-lwl-$(CONFIG_AT91SAM926X_LWL) += tny_a9263_lowlevel_init.o
+
+lwl-$(CONFIG_MACH_TNY_A9260) += tny_a9260_lowlevel.o
+lwl-$(CONFIG_MACH_TNY_A9G20) += tny_a9260_lowlevel.o
+lwl-$(CONFIG_MACH_TNY_A9263) += tny_a9263_lowlevel.o
 
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-tny-a926x
diff --git a/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
new file mode 100644
index 000000000..b16ef31bf
--- /dev/null
+++ b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
@@ -0,0 +1,26 @@
+/*
+ * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <init.h>
+
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+#include <mach/at91sam9_sdramc.h>
+#include <mach/at91sam9260.h>
+#include <mach/hardware.h>
+
+void __naked __bare_init barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE - 16);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1,
+			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
+			  NULL);
+}
diff --git a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel_init.c b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
similarity index 73%
rename from arch/arm/boards/tny-a926x/tny_a9263_lowlevel_init.c
rename to arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
index 3b8b0a298..86a469cc0 100644
--- a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel_init.c
+++ b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
@@ -1,31 +1,24 @@
 /*
- * Copyright (C) 2009-2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  *
  * Under GPLv2
  */
 
 #include <common.h>
 #include <init.h>
-#include <mach/hardware.h>
-#include <mach/at91_rstc.h>
-#include <mach/at91_wdt.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91sam9_smc.h>
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91sam9_matrix.h>
-#include <mach/at91_lowlevel_init.h>
+
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+#include <mach/at91sam926x_board_init.h>
 #include <mach/at91sam9263_matrix.h>
 
 #define MASTER_CLOCK		180
 
-#if MASTER_CLOCK == 200
-#define MASTER_PLL_MUL		100
-#else
 #define MASTER_PLL_MUL		90
-#endif
 #define MASTER_PLL_DIV		6
 
-void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg)
+static void __bare_init tny_a9263_board_config(struct at91sam926x_board_cfg *cfg)
 {
 	/* Disable Watchdog */
 	cfg->wdt_mr =
@@ -106,3 +99,30 @@ void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_c
 		AT91_RSTC_RSTTYP_WAKEUP |
 		AT91_RSTC_RSTTYP_WATCHDOG;
 }
+
+static void __bare_init tny_a9263_init(void)
+{
+	struct at91sam926x_board_cfg cfg;
+
+	cfg.pio = IOMEM(AT91SAM9263_BASE_PIOD);
+	cfg.sdramc = IOMEM(AT91SAM9263_BASE_SDRAMC0);
+	cfg.ebi_pio_is_peripha = true;
+	cfg.matrix_csa = AT91_MATRIX_EBI0CSA;
+
+        tny_a9263_board_config(&cfg);
+
+	at91sam926x_board_init(&cfg);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1,
+			  at91_get_sdram_size(IOMEM(AT91SAM9263_BASE_SDRAMC0)),
+	                  NULL);
+}	
+
+void __naked __bare_init barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
+
+	tny_a9263_init();
+}
diff --git a/arch/arm/boards/usb-a926x/Makefile b/arch/arm/boards/usb-a926x/Makefile
index a4eae1844..65cc4082f 100644
--- a/arch/arm/boards/usb-a926x/Makefile
+++ b/arch/arm/boards/usb-a926x/Makefile
@@ -2,6 +2,8 @@ obj-y += init.o
 
 obj-$(CONFIG_AT91_BOOTSTRAP) += usb_a9263_bootstrap.o
 
-lwl-$(CONFIG_AT91SAM926X_LWL) += usb_a9263_lowlevel_init.o
+lwl-$(CONFIG_MACH_USB_A9260) += usb_a9260_lowlevel.o
+lwl-$(CONFIG_MACH_USB_A9G20) += usb_a9260_lowlevel.o
+lwl-$(CONFIG_MACH_USB_A9263) += usb_a9263_lowlevel.o
 
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-usb-a926x
diff --git a/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
new file mode 100644
index 000000000..b16ef31bf
--- /dev/null
+++ b/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
@@ -0,0 +1,26 @@
+/*
+ * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <init.h>
+
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+#include <mach/at91sam9_sdramc.h>
+#include <mach/at91sam9260.h>
+#include <mach/hardware.h>
+
+void __naked __bare_init barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE - 16);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1,
+			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
+			  NULL);
+}
diff --git a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel_init.c b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
similarity index 76%
rename from arch/arm/boards/usb-a926x/usb_a9263_lowlevel_init.c
rename to arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
index f6dc58e3f..066452b95 100644
--- a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel_init.c
+++ b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
@@ -4,16 +4,12 @@
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
 
 #define MASTER_CLOCK		180
 
@@ -24,7 +20,7 @@
 #endif
 #define MASTER_PLL_DIV		6
 
-void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg)
+static void __bare_init usb_a9263_board_config(struct at91sam926x_board_cfg *cfg)
 {
 	/* Disable Watchdog */
 	cfg->wdt_mr =
@@ -109,3 +105,28 @@ void __bare_init at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_c
 		AT91_RSTC_RSTTYP_WAKEUP |
 		AT91_RSTC_RSTTYP_WATCHDOG;
 }
+
+static void __bare_init usb_a9263_init(void)
+{
+	struct at91sam926x_board_cfg cfg;
+
+	cfg.pio = IOMEM(AT91SAM9263_BASE_PIOD);
+	cfg.sdramc = IOMEM(AT91SAM9263_BASE_SDRAMC0);
+	cfg.ebi_pio_is_peripha = true;
+	cfg.matrix_csa = AT91_MATRIX_EBI0CSA;
+
+	usb_a9263_board_config(&cfg);
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
+	usb_a9263_init();
+}
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 5fb17658a..dc3503af0 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -297,7 +297,6 @@ config MACH_QIL_A9260
 config MACH_TNY_A9260
 	bool "CALAO TNY-A9260"
 	select SUPPORT_CALAO_MOB_TNY_MD2
-	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems TNY-A9260.
 	  <http://www.calao-systems.com>
@@ -305,7 +304,6 @@ config MACH_TNY_A9260
 config MACH_USB_A9260
 	bool "CALAO USB-A9260"
 	select SUPPORT_CALAO_DAB_MMX
-	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems USB-A9260.
 	  <http://www.calao-systems.com>
@@ -388,7 +386,6 @@ config MACH_AT91SAM9G20EK
 config MACH_TNY_A9G20
 	select SUPPORT_CALAO_MOB_TNY_MD2
 	bool "CALAO TNY-A9G20"
-	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems TNY-A9G20.
 	  <http://www.calao-systems.com>
@@ -396,7 +393,6 @@ config MACH_TNY_A9G20
 config MACH_USB_A9G20
 	bool "CALAO USB-A9G20"
 	select SUPPORT_CALAO_DAB_MMX
-	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems USB-A9G20.
 	  <http://www.calao-systems.com>
@@ -452,8 +448,7 @@ config MACH_TNY_A9263
 	bool "CALAO TNY-A9263"
 	select SUPPORT_CALAO_MOB_TNY_MD2
 	select HAVE_AT91_BOOTSTRAP
-	select AT91SAM9263_LWL
-	select AT91SAM926X_LWL
+	select AT91SAM926X_BOARD_INIT
 	help
 	  Select this if you are using a Calao Systems TNY-A9263.
 	  <http://www.calao-systems.com>
@@ -461,8 +456,7 @@ config MACH_TNY_A9263
 config MACH_USB_A9263
 	bool "CALAO USB-A9263"
 	select HAVE_AT91_BOOTSTRAP
-	select AT91SAM9263_LWL
-	select AT91SAM926X_LWL
+	select AT91SAM926X_BOARD_INIT
 	help
 	  Select this if you are using a Calao Systems USB-A9263.
 	  <http://www.calao-systems.com>
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
