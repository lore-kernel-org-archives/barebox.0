Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.g1.pair.com ([66.39.3.162])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOIuJ-00073i-ON
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 03:35:41 +0000
Message-ID: <532278F0.1040409@kosagi.com>
Date: Fri, 14 Mar 2014 11:35:12 +0800
From: Sean Cross <xobs@kosagi.com>
MIME-Version: 1.0
References: <53211233.5070806@kosagi.com>
 <20140313073817.GR17250@pengutronix.de> <53218604.6080702@kosagi.com>
 <20140313202719.GS17250@pengutronix.de>
In-Reply-To: <20140313202719.GS17250@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Porting barebox to Novena: misc questions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14/3/14 4:27 AM, Sascha Hauer wrote:
> On Thu, Mar 13, 2014 at 06:18:44PM +0800, Sean Cross wrote:
>> On 13/3/14 3:38 PM, Sascha Hauer wrote:
>>> Hi Sean,
>>>
>>> On Thu, Mar 13, 2014 at 10:04:35AM +0800, Sean Cross wrote:
>>>> The "usb" command just hangs the system.  It should at least detect the
>>>> other ASIX Ethernet port.  I have &usbh1 configured identically to
>>>> sabrelite.  Is there something else I need to configure?
>>>
>>> This usually means the phys are not configured correctly. Are you
>>> probing from devicetree?
>>
>> I am probing from devicetree.  I don't see phys mentioned anywhere
>> except in the imx6qdl.dtsi file, which means that in theory there
>> shouldn't be anything for me to modify.
> 
> I can try to reproduce this tomorrow on a sabrelite board.
> 
>> Board: Kosagi i.MX6DL Novena Board
>> detected i.MX6 DualLite revision 1.1
>> ERROR: out of memory
>>
>> [<5062e9ed>] (unwind_backtrace+0x1/0x74) from [<5061c525>] (panic+0x1d/0x34)
>> [<5061c525>] (panic+0x1d/0x34) from [<5061cc27>] (xmemalign+0xf/0x14)
>> [<5061cc27>] (xmemalign+0xf/0x14) from [<5062f687>] (mmu_init+0x16b/0x1f8)
>> [<5062f687>] (mmu_init+0x16b/0x1f8) from [<50600797>]
>> (start_barebox+0x1b/0xd0)
>> [<50600797>] (start_barebox+0x1b/0xd0) from [<5062efcd>] (__start+0x91/0xa4)
>> [<5062efcd>] (__start+0x91/0xa4) from [<50600005>]
>> (__bare_init_start+0x1/0xc)
>> ### ERROR ### Please RESET the board ###
>>
>> If I also enable early MMU, it hangs much much earlier.  When I dug into
>> it, it looked like it was trying to place a TTB just outside of the
>> allocated memory region, for some reason.
>>
>> This is with me passing SZ_1G to barebox_arm_entry().  If I pass
>> something small like SZ_64M, it hangs completely.  If I instead pass it
>> SZ_128M, it works just fine, but of course the MMU still doesn't work.
> 
> I suspect you have some memory setting that doesn't work in your
> .config. Could you post it? Particularly the addresses in your backtrace
> are outside the reachable memory (0x10000000 + 1GiB = 0x50000000). This
> should not happen. Do you have CONFIG_RELOCATABLE enabled? If not, make
> sure CONFIG_ARCH_TEXT_BASE is inside the memory you pass to
> barebox_arm_entry(). Otherwise the autodetection for usable malloc area
> space might produce wrong results.

You're on the right track.  Earlier on I started calling
barebox_arm_entry(0x10000000 + 0x800000, SZ_1G, fdt), because otherwise
it would fail in mysterious ways.  Now that I've got ram passing working
correctly, I've set it back to 0x10000000, and I'm able to get further.
 I've also increased the MALLOC_SIZE from 8MB to 64MB, which has made
some out-of-memory errors go away.

Now, it gets much further, even with CONFIG_MMU_EARLY enabled.  Now it
crashes with an error that I see SabreSD was getting at one point, but
I'm not sure how they resolved it:

Board: Kosagi i.MX6DL Novena Board
detected i.MX6 DualLite revision 1.1
BUG: failure at arch/arm/cpu/mmu.c:122/find_pte()!
BUG!
[<4fa2e9cd>] (unwind_backtrace+0x1/0x74) from [<4fa1c525>] (panic+0x1d/0x34)
[<4fa1c525>] (panic+0x1d/0x34) from [<4fa2f485>] (remap_range+0x29/0x88)
[<4fa2f485>] (remap_range+0x29/0x88) from [<4fa2f751>]
(dma_alloc_coherent+0x2d/0x34)
[<4fa2f751>] (dma_alloc_coherent+0x2d/0x34) from [<4fa0d689>]
(ehci_register+0x41/0xa8)
[<4fa0d689>] (ehci_register+0x41/0xa8) from [<4fa0936f>]
(imx_chipidea_probe+0x123/0x168)
[<4fa0936f>] (imx_chipidea_probe+0x123/0x168) from [<4fa07de7>]
(platform_probe+0x9/0xa)
[<4fa07de7>] (platform_probe+0x9/0xa) from [<4fa07bf9>]
(device_probe+0x11/0x44)
[<4fa07bf9>] (device_probe+0x11/0x44) from [<4fa07c53>]
(match.part.3+0x27/0x30)
[<4fa07c53>] (match.part.3+0x27/0x30) from [<4fa07cb5>]
(register_driver+0x59/0x74)
[<4fa07cb5>] (register_driver+0x59/0x74) from [<4fa00797>]
(start_barebox+0x1b/0xd0)
[<4fa00797>] (start_barebox+0x1b/0xd0) from [<4fa2efbd>] (__start+0xa1/0xb4)
[<4fa2efbd>] (__start+0xa1/0xb4) from [<4fa00005>]
(__bare_init_start+0x1/0xc)
### ERROR ### Please RESET the board ###

It's nice to see a USB error message in there -- it makes me think the
two problems might be related.  However, USB still doesn't work with the
MMU disabled, even after fixing the RAM addresses.

Here is the contents of my .config file:

#
# Automatically generated file; DO NOT EDIT.
# Barebox/arm 2014.03.0 Configuration
#
CONFIG_ARM=y
CONFIG_ARM_LINUX=y

#
# System Type
#
# CONFIG_BUILTIN_DTB is not set
# CONFIG_ARCH_AT91 is not set
# CONFIG_ARCH_BCM2835 is not set
# CONFIG_ARCH_CLPS711X is not set
# CONFIG_ARCH_EP93XX is not set
# CONFIG_ARCH_HIGHBANK is not set
CONFIG_ARCH_IMX=y
# CONFIG_ARCH_MVEBU is not set
# CONFIG_ARCH_MXS is not set
# CONFIG_ARCH_NETX is not set
# CONFIG_ARCH_NOMADIK is not set
# CONFIG_ARCH_OMAP is not set
# CONFIG_ARCH_PXA is not set
# CONFIG_ARCH_SOCFPGA is not set
# CONFIG_ARCH_S3C24xx is not set
# CONFIG_ARCH_S5PCxx is not set
# CONFIG_ARCH_S3C64xx is not set
# CONFIG_ARCH_VERSATILE is not set
# CONFIG_ARCH_VEXPRESS is not set
# CONFIG_ARCH_TEGRA is not set
# CONFIG_ARCH_ZYNQ is not set

#
# Processor Type
#
CONFIG_CPU_32=y
CONFIG_CPU_V7=y
CONFIG_CPU_32v7=y

#
# processor features
#
# CONFIG_BOOT_ENDIANNESS_SWITCH is not set
CONFIG_ARCH_TEXT_BASE=0x00908400
CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xffffffff
CONFIG_ARCH_IMX_IMXIMAGE=y

#
# Freescale i.MX System-on-Chip
#
CONFIG_ARCH_IMX6=y
CONFIG_IMX_MULTI_BOARDS=y
# CONFIG_MACH_TX25 is not set
# CONFIG_MACH_EFIKA_MX_SMARTBOOK is not set
# CONFIG_MACH_FREESCALE_MX51_PDK is not set
# CONFIG_MACH_FREESCALE_MX53_LOCO is not set
# CONFIG_MACH_TQMA53 is not set
# CONFIG_MACH_FREESCALE_MX53_VMX53 is not set
# CONFIG_MACH_PHYTEC_PFLA02 is not set
# CONFIG_MACH_DFI_FS700_M60 is not set
# CONFIG_MACH_GUF_SANTARO is not set
# CONFIG_MACH_REALQ7 is not set
# CONFIG_MACH_GK802 is not set
CONFIG_MACH_KOSAGI_NOVENA=y
# CONFIG_MACH_TQMA6X is not set
# CONFIG_MACH_SABRELITE is not set
# CONFIG_MACH_SABRESD is not set
# CONFIG_MACH_NITROGEN6X is not set
# CONFIG_MACH_SOLIDRUN_HUMMINGBOARD is not set
# CONFIG_MACH_UDOO is not set

#
# Board specific settings
#

#
# i.MX specific settings
#
CONFIG_ARCH_IMX_USBLOADER=y
# CONFIG_IMX_IIM is not set
CONFIG_IMX_OCOTP=y
CONFIG_ARM_ASM_UNIFIED=y
CONFIG_AEABI=y
CONFIG_THUMB2_BAREBOX=y
# CONFIG_ARM_BOARD_APPEND_ATAG is not set

#
# Arm specific settings
#
CONFIG_CMD_ARM_CPUINFO=y
CONFIG_CMD_ARM_MMUINFO=y
# CONFIG_CPU_V7_DCACHE_SKIP is not set
CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
CONFIG_ARM_EXCEPTIONS=y
CONFIG_ARM_UNWIND=y
CONFIG_DEFCONFIG_LIST="$ARCH_DEFCONFIG"
CONFIG_GREGORIAN_CALENDER=y
CONFIG_HAS_KALLSYMS=y
CONFIG_HAS_MODULES=y
CONFIG_CMD_MEMORY=y
CONFIG_ENV_HANDLING=y
CONFIG_GENERIC_GPIO=y
CONFIG_BOOTM=y
CONFIG_BLOCK=y
CONFIG_BLOCK_WRITE=y
CONFIG_FILETYPE=y
CONFIG_BINFMT=y
CONFIG_UIMAGE=y
CONFIG_GLOBALVAR=y
CONFIG_STDDEV=y
CONFIG_BAREBOX_UPDATE=y

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
CONFIG_HAVE_PBL_IMAGE=y
CONFIG_HAVE_PBL_MULTI_IMAGES=y
CONFIG_HAVE_IMAGE_COMPRESSION=y
CONFIG_PBL_IMAGE=y
CONFIG_PBL_MULTI_IMAGES=y
CONFIG_PBL_RELOCATABLE=y
CONFIG_IMAGE_COMPRESSION=y
# CONFIG_IMAGE_COMPRESSION_LZ4 is not set
CONFIG_IMAGE_COMPRESSION_LZO=y
# CONFIG_IMAGE_COMPRESSION_GZIP is not set
# CONFIG_IMAGE_COMPRESSION_NONE is not set
CONFIG_MMU=y
CONFIG_MMU_EARLY=y
CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
CONFIG_TEXT_BASE=0x17800000
CONFIG_BAREBOX_MAX_PBL_SIZE=0xffffffff
CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0xffffffff
CONFIG_STACK_SIZE=0x400000
CONFIG_MALLOC_SIZE=0x4000000
CONFIG_BROKEN=y
CONFIG_EXPERIMENTAL=y
# CONFIG_MALLOC_DLMALLOC is not set
CONFIG_MALLOC_TLSF=y
# CONFIG_MODULES is not set
CONFIG_KALLSYMS=y
CONFIG_RELOCATABLE=y
# CONFIG_PANIC_HANG is not set
CONFIG_PROMPT="barebox:"
CONFIG_BAUDRATE=115200
CONFIG_LONGHELP=y
CONFIG_CBSIZE=128
CONFIG_SHELL_HUSH=y
# CONFIG_SHELL_SIMPLE is not set
# CONFIG_SHELL_NONE is not set
CONFIG_GLOB=y
CONFIG_GLOB_SORT=y
CONFIG_PROMPT_HUSH_PS2="> "
CONFIG_HUSH_FANCY_PROMPT=y
CONFIG_HUSH_GETOPT=y
CONFIG_CMDLINE_EDITING=y
CONFIG_AUTO_COMPLETE=y
CONFIG_MENU=y
CONFIG_PASSWORD=y
CONFIG_PASSWORD_DEFAULT=""
CONFIG_PASSWD_SUM_MD5=y
# CONFIG_PASSWD_SUM_SHA1 is not set
# CONFIG_PASSWD_SUM_SHA256 is not set
CONFIG_DYNAMIC_CRC_TABLE=y
CONFIG_ERRNO_MESSAGES=y
CONFIG_TIMESTAMP=y
CONFIG_BLSPEC=y
CONFIG_KERNEL_INSTALL_TARGET=y
CONFIG_CONSOLE_FULL=y
# CONFIG_CONSOLE_SIMPLE is not set
# CONFIG_CONSOLE_NONE is not set
# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
CONFIG_CONSOLE_ACTIVATE_ALL=y
# CONFIG_CONSOLE_ACTIVATE_NONE is not set
CONFIG_PARTITION=y
CONFIG_PARTITION_DISK=y
CONFIG_PARTITION_DISK_DOS=y
CONFIG_PARTITION_DISK_EFI=y
CONFIG_PARTITION_DISK_EFI_GPT_NO_FORCE=y
CONFIG_PARTITION_DISK_EFI_GPT_COMPARE=y
CONFIG_DEFAULT_ENVIRONMENT=y
# CONFIG_DEFAULT_COMPRESSION_GZIP is not set
CONFIG_DEFAULT_COMPRESSION_LZO=y
# CONFIG_DEFAULT_COMPRESSION_NONE is not set
CONFIG_HAVE_DEFAULT_ENVIRONMENT_NEW=y
CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU=y
CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/kosagi-novena/env"
CONFIG_BAREBOXENV_TARGET=y
CONFIG_BAREBOXCRC32_TARGET=y
CONFIG_POLLER=y
CONFIG_RESET_SOURCE=y

#
# Debugging
#
CONFIG_COMPILE_LOGLEVEL=6
CONFIG_DEFAULT_LOGLEVEL=7
# CONFIG_DEBUG_INFO is not set
# CONFIG_DEBUG_LL is not set
CONFIG_DEBUG_IMX_UART_PORT=1
# CONFIG_DEBUG_INITCALLS is not set
CONFIG_HAS_DEBUG_LL=y
CONFIG_COMMAND_SUPPORT=y
# CONFIG_HAS_POWEROFF is not set

#
# commands
#

#
# scripting
#
CONFIG_CMD_EDIT=y
CONFIG_CMD_SLEEP=y
CONFIG_CMD_MSLEEP=y
CONFIG_CMD_SAVEENV=y
CONFIG_CMD_LOADENV=y
CONFIG_CMD_EXPORT=y
CONFIG_CMD_PRINTENV=y
CONFIG_CMD_READLINE=y
CONFIG_CMD_READF=y
CONFIG_CMD_LET=y
CONFIG_CMD_TRUE=y
CONFIG_CMD_FALSE=y
CONFIG_CMD_MENU=y
CONFIG_CMD_MENU_MANAGEMENT=y
CONFIG_CMD_LOGIN=y
CONFIG_CMD_PASSWD=y
# CONFIG_PASSWD_MODE_HIDE is not set
CONFIG_PASSWD_MODE_STAR=y
# CONFIG_PASSWD_MODE_CLEAR is not set
CONFIG_CMD_TIME=y
CONFIG_CMD_GLOBAL=y

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
CONFIG_CMD_AUTOMOUNT=y
CONFIG_CMD_BASENAME=y
CONFIG_CMD_DIRNAME=y
CONFIG_CMD_LN=y
CONFIG_CMD_READLINK=y
CONFIG_CMD_FILETYPE=y

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
CONFIG_CMD_IOMEM=y
CONFIG_CMD_MD=y
CONFIG_CMD_MW=y
CONFIG_CMD_MM=y
CONFIG_CMD_MEMCMP=y
CONFIG_CMD_MEMCPY=y
CONFIG_CMD_MEMSET=y
CONFIG_CMD_CRC=y
CONFIG_CMD_CRC_CMP=y
CONFIG_CMD_DIGEST=y
CONFIG_CMD_MD5SUM=y
CONFIG_CMD_SHA1SUM=y
CONFIG_CMD_SHA256SUM=y
CONFIG_CMD_SHA224SUM=y

#
# flash
#
CONFIG_CMD_FLASH=y

#
# booting
#
CONFIG_CMD_BOOTM=y
CONFIG_CMD_BOOTM_SHOW_TYPE=y
CONFIG_CMD_BOOTM_VERBOSE=y
CONFIG_CMD_BOOTM_INITRD=y
CONFIG_CMD_BOOTM_OFTREE=y
CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
CONFIG_CMD_BOOTM_AIMAGE=y
CONFIG_CMD_UIMAGE=y
CONFIG_CMD_BOOTZ=y
CONFIG_CMD_BOOTU=y
CONFIG_FLEXIBLE_BOOTARGS=y
CONFIG_CMD_BOOT=y
CONFIG_CMD_RESET=y
CONFIG_CMD_GO=y
CONFIG_CMD_OFTREE=y
CONFIG_CMD_OF_PROPERTY=y
CONFIG_CMD_OF_NODE=y

#
# testing
#
CONFIG_CMD_MEMTEST=y

#
# video command
#
CONFIG_CMD_SPLASH=y
CONFIG_CMD_BAREBOX_UPDATE=y
CONFIG_CMD_TIMEOUT=y
CONFIG_CMD_PARTITION=y
CONFIG_CMD_TEST=y
CONFIG_CMD_VERSION=y
CONFIG_CMD_HELP=y
CONFIG_CMD_MAGICVAR=y
CONFIG_CMD_MAGICVAR_HELP=y
CONFIG_CMD_DEVINFO=y
CONFIG_CMD_GPIO=y
CONFIG_CMD_UNCOMPRESS=y
CONFIG_CMD_I2C=y
CONFIG_CMD_SPI=y
CONFIG_CMD_LED=y
CONFIG_CMD_LED_TRIGGER=y
CONFIG_CMD_USB=y
CONFIG_CMD_CLK=y
CONFIG_CMD_DETECT=y
CONFIG_CMD_WD=y
CONFIG_CMD_WD_DEFAULT_TIMOUT=0
CONFIG_NET=y
CONFIG_NET_DHCP=y
CONFIG_NET_NFS=y
CONFIG_NET_PING=y
CONFIG_NET_NETCONSOLE=y
CONFIG_NET_RESOLV=y
CONFIG_NET_IFUP=y
CONFIG_NET_CMD_IFUP=y

#
# Drivers
#
CONFIG_OFTREE=y
CONFIG_OFTREE_MEM_GENERIC=y
CONFIG_DTC=y
CONFIG_OFDEVICE=y
CONFIG_OF_NET=y
CONFIG_OF_GPIO=y
CONFIG_OF_BAREBOX_DRIVERS=y

#
# serial drivers
#
# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
CONFIG_DRIVER_SERIAL_IMX=y
# CONFIG_DRIVER_SERIAL_NS16550 is not set
# CONFIG_DRIVER_SERIAL_CADENCE is not set
CONFIG_ARCH_HAS_FEC_IMX=y

#
# Network drivers
#
# CONFIG_DRIVER_NET_CALXEDA_XGMAC is not set
# CONFIG_DRIVER_NET_DESIGNWARE is not set
# CONFIG_DRIVER_NET_ETHOC is not set
# CONFIG_DRIVER_NET_FEC_IMX is not set
# CONFIG_DRIVER_NET_KS8851_MLL is not set
# CONFIG_DRIVER_NET_MICREL is not set
# CONFIG_DRIVER_NET_SMC911X is not set
# CONFIG_DRIVER_NET_SMC91111 is not set

#
# phylib
#
# CONFIG_NET_USB is not set

#
# SPI drivers
#
CONFIG_SPI=y
CONFIG_DRIVER_SPI_IMX=y
CONFIG_DRIVER_SPI_IMX_2_3=y
CONFIG_I2C=y
CONFIG_I2C_ALGOBIT=y

#
# I2C Hardware Bus support
#
CONFIG_I2C_GPIO=y
CONFIG_I2C_IMX=y
# CONFIG_MTD is not set
CONFIG_DISK=y
CONFIG_DISK_WRITE=y

#
# drive types
#
CONFIG_DISK_ATA=y
CONFIG_DISK_AHCI=y
CONFIG_DISK_AHCI_IMX=y

#
# interface types
#
# CONFIG_DISK_INTF_PLATFORM_IDE is not set
CONFIG_USB=y
CONFIG_USB_IMX_CHIPIDEA=y
CONFIG_USB_IMX_PHY=y
CONFIG_USB_EHCI=y
CONFIG_USB_ULPI=y
CONFIG_USB_STORAGE=y
CONFIG_USB_HAVE_GADGET_DRIVER=y
CONFIG_USB_GADGET=y
CONFIG_USB_GADGET_DUALSPEED=y
CONFIG_USB_GADGET_DRIVER_ARC=y

#
# USB Gadget drivers
#
CONFIG_USB_GADGET_DFU=y
CONFIG_USB_GADGET_SERIAL=y
CONFIG_VIDEO=y
CONFIG_DRIVER_VIDEO_SIMPLEFB=y
CONFIG_MCI=y

#
# --- Feature list ---
#
CONFIG_MCI_STARTUP=y
CONFIG_MCI_INFO=y
CONFIG_MCI_WRITE=y
CONFIG_MCI_MMC_BOOT_PARTITIONS=y

#
# --- MCI host drivers ---
#
# CONFIG_MCI_DW is not set
CONFIG_MCI_IMX_ESDHC=y
# CONFIG_MCI_IMX_ESDHC_PIO is not set
# CONFIG_MCI_SPI is not set
CONFIG_HAVE_CLK=y
CONFIG_CLKDEV_LOOKUP=y
CONFIG_COMMON_CLK=y

#
# MFD
#
# CONFIG_MFD_LP3972 is not set
# CONFIG_MFD_MC13XXX is not set
# CONFIG_MFD_MC34704 is not set
# CONFIG_MFD_MC9SDZ60 is not set
CONFIG_MFD_STMPE=y
CONFIG_MFD_SYSCON=y
# CONFIG_MFD_TWL4030 is not set
# CONFIG_MFD_TWL6030 is not set

#
# Misc devices
#
CONFIG_JTAG=y
CONFIG_SRAM=y
CONFIG_LED=y
CONFIG_LED_GPIO=y
CONFIG_LED_PWM=y
CONFIG_LED_GPIO_OF=y
# CONFIG_LED_GPIO_RGB is not set
# CONFIG_LED_GPIO_BICOLOR is not set
CONFIG_LED_TRIGGERS=y

#
# EEPROM support
#
# CONFIG_EEPROM_AT25 is not set
# CONFIG_EEPROM_AT24 is not set

#
# Input device support
#
CONFIG_KEYBOARD_GPIO=y
# CONFIG_KEYBOARD_IMX_KEYPAD is not set
# CONFIG_KEYBOARD_QT1070 is not set
CONFIG_WATCHDOG_IMX_RESET_SOURCE=y
CONFIG_WATCHDOG=y
CONFIG_WATCHDOG_IMX=y
CONFIG_PWM=y
CONFIG_PWM_IMX=y

#
# DMA support
#
CONFIG_MXS_APBH_DMA=y
CONFIG_GPIOLIB=y

#
# GPIO
#
CONFIG_GPIO_GENERIC=y
CONFIG_GPIO_GENERIC_PLATFORM=y
CONFIG_GPIO_IMX=y
# CONFIG_GPIO_OMAP is not set
CONFIG_GPIO_STMPE=y
# CONFIG_GPIO_DESIGNWARE is not set
# CONFIG_W1 is not set
CONFIG_PINCTRL=y
CONFIG_PINCTRL_IMX_IOMUX_V3=y
CONFIG_PINCTRL_SINGLE=y

#
# Bus devices
#
CONFIG_IMX_WEIM=y

#
# Filesystem support
#
CONFIG_FS=y
CONFIG_FS_AUTOMOUNT=y
CONFIG_FS_CRAMFS=y
CONFIG_FS_EXT4=y
CONFIG_FS_RAMFS=y
CONFIG_FS_DEVFS=y
# CONFIG_FS_TFTP is not set
# CONFIG_FS_NFS is not set
CONFIG_FS_FAT=y
CONFIG_FS_FAT_WRITE=y
CONFIG_FS_FAT_LFN=y
# CONFIG_FS_BPKFS is not set
CONFIG_FS_UIMAGEFS=y

#
# Library routines
#
CONFIG_PARAMETER=y
CONFIG_UNCOMPRESS=y
CONFIG_ZLIB=y
# CONFIG_BZLIB is not set
# CONFIG_LZ4_DECOMPRESS is not set
# CONFIG_GENERIC_FIND_NEXT_BIT is not set
CONFIG_PROCESS_ESCAPE_SEQUENCE=y
CONFIG_LZO_DECOMPRESS=y
CONFIG_QSORT=y
CONFIG_XYMODEM=y
CONFIG_STMP_DEVICE=y

#
# Library gui routines
#
CONFIG_IMAGE_RENDERER=y
CONFIG_BMP=y
# CONFIG_PNG is not set
CONFIG_CRC32=y
CONFIG_CRC16=y
CONFIG_DIGEST=y
CONFIG_MD5=y
CONFIG_SHA1=y
CONFIG_SHA224=y
CONFIG_SHA256=y


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
