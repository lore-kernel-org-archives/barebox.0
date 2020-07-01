Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqVE2-00051O-EK
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 05:24:07 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 07:23:37 +0200
Message-Id: <20200701052340.9462-26-a.fatoum@pengutronix.de>
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
Subject: [PATCH 25/28] ARM: at91: sama5d2: populate $bootsource and
 $bootsource_instance
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The BootROM passes us information about the boot medium in r4 and we
already use that in first stage and pass it along to second stage
PBL already. To make use of it, we need to pass it to barebox proper, do
this by writing it in the last 4 bytes of the SRAM. As second stage
always run in DRAM, this is safe to do.

We could also write to SRAM directly from first stage, but at91bootstrap
passes info in r4 as well for the sama5d3 boards, so we do it likewise
to maintain compatibility.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/sama5d27-giantboard/lowlevel.c  |  6 +++---
 arch/arm/boards/sama5d27-som1/lowlevel.c        |  2 +-
 arch/arm/mach-at91/ddramc.c                     |  4 +++-
 arch/arm/mach-at91/include/mach/ddramc.h        |  3 +--
 .../mach-at91/include/mach/sama5_bootsource.h   |  3 +++
 arch/arm/mach-at91/sama5d2.c                    | 17 +++++++++++++++++
 6 files changed, 28 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/sama5d27-giantboard/lowlevel.c b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
index 0bb3a7289c99..3dada9baf23c 100644
--- a/arch/arm/boards/sama5d27-giantboard/lowlevel.c
+++ b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
@@ -7,7 +7,7 @@
 #include <init.h>
 
 #include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 #include <mach/sama5d2_ll.h>
 #include <mach/iomux.h>
 #include <debug_ll.h>
@@ -25,7 +25,7 @@ static void dbgu_init(void)
 
 extern char __dtb_z_at91_sama5d27_giantboard_start[];
 
-ENTRY_FUNCTION(start_sama5d27_giantboard, r0, r1, r2)
+SAMA5_ENTRY_FUNCTION(start_sama5d27_giantboard, r4)
 {
 	void *fdt;
 
@@ -36,5 +36,5 @@ ENTRY_FUNCTION(start_sama5d27_giantboard, r0, r1, r2)
 
 	fdt = __dtb_z_at91_sama5d27_giantboard_start + get_runtime_offset();
 
-	sama5d2_barebox_entry(fdt);
+	sama5d2_barebox_entry(r4, fdt);
 }
diff --git a/arch/arm/boards/sama5d27-som1/lowlevel.c b/arch/arm/boards/sama5d27-som1/lowlevel.c
index bf01b161e2f4..e9c781297c27 100644
--- a/arch/arm/boards/sama5d27-som1/lowlevel.c
+++ b/arch/arm/boards/sama5d27-som1/lowlevel.c
@@ -71,5 +71,5 @@ SAMA5_ENTRY_FUNCTION(start_sama5d27_som1_ek, r4)
 	fdt = __dtb_z_at91_sama5d27_som1_ek_start + get_runtime_offset();
 
 	ek_turn_led(RGB_LED_GREEN);
-	sama5d2_barebox_entry(fdt);
+	sama5d2_barebox_entry(r4, fdt);
 }
diff --git a/arch/arm/mach-at91/ddramc.c b/arch/arm/mach-at91/ddramc.c
index 6dac7946896b..a241ea9f0a61 100644
--- a/arch/arm/mach-at91/ddramc.c
+++ b/arch/arm/mach-at91/ddramc.c
@@ -9,6 +9,7 @@
 #include <mach/hardware.h>
 #include <asm/barebox-arm.h>
 #include <mach/at91_ddrsdrc.h>
+#include <mach/sama5_bootsource.h>
 #include <asm/memory.h>
 #include <pbl.h>
 #include <io.h>
@@ -18,8 +19,9 @@ static unsigned sama5_ramsize(void __iomem *base)
 	return at91_get_ddram_size(base, true);
 }
 
-void __noreturn sama5d2_barebox_entry(void *boarddata)
+void __noreturn sama5d2_barebox_entry(unsigned int r4, void *boarddata)
 {
+	__sama5d2_stashed_bootrom_r4 = r4;
 	barebox_arm_entry(SAMA5_DDRCS, sama5_ramsize(SAMA5D2_BASE_MPDDRC),
 			  boarddata);
 }
diff --git a/arch/arm/mach-at91/include/mach/ddramc.h b/arch/arm/mach-at91/include/mach/ddramc.h
index cd85bb6eab21..b929bf5f58e8 100644
--- a/arch/arm/mach-at91/include/mach/ddramc.h
+++ b/arch/arm/mach-at91/include/mach/ddramc.h
@@ -32,7 +32,6 @@ void at91_lpddr1_sdram_initialize(void __iomem *base_address,
 				  void __iomem *ram_address,
 				  struct at91_ddramc_register *ddramc_config);
 
-void __noreturn sama5d2_barebox_entry(void *boarddata);
-
+void __noreturn sama5d2_barebox_entry(unsigned int r4, void *boarddata);
 
 #endif /* #ifndef __DDRAMC_H__ */
diff --git a/arch/arm/mach-at91/include/mach/sama5_bootsource.h b/arch/arm/mach-at91/include/mach/sama5_bootsource.h
index 29354dcaf34d..0f90afe90232 100644
--- a/arch/arm/mach-at91/include/mach/sama5_bootsource.h
+++ b/arch/arm/mach-at91/include/mach/sama5_bootsource.h
@@ -43,4 +43,7 @@ static inline int sama5_bootsource_instance(u32 reg)
 	return FIELD_GET(SAMA5_BOOTSOURCE_INSTANCE, reg);
 }
 
+#define __sama5d2_stashed_bootrom_r4 \
+	(*(volatile u32 *)(SAMA5D2_SRAM_BASE + SAMA5D2_SRAM_SIZE - 0x4))
+
 #endif
diff --git a/arch/arm/mach-at91/sama5d2.c b/arch/arm/mach-at91/sama5d2.c
index c498b0964534..2ce6d7f36f56 100644
--- a/arch/arm/mach-at91/sama5d2.c
+++ b/arch/arm/mach-at91/sama5d2.c
@@ -6,6 +6,7 @@
 #include <mach/aic.h>
 #include <mach/sama5d2.h>
 #include <asm/cache-l2x0.h>
+#include <mach/sama5_bootsource.h>
 #include <asm/mmu.h>
 
 #define SFR_CAN		0x48
@@ -52,3 +53,19 @@ static int sama5d2_init(void)
 	return 0;
 }
 postmmu_initcall(sama5d2_init);
+
+static int sama5d2_bootsource_init(void)
+{
+	u32 r4;
+
+	if (!of_machine_is_compatible("atmel,sama5d2"))
+		return 0;
+
+	r4 = __sama5d2_stashed_bootrom_r4;
+
+	bootsource_set(sama5_bootsource(r4));
+	bootsource_set_instance(sama5_bootsource_instance(r4));
+
+	return 0;
+}
+postcore_initcall(sama5d2_bootsource_init);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
