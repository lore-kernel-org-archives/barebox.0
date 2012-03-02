Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay06.ispgateway.de ([80.67.31.103])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S3Vka-0003A3-6M
 for barebox@lists.infradead.org; Fri, 02 Mar 2012 16:54:40 +0000
From: Asen Chavdarov Dimov <dimov@ronetix.at>
Date: Fri,  2 Mar 2012 18:55:20 +0200
Message-Id: <1330707323-8021-1-git-send-email-dimov@ronetix.at>
In-Reply-To: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
References: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
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
Subject: [PATCH v2 1/4] pm9g45: boot from NAND
To: barebox@lists.infradead.org

- change the kernel and rootfs locations
- correct the NAND mtd partitions
- fix the DDR RAM location(so BareBox load address)
- expect the root file system type to be UBIFS

Signed-off-by: Asen Chavdarov Dimov <dimov@ronetix.at>
---
since v1:
	this patch I gorgot to send, so it pops-up now
---
 arch/arm/boards/pm9g45/env/config |    8 +-
 arch/arm/configs/pm9g45_defconfig |  339 +++++++++++++++++++++++++++++++++---
 2 files changed, 314 insertions(+), 33 deletions(-)

diff --git a/arch/arm/boards/pm9g45/env/config b/arch/arm/boards/pm9g45/env/config
index 3dea724..1858292 100644
--- a/arch/arm/boards/pm9g45/env/config
+++ b/arch/arm/boards/pm9g45/env/config
@@ -11,9 +11,9 @@ ip=dhcp
 #eth0.serverip=a.b.c.d
 
 # can be either 'nfs', 'tftp' or 'nand'
-kernel_loc=tftp
+kernel_loc=nand
 # can be either 'net', 'nand' or 'initrd'
-rootfs_loc=net
+rootfs_loc=nand
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
@@ -25,8 +25,8 @@ kernelimage=uImage
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
-nand_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
-rootfs_mtdblock_nand=3
+nand_parts="128k(bootstrap)ro,256k(barebox)ro,1664k(bareboxenv),3M(kernel.bb),-(root)"
+rootfs_mtdblock_nand=4
 
 autoboot_timeout=3
 
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index bf9af22..f05d4de 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -1,55 +1,336 @@
+#
+# Automatically generated file; DO NOT EDIT.
+# Linux/arm 2012.02.0 Barebox Configuration
+#
+# CONFIG_BOARD_LINKER_SCRIPT is not set
+CONFIG_GENERIC_LINKER_SCRIPT=y
+CONFIG_ARM=y
+CONFIG_ARM_LINUX=y
+
+#
+# System Type                   
+#
+CONFIG_ARCH_AT91=y
+# CONFIG_ARCH_EP93XX is not set
+# CONFIG_ARCH_IMX is not set
+# CONFIG_ARCH_MXS is not set
+# CONFIG_ARCH_NETX is not set
+# CONFIG_ARCH_NOMADIK is not set
+# CONFIG_ARCH_OMAP is not set
+# CONFIG_ARCH_PXA is not set
+# CONFIG_ARCH_S3C24xx is not set
+# CONFIG_ARCH_VERSATILE is not set
+
+#
+# Processor Type
+#
+CONFIG_CPU_32=y
+CONFIG_CPU_ARM926T=y
+CONFIG_CPU_32v5=y
+
+#
+# processor features
+#
+# CONFIG_BOOT_ENDIANNESS_SWITCH is not set
+CONFIG_ARCH_TEXT_BASE=0x73f00000
+CONFIG_BOARDINFO="Ronetix PM9G45"
+CONFIG_AT91SAM9G45_RESET=y
+
+#
+# Atmel AT91 System-on-Chip
+#
+# CONFIG_ARCH_AT91RM9200 is not set
+# CONFIG_ARCH_AT91SAM9260 is not set
+# CONFIG_ARCH_AT91SAM9261 is not set
+# CONFIG_ARCH_AT91SAM9263 is not set
+# CONFIG_ARCH_AT91SAM9G10 is not set
+# CONFIG_ARCH_AT91SAM9G20 is not set
 CONFIG_ARCH_AT91SAM9G45=y
+CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE=0xF000
+# CONFIG_MACH_AT91SAM9M10G45EK is not set
 CONFIG_MACH_PM9G45=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PROMPT="pm9g45:"
+
+#
+# AT91 Board Options
+#
+CONFIG_AEABI=y
+
+#
+# Arm specific settings         
+#
+CONFIG_CMD_ARM_CPUINFO=y
+# CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS is not set
+CONFIG_ARM_EXCEPTIONS=y
+# CONFIG_ARM_UNWIND is not set
+CONFIG_DEFCONFIG_LIST="$ARCH_DEFCONFIG"
+CONFIG_GREGORIAN_CALENDER=y
+CONFIG_HAS_KALLSYMS=y
+CONFIG_HAS_MODULES=y
+CONFIG_CMD_MEMORY=y
+CONFIG_ENV_HANDLING=y
+CONFIG_GENERIC_GPIO=y
+CONFIG_FILETYPE=y
+
+#
+# General Settings              
+#
+CONFIG_LOCALVERSION=""
+CONFIG_LOCALVERSION_AUTO=y
+CONFIG_BANNER=y
+CONFIG_ENVIRONMENT_VARIABLES=y
+
+#
+# memory layout                 
+#
+# CONFIG_MMU is not set
+CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
+CONFIG_TEXT_BASE=0x73f00000
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xffffffff
+CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0xffffffff
+CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
+CONFIG_MEMORY_LAYOUT_DEFAULT=y
+# CONFIG_MEMORY_LAYOUT_FIXED is not set
+CONFIG_STACK_SIZE=0x8000
+CONFIG_MALLOC_SIZE=0x400000
+# CONFIG_BROKEN is not set
+# CONFIG_EXPERIMENTAL is not set
+CONFIG_MALLOC_DLMALLOC=y
+# CONFIG_MALLOC_TLSF is not set
+# CONFIG_KALLSYMS is not set
+CONFIG_PROMPT="barebox:"
+CONFIG_BAUDRATE=115200
 CONFIG_LONGHELP=y
-CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="y"
-CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CBSIZE=1024
+CONFIG_MAXARGS=16
+CONFIG_SHELL_HUSH=y
+# CONFIG_SHELL_SIMPLE is not set
+# CONFIG_GLOB is not set
+CONFIG_PROMPT_HUSH_PS2="> "
+# CONFIG_HUSH_FANCY_PROMPT is not set
+CONFIG_HUSH_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_PASSWD_SUM_SHA1=y
+# CONFIG_MENU is not set
+# CONFIG_PASSWORD is not set
+CONFIG_DYNAMIC_CRC_TABLE=y
+CONFIG_ERRNO_MESSAGES=y
+CONFIG_TIMESTAMP=y
+CONFIG_CONSOLE_FULL=y
+CONFIG_CONSOLE_ACTIVATE_FIRST=y
 CONFIG_PARTITION=y
+CONFIG_PARTITION_DISK=y
+CONFIG_PARTITION_DISK_DOS=y
+CONFIG_DEFAULT_ENVIRONMENT=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pm9g45/env"
+CONFIG_POLLER=y
+
+#
+# Debugging                     
+#
+# CONFIG_DEBUG_INFO is not set
+# CONFIG_ENABLE_FLASH_NOISE is not set
+# CONFIG_ENABLE_PARTITION_NOISE is not set
+CONFIG_ENABLE_DEVICE_NOISE=y
+CONFIG_COMMAND_SUPPORT=y
+
+#
+# commands                      
+#
+
+#
+# scripting                     
+#
 CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
+# CONFIG_CMD_SLEEP is not set
 CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_PASSWD=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_TRUE=y
+CONFIG_CMD_FALSE=y
+# CONFIG_CMD_LOGIN is not set
+# CONFIG_CMD_PASSWD is not set
+# CONFIG_CMD_TIME is not set
+
+#
+# file commands                 
+#
+CONFIG_CMD_LS=y
+CONFIG_CMD_RM=y
+CONFIG_CMD_CAT=y
+CONFIG_CMD_MKDIR=y
+CONFIG_CMD_RMDIR=y
+CONFIG_CMD_CP=y
+CONFIG_CMD_PWD=y
+CONFIG_CMD_CD=y
+CONFIG_CMD_MOUNT=y
+CONFIG_CMD_UMOUNT=y
+CONFIG_CMD_NAND=y
+# CONFIG_CMD_NANDTEST is not set
+
+#
+# console                       
+#
+CONFIG_CMD_CLEAR=y
+CONFIG_CMD_ECHO=y
+# CONFIG_CMD_ECHO_E is not set
+
+#
+# memory                        
+#
+# CONFIG_CMD_LOADB is not set
+# CONFIG_CMD_LOADS is not set
+# CONFIG_CMD_MEMINFO is not set
+# CONFIG_CMD_IOMEM is not set
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+# CONFIG_CMD_MD5SUM is not set
+# CONFIG_CMD_SHA1SUM is not set
+# CONFIG_CMD_SHA256SUM is not set
+# CONFIG_CMD_SHA224SUM is not set
+# CONFIG_CMD_MTEST is not set
+
+#
+# flash                         
+#
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_BZLIB=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_UBI=y
+
+#
+# booting                       
+#
+CONFIG_CMD_BOOTM=y
+# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
+CONFIG_CMD_BOOTM_VERBOSE=y
+# CONFIG_CMD_BOOTM_INITRD is not set
+# CONFIG_CMD_BOOTM_OFTREE is not set
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_BOOTU=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+# CONFIG_CMD_OFTREE is not set
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_TEST=y
+CONFIG_CMD_VERSION=y
+CONFIG_CMD_HELP=y
+# CONFIG_CMD_MAGICVAR is not set
+CONFIG_CMD_DEVINFO=y
+# CONFIG_CMD_GPIO is not set
+# CONFIG_CMD_UNCOMPRESS is not set
+CONFIG_CMD_I2C=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_NFS=y
+# CONFIG_NET_NFS is not set
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
+# CONFIG_NET_TFTP is not set
+# CONFIG_NET_TFTP_PUSH is not set
+# CONFIG_NET_NETCONSOLE is not set
+# CONFIG_NET_RESOLV is not set
+
+#
+# Drivers                       
+#
+
+#
+# serial drivers                
+#
+# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
+# CONFIG_DRIVER_SERIAL_NS16550 is not set
+CONFIG_DRIVER_SERIAL_ATMEL=y
+CONFIG_HAS_MACB=y
+CONFIG_MIIDEV=y
+
+#
+# Network drivers               
+#
+# CONFIG_DRIVER_NET_SMC911X is not set
+# CONFIG_DRIVER_NET_SMC91111 is not set
 CONFIG_DRIVER_NET_MACB=y
-# CONFIG_SPI is not set
-CONFIG_DRIVER_CFI=y
-CONFIG_CFI_BUFFER_WRITE=y
+
+#
+# SPI drivers                   
+#
+CONFIG_SPI=y
+CONFIG_DRIVER_SPI_ATMEL=y
+CONFIG_I2C=y
+
+#
+# I2C Hardware Bus support
+#
+
+#
+# flash drivers                 
+#
+# CONFIG_DRIVER_CFI is not set
+CONFIG_MTD_M25P80=y
+CONFIG_MTD_SST25L=y
 CONFIG_MTD=y
+CONFIG_MTD_WRITE=y
+CONFIG_MTD_OOB_DEVICE=y
+# CONFIG_MTD_RAW_DEVICE is not set
+
+#
+# Self contained MTD devices
+#
+# CONFIG_MTD_DOCG3 is not set
 CONFIG_NAND=y
+CONFIG_NAND_ECC_SOFT=y
+CONFIG_NAND_ECC_HW=y
+CONFIG_NAND_ECC_HW_SYNDROME=y
+CONFIG_NAND_ECC_HW_NONE=y
+CONFIG_NAND_INFO=y
+CONFIG_NAND_READ_OOB=y
+CONFIG_NAND_BBT=y
+CONFIG_NAND_ATMEL=y
+# CONFIG_MTD_NAND_VERIFY_WRITE is not set
+# CONFIG_MTD_NAND_ECC_SMC is not set
+CONFIG_MTD_NAND_IDS=y
 CONFIG_UBI=y
+# CONFIG_DISK is not set
+# CONFIG_USB is not set
+# CONFIG_USB_GADGET is not set
+# CONFIG_VIDEO is not set
+# CONFIG_MCI is not set
+CONFIG_CLKDEV_LOOKUP=y
+
+#
+# MFD
+#
+# CONFIG_I2C_MC13892 is not set
+# CONFIG_I2C_MC34704 is not set
+# CONFIG_I2C_MC9SDZ60 is not set
+# CONFIG_I2C_LP3972 is not set
+# CONFIG_I2C_TWL6030 is not set
+# CONFIG_DRIVER_SPI_MC13783 is not set
+# CONFIG_LED is not set
+
+#
+# EEPROM support
+#
+CONFIG_EEPROM_AT25=y
+
+#
+# Filesystem support            
+#
+# CONFIG_FS_CRAMFS is not set
+CONFIG_FS_RAMFS=y
+CONFIG_FS_DEVFS=y
+# CONFIG_FS_FAT is not set
+CONFIG_PARTITION_NEED_MTD=y
+
+#
+# Library routines
+#
+CONFIG_PARAMETER=y
+CONFIG_UNCOMPRESS=y
+# CONFIG_ZLIB is not set
+# CONFIG_BZLIB is not set
+# CONFIG_GENERIC_FIND_NEXT_BIT is not set
+# CONFIG_PROCESS_ESCAPE_SEQUENCE is not set
+# CONFIG_LZO_DECOMPRESS is not set
+CONFIG_CRC32=y
+# CONFIG_DIGEST is not set
-- 
1.7.4.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
