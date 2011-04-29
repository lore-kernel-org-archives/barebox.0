Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bsmtp4.bon.at ([195.3.86.186] helo=bsmtp.bon.at)
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QFpxI-0003Yr-5A
	for barebox@lists.infradead.org; Fri, 29 Apr 2011 15:50:09 +0000
Received: from aspire.localdomain (unknown [88.116.171.82])
	by bsmtp.bon.at (Postfix) with ESMTP id D2FF3CDF97
	for <barebox@lists.infradead.org>;
	Fri, 29 Apr 2011 17:49:52 +0200 (CEST)
From: Peter Gsellmann <pgsellmann@portner-elektronik.at>
Date: Fri, 29 Apr 2011 17:49:59 +0200
MIME-Version: 1.0
Content-Type: Multipart/Mixed;
  boundary="Boundary-00=_n4tuNJrkI74MMDf"
Message-Id: <201104291749.59855.pgsellmann@portner-elektronik.at>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [bug] commands/loads.c:31: fatal error: exports.h: No such file or
	directory
To: barebox@lists.infradead.org

--Boundary-00=_n4tuNJrkI74MMDf
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit

Trying to compile barebox for the AT91SAM9260EK, found this error.
Compiler is gcc version 4.4.1 (Sourcery G++ Lite 2010q1-188) 

steps to reproduce:
export ARCH=arm
export CROSS_COMPILE=arm-none-eabi-
make


Is the 'loads' command ready for inclusion or would
# CONFIG_CMD_LOADS is not set
be better?


Thanks for any advice,
Peter

--Boundary-00=_n4tuNJrkI74MMDf
Content-Type: text/plain;
  charset="UTF-8";
  name=".config"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=".config"

#
# Automatically generated make config: don't edit
# Linux/arm 2011.04.0 Barebox Configuration
# Fri Apr 29 17:23:04 2011
#
# CONFIG_BOARD_LINKER_SCRIPT is not set
CONFIG_GENERIC_LINKER_SCRIPT=y
CONFIG_ARM=y

#
# System Type
#
CONFIG_ARCH_AT91=y
# CONFIG_ARCH_EP93XX is not set
# CONFIG_ARCH_IMX is not set
# CONFIG_ARCH_MXS is not set
# CONFIG_ARCH_NETX is not set
# CONFIG_ARCH_NOMADIK is not set
# CONFIG_ARCH_OMAP is not set
# CONFIG_ARCH_S3C24xx is not set
# CONFIG_ARCH_VERSATILE is not set

#
# Processor Type
#
CONFIG_CPU_32=y
CONFIG_CPU_ARM926T=y
CONFIG_CPU_32v5=y

#
# processor features
#
# CONFIG_BOOT_ENDIANNESS_SWITCH is not set
CONFIG_ARCH_TEXT_BASE=0x23f00000
CONFIG_BOARDINFO="Atmel 91SAM9260-EK"
CONFIG_HAVE_NAND_ATMEL_BUSWIDTH_16=y

#
# Atmel AT91 System-on-Chip
#
CONFIG_ARCH_AT91SAM9260=y
# CONFIG_ARCH_AT91SAM9261 is not set
# CONFIG_ARCH_AT91SAM9263 is not set
# CONFIG_ARCH_AT91SAM9G10 is not set
# CONFIG_ARCH_AT91SAM9G20 is not set
# CONFIG_ARCH_AT91SAM9G45 is not set
CONFIG_MACH_AT91SAM9260EK=y

#
# AT91 Board Options
#
# CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16 is not set
CONFIG_AEABI=y

#
# Arm specific settings         
#
CONFIG_CMD_ARM_CPUINFO=y
CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
# CONFIG_ARM_UNWIND is not set
CONFIG_DEFCONFIG_LIST="$ARCH_DEFCONFIG"
CONFIG_GREGORIAN_CALENDER=y
CONFIG_HAS_KALLSYMS=y
CONFIG_HAS_MODULES=y
CONFIG_CMD_MEMORY=y
CONFIG_ENV_HANDLING=y
CONFIG_GENERIC_GPIO=y

#
# General Settings              
#
CONFIG_LOCALVERSION_AUTO=y

#
# memory layout                 
#
CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
CONFIG_TEXT_BASE=0x23f00000
CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
CONFIG_MEMORY_LAYOUT_DEFAULT=y
# CONFIG_MEMORY_LAYOUT_FIXED is not set
CONFIG_STACK_SIZE=0x8000
CONFIG_MALLOC_SIZE=0x400000
CONFIG_BROKEN=y
CONFIG_EXPERIMENTAL=y
# CONFIG_MODULES is not set
# CONFIG_KALLSYMS is not set
CONFIG_PROMPT="barebox:"
CONFIG_BAUDRATE=115200
CONFIG_LONGHELP=y
CONFIG_CBSIZE=1024
CONFIG_MAXARGS=16
CONFIG_SHELL_HUSH=y
# CONFIG_SHELL_SIMPLE is not set
# CONFIG_GLOB is not set
CONFIG_PROMPT_HUSH_PS2="> "
# CONFIG_HUSH_FANCY_PROMPT is not set
CONFIG_HUSH_GETOPT=y
CONFIG_CMDLINE_EDITING=y
# CONFIG_AUTO_COMPLETE is not set
# CONFIG_MENU is not set
# CONFIG_PASSWORD is not set
CONFIG_DYNAMIC_CRC_TABLE=y
CONFIG_ERRNO_MESSAGES=y
CONFIG_TIMESTAMP=y
CONFIG_CONSOLE_FULL=y
CONFIG_CONSOLE_ACTIVATE_FIRST=y
# CONFIG_OF_FLAT_TREE is not set
CONFIG_PARTITION=y
CONFIG_DEFAULT_ENVIRONMENT=y
CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
CONFIG_DEFAULT_ENVIRONMENT_PATH=""
# CONFIG_POLLER is not set

#
# Debugging                     
#
CONFIG_DEBUG_INFO=y
# CONFIG_ENABLE_FLASH_NOISE is not set
# CONFIG_ENABLE_PARTITION_NOISE is not set
# CONFIG_ENABLE_DEVICE_NOISE is not set

#
# Commands                      
#

#
# scripting                     
#
CONFIG_CMD_EDIT=y
CONFIG_CMD_SLEEP=y
CONFIG_CMD_SAVEENV=y
CONFIG_CMD_LOADENV=y
CONFIG_CMD_EXPORT=y
CONFIG_CMD_PRINTENV=y
CONFIG_CMD_READLINE=y
CONFIG_CMD_TRUE=y
CONFIG_CMD_FALSE=y
# CONFIG_CMD_LOGIN is not set
# CONFIG_CMD_PASSWD is not set

#
# file commands                 
#
CONFIG_CMD_LS=y
CONFIG_CMD_RM=y
CONFIG_CMD_CAT=y
CONFIG_CMD_MKDIR=y
CONFIG_CMD_RMDIR=y
CONFIG_CMD_CP=y
CONFIG_CMD_PWD=y
CONFIG_CMD_CD=y
CONFIG_CMD_MOUNT=y
CONFIG_CMD_UMOUNT=y

#
# console                       
#
CONFIG_CMD_CLEAR=y
CONFIG_CMD_ECHO=y
CONFIG_CMD_ECHO_E=y

#
# memory                        
#
CONFIG_CMD_LOADB=y
CONFIG_CMD_LOADY=y
CONFIG_CMD_LOADS=y
CONFIG_CMD_SAVES=y
CONFIG_CMD_MEMINFO=y
CONFIG_CMD_CRC=y
CONFIG_CMD_CRC_CMP=y
CONFIG_CMD_MTEST=y
CONFIG_CMD_MTEST_ALTERNATIVE=y

#
# flash                         
#
CONFIG_CMD_FLASH=y
CONFIG_CMD_UBI=y

#
# booting                       
#
CONFIG_CMD_BOOTM=y
CONFIG_CMD_BOOTM_ZLIB=y
CONFIG_CMD_BOOTM_BZLIB=y
CONFIG_CMD_BOOTM_SHOW_TYPE=y
CONFIG_CMD_BOOTZ=y
CONFIG_CMD_BOOTU=y
CONFIG_CMD_RESET=y
CONFIG_CMD_GO=y
CONFIG_CMD_TIMEOUT=y
CONFIG_CMD_PARTITION=y
CONFIG_CMD_TEST=y
CONFIG_CMD_VERSION=y
CONFIG_CMD_HELP=y
CONFIG_CMD_DEVINFO=y
CONFIG_CMD_GPIO=y
CONFIG_CMD_UNLZO=y
CONFIG_CMD_I2C=y
CONFIG_CMD_LED=y
CONFIG_NET=y
CONFIG_NET_DHCP=y
# CONFIG_NET_NFS is not set
CONFIG_NET_PING=y
CONFIG_NET_TFTP=y
CONFIG_NET_TFTP_PUSH=y
CONFIG_NET_NETCONSOLE=y
# CONFIG_NET_RESOLV is not set

#
# Drivers                       
#

#
# serial drivers                
#
# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
# CONFIG_DRIVER_SERIAL_NS16550 is not set
CONFIG_DRIVER_SERIAL_ATMEL=y
CONFIG_HAS_MACB=y
CONFIG_MIIDEV=y

#
# Network drivers               
#
# CONFIG_DRIVER_NET_SMC911X is not set
# CONFIG_DRIVER_NET_SMC91111 is not set
CONFIG_DRIVER_NET_MACB=y
# CONFIG_NET_USB is not set

#
# SPI drivers                   
#
CONFIG_SPI=y
CONFIG_I2C=y

#
# I2C Hardware Bus support
#

#
# flash drivers                 
#
# CONFIG_DRIVER_CFI is not set
CONFIG_MTD=y
CONFIG_NAND=y
CONFIG_NAND_ATMEL=y
# CONFIG_MTD_NAND_VERIFY_WRITE is not set
# CONFIG_MTD_NAND_ECC_SMC is not set
CONFIG_MTD_NAND_IDS=y
# CONFIG_MTD_NAND_DISKONCHIP is not set
CONFIG_UBI=y
# CONFIG_ATA is not set
CONFIG_USB=y
CONFIG_USB_EHCI=y
# CONFIG_USB_ISP1504 is not set
# CONFIG_USB_TWL4030 is not set
CONFIG_USB_GADGET=y
CONFIG_USB_GADGET_DFU=y
# CONFIG_USB_GADGET_SERIAL is not set
# CONFIG_VIDEO is not set
# CONFIG_MCI is not set

#
# MFD
#
# CONFIG_I2C_MC13892 is not set
# CONFIG_I2C_MC34704 is not set
# CONFIG_I2C_MC9SDZ60 is not set
# CONFIG_I2C_LP3972 is not set
# CONFIG_I2C_TWL4030 is not set
# CONFIG_DRIVER_SPI_MC13783 is not set
CONFIG_LED=y
CONFIG_LED_GPIO=y
# CONFIG_LED_GPIO_RGB is not set
# CONFIG_LED_TRIGGERS is not set

#
# Filesystem support            
#
# CONFIG_FS_CRAMFS is not set
CONFIG_FS_RAMFS=y
CONFIG_FS_DEVFS=y
CONFIG_PARTITION_NEED_MTD=y
CONFIG_ZLIB=y
CONFIG_BZLIB=y
CONFIG_CRC32=y
CONFIG_CRC16=y
CONFIG_DIGEST=y
CONFIG_MD5=y
CONFIG_SHA1=y
CONFIG_SHA256=y
# CONFIG_GENERIC_FIND_NEXT_BIT is not set
CONFIG_PROCESS_ESCAPE_SEQUENCE=y
CONFIG_LZO_DECOMPRESS=y

--Boundary-00=_n4tuNJrkI74MMDf
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--Boundary-00=_n4tuNJrkI74MMDf--
