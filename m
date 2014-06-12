Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wuyti-0005by-Ej
 for barebox@lists.infradead.org; Thu, 12 Jun 2014 06:54:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Jun 2014 08:53:43 +0200
Message-Id: <1402556023-1811-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1402556023-1811-1-git-send-email-s.hauer@pengutronix.de>
References: <1402556023-1811-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] ARM: Phytec-phyCORE-imx27: Switch to multiimage support
To: barebox@lists.infradead.org

Tested on the phyCORE-imx27 to boot on NOR and NAND using the
registered update handlers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phycore-imx27/lowlevel.c | 24 ++++---
 arch/arm/configs/imx_defconfig                  | 72 ++++++++++-----------
 arch/arm/configs/phytec-phycore-imx27_defconfig | 83 -------------------------
 arch/arm/dts/Makefile                           |  1 +
 arch/arm/mach-imx/Kconfig                       | 17 ++---
 images/Makefile.imx                             |  4 ++
 6 files changed, 68 insertions(+), 133 deletions(-)
 delete mode 100644 arch/arm/configs/phytec-phycore-imx27_defconfig

diff --git a/arch/arm/boards/phytec-phycore-imx27/lowlevel.c b/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
index 16b916b..b9b2ab5 100644
--- a/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
@@ -33,7 +33,7 @@
 
 #define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
 
-void __bare_init __naked barebox_arm_reset_vector(void)
+static void __bare_init __naked noinline phytec_phycorce_imx27_common_init(void *fdt)
 {
 	uint32_t r;
 	int i;
@@ -93,12 +93,22 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 			ESDCTL0_BL | ESDCTL0_SMODE_NORMAL,
 			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
-	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND)) {
-		/* setup a stack to be able to call mx27_barebox_boot_nand_external() */
-		arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 8);
+	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND))
+		imx27_barebox_boot_nand_external(fdt);
 
-		imx27_barebox_boot_nand_external(0);
-	}
 out:
-	imx27_barebox_entry(NULL);
+	imx27_barebox_entry(fdt);
+}
+
+extern char __dtb_imx27_phytec_phycore_rdk_start[];
+
+ENTRY_FUNCTION(start_phytec_phycore_imx27, r0, r1, r2)
+{
+	void *fdt;
+
+	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 12);
+
+	fdt = __dtb_imx27_phytec_phycore_rdk_start - get_runtime_offset();
+
+	phytec_phycorce_imx27_common_init(fdt);
 }
diff --git a/arch/arm/configs/imx_defconfig b/arch/arm/configs/imx_defconfig
index bf57390..8751ccc 100644
--- a/arch/arm/configs/imx_defconfig
+++ b/arch/arm/configs/imx_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_IMX=y
 CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_TX25=y
 CONFIG_MACH_PCA100=y
+CONFIG_MACH_PCM038=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_AEABI=y
@@ -14,7 +15,6 @@ CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_RELOCATABLE=y
 CONFIG_PANIC_HANG=y
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
@@ -23,55 +23,56 @@ CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_READF=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENUTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_UBIFORMAT=y
+CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
 CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_UBIFORMAT=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENUTREE=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MM=y
 CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
@@ -96,6 +97,7 @@ CONFIG_USB_EHCI=y
 CONFIG_USB_ULPI=y
 CONFIG_MCI=y
 CONFIG_MCI_IMX=y
+CONFIG_MFD_MC13XXX=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
diff --git a/arch/arm/configs/phytec-phycore-imx27_defconfig b/arch/arm/configs/phytec-phycore-imx27_defconfig
deleted file mode 100644
index b3cd0bc..0000000
--- a/arch/arm/configs/phytec-phycore-imx27_defconfig
+++ /dev/null
@@ -1,83 +0,0 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="imx27-phytec-phycore-rdk"
-CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND=y
-CONFIG_MACH_PCM038=y
-CONFIG_IMX_IIM=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MMU=y
-CONFIG_TEXT_BASE=0xa7f00000
-CONFIG_MALLOC_SIZE=0x1000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH=""
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
-CONFIG_OFDEVICE=y
-CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_DRIVER_NET_FEC_IMX=y
-CONFIG_NET_USB=y
-CONFIG_NET_USB_ASIX=y
-CONFIG_DRIVER_SPI_IMX=y
-CONFIG_MTD=y
-CONFIG_DRIVER_CFI=y
-CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_NAND=y
-# CONFIG_NAND_ECC_SOFT is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-CONFIG_NAND_IMX=y
-CONFIG_USB=y
-CONFIG_USB_IMX_CHIPIDEA=y
-CONFIG_USB_EHCI=y
-CONFIG_USB_ULPI=y
-CONFIG_USB_STORAGE=y
-CONFIG_VIDEO=y
-CONFIG_DRIVER_VIDEO_IMX=y
-CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY=y
-CONFIG_MFD_MC13XXX=y
-CONFIG_IMX_WEIM=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_NFS=y
-CONFIG_ZLIB=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 39fbda2..6bbb4dc 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -60,6 +60,7 @@ pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
 pbl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
 pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
 pbl-$(CONFIG_MACH_PCA100) += imx27-phytec-phycard-s-rdk-bb.dtb.o
+pbl-$(CONFIG_MACH_PCM038) += imx27-phytec-phycore-rdk.dtb.o
 pbl-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
 pbl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 pbl-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index b84bf64..e1b4e31 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -193,6 +193,15 @@ config MACH_PCA100
 	  Say Y here if you are using Phytec's phyCard-i.MX27 (pca100) equipped
 	  with a Freescale i.MX27 Processor
 
+config MACH_PCM038
+	bool "phyCORE-i.MX27"
+	select ARCH_IMX27
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select ARCH_IMX_EXTERNAL_BOOT_NAND
+	help
+	  Say Y here if you are using Phytec's phyCORE-i.MX27 (pcm038) equipped
+	  with a Freescale i.MX27 Processor
+
 config MACH_EFIKA_MX_SMARTBOOK
 	bool "Efika MX smartbook"
 	select ARCH_IMX51
@@ -344,14 +353,6 @@ config MACH_IMX27ADS
 	  Say Y here if you are using the Freescale i.MX27ads board equipped
 	  with a Freescale i.MX27 Processor
 
-config MACH_PCM038
-	bool "phyCORE-i.MX27"
-	select ARCH_IMX27
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	help
-	  Say Y here if you are using Phytec's phyCORE-i.MX27 (pcm038) equipped
-	  with a Freescale i.MX27 Processor
-
 config MACH_NESO
 	bool "Garz+Fricke Neso"
 	select ARCH_IMX27
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 5085a55..633fdfa 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -23,6 +23,10 @@ pblx-$(CONFIG_MACH_PCA100) += start_phytec_phycard_imx27
 FILE_barebox-phytec-phycard-imx27.img = start_phytec_phycard_imx27.pblx
 image-$(CONFIG_MACH_PCA100) += barebox-phytec-phycard-imx27.img
 
+pblx-$(CONFIG_MACH_PCM038) += start_phytec_phycore_imx27
+FILE_barebox-phytec-phycore-imx27.img = start_phytec_phycore_imx27.pblx
+image-$(CONFIG_MACH_PCM038) += barebox-phytec-phycore-imx27.img
+
 # ----------------------- i.MX51 based boards ---------------------------
 pblx-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage
 CFG_start_imx51_babbage.pblx.imximg = $(board)/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
