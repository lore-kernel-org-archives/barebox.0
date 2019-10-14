Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzJb-00029U-I9
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 12:19:09 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2019 14:18:55 +0200
Message-Id: <20191014121901.19471-7-a.fatoum@pengutronix.de>
In-Reply-To: <20191014121901.19471-1-a.fatoum@pengutronix.de>
References: <20191014121901.19471-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 06/12] ARM: at91: use compressed DTB for AT91_MULTI_BOARDS
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

To offset the size increase by using multi-image have the DTBs be
compressed. This reduces e.g. the microchip_ksz9477_evb_defconfig
by about 22K from 244K to 222K.
This will also come in handy when implementing first stage support
later on.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/at91sam9263ek/lowlevel_init.c    | 4 ++--
 arch/arm/boards/at91sam9x5ek/lowlevel.c          | 4 ++--
 arch/arm/boards/microchip-ksz9477-evb/lowlevel.c | 5 +++--
 arch/arm/mach-at91/Kconfig                       | 1 +
 4 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/at91sam9263ek/lowlevel_init.c b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
index ba0ae39c7fee..0bf0e0fb4eeb 100644
--- a/arch/arm/boards/at91sam9263ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
@@ -115,7 +115,7 @@ static void __bare_init at91sam9263ek_init(void *fdt)
 			  fdt);
 }
 
-extern char __dtb_at91sam9263ek_start[];
+extern char __dtb_z_at91sam9263ek_start[];
 
 ENTRY_FUNCTION(start_at91sam9263ek, r0, r1, r2)
 {
@@ -126,7 +126,7 @@ ENTRY_FUNCTION(start_at91sam9263ek, r0, r1, r2)
 	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE);
 
 	if (IS_ENABLED(CONFIG_MACH_AT91SAM9263EK_DT))
-		fdt = __dtb_at91sam9263ek_start + get_runtime_offset();
+		fdt = __dtb_z_at91sam9263ek_start + get_runtime_offset();
 	else
 		fdt = NULL;
 
diff --git a/arch/arm/boards/at91sam9x5ek/lowlevel.c b/arch/arm/boards/at91sam9x5ek/lowlevel.c
index 9033597e7cb1..c1433c8f7e84 100644
--- a/arch/arm/boards/at91sam9x5ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9x5ek/lowlevel.c
@@ -7,7 +7,7 @@
 #include <io.h>
 #include <debug_ll.h>
 
-extern char __dtb_at91sam9x5ek_start[];
+extern char __dtb_z_at91sam9x5ek_start[];
 
 ENTRY_FUNCTION(start_at91sam9x5ek, r0, r1, r2)
 {
@@ -16,7 +16,7 @@ ENTRY_FUNCTION(start_at91sam9x5ek, r0, r1, r2)
 	arm_cpu_lowlevel_init();
 	arm_setup_stack(AT91SAM9X5_SRAM_BASE + AT91SAM9X5_SRAM_SIZE);
 
-	fdt = __dtb_at91sam9x5ek_start + get_runtime_offset();
+	fdt = __dtb_z_at91sam9x5ek_start + get_runtime_offset();
 
 	barebox_arm_entry(AT91_CHIPSELECT_1, at91sam9x5_get_ddram_size(), fdt);
 }
diff --git a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
index 0ce2b299edbd..2a72ca321a09 100644
--- a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
+++ b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
@@ -12,7 +12,7 @@
 
 #include <mach/hardware.h>
 
-extern char __dtb_at91_microchip_ksz9477_evb_start[];
+extern char __dtb_z_at91_microchip_ksz9477_evb_start[];
 
 ENTRY_FUNCTION(start_sama5d3_xplained_ung8071, r0, r1, r2)
 {
@@ -22,7 +22,8 @@ ENTRY_FUNCTION(start_sama5d3_xplained_ung8071, r0, r1, r2)
 
 	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE);
 
-	fdt = __dtb_at91_microchip_ksz9477_evb_start + get_runtime_offset();
+
+	fdt = __dtb_z_at91_microchip_ksz9477_evb_start + get_runtime_offset();
 
 	barebox_arm_entry(SAMA5_DDRCS, SZ_256M, fdt);
 }
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 8bb9cf8bbea8..070f2f6893dc 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -536,6 +536,7 @@ endif
 config AT91_MULTI_BOARDS
 	bool "Allow multiple boards to be selected"
 	select HAVE_PBL_MULTI_IMAGES
+	select ARM_USE_COMPRESSED_DTB
 
 if AT91_MULTI_BOARDS
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
