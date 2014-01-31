Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W9F0e-0001Gv-HN
 for barebox@lists.infradead.org; Fri, 31 Jan 2014 14:24:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Jan 2014 15:23:24 +0100
Message-Id: <1391178204-20889-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1391178204-20889-1-git-send-email-s.hauer@pengutronix.de>
References: <1391178204-20889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/15] ARM: i.MX: Karo TX25: Switch to multiboard support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx25/board.c    |  2 +-
 arch/arm/boards/karo-tx25/lowlevel.c | 26 +++++++++++++++-----------
 arch/arm/configs/tx25stk5_defconfig  | 20 ++++++++++++++++----
 arch/arm/mach-imx/Kconfig            | 14 +++++++-------
 images/Makefile.imx                  |  5 +++++
 5 files changed, 44 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index b4d553e..59c81b2 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -89,7 +89,7 @@ static int tx25_init(void)
 	armlinux_set_architecture(MACH_TYPE_TX25);
 	armlinux_set_serial(imx_uid());
 
-	imx_bbu_external_nand_register_handler("nand", "/dev/nand0.barebox",
+	imx_bbu_external_nand_register_handler("nand", "/dev/nand0.boot",
 			BBU_HANDLER_FLAG_DEFAULT);
 
 	return 0;
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index a3a7784..be27bc7 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -75,12 +75,9 @@ static inline void __bare_init  setup_sdram(uint32_t base, uint32_t esdctl,
 	writel(esdctl, esdctlreg);
 }
 
-extern char __dtb_imx25_karo_tx25_start[];
-
-void __bare_init __naked barebox_arm_reset_vector(void)
+static void __bare_init karo_tx25_common_init(uint32_t fdt)
 {
 	uint32_t r;
-	uint32_t fdt;
 
 	arm_cpu_lowlevel_init();
 
@@ -139,8 +136,6 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 
 	setup_uart();
 
-	fdt = (uint32_t)__dtb_imx25_karo_tx25_start - get_runtime_offset();
-
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0x80000000 && r < 0xa0000000)
@@ -162,12 +157,21 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	setup_sdram(0x80000000, ESDCTLVAL, ESDCFGVAL);
 	setup_sdram(0x90000000, ESDCTLVAL, ESDCFGVAL);
 
-#ifdef CONFIG_NAND_IMX_BOOT
-	/* setup a stack to be able to call imx25_barebox_boot_nand_external() */
-	arm_setup_stack(MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 8);
-
 	imx25_barebox_boot_nand_external(fdt);
-#endif
+
 out:
 	imx25_barebox_entry(fdt);
 }
+
+extern char __dtb_imx25_karo_tx25_start[];
+
+ENTRY_FUNCTION(start_imx25_karo_tx25, r0, r1, r2)
+{
+	uint32_t fdt;
+
+	arm_setup_stack(MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 8);
+
+	fdt = (uint32_t)__dtb_imx25_karo_tx25_start - get_runtime_offset();
+
+	karo_tx25_common_init(fdt);
+}
diff --git a/arch/arm/configs/tx25stk5_defconfig b/arch/arm/configs/tx25stk5_defconfig
index 32a6183..5c9338d 100644
--- a/arch/arm/configs/tx25stk5_defconfig
+++ b/arch/arm/configs/tx25stk5_defconfig
@@ -1,14 +1,24 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="imx25-karo-tx25"
 CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX_EXTERNAL_BOOT=y
 CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND=y
+CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_TX25=y
+CONFIG_MACH_EFIKA_MX_SMARTBOOK=y
+CONFIG_MACH_FREESCALE_MX51_PDK=y
+CONFIG_MACH_FREESCALE_MX53_LOCO=y
+CONFIG_MACH_TQMA53=y
+CONFIG_MACH_FREESCALE_MX53_VMX53=y
+CONFIG_MACH_PHYTEC_PFLA02=y
+CONFIG_MACH_DFI_FS700_M60=y
+CONFIG_MACH_REALQ7=y
+CONFIG_MACH_GK802=y
+CONFIG_MACH_TQMA6X=y
+CONFIG_MACH_SABRELITE=y
+CONFIG_MACH_NITROGEN6X=y
+CONFIG_MACH_SOLIDRUN_HUMMINGBOARD=y
 CONFIG_IMX_IIM=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x91d00000
 CONFIG_MALLOC_SIZE=0x1000000
@@ -26,6 +36,7 @@ CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_MSLEEP=y
 CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
@@ -77,6 +88,7 @@ CONFIG_NAND=y
 CONFIG_NAND_IMX=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX=y
+CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY=y
 CONFIG_MCI=y
 CONFIG_MCI_IMX_ESDHC=y
 CONFIG_SRAM=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 55038e8..f60ef2c 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -167,6 +167,13 @@ config IMX_MULTI_BOARDS
 
 if IMX_MULTI_BOARDS
 
+config MACH_TX25
+	bool "Ka-Ro TX25"
+	select ARCH_IMX25
+	select ARCH_IMX_EXTERNAL_BOOT_NAND
+	help
+	  Say Y here if you are using the Ka-Ro tx25 board
+
 config MACH_EFIKA_MX_SMARTBOOK
 	bool "Efika MX smartbook"
 	select ARCH_IMX51
@@ -275,13 +282,6 @@ config MACH_FREESCALE_MX25_3STACK
 	  Say Y here if you are using the Freescale MX25 3stack board equipped
 	  with a Freescale i.MX25 Processor
 
-config MACH_TX25
-	bool "Ka-Ro TX25"
-	select ARCH_IMX25
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	help
-	  Say Y here if you are using the Ka-Ro tx25 board
-
 # ----------------------------------------------------------
 
 comment "i.MX27 Boards"
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 3318fcf..dd12242 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -9,6 +9,11 @@ $(obj)/%.imximg: $(obj)/% FORCE
 
 board = $(srctree)/arch/$(ARCH)/boards
 
+# ----------------------- i.MX25 based boards ---------------------------
+pblx-$(CONFIG_MACH_TX25) += start_imx25_karo_tx25
+FILE_barebox-karo-tx25.img = start_imx25_karo_tx25.pblx
+image-$(CONFIG_MACH_TX25) += barebox-karo-tx25.img
+
 # ----------------------- i.MX51 based boards ---------------------------
 pblx-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage
 CFG_start_imx51_babbage.pblx.imximg = $(board)/freescale-mx51-pdk/flash-header-imx51-babbage.imxcfg
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
