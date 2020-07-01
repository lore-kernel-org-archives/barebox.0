Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqVDm-0004r5-8r
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 05:23:53 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 07:23:35 +0200
Message-Id: <20200701052340.9462-24-a.fatoum@pengutronix.de>
In-Reply-To: <20200701052340.9462-1-a.fatoum@pengutronix.de>
References: <20200701052340.9462-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 23/28] ARM: at91: sama5d27-som1: add additional first stage
 entry point
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The BootROM constrains us to a 64K big first stage bootloader. Add a PBL
entry point for a xload barebox that sets up the minimum necessary to
load a FAT32 barebox.bin from the SD-Card.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/sama5d27-som1/lowlevel.c      | 32 +++++++++------
 arch/arm/mach-at91/Kconfig                    |  1 +
 arch/arm/mach-at91/include/mach/barebox-arm.h | 21 ++++++++++
 .../include/mach/sama5d2-sip-ddramc.h         | 39 +++++++++++++++++++
 images/Makefile.at91                          |  5 +++
 5 files changed, 87 insertions(+), 11 deletions(-)
 create mode 100644 arch/arm/mach-at91/include/mach/barebox-arm.h
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d2-sip-ddramc.h

diff --git a/arch/arm/boards/sama5d27-som1/lowlevel.c b/arch/arm/boards/sama5d27-som1/lowlevel.c
index 2e408ce832f7..d52c4ca7465e 100644
--- a/arch/arm/boards/sama5d27-som1/lowlevel.c
+++ b/arch/arm/boards/sama5d27-som1/lowlevel.c
@@ -5,13 +5,12 @@
 
 #include <common.h>
 #include <init.h>
-
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 #include <mach/sama5d2_ll.h>
 #include <mach/iomux.h>
+#include <mach/xload.h>
 #include <debug_ll.h>
-#include <mach/at91_dbgu.h>
+#include <mach/sama5d2-sip-ddramc.h>
 
 #define RGB_LED_GREEN (1 << 0)
 #define RGB_LED_RED   (1 << 1)
@@ -40,23 +39,34 @@ static void ek_turn_led(unsigned color)
 	}
 }
 
-static void ek_dbgu_init(void)
+SAMA5_ENTRY_FUNCTION(start_sama5d27_som1_ek_xload_mmc, r4)
 {
-	sama5d2_resetup_uart_console(MASTER_CLOCK);
+	void __iomem *dbgu_base;
+	sama5d2_lowlevel_init();
+
+	dbgu_base = sama5d2_resetup_uart_console(MASTER_CLOCK);
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		putc_ll('>');
 
-	putc_ll('>');
+	relocate_to_current_adr();
+	setup_c();
+
+	pbl_set_putc(at91_dbgu_putc, dbgu_base);
+
+	ek_turn_led(RGB_LED_RED | RGB_LED_GREEN); /* Yellow */
+	sama5d2_udelay_init(MASTER_CLOCK);
+	sama5d2_d1g_ddrconf();
+	sama5d2_sdhci_start_image(r4);
 }
 
 extern char __dtb_z_at91_sama5d27_som1_ek_start[];
 
-ENTRY_FUNCTION(start_sama5d27_som1_ek, r0, r1, r2)
+SAMA5_ENTRY_FUNCTION(start_sama5d27_som1_ek, r4)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
-
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		ek_dbgu_init();
+		putc_ll('>');
 
 	fdt = __dtb_z_at91_sama5d27_som1_ek_start + get_runtime_offset();
 
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 25ef854bf0b5..f388d00b8f47 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -603,6 +603,7 @@ config MACH_SAMA5D27_SOM1
 	bool "Microchip SAMA5D27 SoM-1 Evaluation Kit"
 	select SOC_SAMA5D2
 	select OFDEVICE
+	select MCI_ATMEL_SDHCI_PBL
 	select COMMON_CLK_OF_PROVIDER
 	help
 	  Select this if you are using Microchip's sama5d27 SoM evaluation kit
diff --git a/arch/arm/mach-at91/include/mach/barebox-arm.h b/arch/arm/mach-at91/include/mach/barebox-arm.h
new file mode 100644
index 000000000000..4a65c6f8fa55
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/barebox-arm.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef AT91_BAREBOX_ARM_H_
+#define AT91_BAREBOX_ARM_H_
+
+#include <asm/barebox-arm.h>
+
+#define SAMA5_ENTRY_FUNCTION(name, r4)						\
+	void name (u32 r0, u32 r1, u32 r2, u32 r3);				\
+										\
+	static void __##name(u32);						\
+										\
+	void NAKED __section(.text_head_entry_##name)	name			\
+				(u32 r0, u32 r1, u32 r2, u32 r3)		\
+		{								\
+			register u32 r4 asm("r4");				\
+			__barebox_arm_head();					\
+			__##name(r4);						\
+		}								\
+		static void NAKED noinline __##name				\
+			(u32 r4)
+#endif
diff --git a/arch/arm/mach-at91/include/mach/sama5d2-sip-ddramc.h b/arch/arm/mach-at91/include/mach/sama5d2-sip-ddramc.h
new file mode 100644
index 000000000000..35c92c43fce8
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/sama5d2-sip-ddramc.h
@@ -0,0 +1,39 @@
+/* SPDX-License-Identifier: BSD-1-Clause
+ *
+ * Copyright (C) 2014, Atmel Corporation
+ *
+ * SAMA5D27 System-in-Package DDRAMC configuration
+ */
+
+#include <mach/at91_ddrsdrc.h>
+#include <mach/ddramc.h>
+#include <mach/sama5d2_ll.h>
+
+static inline void sama5d2_d1g_ddrconf(void) /* DDR2 1Gbit SDRAM */
+{
+	struct at91_ddramc_register conf = {
+		.mdr = AT91_DDRC2_DBW_16_BITS | AT91_DDRC2_MD_DDR2_SDRAM,
+
+		.cr = AT91_DDRC2_NC_DDR10_SDR9 | AT91_DDRC2_NR_13 |
+			AT91_DDRC2_CAS_3 | AT91_DDRC2_DISABLE_RESET_DLL |
+			AT91_DDRC2_WEAK_STRENGTH_RZQ7 | AT91_DDRC2_ENABLE_DLL |
+			AT91_DDRC2_NB_BANKS_8 | AT91_DDRC2_NDQS_ENABLED |
+			AT91_DDRC2_DECOD_INTERLEAVED | AT91_DDRC2_UNAL_SUPPORTED,
+
+		.rtr = 0x511,
+
+		.t0pr = AT91_DDRC2_TRAS_(7) | AT91_DDRC2_TRCD_(3) |
+			AT91_DDRC2_TWR_(3) | AT91_DDRC2_TRC_(9) |
+			AT91_DDRC2_TRP_(3) | AT91_DDRC2_TRRD_(2) |
+			AT91_DDRC2_TWTR_(2) | AT91_DDRC2_TMRD_(2),
+
+		.t1pr = AT91_DDRC2_TRFC_(22) | AT91_DDRC2_TXSNR_(23) |
+			AT91_DDRC2_TXSRD_(200) | AT91_DDRC2_TXP_(2),
+
+		.t2pr = AT91_DDRC2_TXARD_(2) | AT91_DDRC2_TXARDS_(8) |
+			AT91_DDRC2_TRPA_(4) | AT91_DDRC2_TRTP_(2) |
+			AT91_DDRC2_TFAW_(8),
+	};
+
+	sama5d2_ddr2_init(&conf);
+}
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index 448d71fb981d..bc63357c5d19 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -18,6 +18,11 @@ pblb-$(CONFIG_MACH_SAMA5D27_SOM1) += start_sama5d27_som1_ek
 FILE_barebox-sama5d27-som1-ek.img = start_sama5d27_som1_ek.pblb
 image-$(CONFIG_MACH_SAMA5D27_SOM1) += barebox-sama5d27-som1-ek.img
 
+pblb-$(CONFIG_MACH_SAMA5D27_SOM1) += start_sama5d27_som1_ek_xload_mmc
+MAX_PBL_IMAGE_SIZE_start_sama5d27_som1_ek_xload_mmc = 0xffff
+FILE_barebox-sama5d27-som1-ek-xload-mmc.img = start_sama5d27_som1_ek_xload_mmc.pblb
+image-$(CONFIG_MACH_SAMA5D27_SOM1) += barebox-sama5d27-som1-ek-xload-mmc.img
+
 pblb-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += start_sama5d27_giantboard
 FILE_barebox-groboards-sama5d27-giantboard.img = start_sama5d27_giantboard.pblb
 image-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += barebox-groboards-sama5d27-giantboard.img
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
