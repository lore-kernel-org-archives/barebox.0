Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wi0TO-0007p3-KE
 for barebox@lists.infradead.org; Wed, 07 May 2014 11:57:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 May 2014 13:56:54 +0200
Message-Id: <1399463815-30855-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: i.MX: Phytec-phyCARD-i.MX27: Switch to multi-image
 support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phycard-imx27/lowlevel.c | 22 +++++++++++++++++-----
 arch/arm/configs/phytec-phycard-imx27_defconfig |  6 +-----
 arch/arm/dts/Makefile                           |  1 +
 arch/arm/mach-imx/Kconfig                       | 18 +++++++++---------
 images/Makefile.imx                             |  4 ++++
 5 files changed, 32 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
index 75b9788..7e4a9f0 100644
--- a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
@@ -8,6 +8,7 @@
 #include <init.h>
 #include <io.h>
 #include <config.h>
+#include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <mach/imx27-regs.h>
 #include <mach/imx-pll.h>
@@ -57,14 +58,12 @@ static void sdram_init(void)
 			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 }
 
-void __bare_init __naked barebox_arm_reset_vector(void)
+void __bare_init __naked phytec_phycard_imx27_common_init(void *fdt)
 {
 	unsigned long r;
 
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 12);
-
 	/* ahb lite ip interface */
 	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0);
 	writel(0xdffbfcfb, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR1);
@@ -74,7 +73,7 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	/* Skip SDRAM initialization if we run from RAM */
         r = get_pc();
         if (r > 0xa0000000 && r < 0xc0000000)
-                imx27_barebox_entry(NULL);
+                imx27_barebox_entry(fdt);
 
 	/* 399 MHz */
 	writel(IMX_PLL_PD(0) |
@@ -99,5 +98,18 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 
 	sdram_init();
 
-	imx27_barebox_boot_nand_external(0);
+	imx27_barebox_boot_nand_external(fdt);
+}
+
+extern char __dtb_imx27_phytec_phycard_s_rdk_bb_start[];
+
+ENTRY_FUNCTION(start_phytec_phycard_imx27, r0, r1, r2)
+{
+	void *fdt;
+
+	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 12);
+
+	fdt = __dtb_imx27_phytec_phycard_s_rdk_bb_start - get_runtime_offset();
+
+	phytec_phycard_imx27_common_init(fdt);
 }
diff --git a/arch/arm/configs/phytec-phycard-imx27_defconfig b/arch/arm/configs/phytec-phycard-imx27_defconfig
index 6e3a3ad..466a765 100644
--- a/arch/arm/configs/phytec-phycard-imx27_defconfig
+++ b/arch/arm/configs/phytec-phycard-imx27_defconfig
@@ -1,12 +1,9 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="imx27-phytec-phycard-s-rdk"
 CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND=y
+CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_PCA100=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x01000000
 CONFIG_MALLOC_TLSF=y
@@ -19,7 +16,6 @@ CONFIG_MENU=y
 CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH=""
 CONFIG_RESET_SOURCE=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index b8b7e7b..a0fc2f1 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -55,6 +55,7 @@ pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6s-phytec-pbab01.dtb.o imx6dl-phytec-pbab
 pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
 pbl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
 pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
+pbl-$(CONFIG_MACH_PCA100) += imx27-phytec-phycard-s-rdk-bb.dtb.o
 pbl-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
 pbl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 pbl-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index a6aef24..3b85f45 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -184,6 +184,15 @@ config MACH_TX25
 	help
 	  Say Y here if you are using the Ka-Ro tx25 board
 
+config MACH_PCA100
+	bool "phyCard-i.MX27"
+	select ARCH_IMX27
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select ARCH_IMX_EXTERNAL_BOOT_NAND
+	help
+	  Say Y here if you are using Phytec's phyCard-i.MX27 (pca100) equipped
+	  with a Freescale i.MX27 Processor
+
 config MACH_EFIKA_MX_SMARTBOOK
 	bool "Efika MX smartbook"
 	select ARCH_IMX51
@@ -335,15 +344,6 @@ config MACH_IMX27ADS
 	  Say Y here if you are using the Freescale i.MX27ads board equipped
 	  with a Freescale i.MX27 Processor
 
-config MACH_PCA100
-	bool "phyCard-i.MX27"
-	select ARCH_IMX27
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	select ARCH_IMX_EXTERNAL_BOOT_NAND
-	help
-	  Say Y here if you are using Phytec's phyCard-i.MX27 (pca100) equipped
-	  with a Freescale i.MX27 Processor
-
 config MACH_PCM038
 	bool "phyCORE-i.MX27"
 	select ARCH_IMX27
diff --git a/images/Makefile.imx b/images/Makefile.imx
index d00a3e5..5085a55 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -19,6 +19,10 @@ CFG_start_imx25_karo_tx25.pblx.imximg = $(board)/karo-tx25/flash-header-tx25.imx
 FILE_barebox-karo-tx25-internal.img = start_imx25_karo_tx25.pblx.imximg
 image-$(CONFIG_MACH_TX25) += barebox-karo-tx25-internal.img
 
+pblx-$(CONFIG_MACH_PCA100) += start_phytec_phycard_imx27
+FILE_barebox-phytec-phycard-imx27.img = start_phytec_phycard_imx27.pblx
+image-$(CONFIG_MACH_PCA100) += barebox-phytec-phycard-imx27.img
+
 # ----------------------- i.MX51 based boards ---------------------------
 pblx-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage
 CFG_start_imx51_babbage.pblx.imximg = $(board)/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
