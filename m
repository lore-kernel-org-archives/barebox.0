Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OozF1-0007M6-Io
	for barebox@lists.infradead.org; Fri, 27 Aug 2010 13:45:14 +0000
Received: by wwc33 with SMTP id 33so1031858wwc.18
	for <barebox@lists.infradead.org>; Fri, 27 Aug 2010 06:45:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <AANLkTimgEO3wqt27v2RKYtSHtmMK-w1FGoLP-dH44SnB@mail.gmail.com>
References: <AANLkTimgEO3wqt27v2RKYtSHtmMK-w1FGoLP-dH44SnB@mail.gmail.com>
Date: Fri, 27 Aug 2010 19:15:09 +0530
Message-ID: <AANLkTi=J2rmS2Mebiz5jzsPEXPwytjpdm7S5hhrEkrN1@mail.gmail.com>
From: Nataraj S Narayan <natarajsn@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1065588511=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox:Nand flash issue
To: barebox@lists.infradead.org

--===============1065588511==
Content-Type: multipart/alternative; boundary=0016367fab65c6e9de048ece52be

--0016367fab65c6e9de048ece52be
Content-Type: text/plain; charset=ISO-8859-1

Hi

As a follow-up my .config is here:-

#
# Automatically generated make config: don't edit
# barebox version: 2010.08.0
# Fri Aug 27 19:03:43 2010
#
# CONFIG_BOARD_LINKER_SCRIPT is not set
CONFIG_GENERIC_LINKER_SCRIPT=y
CONFIG_ARM=y

#
# System Type
#
CONFIG_ARCH_AT91=y
# CONFIG_ARCH_AT91RM9200 is not set
# CONFIG_ARCH_EP93XX is not set
# CONFIG_ARCH_IMX is not set
# CONFIG_ARCH_NETX is not set
# CONFIG_ARCH_OMAP is not set
# CONFIG_ARCH_S3C24xx is not set

#
# Processor Type
#
CONFIG_CPU_32=y
CONFIG_CPU_ARM926T=y
CONFIG_CPU_32v5=y

#
# processor features
#
CONFIG_ARCH_TEXT_BASE=0x23f00000
CONFIG_BOARDINFO="Atmel at91sam9263-ek"

#
# Atmel AT91 System-on-Chip
#
# CONFIG_ARCH_AT91SAM9260 is not set
CONFIG_ARCH_AT91SAM9263=y
CONFIG_MACH_AT91SAM9263EK=y
# CONFIG_MACH_MMCCPU is not set
# CONFIG_MACH_PM9263 is not set
CONFIG_AEABI=y

#
# Arm specific settings
#
CONFIG_CMD_ARM_CPUINFO=y
CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
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
CONFIG_MACH_HAS_LOWLEVEL_INIT=y
CONFIG_MACH_DO_LOWLEVEL_INIT=y
CONFIG_PROMPT="9263-EK:"
CONFIG_BAUDRATE=115200
CONFIG_LONGHELP=y
CONFIG_CBSIZE=1024
CONFIG_MAXARGS=16
CONFIG_SHELL_HUSH=y
# CONFIG_SHELL_SIMPLE is not set
CONFIG_GLOB=y
CONFIG_PROMPT_HUSH_PS2="> "
# CONFIG_HUSH_FANCY_PROMPT is not set
CONFIG_CMDLINE_EDITING=y
CONFIG_AUTO_COMPLETE=y
CONFIG_DYNAMIC_CRC_TABLE=y
CONFIG_ERRNO_MESSAGES=y
CONFIG_TIMESTAMP=y
CONFIG_CONSOLE_FULL=y
CONFIG_CONSOLE_ACTIVATE_FIRST=y
# CONFIG_OF_FLAT_TREE is not set
CONFIG_PARTITION=y
CONFIG_DEFAULT_ENVIRONMENT=y
CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9263ek/env"

#
# Debugging
#
CONFIG_DEBUG_INFO=y
CONFIG_ENABLE_FLASH_NOISE=y
CONFIG_ENABLE_PARTITION_NOISE=y
CONFIG_ENABLE_DEVICE_NOISE=y

#
# Commands
##
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
# CONFIG_CMD_ECHO_E is not set

#
# memory
#
# CONFIG_CMD_LOADB is not set
# CONFIG_CMD_LOADY is not set
# CONFIG_CMD_LOADS is not set
CONFIG_CMD_MEMINFO=y
CONFIG_CMD_CRC=y
CONFIG_CMD_MTEST=y
# CONFIG_CMD_MTEST_ALTERNATIVE is not set

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
# CONFIG_CMD_LINUX16 is not set
CONFIG_CMD_RESET=y
CONFIG_CMD_GO=y
CONFIG_CMD_TIMEOUT=y
CONFIG_CMD_PARTITION=y
CONFIG_CMD_TEST=y
CONFIG_CMD_VERSION=y
CONFIG_CMD_HELP=y
CONFIG_CMD_DEVINFO=y
# CONFIG_CMD_GPIO is not set
# CONFIG_CMD_UNLZO is not set
# CONFIG_CMD_I2C is not set
CONFIG_NET=y
CONFIG_NET_DHCP=y
CONFIG_NET_NFS=y
CONFIG_NET_PING=y
CONFIG_NET_TFTP=y
# CONFIG_NET_TFTP_PUSH is not set
# CONFIG_NET_NETCONSOLE is not set
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
CONFIG_MIIPHY=y

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
# CONFIG_SPI is not set
CONFIG_I2C=y
CONFIG_DRIVER_I2C_MC13892=y
CONFIG_DRIVER_I2C_MC34704=y
CONFIG_DRIVER_I2C_MC9SDZ60=y
CONFIG_DRIVER_I2C_LP3972=y

# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
# CONFIG_DRIVER_SERIAL_NS16550 is not set
CONFIG_DRIVER_SERIAL_ATMEL=y
CONFIG_MIIPHY=y

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
# CONFIG_SPI is not set
CONFIG_I2C=y
CONFIG_DRIVER_I2C_MC13892=y
CONFIG_DRIVER_I2C_MC34704=y
CONFIG_DRIVER_I2C_MC9SDZ60=y
CONFIG_DRIVER_I2C_LP3972=y

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
# CONFIG_USB_GADGET is not set
# CONFIG_VIDEO is not set

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
# CONFIG_GENERIC_FIND_NEXT_BIT is not set
# CONFIG_PROCESS_ESCAPE_SEQUENCE is not set

regards

Nataraj

On Fri, Aug 27, 2010 at 7:10 PM, Nataraj S Narayan <natarajsn@gmail.com>wrote:

> Hi
>
> If
>
> CONFIG_NAND=y
> CONFIG_NAND_ATMEL=y
>
>
> barebox breaks and  wont load from dataflash.
>
> I am trying to get UBI working with:-
>
> CONFIG_CMD_UBI=y
> CONFIG_UBI=y
>
>
> I remove NAND flash from config, barebox loads:-
> barebox 2010.08.0-00036-ga74a26f (Aug 27 2010 - 18:52:37)
>
> Board: Atmel at91sam9263-ek
> Malloc space: 0x23b00000 -> 0x23f00000 (size  4 MB)
> Stack space : 0x23af8000 -> 0x23b00000 (size 32 kB)
> Open /dev/env0 No such file or directory
> no valid environment found on /dev/env0. Using default environment
> running /env/bin/init...
> no MAC address set for eth0. please enter the one found on your board:
> 3a:1f:34:08:54:54
>
> Hit any key to stop autoboot:  1
>
> type update_kernel nor [<imagename>] to update kernel into flash
> type update_root nor [<imagename>] to update rootfs into flash
> type update_barebox_xmodem nor to update barebox into flash
>
> 9263-EK:/
> 9263-EK:/
> 9263-EK:/
>
> regards
>
> nataraj
>
>
>
>

--0016367fab65c6e9de048ece52be
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi <br><br>As a follow-up my .config is here:-<br><br>#<br># Automatically =
generated make config: don&#39;t edit<br># barebox version: 2010.08.0<br># =
Fri Aug 27 19:03:43 2010<br>#<br># CONFIG_BOARD_LINKER_SCRIPT is not set<br=
>
CONFIG_GENERIC_LINKER_SCRIPT=3Dy<br>CONFIG_ARM=3Dy<br><br>#<br># System Typ=
e<br>#<br>CONFIG_ARCH_AT91=3Dy<br># CONFIG_ARCH_AT91RM9200 is not set<br># =
CONFIG_ARCH_EP93XX is not set<br># CONFIG_ARCH_IMX is not set<br># CONFIG_A=
RCH_NETX is not set<br>
# CONFIG_ARCH_OMAP is not set<br># CONFIG_ARCH_S3C24xx is not set<br><br>#<=
br># Processor Type<br>#<br>CONFIG_CPU_32=3Dy<br>CONFIG_CPU_ARM926T=3Dy<br>=
CONFIG_CPU_32v5=3Dy<br><br>#<br># processor features<br>#<br>CONFIG_ARCH_TE=
XT_BASE=3D0x23f00000<br>
CONFIG_BOARDINFO=3D&quot;Atmel at91sam9263-ek&quot;<br><br>#<br># Atmel AT9=
1 System-on-Chip<br>#<br># CONFIG_ARCH_AT91SAM9260 is not set<br>CONFIG_ARC=
H_AT91SAM9263=3Dy<br>CONFIG_MACH_AT91SAM9263EK=3Dy<br># CONFIG_MACH_MMCCPU =
is not set<br>
# CONFIG_MACH_PM9263 is not set<br>CONFIG_AEABI=3Dy<br><br>#<br># Arm speci=
fic settings=A0=A0=A0=A0=A0=A0=A0=A0 <br>#<br>CONFIG_CMD_ARM_CPUINFO=3Dy<br=
>CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=3Dy<br>CONFIG_GREGORIAN_CALENDER=3Dy<=
br>CONFIG_HAS_KALLSYMS=3Dy<br>
CONFIG_HAS_MODULES=3Dy<br>CONFIG_CMD_MEMORY=3Dy<br>CONFIG_ENV_HANDLING=3Dy<=
br>CONFIG_GENERIC_GPIO=3Dy<br>#<br># General Settings=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 <br>#<br>CONFIG_LOCALVERSION_AUTO=3Dy<br><br>#<br># memo=
ry layout=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>#<br>
CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=3Dy<br>CONFIG_TEXT_BASE=3D0x23f00000<br>=
CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=3Dy<br>CONFIG_MEMORY_LAYOUT_DEFAULT=
=3Dy<br># CONFIG_MEMORY_LAYOUT_FIXED is not set<br>CONFIG_STACK_SIZE=3D0x80=
00<br>CONFIG_MALLOC_SIZE=3D0x400000<br>
CONFIG_BROKEN=3Dy<br>CONFIG_EXPERIMENTAL=3Dy<br># CONFIG_MODULES is not set=
<br># CONFIG_KALLSYMS is not set<br>CONFIG_MACH_HAS_LOWLEVEL_INIT=3Dy<br>CO=
NFIG_MACH_DO_LOWLEVEL_INIT=3Dy<br>CONFIG_PROMPT=3D&quot;9263-EK:&quot;<br>C=
ONFIG_BAUDRATE=3D115200<br>
CONFIG_LONGHELP=3Dy<br>CONFIG_CBSIZE=3D1024<br>CONFIG_MAXARGS=3D16<br>CONFI=
G_SHELL_HUSH=3Dy<br># CONFIG_SHELL_SIMPLE is not set<br>CONFIG_GLOB=3Dy<br>=
CONFIG_PROMPT_HUSH_PS2=3D&quot;&gt; &quot;<br># CONFIG_HUSH_FANCY_PROMPT is=
 not set<br>
CONFIG_CMDLINE_EDITING=3Dy<br>CONFIG_AUTO_COMPLETE=3Dy<br>CONFIG_DYNAMIC_CR=
C_TABLE=3Dy<br>CONFIG_ERRNO_MESSAGES=3Dy<br>CONFIG_TIMESTAMP=3Dy<br>CONFIG_=
CONSOLE_FULL=3Dy<br>CONFIG_CONSOLE_ACTIVATE_FIRST=3Dy<br># CONFIG_OF_FLAT_T=
REE is not set<br>
CONFIG_PARTITION=3Dy<br>CONFIG_DEFAULT_ENVIRONMENT=3Dy<br>CONFIG_DEFAULT_EN=
VIRONMENT_PATH=3D&quot;arch/arm/boards/at91sam9263ek/env&quot;<br><br>#<br>=
# Debugging=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br=
>#<br>CONFIG_DEBUG_INFO=3Dy<br>CONFIG_ENABLE_FLASH_NOISE=3Dy<br>
CONFIG_ENABLE_PARTITION_NOISE=3Dy<br>CONFIG_ENABLE_DEVICE_NOISE=3Dy<br><br>=
#<br># Commands=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 <br>##<br># scripting=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 <br>#<br>CONFIG_CMD_EDIT=3Dy<br>CONFIG_CMD_SLEEP=3Dy<br>CONFIG=
_CMD_SAVEENV=3Dy<br>
CONFIG_CMD_LOADENV=3Dy<br>CONFIG_CMD_EXPORT=3Dy<br>CONFIG_CMD_PRINTENV=3Dy<=
br>CONFIG_CMD_READLINE=3Dy<br>CONFIG_CMD_TRUE=3Dy<br>CONFIG_CMD_FALSE=3Dy<b=
r><br>#<br># file commands=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
<br>#<br>CONFIG_CMD_LS=3Dy<br>CONFIG_CMD_RM=3Dy<br>
CONFIG_CMD_CAT=3Dy<br>CONFIG_CMD_MKDIR=3Dy<br>CONFIG_CMD_RMDIR=3Dy<br>CONFI=
G_CMD_CP=3Dy<br>CONFIG_CMD_PWD=3Dy<br>CONFIG_CMD_CD=3Dy<br>CONFIG_CMD_MOUNT=
=3Dy<br>CONFIG_CMD_UMOUNT=3Dy<br><br>#<br># console=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>#<br>CONFIG_CMD_CLEAR=3Dy<br=
>
CONFIG_CMD_ECHO=3Dy<br># CONFIG_CMD_ECHO_E is not set<br><br>#<br># memory=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>#=
<br># CONFIG_CMD_LOADB is not set<br># CONFIG_CMD_LOADY is not set<br># CON=
FIG_CMD_LOADS is not set<br>CONFIG_CMD_MEMINFO=3Dy<br>
CONFIG_CMD_CRC=3Dy<br>CONFIG_CMD_MTEST=3Dy<br># CONFIG_CMD_MTEST_ALTERNATIV=
E is not set<br><br>#<br># flash=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>#<br>CONFIG_CMD_FLASH=3Dy<br>CONFIG_CMD_=
UBI=3Dy<br><br>#<br># booting=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 <br>
#<br>CONFIG_CMD_BOOTM=3Dy<br>CONFIG_CMD_BOOTM_ZLIB=3Dy<br>CONFIG_CMD_BOOTM_=
BZLIB=3Dy<br>CONFIG_CMD_BOOTM_SHOW_TYPE=3Dy<br>CONFIG_CMD_BOOTZ=3Dy<br>CONF=
IG_CMD_BOOTU=3Dy<br># CONFIG_CMD_LINUX16 is not set<br>CONFIG_CMD_RESET=3Dy=
<br>CONFIG_CMD_GO=3Dy<br>
CONFIG_CMD_TIMEOUT=3Dy<br>CONFIG_CMD_PARTITION=3Dy<br>CONFIG_CMD_TEST=3Dy<b=
r>CONFIG_CMD_VERSION=3Dy<br>CONFIG_CMD_HELP=3Dy<br>CONFIG_CMD_DEVINFO=3Dy<b=
r># CONFIG_CMD_GPIO is not set<br># CONFIG_CMD_UNLZO is not set<br># CONFIG=
_CMD_I2C is not set<br>
CONFIG_NET=3Dy<br>CONFIG_NET_DHCP=3Dy<br>CONFIG_NET_NFS=3Dy<br>CONFIG_NET_P=
ING=3Dy<br>CONFIG_NET_TFTP=3Dy<br># CONFIG_NET_TFTP_PUSH is not set<br># CO=
NFIG_NET_NETCONSOLE is not set<br># CONFIG_NET_RESOLV is not set<br><br>#<b=
r># Drivers=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 <br>
#<br><br>#<br># serial drivers=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 <br>#<br># CONFIG_DRIVER_SERIAL_ARM_DCC is not set<br># CONFIG_DRIVER_SERI=
AL_NS16550 is not set<br>CONFIG_DRIVER_SERIAL_ATMEL=3Dy<br>CONFIG_MIIPHY=3D=
y<br><br>#<br># Network drivers=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <=
br>
#<br># CONFIG_DRIVER_NET_SMC911X is not set<br># CONFIG_DRIVER_NET_SMC91111=
 is not set<br>CONFIG_DRIVER_NET_MACB=3Dy<br># CONFIG_NET_USB is not set<br=
><br>#<br># SPI drivers=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 <br>#<br># CONFIG_SPI is not set<br>
CONFIG_I2C=3Dy<br>CONFIG_DRIVER_I2C_MC13892=3Dy<br>CONFIG_DRIVER_I2C_MC3470=
4=3Dy<br>CONFIG_DRIVER_I2C_MC9SDZ60=3Dy<br>CONFIG_DRIVER_I2C_LP3972=3Dy<br>=
<br># CONFIG_DRIVER_SERIAL_ARM_DCC is not set<br># CONFIG_DRIVER_SERIAL_NS1=
6550 is not set<br>
CONFIG_DRIVER_SERIAL_ATMEL=3Dy<br>CONFIG_MIIPHY=3Dy<br><br>#<br># Network d=
rivers=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>#<br># CONFIG_DRIVER_N=
ET_SMC911X is not set<br># CONFIG_DRIVER_NET_SMC91111 is not set<br>CONFIG_=
DRIVER_NET_MACB=3Dy<br># CONFIG_NET_USB is not set<br>
<br>#<br># SPI drivers=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 <br>#<br># CONFIG_SPI is not set<br>CONFIG_I2C=3Dy<br>CONFIG_DRIVER_I2C=
_MC13892=3Dy<br>CONFIG_DRIVER_I2C_MC34704=3Dy<br>CONFIG_DRIVER_I2C_MC9SDZ60=
=3Dy<br>CONFIG_DRIVER_I2C_LP3972=3Dy<br><br>
#<br># flash drivers=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>#<=
br># CONFIG_DRIVER_CFI is not set<br>CONFIG_MTD=3Dy<br>CONFIG_NAND=3Dy<br>C=
ONFIG_NAND_ATMEL=3Dy<br># CONFIG_MTD_NAND_VERIFY_WRITE is not set<br># CONF=
IG_MTD_NAND_ECC_SMC is not set<br>
CONFIG_MTD_NAND_IDS=3Dy<br># CONFIG_MTD_NAND_DISKONCHIP is not set<br>CONFI=
G_UBI=3Dy<br># CONFIG_ATA is not set<br>CONFIG_USB=3Dy<br>CONFIG_USB_EHCI=
=3Dy<br># CONFIG_USB_ISP1504 is not set<br># CONFIG_USB_GADGET is not set<b=
r># CONFIG_VIDEO is not set<br>
<br>#<br># Filesystem support=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>#<br># C=
ONFIG_FS_CRAMFS is not set<br>CONFIG_FS_RAMFS=3Dy<br>CONFIG_FS_DEVFS=3Dy<br=
>CONFIG_PARTITION_NEED_MTD=3Dy<br>CONFIG_ZLIB=3Dy<br>CONFIG_BZLIB=3Dy<br>CO=
NFIG_CRC32=3Dy<br># CONFIG_GENERIC_FIND_NEXT_BIT is not set<br>
# CONFIG_PROCESS_ESCAPE_SEQUENCE is not set<br><br>regards<br><br>Nataraj<b=
r><br><div class=3D"gmail_quote">On Fri, Aug 27, 2010 at 7:10 PM, Nataraj S=
 Narayan <span dir=3D"ltr">&lt;<a href=3D"mailto:natarajsn@gmail.com">natar=
ajsn@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"border-left: 1px solid rgb(204, =
204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">Hi <br><br>If <br=
><br>CONFIG_NAND=3Dy<br>CONFIG_NAND_ATMEL=3Dy<br><br><br>barebox breaks and=
=A0 wont load from dataflash.<br>
<br>I am trying to get UBI working with:-<br><br>CONFIG_CMD_UBI=3Dy<br>CONF=
IG_UBI=3Dy<br><br><br>I remove NAND flash from config, barebox loads:-<br>
barebox 2010.08.0-00036-ga74a26f (Aug 27 2010 - 18:52:37)<br><br>Board: Atm=
el at91sam9263-ek<br>Malloc space: 0x23b00000 -&gt; 0x23f00000 (size=A0 4 M=
B)<br>Stack space : 0x23af8000 -&gt; 0x23b00000 (size 32 kB)<br>Open /dev/e=
nv0 No such file or directory<br>

no valid environment found on /dev/env0. Using default environment<br>runni=
ng /env/bin/init...<br>no MAC address set for eth0. please enter the one fo=
und on your board: 3a:1f:34:08:54:54<br><br>Hit any key to stop autoboot:=
=A0 1<br>

<br>type update_kernel nor [&lt;imagename&gt;] to update kernel into flash<=
br>type update_root nor [&lt;imagename&gt;] to update rootfs into flash<br>=
type update_barebox_xmodem nor to update barebox into flash<br><br>9263-EK:=
/ <br>

9263-EK:/ <br>9263-EK:/ <br><br>regards<br><font color=3D"#888888"><br>nata=
raj<br><br><br><br>
</font></blockquote></div><br>

--0016367fab65c6e9de048ece52be--


--===============1065588511==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1065588511==--
