Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzANT-0004ow-6m
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 18:21:23 +0000
Received: from mail609.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id A70CFFFA08B
 for <barebox@lists.infradead.org>; Sat, 26 Jan 2013 19:31:15 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 26 Jan 2013 19:19:55 +0100
Message-Id: <1359224399-569-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130126181809.GH26329@game.jcrosoft.org>
References: <20130126181809.GH26329@game.jcrosoft.org>
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
Subject: [PATCH 1/5] at91sam9260/9g20/9261/9g10/9263: split soc lowlevel_init
 from generic
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig                         |    6 ++++
 arch/arm/mach-at91/Makefile                        |    5 ++-
 arch/arm/mach-at91/at91sam9260_lowlevel_init.c     |   34 ++++++++++++++++++
 arch/arm/mach-at91/at91sam9261_lowlevel_init.c     |   34 ++++++++++++++++++
 arch/arm/mach-at91/at91sam9263_lowlevel_init.c     |   34 ++++++++++++++++++
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c     |   36 ++++----------------
 .../mach-at91/include/mach/at91_lowlevel_init.h    |    1 +
 7 files changed, 120 insertions(+), 30 deletions(-)
 create mode 100644 arch/arm/mach-at91/at91sam9260_lowlevel_init.c
 create mode 100644 arch/arm/mach-at91/at91sam9261_lowlevel_init.c
 create mode 100644 arch/arm/mach-at91/at91sam9263_lowlevel_init.c

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index a3b2aba..0216a7e 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -62,6 +62,9 @@ config AT91SAM9_RESET
 config AT91SAM9G45_RESET
 	bool
 
+config AT91SAM9_LOWLEVEL_INIT
+	bool
+
 comment "Atmel AT91 System-on-Chip"
 
 config SOC_AT91RM9200
@@ -77,6 +80,7 @@ config SOC_AT91SAM9260
 	select HAVE_AT91_DBGU0
 	select HAS_MACB
 	select AT91SAM9_RESET
+	select AT91SAM9_LOWLEVEL_INIT
 	help
 	  Select this if you are using one of Atmel's AT91SAM9260, AT91SAM9XE
 	  or AT91SAM9G20 SoC.
@@ -86,6 +90,7 @@ config SOC_AT91SAM9261
 	select SOC_AT91SAM9
 	select HAVE_AT91_DBGU0
 	select AT91SAM9_RESET
+	select AT91SAM9_LOWLEVEL_INIT
 	help
 	  Select this if you are using one of Atmel's AT91SAM9261 or AT91SAM9G10 SoC.
 
@@ -95,6 +100,7 @@ config SOC_AT91SAM9263
 	select HAVE_AT91_DBGU1
 	select HAS_MACB
 	select AT91SAM9_RESET
+	select AT91SAM9_LOWLEVEL_INIT
 
 config SOC_AT91SAM9G45
 	bool
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 634b160..0eabeac 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -2,7 +2,10 @@ obj-y += setup.o clock.o gpio.o
 obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
 
 obj-$(CONFIG_AT91_BOOTSTRAP) += bootstrap.o
-lowlevel_init-y = at91sam926x_lowlevel_init.o
+lowlevel_init-$(CONFIG_AT91SAM9_LOWLEVEL_INIT) = at91sam926x_lowlevel_init.o
+lowlevel_init-$(CONFIG_SOC_AT91SAM9260) += at91sam9260_lowlevel_init.o
+lowlevel_init-$(CONFIG_SOC_AT91SAM9261) += at91sam9261_lowlevel_init.o
+lowlevel_init-$(CONFIG_SOC_AT91SAM9263) += at91sam9263_lowlevel_init.o
 lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
 obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
 
diff --git a/arch/arm/mach-at91/at91sam9260_lowlevel_init.c b/arch/arm/mach-at91/at91sam9260_lowlevel_init.c
new file mode 100644
index 0000000..c2cf8bf
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam9260_lowlevel_init.c
@@ -0,0 +1,34 @@
+/*
+ * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+  */
+
+#define __LOWLEVEL_INIT__
+
+#include <common.h>
+#include <asm/system.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/hardware.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91_pio.h>
+#include <mach/at91_rstc.h>
+#include <mach/at91_wdt.h>
+#include <mach/at91sam9_matrix.h>
+#include <mach/at91sam9_sdramc.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/at91_lowlevel_init.h>
+#include <mach/io.h>
+#include <init.h>
+#include <sizes.h>
+
+void __naked __bare_init reset(void)
+{
+	common_reset();
+
+	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE - 16);
+
+	at91sam926x_lowlevel_init(IOMEM(AT91SAM9260_BASE_PIOC), false,
+				  AT91_MATRIX_EBICSA);
+}
diff --git a/arch/arm/mach-at91/at91sam9261_lowlevel_init.c b/arch/arm/mach-at91/at91sam9261_lowlevel_init.c
new file mode 100644
index 0000000..a2e065f
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam9261_lowlevel_init.c
@@ -0,0 +1,34 @@
+/*
+ * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+  */
+
+#define __LOWLEVEL_INIT__
+
+#include <common.h>
+#include <asm/system.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/hardware.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91_pio.h>
+#include <mach/at91_rstc.h>
+#include <mach/at91_wdt.h>
+#include <mach/at91sam9_matrix.h>
+#include <mach/at91sam9_sdramc.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/at91_lowlevel_init.h>
+#include <mach/io.h>
+#include <init.h>
+#include <sizes.h>
+
+void __naked __bare_init reset(void)
+{
+	common_reset();
+
+	arm_setup_stack(AT91SAM9261_SRAM_BASE + AT91SAM9261_SRAM_SIZE - 16);
+
+	at91sam926x_lowlevel_init(IOMEM(AT91SAM9261_BASE_PIOC), false,
+				  AT91_MATRIX_EBICSA);
+}
diff --git a/arch/arm/mach-at91/at91sam9263_lowlevel_init.c b/arch/arm/mach-at91/at91sam9263_lowlevel_init.c
new file mode 100644
index 0000000..5260658
--- /dev/null
+++ b/arch/arm/mach-at91/at91sam9263_lowlevel_init.c
@@ -0,0 +1,34 @@
+/*
+ * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+  */
+
+#define __LOWLEVEL_INIT__
+
+#include <common.h>
+#include <asm/system.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/hardware.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91_pio.h>
+#include <mach/at91_rstc.h>
+#include <mach/at91_wdt.h>
+#include <mach/at91sam9_matrix.h>
+#include <mach/at91sam9_sdramc.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/at91_lowlevel_init.h>
+#include <mach/io.h>
+#include <init.h>
+#include <sizes.h>
+
+void __naked __bare_init reset(void)
+{
+	common_reset();
+
+	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
+
+	at91sam926x_lowlevel_init(IOMEM(AT91SAM9263_BASE_PIOD), true,
+				  AT91_MATRIX_EBI0CSA);
+}
diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
index 14afbc9..8b9b33e 100644
--- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
@@ -46,7 +46,8 @@ static int inline running_in_sram(void)
 	return addr == 0;
 }
 
-void __bare_init at91sam926x_lowlevel_init(void)
+void __bare_init at91sam926x_lowlevel_init(void *pio, bool is_pio_asr,
+					   u32 matrix_csa)
 {
 	u32 r;
 	int i;
@@ -58,20 +59,12 @@ void __bare_init at91sam926x_lowlevel_init(void)
 	__raw_writel(cfg.wdt_mr, AT91_BASE_WDT + AT91_WDT_MR);
 
 	/* configure PIOx as EBI0 D[16-31] */
-#ifdef CONFIG_ARCH_AT91SAM9263
-	__raw_writel(cfg.ebi_pio_pdr, AT91_BASE_PIOD + PIO_PDR);
-	__raw_writel(cfg.ebi_pio_ppudr, AT91_BASE_PIOD + PIO_PUDR);
-	__raw_writel(cfg.ebi_pio_ppudr, AT91_BASE_PIOD + PIO_ASR);
-#else
-	__raw_writel(cfg.ebi_pio_pdr, AT91_BASE_PIOC + PIO_PDR);
-	__raw_writel(cfg.ebi_pio_ppudr, AT91_BASE_PIOC + PIO_PUDR);
-#endif
+	__raw_writel(cfg.ebi_pio_pdr, pio + PIO_PDR);
+	__raw_writel(cfg.ebi_pio_ppudr, pio + PIO_PUDR);
+	if (is_pio_asr)
+		__raw_writel(cfg.ebi_pio_ppudr, pio + PIO_ASR);
 
-#if defined(AT91_MATRIX_EBI0CSA)
-	at91_sys_write(AT91_MATRIX_EBI0CSA, cfg.ebi_csa);
-#else /* AT91_MATRIX_EBICSA */
-	at91_sys_write(AT91_MATRIX_EBICSA, cfg.ebi_csa);
-#endif
+	at91_sys_write(matrix_csa, cfg.ebi_csa);
 
 	/* flash */
 	at91_smc_write(cfg.smc_cs, AT91_SMC_MODE, cfg.smc_mode);
@@ -193,18 +186,3 @@ void __bare_init at91sam926x_lowlevel_init(void)
 end:
 	board_init_lowlevel_return();
 }
-
-void __naked __bare_init reset(void)
-{
-	common_reset();
-
-#ifdef CONFIG_ARCH_AT91SAM9263
-	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
-#elif defined(CONFIG_ARCH_AT91SAM9261) || defined(CONFIG_ARCH_AT91SAM9G10)
-	arm_setup_stack(AT91SAM9261_SRAM_BASE + AT91SAM9261_SRAM_SIZE - 16);
-#elif defined(CONFIG_ARCH_AT91SAM9260) || defined(CONFIG_ARCH_AT91SAM9G20)
-	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE - 16);
-#endif
-
-	at91sam926x_lowlevel_init();
-}
diff --git a/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h b/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
index 29d9628..8c53ce7 100644
--- a/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
+++ b/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
@@ -29,5 +29,6 @@ struct at91sam926x_lowlevel_cfg {
 };
 
 void at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg);
+void at91sam926x_lowlevel_init(void *pio, bool is_pio_asr, u32 matrix_csa);
 
 #endif /* __AT91_LOWLEVEL_INIT_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
