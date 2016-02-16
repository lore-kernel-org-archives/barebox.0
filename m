Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVdAN-0006cn-0b
 for barebox@lists.infradead.org; Tue, 16 Feb 2016 10:47:43 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B3F8AA00445
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 11:47:09 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Tue, 16 Feb 2016 11:45:02 +0100
Message-Id: <1455619502-19908-8-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1455619502-19908-1-git-send-email-t.remmet@phytec.de>
References: <1455619502-19908-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 7/7] ARM: AM335x: Make use of ARM_USE_COMPRESSED_DTB
To: barebox@lists.infradead.org

Use ARM_USE_COMPRESSED_DTB for all AM335x based board,
to reduce the image size even more.

Saves about 9kB in MLO image and 20kB in barebox image.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/boards/afi-gf/lowlevel.c            |  6 +++---
 arch/arm/boards/beaglebone/lowlevel.c        | 12 ++++++------
 arch/arm/boards/phytec-som-am335x/lowlevel.c |  8 ++++----
 arch/arm/mach-omap/Kconfig                   |  1 +
 4 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/afi-gf/lowlevel.c b/arch/arm/boards/afi-gf/lowlevel.c
index efe15ec..91b4b68 100644
--- a/arch/arm/boards/afi-gf/lowlevel.c
+++ b/arch/arm/boards/afi-gf/lowlevel.c
@@ -196,7 +196,7 @@ static const struct module_pin_mux board_can_pin_mux[] = {
 	{-1},
 };
 
-extern char __dtb_am335x_afi_gf_start[];
+extern char __dtb_z_am335x_afi_gf_start[];
 
 /**
  * @brief The basic entry point for board initialization.
@@ -211,7 +211,7 @@ static noinline int gf_sram_init(void)
 {
 	void *fdt;
 
-	fdt = __dtb_am335x_afi_gf_start;
+	fdt = __dtb_z_am335x_afi_gf_start;
 
 	/* WDT1 is already running when the bootloader gets control
 	 * Disable it to avoid "random" resets
@@ -258,7 +258,7 @@ ENTRY_FUNCTION(start_am33xx_afi_gf_sdram, r0, r1, r2)
 {
 	void *fdt;
 
-	fdt = __dtb_am335x_afi_gf_start - get_runtime_offset();
+	fdt = __dtb_z_am335x_afi_gf_start - get_runtime_offset();
 
 	putc_ll('>');
 
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 79d5985..100f64f 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -103,9 +103,9 @@ static const struct am33xx_emif_regs ddr3_regs = {
 	.sdram_ref_ctrl		= 0xC30,
 };
 
-extern char __dtb_am335x_boneblack_start[];
-extern char __dtb_am335x_bone_common_start[];
-extern char __dtb_am335x_bone_start[];
+extern char __dtb_z_am335x_boneblack_start[];
+extern char __dtb_z_am335x_bone_common_start[];
+extern char __dtb_z_am335x_bone_start[];
 
 /**
  * @brief The basic entry point for board initialization.
@@ -121,7 +121,7 @@ static noinline int beaglebone_sram_init(void)
 	uint32_t sdram_size;
 	void *fdt;
 
-	fdt = __dtb_am335x_bone_common_start;
+	fdt = __dtb_z_am335x_bone_common_start;
 
 	if (is_beaglebone_black())
 		sdram_size = SZ_512M;
@@ -176,10 +176,10 @@ ENTRY_FUNCTION(start_am33xx_beaglebone_sdram, r0, r1, r2)
 
 	if (is_beaglebone_black()) {
 		sdram_size = SZ_512M;
-		fdt = __dtb_am335x_boneblack_start;
+		fdt = __dtb_z_am335x_boneblack_start;
 	} else {
 		sdram_size = SZ_256M;
-		fdt = __dtb_am335x_bone_start;
+		fdt = __dtb_z_am335x_bone_start;
 	}
 
 	fdt -= get_runtime_offset();
diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index 4240f40..73e75eb 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -102,8 +102,8 @@ static noinline void physom_board_entry(unsigned long bootinfo, int sdram, void
 #define PHYTEC_ENTRY_MLO(name, fdt_name, sdram)			\
 	ENTRY_FUNCTION(name, bootinfo, r1, r2)			\
 	{							\
-		extern char __dtb_##fdt_name##_start[];		\
-		void *fdt =__dtb_##fdt_name##_start -		\
+		extern char __dtb_z_##fdt_name##_start[];		\
+		void *fdt = __dtb_z_##fdt_name##_start -		\
 			get_runtime_offset();			\
 		physom_board_entry(bootinfo, sdram, fdt);	\
 	}
@@ -111,8 +111,8 @@ static noinline void physom_board_entry(unsigned long bootinfo, int sdram, void
 #define PHYTEC_ENTRY(name, fdt_name)				\
 	ENTRY_FUNCTION(name, r0, r1, r2)			\
 	{							\
-		extern char __dtb_##fdt_name##_start[];		\
-		void *fdt =__dtb_##fdt_name##_start -		\
+		extern char __dtb_z_##fdt_name##_start[];		\
+		void *fdt = __dtb_z_##fdt_name##_start -		\
 			get_runtime_offset();			\
 		am335x_barebox_entry(fdt);			\
 	}
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 5c68062..d7c863c 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -44,6 +44,7 @@ config ARCH_AM33XX
 	select GENERIC_GPIO
 	select OFTREE
 	select OMAP_CLOCK_SOURCE_DMTIMER
+	select ARM_USE_COMPRESSED_DTB
 	help
 	  Say Y here if you are using Texas Instrument's AM33xx based platform
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
