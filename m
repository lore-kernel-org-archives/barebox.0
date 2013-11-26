Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlLmR-0000ce-89
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 16:46:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 17:45:56 +0100
Message-Id: <1385484367-15366-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
References: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/17] ARM: am33xx Phytec phyCORE: Switch to multiimage support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm051/lowlevel.c     | 41 ++++++++++++++++++++++++++++-------
 arch/arm/configs/pcm051_defconfig     |  4 ----
 arch/arm/configs/pcm051_mlo_defconfig |  9 ++++----
 arch/arm/dts/Makefile                 |  1 +
 arch/arm/mach-omap/Kconfig            |  1 +
 images/Makefile                       |  3 ++-
 images/Makefile.am33xx                | 22 +++++++++++++++++++
 7 files changed, 63 insertions(+), 18 deletions(-)
 create mode 100644 images/Makefile.am33xx

diff --git a/arch/arm/boards/pcm051/lowlevel.c b/arch/arm/boards/pcm051/lowlevel.c
index 08f36ec..d3cac68 100644
--- a/arch/arm/boards/pcm051/lowlevel.c
+++ b/arch/arm/boards/pcm051/lowlevel.c
@@ -46,6 +46,9 @@ static const struct am33xx_ddr_data MT41J256M8HX15E_2x256M8_data = {
 	.dll_lock_diff0		= 0x0,
 };
 
+extern char __dtb_am335x_phytec_phycore_start[];
+extern char __dtb_am335x_phytec_phycore_end[];
+
 /**
  * @brief The basic entry point for board initialization.
  *
@@ -55,8 +58,10 @@ static const struct am33xx_ddr_data MT41J256M8HX15E_2x256M8_data = {
  *
  * @return void
  */
-static int pcm051_board_init(void)
+static noinline void pcm051_board_init(void)
 {
+	unsigned long sdram = 0x80000000, fdt;
+
 	/* WDT1 is already running when the bootloader gets control
 	 * Disable it to avoid "random" resets
 	 */
@@ -66,9 +71,6 @@ static int pcm051_board_init(void)
 	writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
 	while (readl(AM33XX_WDT_REG(WWPS)) != 0x0);
 
-	if (am33xx_running_in_sdram())
-		return 0;
-
 	am33xx_pll_init(MPUPLL_M_600, 25, DDRPLL_M_303);
 
 	am335x_sdram_init(0x18B, &MT41J256M8HX15E_2x256M8_cmd,
@@ -80,16 +82,39 @@ static int pcm051_board_init(void)
 	omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
 	putc_ll('>');
 
-	return 0;
+	/*
+	 * Copy the devicetree blob to sdram so that the barebox code finds it
+	 * inside valid SDRAM instead of SRAM.
+	 */
+	memcpy((void *)sdram, __dtb_am335x_phytec_phycore_start,
+			__dtb_am335x_phytec_phycore_end -
+			__dtb_am335x_phytec_phycore_start);
+	fdt = sdram;
+
+	barebox_arm_entry(sdram, SZ_512M, fdt);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(uint32_t *data)
+ENTRY_FUNCTION(start_am33xx_phytec_phycore_sram, bootinfo, r1, r2)
 {
-	am33xx_save_bootinfo(data);
+	am33xx_save_bootinfo((void *)bootinfo);
 
 	arm_cpu_lowlevel_init();
 
+	/*
+	 * Setup C environment, the board init code uses global variables.
+	 * Stackpointer has already been initialized by the ROM code.
+	 */
+	relocate_to_current_adr();
+	setup_c();
+
 	pcm051_board_init();
+}
+
+ENTRY_FUNCTION(start_am33xx_phytec_phycore_sdram, r0, r1, r2)
+{
+	uint32_t fdt;
+
+	fdt = (uint32_t)__dtb_am335x_phytec_phycore_start - get_runtime_offset();
 
-	barebox_arm_entry(0x80000000, SZ_512M, 0);
+	barebox_arm_entry(0x80000000, SZ_512M, fdt);
 }
diff --git a/arch/arm/configs/pcm051_defconfig b/arch/arm/configs/pcm051_defconfig
index e55ac47..482329a 100644
--- a/arch/arm/configs/pcm051_defconfig
+++ b/arch/arm/configs/pcm051_defconfig
@@ -1,5 +1,3 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="am335x-phytec-phycore"
 CONFIG_ARCH_OMAP=y
 CONFIG_BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO=y
 CONFIG_MACH_PCM051=y
@@ -8,8 +6,6 @@ CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
-CONFIG_PBL_IMAGE=y
-CONFIG_PBL_RELOCATABLE=y
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x0
 CONFIG_MALLOC_SIZE=0x0
diff --git a/arch/arm/configs/pcm051_mlo_defconfig b/arch/arm/configs/pcm051_mlo_defconfig
index 4f6a7b1..dc4165a 100644
--- a/arch/arm/configs/pcm051_mlo_defconfig
+++ b/arch/arm/configs/pcm051_mlo_defconfig
@@ -1,5 +1,3 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="am335x-phytec-phycore"
 CONFIG_ARCH_OMAP=y
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_MACH_PCM051=y
@@ -8,9 +6,10 @@ CONFIG_THUMB2_BAREBOX=y
 # CONFIG_MEMINFO is not set
 CONFIG_ENVIRONMENT_VARIABLES=y
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x402F0400
-CONFIG_STACK_SIZE=0x1600
-CONFIG_MALLOC_SIZE=0x1000000
+CONFIG_TEXT_BASE=0x0
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_RELOCATABLE=y
 CONFIG_PROMPT="MLO>"
 CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 9e85d5a..6618660 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -28,6 +28,7 @@ pbl-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
 pbl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
+pbl-$(CONFIG_MACH_PCM051) += am335x-phytec-phycore.dtb.o
 pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6q-phytec-pbab01.dtb.o
 pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-realq7.dtb.o
 pbl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox.dtb.o
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 7cd7f89..1cfc22f 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -178,6 +178,7 @@ config MACH_PCM051
 	bool "Phytec phyCORE pcm051"
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select ARCH_AM33XX
+	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Say Y here if you are using Phytecs phyCORE pcm051 board
 
diff --git a/images/Makefile b/images/Makefile
index b080a8c..4ff0602 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -100,6 +100,7 @@ $(obj)/%.img: $(obj)/$$(FILE_$$(@F))
 	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
 	$(call if_changed,shipped)
 
+include $(srctree)/images/Makefile.am33xx
 include $(srctree)/images/Makefile.imx
 include $(srctree)/images/Makefile.mvebu
 include $(srctree)/images/Makefile.socfpga
@@ -119,5 +120,5 @@ images: $(addprefix $(obj)/, $(image-y)) FORCE
 	@for i in $(image-y); do echo $$i; done
 
 clean-files := *.pbl *.pblb *.pblx *.map start_*.imximg *.img barebox.z start_*.kwbimg \
-	start_*.kwbuartimg *.socfpgaimg
+	start_*.kwbuartimg *.socfpgaimg *.mlo
 clean-files += pbl.lds
diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
new file mode 100644
index 0000000..8efef2a
--- /dev/null
+++ b/images/Makefile.am33xx
@@ -0,0 +1,22 @@
+
+# %.mlo - convert into mlo image
+# ----------------------------------------------------------------
+quiet_cmd_mlo_image = MLO     $@
+      cmd_mlo_image = scripts/omap_signGP -o $@ -l 0x402f0400 -c $<
+
+$(obj)/%.mlo: $(obj)/% FORCE
+	$(call if_changed,mlo_image)
+
+pblx-$(CONFIG_MACH_PCM051) += start_am33xx_phytec_phycore_sdram
+FILE_barebox-am33xx-phytec-phycore.img = start_am33xx_phytec_phycore_sdram.pblx
+am33xx-barebox-$(CONFIG_MACH_PCM051) += barebox-am33xx-phytec-phycore.img
+
+pblx-$(CONFIG_MACH_PCM051) += start_am33xx_phytec_phycore_sram
+FILE_barebox-am33xx-phytec-phycore-mlo.img = start_am33xx_phytec_phycore_sram.pblx.mlo
+am33xx-mlo-$(CONFIG_MACH_PCM051) += barebox-am33xx-phytec-phycore-mlo.img
+
+ifdef CONFIG_OMAP_BUILD_IFT
+image-y += $(am33xx-mlo-y)
+else
+image-y += $(am33xx-barebox-y)
+endif
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
