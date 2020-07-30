Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k15bv-0004T3-Gj
 for barebox@lists.infradead.org; Thu, 30 Jul 2020 10:16:28 +0000
Received: by mail-qt1-x843.google.com with SMTP id e5so5874333qth.5
 for <barebox@lists.infradead.org>; Thu, 30 Jul 2020 03:16:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAKd8=GuMSvfaXiTvx4MSOnkLNvTuZg--deRufN6wDaPr8OxA1g@mail.gmail.com>
 <52e432ea-2ecb-2464-9126-379900da2433@pengutronix.de>
 <CAKd8=GvjdkC=mHYq3LpLwtaSi8WhYsn3e1VphTWefbzpq=_ZFA@mail.gmail.com>
 <ce3df13a-29aa-809f-f39c-1213da23038e@pengutronix.de>
In-Reply-To: <ce3df13a-29aa-809f-f39c-1213da23038e@pengutronix.de>
From: Lars Pedersen <lapeddk@gmail.com>
Date: Thu, 30 Jul 2020 12:16:14 +0200
Message-ID: <CAKd8=GsqcUz23Rc81ZFJ5R1TzofXcJd+HGGE0u=UZyRsvZh_-Q@mail.gmail.com>
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
Subject: Re: Getting serial console output on new imx7d tqma7 board UART4
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Thanks for the quick response :) I have made some inline comments

Additionally I have fixed the __dtb_z_ unrelated issue, but still
troubles to get some output. Could you maybe send me a barebox binary
for an mx6 or mx7 board? I'm still unsure if it has the correct binary
format.

My current Kconfig values look like this. Maybe you can see something
missing.I have patched drivers/regulator/Kconfig (ARCH_IMX7) so that I
can enable REGULATOR_PFUZE, which is used on the tqma7d board. From
what I can see the NXP i.MX7 SabreSD board uses a PF3000 PMIC too so
iam unsure why it can work without this fix.

CONFIG_ARM=y
CONFIG_ARM_LINUX=y
CONFIG_ARM_USE_COMPRESSED_DTB=y
CONFIG_TEXT_BASE=0x0
CONFIG_ARCH_IMX=y
CONFIG_CPU_32=y
CONFIG_CPU_V7=y
CONFIG_CPU_32v7=y
CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xffffffff
CONFIG_ARCH_IMX_IMXIMAGE=y
CONFIG_ARCH_IMX7=y
CONFIG_IMX_MULTI_BOARDS=y
CONFIG_MACH_KAMSTRUP_IMX7D_TQMA7D=y
CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
CONFIG_ARM_SMCCC=y
CONFIG_ARM_SECURE_MONITOR=y
CONFIG_ARM_PSCI_OF=y
CONFIG_ARM_PSCI=y
CONFIG_ARM_PSCI_DEBUG=y
CONFIG_GREGORIAN_CALENDER=y
CONFIG_HAS_KALLSYMS=y
CONFIG_HAS_MODULES=y
CONFIG_HAS_CACHE=y
CONFIG_HAS_DMA=y
CONFIG_GENERIC_GPIO=y
CONFIG_BLOCK=y
CONFIG_BLOCK_WRITE=y
CONFIG_FILETYPE=y
CONFIG_BINFMT=y
CONFIG_UIMAGE=y
CONFIG_LOGBUF=y
CONFIG_STDDEV=y
CONFIG_MENUTREE=y
CONFIG_UBIFORMAT=y
CONFIG_BOOT=y
CONFIG_LOCALVERSION=""
CONFIG_LOCALVERSION_AUTO=y
CONFIG_BANNER=y
CONFIG_MEMINFO=y
CONFIG_ENVIRONMENT_VARIABLES=y
CONFIG_GLOBALVAR=y
CONFIG_NVVAR=y
CONFIG_HAVE_PBL_IMAGE=y
CONFIG_HAVE_PBL_MULTI_IMAGES=y
CONFIG_HAVE_IMAGE_COMPRESSION=y
CONFIG_PBL_IMAGE=y
CONFIG_PBL_MULTI_IMAGES=y
CONFIG_PBL_RELOCATABLE=y
CONFIG_IMAGE_COMPRESSION=y
CONFIG_IMAGE_COMPRESSION_LZO=y
CONFIG_MMU=y
CONFIG_MMU_EARLY=y
CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
CONFIG_BAREBOX_MAX_PBL_SIZE=0xffffffff
CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0xffffffff
CONFIG_STACK_SIZE=0x8000
CONFIG_MALLOC_SIZE=0x0
CONFIG_MALLOC_TLSF=y
CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
CONFIG_KALLSYMS=y
CONFIG_PROMPT="barebox:"
CONFIG_BAUDRATE=115200
CONFIG_CBSIZE=1024
CONFIG_SHELL_HUSH=y
CONFIG_GLOB=y
CONFIG_GLOB_SORT=y
CONFIG_PROMPT_HUSH_PS2="> "
CONFIG_HUSH_FANCY_PROMPT=y
CONFIG_CMDLINE_EDITING=y
CONFIG_AUTO_COMPLETE=y
CONFIG_MENU=y
CONFIG_DYNAMIC_CRC_TABLE=y
CONFIG_ERRNO_MESSAGES=y
CONFIG_TIMESTAMP=y
CONFIG_BOOTM=y
CONFIG_BOOTM_SHOW_TYPE=y
CONFIG_BOOTM_VERBOSE=y
CONFIG_BOOTM_INITRD=y
CONFIG_BOOTM_OFTREE=y
CONFIG_BOOTM_OFTREE_UIMAGE=y
CONFIG_FLEXIBLE_BOOTARGS=y
CONFIG_BAREBOX_UPDATE=y
CONFIG_IMD=y
CONFIG_CONSOLE_FULL=y
CONFIG_CONSOLE_ACTIVATE_ALL=y
CONFIG_PBL_CONSOLE=y
CONFIG_PARTITION=y
CONFIG_PARTITION_DISK=y
CONFIG_PARTITION_DISK_DOS=y
CONFIG_PARTITION_DISK_EFI=y
CONFIG_PARTITION_DISK_EFI_GPT_NO_FORCE=y
CONFIG_PARTITION_DISK_EFI_GPT_COMPARE=y
CONFIG_ENV_HANDLING=y
CONFIG_DEFAULT_ENVIRONMENT=y
CONFIG_DEFAULT_COMPRESSION_NONE=y
CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU=y
CONFIG_DEFAULT_ENVIRONMENT_PATH=""
CONFIG_POLLER=y
CONFIG_STATE=y
CONFIG_BOOTCHOOSER=y
CONFIG_RESET_SOURCE=y
CONFIG_COMPILE_LOGLEVEL=6
CONFIG_DEFAULT_LOGLEVEL=7
CONFIG_DEBUG_IMX_UART_PORT=1
CONFIG_HAS_DEBUG_LL=y
CONFIG_COMMAND_SUPPORT=y
CONFIG_COMPILE_HASH=y
CONFIG_CMD_ARM_CPUINFO=y
CONFIG_CMD_DEVINFO=y
CONFIG_CMD_DMESG=y
CONFIG_CMD_DRVINFO=y
CONFIG_CMD_HELP=y
CONFIG_LONGHELP=y
CONFIG_CMD_IOMEM=y
CONFIG_CMD_IMD=y
CONFIG_CMD_MEMINFO=y
CONFIG_CMD_ARM_MMUINFO=y
CONFIG_CMD_REGULATOR=y
CONFIG_CMD_VERSION=y
CONFIG_CMD_MMC_EXTCSD=y
CONFIG_CMD_BOOT=y
CONFIG_CMD_BOOTM=y
CONFIG_CMD_GO=y
CONFIG_CMD_RESET=y
CONFIG_CMD_UIMAGE=y
CONFIG_CMD_PARTITION=y
CONFIG_CMD_AUTOMOUNT=y
CONFIG_CMD_MOUNT=y
CONFIG_CMD_UBI=y
CONFIG_CMD_UBIFORMAT=y
CONFIG_CMD_UMOUNT=y
CONFIG_CMD_NV=y
CONFIG_CMD_EXPORT=y
CONFIG_CMD_GLOBAL=y
CONFIG_CMD_LOADENV=y
CONFIG_CMD_PRINTENV=y
CONFIG_CMD_MAGICVAR=y
CONFIG_CMD_MAGICVAR_HELP=y
CONFIG_CMD_SAVEENV=y
CONFIG_CMD_BASENAME=y
CONFIG_CMD_CAT=y
CONFIG_CMD_CD=y
CONFIG_CMD_CP=y
CONFIG_CMD_DIGEST=y
CONFIG_CMD_DIRNAME=y
CONFIG_CMD_FILETYPE=y
CONFIG_CMD_LN=y
CONFIG_CMD_LS=y
CONFIG_CMD_MD5SUM=y
CONFIG_CMD_MKDIR=y
CONFIG_CMD_PWD=y
CONFIG_CMD_READLINK=y
CONFIG_CMD_RM=y
CONFIG_CMD_RMDIR=y
CONFIG_CMD_UNCOMPRESS=y
CONFIG_CMD_FALSE=y
CONFIG_CMD_GETOPT=y
CONFIG_CMD_LET=y
CONFIG_CMD_MSLEEP=y
CONFIG_CMD_READF=y
CONFIG_CMD_SLEEP=y
CONFIG_CMD_TEST=y
CONFIG_CMD_TRUE=y
CONFIG_CMD_CLEAR=y
CONFIG_CMD_ECHO=y
CONFIG_CMD_ECHO_E=y
CONFIG_CMD_EDIT=y
CONFIG_CMD_MENU=y
CONFIG_CMD_MENU_MANAGEMENT=y
CONFIG_CMD_MENUTREE=y
CONFIG_CMD_READLINE=y
CONFIG_CMD_TIMEOUT=y
CONFIG_CMD_CRC=y
CONFIG_CMD_CRC_CMP=y
CONFIG_CMD_MD=y
CONFIG_CMD_MEMCMP=y
CONFIG_CMD_MEMCPY=y
CONFIG_CMD_MEMSET=y
CONFIG_CMD_MEMTEST=y
CONFIG_CMD_MM=y
CONFIG_CMD_MW=y
CONFIG_CMD_CLK=y
CONFIG_CMD_DETECT=y
CONFIG_CMD_FLASH=y
CONFIG_CMD_GPIO=y
CONFIG_CMD_I2C=y
CONFIG_CMD_NAND=y
CONFIG_CMD_NANDTEST=y
CONFIG_CMD_SPI=y
CONFIG_CMD_WD=y
CONFIG_CMD_WD_DEFAULT_TIMOUT=0
CONFIG_CMD_BAREBOX_UPDATE=y
CONFIG_CMD_OF_DUMP=y
CONFIG_CMD_OF_NODE=y
CONFIG_CMD_OF_PROPERTY=y
CONFIG_CMD_OFTREE=y
CONFIG_CMD_TIME=y
CONFIG_CMD_STATE=y
CONFIG_CMD_BOOTCHOOSER=y
CONFIG_PM_GENERIC_DOMAINS=y
CONFIG_OFTREE=y
CONFIG_OFTREE_MEM_GENERIC=y
CONFIG_DTC=y
CONFIG_OFDEVICE=y
CONFIG_OF_GPIO=y
CONFIG_OF_BAREBOX_DRIVERS=y
CONFIG_DRIVER_SERIAL_IMX=y
CONFIG_ARCH_HAS_FEC_IMX=y
CONFIG_SPI=y
CONFIG_SPI_MEM=y
CONFIG_DRIVER_SPI_IMX_2_3=y
CONFIG_I2C=y
CONFIG_I2C_IMX=y
CONFIG_MTD=y
CONFIG_MTD_WRITE=y
CONFIG_MTD_OOB_DEVICE=y
CONFIG_MTD_RAW_DEVICE=y
CONFIG_MTD_DATAFLASH=y
CONFIG_MTD_M25P80=y
CONFIG_MTD_SST25L=y
CONFIG_NAND=y
CONFIG_NAND_ECC_SOFT=y
CONFIG_NAND_ECC_HW=y
CONFIG_NAND_ECC_HW_SYNDROME=y
CONFIG_NAND_ECC_HW_NONE=y
CONFIG_NAND_INFO=y
CONFIG_NAND_READ_OOB=y
CONFIG_NAND_BBT=y
CONFIG_NAND_ALLOW_ERASE_BAD=y
CONFIG_NAND_IMX=y
CONFIG_MTD_NAND_IDS=y
CONFIG_MTD_SPI_NOR=y
CONFIG_MTD_UBI=y
CONFIG_MTD_UBI_BEB_LIMIT=20
CONFIG_MTD_UBI_FASTMAP=y
CONFIG_DISK=y
CONFIG_DISK_IDE_SFF=y
CONFIG_DISK_WRITE=y
CONFIG_DISK_ATA=y
CONFIG_DISK_AHCI=y
CONFIG_DISK_AHCI_IMX=y
CONFIG_DISK_INTF_PLATFORM_IDE=y
CONFIG_DISK_PATA_IMX=y
CONFIG_MCI_SDHCI=y
CONFIG_MCI=y
CONFIG_MCI_INFO=y
CONFIG_MCI_WRITE=y
CONFIG_MCI_MMC_BOOT_PARTITIONS=y
CONFIG_MCI_IMX_ESDHC=y
CONFIG_HAVE_CLK=y
CONFIG_CLKDEV_LOOKUP=y
CONFIG_COMMON_CLK=y
CONFIG_COMMON_CLK_OF_PROVIDER=y
CONFIG_ARCH_HAS_IMX_GPT=y
CONFIG_CLOCKSOURCE_DUMMY_RATE=1000
CONFIG_CLOCKSOURCE_ARM_ARCHITECTED_TIMER=y
CONFIG_CLOCKSOURCE_IMX_GPT=y
CONFIG_MFD_DA9063=y
CONFIG_MFD_MC34704=y
CONFIG_MFD_MC9SDZ60=y
CONFIG_MFD_STMPE=y
CONFIG_STATE_DRV=y
CONFIG_DEV_MEM=y
CONFIG_EEPROM_AT25=y
CONFIG_EEPROM_AT24=y
CONFIG_INPUT=y
CONFIG_KEYBOARD_GPIO=y
CONFIG_WATCHDOG_IMX_RESET_SOURCE=y
CONFIG_WATCHDOG=y
CONFIG_WATCHDOG_IMX=y
CONFIG_PWM=y
CONFIG_PWM_IMX=y
CONFIG_GPIOLIB=y
CONFIG_GPIO_IMX=y
CONFIG_GPIO_STMPE=y
CONFIG_PINCTRL=y
CONFIG_PINCTRL_IMX_IOMUX_V3=y
CONFIG_NVMEM=y
CONFIG_REGULATOR=y
CONFIG_REGULATOR_PFUZE=y
CONFIG_HW_HAS_PCI=y
CONFIG_IMX_GPCV2_PM_DOMAINS=y
CONFIG_FS=y
CONFIG_FS_LEGACY=y
CONFIG_FS_AUTOMOUNT=y
CONFIG_FS_EXT4=y
CONFIG_FS_RAMFS=y
CONFIG_FS_DEVFS=y
CONFIG_FS_FAT=y
CONFIG_FS_FAT_WRITE=y
CONFIG_FS_FAT_LFN=y
CONFIG_FS_UBIFS=y
CONFIG_FS_UBIFS_COMPRESSION_LZO=y
CONFIG_PARAMETER=y
CONFIG_UNCOMPRESS=y
CONFIG_ZLIB=y
CONFIG_PROCESS_ESCAPE_SEQUENCE=y
CONFIG_LZO_DECOMPRESS=y
CONFIG_FNMATCH=y
CONFIG_QSORT=y
CONFIG_LIBSCAN=y
CONFIG_LIBUBIGEN=y
CONFIG_PRINTF_UUID=y
CONFIG_CRC32=y
CONFIG_DIGEST=y
CONFIG_MD5=y
CONFIG_DIGEST_MD5_GENERIC=y
CONFIG_EXTRA_FIRMWARE_DIR="firmware"

/Lars Pedersen.

On Thu, 30 Jul 2020 at 09:25, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
>
>
> On 7/30/20 8:58 AM, Lars Pedersen wrote:
> > The DCD part now matches exactly for the top part (00000000 to
> > 00000020)  of it which i guess is the IVT header, which shouldn't be
> > the same?
>
> I mean the memory calibration and such. Not that your U-Boot port
> does something in C code, which you are missing in your barebox
> DCD.

I don't think u-boot does something extra in c code, but i'll check
again. The board config in u-boot is stripped down so that it only
probes info through the device tree.

And the DCD table is exactly the same in the compiled output.

>
> >
> > The following is xxd where barebox  (left side) has been shifted 0x400
> > to match u-boot part.
> >
> > /usr/bin/diff -y <(xxd barebox_stripped) <(xxd uboot_stripped)
>
> I don't understand how to read this diff.

I'm sorry it somehow got mangled when sent :/

>
> > So I guess that the DCD table part now should be correct. So the
> > question is if this is and lowlevel.c/board.c boilerplate issue or
> > maybe I need something in the Kconfig menu.
>
> Enable CONFIG_DEBUG_LL and see how far barebox comes.
> See the inline comment from my last mail.

I missed some of the last comments but I have already enabled
CONFIG_DEBUG_LL and can't get any console output to appear. UART4 has
been selected in the menu for this.

>
> >>> +
> >>> +static inline void setup_uart(void)
> >>> +{
> >>> +    imx7_early_setup_uart_clock();
> >>> +
> >>> +    imx7_setup_pad(MX7D_PAD_SAI2_TX_BCLK__UART4_DCE_TX);
> >>> +
> >>> +    imx7_uart_setup_ll();
> >>> +
> >>> +    putc_ll('>');
> >>
> >> You've CONFIG_DEBUG_LL=y and you choose the correct UART port
> >> in the i.MX menuconfig option?
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
