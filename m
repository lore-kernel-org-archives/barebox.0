Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RKvuD-0006Ld-TT
	for barebox@lists.infradead.org; Mon, 31 Oct 2011 17:44:22 +0000
Received: by faaf16 with SMTP id f16so7769318faa.36
	for <barebox@lists.infradead.org>; Mon, 31 Oct 2011 10:44:12 -0700 (PDT)
Message-ID: <4EAEDE2C.5010904@crane-soft.de>
Date: Mon, 31 Oct 2011 18:43:08 +0100
From: Peter <sailingsmoky@googlemail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Failed to launch barebox from flash memory on i.MX35
To: barebox@lists.infradead.org

Hi all,
I just managed to compile the latest barebox source (http://barebox.org/download/barebox-2011.10.0.tar.bz2 <http://barebox.org/download/>) for the pcm043 board.
I configured and compiled it:
$ make pcm043_defconfig
$ make xconfig # nothing changed there
$ make

I used the following CROSS environment settings:
export PATH="$PATH:/opt/OSELAS.Toolchain-1.99.3/arm-1136jfs-linux-gnueabi/gcc-4.3.2-glibc-2.8-binutils-2.19-kernel-2.6.27-sanitized/bin"
export ARCH=arm
export CROSS_COMPILE=arm-1136jfs-linux-gnueabi-

The make went well without any problems.
I flashed the barebox.bin at address 0xa000_0000 and rebootet.
The program then trapped while trying to relocate the code to SDRAM.
The SDRAM is propperly initialized but the call to memcpy takes adress
0x9FFFE000 as source and 0x87F00000 as destination.
0x9FFFE000 is definitely not correct, it is 0x2000 below the start of the
flash memory, obviously the same size as symbol  _stext in the map
when subtracting the base address.

Map:
00038e50 A _barebox_image_size
87f02000 T _stext
87f02000 T _text

The source is in arch/arm/copu/start.c at line 122.

I am completly stuck. What went wrong?
Any help will be very much appreciated.

Regards, Peter

.config

#
# Automatically generated make config: don't edit
# Linux/arm 2011.10.0 Barebox Configuration
# Sun Oct 30 18:48:51 2011
#
# CONFIG_BOARD_LINKER_SCRIPT is not set
CONFIG_GENERIC_LINKER_SCRIPT=y
CONFIG_ARM=y
CONFIG_ARM_LINUX=y

#
# System Type
#
# CONFIG_ARCH_AT91 is not set
# CONFIG_ARCH_EP93XX is not set
CONFIG_ARCH_IMX=y
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
CONFIG_CPU_V6=y
CONFIG_CPU_32v6=y

#
# processor features
#
# CONFIG_BOOT_ENDIANNESS_SWITCH is not set
CONFIG_ARCH_HAS_L2X0=y
CONFIG_CACHE_L2X0=y
CONFIG_ARCH_TEXT_BASE=0x87f00000
CONFIG_BOARDINFO="Phytec phyCORE-i.MX35"
CONFIG_ARCH_IMX_INTERNAL_BOOT=y
# CONFIG_ARCH_IMX_EXTERNAL_BOOT is not set
CONFIG_ARCH_IMX_INTERNAL_BOOT_NAND=y
# CONFIG_ARCH_IMX_INTERNAL_BOOT_NOR is not set
# CONFIG_ARCH_IMX_INTERNAL_BOOT_ONENAND is not set

#
# Freescale i.MX System-on-Chip
#
# CONFIG_ARCH_IMX1 is not set
# CONFIG_ARCH_IMX21 is not set
# CONFIG_ARCH_IMX25 is not set
# CONFIG_ARCH_IMX27 is not set
# CONFIG_ARCH_IMX31 is not set
CONFIG_ARCH_IMX35=y
# CONFIG_ARCH_IMX51 is not set
# CONFIG_ARCH_IMX53 is not set
# CONFIG_MACH_EUKREA_CPUIMX35 is not set
# CONFIG_MACH_FREESCALE_MX35_3STACK is not set
CONFIG_MACH_PCM043=y
# CONFIG_MACH_GUF_CUPID is not set

#
# Board specific settings      
#
CONFIG_PCM043_DISPLAY_SHARP=y
# CONFIG_PCM043_DISPLAY_TY090 is not set

#
# i.MX specific settings       
#
CONFIG_IMX_CLKO=y
CONFIG_IMX_IIM=y
CONFIG_IMX_IIM_FUSE_BLOW=y
CONFIG_AEABI=y

#
# Arm specific settings        
#
CONFIG_CMD_ARM_CPUINFO=y
# CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS is not set
CONFIG_ARM_EXCEPTIONS=y
CONFIG_ARM_UNWIND=y
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
CONFIG_ENVIRONMENT_VARIABLES=y

#
# memory layout                
#
CONFIG_MMU=y
CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
CONFIG_TEXT_BASE=0x87F00000
CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
CONFIG_MEMORY_LAYOUT_DEFAULT=y
# CONFIG_MEMORY_LAYOUT_FIXED is not set
CONFIG_STACK_SIZE=0x8000
CONFIG_MALLOC_SIZE=0x1000000
# CONFIG_BROKEN is not set
# CONFIG_EXPERIMENTAL is not set
CONFIG_MALLOC_DLMALLOC=y
CONFIG_KALLSYMS=y
CONFIG_MACH_HAS_LOWLEVEL_INIT=y
CONFIG_MACH_DO_LOWLEVEL_INIT=y
CONFIG_PROMPT="barebox:"
CONFIG_BAUDRATE=115200
CONFIG_LONGHELP=y
CONFIG_CBSIZE=1024
CONFIG_MAXARGS=16
CONFIG_SHELL_HUSH=y
# CONFIG_SHELL_SIMPLE is not set
CONFIG_GLOB=y
CONFIG_PROMPT_HUSH_PS2="> "
CONFIG_HUSH_FANCY_PROMPT=y
CONFIG_HUSH_GETOPT=y
CONFIG_CMDLINE_EDITING=y
CONFIG_AUTO_COMPLETE=y
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
CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pcm043/env"
# CONFIG_POLLER is not set

#
# Debugging                    
#
CONFIG_DEBUG_INFO=y
# CONFIG_ENABLE_FLASH_NOISE is not set
# CONFIG_ENABLE_PARTITION_NOISE is not set
# CONFIG_ENABLE_DEVICE_NOISE is not set
CONFIG_COMMAND_SUPPORT=y

#
# commands                     
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
# CONFIG_CMD_TIME is not set

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
CONFIG_CMD_NAND=y

#
# console                      
#
CONFIG_CMD_CLEAR=y
CONFIG_CMD_ECHO=y
CONFIG_CMD_ECHO_E=y

#
# memory                       
#
# CONFIG_CMD_LOADB is not set
# CONFIG_CMD_LOADS is not set
CONFIG_CMD_MEMINFO=y
CONFIG_CMD_CRC=y
CONFIG_CMD_CRC_CMP=y
# CONFIG_CMD_MD5SUM is not set
# CONFIG_CMD_SHA1SUM is not set
# CONFIG_CMD_SHA256SUM is not set
# CONFIG_CMD_MTEST is not set

#
# flash                        
#
CONFIG_CMD_FLASH=y
CONFIG_CMD_UBI=y

#
# booting                      
#
CONFIG_CMD_BOOTM=y
# CONFIG_CMD_BOOTM_ZLIB is not set
# CONFIG_CMD_BOOTM_BZLIB is not set
# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
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
CONFIG_NET=y
CONFIG_NET_DHCP=y
CONFIG_NET_NFS=y
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
CONFIG_DRIVER_SERIAL_IMX=y
# CONFIG_DRIVER_SERIAL_NS16550 is not set
CONFIG_ARCH_HAS_FEC_IMX=y
CONFIG_MIIDEV=y
#
# Network drivers              
#
# CONFIG_DRIVER_NET_SMC911X is not set
# CONFIG_DRIVER_NET_SMC91111 is not set
CONFIG_DRIVER_NET_FEC_IMX=y
#
# SPI drivers                  
#
# CONFIG_SPI is not set
# CONFIG_I2C is not set

#
# flash drivers                
#
CONFIG_DRIVER_CFI=y
CONFIG_HAS_CFI=y
CONFIG_DRIVER_CFI_INTEL=y
CONFIG_DRIVER_CFI_AMD=y
CONFIG_DRIVER_CFI_BANK_WIDTH_1=y
CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
CONFIG_DRIVER_CFI_BANK_WIDTH_4=y
# CONFIG_DRIVER_CFI_BANK_WIDTH_8 is not set
CONFIG_CFI_BUFFER_WRITE=y
CONFIG_MTD=y
CONFIG_NAND=y
CONFIG_NAND_WRITE=y
CONFIG_NAND_ECC_SOFT=y
CONFIG_NAND_ECC_HW=y
CONFIG_NAND_ECC_HW_SYNDROME=y
CONFIG_NAND_ECC_HW_NONE=y
CONFIG_NAND_INFO=y
CONFIG_NAND_BBT=y
CONFIG_NAND_READ_OOB=y
CONFIG_NAND_IMX=y
# CONFIG_MTD_NAND_VERIFY_WRITE is not set
# CONFIG_MTD_NAND_ECC_SMC is not set
CONFIG_MTD_NAND_IDS=y
CONFIG_UBI=y
# CONFIG_ATA is not set
# CONFIG_USB is not set
# CONFIG_USB_GADGET is not set
# CONFIG_VIDEO is not set
# CONFIG_MCI is not set

#
# MFD
#
# CONFIG_LED is not set

#
# EEPROM support
#

#
# Filesystem support           
#
# CONFIG_FS_CRAMFS is not set
CONFIG_FS_RAMFS=y
CONFIG_FS_DEVFS=y
# CONFIG_FS_FAT is not set
CONFIG_PARTITION_NEED_MTD=y
CONFIG_CRC32=y
# CONFIG_DIGEST is not set
# CONFIG_GENERIC_FIND_NEXT_BIT is not set
CONFIG_PROCESS_ESCAPE_SEQUENCE=y
CONFIG_LZO_DECOMPRESS=y


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
