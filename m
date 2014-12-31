Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x233.google.com ([2607:f8b0:400e:c02::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y6MTc-0007N8-4E
 for barebox@lists.infradead.org; Wed, 31 Dec 2014 16:50:29 +0000
Received: by mail-pd0-f179.google.com with SMTP id fp1so21196502pdb.38
 for <barebox@lists.infradead.org>; Wed, 31 Dec 2014 08:50:06 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 31 Dec 2014 08:49:50 -0800
Message-Id: <1420044590-26343-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [RFC, PATCH] i.MX6: phytec: Do not hardcode default environment
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

By default i.MX6 phytec image hardcodes its default environment in
initialization code. Define phytec specific defonfig and use
CONFIG_DEFAULT_ENVIRONMENT_PATH instead.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Not sure how much of a faux pas adding a new defconfig file is, but I
couldn't think of a better alternative. What I was trying to achive is
being able to build an image for a custom Phytec SoM based platform
that would have a completely custom envirnoment and would not pull in
default phytec stuff.

Let me know if this is a right approach.

Thank you.

 arch/arm/boards/phytec-phyflex-imx6/Makefile   |   1 -
 arch/arm/boards/phytec-phyflex-imx6/board.c    |   2 -
 arch/arm/configs/phytec_phyflex_imx6_defconfig | 705 +++++++++++++++++++++++++
 3 files changed, 705 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/configs/phytec_phyflex_imx6_defconfig

diff --git a/arch/arm/boards/phytec-phyflex-imx6/Makefile b/arch/arm/boards/phytec-phyflex-imx6/Makefile
index 11e1c7d..01c7a25 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/Makefile
+++ b/arch/arm/boards/phytec-phyflex-imx6/Makefile
@@ -1,3 +1,2 @@
 obj-y += board.o
 lwl-y += lowlevel.o
-bbenv-y += defaultenv-phyflex-imx6
diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
index 1551460..3f52680 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/board.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
@@ -87,8 +87,6 @@ static int phytec_pfla02_init(void)
 		break;
 	}
 
-	defaultenv_append_directory(defaultenv_phyflex_imx6);
-
 	return 0;
 }
 device_initcall(phytec_pfla02_init);
diff --git a/arch/arm/configs/phytec_phyflex_imx6_defconfig b/arch/arm/configs/phytec_phyflex_imx6_defconfig
new file mode 100644
index 0000000..f88dccd
--- /dev/null
+++ b/arch/arm/configs/phytec_phyflex_imx6_defconfig
@@ -0,0 +1,705 @@
+#
+# Automatically generated file; DO NOT EDIT.
+# Barebox/arm 2014.12.0 Configuration
+#
+CONFIG_ARM=y
+CONFIG_ARM_LINUX=y
+
+#
+# System Type
+#
+# CONFIG_ARCH_AT91 is not set
+# CONFIG_ARCH_BCM2835 is not set
+# CONFIG_ARCH_CLPS711X is not set
+# CONFIG_ARCH_DAVINCI is not set
+# CONFIG_ARCH_DIGIC is not set
+# CONFIG_ARCH_EP93XX is not set
+# CONFIG_ARCH_HIGHBANK is not set
+CONFIG_ARCH_IMX=y
+# CONFIG_ARCH_MVEBU is not set
+# CONFIG_ARCH_MXS is not set
+# CONFIG_ARCH_NETX is not set
+# CONFIG_ARCH_NOMADIK is not set
+# CONFIG_ARCH_OMAP is not set
+# CONFIG_ARCH_PXA is not set
+# CONFIG_ARCH_ROCKCHIP is not set
+# CONFIG_ARCH_SOCFPGA is not set
+# CONFIG_ARCH_S3C24xx is not set
+# CONFIG_ARCH_S5PCxx is not set
+# CONFIG_ARCH_S3C64xx is not set
+# CONFIG_ARCH_VERSATILE is not set
+# CONFIG_ARCH_VEXPRESS is not set
+# CONFIG_ARCH_TEGRA is not set
+# CONFIG_ARCH_UEMD is not set
+# CONFIG_ARCH_ZYNQ is not set
+
+#
+# Processor Type
+#
+CONFIG_CPU_32=y
+CONFIG_CPU_V7=y
+CONFIG_CPU_32v7=y
+
+#
+# processor features
+#
+# CONFIG_BOOT_ENDIANNESS_SWITCH is not set
+CONFIG_ARCH_TEXT_BASE=0x97f00000
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xffffffff
+CONFIG_ARCH_IMX_IMXIMAGE=y
+CONFIG_BAREBOX_UPDATE_IMX6_NAND=y
+
+#
+# Freescale i.MX System-on-Chip
+#
+CONFIG_ARCH_IMX51=y
+CONFIG_ARCH_IMX53=y
+CONFIG_ARCH_IMX6=y
+CONFIG_ARCH_IMX6SX=y
+CONFIG_IMX_MULTI_BOARDS=y
+# CONFIG_MACH_TX25 is not set
+# CONFIG_MACH_PCA100 is not set
+# CONFIG_MACH_PCM038 is not set
+CONFIG_MACH_EFIKA_MX_SMARTBOOK=y
+CONFIG_MACH_EMBEDSKY_E9=y
+CONFIG_MACH_FREESCALE_MX51_PDK=y
+CONFIG_MACH_FREESCALE_MX53_LOCO=y
+CONFIG_MACH_TQMA53=y
+CONFIG_MACH_FREESCALE_MX53_VMX53=y
+CONFIG_MACH_PCAAXL3=y
+CONFIG_MACH_PHYTEC_PFLA02=y
+CONFIG_MACH_DFI_FS700_M60=y
+CONFIG_MACH_GUF_SANTARO=y
+CONFIG_MACH_REALQ7=y
+CONFIG_MACH_GK802=y
+CONFIG_MACH_TQMA6X=y
+CONFIG_MACH_TX6X=y
+CONFIG_MACH_SABRELITE=y
+CONFIG_MACH_SABRESD=y
+CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB=y
+CONFIG_MACH_NITROGEN6X=y
+CONFIG_MACH_SOLIDRUN_MICROSOM=y
+CONFIG_MACH_EMBEST_RIOTBOARD=y
+CONFIG_MACH_UDOO=y
+CONFIG_MACH_VARISCITE_MX6=y
+CONFIG_MACH_GW_VENTANA=y
+
+#
+# Board specific settings
+#
+
+#
+# i.MX specific settings
+#
+# CONFIG_ARCH_IMX_USBLOADER is not set
+CONFIG_IMX_IIM=y
+CONFIG_IMX_IIM_FUSE_BLOW=y
+CONFIG_IMX_OCOTP=y
+# CONFIG_IMX_OCOTP_WRITE is not set
+CONFIG_ARM_ASM_UNIFIED=y
+CONFIG_AEABI=y
+CONFIG_THUMB2_BAREBOX=y
+# CONFIG_ARM_BOARD_APPEND_ATAG is not set
+
+#
+# ARM specific settings
+#
+# CONFIG_CPU_V7_DCACHE_SKIP is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_EXCEPTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_DEFCONFIG_LIST="$ARCH_DEFCONFIG"
+CONFIG_GREGORIAN_CALENDER=y
+CONFIG_HAS_KALLSYMS=y
+CONFIG_HAS_MODULES=y
+CONFIG_ENV_HANDLING=y
+CONFIG_HAS_CACHE=y
+CONFIG_HAS_DMA=y
+CONFIG_GENERIC_GPIO=y
+CONFIG_BOOTM=y
+CONFIG_BLOCK=y
+CONFIG_BLOCK_WRITE=y
+CONFIG_FILETYPE=y
+CONFIG_BINFMT=y
+CONFIG_UIMAGE=y
+CONFIG_LOGBUF=y
+CONFIG_GLOBALVAR=y
+CONFIG_STDDEV=y
+CONFIG_BAREBOX_UPDATE=y
+CONFIG_MENUTREE=y
+CONFIG_FILE_LIST=y
+
+#
+# General Settings
+#
+CONFIG_LOCALVERSION=""
+CONFIG_LOCALVERSION_AUTO=y
+CONFIG_BANNER=y
+CONFIG_MEMINFO=y
+CONFIG_ENVIRONMENT_VARIABLES=y
+
+#
+# memory layout
+#
+CONFIG_HAVE_PBL_IMAGE=y
+CONFIG_HAVE_PBL_MULTI_IMAGES=y
+CONFIG_HAVE_IMAGE_COMPRESSION=y
+CONFIG_PBL_IMAGE=y
+CONFIG_PBL_MULTI_IMAGES=y
+CONFIG_PBL_RELOCATABLE=y
+CONFIG_IMAGE_COMPRESSION=y
+# CONFIG_IMAGE_COMPRESSION_LZ4 is not set
+CONFIG_IMAGE_COMPRESSION_LZO=y
+# CONFIG_IMAGE_COMPRESSION_GZIP is not set
+# CONFIG_IMAGE_COMPRESSION_XZKERN is not set
+# CONFIG_IMAGE_COMPRESSION_NONE is not set
+CONFIG_MMU=y
+CONFIG_MMU_EARLY=y
+CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
+CONFIG_TEXT_BASE=0x0
+CONFIG_BAREBOX_MAX_PBL_SIZE=0xffffffff
+CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0xffffffff
+CONFIG_STACK_SIZE=0x8000
+CONFIG_MALLOC_SIZE=0x0
+# CONFIG_EXPERIMENTAL is not set
+# CONFIG_MALLOC_DLMALLOC is not set
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
+# CONFIG_PANIC_HANG is not set
+CONFIG_PROMPT="barebox:"
+CONFIG_BAUDRATE=115200
+CONFIG_CBSIZE=1024
+CONFIG_SHELL_HUSH=y
+# CONFIG_SHELL_SIMPLE is not set
+# CONFIG_SHELL_NONE is not set
+CONFIG_GLOB=y
+CONFIG_GLOB_SORT=y
+CONFIG_PROMPT_HUSH_PS2="> "
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+# CONFIG_PASSWORD is not set
+CONFIG_DYNAMIC_CRC_TABLE=y
+CONFIG_ERRNO_MESSAGES=y
+CONFIG_TIMESTAMP=y
+CONFIG_BLSPEC=y
+CONFIG_IMD=y
+# CONFIG_IMD_TARGET is not set
+# CONFIG_KERNEL_INSTALL_TARGET is not set
+CONFIG_CONSOLE_FULL=y
+# CONFIG_CONSOLE_SIMPLE is not set
+# CONFIG_CONSOLE_NONE is not set
+# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+# CONFIG_CONSOLE_ACTIVATE_ALL is not set
+CONFIG_CONSOLE_ACTIVATE_NONE=y
+CONFIG_PARTITION=y
+CONFIG_PARTITION_DISK=y
+CONFIG_PARTITION_DISK_DOS=y
+CONFIG_PARTITION_DISK_EFI=y
+CONFIG_PARTITION_DISK_EFI_GPT_NO_FORCE=y
+CONFIG_PARTITION_DISK_EFI_GPT_COMPARE=y
+CONFIG_DEFAULT_ENVIRONMENT=y
+# CONFIG_DEFAULT_COMPRESSION_LZO is not set
+CONFIG_DEFAULT_COMPRESSION_NONE=y
+CONFIG_HAVE_DEFAULT_ENVIRONMENT_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6"
+# CONFIG_BAREBOXENV_TARGET is not set
+# CONFIG_BAREBOXCRC32_TARGET is not set
+CONFIG_POLLER=y
+CONFIG_RESET_SOURCE=y
+
+#
+# Debugging
+#
+CONFIG_COMPILE_LOGLEVEL=6
+CONFIG_DEFAULT_LOGLEVEL=7
+# CONFIG_DEBUG_INFO is not set
+# CONFIG_DEBUG_LL is not set
+CONFIG_DEBUG_IMX_UART_PORT=1
+# CONFIG_DEBUG_INITCALLS is not set
+CONFIG_HAS_DEBUG_LL=y
+CONFIG_COMMAND_SUPPORT=y
+# CONFIG_HAS_POWEROFF is not set
+CONFIG_COMPILE_DIGEST=y
+CONFIG_COMPILE_MEMORY=y
+
+#
+# Commands
+#
+
+#
+# Information
+#
+CONFIG_CMD_ARM_CPUINFO=y
+CONFIG_CMD_DEVINFO=y
+CONFIG_CMD_DMESG=y
+CONFIG_CMD_DRVINFO=y
+CONFIG_CMD_HELP=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_CMD_REGULATOR=y
+CONFIG_CMD_VERSION=y
+
+#
+# Boot
+#
+CONFIG_FLEXIBLE_BOOTARGS=y
+CONFIG_CMD_BOOT=y
+CONFIG_CMD_BOOTM=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+# CONFIG_CMD_BOOTM_AIMAGE is not set
+# CONFIG_CMD_BOOTU is not set
+# CONFIG_CMD_BOOTZ is not set
+CONFIG_CMD_GO=y
+# CONFIG_CMD_LOADB is not set
+# CONFIG_CMD_LOADS is not set
+# CONFIG_CMD_LOADY is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+
+#
+# Partition
+#
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_AUTOMOUNT=y
+CONFIG_CMD_MOUNT=y
+CONFIG_CMD_UBI=y
+CONFIG_CMD_UBIFORMAT=y
+CONFIG_CMD_UMOUNT=y
+
+#
+# Environment
+#
+CONFIG_CMD_NV=y
+CONFIG_CMD_EXPORT=y
+# CONFIG_CMD_DEFAULTENV is not set
+CONFIG_CMD_GLOBAL=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+
+#
+# File
+#
+CONFIG_CMD_BASENAME=y
+CONFIG_CMD_CAT=y
+CONFIG_CMD_CD=y
+CONFIG_CMD_CP=y
+# CONFIG_CMD_CMP is not set
+CONFIG_CMD_DIRNAME=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_LS=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_MKDIR=y
+CONFIG_CMD_PWD=y
+CONFIG_CMD_READLINK=y
+CONFIG_CMD_RM=y
+CONFIG_CMD_RMDIR=y
+# CONFIG_CMD_SHA1SUM is not set
+# CONFIG_CMD_SHA224SUM is not set
+# CONFIG_CMD_SHA256SUM is not set
+CONFIG_CMD_UNCOMPRESS=y
+
+#
+# Shell scripting
+#
+CONFIG_CMD_FALSE=y
+CONFIG_CMD_GETOPT=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_TEST=y
+CONFIG_CMD_TRUE=y
+
+#
+# Network
+#
+CONFIG_CMD_DHCP=y
+# CONFIG_CMD_HOST is not set
+CONFIG_NET_CMD_IFUP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+
+#
+# Console and Framebuffer interaction
+#
+CONFIG_CMD_CLEAR=y
+CONFIG_CMD_ECHO=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+# CONFIG_CMD_LOGIN is not set
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_MENUTREE=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+
+#
+# Memory
+#
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MD=y
+CONFIG_CMD_MEMCMP=y
+CONFIG_CMD_MEMCPY=y
+CONFIG_CMD_MEMSET=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_MW=y
+
+#
+# Hardware manipulation
+#
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_NAND=y
+# CONFIG_CMD_NANDTEST is not set
+CONFIG_CMD_SPI=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_USB=y
+CONFIG_CMD_USBGADGET=y
+CONFIG_CMD_WD=y
+CONFIG_CMD_WD_DEFAULT_TIMOUT=0
+
+#
+# Miscellaneous
+#
+# CONFIG_CMD_2048 is not set
+CONFIG_CMD_BAREBOX_UPDATE=y
+# CONFIG_CMD_FIRMWARELOAD is not set
+CONFIG_CMD_OF_DUMP=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+# CONFIG_CMD_OF_DISPLAY_TIMINGS is not set
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+# CONFIG_NET_NFS is not set
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
+CONFIG_NET_IFUP=y
+
+#
+# Drivers
+#
+CONFIG_OFTREE=y
+CONFIG_OFTREE_MEM_GENERIC=y
+CONFIG_DTC=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_NET=y
+CONFIG_OF_GPIO=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+
+#
+# serial drivers
+#
+# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
+CONFIG_DRIVER_SERIAL_IMX=y
+# CONFIG_DRIVER_SERIAL_NS16550 is not set
+# CONFIG_DRIVER_SERIAL_CADENCE is not set
+CONFIG_ARCH_HAS_FEC_IMX=y
+CONFIG_PHYLIB=y
+
+#
+# Network drivers
+#
+# CONFIG_DRIVER_NET_ARC_EMAC is not set
+# CONFIG_DRIVER_NET_CALXEDA_XGMAC is not set
+# CONFIG_DRIVER_NET_DESIGNWARE is not set
+# CONFIG_DRIVER_NET_ENC28J60 is not set
+CONFIG_DRIVER_NET_FEC_IMX=y
+# CONFIG_DRIVER_NET_KS8851_MLL is not set
+# CONFIG_DRIVER_NET_MICREL is not set
+# CONFIG_DRIVER_NET_SMC911X is not set
+# CONFIG_DRIVER_NET_SMC91111 is not set
+
+#
+# phylib
+#
+
+#
+# MII PHY device drivers
+#
+CONFIG_AT803X_PHY=y
+# CONFIG_LXT_PHY is not set
+# CONFIG_MARVELL_PHY is not set
+CONFIG_MICREL_PHY=y
+# CONFIG_NATIONAL_PHY is not set
+# CONFIG_SMSC_PHY is not set
+
+#
+# MII bus device drivers
+#
+CONFIG_NET_USB=y
+CONFIG_NET_USB_ASIX=y
+CONFIG_NET_USB_SMSC95XX=y
+
+#
+# SPI drivers
+#
+CONFIG_SPI=y
+CONFIG_DRIVER_SPI_IMX=y
+CONFIG_DRIVER_SPI_IMX_0_7=y
+CONFIG_DRIVER_SPI_IMX_2_3=y
+CONFIG_I2C=y
+
+#
+# I2C Hardware Bus support
+#
+# CONFIG_I2C_GPIO is not set
+CONFIG_I2C_IMX=y
+# CONFIG_I2C_MV64XXX is not set
+CONFIG_MTD=y
+CONFIG_MTD_WRITE=y
+CONFIG_MTD_OOB_DEVICE=y
+CONFIG_MTD_RAW_DEVICE=y
+
+#
+# Self contained MTD devices
+#
+CONFIG_MTD_DATAFLASH=y
+# CONFIG_MTD_DATAFLASH_WRITE_VERIFY is not set
+CONFIG_MTD_M25P80=y
+CONFIG_MTD_SST25L=y
+# CONFIG_MTD_DOCG3 is not set
+# CONFIG_MTD_MTDRAM is not set
+# CONFIG_DRIVER_CFI is not set
+CONFIG_NAND=y
+CONFIG_NAND_ECC_SOFT=y
+# CONFIG_NAND_ECC_BCH is not set
+CONFIG_NAND_ECC_HW=y
+# CONFIG_NAND_ECC_HW_OOB_FIRST is not set
+CONFIG_NAND_ECC_HW_SYNDROME=y
+CONFIG_NAND_ECC_HW_NONE=y
+CONFIG_NAND_INFO=y
+CONFIG_NAND_READ_OOB=y
+CONFIG_NAND_BBT=y
+CONFIG_NAND_ALLOW_ERASE_BAD=y
+CONFIG_NAND_IMX=y
+CONFIG_NAND_IMX_BBM=y
+CONFIG_NAND_MXS=y
+# CONFIG_MTD_NAND_ECC_SMC is not set
+CONFIG_MTD_NAND_IDS=y
+CONFIG_MTD_UBI=y
+CONFIG_MTD_UBI_WL_THRESHOLD=4096
+CONFIG_MTD_UBI_BEB_LIMIT=20
+CONFIG_MTD_UBI_FASTMAP=y
+CONFIG_DISK=y
+CONFIG_DISK_IDE_SFF=y
+CONFIG_DISK_WRITE=y
+
+#
+# drive types
+#
+CONFIG_DISK_ATA=y
+CONFIG_DISK_AHCI=y
+CONFIG_DISK_AHCI_IMX=y
+
+#
+# interface types
+#
+CONFIG_DISK_INTF_PLATFORM_IDE=y
+CONFIG_DISK_PATA_IMX=y
+CONFIG_USB=y
+CONFIG_USB_HOST=y
+CONFIG_USB_IMX_CHIPIDEA=y
+CONFIG_USB_IMX_PHY=y
+CONFIG_USB_EHCI=y
+# CONFIG_USB_XHCI is not set
+CONFIG_USB_ULPI=y
+CONFIG_USB_STORAGE=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DUALSPEED=y
+CONFIG_USB_GADGET_DRIVER_ARC=y
+
+#
+# USB Gadget drivers
+#
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_USB_GADGET_FASTBOOT=y
+# CONFIG_USB_MUSB is not set
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_IMX_IPUV3=y
+CONFIG_DRIVER_VIDEO_IMX_IPUV3_LVDS=y
+CONFIG_DRIVER_VIDEO_IMX_IPUV3_HDMI=y
+CONFIG_DRIVER_VIDEO_SIMPLEFB=y
+CONFIG_DRIVER_VIDEO_EDID=y
+CONFIG_MCI=y
+
+#
+# --- Feature list ---
+#
+# CONFIG_MCI_STARTUP is not set
+CONFIG_MCI_INFO=y
+CONFIG_MCI_WRITE=y
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+
+#
+# --- MCI host drivers ---
+#
+# CONFIG_MCI_DW is not set
+CONFIG_MCI_IMX_ESDHC=y
+# CONFIG_MCI_IMX_ESDHC_PIO is not set
+# CONFIG_MCI_SPI is not set
+CONFIG_HAVE_CLK=y
+CONFIG_CLKDEV_LOOKUP=y
+CONFIG_COMMON_CLK=y
+CONFIG_COMMON_CLK_OF_PROVIDER=y
+CONFIG_CLOCKSOURCE_DUMMY_RATE=1000
+
+#
+# MFD
+#
+# CONFIG_MFD_ACT8846 is not set
+# CONFIG_MFD_LP3972 is not set
+CONFIG_MFD_MC13XXX=y
+CONFIG_MFD_MC34704=y
+CONFIG_MFD_MC9SDZ60=y
+CONFIG_MFD_STMPE=y
+# CONFIG_MFD_SYSCON is not set
+# CONFIG_MFD_TWL4030 is not set
+# CONFIG_MFD_TWL6030 is not set
+
+#
+# Misc devices
+#
+# CONFIG_JTAG is not set
+# CONFIG_SRAM is not set
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+# CONFIG_LED_PWM is not set
+# CONFIG_LED_GPIO_OF is not set
+# CONFIG_LED_GPIO_RGB is not set
+# CONFIG_LED_GPIO_BICOLOR is not set
+CONFIG_LED_TRIGGERS=y
+
+#
+# EEPROM support
+#
+CONFIG_EEPROM_AT25=y
+CONFIG_EEPROM_AT24=y
+
+#
+# Input device support
+#
+CONFIG_KEYBOARD_GPIO=y
+# CONFIG_KEYBOARD_IMX_KEYPAD is not set
+# CONFIG_KEYBOARD_QT1070 is not set
+CONFIG_WATCHDOG_IMX_RESET_SOURCE=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_IMX=y
+CONFIG_PWM=y
+CONFIG_PWM_IMX=y
+
+#
+# DMA support
+#
+CONFIG_MXS_APBH_DMA=y
+CONFIG_GPIOLIB=y
+
+#
+# GPIO
+#
+# CONFIG_GPIO_GENERIC_PLATFORM is not set
+CONFIG_GPIO_IMX=y
+# CONFIG_GPIO_OMAP is not set
+# CONFIG_GPIO_PCA953X is not set
+CONFIG_GPIO_STMPE=y
+# CONFIG_GPIO_DESIGNWARE is not set
+# CONFIG_W1 is not set
+CONFIG_PINCTRL=y
+CONFIG_PINCTRL_IMX_IOMUX_V3=y
+# CONFIG_PINCTRL_SINGLE is not set
+
+#
+# Bus devices
+#
+# CONFIG_IMX_WEIM is not set
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED=y
+# CONFIG_RESET_CONTROLLER is not set
+# CONFIG_RTC_CLASS is not set
+
+#
+# Firmware Drivers
+#
+# CONFIG_FIRMWARE_ALTERA_SERIAL is not set
+
+#
+# PHY Subsystem
+#
+# CONFIG_GENERIC_PHY is not set
+
+#
+# Filesystem support
+#
+CONFIG_FS=y
+CONFIG_FS_AUTOMOUNT=y
+# CONFIG_FS_CRAMFS is not set
+CONFIG_FS_EXT4=y
+CONFIG_FS_RAMFS=y
+CONFIG_FS_DEVFS=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_FS_UBIFS=y
+CONFIG_FS_UBIFS_COMPRESSION_LZO=y
+# CONFIG_FS_UBIFS_COMPRESSION_ZLIB is not set
+# CONFIG_FS_BPKFS is not set
+# CONFIG_FS_UIMAGEFS is not set
+
+#
+# Library routines
+#
+CONFIG_PARAMETER=y
+CONFIG_UNCOMPRESS=y
+# CONFIG_ZLIB is not set
+# CONFIG_BZLIB is not set
+# CONFIG_LZ4_DECOMPRESS is not set
+# CONFIG_XZ_DECOMPRESS is not set
+# CONFIG_GENERIC_FIND_NEXT_BIT is not set
+CONFIG_PROCESS_ESCAPE_SEQUENCE=y
+CONFIG_LZO_DECOMPRESS=y
+CONFIG_QSORT=y
+CONFIG_LIBSCAN=y
+CONFIG_LIBUBIGEN=y
+CONFIG_LIBMTD=y
+CONFIG_STMP_DEVICE=y
+
+#
+# Library gui routines
+#
+CONFIG_IMAGE_RENDERER=y
+# CONFIG_BMP is not set
+# CONFIG_PNG is not set
+CONFIG_CRC32=y
+CONFIG_DIGEST=y
+CONFIG_MD5=y
+# CONFIG_SHA1 is not set
+# CONFIG_SHA224 is not set
+# CONFIG_SHA256 is not set
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
