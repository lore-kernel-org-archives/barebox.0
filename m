Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1buDbD-0000Ru-Kx
 for barebox@lists.infradead.org; Wed, 12 Oct 2016 07:05:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Oct 2016 09:04:47 +0200
Message-Id: <20161012070447.13211-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] arch: refresh defconfigs
To: Barebox List <barebox@lists.infradead.org>

The defconfig files are long untouched and a
make xy_defconfig; make savedefconfig usually generates quite
a different looking file. Refresh them to make it easier to generate
patches against the configs using
make xy_defconfig; make menuconfig; make savedefconfig

This has been done with the following script.

for a in arch/*; do
	arch=$(basename $a)
	for c in $a/configs/*; do
		config=$(basename $c)

	export ARCH=$arch
	make $config && make savedefconfig && mv defconfig $c
	done
done

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/a9m2410_defconfig                 |  30 ++--
 arch/arm/configs/a9m2440_defconfig                 |  30 ++--
 arch/arm/configs/am335x_mlo_defconfig              |   1 -
 arch/arm/configs/animeo_ip_defconfig               |  51 +++----
 arch/arm/configs/archosg9_defconfig                |  12 +-
 arch/arm/configs/archosg9_xload_defconfig          |   1 -
 arch/arm/configs/at91rm9200ek_defconfig            |  65 ++++----
 arch/arm/configs/at91sam9260ek_defconfig           |  51 +++----
 arch/arm/configs/at91sam9261ek_bootstrap_defconfig |   2 -
 arch/arm/configs/at91sam9261ek_defconfig           |  49 +++---
 .../configs/at91sam9261ek_first_stage_defconfig    |  46 +++---
 arch/arm/configs/at91sam9263ek_defconfig           |  52 +++----
 arch/arm/configs/at91sam9g10ek_defconfig           |  49 +++---
 arch/arm/configs/at91sam9g20ek_defconfig           |  51 +++----
 arch/arm/configs/at91sam9m10g45ek_defconfig        |  57 ++++---
 arch/arm/configs/at91sam9m10ihd_defconfig          |  59 ++++----
 arch/arm/configs/at91sam9n12ek_defconfig           |  51 +++----
 arch/arm/configs/at91sam9x5ek_defconfig            |  54 +++----
 arch/arm/configs/canon-a1100_defconfig             |   2 -
 arch/arm/configs/ccmx51_defconfig                  |  46 +++---
 arch/arm/configs/cfa10036_defconfig                |  27 ++--
 arch/arm/configs/chumbyone_defconfig               |  37 ++---
 arch/arm/configs/cupid_defconfig                   |  48 +++---
 arch/arm/configs/datamodul-edm-qmx6_defconfig      |  68 ++++-----
 arch/arm/configs/dss11_defconfig                   |  24 ++-
 arch/arm/configs/duckbill_defconfig                |   6 +-
 arch/arm/configs/edb93xx_defconfig                 |  29 ++--
 arch/arm/configs/efika-mx-smartbook_defconfig      |  84 +++++------
 arch/arm/configs/eukrea_cpuimx25_defconfig         |  10 +-
 arch/arm/configs/eukrea_cpuimx27_defconfig         |  42 +++---
 arch/arm/configs/eukrea_cpuimx35_defconfig         |  10 +-
 arch/arm/configs/eukrea_cpuimx51_defconfig         |  47 +++---
 arch/arm/configs/freescale-mx21-ads_defconfig      |  26 ++--
 arch/arm/configs/freescale-mx23-evk_defconfig      |  18 +--
 arch/arm/configs/freescale-mx25-3ds_defconfig      |  44 +++---
 arch/arm/configs/freescale-mx27-ads_defconfig      |  34 ++---
 arch/arm/configs/freescale-mx28-evk_defconfig      |   6 +-
 arch/arm/configs/freescale-mx35-3ds_defconfig      |  53 +++----
 arch/arm/configs/freescale-mx53-smd_defconfig      |  47 +++---
 arch/arm/configs/friendlyarm_mini2440_defconfig    |   1 -
 arch/arm/configs/friendlyarm_mini6410_defconfig    |  28 ++--
 arch/arm/configs/friendlyarm_tiny210_defconfig     |   9 --
 arch/arm/configs/friendlyarm_tiny6410_defconfig    |  28 ++--
 arch/arm/configs/haba_knx_lite_defconfig           |  10 +-
 arch/arm/configs/highbank_defconfig                |  49 +++---
 arch/arm/configs/imx233-olinuxino_defconfig        |  10 +-
 arch/arm/configs/imx_v7-xload_defconfig            |  27 +---
 arch/arm/configs/imx_v7_defconfig                  |  13 +-
 arch/arm/configs/lubbock_defconfig                 |  11 +-
 arch/arm/configs/mainstone_defconfig               |  11 +-
 arch/arm/configs/mioa701_defconfig                 |  87 ++++++-----
 arch/arm/configs/mmccpu_defconfig                  |  32 ++--
 arch/arm/configs/module-mb7707_defconfig           |   2 -
 arch/arm/configs/neso_defconfig                    |  51 +++----
 arch/arm/configs/netx_nxdb500_defconfig            |  29 ++--
 arch/arm/configs/nhk8815_defconfig                 |  46 +++---
 .../configs/omap3430_sdp3430_per_uart_defconfig    |  28 ++--
 arch/arm/configs/omap3530_beagle_defconfig         |  10 +-
 .../arm/configs/omap3530_beagle_per_uart_defconfig |  28 ++--
 arch/arm/configs/omap3530_beagle_xload_defconfig   |   1 -
 arch/arm/configs/omap3_evm_defconfig               |  25 ++-
 arch/arm/configs/panda_defconfig                   |  60 ++++----
 arch/arm/configs/panda_xload_defconfig             |   2 -
 .../configs/phytec-phycard-omap3-xload_defconfig   |   8 +-
 arch/arm/configs/phytec-phycard-omap3_defconfig    | 167 ++++-----------------
 .../configs/phytec-phycard-omap4-xload_defconfig   |   7 -
 arch/arm/configs/phytec-phycard-omap4_defconfig    |  37 ++---
 arch/arm/configs/phytec-phycore-imx31_defconfig    |  71 ++++-----
 arch/arm/configs/phytec-phycore-imx35_defconfig    |  76 +++++-----
 .../phytec-phycore-omap4460-xload-mmc_defconfig    |   1 -
 .../phytec-phycore-omap4460-xload-nand_defconfig   |   1 -
 arch/arm/configs/phytec-phycore-omap4460_defconfig |  49 +++---
 arch/arm/configs/phytec-phycore-pxa270_defconfig   |  10 +-
 arch/arm/configs/pm9261_defconfig                  |  46 +++---
 arch/arm/configs/pm9263_defconfig                  |  32 ++--
 arch/arm/configs/pm9g45_defconfig                  |  37 +++--
 arch/arm/configs/qil_a9260_128mib_defconfig        |  49 +++---
 arch/arm/configs/qil_a9260_defconfig               |  49 +++---
 arch/arm/configs/qil_a9g20_128mib_defconfig        |  49 +++---
 arch/arm/configs/qil_a9g20_defconfig               |  49 +++---
 arch/arm/configs/rk3188_defconfig                  |  13 +-
 arch/arm/configs/rpi2_defconfig                    |   8 +-
 arch/arm/configs/rpi_defconfig                     |   8 +-
 arch/arm/configs/sama5d3_xplained_defconfig        |  45 +++---
 arch/arm/configs/sama5d3xek_defconfig              |  53 +++----
 arch/arm/configs/sama5d4_xplained_defconfig        |  10 +-
 arch/arm/configs/sama5d4ek_defconfig               |  10 +-
 arch/arm/configs/scb9328_defconfig                 |  48 +++---
 arch/arm/configs/socfpga-xload-2_defconfig         |   1 -
 arch/arm/configs/socfpga-xload_defconfig           |   1 -
 arch/arm/configs/socfpga_defconfig                 |  10 +-
 arch/arm/configs/tegra_v7_defconfig                |   4 +-
 arch/arm/configs/telit_evk_pro3_defconfig          |  46 +++---
 arch/arm/configs/tny_a9260_defconfig               |  61 ++++----
 arch/arm/configs/tny_a9263_bootstrap_defconfig     |   4 -
 arch/arm/configs/tny_a9263_defconfig               |  61 ++++----
 arch/arm/configs/tny_a9g20_defconfig               |  61 ++++----
 arch/arm/configs/tqma53_defconfig                  |  54 +++----
 arch/arm/configs/tx28stk5_defconfig                |  12 +-
 arch/arm/configs/tx51stk5_defconfig                | 130 +++-------------
 arch/arm/configs/tx53stk5_defconfig                |  56 +++----
 arch/arm/configs/usb_a9260_defconfig               |  63 ++++----
 .../configs/usb_a9263_128mib_bootstrap_defconfig   |   3 -
 arch/arm/configs/usb_a9263_128mib_defconfig        |  63 ++++----
 arch/arm/configs/usb_a9263_bootstrap_defconfig     |   3 -
 arch/arm/configs/usb_a9263_defconfig               |  63 ++++----
 arch/arm/configs/usb_a9g20_128mib_defconfig        |  66 ++++----
 arch/arm/configs/usb_a9g20_defconfig               |  66 ++++----
 arch/arm/configs/versatilepb_arm1176_defconfig     |  17 +--
 arch/arm/configs/versatilepb_defconfig             |  11 +-
 arch/arm/configs/vexpress_ca9_defconfig            |  53 +++----
 arch/arm/configs/vexpress_defconfig                |  53 +++----
 arch/arm/configs/vincell_defconfig                 |  12 +-
 arch/arm/configs/virt2real_defconfig               |  35 +++--
 arch/arm/configs/zedboard_defconfig                |   9 +-
 arch/arm/configs/zylonite310_defconfig             |  11 +-
 arch/blackfin/configs/ipe337_defconfig             |  31 ++--
 arch/efi/configs/efi_defconfig                     |   8 +-
 arch/mips/configs/dlink-dir-320_defconfig          |   2 +-
 arch/mips/configs/gxemul-malta_defconfig           |   2 +-
 arch/mips/configs/img-ci20_defconfig               |  10 +-
 arch/mips/configs/loongson-ls1b_defconfig          |  45 +++---
 arch/mips/configs/qemu-malta_defconfig             |   2 +-
 arch/mips/configs/ritmix-rzx50_defconfig           |  10 +-
 arch/nios2/configs/generic_defconfig               |  28 ++--
 arch/ppc/configs/da923rc_defconfig                 |  73 ++++-----
 arch/ppc/configs/p1010rdb_defconfig                |  67 ++++-----
 arch/ppc/configs/p1022ds_defconfig                 |  63 +++-----
 arch/ppc/configs/p2020rdb_defconfig                |  64 ++++----
 arch/ppc/configs/pcm030_defconfig                  |   2 +-
 arch/sandbox/configs/sandbox_defconfig             |   6 -
 arch/x86/configs/generic_defconfig                 |  27 ++--
 132 files changed, 1904 insertions(+), 2515 deletions(-)

diff --git a/arch/arm/configs/a9m2410_defconfig b/arch/arm/configs/a9m2410_defconfig
index d7b08f5..44d1edf 100644
--- a/arch/arm/configs/a9m2410_defconfig
+++ b/arch/arm/configs/a9m2410_defconfig
@@ -1,35 +1,33 @@
 CONFIG_ARCH_S3C24xx=y
 CONFIG_S3C_NAND_BOOT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
 CONFIG_BAUDRATE=38400
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/a9m2410/env"
 CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
-CONFIG_NET=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_FLASH=y
+CONFIG_NET=y
 CONFIG_DRIVER_NET_SMC91111=y
 # CONFIG_SPI is not set
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/a9m2440_defconfig b/arch/arm/configs/a9m2440_defconfig
index 59b16a8..d1ae580 100644
--- a/arch/arm/configs/a9m2440_defconfig
+++ b/arch/arm/configs/a9m2440_defconfig
@@ -3,35 +3,33 @@ CONFIG_MACH_A9M2440=y
 CONFIG_S3C_SDRAM_INIT=y
 CONFIG_S3C_NAND_BOOT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
 CONFIG_BAUDRATE=38400
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/a9m2440/env"
 CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
-CONFIG_NET=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_FLASH=y
+CONFIG_NET=y
 CONFIG_DRIVER_NET_SMC91111=y
 # CONFIG_SPI is not set
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
index b66a653..58034b6 100644
--- a/arch/arm/configs/am335x_mlo_defconfig
+++ b/arch/arm/configs/am335x_mlo_defconfig
@@ -18,7 +18,6 @@ CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_ACTIVATE_NONE=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_OFDEVICE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
diff --git a/arch/arm/configs/animeo_ip_defconfig b/arch/arm/configs/animeo_ip_defconfig
index 0f2e3a0..96f73eb 100644
--- a/arch/arm/configs/animeo_ip_defconfig
+++ b/arch/arm/configs/animeo_ip_defconfig
@@ -1,8 +1,6 @@
 CONFIG_ARCH_AT91SAM9260=y
-CONFIG_MACH_ANIMEO_IP=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
@@ -10,50 +8,49 @@ CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="Animeo-IP:"
 CONFIG_BAUDRATE=38400
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_WD=y
 CONFIG_CMD_WD_DEFAULT_TIMOUT=16
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_MICREL_PHY=y
 CONFIG_DRIVER_NET_MACB=y
+CONFIG_MICREL_PHY=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
 # CONFIG_SPI is not set
@@ -64,10 +61,7 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_HOST=y
-CONFIG_USB_OHCI=y
-CONFIG_USB_OHCI_AT91=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_ATMEL=y
@@ -76,7 +70,6 @@ CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_BICOLOR=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_WATCHDOG=y
-CONFIG_WATCHDOG_AT91SAM9X=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
index e7d4672..9a71921 100644
--- a/arch/arm/configs/archosg9_defconfig
+++ b/arch/arm/configs/archosg9_defconfig
@@ -15,6 +15,12 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 # CONFIG_TIMESTAMP is not set
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_AIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/archosg9/env"
@@ -23,12 +29,6 @@ CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_CMD_BOOT_ORDER=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_BOOTM_AIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/archosg9_xload_defconfig b/arch/arm/configs/archosg9_xload_defconfig
index 9660213..dc13f56 100644
--- a/arch/arm/configs/archosg9_xload_defconfig
+++ b/arch/arm/configs/archosg9_xload_defconfig
@@ -13,7 +13,6 @@ CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_SIMPLE=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
index c82fe09..3e8d263 100644
--- a/arch/arm/configs/at91rm9200ek_defconfig
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -1,70 +1,64 @@
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9200-EK:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_PASSWD=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_BZLIB=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_SPI=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
+CONFIG_CMD_SPI=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_AT91_ETHER=y
 CONFIG_DRIVER_SPI_ATMEL=y
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_DATAFLASH=y
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_INTEL is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
 CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_MTD=y
-# CONFIG_MTD_OOB_DEVICE is not set
-CONFIG_MTD_DATAFLASH=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_MCI=y
@@ -75,5 +69,6 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_FS_CRAMFS=y
+CONFIG_FS_TFTP=y
 CONFIG_DIGEST_SHA1_GENERIC=y
 CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index 10a735d..3cc92d8 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -1,55 +1,50 @@
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_AT91SAM9260EK=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="9260-EK:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
@@ -60,7 +55,6 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
@@ -70,5 +64,6 @@ CONFIG_MCI_ATMEL=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/at91sam9261ek_bootstrap_defconfig b/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
index 1511ecb..3de1d78 100644
--- a/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
+++ b/arch/arm/configs/at91sam9261ek_bootstrap_defconfig
@@ -2,7 +2,6 @@ CONFIG_ARCH_AT91SAM9261=y
 CONFIG_AT91_BOOTSTRAP=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x27000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
@@ -11,7 +10,6 @@ CONFIG_PROMPT="9261-EK:"
 CONFIG_SHELL_NONE=y
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_SIMPLE=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index ad262e9..d6f547a 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -1,55 +1,52 @@
 CONFIG_ARCH_AT91SAM9261=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9261-EK:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_FLASH=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
 CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_DM9K=y
 CONFIG_DRIVER_SPI_ATMEL=y
@@ -61,7 +58,6 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
@@ -71,4 +67,5 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_KEYBOARD_GPIO=y
+CONFIG_FS_TFTP=y
 CONFIG_PNG=y
diff --git a/arch/arm/configs/at91sam9261ek_first_stage_defconfig b/arch/arm/configs/at91sam9261ek_first_stage_defconfig
index e3b6e5f..e4c9f1d 100644
--- a/arch/arm/configs/at91sam9261ek_first_stage_defconfig
+++ b/arch/arm/configs/at91sam9261ek_first_stage_defconfig
@@ -1,54 +1,53 @@
 CONFIG_ARCH_AT91SAM9261=y
-CONFIG_CMD_AT91_BOOT_TEST=y
 CONFIG_AT91_LOAD_BAREBOX_SRAM=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x27000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9261-EK:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_AT91_BOOT_TEST=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_FLASH=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_MTEST=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_DM9K=y
 CONFIG_DRIVER_SPI_ATMEL=y
@@ -60,7 +59,6 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
index 5f98cd6..b28614d 100644
--- a/arch/arm/configs/at91sam9263ek_defconfig
+++ b/arch/arm/configs/at91sam9263ek_defconfig
@@ -1,65 +1,60 @@
 CONFIG_ARCH_AT91SAM9263=y
-# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9263-EK:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_EDIT=y
 CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_INTEL is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
-CONFIG_MTD=y
-# CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW is not set
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
@@ -70,6 +65,7 @@ CONFIG_MCI_ATMEL=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_LFN=y
 CONFIG_PNG=y
diff --git a/arch/arm/configs/at91sam9g10ek_defconfig b/arch/arm/configs/at91sam9g10ek_defconfig
index 40b4b9a..17713cd 100644
--- a/arch/arm/configs/at91sam9g10ek_defconfig
+++ b/arch/arm/configs/at91sam9g10ek_defconfig
@@ -1,54 +1,51 @@
 CONFIG_ARCH_AT91SAM9G10=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9G10-EK:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_FLASH=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_DM9K=y
 # CONFIG_SPI is not set
@@ -59,7 +56,6 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
@@ -67,3 +63,4 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_KEYBOARD_GPIO=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
index a501ec5..6791be2 100644
--- a/arch/arm/configs/at91sam9g20ek_defconfig
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -1,55 +1,50 @@
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_AT91_HAVE_2MMC=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="9G20-EK:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
@@ -60,7 +55,6 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
@@ -70,5 +64,6 @@ CONFIG_MCI_ATMEL=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index 3985072..c38df8f 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -1,15 +1,13 @@
 CONFIG_ARCH_AT91SAM9G45=y
 CONFIG_MACH_AT91SAM9M10G45EK=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_MALLOC_SIZE=0x800000
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9M10G45-EK:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2=">"
 CONFIG_HUSH_FANCY_PROMPT=y
@@ -17,48 +15,47 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_PASSWD_SUM_SHA1=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_PASSWD=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
 CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
@@ -73,7 +70,6 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_EHCI_ATMEL=y
@@ -86,6 +82,7 @@ CONFIG_MCI_ATMEL=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/at91sam9m10ihd_defconfig b/arch/arm/configs/at91sam9m10ihd_defconfig
index cc6d10c..006d2ac 100644
--- a/arch/arm/configs/at91sam9m10ihd_defconfig
+++ b/arch/arm/configs/at91sam9m10ihd_defconfig
@@ -1,65 +1,61 @@
 CONFIG_ARCH_AT91SAM9G45=y
-CONFIG_MACH_AT91SAM9M10IHD=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0xa00000
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9M10IHD:"
-CONFIG_LONGHELP=y
 CONFIG_PROMPT_HUSH_PS2=">"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_PASSWD_SUM_SHA1=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9m10ihd/env"
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_PASSWD=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_UBIFORMAT=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BOOTM_AIMAGE=y
-CONFIG_CMD_UIMAGE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9m10ihd/env"
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_SPI=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
@@ -76,7 +72,6 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_EHCI_ATMEL=y
diff --git a/arch/arm/configs/at91sam9n12ek_defconfig b/arch/arm/configs/at91sam9n12ek_defconfig
index e73e383..4ec3e90 100644
--- a/arch/arm/configs/at91sam9n12ek_defconfig
+++ b/arch/arm/configs/at91sam9n12ek_defconfig
@@ -1,58 +1,56 @@
 CONFIG_ARCH_AT91SAM9N12=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x26f00000
 CONFIG_MALLOC_SIZE=0xa00000
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9G20-EK:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
 CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
-CONFIG_CMD_SPI=y
 CONFIG_CMD_LED=y
+CONFIG_CMD_SPI=y
 CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_KS8851_MLL=y
 CONFIG_DRIVER_SPI_ATMEL=y
@@ -67,7 +65,6 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_NAND_ATMEL_PMECC=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
index 1af5ec6..6ee0052 100644
--- a/arch/arm/configs/at91sam9x5ek_defconfig
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -1,74 +1,69 @@
 CONFIG_ARCH_AT91SAM9X5=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0xa00000
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9G20-EK:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
 CONFIG_DRIVER_SPI_ATMEL=y
-CONFIG_MTD_M25P80=y
 CONFIG_I2C=y
 CONFIG_I2C_GPIO=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_MTD_DATAFLASH=y
+CONFIG_MTD_M25P80=y
 CONFIG_NAND=y
 # CONFIG_NAND_ECC_SOFT is not set
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_NAND_ATMEL_PMECC=y
-CONFIG_UBI=y
 CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_EHCI_ATMEL=y
@@ -80,14 +75,13 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_EEPROM_AT24=y
+CONFIG_KEYBOARD_GPIO=y
 CONFIG_KEYBOARD_QT1070=y
 CONFIG_W1=y
 CONFIG_W1_MASTER_GPIO=y
 CONFIG_W1_SLAVE_DS2431=y
 CONFIG_W1_SLAVE_DS2433=y
-CONFIG_KEYBOARD_GPIO=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-CONFIG_PNG=y
diff --git a/arch/arm/configs/canon-a1100_defconfig b/arch/arm/configs/canon-a1100_defconfig
index 5c1e195..2994bf3 100644
--- a/arch/arm/configs/canon-a1100_defconfig
+++ b/arch/arm/configs/canon-a1100_defconfig
@@ -1,5 +1,4 @@
 CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="canon-a1100"
 CONFIG_ARCH_DIGIC=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
@@ -47,7 +46,6 @@ CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
-CONFIG_CLOCKSOURCE_DUMMY=y
 CONFIG_CLOCKSOURCE_DUMMY_RATE=2000
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
diff --git a/arch/arm/configs/ccmx51_defconfig b/arch/arm/configs/ccmx51_defconfig
index 4e5fe2f..c16f73f 100644
--- a/arch/arm/configs/ccmx51_defconfig
+++ b/arch/arm/configs/ccmx51_defconfig
@@ -1,50 +1,46 @@
 CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX51=y
 CONFIG_MACH_CCMX51=y
 CONFIG_AEABI=y
-CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x2000000
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_LZO=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/ccxmx51/env"
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_ECHO_E=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_FLASH=y
-CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OFTREE_PROBE=y
-CONFIG_CMD_NANDTEST=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
+CONFIG_CMD_NANDTEST=y
 CONFIG_CMD_SPI=y
-CONFIG_CMD_CLK=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_DRIVER_NET_SMC911X=y
 CONFIG_DRIVER_NET_FEC_IMX=y
+CONFIG_DRIVER_NET_SMC911X=y
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
 CONFIG_MTD=y
diff --git a/arch/arm/configs/cfa10036_defconfig b/arch/arm/configs/cfa10036_defconfig
index 9d40a3c..2283658 100644
--- a/arch/arm/configs/cfa10036_defconfig
+++ b/arch/arm/configs/cfa10036_defconfig
@@ -6,34 +6,29 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x43000000
 CONFIG_MALLOC_SIZE=0x800000
-CONFIG_BROKEN=y
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/crystalfontz-cfa10036/env"
 CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
+CONFIG_CMD_OFTREE=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_MCI=y
diff --git a/arch/arm/configs/chumbyone_defconfig b/arch/arm/configs/chumbyone_defconfig
index 92b59b8..bb7473f 100644
--- a/arch/arm/configs/chumbyone_defconfig
+++ b/arch/arm/configs/chumbyone_defconfig
@@ -4,40 +4,35 @@ CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x1000000
-CONFIG_BROKEN=y
 CONFIG_PROMPT="chumby:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMD_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/chumby_falconwing/env"
 CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_ECHO_E=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_GETOPT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
 CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_NET_USB=y
@@ -49,4 +44,4 @@ CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_STM=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
-CONFIG_MCI_STM378X=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/cupid_defconfig b/arch/arm/configs/cupid_defconfig
index a1776d2..13d3888 100644
--- a/arch/arm/configs/cupid_defconfig
+++ b/arch/arm/configs/cupid_defconfig
@@ -1,8 +1,6 @@
 CONFIG_ARCH_IMX=y
 CONFIG_CACHE_L2X0=y
-CONFIG_ARCH_IMX35=y
 CONFIG_MACH_GUF_CUPID=y
-CONFIG_IMX_CLKO=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
@@ -11,48 +9,46 @@ CONFIG_TEXT_BASE=0x87F00000
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_NET=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
-CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_FEC_IMX=y
@@ -62,11 +58,11 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_SOFT is not set
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 CONFIG_NAND_IMX=y
-CONFIG_UBI=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX_IPU=y
 CONFIG_MCI=y
 CONFIG_MCI_IMX_ESDHC=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/datamodul-edm-qmx6_defconfig b/arch/arm/configs/datamodul-edm-qmx6_defconfig
index 2a4a2ef..1ef656a 100644
--- a/arch/arm/configs/datamodul-edm-qmx6_defconfig
+++ b/arch/arm/configs/datamodul-edm-qmx6_defconfig
@@ -5,7 +5,6 @@ CONFIG_MACH_REALQ7=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_THUMB2_BAREBOX=y
-CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
@@ -13,59 +12,60 @@ CONFIG_TEXT_BASE=0x0
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_RELOCATABLE=y
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/datamodul-edm-qmx6/env"
 CONFIG_RESET_SOURCE=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SAVEENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIME=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
 CONFIG_CMD_FLASH=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_SPI=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_CLK=y
-CONFIG_CMD_DETECT=y
 CONFIG_CMD_WD=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
diff --git a/arch/arm/configs/dss11_defconfig b/arch/arm/configs/dss11_defconfig
index f15fb6b..3da4220 100644
--- a/arch/arm/configs/dss11_defconfig
+++ b/arch/arm/configs/dss11_defconfig
@@ -3,25 +3,23 @@ CONFIG_MACH_DSS11=y
 CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_PARTITION_DISK_DOS=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_EDIT=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_LED=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD=y
@@ -29,7 +27,6 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_DISK_WRITE=y
 CONFIG_USB_HOST=y
 CONFIG_USB_OHCI=y
@@ -43,6 +40,7 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_RGB=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/duckbill_defconfig b/arch/arm/configs/duckbill_defconfig
index 74e0b78..28ea405 100644
--- a/arch/arm/configs/duckbill_defconfig
+++ b/arch/arm/configs/duckbill_defconfig
@@ -15,6 +15,9 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
 CONFIG_BLSPEC=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
@@ -23,9 +26,6 @@ CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
diff --git a/arch/arm/configs/edb93xx_defconfig b/arch/arm/configs/edb93xx_defconfig
index 89b3ca8..84c920a 100644
--- a/arch/arm/configs/edb93xx_defconfig
+++ b/arch/arm/configs/edb93xx_defconfig
@@ -1,34 +1,33 @@
 CONFIG_ARCH_EP93XX=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/edb93xx/env"
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_EDIT=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
-CONFIG_CMD_MTEST=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_EP93XX=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/efika-mx-smartbook_defconfig b/arch/arm/configs/efika-mx-smartbook_defconfig
index 816cf26..a988a0c 100644
--- a/arch/arm/configs/efika-mx-smartbook_defconfig
+++ b/arch/arm/configs/efika-mx-smartbook_defconfig
@@ -1,86 +1,81 @@
-CONFIG_IMX_MULTI_BOARDS=y
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="imx51-genesi-efika-sb"
 CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX51=y
+CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_EFIKA_MX_SMARTBOOK=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_THUMB2_BAREBOX=y
-CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/efika-mx-smartbook/env/"
 CONFIG_RESET_SOURCE=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SAVEENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_TIME=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
 CONFIG_CMD_FLASH=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
-CONFIG_CMD_SPI=y
 CONFIG_CMD_LED=y
+CONFIG_CMD_SPI=y
 CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_CLK=y
-CONFIG_CMD_DETECT=y
 CONFIG_CMD_WD=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
 CONFIG_NET_USB_SMSC95XX=y
-CONFIG_DRIVER_SPI_IMX=y
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
 CONFIG_MTD=y
@@ -97,7 +92,6 @@ CONFIG_USB_STORAGE=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_IMX_ESDHC=y
-CONFIG_MFD_MC13XXX=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
diff --git a/arch/arm/configs/eukrea_cpuimx25_defconfig b/arch/arm/configs/eukrea_cpuimx25_defconfig
index feebb13..b296122 100644
--- a/arch/arm/configs/eukrea_cpuimx25_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx25_defconfig
@@ -16,17 +16,17 @@ CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_COMPRESSION_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/eukrea_cpuimx27_defconfig b/arch/arm/configs/eukrea_cpuimx27_defconfig
index 36261af..c9672d3 100644
--- a/arch/arm/configs/eukrea_cpuimx27_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx27_defconfig
@@ -1,52 +1,46 @@
 CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX27=y
 CONFIG_MACH_EUKREA_CPUIMX27=y
-CONFIG_IMX_CLKO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0xa7f00000
 CONFIG_MALLOC_SIZE=0x800000
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/eukrea_cpuimx27/env"
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
-CONFIG_CMD_MTEST=y
 CONFIG_CMD_FLASH=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
-CONFIG_MFD_LP3972=y
 CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_AMD is not set
@@ -55,3 +49,5 @@ CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX=y
+CONFIG_MFD_LP3972=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/eukrea_cpuimx35_defconfig b/arch/arm/configs/eukrea_cpuimx35_defconfig
index edc5b9c..bd19fc4 100644
--- a/arch/arm/configs/eukrea_cpuimx35_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx35_defconfig
@@ -16,6 +16,11 @@ CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_COMPRESSION_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
@@ -23,11 +28,6 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/eukrea_cpuimx51_defconfig b/arch/arm/configs/eukrea_cpuimx51_defconfig
index e1b011b..8d700b1 100644
--- a/arch/arm/configs/eukrea_cpuimx51_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx51_defconfig
@@ -1,54 +1,52 @@
 CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX51=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_MACH_EUKREA_CPUIMX51SD=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_RESET=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_FEC_IMX=y
@@ -58,7 +56,6 @@ CONFIG_I2C_IMX=y
 CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_IMX=y
-CONFIG_UBI=y
 CONFIG_MCI=y
 CONFIG_MCI_IMX_ESDHC=y
 CONFIG_LED=y
diff --git a/arch/arm/configs/freescale-mx21-ads_defconfig b/arch/arm/configs/freescale-mx21-ads_defconfig
index c50b2c9..e1645bd 100644
--- a/arch/arm/configs/freescale-mx21-ads_defconfig
+++ b/arch/arm/configs/freescale-mx21-ads_defconfig
@@ -3,31 +3,31 @@ CONFIG_MACH_IMX21ADS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_TEXT_BASE=0xc3000000
 CONFIG_MALLOC_SIZE=0x2000000
-CONFIG_LONGHELP=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx21-ads/env"
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_FLASH=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_DRIVER_NET_CS8900=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
diff --git a/arch/arm/configs/freescale-mx23-evk_defconfig b/arch/arm/configs/freescale-mx23-evk_defconfig
index 1502d22..3dc8cc4 100644
--- a/arch/arm/configs/freescale-mx23-evk_defconfig
+++ b/arch/arm/configs/freescale-mx23-evk_defconfig
@@ -1,26 +1,22 @@
 CONFIG_ARCH_MXS=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_BROKEN=y
-CONFIG_LONGHELP=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_RESET_SOURCE=y
 CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
 # CONFIG_SPI is not set
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
diff --git a/arch/arm/configs/freescale-mx25-3ds_defconfig b/arch/arm/configs/freescale-mx25-3ds_defconfig
index 1fd8be2..49515f7 100644
--- a/arch/arm/configs/freescale-mx25-3ds_defconfig
+++ b/arch/arm/configs/freescale-mx25-3ds_defconfig
@@ -1,5 +1,4 @@
 CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX25=y
 CONFIG_MACH_FREESCALE_MX25_3STACK=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
@@ -9,50 +8,49 @@ CONFIG_TEXT_BASE=0x87F00000
 CONFIG_MALLOC_SIZE=0x01000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 # CONFIG_ERRNO_MESSAGES is not set
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_NET=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
 CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
+CONFIG_FS_TFTP=y
 CONFIG_ZLIB=y
 CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/freescale-mx27-ads_defconfig b/arch/arm/configs/freescale-mx27-ads_defconfig
index dd4cb1f..e94a47e 100644
--- a/arch/arm/configs/freescale-mx27-ads_defconfig
+++ b/arch/arm/configs/freescale-mx27-ads_defconfig
@@ -1,39 +1,35 @@
 CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX27=y
 CONFIG_MACH_IMX27ADS=y
-CONFIG_IMX_CLKO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_TEXT_BASE=0xa7f00000
-CONFIG_LONGHELP=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx27-ads/env"
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_EDIT=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_DRIVER_SPI_IMX=y
 CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_INTEL is not set
 CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/freescale-mx28-evk_defconfig b/arch/arm/configs/freescale-mx28-evk_defconfig
index c71bf84..6c0bb02 100644
--- a/arch/arm/configs/freescale-mx28-evk_defconfig
+++ b/arch/arm/configs/freescale-mx28-evk_defconfig
@@ -14,6 +14,9 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
 CONFIG_BLSPEC=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
@@ -22,9 +25,6 @@ CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
diff --git a/arch/arm/configs/freescale-mx35-3ds_defconfig b/arch/arm/configs/freescale-mx35-3ds_defconfig
index 816dc78..29d2aa8 100644
--- a/arch/arm/configs/freescale-mx35-3ds_defconfig
+++ b/arch/arm/configs/freescale-mx35-3ds_defconfig
@@ -1,5 +1,4 @@
 CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX35=y
 CONFIG_MACH_FREESCALE_MX35_3STACK=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
@@ -8,58 +7,56 @@ CONFIG_TEXT_BASE=0x87F00000
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_I2C=y
-CONFIG_NET=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
-CONFIG_DRIVER_NET_SMC911X=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
 CONFIG_DRIVER_NET_FEC_IMX=y
+CONFIG_DRIVER_NET_SMC911X=y
 # CONFIG_SPI is not set
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_IMX=y
-CONFIG_UBI=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX_IPU=y
+CONFIG_FS_TFTP=y
 CONFIG_ZLIB=y
 CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/freescale-mx53-smd_defconfig b/arch/arm/configs/freescale-mx53-smd_defconfig
index c7f2191..4677e07 100644
--- a/arch/arm/configs/freescale-mx53-smd_defconfig
+++ b/arch/arm/configs/freescale-mx53-smd_defconfig
@@ -1,5 +1,4 @@
 CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX53=y
 CONFIG_MACH_FREESCALE_MX53_SMD=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
@@ -7,57 +6,55 @@ CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x7ff00000
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEBUG_INFO=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_NET=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
-CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_IMX_ESDHC=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/friendlyarm_mini2440_defconfig b/arch/arm/configs/friendlyarm_mini2440_defconfig
index 25db5be..19a5a4e 100644
--- a/arch/arm/configs/friendlyarm_mini2440_defconfig
+++ b/arch/arm/configs/friendlyarm_mini2440_defconfig
@@ -5,7 +5,6 @@ CONFIG_S3C_NAND_BOOT=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_TEXT_BASE=0x33e00000
-CONFIG_BROKEN=y
 CONFIG_PROMPT="mini2440:"
 CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/friendlyarm_mini6410_defconfig b/arch/arm/configs/friendlyarm_mini6410_defconfig
index 1789374..209e3f8 100644
--- a/arch/arm/configs/friendlyarm_mini6410_defconfig
+++ b/arch/arm/configs/friendlyarm_mini6410_defconfig
@@ -1,37 +1,33 @@
 CONFIG_ARCH_S3C64xx=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_BROKEN=y
 CONFIG_PROMPT="mini6410:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_PARTITION=y
-CONFIG_PARTITION_DISK=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_NET=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_GPIO=y
+CONFIG_NET=y
 CONFIG_DRIVER_NET_DM9K=y
 # CONFIG_SPI is not set
 CONFIG_ZLIB=y
diff --git a/arch/arm/configs/friendlyarm_tiny210_defconfig b/arch/arm/configs/friendlyarm_tiny210_defconfig
index 8686c65..1d16479 100644
--- a/arch/arm/configs/friendlyarm_tiny210_defconfig
+++ b/arch/arm/configs/friendlyarm_tiny210_defconfig
@@ -1,16 +1,7 @@
 CONFIG_ARCH_S5PCxx=y
-CONFIG_CPU_V7=y
-CONFIG_CPU_32v7=y
-CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE=0x1ff0
-CONFIG_ARCH_SAMSUNG=y
-CONFIG_CPU_S5PV210=y
-CONFIG_MACH_TINY210=y
-CONFIG_S3C_LOWLEVEL_INIT=y
 CONFIG_S3C_PLL_INIT=y
-CONFIG_S3C_SDRAM_INIT=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
-CONFIG_DRIVER_SERIAL_S3C=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
diff --git a/arch/arm/configs/friendlyarm_tiny6410_defconfig b/arch/arm/configs/friendlyarm_tiny6410_defconfig
index 90208c3..85ae781 100644
--- a/arch/arm/configs/friendlyarm_tiny6410_defconfig
+++ b/arch/arm/configs/friendlyarm_tiny6410_defconfig
@@ -2,37 +2,33 @@ CONFIG_ARCH_S3C64xx=y
 CONFIG_MACH_TINY6410=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_BROKEN=y
 CONFIG_PROMPT="tiny6410:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_PARTITION=y
-CONFIG_PARTITION_DISK=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_NET=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_GPIO=y
+CONFIG_NET=y
 CONFIG_DRIVER_NET_DM9K=y
 # CONFIG_SPI is not set
 CONFIG_ZLIB=y
diff --git a/arch/arm/configs/haba_knx_lite_defconfig b/arch/arm/configs/haba_knx_lite_defconfig
index d01c412..0917715 100644
--- a/arch/arm/configs/haba_knx_lite_defconfig
+++ b/arch/arm/configs/haba_knx_lite_defconfig
@@ -15,16 +15,16 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-# CONFIG_CMD_ARM_CPUINFO is not set
-CONFIG_LONGHELP=y
-CONFIG_CMD_MEMINFO=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/highbank_defconfig b/arch/arm/configs/highbank_defconfig
index 01b17bc..8a045d8 100644
--- a/arch/arm/configs/highbank_defconfig
+++ b/arch/arm/configs/highbank_defconfig
@@ -6,49 +6,46 @@ CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0xa00000
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="vexpress: "
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_PASSWD=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_POWEROFF=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OFTREE_PROBE=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CLK=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_SERIAL_AMBA_PL011=y
diff --git a/arch/arm/configs/imx233-olinuxino_defconfig b/arch/arm/configs/imx233-olinuxino_defconfig
index eec1ce4..991386b 100644
--- a/arch/arm/configs/imx233-olinuxino_defconfig
+++ b/arch/arm/configs/imx233-olinuxino_defconfig
@@ -14,6 +14,11 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BLSPEC=y
 CONFIG_DEFAULT_COMPRESSION_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
@@ -24,11 +29,6 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/imx_v7-xload_defconfig b/arch/arm/configs/imx_v7-xload_defconfig
index 1d82f98..dcf100d 100644
--- a/arch/arm/configs/imx_v7-xload_defconfig
+++ b/arch/arm/configs/imx_v7-xload_defconfig
@@ -1,52 +1,31 @@
 CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX_IMXIMAGE=y
 CONFIG_ARCH_IMX_XLOAD=y
-
-CONFIG_ARCH_IMX51=y
 CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_FREESCALE_MX51_PDK=y
-
 CONFIG_THUMB2_BAREBOX=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x0
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_DUMMY=y
 CONFIG_RELOCATABLE=y
-CONFIG_BAUDRATE=115200
 CONFIG_SHELL_NONE=y
-
+# CONFIG_ERRNO_MESSAGES is not set
+# CONFIG_TIMESTAMP is not set
 CONFIG_DEBUG_LL=y
-CONFIG_DEBUG_IMX51_UART=y
-CONFIG_DEBUG_IMX_UART_PORT=1
-
-CONFIG_HAS_DEBUG_LL=y
-
 CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
 CONFIG_MTD_DATAFLASH=y
-
-# CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_TIMESTAMP is not set
-# CONFIG_DEFAULT_ENVIRONMENT is not set
-CONFIG_DRIVER_SERIAL_IMX=y
-
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 # CONFIG_MCI_WRITE is not set
-
 CONFIG_MCI_IMX_ESDHC=y
-
 CONFIG_EEPROM_AT25=y
-
-CONFIG_WATCHDOG_IMX_RESET_SOURCE=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_IMX=y
-
 # CONFIG_FS_RAMFS is not set
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
 CONFIG_BOOTSTRAP=y
-CONFIG_BOOTSTRAP_DISK=y
 CONFIG_BOOTSTRAP_DEVFS=y
+CONFIG_BOOTSTRAP_DISK=y
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 50106df..df67cd0 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -44,6 +44,11 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_PARTITION_DISK_EFI=y
@@ -57,11 +62,6 @@ CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_CMD_REGULATOR=y
 CONFIG_CMD_MMC_EXTCSD=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
@@ -117,7 +117,6 @@ CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
-CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_AT803X_PHY=y
@@ -125,7 +124,6 @@ CONFIG_MICREL_PHY=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
 CONFIG_NET_USB_SMSC95XX=y
-CONFIG_DRIVER_SPI_IMX=y
 CONFIG_MTD=y
 CONFIG_MTD_RAW_DEVICE=y
 CONFIG_MTD_DATAFLASH=y
@@ -160,7 +158,6 @@ CONFIG_DRIVER_VIDEO_EDID=y
 CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_IMX_ESDHC=y
-CONFIG_MFD_MC13XXX=y
 CONFIG_MFD_MC34704=y
 CONFIG_MFD_MC9SDZ60=y
 CONFIG_MFD_STMPE=y
diff --git a/arch/arm/configs/lubbock_defconfig b/arch/arm/configs/lubbock_defconfig
index df777ba..a45d723 100644
--- a/arch/arm/configs/lubbock_defconfig
+++ b/arch/arm/configs/lubbock_defconfig
@@ -16,6 +16,10 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/lubbock/env"
@@ -25,10 +29,6 @@ CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADS=y
@@ -56,7 +56,6 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_SPLASH=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
@@ -101,5 +100,3 @@ CONFIG_FS_UBIFS=y
 CONFIG_FS_UBIFS_COMPRESSION_LZO=y
 CONFIG_FS_UBIFS_COMPRESSION_ZLIB=y
 CONFIG_BZLIB=y
-CONFIG_BMP=y
-CONFIG_PNG=y
diff --git a/arch/arm/configs/mainstone_defconfig b/arch/arm/configs/mainstone_defconfig
index 171dda1..c8e4f78 100644
--- a/arch/arm/configs/mainstone_defconfig
+++ b/arch/arm/configs/mainstone_defconfig
@@ -17,6 +17,10 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/mainstone/env"
@@ -26,10 +30,6 @@ CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADS=y
@@ -59,7 +59,6 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_SPLASH=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
@@ -104,5 +103,3 @@ CONFIG_FS_UBIFS=y
 CONFIG_FS_UBIFS_COMPRESSION_LZO=y
 CONFIG_FS_UBIFS_COMPRESSION_ZLIB=y
 CONFIG_BZLIB=y
-CONFIG_BMP=y
-CONFIG_PNG=y
diff --git a/arch/arm/configs/mioa701_defconfig b/arch/arm/configs/mioa701_defconfig
index d881b56..9943011 100644
--- a/arch/arm/configs/mioa701_defconfig
+++ b/arch/arm/configs/mioa701_defconfig
@@ -7,75 +7,74 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 # CONFIG_BANNER is not set
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0xa3d00000
 CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x80000
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MODULES=y
 CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMD_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_FLEXIBLE_BOOTARGS=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/mioa701/env"
 CONFIG_RESET_SOURCE=y
 CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SAVEENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_BOOT=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADS=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_SAVES=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_AUTOMOUNT=y
+CONFIG_CMD_UBIFORMAT=y
 CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_PASSWD=y
-CONFIG_CMD_TIME=y
 CONFIG_CMD_GLOBAL=y
-CONFIG_CMD_AUTOMOUNT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_BASENAME=y
 CONFIG_CMD_DIRNAME=y
+CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_LN=y
 CONFIG_CMD_READLINK=y
-CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_GETOPT=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_LOADS=y
-CONFIG_CMD_SAVES=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MM=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_UBIFORMAT=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_FLEXIBLE_BOOTARGS=y
-CONFIG_CMD_BOOT=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_POWEROFF=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_MEMTEST=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_LSMOD=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_LED=y
-CONFIG_CMD_DETECT=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_LSMOD=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_PXA=y
diff --git a/arch/arm/configs/mmccpu_defconfig b/arch/arm/configs/mmccpu_defconfig
index 0fc4e97..8143b98 100644
--- a/arch/arm/configs/mmccpu_defconfig
+++ b/arch/arm/configs/mmccpu_defconfig
@@ -1,39 +1,37 @@
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_MMCCPU=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/mmccpu/env"
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_EDIT=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/module-mb7707_defconfig b/arch/arm/configs/module-mb7707_defconfig
index 83a798b..189f295 100644
--- a/arch/arm/configs/module-mb7707_defconfig
+++ b/arch/arm/configs/module-mb7707_defconfig
@@ -1,5 +1,4 @@
 CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="module-mb7707"
 CONFIG_ARCH_UEMD=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
@@ -44,6 +43,5 @@ CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
-CONFIG_CLOCKSOURCE_DUMMY=y
 CONFIG_DIGEST_SHA1_GENERIC=y
 CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/neso_defconfig b/arch/arm/configs/neso_defconfig
index 3015663..7d6ab28 100644
--- a/arch/arm/configs/neso_defconfig
+++ b/arch/arm/configs/neso_defconfig
@@ -1,8 +1,6 @@
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND=y
-CONFIG_ARCH_IMX27=y
 CONFIG_MACH_NESO=y
-CONFIG_IMX_CLKO=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
@@ -10,49 +8,46 @@ CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_NET=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
-CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_FEC_IMX=y
@@ -64,10 +59,10 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_SOFT is not set
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 CONFIG_NAND_IMX=y
-CONFIG_UBI=y
 CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_ULPI=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX=y
 CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/netx_nxdb500_defconfig b/arch/arm/configs/netx_nxdb500_defconfig
index 745afc1..8755f63 100644
--- a/arch/arm/configs/netx_nxdb500_defconfig
+++ b/arch/arm/configs/netx_nxdb500_defconfig
@@ -1,31 +1,30 @@
 CONFIG_ARCH_NETX=y
 CONFIG_TEXT_BASE=0x08f80000
-CONFIG_BROKEN=y
-CONFIG_LONGHELP=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
-CONFIG_NET=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_FLASH=y
+CONFIG_NET=y
 CONFIG_DRIVER_NET_NETX=y
 CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/nhk8815_defconfig b/arch/arm/configs/nhk8815_defconfig
index 1526d79..63c777b 100644
--- a/arch/arm/configs/nhk8815_defconfig
+++ b/arch/arm/configs/nhk8815_defconfig
@@ -2,45 +2,41 @@ CONFIG_ARCH_NOMADIK=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_TEXT_BASE=0x03F80000
 CONFIG_PROMPT="Nomadik:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_PASSWD_SUM_SHA1=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_BZLIB=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_FLASH=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_SERIAL_AMBA_PL011=y
@@ -48,10 +44,8 @@ CONFIG_DRIVER_NET_SMC91111=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_NAND=y
-CONFIG_MTD_NAND_VERIFY_WRITE=y
 CONFIG_MTD_NAND_ECC_SMC=y
 CONFIG_MTD_NAND_NOMADIK=y
-CONFIG_UBI=y
 CONFIG_FS_CRAMFS=y
-CONFIG_MD5=y
+CONFIG_FS_TFTP=y
 CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig b/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
index 445866f..1c30933 100644
--- a/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
+++ b/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
@@ -1,34 +1,28 @@
 CONFIG_ARCH_OMAP=y
-# CONFIG_OMAP3_COPY_CLOCK_SRAM is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-# CONFIG_COMPILE_MEMORY is not set
 CONFIG_TEXT_BASE=0x40200000
-CONFIG_MEMORY_LAYOUT_FIXED=y
-CONFIG_STACK_BASE=0x87BF7F10
-CONFIG_MALLOC_BASE=0x87BFFF10
 CONFIG_PROMPT="X-load 343x> "
-CONFIG_LONGHELP=y
 CONFIG_SHELL_SIMPLE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_DEBUG_INFO=y
-# CONFIG_CMD_LS is not set
-# CONFIG_CMD_RM is not set
+# CONFIG_CMD_HELP is not set
+# CONFIG_CMD_BOOTM is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+# CONFIG_CMD_MOUNT is not set
+# CONFIG_CMD_UMOUNT is not set
 # CONFIG_CMD_CAT is not set
-# CONFIG_CMD_MKDIR is not set
-# CONFIG_CMD_RMDIR is not set
+# CONFIG_CMD_CD is not set
 # CONFIG_CMD_CP is not set
+# CONFIG_CMD_LS is not set
+# CONFIG_CMD_MKDIR is not set
 # CONFIG_CMD_PWD is not set
-# CONFIG_CMD_CD is not set
-# CONFIG_CMD_MOUNT is not set
-# CONFIG_CMD_UMOUNT is not set
+# CONFIG_CMD_RM is not set
+# CONFIG_CMD_RMDIR is not set
 # CONFIG_CMD_CLEAR is not set
 # CONFIG_CMD_ECHO is not set
-CONFIG_CMD_LOADB=y
-# CONFIG_CMD_BOOTM is not set
-CONFIG_CMD_GO=y
-# CONFIG_CMD_HELP is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
index d4e955e..b454cf2 100644
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ b/arch/arm/configs/omap3530_beagle_defconfig
@@ -15,6 +15,11 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BLSPEC=y
 CONFIG_IMD_TARGET=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
@@ -28,11 +33,6 @@ CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/omap3530_beagle_per_uart_defconfig b/arch/arm/configs/omap3530_beagle_per_uart_defconfig
index f574666..9acfe2f 100644
--- a/arch/arm/configs/omap3530_beagle_per_uart_defconfig
+++ b/arch/arm/configs/omap3530_beagle_per_uart_defconfig
@@ -1,32 +1,26 @@
 CONFIG_ARCH_OMAP=y
-# CONFIG_OMAP3_COPY_CLOCK_SRAM is not set
-CONFIG_MACH_BEAGLE=y
 CONFIG_TEXT_BASE=0x40200000
-CONFIG_MEMORY_LAYOUT_FIXED=y
-CONFIG_STACK_BASE=0x87BF7F10
-CONFIG_MALLOC_BASE=0x87BFFF10
 CONFIG_PROMPT="X-load Beagle>"
-CONFIG_LONGHELP=y
 CONFIG_SHELL_SIMPLE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
 # CONFIG_DEFAULT_ENVIRONMENT is not set
-# CONFIG_CMD_LS is not set
-# CONFIG_CMD_RM is not set
+# CONFIG_CMD_HELP is not set
+# CONFIG_CMD_BOOTM is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+# CONFIG_CMD_MOUNT is not set
+# CONFIG_CMD_UMOUNT is not set
 # CONFIG_CMD_CAT is not set
-# CONFIG_CMD_MKDIR is not set
-# CONFIG_CMD_RMDIR is not set
+# CONFIG_CMD_CD is not set
 # CONFIG_CMD_CP is not set
+# CONFIG_CMD_LS is not set
+# CONFIG_CMD_MKDIR is not set
 # CONFIG_CMD_PWD is not set
-# CONFIG_CMD_CD is not set
-# CONFIG_CMD_MOUNT is not set
-# CONFIG_CMD_UMOUNT is not set
+# CONFIG_CMD_RM is not set
+# CONFIG_CMD_RMDIR is not set
 # CONFIG_CMD_CLEAR is not set
 # CONFIG_CMD_ECHO is not set
-CONFIG_CMD_LOADB=y
-# CONFIG_CMD_BOOTM is not set
-CONFIG_CMD_GO=y
-# CONFIG_CMD_HELP is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/omap3530_beagle_xload_defconfig b/arch/arm/configs/omap3530_beagle_xload_defconfig
index 074cc21..d36aaf3 100644
--- a/arch/arm/configs/omap3530_beagle_xload_defconfig
+++ b/arch/arm/configs/omap3530_beagle_xload_defconfig
@@ -18,7 +18,6 @@ CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_SIMPLE=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_OFDEVICE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
diff --git a/arch/arm/configs/omap3_evm_defconfig b/arch/arm/configs/omap3_evm_defconfig
index 90ace31..7bad6ac 100644
--- a/arch/arm/configs/omap3_evm_defconfig
+++ b/arch/arm/configs/omap3_evm_defconfig
@@ -1,30 +1,25 @@
 CONFIG_ARCH_OMAP=y
-# CONFIG_OMAP3_COPY_CLOCK_SRAM is not set
 CONFIG_MACH_OMAP3EVM=y
 CONFIG_AEABI=y
-# CONFIG_COMPILE_MEMORY is not set
 CONFIG_TEXT_BASE=0x40200000
-CONFIG_MEMORY_LAYOUT_FIXED=y
-CONFIG_STACK_BASE=0x87BF7F10
-CONFIG_MALLOC_BASE=0x87BFFF10
 CONFIG_PROMPT="OMAP3_EVM> "
-CONFIG_LONGHELP=y
 CONFIG_SHELL_SIMPLE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
 # CONFIG_DEFAULT_ENVIRONMENT is not set
-# CONFIG_CMD_RM is not set
-# CONFIG_CMD_CAT is not set
-# CONFIG_CMD_MKDIR is not set
-# CONFIG_CMD_RMDIR is not set
-# CONFIG_CMD_CP is not set
-# CONFIG_CMD_MOUNT is not set
-# CONFIG_CMD_UMOUNT is not set
-CONFIG_CMD_LOADB=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTM is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+# CONFIG_CMD_MOUNT is not set
+# CONFIG_CMD_UMOUNT is not set
+# CONFIG_CMD_CAT is not set
+# CONFIG_CMD_CP is not set
+# CONFIG_CMD_MKDIR is not set
+# CONFIG_CMD_RM is not set
+# CONFIG_CMD_RMDIR is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/panda_defconfig b/arch/arm/configs/panda_defconfig
index 85dd75d..f4ff5e2 100644
--- a/arch/arm/configs/panda_defconfig
+++ b/arch/arm/configs/panda_defconfig
@@ -1,7 +1,6 @@
 CONFIG_ARCH_OMAP=y
 CONFIG_MACH_PANDA=y
 CONFIG_THUMB2_BAREBOX=y
-CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_PBL_IMAGE=y
@@ -11,55 +10,56 @@ CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="barebox> "
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 # CONFIG_TIMESTAMP is not set
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/panda/env"
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/panda/env"
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/panda_xload_defconfig b/arch/arm/configs/panda_xload_defconfig
index 29a2afd..935dfb5 100644
--- a/arch/arm/configs/panda_xload_defconfig
+++ b/arch/arm/configs/panda_xload_defconfig
@@ -3,7 +3,6 @@ CONFIG_ARCH_OMAP=y
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_MACH_PANDA=y
 CONFIG_THUMB2_BAREBOX=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x40300000
 CONFIG_MALLOC_SIZE=0x2000000
@@ -12,7 +11,6 @@ CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_SIMPLE=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/phytec-phycard-omap3-xload_defconfig b/arch/arm/configs/phytec-phycard-omap3-xload_defconfig
index 5901ed1..0673fde 100644
--- a/arch/arm/configs/phytec-phycard-omap3-xload_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap3-xload_defconfig
@@ -1,18 +1,13 @@
 CONFIG_ARCH_OMAP=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x0000f000
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_MACH_PCAAL1=y
-CONFIG_AEABI=y
 CONFIG_THUMB2_BAREBOX=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 # CONFIG_ARM_EXCEPTIONS is not set
 CONFIG_ENVIRONMENT_VARIABLES=y
 CONFIG_TEXT_BASE=0x40200000
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x0000f000
 CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x0000f000
-CONFIG_MEMORY_LAYOUT_FIXED=y
-CONFIG_STACK_BASE=0x4020F000
 CONFIG_STACK_SIZE=0xc00
-CONFIG_MALLOC_BASE=0x84000000
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_MALLOC_DUMMY=y
 CONFIG_PROMPT="X-load pca-a-l1>"
@@ -21,7 +16,6 @@ CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_SIMPLE=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/phytec-phycard-omap3_defconfig b/arch/arm/configs/phytec-phycard-omap3_defconfig
index f811017..bfb7a52 100644
--- a/arch/arm/configs/phytec-phycard-omap3_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap3_defconfig
@@ -1,177 +1,72 @@
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-CONFIG_ARM_LINUX=y
 CONFIG_ARCH_OMAP=y
-CONFIG_CPU_32=y
-CONFIG_CPU_V7=y
-CONFIG_CPU_32v7=y
-CONFIG_ARCH_OMAP3=y
-CONFIG_OMAP_CLOCK_SOURCE_S32K=y
-CONFIG_OMAP3_COPY_CLOCK_SRAM=n
-CONFIG_OMAP_GPMC=y
 CONFIG_MACH_PCAAL1=y
 CONFIG_AEABI=y
-CONFIG_CMD_ARM_CPUINFO=y
-CONFIG_ARM_EXCEPTIONS=y
-CONFIG_DEFCONFIG_LIST="$ARCH_DEFCONFIG"
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_COMPILE_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-CONFIG_BLOCK=y
-CONFIG_BLOCK_WRITE=y
-CONFIG_LOCALVERSION=""
-CONFIG_LOCALVERSION_AUTO=y
-CONFIG_ENVIRONMENT_VARIABLES=y
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_TEXT_BASE=0x85000000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-CONFIG_STACK_SIZE=0x8000
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_EXPERIMENTAL=y
-CONFIG_MALLOC_DLMALLOC=y
-CONFIG_ARCH_HAS_LOWLEVEL_INIT=y
 CONFIG_PROMPT="phyCARD-A-L1 >"
-CONFIG_BAUDRATE=115200
-CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMD_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_PASSWORD=y
-CONFIG_PASSWD_SUM_MD5=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-CONFIG_PARTITION=y
-CONFIG_PARTITION_DISK=y
-CONFIG_PARTITION_DISK_DOS=y
-CONFIG_DEFAULT_ENVIRONMENT=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phytec-phycard-omap3/env"
-CONFIG_COMMAND_SUPPORT=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA224SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_GETOPT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_PASSWD_MODE_STAR=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_LS=y
-CONFIG_CMD_RM=y
-CONFIG_CMD_CAT=y
-CONFIG_CMD_MKDIR=y
-CONFIG_CMD_RMDIR=y
-CONFIG_CMD_CP=y
-CONFIG_CMD_PWD=y
-CONFIG_CMD_CD=y
-CONFIG_CMD_MOUNT=y
-CONFIG_CMD_UMOUNT=y
-CONFIG_CMD_NAND=y
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
-CONFIG_COMPILE_DIGEST=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_SHA256SUM=y
-CONFIG_CMD_SHA224SUM=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_UBI=y
-CONFIG_CMD_BOOTM=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_IMINFO=y
-CONFIG_CMD_BOOTZ=n
-CONFIG_CMD_BOOTU=n
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_DEVINFO=y
-CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
-CONFIG_PHYLIB=y
 CONFIG_DRIVER_NET_SMC911X=y
-CONFIG_DRIVER_NET_SMC911X_ADDRESS_SHIFT=0
-CONFIG_SPI=n
+# CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_NAND=y
-CONFIG_NAND_WRITE=y
-CONFIG_NAND_ECC_SOFT=y
-CONFIG_NAND_ECC_HW=y
-CONFIG_NAND_ECC_HW_SYNDROME=y
-CONFIG_NAND_ECC_HW_NONE=y
-CONFIG_NAND_INFO=y
-CONFIG_NAND_READ_OOB=y
-CONFIG_NAND_BBT=y
-CONFIG_NAND_OOB_DEVICE=y
 CONFIG_NAND_OMAP_GPMC=y
-CONFIG_MTD_NAND_IDS=y
-CONFIG_UBI=y
-CONFIG_DISK=y
-CONFIG_DISK_WRITE=y
-CONFIG_DISK_ATA=y
 CONFIG_DISK_INTF_PLATFORM_IDE=y
 CONFIG_MCI=y
-CONFIG_MCI_INFO=y
-CONFIG_MCI_WRITE=y
 CONFIG_MCI_OMAP_HSMMC=y
 CONFIG_FS_CRAMFS=y
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-CONFIG_ZLIB=y
 CONFIG_BZLIB=y
-CONFIG_PROCESS_ESCAPE_SEQUENCE=y
 CONFIG_LZO_DECOMPRESS=y
-CONFIG_FDT=y
-CONFIG_OFTREE=y
-CONFIG_CRC32=y
-CONFIG_CRC16=y
-CONFIG_DIGEST=y
-CONFIG_MD5=y
-CONFIG_DIGEST_SHA1_GENERIC=y
-CONFIG_DIGEST_SHA224_GENERIC=y
-CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/phytec-phycard-omap4-xload_defconfig b/arch/arm/configs/phytec-phycard-omap4-xload_defconfig
index 84160e3..3bd06c7 100644
--- a/arch/arm/configs/phytec-phycard-omap4-xload_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap4-xload_defconfig
@@ -1,16 +1,10 @@
 CONFIG_ARCH_OMAP=y
-CONFIG_ARCH_OMAP4=y
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_MACH_PCAAXL2=y
-CONFIG_AEABI=y
 CONFIG_THUMB2_BAREBOX=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 # CONFIG_ARM_EXCEPTIONS is not set
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x40300000
-CONFIG_MEMORY_LAYOUT_FIXED=y
-CONFIG_STACK_BASE=0x8f000000
-CONFIG_MALLOC_BASE=0x84000000
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_MALLOC_DUMMY=y
 CONFIG_PROMPT="barebox> "
@@ -18,7 +12,6 @@ CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_SIMPLE=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/phytec-phycard-omap4_defconfig b/arch/arm/configs/phytec-phycard-omap4_defconfig
index d9c89bb..9039307 100644
--- a/arch/arm/configs/phytec-phycard-omap4_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap4_defconfig
@@ -1,5 +1,4 @@
 CONFIG_ARCH_OMAP=y
-CONFIG_ARCH_OMAP4=y
 CONFIG_MACH_PCAAXL2=y
 CONFIG_AEABI=y
 CONFIG_ARM_UNWIND=y
@@ -8,38 +7,34 @@ CONFIG_TEXT_BASE=0x8f000000
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="barebox> "
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMD_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 # CONFIG_TIMESTAMP is not set
-CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
+CONFIG_LONGHELP=y
+# CONFIG_CMD_BOOTM is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_FLASH=y
-# CONFIG_CMD_BOOTM is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_NET_KS8851_MLL=y
@@ -47,9 +42,9 @@ CONFIG_DRIVER_NET_KS8851_MLL=y
 CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_OMAP_GPMC=y
-CONFIG_UBI=y
 CONFIG_MCI=y
 CONFIG_MCI_OMAP_HSMMC=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/phytec-phycore-imx31_defconfig b/arch/arm/configs/phytec-phycore-imx31_defconfig
index 2f9e499..858dc3b 100644
--- a/arch/arm/configs/phytec-phycore-imx31_defconfig
+++ b/arch/arm/configs/phytec-phycore-imx31_defconfig
@@ -1,6 +1,5 @@
 CONFIG_ARCH_IMX=y
 CONFIG_CACHE_L2X0=y
-CONFIG_ARCH_IMX31=y
 CONFIG_MACH_PCM037=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
@@ -11,71 +10,67 @@ CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x01000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_PARTITION=y
-CONFIG_PARTITION_DISK=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phytec-phycore-imx31/env"
 CONFIG_RESET_SOURCE=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SAVEENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_DIRNAME=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_LN=y
-CONFIG_CMD_READLINK=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_CLK=y
 CONFIG_CMD_FLASH=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_SPI=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_CLK=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_SMC911X=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_IMX=y
-CONFIG_UBI=y
 CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_FS_EXT4=y
diff --git a/arch/arm/configs/phytec-phycore-imx35_defconfig b/arch/arm/configs/phytec-phycore-imx35_defconfig
index b792b89..b1f8c39 100644
--- a/arch/arm/configs/phytec-phycore-imx35_defconfig
+++ b/arch/arm/configs/phytec-phycore-imx35_defconfig
@@ -12,65 +12,65 @@ CONFIG_TEXT_BASE=0x87E00000
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phytec-phycore-imx35/env"
-CONFIG_RESET_SOURCE=y
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
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phytec-phycore-imx35/env"
+CONFIG_RESET_SOURCE=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
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
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
 CONFIG_CMD_WD=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig b/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
index 4e9e266..27bfbff 100644
--- a/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
+++ b/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
@@ -14,7 +14,6 @@ CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_SIMPLE=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig b/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
index 14b8288..46e65b9 100644
--- a/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
+++ b/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
@@ -15,7 +15,6 @@ CONFIG_SHELL_NONE=y
 # CONFIG_TIMESTAMP is not set
 CONFIG_CONSOLE_SIMPLE=y
 CONFIG_PARTITION=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/phytec-phycore-omap4460_defconfig b/arch/arm/configs/phytec-phycore-omap4460_defconfig
index 54d7722..09a07b0 100644
--- a/arch/arm/configs/phytec-phycore-omap4460_defconfig
+++ b/arch/arm/configs/phytec-phycore-omap4460_defconfig
@@ -1,6 +1,5 @@
 CONFIG_ARCH_OMAP=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
-CONFIG_ARCH_OMAP4=y
 CONFIG_MACH_PCM049=y
 CONFIG_AEABI=y
 CONFIG_ARM_UNWIND=y
@@ -9,62 +8,59 @@ CONFIG_TEXT_BASE=0x8f000000
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="barebox> "
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 # CONFIG_TIMESTAMP is not set
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_AUTOMOUNT=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_AUTOMOUNT=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
+CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
-CONFIG_SMSC_PHY=y
 CONFIG_DRIVER_NET_SMC911X=y
+CONFIG_SMSC_PHY=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_I2C_OMAP=y
 CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_OMAP_GPMC=y
-CONFIG_UBI=y
 CONFIG_USB_HOST=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_OMAP=y
-CONFIG_IMAGE_RENDERER=y
-CONFIG_BMP=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
@@ -74,3 +70,4 @@ CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
 CONFIG_LZO_DECOMPRESS=y
+CONFIG_BMP=y
diff --git a/arch/arm/configs/phytec-phycore-pxa270_defconfig b/arch/arm/configs/phytec-phycore-pxa270_defconfig
index 7548c82..ed11169 100644
--- a/arch/arm/configs/phytec-phycore-pxa270_defconfig
+++ b/arch/arm/configs/phytec-phycore-pxa270_defconfig
@@ -11,6 +11,11 @@ CONFIG_KALLSYMS=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phytec-phycore-pxa270/env"
@@ -18,11 +23,6 @@ CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/pm9261_defconfig b/arch/arm/configs/pm9261_defconfig
index 4455d9c..61595ed 100644
--- a/arch/arm/configs/pm9261_defconfig
+++ b/arch/arm/configs/pm9261_defconfig
@@ -2,53 +2,49 @@ CONFIG_ARCH_AT91SAM9261=y
 CONFIG_MACH_PM9261=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PROMPT="PM9261:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_BZLIB=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_DM9K=y
 # CONFIG_SPI is not set
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_W1=y
 CONFIG_W1_MASTER_GPIO=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/pm9263_defconfig b/arch/arm/configs/pm9263_defconfig
index 482f008..254d2b9 100644
--- a/arch/arm/configs/pm9263_defconfig
+++ b/arch/arm/configs/pm9263_defconfig
@@ -1,36 +1,33 @@
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_PM9263=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pm9263/env/"
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_EDIT=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
@@ -38,3 +35,4 @@ CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_W1=y
 CONFIG_W1_MASTER_GPIO=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index 7bb3b9e..c63a1c0 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -1,42 +1,42 @@
 CONFIG_ARCH_AT91SAM9G45=y
 CONFIG_MACH_PM9G45=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_MALLOC_TLSF=y
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_GLOB_SORT=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
-CONFIG_NET=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_DHCP=y
-CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
@@ -47,11 +47,8 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_DISK_ATA=y
 CONFIG_USB_HOST=y
-CONFIG_USB_OHCI=y
-CONFIG_USB_OHCI_AT91=y
 CONFIG_USB_STORAGE=y
 CONFIG_MCI=y
 CONFIG_MCI_ATMEL=y
diff --git a/arch/arm/configs/qil_a9260_128mib_defconfig b/arch/arm/configs/qil_a9260_128mib_defconfig
index 7b6c352..3124a71 100644
--- a/arch/arm/configs/qil_a9260_128mib_defconfig
+++ b/arch/arm/configs/qil_a9260_128mib_defconfig
@@ -4,55 +4,53 @@ CONFIG_AT91_HAVE_SRAM_128M=y
 CONFIG_CALAO_MB_QIL_A9260=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="USB-9G20:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
@@ -64,7 +62,6 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
diff --git a/arch/arm/configs/qil_a9260_defconfig b/arch/arm/configs/qil_a9260_defconfig
index 6918abb..3f5eedb 100644
--- a/arch/arm/configs/qil_a9260_defconfig
+++ b/arch/arm/configs/qil_a9260_defconfig
@@ -3,55 +3,53 @@ CONFIG_MACH_QIL_A9260=y
 CONFIG_CALAO_MB_QIL_A9260=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="USB-9G20:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
@@ -63,7 +61,6 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
diff --git a/arch/arm/configs/qil_a9g20_128mib_defconfig b/arch/arm/configs/qil_a9g20_128mib_defconfig
index 7546a5b..0b2da05 100644
--- a/arch/arm/configs/qil_a9g20_128mib_defconfig
+++ b/arch/arm/configs/qil_a9g20_128mib_defconfig
@@ -4,55 +4,53 @@ CONFIG_AT91_HAVE_SRAM_128M=y
 CONFIG_CALAO_MB_QIL_A9260=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="USB-9G20:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
@@ -64,7 +62,6 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
diff --git a/arch/arm/configs/qil_a9g20_defconfig b/arch/arm/configs/qil_a9g20_defconfig
index bf9e8bb..5162eca 100644
--- a/arch/arm/configs/qil_a9g20_defconfig
+++ b/arch/arm/configs/qil_a9g20_defconfig
@@ -3,55 +3,53 @@ CONFIG_MACH_QIL_A9G20=y
 CONFIG_CALAO_MB_QIL_A9260=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="USB-9G20:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
@@ -63,7 +61,6 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
diff --git a/arch/arm/configs/rk3188_defconfig b/arch/arm/configs/rk3188_defconfig
index 1b6d4ff..78a47a3 100644
--- a/arch/arm/configs/rk3188_defconfig
+++ b/arch/arm/configs/rk3188_defconfig
@@ -1,5 +1,4 @@
 CONFIG_ARCH_ROCKCHIP=y
-CONFIG_ARCH_RK3188=y
 CONFIG_CACHE_L2X0=y
 CONFIG_MACH_RADXA_ROCK=y
 CONFIG_THUMB2_BAREBOX=y
@@ -16,6 +15,12 @@ CONFIG_PROMPT="radxa-rock:"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_AIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_COMPRESSION_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
@@ -25,12 +30,6 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_BOOTM_AIMAGE=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/rpi2_defconfig b/arch/arm/configs/rpi2_defconfig
index b03df5d..dbb31e6 100644
--- a/arch/arm/configs/rpi2_defconfig
+++ b/arch/arm/configs/rpi2_defconfig
@@ -10,16 +10,16 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_BLSPEC=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/raspberry-pi/env"
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index 8ff029f..386522d 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -10,16 +10,16 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_BLSPEC=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/raspberry-pi/env"
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
diff --git a/arch/arm/configs/sama5d3_xplained_defconfig b/arch/arm/configs/sama5d3_xplained_defconfig
index 773223e..c02ad3c 100644
--- a/arch/arm/configs/sama5d3_xplained_defconfig
+++ b/arch/arm/configs/sama5d3_xplained_defconfig
@@ -2,7 +2,6 @@ CONFIG_ARCH_SAMA5D3=y
 CONFIG_MACH_SAMA5D3_XPLAINED=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x60000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
@@ -11,49 +10,49 @@ CONFIG_MALLOC_SIZE=0xA00000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="A5D3_XPLD:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
 CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
 CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_DHCP=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_MICREL_PHY=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/sama5d3xek_defconfig b/arch/arm/configs/sama5d3xek_defconfig
index 48535e5..550691c 100644
--- a/arch/arm/configs/sama5d3xek_defconfig
+++ b/arch/arm/configs/sama5d3xek_defconfig
@@ -1,7 +1,6 @@
 CONFIG_ARCH_SAMA5D3=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x60000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
@@ -10,54 +9,53 @@ CONFIG_MALLOC_SIZE=0xA00000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="A5D3X-EK:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
 CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
-CONFIG_CMD_SPI=y
 CONFIG_CMD_LED=y
+CONFIG_CMD_SPI=y
 CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
-CONFIG_MICREL_PHY=y
 CONFIG_DRIVER_NET_MACB=y
+CONFIG_MICREL_PHY=y
 CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_I2C=y
 CONFIG_I2C_GPIO=y
@@ -70,7 +68,6 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_NAND_ATMEL_PMECC=y
-CONFIG_UBI=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_ATMEL_HLCD=y
 CONFIG_MCI=y
diff --git a/arch/arm/configs/sama5d4_xplained_defconfig b/arch/arm/configs/sama5d4_xplained_defconfig
index 6b1616e..648c813 100644
--- a/arch/arm/configs/sama5d4_xplained_defconfig
+++ b/arch/arm/configs/sama5d4_xplained_defconfig
@@ -14,6 +14,11 @@ CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/sama5d4_xplained/env"
@@ -21,11 +26,6 @@ CONFIG_DEBUG_INFO=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/sama5d4ek_defconfig b/arch/arm/configs/sama5d4ek_defconfig
index 25f488b..2aa38ba 100644
--- a/arch/arm/configs/sama5d4ek_defconfig
+++ b/arch/arm/configs/sama5d4ek_defconfig
@@ -13,6 +13,11 @@ CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/sama5d4ek/env"
@@ -20,11 +25,6 @@ CONFIG_DEBUG_INFO=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/scb9328_defconfig b/arch/arm/configs/scb9328_defconfig
index a707732..1a46464 100644
--- a/arch/arm/configs/scb9328_defconfig
+++ b/arch/arm/configs/scb9328_defconfig
@@ -1,53 +1,50 @@
 CONFIG_ARCH_IMX=y
-CONFIG_MACH_SCB9328=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
 CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_DM9K=y
@@ -58,5 +55,6 @@ CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
 CONFIG_ZLIB=y
 CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/socfpga-xload-2_defconfig b/arch/arm/configs/socfpga-xload-2_defconfig
index 97997cf..66cc777a 100644
--- a/arch/arm/configs/socfpga-xload-2_defconfig
+++ b/arch/arm/configs/socfpga-xload-2_defconfig
@@ -13,7 +13,6 @@ CONFIG_RELOCATABLE=y
 CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
-# CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
diff --git a/arch/arm/configs/socfpga-xload_defconfig b/arch/arm/configs/socfpga-xload_defconfig
index 521f3f1..008ba64 100644
--- a/arch/arm/configs/socfpga-xload_defconfig
+++ b/arch/arm/configs/socfpga-xload_defconfig
@@ -13,7 +13,6 @@ CONFIG_RELOCATABLE=y
 CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
-# CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
index c6a969d..dbc33f9 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -1,7 +1,7 @@
 CONFIG_ARCH_SOCFPGA=y
 CONFIG_MACH_SOCFPGA_EBV_SOCRATES=y
-CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT=y
 CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC=y
+CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
@@ -15,16 +15,16 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 # CONFIG_TIMESTAMP is not set
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
diff --git a/arch/arm/configs/tegra_v7_defconfig b/arch/arm/configs/tegra_v7_defconfig
index 6560334..66534a7 100644
--- a/arch/arm/configs/tegra_v7_defconfig
+++ b/arch/arm/configs/tegra_v7_defconfig
@@ -14,6 +14,8 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_BLSPEC=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
@@ -21,8 +23,6 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_EXPORT=y
diff --git a/arch/arm/configs/telit_evk_pro3_defconfig b/arch/arm/configs/telit_evk_pro3_defconfig
index 5fc114c..3bf5968 100644
--- a/arch/arm/configs/telit_evk_pro3_defconfig
+++ b/arch/arm/configs/telit_evk_pro3_defconfig
@@ -2,52 +2,49 @@ CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_GE863=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="EVK-PRO3:"
-CONFIG_LONGHELP=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/telit-evk-pro3/env"
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_UBIFORMAT=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
@@ -58,7 +55,6 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
diff --git a/arch/arm/configs/tny_a9260_defconfig b/arch/arm/configs/tny_a9260_defconfig
index f288387..0886895 100644
--- a/arch/arm/configs/tny_a9260_defconfig
+++ b/arch/arm/configs/tny_a9260_defconfig
@@ -1,62 +1,57 @@
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_TNY_A9260=y
 CONFIG_CALAO_MOB_TNY_MD2=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="TNY-9260:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_FLASH=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
@@ -67,7 +62,7 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_EEPROM_AT25=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/tny_a9263_bootstrap_defconfig b/arch/arm/configs/tny_a9263_bootstrap_defconfig
index d968b6f..d7e541a 100644
--- a/arch/arm/configs/tny_a9263_bootstrap_defconfig
+++ b/arch/arm/configs/tny_a9263_bootstrap_defconfig
@@ -1,9 +1,7 @@
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_TNY_A9263=y
-CONFIG_AT91_BOOTSTRAP=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x12000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ENVIRONMENT_VARIABLES=y
 CONFIG_PBL_IMAGE=y
@@ -12,7 +10,6 @@ CONFIG_MALLOC_DUMMY=y
 CONFIG_PROMPT="USB-9263:"
 CONFIG_SHELL_NONE=y
 CONFIG_CONSOLE_SIMPLE=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
@@ -23,4 +20,3 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 # CONFIG_FS_RAMFS is not set
-CONFIG_BOOTSTRAP_DEVFS=y
diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
index cd955f7..e050b6d 100644
--- a/arch/arm/configs/tny_a9263_defconfig
+++ b/arch/arm/configs/tny_a9263_defconfig
@@ -1,62 +1,57 @@
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_TNY_A9263=y
 CONFIG_CALAO_MOB_TNY_MD2=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="TNY-9263:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_FLASH=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
@@ -68,7 +63,7 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_EEPROM_AT25=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
index dc3c13a..dc828a2 100644
--- a/arch/arm/configs/tny_a9g20_defconfig
+++ b/arch/arm/configs/tny_a9g20_defconfig
@@ -1,63 +1,58 @@
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_TNY_A9G20=y
 CONFIG_CALAO_MOB_TNY_MD2=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="TNY-9G20:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_FLASH=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_SPI=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
@@ -68,7 +63,6 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_MCI=y
@@ -76,3 +70,4 @@ CONFIG_MCI_STARTUP=y
 CONFIG_MCI_SPI=y
 CONFIG_MMC_SPI_CRC_ON=y
 CONFIG_EEPROM_AT25=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/tqma53_defconfig b/arch/arm/configs/tqma53_defconfig
index b17fe72..f2025c8 100644
--- a/arch/arm/configs/tqma53_defconfig
+++ b/arch/arm/configs/tqma53_defconfig
@@ -12,51 +12,51 @@ CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_RELOCATABLE=y
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_BLSPEC=y
-CONFIG_CONSOLE_ACTIVATE_NONE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
+CONFIG_BLSPEC=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEBUG_INFO=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
+CONFIG_CMD_GPIO=y
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
diff --git a/arch/arm/configs/tx28stk5_defconfig b/arch/arm/configs/tx28stk5_defconfig
index 258840a..5045015 100644
--- a/arch/arm/configs/tx28stk5_defconfig
+++ b/arch/arm/configs/tx28stk5_defconfig
@@ -13,23 +13,23 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BLSPEC=y
 CONFIG_IMD=y
+CONFIG_PBL_CONSOLE=y
 CONFIG_DEFAULT_COMPRESSION_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
 CONFIG_DEBUG_INFO=y
 CONFIG_DEBUG_LL=y
-CONFIG_PBL_CONSOLE=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
diff --git a/arch/arm/configs/tx51stk5_defconfig b/arch/arm/configs/tx51stk5_defconfig
index dbc2cb3..47e848c 100644
--- a/arch/arm/configs/tx51stk5_defconfig
+++ b/arch/arm/configs/tx51stk5_defconfig
@@ -1,145 +1,57 @@
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-CONFIG_ARM_LINUX=y
 CONFIG_ARCH_IMX=y
-CONFIG_CPU_32=y
-CONFIG_CPU_V7=y
-CONFIG_CPU_32v7=y
-CONFIG_ARCH_IMX51=y
 CONFIG_MACH_TX51=y
 CONFIG_IMX_IIM=y
 CONFIG_AEABI=y
-CONFIG_CMD_ARM_CPUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_EXCEPTIONS=y
 CONFIG_ARM_UNWIND=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_COMPILE_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-CONFIG_BLOCK=y
-CONFIG_BLOCK_WRITE=y
-CONFIG_FILETYPE=y
-CONFIG_LOCALVERSION_AUTO=y
-CONFIG_BANNER=y
-CONFIG_ENVIRONMENT_VARIABLES=y
 CONFIG_MMU=y
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
-CONFIG_SHELL_HUSH=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMD_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-CONFIG_PARTITION=y
-CONFIG_PARTITION_DISK=y
-CONFIG_PARTITION_DISK_DOS=y
-CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED=y
-CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_GZIP=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_COMMAND_SUPPORT=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_LS=y
-CONFIG_CMD_RM=y
-CONFIG_CMD_CAT=y
-CONFIG_CMD_MKDIR=y
-CONFIG_CMD_RMDIR=y
-CONFIG_CMD_CP=y
-CONFIG_CMD_PWD=y
-CONFIG_CMD_CD=y
-CONFIG_CMD_MOUNT=y
-CONFIG_CMD_UMOUNT=y
-CONFIG_CMD_NAND=y
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_UBI=y
-CONFIG_CMD_BOOTM=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_RESET=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_DEVINFO=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_LED=y
-CONFIG_NET=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
-CONFIG_DRIVER_SERIAL_IMX=y
-CONFIG_ARCH_HAS_FEC_IMX=y
-CONFIG_PHYLIB=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
 CONFIG_DRIVER_NET_FEC_IMX=y
-CONFIG_DRIVER_SPI_IMX_2_3=y
 CONFIG_MTD=y
-CONFIG_MTD_WRITE=y
-CONFIG_MTD_OOB_DEVICE=y
 CONFIG_NAND=y
-CONFIG_NAND_ECC_SOFT=y
-CONFIG_NAND_ECC_HW=y
-CONFIG_NAND_ECC_HW_SYNDROME=y
-CONFIG_NAND_ECC_HW_NONE=y
-CONFIG_NAND_INFO=y
-CONFIG_NAND_READ_OOB=y
-CONFIG_NAND_BBT=y
 CONFIG_NAND_IMX=y
-CONFIG_MTD_NAND_IDS=y
-CONFIG_UBI=y
-CONFIG_DISK=y
-CONFIG_DISK_WRITE=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
-CONFIG_MCI_INFO=y
-CONFIG_MCI_WRITE=y
 CONFIG_MCI_IMX_ESDHC=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
-CONFIG_PARAMETER=y
-CONFIG_UNCOMPRESS=y
 CONFIG_ZLIB=y
-CONFIG_PROCESS_ESCAPE_SEQUENCE=y
 CONFIG_LZO_DECOMPRESS=y
-CONFIG_CRC32=y
diff --git a/arch/arm/configs/tx53stk5_defconfig b/arch/arm/configs/tx53stk5_defconfig
index 0d991cf..8a9390e 100644
--- a/arch/arm/configs/tx53stk5_defconfig
+++ b/arch/arm/configs/tx53stk5_defconfig
@@ -1,9 +1,7 @@
 CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX53=y
 CONFIG_MACH_TX53=y
 CONFIG_TX53_REV_XX30=y
 CONFIG_IMX_IIM=y
-CONFIG_AEABI=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
@@ -14,55 +12,51 @@ CONFIG_TEXT_BASE=0x87f00000
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_RESET_SOURCE=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_DIRNAME=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_RESET=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_RESET_SOURCE=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_LED=y
-CONFIG_NET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_IMX=y
-CONFIG_UBI=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_IMX_ESDHC=y
diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
index 2a8d1a6..d87ebaa 100644
--- a/arch/arm/configs/usb_a9260_defconfig
+++ b/arch/arm/configs/usb_a9260_defconfig
@@ -1,65 +1,60 @@
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_USB_A9260=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="USB-9G20:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_FLASH=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
@@ -71,10 +66,10 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig b/arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig
index 0411bd8..30794ee 100644
--- a/arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig
+++ b/arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig
@@ -4,7 +4,6 @@ CONFIG_AT91_HAVE_SRAM_128M=y
 CONFIG_AT91_BOOTSTRAP=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x12000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ENVIRONMENT_VARIABLES=y
 CONFIG_PBL_IMAGE=y
@@ -12,8 +11,6 @@ CONFIG_MMU=y
 CONFIG_MALLOC_DUMMY=y
 CONFIG_PROMPT="USB-9263:"
 CONFIG_SHELL_NONE=y
-# CONFIG_CONSOLE_FULL is not set
-# CONFIG_DEFAULT_ENVIRONMENT is not set
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
diff --git a/arch/arm/configs/usb_a9263_128mib_defconfig b/arch/arm/configs/usb_a9263_128mib_defconfig
index c091a97..0795cac 100644
--- a/arch/arm/configs/usb_a9263_128mib_defconfig
+++ b/arch/arm/configs/usb_a9263_128mib_defconfig
@@ -1,66 +1,61 @@
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_USB_A9263=y
 CONFIG_AT91_HAVE_SRAM_128M=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="USB-9263:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_FLASH=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
@@ -73,10 +68,10 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/usb_a9263_bootstrap_defconfig b/arch/arm/configs/usb_a9263_bootstrap_defconfig
index 78c1c8f..c922cc0 100644
--- a/arch/arm/configs/usb_a9263_bootstrap_defconfig
+++ b/arch/arm/configs/usb_a9263_bootstrap_defconfig
@@ -3,7 +3,6 @@ CONFIG_MACH_USB_A9263=y
 CONFIG_AT91_BOOTSTRAP=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x12000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ENVIRONMENT_VARIABLES=y
 CONFIG_PBL_IMAGE=y
@@ -11,8 +10,6 @@ CONFIG_MMU=y
 CONFIG_MALLOC_DUMMY=y
 CONFIG_PROMPT="USB-9263:"
 CONFIG_SHELL_NONE=y
-# CONFIG_CONSOLE_FULL is not set
-# CONFIG_DEFAULT_ENVIRONMENT is not set
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
index 51234cd..89726a4 100644
--- a/arch/arm/configs/usb_a9263_defconfig
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -1,65 +1,60 @@
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_USB_A9263=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="USB-9263:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_FLASH=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
@@ -72,10 +67,10 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/usb_a9g20_128mib_defconfig b/arch/arm/configs/usb_a9g20_128mib_defconfig
index 7890776..fce3a10 100644
--- a/arch/arm/configs/usb_a9g20_128mib_defconfig
+++ b/arch/arm/configs/usb_a9g20_128mib_defconfig
@@ -1,67 +1,61 @@
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_USB_A9G20=y
 CONFIG_AT91_HAVE_SRAM_128M=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="USB-9G20:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_PASSWD=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_SPI=y
 CONFIG_CMD_LED=y
+CONFIG_CMD_SPI=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
@@ -73,7 +67,6 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
@@ -84,6 +77,7 @@ CONFIG_MMC_SPI_CRC_ON=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
index 0953aaf..61412d8 100644
--- a/arch/arm/configs/usb_a9g20_defconfig
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -1,66 +1,60 @@
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_USB_A9G20=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="USB-9G20:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_PASSWD=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_SPI=y
 CONFIG_CMD_LED=y
+CONFIG_CMD_SPI=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
@@ -72,7 +66,6 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
-CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
@@ -83,6 +76,7 @@ CONFIG_MMC_SPI_CRC_ON=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/versatilepb_arm1176_defconfig b/arch/arm/configs/versatilepb_arm1176_defconfig
index 50e0983..f51689f 100644
--- a/arch/arm/configs/versatilepb_arm1176_defconfig
+++ b/arch/arm/configs/versatilepb_arm1176_defconfig
@@ -12,6 +12,11 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_COMPRESSION_GZIP=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
@@ -20,11 +25,6 @@ CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_RESET=y
@@ -66,8 +66,6 @@ CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_SERIAL_AMBA_PL011=y
-CONFIG_SERIAL_USB=y
-CONFIG_SERIAL_USB_FTDI=y
 CONFIG_DRIVER_NET_SMC91111=y
 CONFIG_I2C=y
 CONFIG_I2C_VERSATILE=y
@@ -81,12 +79,7 @@ CONFIG_USB_HOST=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
 CONFIG_VIDEO=y
-CONFIG_DRIVER_VIDEO_ARMCLCD=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
-CONFIG_FRAMEBUFFER_CONSOLE_SELF_REGISTER=y
-CONFIG_FONTS=y
-# CONFIG_FONT_8x8 is not set
-CONFIG_FONT_ACORN_8x8=y
 CONFIG_GPIO_PL061=y
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_DS1307=y
diff --git a/arch/arm/configs/versatilepb_defconfig b/arch/arm/configs/versatilepb_defconfig
index f8cbf94..56425db 100644
--- a/arch/arm/configs/versatilepb_defconfig
+++ b/arch/arm/configs/versatilepb_defconfig
@@ -10,6 +10,11 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_COMPRESSION_GZIP=y
@@ -19,11 +24,6 @@ CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_RESET=y
@@ -47,7 +47,6 @@ CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_PASSWD=y
-CONFIG_CMD_SPLASH=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
diff --git a/arch/arm/configs/vexpress_ca9_defconfig b/arch/arm/configs/vexpress_ca9_defconfig
index fb40567..a1c4251 100644
--- a/arch/arm/configs/vexpress_ca9_defconfig
+++ b/arch/arm/configs/vexpress_ca9_defconfig
@@ -1,61 +1,52 @@
 CONFIG_ARCH_VEXPRESS=y
-CONFIG_MACH_VEXPRESS
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_TEXT_BASE=0x63f00000
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="vexpress: "
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_CMD_BOO
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_CLK=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_DRIVER_NET_SMC91111=y
 # CONFIG_SPI is not set
-CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_AMD is not set
-# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
-# CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
 CONFIG_FS_TFTP=y
 CONFIG_DIGEST_SHA1_GENERIC=y
 CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/vexpress_defconfig b/arch/arm/configs/vexpress_defconfig
index 9e74bb4..94fe1ea 100644
--- a/arch/arm/configs/vexpress_defconfig
+++ b/arch/arm/configs/vexpress_defconfig
@@ -1,60 +1,51 @@
 CONFIG_ARCH_VEXPRESS=y
-CONFIG_MACH_VEXPRESS
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="vexpress: "
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_CMD_BOO
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_CLK=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_DRIVER_NET_SMC91111=y
 # CONFIG_SPI is not set
-CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_AMD is not set
-# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
-# CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
 CONFIG_FS_TFTP=y
 CONFIG_DIGEST_SHA1_GENERIC=y
 CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/configs/vincell_defconfig b/arch/arm/configs/vincell_defconfig
index 81bfbed..1480a94 100644
--- a/arch/arm/configs/vincell_defconfig
+++ b/arch/arm/configs/vincell_defconfig
@@ -15,22 +15,21 @@ CONFIG_RELOCATABLE=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_POLLER=y
 CONFIG_STATE=y
 CONFIG_RESET_SOURCE=y
-CONFIG_DEBUG_IMX_UART_PORT=2
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
@@ -57,7 +56,6 @@ CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
-CONFIG_CMD_SPLASH=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
diff --git a/arch/arm/configs/virt2real_defconfig b/arch/arm/configs/virt2real_defconfig
index 0c686ca..b1b00c3 100644
--- a/arch/arm/configs/virt2real_defconfig
+++ b/arch/arm/configs/virt2real_defconfig
@@ -1,5 +1,4 @@
 CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="virt2real"
 CONFIG_ARCH_DAVINCI=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
@@ -7,7 +6,6 @@ CONFIG_TEXT_BASE=0x82300000
 CONFIG_MALLOC_SIZE=0x200000
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="virt2real: "
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -15,29 +13,30 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_PASSWORD=y
 CONFIG_PARTITION=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MM=y
+CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTM is not set
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/zedboard_defconfig b/arch/arm/configs/zedboard_defconfig
index 3960c02..bcd604f 100644
--- a/arch/arm/configs/zedboard_defconfig
+++ b/arch/arm/configs/zedboard_defconfig
@@ -11,6 +11,10 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/avnet-zedboard/env"
 CONFIG_DEBUG_INFO=y
@@ -18,10 +22,6 @@ CONFIG_DEBUG_LL=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
@@ -44,4 +44,3 @@ CONFIG_DRIVER_SERIAL_CADENCE=y
 # CONFIG_SPI is not set
 CONFIG_FS_TFTP=y
 CONFIG_DIGEST=y
-CONFIG_MD5=y
diff --git a/arch/arm/configs/zylonite310_defconfig b/arch/arm/configs/zylonite310_defconfig
index 9de4fff..f1cd92a 100644
--- a/arch/arm/configs/zylonite310_defconfig
+++ b/arch/arm/configs/zylonite310_defconfig
@@ -17,6 +17,10 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/zylonite/env"
@@ -27,10 +31,6 @@ CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADS=y
@@ -61,7 +61,6 @@ CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_PASSWD=y
-CONFIG_CMD_SPLASH=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
@@ -104,6 +103,4 @@ CONFIG_FS_UBIFS=y
 CONFIG_FS_UBIFS_COMPRESSION_LZO=y
 CONFIG_FS_UBIFS_COMPRESSION_ZLIB=y
 CONFIG_BZLIB=y
-CONFIG_BMP=y
-CONFIG_PNG=y
 CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/blackfin/configs/ipe337_defconfig b/arch/blackfin/configs/ipe337_defconfig
index a9f2369..032bdad 100644
--- a/arch/blackfin/configs/ipe337_defconfig
+++ b/arch/blackfin/configs/ipe337_defconfig
@@ -1,30 +1,29 @@
 CONFIG_TEXT_BASE=0x03f00000
-CONFIG_LONGHELP=y
 CONFIG_CMDLINE_EDITING=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/blackfin/boards/ipe337/env"
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
-CONFIG_NET=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_FLASH=y
+CONFIG_NET=y
 CONFIG_DRIVER_NET_SMC911X=y
 CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_FS_TFTP=y
diff --git a/arch/efi/configs/efi_defconfig b/arch/efi/configs/efi_defconfig
index 8fe7e76..f24148d 100644
--- a/arch/efi/configs/efi_defconfig
+++ b/arch/efi/configs/efi_defconfig
@@ -7,6 +7,10 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 # CONFIG_TIMESTAMP is not set
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_PARTITION_DISK_EFI=y
@@ -17,10 +21,6 @@ CONFIG_DEBUG_LL=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_RESET=y
diff --git a/arch/mips/configs/dlink-dir-320_defconfig b/arch/mips/configs/dlink-dir-320_defconfig
index ba535a8..ff0638a 100644
--- a/arch/mips/configs/dlink-dir-320_defconfig
+++ b/arch/mips/configs/dlink-dir-320_defconfig
@@ -7,13 +7,13 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_PARTITION=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_POLLER=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
diff --git a/arch/mips/configs/gxemul-malta_defconfig b/arch/mips/configs/gxemul-malta_defconfig
index f009f0e..75fc401 100644
--- a/arch/mips/configs/gxemul-malta_defconfig
+++ b/arch/mips/configs/gxemul-malta_defconfig
@@ -10,6 +10,7 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_PARTITION=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_POLLER=y
@@ -17,7 +18,6 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
diff --git a/arch/mips/configs/img-ci20_defconfig b/arch/mips/configs/img-ci20_defconfig
index f0347f6..ada82c6 100644
--- a/arch/mips/configs/img-ci20_defconfig
+++ b/arch/mips/configs/img-ci20_defconfig
@@ -7,17 +7,17 @@ CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_POLLER=y
 CONFIG_DEBUG_LL=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADS=y
diff --git a/arch/mips/configs/loongson-ls1b_defconfig b/arch/mips/configs/loongson-ls1b_defconfig
index 8e04170..25444e3 100644
--- a/arch/mips/configs/loongson-ls1b_defconfig
+++ b/arch/mips/configs/loongson-ls1b_defconfig
@@ -3,45 +3,44 @@ CONFIG_BUILTIN_DTB_NAME="loongson-ls1b"
 CONFIG_MACH_MIPS_LOONGSON=y
 CONFIG_PBL_IMAGE=y
 CONFIG_STACK_SIZE=0x7000
-CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMD_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_FLEXIBLE_BOOTARGS=y
 CONFIG_PARTITION=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_POLLER=y
 CONFIG_RESET_SOURCE=y
 CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTM is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADS=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_SAVES=y
+# CONFIG_CMD_MOUNT is not set
+# CONFIG_CMD_UMOUNT is not set
 CONFIG_CMD_EXPORT=y
+CONFIG_CMD_GLOBAL=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_GETOPT=y
 CONFIG_CMD_LET=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_GLOBAL=y
-# CONFIG_CMD_MOUNT is not set
-# CONFIG_CMD_UMOUNT is not set
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_LOADS=y
-CONFIG_CMD_SAVES=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-# CONFIG_CMD_BOOTM is not set
-CONFIG_FLEXIBLE_BOOTARGS=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
 CONFIG_OFDEVICE=y
 # CONFIG_SPI is not set
 CONFIG_ZLIB=y
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 5389df4..004adac 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -8,6 +8,7 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_PARTITION=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_POLLER=y
@@ -16,7 +17,6 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
diff --git a/arch/mips/configs/ritmix-rzx50_defconfig b/arch/mips/configs/ritmix-rzx50_defconfig
index b143dff..3fb978a 100644
--- a/arch/mips/configs/ritmix-rzx50_defconfig
+++ b/arch/mips/configs/ritmix-rzx50_defconfig
@@ -8,17 +8,17 @@ CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_DEBUG_LL=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADS=y
diff --git a/arch/nios2/configs/generic_defconfig b/arch/nios2/configs/generic_defconfig
index 91d364f..44c040a 100644
--- a/arch/nios2/configs/generic_defconfig
+++ b/arch/nios2/configs/generic_defconfig
@@ -1,30 +1,30 @@
 CONFIG_EARLY_PRINTF=y
 CONFIG_BAUDRATE=9600
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_FLASH=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FLASH=y
 CONFIG_NET=y
-CONFIG_CMD_PING=y
 CONFIG_DRIVER_NET_TSE=y
 CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
diff --git a/arch/ppc/configs/da923rc_defconfig b/arch/ppc/configs/da923rc_defconfig
index f873eb5..6c0a81e 100644
--- a/arch/ppc/configs/da923rc_defconfig
+++ b/arch/ppc/configs/da923rc_defconfig
@@ -1,64 +1,51 @@
 CONFIG_ARCH_MPC85XX=y
 CONFIG_DA923RC=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
-CONFIG_BANNER=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_GETOPT=y
-CONFIG_LONGHELP=y
+CONFIG_MALLOC_SIZE=0x4000000
+CONFIG_RELOCATABLE=y
+CONFIG_PROMPT="GE> "
+CONFIG_BAUDRATE=9600
 CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+# CONFIG_CMD_VERSION is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_BZLIB=y
-CONFIG_ZLIB=y
-CONFIG_BZLIB=y
-CONFIG_CMD_EDIT=y
 CONFIG_CMD_EXPORT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GO=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=n
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_READLINK=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_NET=y
+CONFIG_CMD_GETOPT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
-CONFIG_FS_TFTP=y
 CONFIG_CMD_TFTP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_OFTREE=y
+CONFIG_NET=y
+CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_NET_GIANFAR=y
-CONFIG_CMD_MIITOOL=y
+# CONFIG_SPI is not set
+CONFIG_I2C=y
+CONFIG_I2C_IMX=y
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_1=n
-CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_4=n
+# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
 CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_MTD=y
-CONFIG_MTD_WRITE=y
 CONFIG_MTD_UBI=y
-CONFIG_CMD_UBI=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_UBIFS=y
 CONFIG_FS_UBIFS_COMPRESSION_LZO=y
-CONFIG_CMD_UNLZO=y
-CONFIG_LZO_DECOMPRESS=y
-CONFIG_MALLOC_SIZE=0x4000000
-CONFIG_PROMPT="GE> "
-CONFIG_BAUDRATE=9600
-CONFIG_RELOCATABLE=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_SPI=n
-CONFIG_I2C=y
-CONFIG_I2C_IMX=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_VERSION=n
-CONFIG_OFTREE=y
-CONFIG_CMD_OFTREE_PROBE=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_MEMTEST=y
-CONFIG_CMD_IOMEM=y
+CONFIG_ZLIB=y
+CONFIG_BZLIB=y
diff --git a/arch/ppc/configs/p1010rdb_defconfig b/arch/ppc/configs/p1010rdb_defconfig
index b1f1002..73c02c2 100644
--- a/arch/ppc/configs/p1010rdb_defconfig
+++ b/arch/ppc/configs/p1010rdb_defconfig
@@ -1,54 +1,39 @@
 CONFIG_ARCH_MPC85XX=y
-CONFIG_P1010RDB=y
-CONFIG_P101010=y
-CONFIG_LONGHELP=y
+CONFIG_MALLOC_SIZE=0x4000000
+CONFIG_RELOCATABLE=y
 CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_BZLIB=y
 CONFIG_BOOTM_VERBOSE=y
-CONFIG_ZLIB=y
-CONFIG_BZLIB=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
 CONFIG_CMD_GO=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=n
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_DRIVER_CFI=y
-CONFIG_DRIVER_CFI_AMD=y
-CONFIG_DRIVER_CFI_INTEL=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_1=n
-CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_4=n
-CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_MTD=y
-CONFIG_MTD_WRITE=y
-CONFIG_MALLOC_SIZE=0x4000000
-CONFIG_BAUDRATE=115200
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OFTREE=y
+CONFIG_NET=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_RELOCATABLE=y
 CONFIG_DRIVER_NET_GIANFAR=y
-CONFIG_NET=y
-CONFIG_NET_PING=y
-CONFIG_FS_TFTP=y
-CONFIG_NET_TFTP=y
-CONFIG_CMD_TFTP=y
-CONFIG_PING=y
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_EXPORT=y
-CONFIG_OFTREE=y
-CONFIG_CMD_OFTREE_PROBE=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMTEST=y
+CONFIG_MTD=y
+CONFIG_DRIVER_CFI=y
+# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
+CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_FS_TFTP=y
+CONFIG_ZLIB=y
+CONFIG_BZLIB=y
diff --git a/arch/ppc/configs/p1022ds_defconfig b/arch/ppc/configs/p1022ds_defconfig
index f517708..fce3eab 100644
--- a/arch/ppc/configs/p1022ds_defconfig
+++ b/arch/ppc/configs/p1022ds_defconfig
@@ -1,52 +1,39 @@
 CONFIG_ARCH_MPC85XX=y
 CONFIG_P1022DS=y
-CONFIG_P1022=y
-CONFIG_LONGHELP=y
+CONFIG_MALLOC_SIZE=0x4000000
+CONFIG_RELOCATABLE=y
 CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_BZLIB=y
 CONFIG_BOOTM_VERBOSE=y
-CONFIG_ZLIB=y
-CONFIG_BZLIB=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_RESET=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
 CONFIG_CMD_GO=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=n
+CONFIG_CMD_RESET=y
+CONFIG_CMD_EXPORT=y
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_FSL_ELBC=y
-CONFIG_DRIVER_CFI=y
-CONFIG_DRIVER_CFI_AMD=y
-CONFIG_DRIVER_CFI_INTEL=n
-CONFIG_DRIVER_CFI_BANK_WIDTH_1=n
-CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_4=n
-CONFIG_MTD=y
-CONFIG_MTD_WRITE=y
-CONFIG_MALLOC_SIZE=0x4000000
-CONFIG_BAUDRATE=115200
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_RELOCATABLE=y
-CONFIG_DRIVER_NET_GIANFAR=y
-CONFIG_NET=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_PING=y
-CONFIG_FS_TFTP=y
-CONFIG_NET_TFTP=y
 CONFIG_CMD_TFTP=y
-CONFIG_PING=y
-CONFIG_I2C=y
-CONFIG_I2C_IMX=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_I2C=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_EXPORT=y
-CONFIG_OFTREE=y
-CONFIG_CMD_OFTREE_PROBE=y
-CONFIG_CMD_OFTREE=y
 CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_OFTREE=y
+CONFIG_NET=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_NET_GIANFAR=y
+CONFIG_I2C=y
+CONFIG_I2C_IMX=y
+CONFIG_MTD=y
+CONFIG_DRIVER_CFI=y
+# CONFIG_DRIVER_CFI_INTEL is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
+CONFIG_FS_TFTP=y
+CONFIG_ZLIB=y
+CONFIG_BZLIB=y
diff --git a/arch/ppc/configs/p2020rdb_defconfig b/arch/ppc/configs/p2020rdb_defconfig
index d0b11b4..6cc0328 100644
--- a/arch/ppc/configs/p2020rdb_defconfig
+++ b/arch/ppc/configs/p2020rdb_defconfig
@@ -1,54 +1,42 @@
 CONFIG_ARCH_MPC85XX=y
 CONFIG_P2020RDB=y
-CONFIG_P2020=y
-CONFIG_LONGHELP=y
+CONFIG_MALLOC_SIZE=0x2800000
+CONFIG_RELOCATABLE=y
 CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_CMD_SLEEP=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+# CONFIG_CMD_VERSION is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_BZLIB=y
-CONFIG_ZLIB=y
-CONFIG_BZLIB=y
-CONFIG_CMD_EDIT=y
 CONFIG_CMD_EXPORT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=n
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_READLINK=y
-CONFIG_FSL_ELBC=y
-CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_DRIVER_CFI=y
-CONFIG_DRIVER_CFI_AMD=y
-CONFIG_DRIVER_CFI_INTEL=n
-CONFIG_DRIVER_CFI_BANK_WIDTH_1=n
-CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_4=n
-CONFIG_MTD=y
-CONFIG_MALLOC_SIZE=0x2800000
-CONFIG_BAUDRATE=115200
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_RELOCATABLE=y
-CONFIG_DRIVER_NET_GIANFAR=y
-CONFIG_NET=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_PING=y
-CONFIG_FS_TFTP=y
-CONFIG_NET_TFTP=y
 CONFIG_CMD_TFTP=y
-CONFIG_PING=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_OFTREE=y
+CONFIG_NET=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_NET_GIANFAR=y
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_MEMTEST=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_VERSION=n
-CONFIG_OFTREE=y
-CONFIG_CMD_OFTREE_PROBE=y
-CONFIG_CMD_OFTREE=y
\ No newline at end of file
+CONFIG_MTD=y
+CONFIG_DRIVER_CFI=y
+# CONFIG_DRIVER_CFI_INTEL is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
+CONFIG_FS_TFTP=y
+CONFIG_ZLIB=y
+CONFIG_BZLIB=y
diff --git a/arch/ppc/configs/pcm030_defconfig b/arch/ppc/configs/pcm030_defconfig
index 96f35a1..bd83ff4 100644
--- a/arch/ppc/configs/pcm030_defconfig
+++ b/arch/ppc/configs/pcm030_defconfig
@@ -3,6 +3,7 @@ CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/ppc/boards/pcm030/env"
@@ -10,7 +11,6 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_REGINFO=y
-CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index d82579b..c20dd15 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -94,10 +94,4 @@ CONFIG_BAREBOX_LOGO_240=y
 CONFIG_BAREBOX_LOGO_320=y
 CONFIG_BAREBOX_LOGO_400=y
 CONFIG_BAREBOX_LOGO_640=y
-CONFIG_DIGEST_MD5_GENERIC=y
-CONFIG_DIGEST_SHA1_GENERIC=y
-CONFIG_DIGEST_SHA224_GENERIC=y
-CONFIG_DIGEST_SHA256_GENERIC=y
-CONFIG_DIGEST_SHA384_GENERIC=y
-CONFIG_DIGEST_SHA512_GENERIC=y
 CONFIG_DIGEST_HMAC_GENERIC=y
diff --git a/arch/x86/configs/generic_defconfig b/arch/x86/configs/generic_defconfig
index 57161f4..5ff7f53 100644
--- a/arch/x86/configs/generic_defconfig
+++ b/arch/x86/configs/generic_defconfig
@@ -1,31 +1,26 @@
 CONFIG_X86_HDBOOT=y
 CONFIG_STACK_SIZE=0x7000
-CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
-CONFIG_PROMPT="barebox:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/x86/boards/x86_generic/env"
 CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-# CONFIG_CMD_TRUE is not set
-# CONFIG_CMD_FALSE is not set
+CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTM is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+# CONFIG_CMD_FALSE is not set
+CONFIG_CMD_SLEEP=y
+# CONFIG_CMD_TRUE is not set
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 # CONFIG_SPI is not set
-CONFIG_ATA=y
-CONFIG_ATA_DISK=y
-CONFIG_ATA_BIOS=y
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
