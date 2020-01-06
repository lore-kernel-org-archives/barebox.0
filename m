Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWIP-0000HX-Ao
 for barebox@lists.infradead.org; Mon, 06 Jan 2020 17:36:08 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  6 Jan 2020 18:35:40 +0100
Message-Id: <20200106173540.20367-6-ahmad@a3f.at>
In-Reply-To: <20200106173540.20367-1-ahmad@a3f.at>
References: <20200106173540.20367-1-ahmad@a3f.at>
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
Subject: [RFC PATCH 5/5] [WIP] ARM: at91: sama5d27-som1: add first stage entry
 point
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de

This commit is only for testing purposes. It will be submitted later,
when SDRAM setup for the sama5d2 is implemented as well.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/boards/sama5d27-som1/lowlevel.c | 16 ++++++++++++++++
 arch/arm/mach-at91/Kconfig               |  1 +
 images/Makefile.at91                     |  4 ++++
 3 files changed, 21 insertions(+)

diff --git a/arch/arm/boards/sama5d27-som1/lowlevel.c b/arch/arm/boards/sama5d27-som1/lowlevel.c
index 7df5a4772d0b..da3ca1ba40a8 100644
--- a/arch/arm/boards/sama5d27-som1/lowlevel.c
+++ b/arch/arm/boards/sama5d27-som1/lowlevel.c
@@ -12,6 +12,7 @@
 
 #include <mach/hardware.h>
 #include <mach/iomux.h>
+#include <mach/xload.h>
 #include <debug_ll.h>
 #include <mach/at91_dbgu.h>
 
@@ -79,3 +80,18 @@ ENTRY_FUNCTION(start_sama5d27_som1_ek, r0, r1, r2)
 	ek_turn_led(RGB_LED_GREEN);
 	barebox_arm_entry(SAMA5_DDRCS, SZ_128M, fdt);
 }
+
+ENTRY_FUNCTION(start_sama5d27_som1_ek_xload_mmc, r0, r1, r2)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(SAMA5D2_SRAM_BASE + SAMA5D2_SRAM_SIZE - 16);
+
+	relocate_to_current_adr();
+	setup_c();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		ek_dbgu_init();
+
+	sama5d2_sdhci_start_image(1);
+}
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index a14aa59773fa..502151ad3c24 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -583,6 +583,7 @@ config MACH_SAMA5D27_SOM1
 	bool "Microchip SAMA5D27 SoM-1 Evaluation Kit"
 	select SOC_SAMA5D2
 	select OFDEVICE
+	select MCI_ATMEL_SDHCI_PBL
 	select COMMON_CLK_OF_PROVIDER
 	help
 	  Select this if you are using Microchip's sama5d27 SoM evaluation kit
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index f321bdec3696..235893c7deb9 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -17,3 +17,7 @@ image-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += barebox-microchip-ksz9477-evb.img
 pblb-$(CONFIG_MACH_SAMA5D27_SOM1) += start_sama5d27_som1_ek
 FILE_barebox-sama5d27-som1-ek.img = start_sama5d27_som1_ek.pblb
 image-$(CONFIG_MACH_SAMA5D27_SOM1) += barebox-sama5d27-som1-ek.img
+
+pblb-$(CONFIG_MACH_SAMA5D27_SOM1) += start_sama5d27_som1_ek_xload_mmc
+FILE_barebox-sama5d27-som1-ek-xload-mmc.img = start_sama5d27_som1_ek_xload_mmc.pblb
+image-$(CONFIG_MACH_SAMA5D27_SOM1) += barebox-sama5d27-som1-ek-xload-mmc.img
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
