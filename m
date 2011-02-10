Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PnV40-0003Mb-Ua
	for barebox@lists.infradead.org; Thu, 10 Feb 2011 11:51:58 +0000
Date: Thu, 10 Feb 2011 12:48:58 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110210114858.GC11255@game.jcrosoft.org>
References: <AANLkTikb2tgLZhBYbunUG10Sz7FO3Yx_P1+5Fo0GonAD@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTikb2tgLZhBYbunUG10Sz7FO3Yx_P1+5Fo0GonAD@mail.gmail.com>
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
Subject: Re: No NAND access on AT91SAM9G20-EK
To: Mickael Chazaux <mickael.chazaux@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

	which ecc did u use before?

Best Regards,
J.
On 12:09 Thu 10 Feb     , Mickael Chazaux wrote:
> Hi,
> 
> I managed to compile Barebox for AT91SAM9G20-EK, and I can run it. However
> it seems not capable of reading the NAND Flash.
> 
> Output is at [1], my configuration is [2]. The "err -74" is EBADMSG, in
> line 1057 of "file drivers/mtd/nand/nand_base.c"
> 
> [1]
> barebox 2011.02.0-00070-gc5dd4c4-dirty (Feb 10 2011 - 11:58:24)
> 
> Board: Atmel at91sam9g20-ek
> Clocks: CPU 792 MHz, master 132 MHz, main 18.432 MHz
> NAND device: Manufacturer ID: 0xec, Chip ID: 0xda (Samsung NAND 256MiB
> 3,3V 8-bit)
> Scanning device for bad blocks
> Bad eraseblock 1621 at 0x0caa0000
> Malloc space: 0x23b00000 -> 0x23f00000 (size  4 MB)
> Stack space : 0x23af8000 -> 0x23b00000 (size 32 kB)
> err -74
> envfs: wrong magic on /dev/env0
> no valid environment found on /dev/env0. Using default environment
> running /env/bin/init...
> 
> Hit any key to stop autoboot:  3
> 
> type update_kernel [<imagename>] to update kernel into flash
> type udate_root [<imagename>] to update rootfs into flash
> 
> 9G20-EK:/
> 
> [2]
> #
> # Automatically generated make config: don't edit
> # Linux/arm 2011.02.0 Barebox Configuration
> # Thu Feb 10 11:58:15 2011
> #
> # CONFIG_BOARD_LINKER_SCRIPT is not set
> CONFIG_GENERIC_LINKER_SCRIPT=y
> CONFIG_ARM=y
> 
> #
> # System Type
> #
> CONFIG_ARCH_AT91=y
> # CONFIG_ARCH_EP93XX is not set
> # CONFIG_ARCH_IMX is not set
> # CONFIG_ARCH_MXS is not set
> # CONFIG_ARCH_NETX is not set
> # CONFIG_ARCH_NOMADIK is not set
> # CONFIG_ARCH_OMAP is not set
> # CONFIG_ARCH_S3C24xx is not set
> # CONFIG_ARCH_VERSATILE is not set
> 
> #
> # Processor Type
> #
> CONFIG_CPU_32=y
> CONFIG_CPU_ARM926T=y
> CONFIG_CPU_32v5=y
> 
> #
> # processor features
> #
> # CONFIG_BOOT_ENDIANNESS_SWITCH is not set
> CONFIG_ARCH_TEXT_BASE=0x23f00000
> CONFIG_BOARDINFO="Atmel at91sam9g20-ek"
> CONFIG_HAVE_NAND_ATMEL_BUSWIDTH_16=y
> 
> #
> # Atmel AT91 System-on-Chip
> #
> # CONFIG_ARCH_AT91SAM9260 is not set
> # CONFIG_ARCH_AT91SAM9261 is not set
> # CONFIG_ARCH_AT91SAM9263 is not set
> # CONFIG_ARCH_AT91SAM9G10 is not set
> CONFIG_ARCH_AT91SAM9G20=y
> # CONFIG_ARCH_AT91SAM9G45 is not set
> CONFIG_MACH_AT91SAM9G20EK=y
> 
> #
> # AT91 Board Options
> #
> # CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16 is not set
> # CONFIG_AT91_HAVE_2MMC is not set
> # CONFIG_AEABI is not set
> 
> #
> # Arm specific settings
> #
> CONFIG_CMD_ARM_CPUINFO=y
> CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> CONFIG_DEFCONFIG_LIST="$ARCH_DEFCONFIG"
> CONFIG_GREGORIAN_CALENDER=y
> CONFIG_HAS_KALLSYMS=y
> CONFIG_HAS_MODULES=y
> CONFIG_CMD_MEMORY=y
> CONFIG_ENV_HANDLING=y
> CONFIG_GENERIC_GPIO=y
> 
> #
> # General Settings
> #
> CONFIG_LOCALVERSION_AUTO=y
> 
> #
> # memory layout
> #
> CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
> CONFIG_TEXT_BASE=0x23f00000
> CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
> CONFIG_MEMORY_LAYOUT_DEFAULT=y
> # CONFIG_MEMORY_LAYOUT_FIXED is not set
> CONFIG_STACK_SIZE=0x8000
> CONFIG_MALLOC_SIZE=0x400000
> # CONFIG_BROKEN is not set
> # CONFIG_EXPERIMENTAL is not set
> CONFIG_PROMPT="9G20-EK:"
> CONFIG_BAUDRATE=115200
> CONFIG_LONGHELP=y
> CONFIG_CBSIZE=1024
> CONFIG_MAXARGS=16
> CONFIG_SHELL_HUSH=y
> # CONFIG_SHELL_SIMPLE is not set
> CONFIG_GLOB=y
> CONFIG_PROMPT_HUSH_PS2="y"
> # CONFIG_HUSH_FANCY_PROMPT is not set
> # CONFIG_HUSH_GETOPT is not set
> CONFIG_CMDLINE_EDITING=y
> CONFIG_AUTO_COMPLETE=y
> # CONFIG_MENU is not set
> # CONFIG_PASSWORD is not set
> CONFIG_DYNAMIC_CRC_TABLE=y
> CONFIG_ERRNO_MESSAGES=y
> CONFIG_TIMESTAMP=y
> CONFIG_CONSOLE_FULL=y
> CONFIG_CONSOLE_ACTIVATE_FIRST=y
> # CONFIG_OF_FLAT_TREE is not set
> CONFIG_PARTITION=y
> CONFIG_DEFAULT_ENVIRONMENT=y
> # CONFIG_DEFAULT_ENVIRONMENT_GENERIC is not set
> CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9260ek/env"
> # CONFIG_POLLER is not set
> 
> #
> # Debugging
> #
> # CONFIG_DEBUG_INFO is not set
> CONFIG_ENABLE_FLASH_NOISE=y
> # CONFIG_ENABLE_PARTITION_NOISE is not set
> # CONFIG_ENABLE_DEVICE_NOISE is not set
> 
> #
> # Commands
> #
> 
> #
> # scripting
> #
> CONFIG_CMD_EDIT=y
> CONFIG_CMD_SLEEP=y
> CONFIG_CMD_SAVEENV=y
> CONFIG_CMD_LOADENV=y
> CONFIG_CMD_EXPORT=y
> CONFIG_CMD_PRINTENV=y
> CONFIG_CMD_READLINE=y
> CONFIG_CMD_TRUE=y
> CONFIG_CMD_FALSE=y
> # CONFIG_CMD_LOGIN is not set
> # CONFIG_CMD_PASSWD is not set
> 
> #
> # file commands
> #
> CONFIG_CMD_LS=y
> CONFIG_CMD_RM=y
> CONFIG_CMD_CAT=y
> CONFIG_CMD_MKDIR=y
> CONFIG_CMD_RMDIR=y
> CONFIG_CMD_CP=y
> CONFIG_CMD_PWD=y
> CONFIG_CMD_CD=y
> CONFIG_CMD_MOUNT=y
> CONFIG_CMD_UMOUNT=y
> 
> #
> # console
> #
> CONFIG_CMD_CLEAR=y
> CONFIG_CMD_ECHO=y
> # CONFIG_CMD_ECHO_E is not set
> 
> #
> # memory
> #
> # CONFIG_CMD_LOADB is not set
> CONFIG_CMD_MEMINFO=y
> CONFIG_CMD_CRC=y
> # CONFIG_CMD_CRC_CMP is not set
> CONFIG_CMD_MTEST=y
> CONFIG_CMD_MTEST_ALTERNATIVE=y
> 
> #
> # flash
> #
> CONFIG_CMD_FLASH=y
> # CONFIG_CMD_UBI is not set
> 
> #
> # booting
> #
> CONFIG_CMD_BOOTM=y
> # CONFIG_CMD_BOOTM_ZLIB is not set
> # CONFIG_CMD_BOOTM_BZLIB is not set
> CONFIG_CMD_BOOTM_SHOW_TYPE=y
> CONFIG_CMD_BOOTZ=y
> CONFIG_CMD_BOOTU=y
> CONFIG_CMD_RESET=y
> CONFIG_CMD_GO=y
> CONFIG_CMD_TIMEOUT=y
> CONFIG_CMD_PARTITION=y
> CONFIG_CMD_TEST=y
> CONFIG_CMD_VERSION=y
> CONFIG_CMD_HELP=y
> CONFIG_CMD_DEVINFO=y
> CONFIG_CMD_GPIO=y
> # CONFIG_CMD_UNLZO is not set
> # CONFIG_CMD_I2C is not set
> CONFIG_NET=y
> CONFIG_NET_DHCP=y
> # CONFIG_NET_NFS is not set
> CONFIG_NET_PING=y
> CONFIG_NET_TFTP=y
> # CONFIG_NET_TFTP_PUSH is not set
> # CONFIG_NET_NETCONSOLE is not set
> # CONFIG_NET_RESOLV is not set
> 
> #
> # Drivers
> #
> 
> #
> # serial drivers
> #
> # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
> # CONFIG_DRIVER_SERIAL_NS16550 is not set
> CONFIG_DRIVER_SERIAL_ATMEL=y
> CONFIG_HAS_MACB=y
> CONFIG_MIIDEV=y
> 
> #
> # Network drivers
> #
> # CONFIG_DRIVER_NET_SMC911X is not set
> # CONFIG_DRIVER_NET_SMC91111 is not set
> CONFIG_DRIVER_NET_MACB=y
> 
> #
> # SPI drivers
> #
> # CONFIG_SPI is not set
> CONFIG_I2C=y
> 
> #
> # I2C Hardware Bus support
> #
> 
> #
> # flash drivers
> #
> CONFIG_DRIVER_CFI=y
> CONFIG_DRIVER_CFI_INTEL=y
> CONFIG_DRIVER_CFI_AMD=y
> CONFIG_DRIVER_CFI_BANK_WIDTH_1=y
> CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
> CONFIG_DRIVER_CFI_BANK_WIDTH_4=y
> # CONFIG_DRIVER_CFI_BANK_WIDTH_8 is not set
> CONFIG_CFI_BUFFER_WRITE=y
> CONFIG_MTD=y
> CONFIG_NAND=y
> CONFIG_NAND_ATMEL=y
> # CONFIG_MTD_NAND_VERIFY_WRITE is not set
> # CONFIG_MTD_NAND_ECC_SMC is not set
> CONFIG_MTD_NAND_IDS=y
> # CONFIG_UBI is not set
> # CONFIG_ATA is not set
> # CONFIG_USB is not set
> # CONFIG_USB_GADGET is not set
> # CONFIG_VIDEO is not set
> # CONFIG_MCI is not set
> 
> #
> # MFD
> #
> # CONFIG_I2C_MC13892 is not set
> # CONFIG_I2C_MC34704 is not set
> # CONFIG_I2C_MC9SDZ60 is not set
> # CONFIG_I2C_LP3972 is not set
> # CONFIG_I2C_TWL4030 is not set
> # CONFIG_LED is not set
> 
> #
> # Filesystem support
> #
> # CONFIG_FS_CRAMFS is not set
> CONFIG_FS_RAMFS=y
> CONFIG_FS_DEVFS=y
> CONFIG_CRC32=y
> # CONFIG_DIGEST is not set
> # CONFIG_GENERIC_FIND_NEXT_BIT is not set
> # CONFIG_PROCESS_ESCAPE_SEQUENCE is not set
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
