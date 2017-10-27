Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1e85lq-0006SW-A0
 for barebox@lists.infradead.org; Fri, 27 Oct 2017 14:38:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 6FE7EA00341
 for <barebox@lists.infradead.org>; Fri, 27 Oct 2017 16:39:26 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 27 Oct 2017 16:37:28 +0200
Message-Id: <1509115052-4331-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 1/5] ARM: boards: phytec-som-am335x: Add unified MLO
To: barebox@lists.infradead.org

PCM-060 modules only have one-bank RAMs populated, which allows us to
find out the populated RAM size at run-time.

Therefore, a new entry point was create 'PHYTEC_ENTRY_UNIFIED_MLO'. This
creates a MLO for all modules of one family and all existing PCM-060
MLOs were replaced with this new entry point. To provide backward
compatibility for older modules, these were not affected.

In the first step generic RAM timings for the module family get loaded,
because RAM accesses are only possible with an initialized controller.
After that, the RAM size will be calculated and the RAM controller gets
reinitialized with the correct RAM timings.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/lowlevel.c | 150 +++++++++++++++++++++++----
 images/Makefile.am33xx                       |  24 ++---
 2 files changed, 138 insertions(+), 36 deletions(-)

diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index 77f436f..b1576ee 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -46,6 +46,94 @@ static const struct am33xx_cmd_control physom_cmd = {
 	.invert_clkout2	= 0x0,
 };
 
+/* Module family for the unified MLO
+ *
+ * NONE:        Unified MLO is not supported
+ * PHYCORE_R2:  Unified MLO for PCM-060, PCM-062
+ */
+enum {
+	NONE,
+	PHYCORE_R2,
+};
+
+/* @brief Supplies default ram timings for all ram sizes
+ *
+ * Returns generic ram timings for module families to find the correct
+ * ram size.
+ *
+ * @return struct am335x_sdram_timings* or NULL
+ */
+
+static noinline struct am335x_sdram_timings* get_minimal_timings(
+							int module_family)
+{
+	struct am335x_sdram_timings *timing;
+
+	switch (module_family) {
+	case PHYCORE_R2:
+		timing = &physom_timings[PHYCORE_R2_MT41K512M16HA125IT_1024MB];
+		break;
+	default:
+		timing = NULL;
+	}
+
+	return timing;
+}
+
+/* @brief Converts ramsizes to ram timings for phyCORE-R2 modules
+ *
+ * Returns ram timings for a given ram size or NULL, if this size is
+ * not supported.
+ *
+ * @return struct am335x_sdram_timings* or NULL
+ */
+
+static noinline struct am335x_sdram_timings* convert_phycore_r2_timings(
+								u32 ramsize)
+{
+	struct am335x_sdram_timings *timing;
+
+	switch (ramsize) {
+	case SZ_256M:
+		timing = &physom_timings[PHYCORE_R2_MT41K128M16JT_256MB];
+		break;
+	case SZ_512M:
+		timing = &physom_timings[PHYCORE_R2_MT41K256M16TW107IT_512MB];
+		break;
+	case SZ_1G:
+		timing = &physom_timings[PHYCORE_R2_MT41K512M16HA125IT_1024MB];
+		break;
+	default:
+		timing = NULL;
+	}
+
+	return timing;
+}
+
+/* @brief Converts a module family and ram size to ram timings
+ *
+ * Returns ram timings for a given ram size and module family or NULL,
+ * if the ram size or module family is not supported.
+ *
+ * @return struct am335x_sdram_timings* or NULL
+ */
+
+static noinline struct am335x_sdram_timings* get_timings_by_size(
+						int module_family, u32 ramsize)
+{
+	struct am335x_sdram_timings *timing;
+
+	switch (module_family) {
+	case PHYCORE_R2:
+		timing = convert_phycore_r2_timings(ramsize);
+		break;
+	default:
+		timing = NULL;
+	}
+
+	return timing;
+}
+
 /**
  * @brief The basic entry point for board initialization.
  *
@@ -55,9 +143,10 @@ static const struct am33xx_cmd_control physom_cmd = {
  *
  * @return void
  */
-static noinline void physom_board_init(int sdram, void *fdt)
+static noinline void physom_board_init(void *fdt, int sdram, int module_family)
 {
-	struct am335x_sdram_timings *timing = &physom_timings[sdram];
+	struct am335x_sdram_timings *timing = NULL;
+	u32 ramsize;
 
 	/*
 	 * WDT1 is already running when the bootloader gets control
@@ -71,6 +160,24 @@ static noinline void physom_board_init(int sdram, void *fdt)
 
 	am33xx_pll_init(MPUPLL_M_600, DDRPLL_M_400);
 
+	if (module_family == NONE) {
+		timing = &physom_timings[sdram];
+	} else {
+		/* Load generic DDR3 ram timings to find the ram size */
+		timing = get_minimal_timings(module_family);
+		if (!timing)
+			hang();
+		am335x_sdram_init(DDR_IOCTRL, &physom_cmd,
+				&timing->regs,
+				&timing->data);
+
+		/* Find the ram size and set up the correct ram timings */
+		ramsize = get_ram_size((long *) 0x80000000, SZ_1G);
+		timing = get_timings_by_size(module_family, ramsize);
+		if (!timing)
+			hang();
+	}
+
 	am335x_sdram_init(DDR_IOCTRL, &physom_cmd,
 			&timing->regs,
 			&timing->data);
@@ -83,7 +190,8 @@ static noinline void physom_board_init(int sdram, void *fdt)
 	am335x_barebox_entry(fdt);
 }
 
-static noinline void physom_board_entry(unsigned long bootinfo, int sdram, void *fdt)
+static noinline void physom_board_entry(unsigned long bootinfo, int sdram,
+					void *fdt, int module_family)
 {
 	am33xx_save_bootinfo((void *)bootinfo);
 
@@ -95,26 +203,34 @@ static noinline void physom_board_entry(unsigned long bootinfo, int sdram, void
 	 */
 	relocate_to_current_adr();
 	setup_c();
-
-	physom_board_init(sdram, fdt);
+	physom_board_init(fdt, sdram, module_family);
 }
 
-#define PHYTEC_ENTRY_MLO(name, fdt_name, sdram)			\
-	ENTRY_FUNCTION(name, bootinfo, r1, r2)			\
-	{							\
+#define PHYTEC_ENTRY_UNIFIED_MLO(name, fdt_name, module_family)		\
+	ENTRY_FUNCTION(name, bootinfo, r1, r2)				\
+	{								\
+		extern char __dtb_z_##fdt_name##_start[];		\
+		void *fdt = __dtb_z_##fdt_name##_start -		\
+			get_runtime_offset();				\
+		physom_board_entry(bootinfo, 0, fdt, module_family);	\
+	}
+
+#define PHYTEC_ENTRY_MLO(name, fdt_name, sdram)				\
+	ENTRY_FUNCTION(name, bootinfo, r1, r2)				\
+	{								\
 		extern char __dtb_z_##fdt_name##_start[];		\
 		void *fdt = __dtb_z_##fdt_name##_start -		\
-			get_runtime_offset();			\
-		physom_board_entry(bootinfo, sdram, fdt);	\
+			get_runtime_offset();				\
+		physom_board_entry(bootinfo, sdram, fdt, NONE);		\
 	}
 
-#define PHYTEC_ENTRY(name, fdt_name)				\
-	ENTRY_FUNCTION(name, r0, r1, r2)			\
-	{							\
+#define PHYTEC_ENTRY(name, fdt_name)					\
+	ENTRY_FUNCTION(name, r0, r1, r2)				\
+	{								\
 		extern char __dtb_z_##fdt_name##_start[];		\
 		void *fdt = __dtb_z_##fdt_name##_start -		\
-			get_runtime_offset();			\
-		am335x_barebox_entry(fdt);			\
+			get_runtime_offset();				\
+		am335x_barebox_entry(fdt);				\
 	}
 
 /* phycore-som */
@@ -122,9 +238,7 @@ PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_128mb, am335x_phytec_phycore_s
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_256mb, am335x_phytec_phycore_som_mlo, PHYCORE_MT41J128M16125IT_256MB);
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_512mb, am335x_phytec_phycore_som_mlo, PHYCORE_MT41J256M16HA15EIT_512MB);
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_2x512mb, am335x_phytec_phycore_som_mlo, PHYCORE_MT41J512M8125IT_2x512MB);
-PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_r2_sram_512mb, am335x_phytec_phycore_som_mlo, PHYCORE_R2_MT41K256M16TW107IT_512MB);
-PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_r2_sram_256mb, am335x_phytec_phycore_som_mlo, PHYCORE_R2_MT41K128M16JT_256MB);
-PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_r2_sram_1024mb,  am335x_phytec_phycore_som_mlo, PHYCORE_R2_MT41K512M16HA125IT_1024MB);
+PHYTEC_ENTRY_UNIFIED_MLO(start_am33xx_phytec_phycore_r2_sram, am335x_phytec_phycore_som_mlo, PHYCORE_R2);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_nand_sdram, am335x_phytec_phycore_som_nand);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_emmc_sdram, am335x_phytec_phycore_som_emmc);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_nand_no_spi_sdram, am335x_phytec_phycore_som_nand_no_spi);
diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index e86d4e9..3f29143 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -45,18 +45,18 @@ pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_nand_no_spi
 FILE_barebox-am33xx-phytec-phycore-no-spi-no-eeprom.img = start_am33xx_phytec_phycore_nand_no_spi_no_eeprom_sdram.pblx
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-no-spi-no-eeprom.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_r2_sram
+FILE_barebox-am33xx-phytec-phycore-r2-mlo.img = start_am33xx_phytec_phycore_r2_sram.pblx.mlo
+FILE_barebox-am33xx-phytec-phycore-r2-mlo.spi.img = start_am33xx_phytec_phycore_r2_sram.pblx.mlospi
+am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo.img
+am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo.spi.img
+
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_256mb
 FILE_barebox-am33xx-phytec-phycore-mlo-256mb.img = start_am33xx_phytec_phycore_sram_256mb.pblx.mlo
 FILE_barebox-am33xx-phytec-phycore-mlo-256mb.spi.img = start_am33xx_phytec_phycore_sram_256mb.pblx.mlospi
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-256mb.img
 am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-256mb.spi.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_r2_sram_256mb
-FILE_barebox-am33xx-phytec-phycore-r2-mlo-256mb.img = start_am33xx_phytec_phycore_r2_sram_256mb.pblx.mlo
-FILE_barebox-am33xx-phytec-phycore-r2-mlo-256mb.spi.img = start_am33xx_phytec_phycore_r2_sram_256mb.pblx.mlospi
-am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo-256mb.img
-am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo-256mb.spi.img
-
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_128mb
 FILE_barebox-am33xx-phytec-phycore-mlo-128mb.img = start_am33xx_phytec_phycore_sram_128mb.pblx.mlo
 FILE_barebox-am33xx-phytec-phycore-mlo-128mb.spi.img = start_am33xx_phytec_phycore_sram_128mb.pblx.mlospi
@@ -69,24 +69,12 @@ FILE_barebox-am33xx-phytec-phycore-mlo-512mb.spi.img = start_am33xx_phytec_phyco
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-512mb.img
 am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-512mb.spi.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_r2_sram_512mb
-FILE_barebox-am33xx-phytec-phycore-r2-mlo-512mb.img = start_am33xx_phytec_phycore_r2_sram_512mb.pblx.mlo
-FILE_barebox-am33xx-phytec-phycore-r2-mlo-512mb.spi.img = start_am33xx_phytec_phycore_r2_sram_512mb.pblx.mlospi
-am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo-512mb.img
-am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo-512mb.spi.img
-
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_2x512mb
 FILE_barebox-am33xx-phytec-phycore-mlo-2x512mb.img = start_am33xx_phytec_phycore_sram_2x512mb.pblx.mlo
 FILE_barebox-am33xx-phytec-phycore-mlo-2x512mb.spi.img = start_am33xx_phytec_phycore_sram_2x512mb.pblx.mlospi
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-2x512mb.img
 am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-2x512mb.spi.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_r2_sram_1024mb
-FILE_barebox-am33xx-phytec-phycore-r2-mlo-1024mb.img = start_am33xx_phytec_phycore_r2_sram_1024mb.pblx.mlo
-FILE_barebox-am33xx-phytec-phycore-r2-mlo-1024mb.spi.img = start_am33xx_phytec_phycore_r2_sram_1024mb.pblx.mlospi
-am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo-1024mb.img
-am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo-1024mb.spi.img
-
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_sdram
 FILE_barebox-am33xx-phytec-phyflex.img = start_am33xx_phytec_phyflex_sdram.pblx
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex.img
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
