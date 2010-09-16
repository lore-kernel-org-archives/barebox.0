Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Ow7Hd-00034u-6E
	for barebox@lists.infradead.org; Thu, 16 Sep 2010 05:45:31 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 16 Sep 2010 07:44:11 +0200
Message-Id: <1284615851-16584-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] configs: use new savedefconfig format as in linux
To: barebox@lists.infradead.org

this will reduce and simplify defconfigs maintainance
it will also save some disk space

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/configs/a9m2410_defconfig                 |  203 ------------------
 arch/arm/configs/a9m2440_defconfig                 |  204 ------------------
 arch/arm/configs/at91sam9260ek_defconfig           |  195 -----------------
 arch/arm/configs/at91sam9263ek_defconfig           |  200 -----------------
 arch/arm/configs/edb93xx_defconfig                 |  204 ------------------
 arch/arm/configs/eukrea_cpuimx25_defconfig         |  210 ------------------
 arch/arm/configs/eukrea_cpuimx27_defconfig         |  221 -------------------
 arch/arm/configs/eukrea_cpuimx35_defconfig         |  215 -------------------
 arch/arm/configs/freescale_mx25_3stack_defconfig   |  210 ------------------
 arch/arm/configs/freescale_mx35_3stack_defconfig   |  210 ------------------
 arch/arm/configs/mmccpu_defconfig                  |  196 -----------------
 arch/arm/configs/mx21ads_defconfig                 |  210 ------------------
 arch/arm/configs/mx27ads_defconfig                 |  210 ------------------
 arch/arm/configs/neso_defconfig                    |  211 ------------------
 arch/arm/configs/netx_nxdb500_defconfig            |  194 -----------------
 arch/arm/configs/nhk8815_defconfig                 |  191 -----------------
 .../configs/omap3430_sdp3430_per_uart_defconfig    |  182 ----------------
 arch/arm/configs/omap3530_beagle_defconfig         |  206 ------------------
 .../arm/configs/omap3530_beagle_per_uart_defconfig |  183 ----------------
 arch/arm/configs/omap3_evm_defconfig               |  186 ----------------
 arch/arm/configs/pca100_defconfig                  |  211 ------------------
 arch/arm/configs/pcm037_defconfig                  |  224 --------------------
 arch/arm/configs/pcm038_defconfig                  |  218 -------------------
 arch/arm/configs/pcm043_defconfig                  |  221 -------------------
 arch/arm/configs/pm9263_defconfig                  |  199 -----------------
 arch/arm/configs/scb9328_defconfig                 |  219 -------------------
 arch/blackfin/configs/ipe337_defconfig             |  157 --------------
 .../m68k/configs/phycore_kpukdr1_5475num_defconfig |  162 +--------------
 arch/m68k/configs/phycore_mcf54xx_defconfig        |  162 +--------------
 arch/ppc/configs/pcm030_defconfig                  |  173 ---------------
 arch/sandbox/configs/sandbox_defconfig             |  137 ------------
 arch/x86/configs/generic_defconfig                 |  155 --------------
 32 files changed, 2 insertions(+), 6277 deletions(-)

diff --git a/arch/arm/configs/a9m2410_defconfig b/arch/arm/configs/a9m2410_defconfig
index e9fa74c..57e73c7 100644
--- a/arch/arm/configs/a9m2410_defconfig
+++ b/arch/arm/configs/a9m2410_defconfig
@@ -1,122 +1,16 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc10
-# Fri Dec 18 11:46:05 2009
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_IMX is not set
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
 CONFIG_ARCH_S3C24xx=y
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_ARM920T=y
-CONFIG_CPU_32v4T=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0x31fc0000
-CONFIG_BOARDINFO="Digi A9M2410"
-CONFIG_CPU_S3C2410=y
-CONFIG_MACH_A9M2410=y
-# CONFIG_MACH_A9M2440 is not set
-
-#
-# Board specific settings
-#
-
-#
-# S3C24X0 Features
-#
-CONFIG_S3C24XX_LOW_LEVEL_INIT=y
-CONFIG_S3C24XX_PLL_INIT=y
-CONFIG_S3C24XX_SDRAM_INIT=y
 CONFIG_S3C24XX_NAND_BOOT=y
-# CONFIG_AEABI is not set
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
-CONFIG_CMDLINE_TAG=y
-CONFIG_SETUP_MEMORY_TAGS=y
-# CONFIG_INITRD_TAG is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
-CONFIG_TEXT_BASE=0x31fc0000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
 CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
-# CONFIG_MODULES is not set
-# CONFIG_KALLSYMS is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_PROMPT="barebox:"
 CONFIG_BAUDRATE=38400
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/a9m2410/env"
-
-#
-# Debugging
-#
 CONFIG_DEBUG_INFO=y
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -124,114 +18,17 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
-# CONFIG_CMD_LOADY is not set
-# CONFIG_CMD_LOADS is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
-# CONFIG_CMD_MTEST_ALTERNATIVE is not set
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
-# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_RARP is not set
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_DRIVER_SERIAL_S3C24X0=y
-# CONFIG_DRIVER_SERIAL_S3C24X0_AUTOSYNC is not set
-CONFIG_MIIDEV=y
-
-#
-# Network drivers
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
 CONFIG_DRIVER_NET_SMC91111=y
-
-#
-# SPI drivers
-#
 # CONFIG_SPI is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
-# CONFIG_DRIVER_CFI is not set
-# CONFIG_DRIVER_CFI_OLD is not set
-CONFIG_NAND=y
-CONFIG_NAND_S3C24X0=y
-# CONFIG_MTD_NAND_VERIFY_WRITE is not set
-# CONFIG_MTD_NAND_ECC_SMC is not set
-CONFIG_MTD_NAND_IDS=y
-# CONFIG_MTD_NAND_DISKONCHIP is not set
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
diff --git a/arch/arm/configs/a9m2440_defconfig b/arch/arm/configs/a9m2440_defconfig
index b7a26bc..ae7f523 100644
--- a/arch/arm/configs/a9m2440_defconfig
+++ b/arch/arm/configs/a9m2440_defconfig
@@ -1,123 +1,18 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc10
-# Fri Dec 18 11:46:15 2009
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_IMX is not set
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
 CONFIG_ARCH_S3C24xx=y
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_ARM920T=y
-CONFIG_CPU_32v4T=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0x31fc0000
-CONFIG_BOARDINFO="Digi A9M2440"
-CONFIG_CPU_S3C2440=y
-# CONFIG_MACH_A9M2410 is not set
 CONFIG_MACH_A9M2440=y
-
-#
-# Board specific settings
-#
-CONFIG_MACH_A9M2410DEV=y
-
-#
-# S3C24X0 Features
-#
-CONFIG_S3C24XX_LOW_LEVEL_INIT=y
-CONFIG_S3C24XX_PLL_INIT=y
 CONFIG_S3C24XX_SDRAM_INIT=y
 CONFIG_S3C24XX_NAND_BOOT=y
-# CONFIG_AEABI is not set
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
-CONFIG_CMDLINE_TAG=y
-CONFIG_SETUP_MEMORY_TAGS=y
-# CONFIG_INITRD_TAG is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
-CONFIG_TEXT_BASE=0x31fc0000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
 CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
-# CONFIG_MODULES is not set
-# CONFIG_KALLSYMS is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_PROMPT="barebox:"
 CONFIG_BAUDRATE=38400
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/a9m2440/env"
-
-#
-# Debugging
-#
 CONFIG_DEBUG_INFO=y
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -125,116 +20,17 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
-# CONFIG_CMD_LOADY is not set
-# CONFIG_CMD_LOADS is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
-# CONFIG_CMD_MTEST_ALTERNATIVE is not set
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
-# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_RARP is not set
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_DRIVER_SERIAL_S3C24X0=y
-# CONFIG_DRIVER_SERIAL_S3C24X0_AUTOSYNC is not set
-CONFIG_HAS_CS8900=y
-CONFIG_MIIDEV=y
-
-#
-# Network drivers
-#
-# CONFIG_DRIVER_NET_CS8900 is not set
-# CONFIG_DRIVER_NET_SMC911X is not set
 CONFIG_DRIVER_NET_SMC91111=y
-
-#
-# SPI drivers
-#
 # CONFIG_SPI is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
-# CONFIG_DRIVER_CFI is not set
-# CONFIG_DRIVER_CFI_OLD is not set
-CONFIG_NAND=y
-CONFIG_NAND_S3C24X0=y
-# CONFIG_MTD_NAND_VERIFY_WRITE is not set
-# CONFIG_MTD_NAND_ECC_SMC is not set
-CONFIG_MTD_NAND_IDS=y
-# CONFIG_MTD_NAND_DISKONCHIP is not set
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index 0387b71..6038aec 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -1,111 +1,10 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc10
-# Fri Dec 18 11:46:40 2009
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-CONFIG_ARCH_AT91=y
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_IMX is not set
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_ARM926T=y
-CONFIG_CPU_32v5=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0x23f00000
-CONFIG_BOARDINFO="Atmel 91SAM9260-EK"
-
-#
-# Atmel AT91 System-on-Chip
-#
-CONFIG_ARCH_AT91SAM9260=y
-# CONFIG_ARCH_AT91SAM9263 is not set
-CONFIG_MACH_AT91SAM9260EK=y
-# CONFIG_AEABI is not set
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
-CONFIG_CMDLINE_TAG=y
-CONFIG_SETUP_MEMORY_TAGS=y
-# CONFIG_INITRD_TAG is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
-CONFIG_TEXT_BASE=0x23f00000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9260ek/env"
-
-#
-# Debugging
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -113,112 +12,18 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
-# CONFIG_CMD_MTEST_ALTERNATIVE is not set
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
-# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_RARP is not set
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_DRIVER_SERIAL_ATMEL=y
-CONFIG_MIIDEV=y
-
-#
-# Network drivers
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_MACB=y
-
-#
-# SPI drivers
-#
 # CONFIG_SPI is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
-# CONFIG_DRIVER_CFI is not set
-# CONFIG_DRIVER_CFI_OLD is not set
-CONFIG_NAND=y
-CONFIG_NAND_ATMEL=y
-# CONFIG_MTD_NAND_VERIFY_WRITE is not set
-# CONFIG_MTD_NAND_ECC_SMC is not set
-CONFIG_MTD_NAND_IDS=y
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
index ae4006c..c92999f 100644
--- a/arch/arm/configs/at91sam9263ek_defconfig
+++ b/arch/arm/configs/at91sam9263ek_defconfig
@@ -1,115 +1,12 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc10
-# Fri Dec 18 11:47:16 2009
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-CONFIG_ARCH_AT91=y
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_IMX is not set
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_ARM926T=y
-CONFIG_CPU_32v5=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0x23f00000
-CONFIG_BOARDINFO="Atmel at91sam9263-ek"
-
-#
-# Atmel AT91 System-on-Chip
-#
-# CONFIG_ARCH_AT91SAM9260 is not set
 CONFIG_ARCH_AT91SAM9263=y
-CONFIG_MACH_AT91SAM9263EK=y
-# CONFIG_MACH_MMCCPU is not set
-# CONFIG_MACH_PM9263 is not set
-# CONFIG_AEABI is not set
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
-CONFIG_CMDLINE_TAG=y
-CONFIG_SETUP_MEMORY_TAGS=y
-# CONFIG_INITRD_TAG is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
-CONFIG_TEXT_BASE=0x23f00000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
 CONFIG_PROMPT="9263-EK:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9263ek/env"
-
-#
-# Debugging
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -117,121 +14,24 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
-# CONFIG_CMD_MTEST_ALTERNATIVE is not set
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting
-#
-CONFIG_CMD_BOOTM=y
 CONFIG_CMD_BOOTM_ZLIB=y
 CONFIG_CMD_BOOTM_BZLIB=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_RARP is not set
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_DRIVER_SERIAL_ATMEL=y
-CONFIG_MIIDEV=y
-
-#
-# Network drivers
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_MACB=y
-
-#
-# SPI drivers
-#
 # CONFIG_SPI is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
 CONFIG_DRIVER_CFI=y
-CONFIG_DRIVER_CFI_NEW=y
-CONFIG_DRIVER_CFI_INTEL=y
-CONFIG_DRIVER_CFI_AMD=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_1=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_4=y
-# CONFIG_DRIVER_CFI_BANK_WIDTH_8 is not set
 CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_NAND=y
-CONFIG_NAND_ATMEL=y
-# CONFIG_MTD_NAND_VERIFY_WRITE is not set
-# CONFIG_MTD_NAND_ECC_SMC is not set
-CONFIG_MTD_NAND_IDS=y
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_ZLIB=y
-CONFIG_BZLIB=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
diff --git a/arch/arm/configs/edb93xx_defconfig b/arch/arm/configs/edb93xx_defconfig
index 936bd47..3b66384 100644
--- a/arch/arm/configs/edb93xx_defconfig
+++ b/arch/arm/configs/edb93xx_defconfig
@@ -1,125 +1,12 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2009.12.0
-# Fri Jan  8 17:27:15 2010
-#
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
 CONFIG_ARCH_EP93XX=y
-# CONFIG_ARCH_IMX is not set
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_ARM920T=y
-CONFIG_CPU_32v4T=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0x05700000
-CONFIG_BOARDINFO="Cirrus Logic EDB9301"
-CONFIG_EP93XX_SDCE3_SYNC_PHYS_OFFSET=y
-
-#
-# Cirrus EP93xx System-on-Chip
-#
-CONFIG_ARCH_EP9301=y
-# CONFIG_ARCH_EP9302 is not set
-# CONFIG_ARCH_EP9307 is not set
-# CONFIG_ARCH_EP9312 is not set
-# CONFIG_ARCH_EP9315 is not set
-CONFIG_MACH_EDB9301=y
-CONFIG_EP93XX_SDRAM_NUM_BANKS=4
-CONFIG_EP93XX_SDRAM_BANK0_BASE=0x00000000
-CONFIG_EP93XX_SDRAM_BANK0_SIZE=0x00800000
-CONFIG_EP93XX_SDRAM_BANK1_BASE=0x01000000
-CONFIG_EP93XX_SDRAM_BANK1_SIZE=0x00800000
-CONFIG_EP93XX_SDRAM_BANK2_BASE=0x04000000
-CONFIG_EP93XX_SDRAM_BANK2_SIZE=0x00800000
-CONFIG_EP93XX_SDRAM_BANK3_BASE=0x05000000
-CONFIG_EP93XX_SDRAM_BANK3_SIZE=0x00800000
 CONFIG_AEABI=y
-
-#
-# Arm specific settings         
-#
-CONFIG_CMD_ARM_CPUINFO=y
-CONFIG_CMDLINE_TAG=y
-CONFIG_SETUP_MEMORY_TAGS=y
-# CONFIG_INITRD_TAG is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-
-#
-# General Settings              
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout                 
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
-CONFIG_TEXT_BASE=0x05700000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/edb93xx/env"
-
-#
-# Debugging                     
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands                      
-#
-
-#
-# scripting                     
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -127,110 +14,19 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands                 
-#
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
-
-#
-# console                       
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-
-#
-# memory                        
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
-# CONFIG_CMD_MTEST_ALTERNATIVE is not set
-
-#
-# flash                         
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting                       
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
-# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_RARP is not set
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-
-#
-# Drivers                       
-#
-
-#
-# serial drivers                
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_DRIVER_SERIAL_PL010=y
-CONFIG_MIIDEV=y
-
-#
-# Network drivers               
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_EP93XX=y
-
-#
-# SPI drivers                   
-#
 # CONFIG_SPI is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers                 
-#
 CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_NEW is not set
-CONFIG_DRIVER_CFI_OLD=y
-# CONFIG_CFI_BUFFER_WRITE is not set
-# CONFIG_NAND is not set
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support            
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
diff --git a/arch/arm/configs/eukrea_cpuimx25_defconfig b/arch/arm/configs/eukrea_cpuimx25_defconfig
index abafc72..feb758e 100644
--- a/arch/arm/configs/eukrea_cpuimx25_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx25_defconfig
@@ -1,130 +1,18 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2010.07.0
-# Thu Jul 29 09:54:50 2010
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_EP93XX is not set
 CONFIG_ARCH_IMX=y
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_ARM926T=y
-CONFIG_CPU_32v5=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0x83f00000
-CONFIG_BOARDINFO="Eukrea CPUIMX25"
-CONFIG_ARCH_HAS_FEC_IMX=y
 CONFIG_ARCH_IMX_INTERNAL_BOOT=y
-
-#
-# Freescale i.MX System-on-Chip
-#
-# CONFIG_ARCH_IMX1 is not set
-# CONFIG_ARCH_IMX21 is not set
 CONFIG_ARCH_IMX25=y
-# CONFIG_ARCH_IMX27 is not set
-# CONFIG_ARCH_IMX31 is not set
-# CONFIG_ARCH_IMX35 is not set
-CONFIG_MACH_EUKREA_CPUIMX25=y
-# CONFIG_MACH_FREESCALE_MX25_3STACK is not set
-
-#
-# Board specific settings       
-#
-
-#
-# i.MX specific settings        
-#
-# CONFIG_IMX_CLKO is not set
-# CONFIG_AEABI is not set
-
-#
-# Arm specific settings         
-#
-CONFIG_CMD_ARM_CPUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-
-#
-# General Settings              
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout                 
-#
-CONFIG_HAVE_MMU=y
 CONFIG_MMU=y
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
-CONFIG_TEXT_BASE=0x83f00000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
 CONFIG_MALLOC_SIZE=0x1000000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
 CONFIG_PROMPT="cpuimx25:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="cpuimx25>"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/eukrea_cpuimx25/env"
-
-#
-# Debugging                     
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands                      
-#
-
-#
-# scripting                     
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -132,128 +20,30 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands                 
-#
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
-
-#
-# console                       
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
 CONFIG_CMD_ECHO_E=y
-
-#
-# memory                        
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
-# CONFIG_CMD_MTEST_ALTERNATIVE is not set
-
-#
-# flash                         
-#
 CONFIG_CMD_FLASH=y
-# CONFIG_CMD_UBI is not set
-
-#
-# booting                       
-#
-CONFIG_CMD_BOOTM=y
 CONFIG_CMD_BOOTM_ZLIB=y
 CONFIG_CMD_BOOTM_BZLIB=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
-# CONFIG_CMD_LINUX16 is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_BMP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNLZO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-# CONFIG_NET_TFTP_PUSH is not set
-# CONFIG_NET_NETCONSOLE is not set
-# CONFIG_NET_RESOLV is not set
-
-#
-# Drivers                       
-#
-
-#
-# serial drivers                
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-CONFIG_DRIVER_SERIAL_IMX=y
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIDEV=y
-
-#
-# Network drivers               
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_FEC_IMX=y
-
-#
-# SPI drivers                   
-#
 # CONFIG_SPI is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers                 
-#
-# CONFIG_DRIVER_CFI is not set
 CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_IMX=y
 CONFIG_NAND_IMX_BOOT=y
-# CONFIG_MTD_NAND_VERIFY_WRITE is not set
-# CONFIG_MTD_NAND_ECC_SMC is not set
-CONFIG_MTD_NAND_IDS=y
-# CONFIG_UBI is not set
-# CONFIG_ATA is not set
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX=y
-# CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY is not set
-
-#
-# Filesystem support            
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_ZLIB=y
-CONFIG_BZLIB=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
-CONFIG_PROCESS_ESCAPE_SEQUENCE=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/eukrea_cpuimx27_defconfig b/arch/arm/configs/eukrea_cpuimx27_defconfig
index 13df567..0993617 100644
--- a/arch/arm/configs/eukrea_cpuimx27_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx27_defconfig
@@ -1,140 +1,19 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2010.05.0
-# Tue May 25 09:57:55 2010
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_EP93XX is not set
 CONFIG_ARCH_IMX=y
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_ARM926T=y
-CONFIG_CPU_32v5=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0xa0000000
-CONFIG_BOARDINFO="Eukrea CPUIMX27"
-CONFIG_ARCH_HAS_FEC_IMX=y
-
-#
-# Freescale i.MX System-on-Chip
-#
-# CONFIG_ARCH_IMX1 is not set
-# CONFIG_ARCH_IMX21 is not set
-# CONFIG_ARCH_IMX25 is not set
 CONFIG_ARCH_IMX27=y
-# CONFIG_ARCH_IMX31 is not set
-# CONFIG_ARCH_IMX35 is not set
-CONFIG_MACH_EUKREA_CPUIMX27=y
-# CONFIG_MACH_IMX27ADS is not set
-# CONFIG_MACH_PCA100 is not set
-# CONFIG_MACH_PCM038 is not set
-
-#
-# Board specific settings       
-#
-CONFIG_EUKREA_CPUIMX27_SDRAM_128MB=y
-# CONFIG_EUKREA_CPUIMX27_SDRAM_256MB is not set
-CONFIG_EUKREA_CPUIMX27_NOR_32MB=y
-# CONFIG_EUKREA_CPUIMX27_NOR_64MB is not set
-CONFIG_EUKREA_CPUIMX27_QUART1=y
-# CONFIG_EUKREA_CPUIMX27_QUART2 is not set
-# CONFIG_EUKREA_CPUIMX27_QUART3 is not set
-# CONFIG_EUKREA_CPUIMX27_QUART4 is not set
-
-#
-# i.MX specific settings        
-#
 CONFIG_IMX_CLKO=y
-# CONFIG_AEABI is not set
-
-#
-# Arm specific settings         
-#
-CONFIG_CMD_ARM_CPUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-
-#
-# General Settings              
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout                 
-#
-CONFIG_HAVE_MMU=y
 CONFIG_MMU=y
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_TEXT_BASE=0xa7f00000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
 CONFIG_MALLOC_SIZE=0x800000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
 # CONFIG_CONSOLE_ACTIVATE_FIRST is not set
 CONFIG_CONSOLE_ACTIVATE_ALL=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/eukrea_cpuimx27/env"
-
-#
-# Debugging                     
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands                      
-#
-
-#
-# scripting                     
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -142,134 +21,34 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands                 
-#
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
-
-#
-# console                       
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
 CONFIG_CMD_ECHO_E=y
-
-#
-# memory                        
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
-# CONFIG_CMD_MTEST_ALTERNATIVE is not set
-
-#
-# flash                         
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting                       
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
-# CONFIG_CMD_LINUX16 is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_BMP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNLZO=y
 CONFIG_CMD_I2C=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_RARP is not set
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-
-#
-# Drivers                       
-#
-
-#
-# serial drivers                
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-CONFIG_DRIVER_SERIAL_IMX=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_MIIDEV=y
-
-#
-# Network drivers               
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_FEC_IMX=y
-
-#
-# SPI drivers                   
-#
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_DRIVER_I2C_IMX=y
-# CONFIG_DRIVER_I2C_MC13892 is not set
-# CONFIG_DRIVER_I2C_MC9SDZ60 is not set
 CONFIG_DRIVER_I2C_LP3972=y
-
-#
-# flash drivers                 
-#
-CONFIG_HAS_CFI=y
 CONFIG_DRIVER_CFI=y
-CONFIG_DRIVER_CFI_INTEL=y
 # CONFIG_DRIVER_CFI_AMD is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
-CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
 # CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
-# CONFIG_DRIVER_CFI_BANK_WIDTH_8 is not set
 CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_NAND=y
-CONFIG_NAND_IMX=y
-# CONFIG_NAND_IMX_BOOT is not set
-# CONFIG_MTD_NAND_VERIFY_WRITE is not set
-# CONFIG_MTD_NAND_ECC_SMC is not set
-CONFIG_MTD_NAND_IDS=y
-# CONFIG_ATA is not set
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX=y
-# CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY is not set
-
-#
-# Filesystem support            
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
-CONFIG_PROCESS_ESCAPE_SEQUENCE=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/eukrea_cpuimx35_defconfig b/arch/arm/configs/eukrea_cpuimx35_defconfig
index 77f5246..975d095 100644
--- a/arch/arm/configs/eukrea_cpuimx35_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx35_defconfig
@@ -1,133 +1,16 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2010.07.0
-# Wed Jul 28 21:46:15 2010
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_EP93XX is not set
 CONFIG_ARCH_IMX=y
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_V6=y
-CONFIG_CPU_32v6=y
-
-#
-# processor features
-#
-CONFIG_ARCH_HAS_L2X0=y
 CONFIG_CACHE_L2X0=y
-CONFIG_ARCH_TEXT_BASE=0x87f00000
-CONFIG_BOARDINFO="Eukrea CPUIMX35"
-CONFIG_ARCH_HAS_FEC_IMX=y
 CONFIG_ARCH_IMX_INTERNAL_BOOT=y
-
-#
-# Freescale i.MX System-on-Chip
-#
-# CONFIG_ARCH_IMX1 is not set
-# CONFIG_ARCH_IMX21 is not set
-# CONFIG_ARCH_IMX25 is not set
-# CONFIG_ARCH_IMX27 is not set
-# CONFIG_ARCH_IMX31 is not set
 CONFIG_ARCH_IMX35=y
-CONFIG_MACH_EUKREA_CPUIMX35=y
-# CONFIG_MACH_FREESCALE_MX35_3STACK is not set
-# CONFIG_MACH_PCM043 is not set
-
-#
-# Board specific settings       
-#
-
-#
-# i.MX specific settings        
-#
-# CONFIG_IMX_CLKO is not set
-# CONFIG_AEABI is not set
-
-#
-# Arm specific settings         
-#
-CONFIG_CMD_ARM_CPUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-
-#
-# General Settings              
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout                 
-#
-CONFIG_HAVE_MMU=y
 CONFIG_MMU=y
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
-CONFIG_TEXT_BASE=0x87f00000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
 CONFIG_MALLOC_SIZE=0x800000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
-# CONFIG_PARTITION is not set
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/eukrea_cpuimx35/env"
-
-#
-# Debugging                     
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands                      
-#
-
-#
-# scripting                     
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -135,126 +18,28 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands                 
-#
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
-
-#
-# console                       
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
 CONFIG_CMD_ECHO_E=y
-
-#
-# memory                        
-#
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
-# CONFIG_CMD_MTEST_ALTERNATIVE is not set
-
-#
-# flash                         
-#
 CONFIG_CMD_FLASH=y
-# CONFIG_CMD_UBI is not set
-
-#
-# booting                       
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
-# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
-# CONFIG_CMD_LINUX16 is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_BMP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNLZO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-# CONFIG_NET_TFTP_PUSH is not set
-# CONFIG_NET_NETCONSOLE is not set
-# CONFIG_NET_RESOLV is not set
-
-#
-# Drivers                       
-#
-
-#
-# serial drivers                
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-CONFIG_DRIVER_SERIAL_IMX=y
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIDEV=y
-
-#
-# Network drivers               
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_FEC_IMX=y
-
-#
-# SPI drivers                   
-#
 # CONFIG_SPI is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers                 
-#
-# CONFIG_DRIVER_CFI is not set
 CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_IMX=y
 CONFIG_NAND_IMX_BOOT=y
-# CONFIG_MTD_NAND_VERIFY_WRITE is not set
-# CONFIG_MTD_NAND_ECC_SMC is not set
-CONFIG_MTD_NAND_IDS=y
-# CONFIG_UBI is not set
-# CONFIG_ATA is not set
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX_IPU=y
-
-#
-# Filesystem support            
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-CONFIG_CRC16=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
-CONFIG_PROCESS_ESCAPE_SEQUENCE=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/freescale_mx25_3stack_defconfig b/arch/arm/configs/freescale_mx25_3stack_defconfig
index b45b995..e833636 100644
--- a/arch/arm/configs/freescale_mx25_3stack_defconfig
+++ b/arch/arm/configs/freescale_mx25_3stack_defconfig
@@ -1,128 +1,14 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc10
-# Fri Dec 18 11:47:29 2009
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
 CONFIG_ARCH_IMX=y
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_ARM926T=y
-CONFIG_CPU_32v5=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0x87f00000
-CONFIG_BOARDINFO="Freescale MX25 3Stack"
-CONFIG_ARCH_HAS_FEC_IMX=y
-# CONFIG_ARCH_IMX_INTERNAL_BOOT is not set
-
-#
-# Freescale i.MX System-on-Chip
-#
-# CONFIG_ARCH_IMX1 is not set
-# CONFIG_ARCH_IMX21 is not set
 CONFIG_ARCH_IMX25=y
-# CONFIG_ARCH_IMX27 is not set
-# CONFIG_ARCH_IMX31 is not set
-# CONFIG_ARCH_IMX35 is not set
 CONFIG_MACH_FREESCALE_MX25_3STACK=y
-
-#
-# Board specific settings
-#
-
-#
-# i.MX specific settings
-#
-# CONFIG_IMX_CLKO is not set
-# CONFIG_AEABI is not set
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
-CONFIG_CMDLINE_TAG=y
-CONFIG_SETUP_MEMORY_TAGS=y
-# CONFIG_INITRD_TAG is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_TEXT_BASE=0x87F00000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
-# CONFIG_LONGHELP is not set
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
 # CONFIG_ERRNO_MESSAGES is not set
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx25-3-stack/env/"
-
-#
-# Debugging
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -130,115 +16,19 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
-# CONFIG_CMD_MTEST is not set
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
-# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_RARP is not set
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-CONFIG_DRIVER_SERIAL_IMX=y
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIDEV=y
-
-#
-# Network drivers
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_FEC_IMX=y
-# CONFIG_NET_USB is not set
-
-#
-# SPI drivers
-#
 # CONFIG_SPI is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
-CONFIG_HAS_CFI=y
-# CONFIG_DRIVER_CFI is not set
-# CONFIG_DRIVER_CFI_OLD is not set
-CONFIG_NAND=y
-# CONFIG_NAND_IMX is not set
-# CONFIG_MTD_NAND_VERIFY_WRITE is not set
-# CONFIG_MTD_NAND_ECC_SMC is not set
-CONFIG_MTD_NAND_IDS=y
 CONFIG_USB=y
 CONFIG_USB_EHCI=y
-# CONFIG_USB_ISP1504 is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
diff --git a/arch/arm/configs/freescale_mx35_3stack_defconfig b/arch/arm/configs/freescale_mx35_3stack_defconfig
index ff3ba6a..20c5953 100644
--- a/arch/arm/configs/freescale_mx35_3stack_defconfig
+++ b/arch/arm/configs/freescale_mx35_3stack_defconfig
@@ -1,127 +1,16 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2009.12.0-pre
-# Tue Dec 22 17:43:43 2009
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
 CONFIG_ARCH_IMX=y
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0x87f00000
-CONFIG_BOARDINFO="Freescale MX35 3Stack"
-CONFIG_ARCH_HAS_FEC_IMX=y
-# CONFIG_ARCH_IMX_INTERNAL_BOOT is not set
-
-#
-# Freescale i.MX System-on-Chip
-#
-# CONFIG_ARCH_IMX1 is not set
-# CONFIG_ARCH_IMX21 is not set
-# CONFIG_ARCH_IMX25 is not set
-# CONFIG_ARCH_IMX27 is not set
-# CONFIG_ARCH_IMX31 is not set
 CONFIG_ARCH_IMX35=y
 CONFIG_MACH_FREESCALE_MX35_3STACK=y
-# CONFIG_MACH_PCM043 is not set
-
-#
-# Board specific settings       
-#
-
-#
-# i.MX specific settings        
-#
-# CONFIG_IMX_CLKO is not set
 CONFIG_AEABI=y
-
-#
-# Arm specific settings         
-#
-CONFIG_CMD_ARM_CPUINFO=y
-CONFIG_CMDLINE_TAG=y
-CONFIG_SETUP_MEMORY_TAGS=y
-# CONFIG_INITRD_TAG is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-
-#
-# General Settings              
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout                 
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_TEXT_BASE=0x87F00000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
 CONFIG_MALLOC_SIZE=0x1000000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx35-3-stack/env/"
-
-#
-# Debugging                     
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands                      
-#
-
-#
-# scripting                     
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -129,121 +18,22 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands                 
-#
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
-
-#
-# console                       
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-
-#
-# memory                        
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
-# CONFIG_CMD_MTEST is not set
-
-#
-# flash                         
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting                       
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
-# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_BMP=y
-# CONFIG_CMD_GPIO is not set
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_RARP is not set
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-
-#
-# Drivers                       
-#
-
-#
-# serial drivers                
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-CONFIG_DRIVER_SERIAL_IMX=y
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIDEV=y
-
-#
-# Network drivers               
-#
 CONFIG_DRIVER_NET_SMC911X=y
-CONFIG_DRIVER_NET_SMC911X_ADDRESS_SHIFT=0
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_FEC_IMX=y
-
-#
-# SPI drivers                   
-#
 # CONFIG_SPI is not set
-CONFIG_I2C=y
-CONFIG_DRIVER_I2C_IMX=y
-CONFIG_DRIVER_I2C_MC13892=y
-CONFIG_DRIVER_I2C_MC9SDZ60=y
-
-#
-# flash drivers                 
-#
-CONFIG_HAS_CFI=y
 CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_NEW is not set
-CONFIG_DRIVER_CFI_OLD=y
 CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_NAND=y
-CONFIG_NAND_IMX=y
-CONFIG_NAND_IMX_BOOT=y
-# CONFIG_MTD_NAND_VERIFY_WRITE is not set
-# CONFIG_MTD_NAND_ECC_SMC is not set
-CONFIG_MTD_NAND_IDS=y
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX_IPU=y
-
-#
-# Filesystem support            
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
diff --git a/arch/arm/configs/mmccpu_defconfig b/arch/arm/configs/mmccpu_defconfig
index e196a0c..3f1af6a 100644
--- a/arch/arm/configs/mmccpu_defconfig
+++ b/arch/arm/configs/mmccpu_defconfig
@@ -1,115 +1,13 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc10
-# Fri Dec 18 11:47:54 2009
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-CONFIG_ARCH_AT91=y
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_IMX is not set
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_ARM926T=y
-CONFIG_CPU_32v5=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0x23f00000
-CONFIG_BOARDINFO="Bucyrus MMC-CPU"
-
-#
-# Atmel AT91 System-on-Chip
-#
-# CONFIG_ARCH_AT91SAM9260 is not set
 CONFIG_ARCH_AT91SAM9263=y
-# CONFIG_MACH_AT91SAM9263EK is not set
 CONFIG_MACH_MMCCPU=y
-# CONFIG_MACH_PM9263 is not set
-# CONFIG_AEABI is not set
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
-CONFIG_CMDLINE_TAG=y
-CONFIG_SETUP_MEMORY_TAGS=y
-# CONFIG_INITRD_TAG is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
-CONFIG_TEXT_BASE=0x23f00000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/mmccpu/env"
-
-#
-# Debugging
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -117,117 +15,23 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_RARP is not set
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_DRIVER_SERIAL_ATMEL=y
-CONFIG_MIIDEV=y
-
-#
-# Network drivers
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_MACB=y
-
-#
-# SPI drivers
-#
 # CONFIG_SPI is not set
 CONFIG_I2C=y
-# CONFIG_DRIVER_I2C_MC13892 is not set
-# CONFIG_DRIVER_I2C_MC9SDZ60 is not set
-
-#
-# flash drivers
-#
 CONFIG_DRIVER_CFI=y
-CONFIG_DRIVER_CFI_NEW=y
-CONFIG_DRIVER_CFI_INTEL=y
-CONFIG_DRIVER_CFI_AMD=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_1=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_4=y
-# CONFIG_DRIVER_CFI_BANK_WIDTH_8 is not set
 CONFIG_CFI_BUFFER_WRITE=y
-# CONFIG_NAND is not set
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
diff --git a/arch/arm/configs/mx21ads_defconfig b/arch/arm/configs/mx21ads_defconfig
index 99b5ed6..52f84e1 100644
--- a/arch/arm/configs/mx21ads_defconfig
+++ b/arch/arm/configs/mx21ads_defconfig
@@ -1,126 +1,13 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc10
-# Fri Dec 18 11:48:02 2009
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
 CONFIG_ARCH_IMX=y
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_ARM926T=y
-CONFIG_CPU_32v5=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0xc0000000
-CONFIG_BOARDINFO="Freescale i.MX21 ADS"
-
-#
-# Freescale i.MX System-on-Chip
-#
-# CONFIG_ARCH_IMX1 is not set
 CONFIG_ARCH_IMX21=y
-# CONFIG_ARCH_IMX25 is not set
-# CONFIG_ARCH_IMX27 is not set
-# CONFIG_ARCH_IMX31 is not set
-# CONFIG_ARCH_IMX35 is not set
-CONFIG_MACH_IMX21ADS=y
-
-#
-# Board specific settings
-#
-
-#
-# i.MX specific settings
-#
 CONFIG_IMX_CLKO=y
-# CONFIG_AEABI is not set
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
-CONFIG_CMDLINE_TAG=y
-CONFIG_SETUP_MEMORY_TAGS=y
-# CONFIG_INITRD_TAG is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_TEXT_BASE=0xc1000000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
-# CONFIG_GLOB is not set
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/imx21ads/env"
-
-#
-# Debugging
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -128,121 +15,24 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_RARP is not set
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-CONFIG_DRIVER_SERIAL_IMX=y
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_HAS_CS8900=y
-
-#
-# Network drivers
-#
 CONFIG_DRIVER_NET_CS8900=y
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
-
-#
-# SPI drivers
-#
 # CONFIG_SPI is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
-CONFIG_HAS_CFI=y
 CONFIG_DRIVER_CFI=y
-CONFIG_DRIVER_CFI_NEW=y
 # CONFIG_DRIVER_CFI_INTEL is not set
-CONFIG_DRIVER_CFI_AMD=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_1=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_4=y
-# CONFIG_DRIVER_CFI_BANK_WIDTH_8 is not set
 CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_NAND=y
-CONFIG_NAND_IMX=y
-# CONFIG_NAND_IMX_BOOT is not set
-# CONFIG_MTD_NAND_VERIFY_WRITE is not set
-# CONFIG_MTD_NAND_ECC_SMC is not set
-CONFIG_MTD_NAND_IDS=y
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
diff --git a/arch/arm/configs/mx27ads_defconfig b/arch/arm/configs/mx27ads_defconfig
index a1bf3f9..e92fb9c 100644
--- a/arch/arm/configs/mx27ads_defconfig
+++ b/arch/arm/configs/mx27ads_defconfig
@@ -1,130 +1,14 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc10
-# Fri Dec 18 11:48:21 2009
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
 CONFIG_ARCH_IMX=y
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_ARM926T=y
-CONFIG_CPU_32v5=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0xa0000000
-CONFIG_BOARDINFO="Freescale i.MX27 ADS"
-CONFIG_ARCH_HAS_FEC_IMX=y
-
-#
-# Freescale i.MX System-on-Chip
-#
-# CONFIG_ARCH_IMX1 is not set
-# CONFIG_ARCH_IMX21 is not set
-# CONFIG_ARCH_IMX25 is not set
 CONFIG_ARCH_IMX27=y
-# CONFIG_ARCH_IMX31 is not set
-# CONFIG_ARCH_IMX35 is not set
-# CONFIG_MACH_EUKREA_CPUIMX27 is not set
 CONFIG_MACH_IMX27ADS=y
-# CONFIG_MACH_PCA100 is not set
-# CONFIG_MACH_PCM038 is not set
-
-#
-# Board specific settings
-#
-
-#
-# i.MX specific settings
-#
 CONFIG_IMX_CLKO=y
-# CONFIG_AEABI is not set
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
-CONFIG_CMDLINE_TAG=y
-CONFIG_SETUP_MEMORY_TAGS=y
-# CONFIG_INITRD_TAG is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_TEXT_BASE=0xa7f00000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
-# CONFIG_GLOB is not set
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/imx27ads/env"
-
-#
-# Debugging
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -132,117 +16,23 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_RARP is not set
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-CONFIG_DRIVER_SERIAL_IMX=y
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-
-#
-# Network drivers
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
-# CONFIG_DRIVER_NET_FEC_IMX is not set
-
-#
-# SPI drivers
-#
-CONFIG_SPI=y
 CONFIG_DRIVER_SPI_IMX=y
 CONFIG_DRIVER_SPI_MC13783=y
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
-CONFIG_HAS_CFI=y
 CONFIG_DRIVER_CFI=y
-CONFIG_DRIVER_CFI_NEW=y
 # CONFIG_DRIVER_CFI_INTEL is not set
-CONFIG_DRIVER_CFI_AMD=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_1=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_4=y
-# CONFIG_DRIVER_CFI_BANK_WIDTH_8 is not set
 CONFIG_CFI_BUFFER_WRITE=y
-# CONFIG_NAND is not set
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
diff --git a/arch/arm/configs/neso_defconfig b/arch/arm/configs/neso_defconfig
index 03673f2..8dfe20a 100644
--- a/arch/arm/configs/neso_defconfig
+++ b/arch/arm/configs/neso_defconfig
@@ -1,132 +1,18 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2010.06.0
-# Mon Jun 21 14:06:11 2010
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_EP93XX is not set
 CONFIG_ARCH_IMX=y
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_ARM926T=y
-CONFIG_CPU_32v5=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0xa7e00000
-CONFIG_BOARDINFO="Garz+Fricke Neso"
-CONFIG_ARCH_HAS_FEC_IMX=y
-
-#
-# Freescale i.MX System-on-Chip
-#
-# CONFIG_ARCH_IMX1 is not set
-# CONFIG_ARCH_IMX21 is not set
-# CONFIG_ARCH_IMX25 is not set
 CONFIG_ARCH_IMX27=y
-# CONFIG_ARCH_IMX31 is not set
-# CONFIG_ARCH_IMX35 is not set
-# CONFIG_MACH_EUKREA_CPUIMX27 is not set
-# CONFIG_MACH_IMX27ADS is not set
-# CONFIG_MACH_PCA100 is not set
-# CONFIG_MACH_PCM038 is not set
 CONFIG_MACH_NESO=y
-
-#
-# Board specific settings
-#
-
-#
-# i.MX specific settings
-#
 CONFIG_IMX_CLKO=y
 CONFIG_AEABI=y
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_MMU=y
 CONFIG_MMU=y
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
-CONFIG_TEXT_BASE=0xa7e00000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
 CONFIG_MALLOC_SIZE=0x1000000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv board/guf-neso/env"
-
-#
-# Debugging
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -134,62 +20,15 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
 CONFIG_CMD_ECHO_E=y
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
-# CONFIG_CMD_MTEST_ALTERNATIVE is not set
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
-# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
-# CONFIG_CMD_LINUX16 is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_BMP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNLZO=y
@@ -201,64 +40,14 @@ CONFIG_NET_TFTP=y
 CONFIG_NET_TFTP_PUSH=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-CONFIG_DRIVER_SERIAL_IMX=y
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIDEV=y
-
-#
-# Network drivers
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
-# CONFIG_NET_USB_SMSC95XX is not set
-
-#
-# SPI drivers
-#
-CONFIG_SPI=y
 CONFIG_DRIVER_SPI_IMX=y
 CONFIG_DRIVER_SPI_MC13783=y
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
-# CONFIG_DRIVER_CFI is not set
-CONFIG_NAND=y
-CONFIG_NAND_IMX=y
-CONFIG_NAND_IMX_BOOT=y
-# CONFIG_MTD_NAND_VERIFY_WRITE is not set
-# CONFIG_MTD_NAND_ECC_SMC is not set
-CONFIG_MTD_NAND_IDS=y
-# CONFIG_ATA is not set
 CONFIG_USB=y
 CONFIG_USB_EHCI=y
-CONFIG_USB_ULPI=y
 CONFIG_USB_ISP1504=y
-# CONFIG_USB_GADGET is not set
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX=y
 CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY=y
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
-CONFIG_PROCESS_ESCAPE_SEQUENCE=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/netx_nxdb500_defconfig b/arch/arm/configs/netx_nxdb500_defconfig
index 7047d6b..179058b 100644
--- a/arch/arm/configs/netx_nxdb500_defconfig
+++ b/arch/arm/configs/netx_nxdb500_defconfig
@@ -1,110 +1,11 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc10
-# Fri Dec 18 11:48:29 2009
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_IMX is not set
 CONFIG_ARCH_NETX=y
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_ARM926T=y
-CONFIG_CPU_32v5=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0x81f00000
-CONFIG_BOARDINFO="Hilscher Netx nxdb500"
-CONFIG_NETX_SDRAM_CTRL=0x010D0121
-CONFIG_NETX_SDRAM_TIMING_CTRL=0x03C13261
-CONFIG_NETX_MEM_CTRL=0x0203030F
-CONFIG_NETX_COOKIE=32
-CONFIG_MACH_NXDB500=y
-# CONFIG_AEABI is not set
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
-CONFIG_CMDLINE_TAG=y
-CONFIG_SETUP_MEMORY_TAGS=y
-CONFIG_INITRD_TAG=y
-# CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS is not set
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_TEXT_BASE=0x08f80000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
 CONFIG_BROKEN=y
-# CONFIG_EXPERIMENTAL is not set
-# CONFIG_KALLSYMS is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
-# CONFIG_GLOB is not set
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
-
-#
-# Debugging
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -112,112 +13,17 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
-# CONFIG_CMD_LOADS is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
-# CONFIG_CMD_MTEST is not set
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
-# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_RARP is not set
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-CONFIG_DRIVER_SERIAL_NETX=y
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_HAS_NETX_ETHER=y
-CONFIG_MIIDEV=y
-
-#
-# Network drivers
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_NETX=y
-
-#
-# SPI drivers
-#
-CONFIG_SPI=y
-# CONFIG_DRIVER_SPI_MC13783 is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
-CONFIG_HAS_CFI=y
 CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_NEW is not set
-CONFIG_DRIVER_CFI_OLD=y
 CONFIG_CFI_BUFFER_WRITE=y
-# CONFIG_NAND is not set
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
diff --git a/arch/arm/configs/nhk8815_defconfig b/arch/arm/configs/nhk8815_defconfig
index 21d596f..c0fc436 100644
--- a/arch/arm/configs/nhk8815_defconfig
+++ b/arch/arm/configs/nhk8815_defconfig
@@ -1,110 +1,13 @@
-#
-# Automatically generated make config: don't edit
-# U-Boot version: 2.0.0-rc10
-# Mon Oct 12 18:36:24 2009
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-CONFIG_ARM_AMBA=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_EP93XX is not set
-# CONFIG_ARCH_IMX is not set
-# CONFIG_ARCH_NETX is not set
 CONFIG_ARCH_NOMADIK=y
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-CONFIG_COMMON_CLKDEV=y
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_ARM926T=y
-CONFIG_CPU_32v5=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0x03c00000
-CONFIG_BOARDINFO="NHK8815"
-CONFIG_MACH_NOMADIK_8815NHK=y
-CONFIG_NOMADIK_8815=y
-# CONFIG_AEABI is not set
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
-CONFIG_CMDLINE_TAG=y
-CONFIG_SETUP_MEMORY_TAGS=y
-# CONFIG_INITRD_TAG is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_TEXT_BASE=0x03F80000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
 CONFIG_PROMPT="Nomadik:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
-# CONFIG_HUSH_FANCY_PROMPT is not set
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="board/nhk8815/env"
-
-#
-# Debugging
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -112,121 +15,27 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-# CONFIG_CMD_ECHO_E is not set
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
-# CONFIG_CMD_MTEST_ALTERNATIVE is not set
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-# CONFIG_CMD_UBI is not set
-
-#
-# booting
-#
-CONFIG_CMD_BOOTM=y
 CONFIG_CMD_BOOTM_ZLIB=y
 CONFIG_CMD_BOOTM_BZLIB=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
-# CONFIG_CMD_LINUX16 is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
-# CONFIG_CMD_UNLZO is not set
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-# CONFIG_NET_TFTP_PUSH is not set
-# CONFIG_NET_NETCONSOLE is not set
-# CONFIG_NET_RESOLV is not set
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_SERIAL_AMBA_PL011=y
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIDEV=y
-
-#
-# Network drivers
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
 CONFIG_DRIVER_NET_SMC91111=y
-
-#
-# SPI drivers
-#
 # CONFIG_SPI is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
-# CONFIG_DRIVER_CFI is not set
 CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_MTD_NAND_VERIFY_WRITE=y
 CONFIG_MTD_NAND_ECC_SMC=y
-CONFIG_MTD_NAND_IDS=y
 CONFIG_MTD_NAND_NOMADIK=y
-# CONFIG_UBI is not set
-# CONFIG_ATA is not set
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_ZLIB=y
-CONFIG_BZLIB=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
-# CONFIG_PROCESS_ESCAPE_SEQUENCE is not set
diff --git a/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig b/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
index 4501f5a..013d000 100644
--- a/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
+++ b/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
@@ -1,139 +1,18 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc10
-# Fri Dec 18 11:48:53 2009
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_IMX is not set
-# CONFIG_ARCH_NETX is not set
 CONFIG_ARCH_OMAP=y
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_V7=y
-CONFIG_CPU_32v7=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0x80e80000
-CONFIG_BOARDINFO="Texas Instrument's SDP343x"
-
-#
-# OMAP Features
-#
-CONFIG_ARCH_OMAP3=y
-CONFIG_OMAP_CONFIG_STACKSIZE=0x00008000
-CONFIG_OMAP_MALLOC_LEN=0x00008000
-CONFIG_OMAP_CLOCK_ALL=y
-CONFIG_OMAP_CLOCK_SOURCE_S32K=y
-CONFIG_OMAP3_CLOCK_CONFIG=y
 # CONFIG_OMAP3_COPY_CLOCK_SRAM is not set
-CONFIG_GPMC=y
-
-#
-# OMAP Platform Features
-#
-CONFIG_MACH_OMAP343xSDP=y
-# CONFIG_MACH_BEAGLE is not set
-# CONFIG_MACH_OMAP3EVM is not set
-# CONFIG_MACH_OMAP_ADVANCED_MUX is not set
-CONFIG_HAS_OMAP_NAND=y
-# CONFIG_MACH_OMAP_GPMC_NAND is not set
-# CONFIG_AEABI is not set
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
-CONFIG_CMDLINE_TAG=y
-CONFIG_SETUP_MEMORY_TAGS=y
-# CONFIG_INITRD_TAG is not set
-# CONFIG_CPU_V7_DCACHE_SKIP is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
 # CONFIG_CMD_MEMORY is not set
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_TEXT_BASE=0x40200000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-# CONFIG_MEMORY_LAYOUT_DEFAULT is not set
 CONFIG_MEMORY_LAYOUT_FIXED=y
 CONFIG_STACK_BASE=0x87BF7F10
-CONFIG_STACK_SIZE=0x8000
 CONFIG_MALLOC_BASE=0x87BFFF10
-CONFIG_MALLOC_SIZE=0x400000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_ARCH_HAS_LOWLEVEL_INIT=y
 CONFIG_PROMPT="X-load 343x> "
-CONFIG_BAUDRATE=115200
-CONFIG_SIMPLE_READLINE=y
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-# CONFIG_SHELL_HUSH is not set
 CONFIG_SHELL_SIMPLE=y
-# CONFIG_CMDLINE_EDITING is not set
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
-# CONFIG_PARTITION is not set
 # CONFIG_DEFAULT_ENVIRONMENT is not set
-
-#
-# Debugging
-#
 CONFIG_DEBUG_INFO=y
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
-# CONFIG_CMD_EDIT is not set
-# CONFIG_CMD_EXEC is not set
-# CONFIG_CMD_SLEEP is not set
-# CONFIG_CMD_SAVEENV is not set
-# CONFIG_CMD_LOADENV is not set
-# CONFIG_CMD_EXPORT is not set
-# CONFIG_CMD_PRINTENV is not set
-# CONFIG_CMD_READLINE is not set
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
 # CONFIG_CMD_LS is not set
 # CONFIG_CMD_RM is not set
 # CONFIG_CMD_CAT is not set
@@ -144,73 +23,12 @@ CONFIG_CMD_FALSE=y
 # CONFIG_CMD_CD is not set
 # CONFIG_CMD_MOUNT is not set
 # CONFIG_CMD_UMOUNT is not set
-
-#
-# console
-#
 # CONFIG_CMD_CLEAR is not set
 # CONFIG_CMD_ECHO is not set
-
-#
-# memory
-#
 CONFIG_CMD_LOADB=y
-# CONFIG_CMD_MEMINFO is not set
-# CONFIG_CMD_CRC is not set
-# CONFIG_CMD_MTEST is not set
-
-#
-# flash
-#
-# CONFIG_CMD_FLASH is not set
-
-#
-# booting
-#
 # CONFIG_CMD_BOOTM is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
-# CONFIG_CMD_RESET is not set
 CONFIG_CMD_GO=y
-# CONFIG_CMD_TIMEOUT is not set
-# CONFIG_CMD_PARTITION is not set
-CONFIG_CMD_VERSION=y
 # CONFIG_CMD_HELP is not set
-CONFIG_CMD_DEVINFO=y
-# CONFIG_NET is not set
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
-
-#
-# SPI drivers
-#
 # CONFIG_SPI is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
-# CONFIG_DRIVER_CFI is not set
-# CONFIG_DRIVER_CFI_OLD is not set
-# CONFIG_NAND is not set
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC16=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
index 41b8d87..6a96730 100644
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ b/arch/arm/configs/omap3530_beagle_defconfig
@@ -1,125 +1,17 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2010.08.0
-# Tue Aug 10 18:52:24 2010
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_EP93XX is not set
-# CONFIG_ARCH_IMX is not set
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_NOMADIK is not set
 CONFIG_ARCH_OMAP=y
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_V7=y
-CONFIG_CPU_32v7=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0x80e80000
-CONFIG_BOARDINFO="Texas Instrument's Beagle"
-
-#
-# OMAP Features
-#
-CONFIG_ARCH_OMAP3=y
-CONFIG_OMAP_CLOCK_ALL=y
-CONFIG_OMAP_CLOCK_SOURCE_S32K=y
-CONFIG_OMAP3_CLOCK_CONFIG=y
 # CONFIG_OMAP3_COPY_CLOCK_SRAM is not set
-CONFIG_GPMC=y
-CONFIG_GPIO=y
-
-#
-# OMAP Platform Features
-#
-# CONFIG_MACH_OMAP343xSDP is not set
 CONFIG_MACH_BEAGLE=y
-# CONFIG_MACH_OMAP3EVM is not set
-CONFIG_HAS_OMAP_NAND=y
 CONFIG_AEABI=y
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
-# CONFIG_CPU_V7_DCACHE_SKIP is not set
-# CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS is not set
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_TEXT_BASE=0x81000000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_ARCH_HAS_LOWLEVEL_INIT=y
 CONFIG_PROMPT="barebox> "
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
 # CONFIG_TIMESTAMP is not set
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
-
-#
-# Debugging
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -127,60 +19,14 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
 CONFIG_CMD_ECHO_E=y
-
-#
-# memory
-#
 CONFIG_CMD_LOADB=y
-# CONFIG_CMD_MEMINFO is not set
-# CONFIG_CMD_CRC is not set
-# CONFIG_CMD_MTEST is not set
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-# CONFIG_CMD_UBI is not set
-
-#
-# booting
-#
 # CONFIG_CMD_BOOTM is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
-# CONFIG_CMD_LINUX16 is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
-# CONFIG_CMD_GPIO is not set
 CONFIG_CMD_UNLZO=y
 CONFIG_CMD_I2C=y
 CONFIG_NET=y
@@ -188,70 +34,18 @@ CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-# CONFIG_NET_TFTP_PUSH is not set
-# CONFIG_NET_NETCONSOLE is not set
-# CONFIG_NET_RESOLV is not set
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
-CONFIG_MIIDEV=y
-
-#
-# Network drivers
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
-
-#
-# SPI drivers
-#
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_DRIVER_I2C_OMAP=y
-# CONFIG_DRIVER_I2C_MC13892 is not set
-# CONFIG_DRIVER_I2C_MC34704 is not set
-# CONFIG_DRIVER_I2C_MC9SDZ60 is not set
-# CONFIG_DRIVER_I2C_LP3972 is not set
 CONFIG_DRIVER_I2C_TWL4030=y
-
-#
-# flash drivers
-#
-# CONFIG_DRIVER_CFI is not set
 CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_OMAP_GPMC=y
-# CONFIG_MTD_NAND_VERIFY_WRITE is not set
-# CONFIG_MTD_NAND_ECC_SMC is not set
-CONFIG_MTD_NAND_IDS=y
-# CONFIG_UBI is not set
-# CONFIG_ATA is not set
 CONFIG_USB=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_EHCI_OMAP=y
-# CONFIG_USB_ISP1504 is not set
 CONFIG_USB_TWL4030=y
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-CONFIG_CRC16=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
-CONFIG_PROCESS_ESCAPE_SEQUENCE=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/omap3530_beagle_per_uart_defconfig b/arch/arm/configs/omap3530_beagle_per_uart_defconfig
index 76fbe84..f574666 100644
--- a/arch/arm/configs/omap3530_beagle_per_uart_defconfig
+++ b/arch/arm/configs/omap3530_beagle_per_uart_defconfig
@@ -1,138 +1,16 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc10
-# Fri Dec 18 11:49:08 2009
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_IMX is not set
-# CONFIG_ARCH_NETX is not set
 CONFIG_ARCH_OMAP=y
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_V7=y
-CONFIG_CPU_32v7=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0x80e80000
-CONFIG_BOARDINFO="Texas Instrument's Beagle"
-
-#
-# OMAP Features
-#
-CONFIG_ARCH_OMAP3=y
-CONFIG_OMAP_CONFIG_STACKSIZE=0x00008000
-CONFIG_OMAP_MALLOC_LEN=0x00008000
-CONFIG_OMAP_CLOCK_ALL=y
-CONFIG_OMAP_CLOCK_SOURCE_S32K=y
-CONFIG_OMAP3_CLOCK_CONFIG=y
 # CONFIG_OMAP3_COPY_CLOCK_SRAM is not set
-CONFIG_GPMC=y
-
-#
-# OMAP Platform Features
-#
-# CONFIG_MACH_OMAP343xSDP is not set
 CONFIG_MACH_BEAGLE=y
-# CONFIG_MACH_OMAP3EVM is not set
-CONFIG_HAS_OMAP_NAND=y
-# CONFIG_MACH_OMAP_GPMC_NAND is not set
-# CONFIG_AEABI is not set
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
-CONFIG_CMDLINE_TAG=y
-CONFIG_SETUP_MEMORY_TAGS=y
-# CONFIG_INITRD_TAG is not set
-# CONFIG_CPU_V7_DCACHE_SKIP is not set
-# CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS is not set
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_TEXT_BASE=0x40200000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-# CONFIG_MEMORY_LAYOUT_DEFAULT is not set
 CONFIG_MEMORY_LAYOUT_FIXED=y
 CONFIG_STACK_BASE=0x87BF7F10
-CONFIG_STACK_SIZE=0x8000
 CONFIG_MALLOC_BASE=0x87BFFF10
-CONFIG_MALLOC_SIZE=0x400000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_ARCH_HAS_LOWLEVEL_INIT=y
 CONFIG_PROMPT="X-load Beagle>"
-CONFIG_BAUDRATE=115200
-CONFIG_SIMPLE_READLINE=y
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-# CONFIG_SHELL_HUSH is not set
 CONFIG_SHELL_SIMPLE=y
-# CONFIG_CMDLINE_EDITING is not set
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
-# CONFIG_PARTITION is not set
 # CONFIG_DEFAULT_ENVIRONMENT is not set
-
-#
-# Debugging
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
-# CONFIG_CMD_EDIT is not set
-# CONFIG_CMD_EXEC is not set
-# CONFIG_CMD_SLEEP is not set
-# CONFIG_CMD_SAVEENV is not set
-# CONFIG_CMD_LOADENV is not set
-# CONFIG_CMD_EXPORT is not set
-# CONFIG_CMD_PRINTENV is not set
-# CONFIG_CMD_READLINE is not set
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
 # CONFIG_CMD_LS is not set
 # CONFIG_CMD_RM is not set
 # CONFIG_CMD_CAT is not set
@@ -143,73 +21,12 @@ CONFIG_CMD_FALSE=y
 # CONFIG_CMD_CD is not set
 # CONFIG_CMD_MOUNT is not set
 # CONFIG_CMD_UMOUNT is not set
-
-#
-# console
-#
 # CONFIG_CMD_CLEAR is not set
 # CONFIG_CMD_ECHO is not set
-
-#
-# memory
-#
 CONFIG_CMD_LOADB=y
-# CONFIG_CMD_MEMINFO is not set
-# CONFIG_CMD_CRC is not set
-# CONFIG_CMD_MTEST is not set
-
-#
-# flash
-#
-# CONFIG_CMD_FLASH is not set
-
-#
-# booting
-#
 # CONFIG_CMD_BOOTM is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
-# CONFIG_CMD_RESET is not set
 CONFIG_CMD_GO=y
-# CONFIG_CMD_TIMEOUT is not set
-# CONFIG_CMD_PARTITION is not set
-CONFIG_CMD_VERSION=y
 # CONFIG_CMD_HELP is not set
-CONFIG_CMD_DEVINFO=y
-# CONFIG_NET is not set
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
-
-#
-# SPI drivers
-#
 # CONFIG_SPI is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
-# CONFIG_DRIVER_CFI is not set
-# CONFIG_DRIVER_CFI_OLD is not set
-# CONFIG_NAND is not set
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC16=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
diff --git a/arch/arm/configs/omap3_evm_defconfig b/arch/arm/configs/omap3_evm_defconfig
index abf60e6..3fe2647 100644
--- a/arch/arm/configs/omap3_evm_defconfig
+++ b/arch/arm/configs/omap3_evm_defconfig
@@ -1,216 +1,30 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2009.12.0-pre
-# Fri Dec 18 16:39:27 2009
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_IMX is not set
-# CONFIG_ARCH_NETX is not set
 CONFIG_ARCH_OMAP=y
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_V7=y
-CONFIG_CPU_32v7=y
-
-#
-# processor features
-#
-CONFIG_BOARDINFO="Texas Instrument's OMAP3EVM"
-
-#
-# OMAP Features
-#
-CONFIG_ARCH_OMAP3=y
-CONFIG_OMAP_CONFIG_STACKSIZE=0x00008000
-CONFIG_OMAP_MALLOC_LEN=0x00008000
-CONFIG_OMAP_CLOCK_ALL=y
-CONFIG_OMAP_CLOCK_SOURCE_S32K=y
-CONFIG_OMAP3_CLOCK_CONFIG=y
 # CONFIG_OMAP3_COPY_CLOCK_SRAM is not set
-CONFIG_GPMC=y
-
-#
-# OMAP Platform Features
-#
-# CONFIG_MACH_OMAP343xSDP is not set
-# CONFIG_MACH_BEAGLE is not set
 CONFIG_MACH_OMAP3EVM=y
-CONFIG_OMAP3EVM_UART1=y
-# CONFIG_OMAP3EVM_UART3 is not set
-CONFIG_HAS_OMAP_NAND=y
-# CONFIG_MACH_OMAP_GPMC_NAND is not set
 CONFIG_AEABI=y
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
-# CONFIG_CMDLINE_TAG is not set
-# CONFIG_SETUP_MEMORY_TAGS is not set
-# CONFIG_INITRD_TAG is not set
-# CONFIG_CPU_V7_DCACHE_SKIP is not set
-# CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS is not set
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
 # CONFIG_CMD_MEMORY is not set
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_TEXT_BASE=0x40200000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-# CONFIG_MEMORY_LAYOUT_DEFAULT is not set
 CONFIG_MEMORY_LAYOUT_FIXED=y
 CONFIG_STACK_BASE=0x87BF7F10
-CONFIG_STACK_SIZE=0x8000
 CONFIG_MALLOC_BASE=0x87BFFF10
-CONFIG_MALLOC_SIZE=0x400000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_ARCH_HAS_LOWLEVEL_INIT=y
 CONFIG_PROMPT="OMAP3_EVM> "
-CONFIG_BAUDRATE=115200
-CONFIG_SIMPLE_READLINE=y
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-# CONFIG_SHELL_HUSH is not set
 CONFIG_SHELL_SIMPLE=y
-# CONFIG_CMDLINE_EDITING is not set
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
-# CONFIG_PARTITION is not set
 # CONFIG_DEFAULT_ENVIRONMENT is not set
-
-#
-# Debugging
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
-# CONFIG_CMD_EDIT is not set
-# CONFIG_CMD_EXEC is not set
-# CONFIG_CMD_SLEEP is not set
-# CONFIG_CMD_SAVEENV is not set
-# CONFIG_CMD_LOADENV is not set
-# CONFIG_CMD_EXPORT is not set
-# CONFIG_CMD_PRINTENV is not set
-# CONFIG_CMD_READLINE is not set
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
-CONFIG_CMD_LS=y
 # CONFIG_CMD_RM is not set
 # CONFIG_CMD_CAT is not set
 # CONFIG_CMD_MKDIR is not set
 # CONFIG_CMD_RMDIR is not set
 # CONFIG_CMD_CP is not set
-CONFIG_CMD_PWD=y
-CONFIG_CMD_CD=y
 # CONFIG_CMD_MOUNT is not set
 # CONFIG_CMD_UMOUNT is not set
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-
-#
-# memory
-#
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_CRC is not set
-# CONFIG_CMD_MTEST is not set
-
-#
-# flash
-#
-# CONFIG_CMD_FLASH is not set
-
-#
-# booting
-#
 # CONFIG_CMD_BOOTM is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-# CONFIG_CMD_TIMEOUT is not set
-# CONFIG_CMD_PARTITION is not set
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
-# CONFIG_NET is not set
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
-
-#
-# SPI drivers
-#
 # CONFIG_SPI is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
-# CONFIG_DRIVER_CFI is not set
-CONFIG_DRIVER_CFI_OLD=y
-# CONFIG_NAND is not set
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC16=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
diff --git a/arch/arm/configs/pca100_defconfig b/arch/arm/configs/pca100_defconfig
index 5053bf6..d1708a6 100644
--- a/arch/arm/configs/pca100_defconfig
+++ b/arch/arm/configs/pca100_defconfig
@@ -1,131 +1,18 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2010.07.0
-# Tue Aug  3 08:28:20 2010
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_EP93XX is not set
 CONFIG_ARCH_IMX=y
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_ARM926T=y
-CONFIG_CPU_32v5=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0xa7f00000
-CONFIG_BOARDINFO="Phytec phyCard-i.MX27"
-CONFIG_ARCH_HAS_FEC_IMX=y
-
-#
-# Freescale i.MX System-on-Chip
-#
-# CONFIG_ARCH_IMX1 is not set
-# CONFIG_ARCH_IMX21 is not set
-# CONFIG_ARCH_IMX25 is not set
 CONFIG_ARCH_IMX27=y
-# CONFIG_ARCH_IMX31 is not set
-# CONFIG_ARCH_IMX35 is not set
-# CONFIG_MACH_EUKREA_CPUIMX27 is not set
-# CONFIG_MACH_IMX27ADS is not set
 CONFIG_MACH_PCA100=y
-# CONFIG_MACH_PCM038 is not set
-
-#
-# Board specific settings
-#
-
-#
-# i.MX specific settings
-#
 CONFIG_IMX_CLKO=y
 CONFIG_AEABI=y
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_MMU=y
 CONFIG_MMU=y
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
-CONFIG_TEXT_BASE=0xa7f00000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
 CONFIG_MALLOC_SIZE=0x500000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/phycard-i.MX27/env"
-
-#
-# Debugging
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -133,124 +20,26 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
 CONFIG_CMD_ECHO_E=y
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
-# CONFIG_CMD_MTEST_ALTERNATIVE is not set
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
-# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
-# CONFIG_CMD_LINUX16 is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_GPIO=y
-# CONFIG_CMD_UNLZO is not set
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
 CONFIG_NET_TFTP_PUSH=y
 CONFIG_NET_NETCONSOLE=y
-# CONFIG_NET_RESOLV is not set
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-CONFIG_DRIVER_SERIAL_IMX=y
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIDEV=y
-
-#
-# Network drivers
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
-
-#
-# SPI drivers
-#
 # CONFIG_SPI is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
-# CONFIG_DRIVER_CFI is not set
-CONFIG_NAND=y
-CONFIG_NAND_IMX=y
-CONFIG_NAND_IMX_BOOT=y
-# CONFIG_MTD_NAND_VERIFY_WRITE is not set
-# CONFIG_MTD_NAND_ECC_SMC is not set
-CONFIG_MTD_NAND_IDS=y
-# CONFIG_ATA is not set
 CONFIG_USB=y
 CONFIG_USB_EHCI=y
-CONFIG_USB_ULPI=y
 CONFIG_USB_ISP1504=y
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
-CONFIG_PROCESS_ESCAPE_SEQUENCE=y
diff --git a/arch/arm/configs/pcm037_defconfig b/arch/arm/configs/pcm037_defconfig
index bfee2b2..8e60b0a 100644
--- a/arch/arm/configs/pcm037_defconfig
+++ b/arch/arm/configs/pcm037_defconfig
@@ -1,133 +1,16 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2010.07.0
-# Tue Aug  3 08:28:42 2010
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_EP93XX is not set
 CONFIG_ARCH_IMX=y
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_V6=y
-CONFIG_CPU_32v6=y
-
-#
-# processor features
-#
-CONFIG_ARCH_HAS_L2X0=y
 CONFIG_CACHE_L2X0=y
-CONFIG_ARCH_TEXT_BASE=0x87f00000
-CONFIG_BOARDINFO="Phytec phyCORE-i.MX31"
-
-#
-# Freescale i.MX System-on-Chip
-#
-# CONFIG_ARCH_IMX1 is not set
-# CONFIG_ARCH_IMX21 is not set
-# CONFIG_ARCH_IMX25 is not set
-# CONFIG_ARCH_IMX27 is not set
 CONFIG_ARCH_IMX31=y
-# CONFIG_ARCH_IMX35 is not set
-CONFIG_MACH_PCM037=y
-
-#
-# Board specific settings
-#
-CONFIG_PCM037_SDRAM_BANK0_128MB=y
-# CONFIG_PCM037_SDRAM_BANK0_256MB is not set
-CONFIG_PCM037_SDRAM_BANK1_NONE=y
-# CONFIG_PCM037_SDRAM_BANK1_128MB is not set
-# CONFIG_PCM037_SDRAM_BANK1_256MB is not set
-
-#
-# i.MX specific settings
-#
 CONFIG_AEABI=y
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_MMU=y
 CONFIG_MMU=y
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
-CONFIG_TEXT_BASE=0x87f00000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/pcm037/env"
-
-#
-# Debugging
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -135,132 +18,25 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
 CONFIG_CMD_ECHO_E=y
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
-# CONFIG_CMD_MTEST is not set
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
-# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
-# CONFIG_CMD_LINUX16 is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_GPIO=y
-# CONFIG_CMD_UNLZO is not set
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
 CONFIG_NET_TFTP_PUSH=y
 CONFIG_NET_NETCONSOLE=y
-# CONFIG_NET_RESOLV is not set
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-CONFIG_DRIVER_SERIAL_IMX=y
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIDEV=y
-
-#
-# Network drivers
-#
 CONFIG_DRIVER_NET_SMC911X=y
-CONFIG_DRIVER_NET_SMC911X_ADDRESS_SHIFT=0
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
-
-#
-# SPI drivers
-#
-CONFIG_SPI=y
-# CONFIG_DRIVER_SPI_IMX is not set
-# CONFIG_DRIVER_SPI_MC13783 is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
 CONFIG_DRIVER_CFI=y
-CONFIG_DRIVER_CFI_INTEL=y
-CONFIG_DRIVER_CFI_AMD=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_1=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_4=y
-# CONFIG_DRIVER_CFI_BANK_WIDTH_8 is not set
 CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_NAND=y
-CONFIG_NAND_IMX=y
-CONFIG_NAND_IMX_BOOT=y
-# CONFIG_MTD_NAND_VERIFY_WRITE is not set
-# CONFIG_MTD_NAND_ECC_SMC is not set
-CONFIG_MTD_NAND_IDS=y
-# CONFIG_ATA is not set
 CONFIG_USB=y
 CONFIG_USB_EHCI=y
-CONFIG_USB_ULPI=y
-CONFIG_USB_ISP1504=y
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
-CONFIG_PROCESS_ESCAPE_SEQUENCE=y
diff --git a/arch/arm/configs/pcm038_defconfig b/arch/arm/configs/pcm038_defconfig
index a2b31f2..fe112d6 100644
--- a/arch/arm/configs/pcm038_defconfig
+++ b/arch/arm/configs/pcm038_defconfig
@@ -1,131 +1,19 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2010.07.0
-# Tue Aug  3 08:24:23 2010
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_EP93XX is not set
 CONFIG_ARCH_IMX=y
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_ARM926T=y
-CONFIG_CPU_32v5=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0xa0000000
-CONFIG_BOARDINFO="Phytec phyCORE-i.MX27"
-CONFIG_ARCH_HAS_FEC_IMX=y
-
-#
-# Freescale i.MX System-on-Chip
-#
-# CONFIG_ARCH_IMX1 is not set
-# CONFIG_ARCH_IMX21 is not set
-# CONFIG_ARCH_IMX25 is not set
 CONFIG_ARCH_IMX27=y
-# CONFIG_ARCH_IMX31 is not set
-# CONFIG_ARCH_IMX35 is not set
-# CONFIG_MACH_EUKREA_CPUIMX27 is not set
-# CONFIG_MACH_IMX27ADS is not set
-# CONFIG_MACH_PCA100 is not set
 CONFIG_MACH_PCM038=y
-
-#
-# Board specific settings
-#
-
-#
-# i.MX specific settings
-#
 CONFIG_IMX_CLKO=y
 CONFIG_AEABI=y
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_MMU=y
 CONFIG_MMU=y
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_TEXT_BASE=0xa7f00000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
 CONFIG_MALLOC_SIZE=0x1000000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/pcm038/env"
-
-#
-# Debugging
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -133,137 +21,31 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
 CONFIG_CMD_ECHO_E=y
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
-# CONFIG_CMD_MTEST_ALTERNATIVE is not set
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
-# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
-# CONFIG_CMD_LINUX16 is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_BMP=y
 CONFIG_CMD_GPIO=y
-# CONFIG_CMD_UNLZO is not set
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
 CONFIG_NET_TFTP_PUSH=y
 CONFIG_NET_NETCONSOLE=y
-# CONFIG_NET_RESOLV is not set
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-CONFIG_DRIVER_SERIAL_IMX=y
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIDEV=y
-
-#
-# Network drivers
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
-
-#
-# SPI drivers
-#
-CONFIG_SPI=y
-CONFIG_DRIVER_SPI_IMX=y
-CONFIG_DRIVER_SPI_MC13783=y
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
-CONFIG_HAS_CFI=y
 CONFIG_DRIVER_CFI=y
-CONFIG_DRIVER_CFI_INTEL=y
-CONFIG_DRIVER_CFI_AMD=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_1=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_4=y
-# CONFIG_DRIVER_CFI_BANK_WIDTH_8 is not set
 CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_NAND=y
-CONFIG_NAND_IMX=y
-CONFIG_NAND_IMX_BOOT=y
-# CONFIG_MTD_NAND_VERIFY_WRITE is not set
-# CONFIG_MTD_NAND_ECC_SMC is not set
-CONFIG_MTD_NAND_IDS=y
-# CONFIG_ATA is not set
 CONFIG_USB=y
 CONFIG_USB_EHCI=y
-CONFIG_USB_ULPI=y
 CONFIG_USB_ISP1504=y
-# CONFIG_USB_GADGET is not set
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX=y
 CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY=y
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
-CONFIG_PROCESS_ESCAPE_SEQUENCE=y
diff --git a/arch/arm/configs/pcm043_defconfig b/arch/arm/configs/pcm043_defconfig
index b374c7c..04ecc7a 100644
--- a/arch/arm/configs/pcm043_defconfig
+++ b/arch/arm/configs/pcm043_defconfig
@@ -1,135 +1,19 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2010.07.0
-# Tue Aug  3 09:10:56 2010
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_EP93XX is not set
 CONFIG_ARCH_IMX=y
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_V6=y
-CONFIG_CPU_32v6=y
-
-#
-# processor features
-#
-CONFIG_ARCH_HAS_L2X0=y
 CONFIG_CACHE_L2X0=y
-CONFIG_ARCH_TEXT_BASE=0x87f00000
-CONFIG_BOARDINFO="Phytec phyCORE-i.MX35"
-CONFIG_ARCH_HAS_FEC_IMX=y
-# CONFIG_ARCH_IMX_INTERNAL_BOOT is not set
-
-#
-# Freescale i.MX System-on-Chip
-#
-# CONFIG_ARCH_IMX1 is not set
-# CONFIG_ARCH_IMX21 is not set
-# CONFIG_ARCH_IMX25 is not set
-# CONFIG_ARCH_IMX27 is not set
-# CONFIG_ARCH_IMX31 is not set
 CONFIG_ARCH_IMX35=y
-# CONFIG_MACH_EUKREA_CPUIMX35 is not set
-# CONFIG_MACH_FREESCALE_MX35_3STACK is not set
 CONFIG_MACH_PCM043=y
-
-#
-# Board specific settings
-#
-CONFIG_PCM043_DISPLAY_SHARP=y
-# CONFIG_PCM043_DISPLAY_TY090 is not set
-
-#
-# i.MX specific settings
-#
 CONFIG_IMX_CLKO=y
 CONFIG_AEABI=y
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_MMU=y
 CONFIG_MMU=y
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_TEXT_BASE=0x87F00000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/pcm043/env"
-
-#
-# Debugging
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -137,126 +21,21 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-# CONFIG_CMD_ECHO_E is not set
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
-# CONFIG_CMD_MTEST is not set
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
-# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
-# CONFIG_CMD_LINUX16 is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_GPIO=y
-# CONFIG_CMD_UNLZO is not set
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
 CONFIG_NET_TFTP_PUSH=y
 CONFIG_NET_NETCONSOLE=y
-# CONFIG_NET_RESOLV is not set
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-CONFIG_DRIVER_SERIAL_IMX=y
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIDEV=y
-
-#
-# Network drivers
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_FEC_IMX=y
-
-#
-# SPI drivers
-#
 # CONFIG_SPI is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
-CONFIG_HAS_CFI=y
 CONFIG_DRIVER_CFI=y
-CONFIG_DRIVER_CFI_INTEL=y
-CONFIG_DRIVER_CFI_AMD=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_1=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_4=y
-# CONFIG_DRIVER_CFI_BANK_WIDTH_8 is not set
 CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_NAND=y
-CONFIG_NAND_IMX=y
-CONFIG_NAND_IMX_BOOT=y
-# CONFIG_MTD_NAND_VERIFY_WRITE is not set
-# CONFIG_MTD_NAND_ECC_SMC is not set
-CONFIG_MTD_NAND_IDS=y
-# CONFIG_ATA is not set
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
-CONFIG_PROCESS_ESCAPE_SEQUENCE=y
diff --git a/arch/arm/configs/pm9263_defconfig b/arch/arm/configs/pm9263_defconfig
index da7a856..b76f201 100644
--- a/arch/arm/configs/pm9263_defconfig
+++ b/arch/arm/configs/pm9263_defconfig
@@ -1,115 +1,13 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc10
-# Fri Dec 18 11:50:15 2009
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-CONFIG_ARCH_AT91=y
-# CONFIG_ARCH_AT91RM9200 is not set
-# CONFIG_ARCH_IMX is not set
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_ARM926T=y
-CONFIG_CPU_32v5=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0x23f00000
-CONFIG_BOARDINFO="Ronetix PM9263"
-
-#
-# Atmel AT91 System-on-Chip
-#
-# CONFIG_ARCH_AT91SAM9260 is not set
 CONFIG_ARCH_AT91SAM9263=y
-# CONFIG_MACH_AT91SAM9263EK is not set
-# CONFIG_MACH_MMCCPU is not set
 CONFIG_MACH_PM9263=y
-# CONFIG_AEABI is not set
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
-CONFIG_CMDLINE_TAG=y
-CONFIG_SETUP_MEMORY_TAGS=y
-# CONFIG_INITRD_TAG is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-CONFIG_GENERIC_GPIO=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
-CONFIG_TEXT_BASE=0x23f00000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pm9263/env/"
-
-#
-# Debugging
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -117,119 +15,22 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_RARP is not set
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_DRIVER_SERIAL_ATMEL=y
-CONFIG_MIIDEV=y
-
-#
-# Network drivers
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_MACB=y
-
-#
-# SPI drivers
-#
 # CONFIG_SPI is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
 CONFIG_DRIVER_CFI=y
-CONFIG_DRIVER_CFI_NEW=y
-CONFIG_DRIVER_CFI_INTEL=y
-CONFIG_DRIVER_CFI_AMD=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_1=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_4=y
-# CONFIG_DRIVER_CFI_BANK_WIDTH_8 is not set
 CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_NAND=y
-CONFIG_NAND_ATMEL=y
-# CONFIG_MTD_NAND_VERIFY_WRITE is not set
-# CONFIG_MTD_NAND_ECC_SMC is not set
-CONFIG_MTD_NAND_IDS=y
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
diff --git a/arch/arm/configs/scb9328_defconfig b/arch/arm/configs/scb9328_defconfig
index eaf7bd4..49bdc0d 100644
--- a/arch/arm/configs/scb9328_defconfig
+++ b/arch/arm/configs/scb9328_defconfig
@@ -1,241 +1,22 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc10
-# Fri Dec 18 11:50:25 2009
-#
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_ARM=y
-
-#
-# System Type
-#
-# CONFIG_ARCH_AT91 is not set
-# CONFIG_ARCH_AT91RM9200 is not set
 CONFIG_ARCH_IMX=y
-# CONFIG_ARCH_NETX is not set
-# CONFIG_ARCH_OMAP is not set
-# CONFIG_ARCH_S3C24xx is not set
-
-#
-# Processor Type
-#
-CONFIG_CPU_32=y
-CONFIG_CPU_ARM920T=y
-CONFIG_CPU_32v4T=y
-
-#
-# processor features
-#
-CONFIG_ARCH_TEXT_BASE=0x08f80000
-CONFIG_BOARDINFO="Synertronixx scb9328"
-
-#
-# Freescale i.MX System-on-Chip
-#
-CONFIG_ARCH_IMX1=y
-# CONFIG_ARCH_IMX21 is not set
-# CONFIG_ARCH_IMX25 is not set
-# CONFIG_ARCH_IMX27 is not set
-# CONFIG_ARCH_IMX31 is not set
-# CONFIG_ARCH_IMX35 is not set
-# CONFIG_MACH_MX1ADS is not set
 CONFIG_MACH_SCB9328=y
-
-#
-# Board specific settings
-#
-
-#
-# i.MX specific settings
-#
-# CONFIG_AEABI is not set
-
-#
-# Arm specific settings
-#
-CONFIG_CMD_ARM_CPUINFO=y
-CONFIG_CMDLINE_TAG=y
-CONFIG_SETUP_MEMORY_TAGS=y
-# CONFIG_INITRD_TAG is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_GENERIC_GPIO=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_HAVE_MMU=y
-# CONFIG_MMU is not set
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
-CONFIG_TEXT_BASE=0x08f80000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_MACH_HAS_LOWLEVEL_INIT=y
-CONFIG_MACH_DO_LOWLEVEL_INIT=y
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
-# CONFIG_GLOB is not set
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_CMDLINE_EDITING=y
-# CONFIG_AUTO_COMPLETE is not set
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
-# CONFIG_PARTITION is not set
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/scb9328/env"
-
-#
-# Debugging
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
-# CONFIG_CMD_SAVEENV is not set
-# CONFIG_CMD_LOADENV is not set
-# CONFIG_CMD_EXPORT is not set
-# CONFIG_CMD_PRINTENV is not set
-# CONFIG_CMD_READLINE is not set
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_CRC is not set
-# CONFIG_CMD_MTEST is not set
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting
-#
-CONFIG_CMD_BOOTM=y
-# CONFIG_CMD_BOOTM_ZLIB is not set
-# CONFIG_CMD_BOOTM_BZLIB is not set
-# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_RARP is not set
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
-CONFIG_DRIVER_SERIAL_IMX=y
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_HAS_DM9000=y
-CONFIG_MIIDEV=y
-
-#
-# Network drivers
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_DM9000=y
-
-#
-# SPI drivers
-#
-CONFIG_SPI=y
-# CONFIG_DRIVER_SPI_IMX is not set
-# CONFIG_DRIVER_SPI_MC13783 is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
-CONFIG_HAS_CFI=y
 CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_NEW is not set
-CONFIG_DRIVER_CFI_OLD=y
 CONFIG_CFI_BUFFER_WRITE=y
-# CONFIG_NAND is not set
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
diff --git a/arch/blackfin/configs/ipe337_defconfig b/arch/blackfin/configs/ipe337_defconfig
index e5667dc..34c1089 100644
--- a/arch/blackfin/configs/ipe337_defconfig
+++ b/arch/blackfin/configs/ipe337_defconfig
@@ -1,77 +1,8 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc10
-# Fri Dec 18 11:53:16 2009
-#
-CONFIG_BLACKFIN=y
-CONFIG_BF561=y
-CONFIG_BOARDINFO="PII IPE337"
-CONFIG_ARCH_TEXT_BASE=0x00000000
-CONFIG_MACH_IPE337=y
-# CONFIG_MACH_IPE337_V1 is not set
-CONFIG_MACH_IPE337_V2=y
-# CONFIG_BFIN_BOOT_BYPASS is not set
-# CONFIG_BFIN_BOOT_FLASH8 is not set
-CONFIG_BFIN_BOOT_FLASH16=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-
-#
-# General Settings              
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout                 
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
 CONFIG_TEXT_BASE=0x03f00000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
-# CONFIG_GLOB is not set
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_CMDLINE_EDITING=y
-# CONFIG_AUTO_COMPLETE is not set
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/blackin/boards/ipe337/env"
-
-#
-# Debugging                     
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands                      
-#
-
-#
-# scripting                     
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -79,107 +10,19 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands                 
-#
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
-
-#
-# console                       
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-
-#
-# memory                        
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
-# CONFIG_CMD_MTEST is not set
-
-#
-# flash                         
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting                       
-#
-CONFIG_CMD_BOOTM=y
 CONFIG_CMD_BOOTM_ZLIB=y
-# CONFIG_CMD_BOOTM_BZLIB is not set
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_RARP is not set
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-
-#
-# Drivers                       
-#
-
-#
-# serial drivers                
-#
-CONFIG_DRIVER_SERIAL_BLACKFIN=y
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIDEV=y
-
-#
-# Network drivers               
-#
 CONFIG_DRIVER_NET_SMC911X=y
-CONFIG_DRIVER_NET_SMC911X_ADDRESS_SHIFT=1
-# CONFIG_DRIVER_NET_SMC91111 is not set
-
-#
-# SPI drivers                   
-#
-CONFIG_SPI=y
-# CONFIG_DRIVER_SPI_MC13783 is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers                 
-#
 CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_NEW is not set
-CONFIG_DRIVER_CFI_OLD=y
 CONFIG_CFI_BUFFER_WRITE=y
-# CONFIG_NAND is not set
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support            
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_ZLIB=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
diff --git a/arch/m68k/configs/phycore_kpukdr1_5475num_defconfig b/arch/m68k/configs/phycore_kpukdr1_5475num_defconfig
index d868808..14c6d78 100644
--- a/arch/m68k/configs/phycore_kpukdr1_5475num_defconfig
+++ b/arch/m68k/configs/phycore_kpukdr1_5475num_defconfig
@@ -1,143 +1,25 @@
-#
-# Automatically generated make config: don't edit
-# Linux kernel version: 2.0.0-rc4-git
-# Tue Feb 19 13:41:25 2008
-#
-CONFIG_BOARDINFO="konzeptpark UKD Prototype with Phycore MCF5475 NUM"
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_M68K=y
-CONFIG_MCFV4E=y
-CONFIG_ARCH_MCF54xx=y
-# CONFIG_MACH_KPUKDR1 is not set
 CONFIG_MACH_KPUKDR1_NUM=y
-# CONFIG_MACH_KPUKDR2 is not set
-# CONFIG_MACH_KPUKDR2_NUM is not set
-# CONFIG_MACH_PCM982_5485 is not set
-# CONFIG_MACH_PCM982_5475 is not set
-# CONFIG_MACH_PCM982_5475_NUM is not set
-# CONFIG_MACH_PCM982_54455 is not set
-
-#
-# M68k/Coldfire V4E specific settings
-#
-CONFIG_COPY_LOWMEM_VECTORS=y
-# CONFIG_USE_LOWMEM_VECTORS is not set
-CONFIG_CMD_REGDUMP_V4E=y
-CONFIG_CMD_PCI_V4E=y
-
-#
-# M68k/Coldfire specific Linux boot settings
-#
-CONFIG_CMDLINE_TAG=y
-CONFIG_SETUP_MEMORY_TAGS=y
 CONFIG_INITRD_TAG=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-
-#
-# General Settings
-#
-CONFIG_TEXT_BASE=0x07f00000
 CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
-# CONFIG_MODULES is not set
-# CONFIG_KALLSYMS is not set
-CONFIG_HAS_EARLY_INIT=y
-CONFIG_EARLY_INITDATA_RAM_ADDR=0x20000000
-CONFIG_EARLY_INITDATA_RAM_SIZE=0x1f00
-CONFIG_EARLY_INITDATA_SIZE=0x100
-CONFIG_DEBUG_INITCALLS=y
-CONFIG_USE_IRQ=y
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
+CONFIG_LONGHELP=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
-# CONFIG_GLOB is not set
-CONFIG_PROMPT_HUSH_PS2="> "
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-CONFIG_EARLY_CONSOLE_PORT="psc0"
-CONFIG_EARLY_CONSOLE_BAUDRATE=115200
-# CONFIG_OF_FLAT_TREE is not set
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/m68k/boards/kp_ukd_r1_num/env/"
-
-#
-# Debugging
-#
 CONFIG_DEBUG_INFO=y
-CONFIG_DEBUG_LL=y
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
 CONFIG_ENABLE_DEVICE_NOISE=y
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_HELP=y
 CONFIG_CMD_READLINE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-# CONFIG_CMD_SPLASH is not set
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
-# CONFIG_CMD_LOADS is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
-
-#
-# flash
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting
-#
-CONFIG_CMD_BOOTM=y
 CONFIG_CMD_BOOTM_ZLIB=y
 CONFIG_CMD_BOOTM_BZLIB=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
@@ -145,52 +27,10 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
 CONFIG_NET=y
-CONFIG_NET_BOOTP=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_RARP=y
-# CONFIG_NET_SNTP is not set
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-CONFIG_DRIVER_SERIAL_MCFV4E=y
-CONFIG_MIIDEV=y
-
-#
-# Network drivers
-#
-CONFIG_DRIVER_NET_MCF54XX=y
-# CONFIG_DRIVER_NET_MCF54XX_DEBUG is not set
-
-#
-# SPI drivers
-#
-CONFIG_SPI=y
-# CONFIG_DRIVER_SPI_MC13783 is not set
-
-#
-# flash drivers
-#
-CONFIG_HAS_CFI=y
 CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_NEW is not set
-CONFIG_DRIVER_CFI_OLD=y
 CONFIG_CFI_BUFFER_WRITE=y
-# CONFIG_NAND is not set
-
-#
-# Filesystem support
-#
 CONFIG_FS_CRAMFS=y
-CONFIG_ZLIB=y
-CONFIG_BZLIB=y
-CONFIG_CRC32=y
diff --git a/arch/m68k/configs/phycore_mcf54xx_defconfig b/arch/m68k/configs/phycore_mcf54xx_defconfig
index ca3387a..f0d9fc2 100644
--- a/arch/m68k/configs/phycore_mcf54xx_defconfig
+++ b/arch/m68k/configs/phycore_mcf54xx_defconfig
@@ -1,143 +1,25 @@
-#
-# Automatically generated make config: don't edit
-# Linux kernel version: 2.0.1-csc
-# Thu Mar 27 14:02:15 2008
-#
-CONFIG_BOARDINFO="Phytec Baseboard with Phycore MCF5485"
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_M68K=y
-CONFIG_MCFV4E=y
-CONFIG_ARCH_MCF54xx=y
-# CONFIG_MACH_KPUKDR1 is not set
-# CONFIG_MACH_KPUKDR1_NUM is not set
-# CONFIG_MACH_KPUKDR2 is not set
-# CONFIG_MACH_KPUKDR2_NUM is not set
 CONFIG_MACH_PCM982_5485=y
-# CONFIG_MACH_PCM982_5475 is not set
-# CONFIG_MACH_PCM982_5475_NUM is not set
-# CONFIG_MACH_PCM982_54455 is not set
-
-#
-# M68k/Coldfire V4E specific settings
-#
-CONFIG_COPY_LOWMEM_VECTORS=y
-# CONFIG_USE_LOWMEM_VECTORS is not set
-CONFIG_CMD_REGDUMP_V4E=y
-CONFIG_CMD_PCI_V4E=y
-
-#
-# M68k/Coldfire specific Linux boot settings
-#
-CONFIG_CMDLINE_TAG=y
-CONFIG_SETUP_MEMORY_TAGS=y
 CONFIG_INITRD_TAG=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-
-#
-# General Settings              
-#
-CONFIG_TEXT_BASE=0x07f00000
 CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
-# CONFIG_MODULES is not set
-# CONFIG_KALLSYMS is not set
-CONFIG_HAS_EARLY_INIT=y
-CONFIG_EARLY_INITDATA_RAM_ADDR=0x20000000
-CONFIG_EARLY_INITDATA_RAM_SIZE=0x1f00
-CONFIG_EARLY_INITDATA_SIZE=0x100
-CONFIG_DEBUG_INITCALLS=y
-CONFIG_USE_IRQ=y
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
+CONFIG_LONGHELP=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
-# CONFIG_GLOB is not set
-CONFIG_PROMPT_HUSH_PS2="> "
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-CONFIG_EARLY_CONSOLE_PORT="psc0"
-CONFIG_EARLY_CONSOLE_BAUDRATE=115200
-# CONFIG_OF_FLAT_TREE is not set
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/m68k/boards/phycore_mcf54xx/env"
-
-#
-# Debugging                     
-#
 CONFIG_DEBUG_INFO=y
-CONFIG_DEBUG_LL=y
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
 CONFIG_ENABLE_DEVICE_NOISE=y
-
-#
-# Commands                      
-#
-
-#
-# scripting                     
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_HELP=y
 CONFIG_CMD_READLINE=y
-
-#
-# file commands                 
-#
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
-
-#
-# console                       
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-# CONFIG_CMD_SPLASH is not set
-
-#
-# memory                        
-#
-# CONFIG_CMD_LOADB is not set
-# CONFIG_CMD_LOADS is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
-
-#
-# flash                         
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting                       
-#
-CONFIG_CMD_BOOTM=y
 CONFIG_CMD_BOOTM_ZLIB=y
 CONFIG_CMD_BOOTM_BZLIB=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
@@ -145,52 +27,10 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
 CONFIG_NET=y
-CONFIG_NET_BOOTP=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_RARP=y
-# CONFIG_NET_SNTP is not set
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-
-#
-# Drivers                       
-#
-
-#
-# serial drivers                
-#
-CONFIG_DRIVER_SERIAL_MCFV4E=y
-CONFIG_MIIDEV=y
-
-#
-# Network drivers               
-#
-CONFIG_DRIVER_NET_MCF54XX=y
-# CONFIG_DRIVER_NET_MCF54XX_DEBUG is not set
-
-#
-# SPI drivers                   
-#
-CONFIG_SPI=y
-# CONFIG_DRIVER_SPI_MC13783 is not set
-
-#
-# flash drivers                 
-#
-CONFIG_HAS_CFI=y
 CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_NEW is not set
-CONFIG_DRIVER_CFI_OLD=y
 CONFIG_CFI_BUFFER_WRITE=y
-# CONFIG_NAND is not set
-
-#
-# Filesystem support            
-#
 CONFIG_FS_CRAMFS=y
-CONFIG_ZLIB=y
-CONFIG_BZLIB=y
-CONFIG_CRC32=y
diff --git a/arch/ppc/configs/pcm030_defconfig b/arch/ppc/configs/pcm030_defconfig
index 56d8844..6016076 100644
--- a/arch/ppc/configs/pcm030_defconfig
+++ b/arch/ppc/configs/pcm030_defconfig
@@ -1,195 +1,22 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc10
-# Fri Dec 18 11:53:12 2009
-#
-CONFIG_BOARDINFO="Phytec Phycore mpc5200b tiny"
-CONFIG_ARCH_TEXT_BASE=0x01000000
-CONFIG_MPC5XXX_EARLY_CONSOLE=y
-CONFIG_HAS_EARLY_INIT=y
-CONFIG_PPC=y
-CONFIG_ARCH_MPC5200=y
-CONFIG_MPC5200=y
-CONFIG_MPC5xxx=y
-CONFIG_CACHELINE_SIZE=32
-CONFIG_HAS_REGINFO=y
-CONFIG_MACH_PHYCORE_MPC5200B_TINY=y
-
-#
-# Board specific settings       
-#
-CONFIG_MACH_PHYCORE_MPC5200B_TINY_REV=1
-CONFIG_EARLY_CONSOLE_PORT="psc3"
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-
-#
-# General Settings              
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout                 
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
-CONFIG_TEXT_BASE=0x01000000
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-# CONFIG_RELOCATABLE is not set
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-CONFIG_EARLY_CONSOLE_BAUDRATE=115200
 CONFIG_OF_FLAT_TREE=y
 CONFIG_PARTITION=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
-
-#
-# Debugging                     
-#
-# CONFIG_DEBUG_INFO is not set
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands                      
-#
-
-#
-# scripting                     
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
-# CONFIG_CMD_SAVEENV is not set
-# CONFIG_CMD_LOADENV is not set
-# CONFIG_CMD_EXPORT is not set
-# CONFIG_CMD_PRINTENV is not set
-# CONFIG_CMD_READLINE is not set
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands                 
-#
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
-
-#
-# console                       
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-
-#
-# memory                        
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_CRC is not set
-# CONFIG_CMD_MTEST is not set
-
-#
-# flash                         
-#
 CONFIG_CMD_FLASH=y
-
-#
-# booting                       
-#
-CONFIG_CMD_BOOTM=y
 CONFIG_CMD_BOOTM_ZLIB=y
 CONFIG_CMD_BOOTM_BZLIB=y
-# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-# CONFIG_CMD_TIMEOUT is not set
-# CONFIG_CMD_PARTITION is not set
-CONFIG_CMD_TEST=y
-# CONFIG_CMD_REGINFO is not set
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_RARP is not set
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-
-#
-# Drivers                       
-#
-
-#
-# serial drivers                
-#
-CONFIG_DRIVER_SERIAL_MPC5XXX=y
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIDEV=y
-
-#
-# Network drivers               
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_MPC5200=y
-
-#
-# SPI drivers                   
-#
-CONFIG_SPI=y
-# CONFIG_DRIVER_SPI_MC13783 is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers                 
-#
-CONFIG_HAS_CFI=y
 CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_NEW is not set
-CONFIG_DRIVER_CFI_OLD=y
-# CONFIG_CFI_BUFFER_WRITE is not set
-# CONFIG_NAND is not set
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support            
-#
 CONFIG_FS_CRAMFS=y
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_ZLIB=y
-CONFIG_BZLIB=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index 9037c8b..d105584 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -1,63 +1,9 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2.0.0-rc10
-# Fri Dec 18 11:53:08 2009
-#
-CONFIG_ARCH_TEXT_BASE=0x00000000
-CONFIG_BOARDINFO="sandbox"
-CONFIG_LINUX=y
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-
-#
-# General Settings
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout
-#
-CONFIG_STACK_SIZE=0x8000
-CONFIG_MALLOC_SIZE=0x400000
-# CONFIG_BROKEN is not set
-# CONFIG_EXPERIMENTAL is not set
-CONFIG_PROMPT="barebox:"
-CONFIG_BAUDRATE=115200
-# CONFIG_LONGHELP is not set
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/sandbox/board/env"
-
-#
-# Debugging
-#
 CONFIG_DEBUG_INFO=y
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands
-#
-
-#
-# scripting
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -65,100 +11,17 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_TRUE=y
-CONFIG_CMD_FALSE=y
-
-#
-# file commands
-#
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
-
-#
-# console
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-
-#
-# memory
-#
-# CONFIG_CMD_LOADB is not set
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
-# CONFIG_CMD_MTEST is not set
-
-#
-# flash
-#
-# CONFIG_CMD_FLASH is not set
-
-#
-# booting
-#
 # CONFIG_CMD_BOOTM is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-# CONFIG_NET_RARP is not set
-# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
-
-#
-# Drivers
-#
-
-#
-# serial drivers
-#
-CONFIG_DRIVER_SERIAL_LINUX_COMSOLE=y
-# CONFIG_DRIVER_SERIAL_NS16550 is not set
-
-#
-# Network drivers
-#
-# CONFIG_DRIVER_NET_SMC911X is not set
-# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_TAP=y
-
-#
-# SPI drivers
-#
 # CONFIG_SPI is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers
-#
-# CONFIG_DRIVER_CFI is not set
-# CONFIG_DRIVER_CFI_OLD is not set
-# CONFIG_NAND is not set
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support
-#
 CONFIG_FS_CRAMFS=y
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_ZLIB=y
-CONFIG_CRC32=y
-CONFIG_GENERIC_FIND_NEXT_BIT=y
diff --git a/arch/x86/configs/generic_defconfig b/arch/x86/configs/generic_defconfig
index 3c72242..ee13e5c 100644
--- a/arch/x86/configs/generic_defconfig
+++ b/arch/x86/configs/generic_defconfig
@@ -1,85 +1,15 @@
-#
-# Automatically generated make config: don't edit
-# barebox version: 2009.12.0-x86-trunk
-#
-CONFIG_ARCH_TEXT_BASE=0x00007c00
-CONFIG_BOARDINFO="Generic x86 bootloader"
-# CONFIG_BOARD_LINKER_SCRIPT is not set
-CONFIG_GENERIC_LINKER_SCRIPT=y
-CONFIG_X86=y
-CONFIG_MACH_X86_GENERIC=y
-CONFIG_X86_BIOS_BRINGUP=y
-# CONFIG_X86_NATIVE_BRINGUP is not set
-
-#
-# BIOS boot source              
-#
 CONFIG_X86_HDBOOT=y
-
-#
-# Board specific settings       
-#
-CONFIG_GREGORIAN_CALENDER=y
-CONFIG_HAS_KALLSYMS=y
-CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
-CONFIG_ENV_HANDLING=y
-
-#
-# General Settings              
-#
-CONFIG_LOCALVERSION_AUTO=y
-
-#
-# memory layout                 
-#
-CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
-CONFIG_TEXT_BASE=0x00007c00
-CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
-CONFIG_MEMORY_LAYOUT_DEFAULT=y
-# CONFIG_MEMORY_LAYOUT_FIXED is not set
 CONFIG_STACK_SIZE=0x7000
-CONFIG_MALLOC_SIZE=0x400000
 CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
-# CONFIG_MODULES is not set
-# CONFIG_KALLSYMS is not set
 CONFIG_PROMPT="uboot:"
-CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_CBSIZE=1024
-CONFIG_MAXARGS=16
-CONFIG_SHELL_HUSH=y
-# CONFIG_SHELL_SIMPLE is not set
 CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DYNAMIC_CRC_TABLE=y
-CONFIG_ERRNO_MESSAGES=y
-CONFIG_TIMESTAMP=y
-CONFIG_CONSOLE_FULL=y
-CONFIG_CONSOLE_ACTIVATE_FIRST=y
-# CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/x86/boards/x86_generic/env"
-
-#
-# Debugging                     
-#
 CONFIG_DEBUG_INFO=y
-# CONFIG_ENABLE_FLASH_NOISE is not set
-# CONFIG_ENABLE_PARTITION_NOISE is not set
-# CONFIG_ENABLE_DEVICE_NOISE is not set
-
-#
-# Commands                      
-#
-
-#
-# scripting                     
-#
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -89,98 +19,13 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 # CONFIG_CMD_TRUE is not set
 # CONFIG_CMD_FALSE is not set
-
-#
-# file commands                 
-#
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
-
-#
-# console                       
-#
-CONFIG_CMD_CLEAR=y
-CONFIG_CMD_ECHO=y
-
-#
-# memory                        
-#
-# CONFIG_CMD_LOADB is not set
-# CONFIG_CMD_LOADY is not set
-# CONFIG_CMD_LOADS is not set
 CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_CRC is not set
-# CONFIG_CMD_MTEST is not set
-
-#
-# flash                         
-#
-# CONFIG_CMD_FLASH is not set
-
-#
-# booting                       
-#
 # CONFIG_CMD_BOOTM is not set
-CONFIG_CMD_LINUX16=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
-# CONFIG_CMD_PARTITION is not set
-CONFIG_CMD_TEST=y
-CONFIG_CMD_VERSION=y
-CONFIG_CMD_HELP=y
-CONFIG_CMD_DEVINFO=y
-# CONFIG_NET is not set
-
-#
-# Drivers                       
-#
-
-#
-# serial drivers                
-#
 CONFIG_DRIVER_SERIAL_NS16550=y
-
-#
-# SPI drivers                   
-#
 # CONFIG_SPI is not set
-# CONFIG_I2C is not set
-
-#
-# flash drivers                 
-#
-# CONFIG_DRIVER_CFI is not set
-# CONFIG_DRIVER_CFI_OLD is not set
-# CONFIG_NAND is not set
 CONFIG_ATA=y
-
-#
-# drive types
-#
 CONFIG_ATA_DISK=y
-
-#
-# interface types
-#
 CONFIG_ATA_BIOS=y
-# CONFIG_USB is not set
-# CONFIG_USB_GADGET is not set
-# CONFIG_VIDEO is not set
-
-#
-# Filesystem support            
-#
-# CONFIG_FS_CRAMFS is not set
-CONFIG_FS_RAMFS=y
-CONFIG_FS_DEVFS=y
-CONFIG_CRC32=y
-# CONFIG_GENERIC_FIND_NEXT_BIT is not set
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
