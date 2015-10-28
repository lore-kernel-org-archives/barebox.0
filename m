Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZrXfy-0001Qd-V7
 for barebox@lists.infradead.org; Wed, 28 Oct 2015 20:50:31 +0000
MIME-Version: 1.0
Message-ID: <trinity-0d310d91-ea1a-4a70-b46d-11b3b53ff135-1446065406666@3capp-gmx-bs58>
From: "Viktor Stark" <abraar@gmx.net>
Content-Type: multipart/mixed;
 boundary=sgnirkm-07973c3e-a47c-4fa5-a830-498a5c87c8a4
Date: Wed, 28 Oct 2015 21:50:06 +0100
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Booting Linux bzImage on x86_64
To: barebox@lists.infradead.org

--sgnirkm-07973c3e-a47c-4fa5-a830-498a5c87c8a4
Content-Type: text/plain; charset=UTF-8

Hi,

I recently discovered barebox and I am trying to boot a Linux bzImage on an x86_64 embedded platform.

Some background: My project involves an x86_64 embedded device for which I am building a bzImage and a root filesystem with buildroot. The idea is to have multiple combinations of these in order to serve different use cases, but also for fallback situations.

I went down both possible ways on x86, but cannot really find a way to boot a bzImage.

Both configurations are tested under QEMU with barebox 2015.10.0.

1. EFI - I have a working barebox.efi living inside an EF00 partition. The issue I am having is that I cannot really find any pointers as to how to boot a bzImage from these. I have found some earlier posts on the list indicating that it is not possible to boot a bzImage from EFI, but also a G+ post saying that it is possible.

2. Non-EFI - I have compiled barebox with the attached config file, but it seems to triple fault according to qemu. AFAICT (zero asm knowledge here), it seems to be in pmjump.S.
Triple fault
CPU Reset (CPU 0)
EAX=00000000 EBX=00000001 ECX=00000018 EDX=00000011
ESI=00007c9f EDI=00000030 EBP=00000000 ESP=000079fa
EIP=00024b42 EFL=00000006 [-----P-] CPL=0 II=0 A20=1 SMM=0 HLT=0
ES =0000 00000000 0000ffff 00009300 DPL=0 DS16 [-WA]
CS =0010 00000000 ffffffff 00cf9b00 DPL=0 CS32 [-RA]
SS =0000 00000000 0000ffff 00009300 DPL=0 DS16 [-WA]
DS =0000 00000000 0000ffff 00009300 DPL=0 DS16 [-WA]
FS =0000 00000000 0000ffff 00009300 DPL=0 DS16 [-WA]
GS =ffff 000ffff0 0000ffff 00009300 DPL=0 DS16 [-WA]
LDT=0000 00000000 0000ffff 00008200 DPL=0 LDT
TR =0000 00000000 0000ffff 00008b00 DPL=0 TSS32-busy
GDT=     000081e0 00000037
IDT=     00000000 000003ff
CR0=00000011 CR2=00000000 CR3=00000000 CR4=00000000
DR0=00000000 DR1=00000000 DR2=00000000 DR3=00000000
DR6=ffff0ff0 DR7=00000400
CCS=0000002c CCD=00000011 CCO=LOGICB
EFER=0000000000000000
FCW=037f FSW=0000 [ST=0] FTW=00 MXCSR=00001f80
FPR0=0000000000000000 0000 FPR1=0000000000000000 0000
FPR2=0000000000000000 0000 FPR3=0000000000000000 0000
FPR4=0000000000000000 0000 FPR5=0000000000000000 0000
FPR6=0000000000000000 0000 FPR7=0000000000000000 0000
XMM00=00000000000000000000000000000000 XMM01=00000000000000000000000000000000
XMM02=00000000000000000000000000000000 XMM03=00000000000000000000000000000000
XMM04=00000000000000000000000000000000 XMM05=00000000000000000000000000000000
XMM06=00000000000000000000000000000000 XMM07=00000000000000000000000000000000

Any advice / pointer would be welcome as to booting a bzImage on x86.

Thanks.

--
Abraar

--sgnirkm-07973c3e-a47c-4fa5-a830-498a5c87c8a4
Content-Type: application/octet-stream
Content-Disposition: attachment; filename=config-bb

#
# Automatically generated file; DO NOT EDIT.
# Barebox/x86 2015.10.0 Configuration
#
CONFIG_ARCH_TEXT_BASE=0x00007c00
# CONFIG_BOARD_LINKER_SCRIPT is not set
CONFIG_GENERIC_LINKER_SCRIPT=y
CONFIG_X86=y
CONFIG_X86_BOOTLOADER=y
CONFIG_MACH_X86_GENERIC=y
CONFIG_X86_BIOS_BRINGUP=y
# CONFIG_X86_NATIVE_BRINGUP is not set

#
# BIOS boot source
#
CONFIG_X86_HDBOOT=y

#
# Board specific settings
#
# CONFIG_X86_GENERIC_HAS_ISA is not set
CONFIG_X86_GENERIC_HAS_PCI=y
# CONFIG_X86_GENERIC_HAS_VIDEO is not set
CONFIG_X86_GENERIC_HAS_USB=y
CONFIG_DEFCONFIG_LIST="$ARCH_DEFCONFIG"
CONFIG_GREGORIAN_CALENDER=y
CONFIG_HAS_KALLSYMS=y
CONFIG_HAS_MODULES=y
CONFIG_ENV_HANDLING=y
CONFIG_BOOTM=y
CONFIG_BLOCK=y
CONFIG_BLOCK_WRITE=y
CONFIG_FILETYPE=y
CONFIG_BINFMT=y
CONFIG_UIMAGE=y
CONFIG_GLOBALVAR=y
CONFIG_STDDEV=y

#
# General Settings
#
CONFIG_LOCALVERSION=""
CONFIG_LOCALVERSION_AUTO=y
CONFIG_BANNER=y
CONFIG_MEMINFO=y
CONFIG_ENVIRONMENT_VARIABLES=y

#
# memory layout
#
CONFIG_MMU=y
CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
CONFIG_TEXT_BASE=0x00007c00
CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xffffffff
CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0xffffffff
CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
CONFIG_MEMORY_LAYOUT_DEFAULT=y
# CONFIG_MEMORY_LAYOUT_FIXED is not set
CONFIG_STACK_SIZE=0x7000
CONFIG_MALLOC_SIZE=0x400000
# CONFIG_EXPERIMENTAL is not set
CONFIG_MALLOC_DLMALLOC=y
# CONFIG_MALLOC_TLSF is not set
# CONFIG_KALLSYMS is not set
CONFIG_PANIC_HANG=y
CONFIG_PROMPT="barebox:"
CONFIG_BAUDRATE=115200
CONFIG_CBSIZE=1024
CONFIG_SHELL_HUSH=y
# CONFIG_SHELL_SIMPLE is not set
# CONFIG_SHELL_NONE is not set
CONFIG_GLOB=y
CONFIG_GLOB_SORT=y
CONFIG_PROMPT_HUSH_PS2="> "
# CONFIG_HUSH_FANCY_PROMPT is not set
CONFIG_CMDLINE_EDITING=y
CONFIG_AUTO_COMPLETE=y
# CONFIG_MENU is not set
# CONFIG_PASSWORD is not set
CONFIG_DYNAMIC_CRC_TABLE=y
CONFIG_ERRNO_MESSAGES=y
CONFIG_TIMESTAMP=y
# CONFIG_BLSPEC is not set
# CONFIG_IMD is not set
# CONFIG_KERNEL_INSTALL_TARGET is not set
CONFIG_CONSOLE_FULL=y
# CONFIG_CONSOLE_SIMPLE is not set
# CONFIG_CONSOLE_NONE is not set
CONFIG_CONSOLE_ACTIVATE_FIRST=y
# CONFIG_CONSOLE_ACTIVATE_ALL is not set
# CONFIG_CONSOLE_ACTIVATE_NONE is not set
CONFIG_PARTITION=y
CONFIG_PARTITION_DISK=y
CONFIG_PARTITION_DISK_DOS=y
# CONFIG_PARTITION_DISK_EFI is not set
CONFIG_DEFAULT_ENVIRONMENT=y
# CONFIG_DEFAULT_COMPRESSION_GZIP is not set
# CONFIG_DEFAULT_COMPRESSION_BZIP2 is not set
CONFIG_DEFAULT_COMPRESSION_NONE=y
# CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW is not set
# CONFIG_DEFAULT_ENVIRONMENT_GENERIC is not set
CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/x86/boards/x86_generic/env"
# CONFIG_BAREBOXENV_TARGET is not set
# CONFIG_BAREBOXCRC32_TARGET is not set
# CONFIG_POLLER is not set
CONFIG_RESET_SOURCE=y

#
# Debugging
#
CONFIG_COMPILE_LOGLEVEL=8
CONFIG_DEFAULT_LOGLEVEL=8
CONFIG_DEBUG_INFO=y
CONFIG_DEBUG_INITCALLS=y
CONFIG_COMMAND_SUPPORT=y
# CONFIG_HAS_POWEROFF is not set
CONFIG_COMPILE_MEMORY=y

#
# Commands
#

#
# Information
#
CONFIG_CMD_DEVINFO=y
# CONFIG_CMD_DMESG is not set
CONFIG_CMD_DRVINFO=y
CONFIG_CMD_HELP=y
CONFIG_LONGHELP=y
# CONFIG_CMD_IOMEM is not set
# CONFIG_CMD_IMD is not set
CONFIG_CMD_MEMINFO=y
CONFIG_CMD_VERSION=y

#
# Boot
#
CONFIG_FLEXIBLE_BOOTARGS=y
CONFIG_CMD_BOOT=y
# CONFIG_CMD_BOOTM is not set
CONFIG_CMD_LINUX16=y
CONFIG_CMD_GO=y
# CONFIG_CMD_LOADB is not set
# CONFIG_CMD_LOADS is not set
# CONFIG_CMD_LOADY is not set
CONFIG_CMD_RESET=y
# CONFIG_CMD_UIMAGE is not set

#
# Partition
#
# CONFIG_CMD_PARTITION is not set
CONFIG_CMD_AUTOMOUNT=y
CONFIG_CMD_MOUNT=y
CONFIG_CMD_UMOUNT=y

#
# Environment
#
CONFIG_CMD_NV=y
CONFIG_CMD_EXPORT=y
# CONFIG_CMD_DEFAULTENV is not set
CONFIG_CMD_GLOBAL=y
CONFIG_CMD_LOADENV=y
CONFIG_CMD_PRINTENV=y
# CONFIG_CMD_MAGICVAR is not set
CONFIG_CMD_SAVEENV=y

#
# File
#
CONFIG_CMD_BASENAME=y
CONFIG_CMD_CAT=y
CONFIG_CMD_CD=y
CONFIG_CMD_CP=y
# CONFIG_CMD_CMP is not set
# CONFIG_CMD_DIGEST is not set
CONFIG_CMD_DIRNAME=y
# CONFIG_CMD_FILETYPE is not set
# CONFIG_CMD_LN is not set
CONFIG_CMD_LS=y
# CONFIG_CMD_MD5SUM is not set
CONFIG_CMD_MKDIR=y
CONFIG_CMD_PWD=y
CONFIG_CMD_READLINK=y
CONFIG_CMD_RM=y
CONFIG_CMD_RMDIR=y
# CONFIG_CMD_SHA1SUM is not set
# CONFIG_CMD_SHA224SUM is not set
# CONFIG_CMD_SHA256SUM is not set
# CONFIG_CMD_SHA384SUM is not set
# CONFIG_CMD_SHA512SUM is not set
# CONFIG_CMD_UNCOMPRESS is not set

#
# Shell scripting
#
# CONFIG_CMD_FALSE is not set
CONFIG_CMD_GETOPT=y
# CONFIG_CMD_LET is not set
# CONFIG_CMD_MSLEEP is not set
# CONFIG_CMD_READF is not set
CONFIG_CMD_SLEEP=y
CONFIG_CMD_TEST=y
# CONFIG_CMD_TRUE is not set

#
# Console and Framebuffer interaction
#
CONFIG_CMD_CLEAR=y
CONFIG_CMD_ECHO=y
# CONFIG_CMD_ECHO_E is not set
CONFIG_CMD_EDIT=y
# CONFIG_CMD_LOGIN is not set
CONFIG_CMD_READLINE=y
CONFIG_CMD_TIMEOUT=y

#
# Memory
#
# CONFIG_CMD_CRC is not set
CONFIG_CMD_MD=y
CONFIG_CMD_MEMCMP=y
CONFIG_CMD_MEMCPY=y
CONFIG_CMD_MEMSET=y
# CONFIG_CMD_MEMTEST is not set
# CONFIG_CMD_MM is not set
CONFIG_CMD_MW=y

#
# Hardware manipulation
#
# CONFIG_CMD_DETECT is not set
# CONFIG_CMD_FLASH is not set

#
# Miscellaneous
#
# CONFIG_CMD_2048 is not set
# CONFIG_CMD_BAREBOX_UPDATE is not set
# CONFIG_CMD_FIRMWARELOAD is not set
# CONFIG_CMD_OF_DUMP is not set
# CONFIG_CMD_OF_NODE is not set
# CONFIG_CMD_OF_PROPERTY is not set
# CONFIG_CMD_OF_DISPLAY_TIMINGS is not set
# CONFIG_CMD_OFTREE is not set
# CONFIG_CMD_TIME is not set
# CONFIG_CMD_DHRYSTONE is not set
# CONFIG_CMD_SPD_DECODE is not set
# CONFIG_NET is not set

#
# Drivers
#
# CONFIG_OFDEVICE is not set

#
# serial drivers
#
CONFIG_DRIVER_SERIAL_NS16550=y
# CONFIG_DRIVER_SERIAL_CADENCE is not set

#
# SPI drivers
#
# CONFIG_SPI is not set
# CONFIG_I2C is not set
# CONFIG_MTD is not set
CONFIG_DISK=y
CONFIG_DISK_IDE_SFF=y
CONFIG_DISK_WRITE=y

#
# drive types
#
CONFIG_DISK_BIOS=y
CONFIG_DISK_ATA=y

#
# interface types
#
CONFIG_DISK_INTF_PLATFORM_IDE=y
# CONFIG_USB_HOST is not set
# CONFIG_USB_GADGET is not set
# CONFIG_USB_MUSB is not set
# CONFIG_VIDEO is not set
# CONFIG_MCI is not set
CONFIG_CLOCKSOURCE_DUMMY_RATE=1000

#
# MFD
#
# CONFIG_MFD_SYSCON is not set

#
# Misc devices
#
# CONFIG_SRAM is not set
# CONFIG_LED is not set

#
# EEPROM support
#

#
# Input device support
#
# CONFIG_WATCHDOG is not set
# CONFIG_PWM is not set

#
# DMA support
#
# CONFIG_W1 is not set
# CONFIG_PINCTRL is not set

#
# Bus devices
#
# CONFIG_REGULATOR is not set
# CONFIG_RESET_CONTROLLER is not set
# CONFIG_RTC_CLASS is not set

#
# Firmware Drivers
#

#
# PHY Subsystem
#
# CONFIG_GENERIC_PHY is not set

#
# Filesystem support
#
CONFIG_FS=y
CONFIG_FS_AUTOMOUNT=y
# CONFIG_FS_CRAMFS is not set
CONFIG_FS_EXT4=y
CONFIG_FS_RAMFS=y
CONFIG_FS_DEVFS=y
# CONFIG_FS_FAT is not set
# CONFIG_FS_BPKFS is not set
# CONFIG_FS_UIMAGEFS is not set

#
# Library routines
#
CONFIG_PARAMETER=y
CONFIG_UNCOMPRESS=y
CONFIG_ZLIB=y
CONFIG_BZLIB=y
# CONFIG_LZ4_DECOMPRESS is not set
# CONFIG_XZ_DECOMPRESS is not set
CONFIG_GENERIC_FIND_NEXT_BIT=y
# CONFIG_PROCESS_ESCAPE_SEQUENCE is not set
# CONFIG_LZO_DECOMPRESS is not set
CONFIG_QSORT=y

#
# Library gui routines
#
# CONFIG_BAREBOX_LOGO is not set
# CONFIG_BAREBOX_LOGO_64 is not set
# CONFIG_BAREBOX_LOGO_240 is not set
# CONFIG_BAREBOX_LOGO_320 is not set
# CONFIG_BAREBOX_LOGO_400 is not set
# CONFIG_BAREBOX_LOGO_640 is not set
CONFIG_CRC32=y
# CONFIG_DIGEST is not set

--sgnirkm-07973c3e-a47c-4fa5-a830-498a5c87c8a4
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--sgnirkm-07973c3e-a47c-4fa5-a830-498a5c87c8a4--
