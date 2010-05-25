Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OGoY5-0000jw-3V
	for barebox@lists.infradead.org; Tue, 25 May 2010 07:27:40 +0000
Date: Tue, 25 May 2010 09:27:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100525072735.GJ17272@pengutronix.de>
References: <1274697472-8669-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1274697472-8669-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] Add support for Eukrea's CPUIMX25
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Mon, May 24, 2010 at 12:37:51PM +0200, Eric B=E9nard wrote:
> From: Eric Benard <eric@eukrea.com>
> =

> This boards integrates 64mB of DDR, a 256MB NAND flash, a RMII Ethernet P=
HY
> and a i.MX257 CPU.

Ok, applied to -next.

Sascha

> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/Makefile                           |    1 +
>  arch/arm/configs/eukrea_cpuimx25_defconfig  |  247 +++++++++++++++++++++=
+++
>  arch/arm/mach-imx/Kconfig                   |   10 +
>  board/eukrea_cpuimx25/Makefile              |   24 +++
>  board/eukrea_cpuimx25/config.h              |   27 +++
>  board/eukrea_cpuimx25/env/bin/_update       |   36 ++++
>  board/eukrea_cpuimx25/env/bin/boot          |   53 +++++
>  board/eukrea_cpuimx25/env/bin/hush_hack     |    1 +
>  board/eukrea_cpuimx25/env/bin/init          |   38 ++++
>  board/eukrea_cpuimx25/env/bin/update_kernel |    8 +
>  board/eukrea_cpuimx25/env/bin/update_root   |    8 +
>  board/eukrea_cpuimx25/env/config            |   26 +++
>  board/eukrea_cpuimx25/eukrea_cpuimx25.c     |  275 +++++++++++++++++++++=
++++++
>  board/eukrea_cpuimx25/lowlevel.c            |  130 +++++++++++++
>  14 files changed, 884 insertions(+), 0 deletions(-)
>  create mode 100644 arch/arm/configs/eukrea_cpuimx25_defconfig
>  create mode 100644 board/eukrea_cpuimx25/Makefile
>  create mode 100644 board/eukrea_cpuimx25/config.h
>  create mode 100644 board/eukrea_cpuimx25/env/bin/_update
>  create mode 100644 board/eukrea_cpuimx25/env/bin/boot
>  create mode 100644 board/eukrea_cpuimx25/env/bin/hush_hack
>  create mode 100644 board/eukrea_cpuimx25/env/bin/init
>  create mode 100644 board/eukrea_cpuimx25/env/bin/update_kernel
>  create mode 100644 board/eukrea_cpuimx25/env/bin/update_root
>  create mode 100644 board/eukrea_cpuimx25/env/config
>  create mode 100644 board/eukrea_cpuimx25/eukrea_cpuimx25.c
>  create mode 100644 board/eukrea_cpuimx25/lowlevel.c
> =

> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index b1991c3..0bdce21 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -61,6 +61,7 @@ board-$(CONFIG_MACH_EDB9307A)			:=3D edb93xx
>  board-$(CONFIG_MACH_EDB93012)			:=3D edb93xx
>  board-$(CONFIG_MACH_EDB9315)			:=3D edb93xx
>  board-$(CONFIG_MACH_EDB9315A)			:=3D edb93xx
> +board-$(CONFIG_MACH_EUKREA_CPUIMX25)		:=3D eukrea_cpuimx25
>  board-$(CONFIG_MACH_EUKREA_CPUIMX27)		:=3D eukrea_cpuimx27
>  board-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	:=3D freescale-mx25-3-stack
>  board-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	:=3D freescale-mx35-3-stack
> diff --git a/arch/arm/configs/eukrea_cpuimx25_defconfig b/arch/arm/config=
s/eukrea_cpuimx25_defconfig
> new file mode 100644
> index 0000000..81f9c80
> --- /dev/null
> +++ b/arch/arm/configs/eukrea_cpuimx25_defconfig
> @@ -0,0 +1,247 @@
> +#
> +# Automatically generated make config: don't edit
> +# barebox version: 2010.03.0
> +# Fri Mar 19 11:12:11 2010
> +#
> +# CONFIG_BOARD_LINKER_SCRIPT is not set
> +CONFIG_GENERIC_LINKER_SCRIPT=3Dy
> +CONFIG_ARM=3Dy
> +
> +#
> +# System Type
> +#
> +# CONFIG_ARCH_AT91 is not set
> +# CONFIG_ARCH_AT91RM9200 is not set
> +# CONFIG_ARCH_EP93XX is not set
> +CONFIG_ARCH_IMX=3Dy
> +# CONFIG_ARCH_NETX is not set
> +# CONFIG_ARCH_OMAP is not set
> +# CONFIG_ARCH_S3C24xx is not set
> +
> +#
> +# Processor Type
> +#
> +CONFIG_CPU_32=3Dy
> +CONFIG_CPU_ARM926T=3Dy
> +CONFIG_CPU_32v5=3Dy
> +
> +#
> +# processor features
> +#
> +CONFIG_ARCH_TEXT_BASE=3D0x83f00000
> +CONFIG_BOARDINFO=3D"Eukrea CPUIMX25"
> +CONFIG_ARCH_HAS_FEC_IMX=3Dy
> +CONFIG_ARCH_IMX_INTERNAL_BOOT=3Dy
> +
> +#
> +# Freescale i.MX System-on-Chip
> +#
> +# CONFIG_ARCH_IMX1 is not set
> +# CONFIG_ARCH_IMX21 is not set
> +CONFIG_ARCH_IMX25=3Dy
> +# CONFIG_ARCH_IMX27 is not set
> +# CONFIG_ARCH_IMX31 is not set
> +# CONFIG_ARCH_IMX35 is not set
> +CONFIG_MACH_EUKREA_CPUIMX25=3Dy
> +# CONFIG_MACH_FREESCALE_MX25_3STACK is not set
> +
> +#
> +# Board specific settings       =

> +#
> +
> +#
> +# i.MX specific settings        =

> +#
> +# CONFIG_IMX_CLKO is not set
> +# CONFIG_AEABI is not set
> +
> +#
> +# Arm specific settings         =

> +#
> +CONFIG_CMD_ARM_CPUINFO=3Dy
> +CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=3Dy
> +CONFIG_GREGORIAN_CALENDER=3Dy
> +CONFIG_HAS_KALLSYMS=3Dy
> +CONFIG_HAS_MODULES=3Dy
> +CONFIG_CMD_MEMORY=3Dy
> +CONFIG_ENV_HANDLING=3Dy
> +CONFIG_GENERIC_GPIO=3Dy
> +
> +#
> +# General Settings              =

> +#
> +CONFIG_LOCALVERSION_AUTO=3Dy
> +
> +#
> +# memory layout                 =

> +#
> +CONFIG_HAVE_MMU=3Dy
> +CONFIG_MMU=3Dy
> +CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=3Dy
> +CONFIG_TEXT_BASE=3D0x83f00000
> +CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=3Dy
> +CONFIG_MEMORY_LAYOUT_DEFAULT=3Dy
> +# CONFIG_MEMORY_LAYOUT_FIXED is not set
> +CONFIG_STACK_SIZE=3D0x8000
> +CONFIG_MALLOC_SIZE=3D0x1000000
> +# CONFIG_BROKEN is not set
> +# CONFIG_EXPERIMENTAL is not set
> +CONFIG_MACH_HAS_LOWLEVEL_INIT=3Dy
> +CONFIG_MACH_DO_LOWLEVEL_INIT=3Dy
> +CONFIG_PROMPT=3D"barebox:"
> +CONFIG_BAUDRATE=3D115200
> +# CONFIG_LONGHELP is not set
> +CONFIG_CBSIZE=3D1024
> +CONFIG_MAXARGS=3D16
> +CONFIG_SHELL_HUSH=3Dy
> +# CONFIG_SHELL_SIMPLE is not set
> +CONFIG_GLOB=3Dy
> +CONFIG_PROMPT_HUSH_PS2=3D"cpuimx25>"
> +CONFIG_CMDLINE_EDITING=3Dy
> +CONFIG_AUTO_COMPLETE=3Dy
> +CONFIG_DYNAMIC_CRC_TABLE=3Dy
> +# CONFIG_ERRNO_MESSAGES is not set
> +CONFIG_TIMESTAMP=3Dy
> +CONFIG_CONSOLE_FULL=3Dy
> +CONFIG_CONSOLE_ACTIVATE_FIRST=3Dy
> +# CONFIG_OF_FLAT_TREE is not set
> +CONFIG_PARTITION=3Dy
> +CONFIG_DEFAULT_ENVIRONMENT=3Dy
> +CONFIG_DEFAULT_ENVIRONMENT_PATH=3D"board/eukrea_cpuimx25/env"
> +
> +#
> +# Debugging                     =

> +#
> +# CONFIG_DEBUG_INFO is not set
> +# CONFIG_ENABLE_FLASH_NOISE is not set
> +# CONFIG_ENABLE_PARTITION_NOISE is not set
> +# CONFIG_ENABLE_DEVICE_NOISE is not set
> +
> +#
> +# Commands                      =

> +#
> +
> +#
> +# scripting                     =

> +#
> +CONFIG_CMD_EDIT=3Dy
> +CONFIG_CMD_SLEEP=3Dy
> +CONFIG_CMD_SAVEENV=3Dy
> +CONFIG_CMD_LOADENV=3Dy
> +CONFIG_CMD_EXPORT=3Dy
> +CONFIG_CMD_PRINTENV=3Dy
> +CONFIG_CMD_READLINE=3Dy
> +CONFIG_CMD_TRUE=3Dy
> +CONFIG_CMD_FALSE=3Dy
> +
> +#
> +# file commands                 =

> +#
> +CONFIG_CMD_LS=3Dy
> +CONFIG_CMD_RM=3Dy
> +CONFIG_CMD_CAT=3Dy
> +CONFIG_CMD_MKDIR=3Dy
> +CONFIG_CMD_RMDIR=3Dy
> +CONFIG_CMD_CP=3Dy
> +CONFIG_CMD_PWD=3Dy
> +CONFIG_CMD_CD=3Dy
> +CONFIG_CMD_MOUNT=3Dy
> +CONFIG_CMD_UMOUNT=3Dy
> +
> +#
> +# console                       =

> +#
> +CONFIG_CMD_CLEAR=3Dy
> +CONFIG_CMD_ECHO=3Dy
> +
> +#
> +# memory                        =

> +#
> +# CONFIG_CMD_LOADB is not set
> +CONFIG_CMD_MEMINFO=3Dy
> +CONFIG_CMD_CRC=3Dy
> +CONFIG_CMD_MTEST=3Dy
> +# CONFIG_CMD_MTEST_ALTERNATIVE is not set
> +
> +#
> +# flash                         =

> +#
> +CONFIG_CMD_FLASH=3Dy
> +
> +#
> +# booting                       =

> +#
> +CONFIG_CMD_BOOTM=3Dy
> +# CONFIG_CMD_BOOTM_ZLIB is not set
> +# CONFIG_CMD_BOOTM_BZLIB is not set
> +# CONFIG_CMD_BOOTM_SHOW_TYPE is not set
> +CONFIG_CMD_BOOTZ=3Dy
> +CONFIG_CMD_BOOTU=3Dy
> +# CONFIG_CMD_LINUX16 is not set
> +CONFIG_CMD_RESET=3Dy
> +CONFIG_CMD_GO=3Dy
> +CONFIG_CMD_TIMEOUT=3Dy
> +CONFIG_CMD_PARTITION=3Dy
> +CONFIG_CMD_TEST=3Dy
> +CONFIG_CMD_VERSION=3Dy
> +CONFIG_CMD_HELP=3Dy
> +CONFIG_CMD_DEVINFO=3Dy
> +CONFIG_CMD_BMP=3Dy
> +CONFIG_CMD_GPIO=3Dy
> +CONFIG_NET=3Dy
> +CONFIG_NET_DHCP=3Dy
> +# CONFIG_NET_RARP is not set
> +# CONFIG_NET_NFS is not set
> +CONFIG_NET_PING=3Dy
> +CONFIG_NET_TFTP=3Dy
> +
> +#
> +# Drivers                       =

> +#
> +
> +#
> +# serial drivers                =

> +#
> +# CONFIG_DRIVER_SERIAL_ARM_DCC is not set
> +CONFIG_DRIVER_SERIAL_IMX=3Dy
> +# CONFIG_DRIVER_SERIAL_NS16550 is not set
> +CONFIG_MIIPHY=3Dy
> +
> +#
> +# Network drivers               =

> +#
> +# CONFIG_DRIVER_NET_SMC911X is not set
> +# CONFIG_DRIVER_NET_SMC91111 is not set
> +CONFIG_DRIVER_NET_FEC_IMX=3Dy
> +
> +#
> +# SPI drivers                   =

> +#
> +# CONFIG_SPI is not set
> +# CONFIG_I2C is not set
> +
> +#
> +# flash drivers                 =

> +#
> +# CONFIG_DRIVER_CFI is not set
> +CONFIG_NAND=3Dy
> +CONFIG_NAND_IMX=3Dy
> +CONFIG_NAND_IMX_BOOT=3Dy
> +# CONFIG_MTD_NAND_VERIFY_WRITE is not set
> +# CONFIG_MTD_NAND_ECC_SMC is not set
> +CONFIG_MTD_NAND_IDS=3Dy
> +# CONFIG_ATA is not set
> +# CONFIG_USB is not set
> +# CONFIG_USB_GADGET is not set
> +CONFIG_VIDEO=3Dy
> +CONFIG_DRIVER_VIDEO_IMX=3Dy
> +# CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY is not set
> +
> +#
> +# Filesystem support            =

> +#
> +# CONFIG_FS_CRAMFS is not set
> +CONFIG_FS_RAMFS=3Dy
> +CONFIG_FS_DEVFS=3Dy
> +CONFIG_CRC32=3Dy
> +# CONFIG_GENERIC_FIND_NEXT_BIT is not set
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 02d5db9..419daab 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -2,6 +2,7 @@ if ARCH_IMX
>  =

>  config ARCH_TEXT_BASE
>  	hex
> +	default 0x83f00000 if MACH_EUKREA_CPUIMX25
>  	default 0xa0000000 if MACH_EUKREA_CPUIMX27
>  	default 0x08f00000 if MACH_MX1ADS
>  	default 0xc0000000 if MACH_IMX21ADS
> @@ -16,6 +17,7 @@ config ARCH_TEXT_BASE
>  	default 0x08f80000 if MACH_SCB9328
>  =

>  config BOARDINFO
> +	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
>  	default "Eukrea CPUIMX27" if MACH_EUKREA_CPUIMX27
>  	default "Freescale i.MX21 ADS" if MACH_IMX21ADS
>  	default "Freescale i.MX27 ADS" if MACH_IMX27ADS
> @@ -124,6 +126,14 @@ choice
>  =

>  	prompt "i.MX25 Board Type"
>  =

> +config MACH_EUKREA_CPUIMX25
> +	bool "Eukrea CPUIMX25"
> +	select MACH_HAS_LOWLEVEL_INIT
> +	select HAVE_MMU
> +	help
> +	  Say Y here if you are using the Eukrea Electromatique's CPUIMX25
> +	  equipped with a Freescale i.MX25 Processor
> +
>  config MACH_FREESCALE_MX25_3STACK
>  	bool "Freescale MX25 3stack"
>  	select HAS_CFI
> diff --git a/board/eukrea_cpuimx25/Makefile b/board/eukrea_cpuimx25/Makef=
ile
> new file mode 100644
> index 0000000..406c6f3
> --- /dev/null
> +++ b/board/eukrea_cpuimx25/Makefile
> @@ -0,0 +1,24 @@
> +#
> +# (C) 2010 Eukrea Electromatique, Eric B=E9nard <eric@eukrea.com>
> +#
> +# See file CREDITS for list of people who contributed to this
> +# project.
> +#
> +# This program is free software; you can redistribute it and/or
> +# modify it under the terms of the GNU General Public License as
> +# published by the Free Software Foundation; either version 2 of
> +# the License, or (at your option) any later version.
> +#
> +# This program is distributed in the hope that it will be useful,
> +# but WITHOUT ANY WARRANTY; without even the implied warranty of
> +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +# GNU General Public License for more details.
> +#
> +# You should have received a copy of the GNU General Public License
> +# along with this program; if not, write to the Free Software
> +# Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> +# MA 02111-1307 USA
> +#
> +
> +obj-y +=3D lowlevel.o
> +obj-y +=3D eukrea_cpuimx25.o
> diff --git a/board/eukrea_cpuimx25/config.h b/board/eukrea_cpuimx25/confi=
g.h
> new file mode 100644
> index 0000000..efff909
> --- /dev/null
> +++ b/board/eukrea_cpuimx25/config.h
> @@ -0,0 +1,27 @@
> +/*
> + * (c) 2010 Eukrea Electromatique, Eric B=E9nard <eric@eukrea.com>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#ifndef __CONFIG_H
> +#define __CONFIG_H
> +
> +#define CONFIG_MX25_HCLK_FREQ	24000000
> +
> +#endif
> +
> +/* nothing to do here yet */
> diff --git a/board/eukrea_cpuimx25/env/bin/_update b/board/eukrea_cpuimx2=
5/env/bin/_update
> new file mode 100644
> index 0000000..014bce3
> --- /dev/null
> +++ b/board/eukrea_cpuimx25/env/bin/_update
> @@ -0,0 +1,36 @@
> +#!/bin/sh
> +
> +if [ -z "$part" -o -z "$image" ]; then
> +	echo "define \$part and \$image"
> +	exit 1
> +fi
> +
> +if [ ! -e "$part" ]; then
> +	echo "Partition $part does not exist"
> +	exit 1
> +fi
> +
> +if [ $# =3D 1 ]; then
> +	image=3D$1
> +fi
> +
> +if [ x$ip =3D xdhcp ]; then
> +	dhcp
> +fi
> +
> +ping $eth0.serverip
> +if [ $? -ne 0 ] ; then
> +	echo "update aborted"
> +	exit 1
> +fi
> +
> +unprotect $part
> +
> +echo
> +echo "erasing partition $part"
> +erase $part
> +
> +echo
> +echo "flashing $image to $part"
> +echo
> +tftp $image $part
> diff --git a/board/eukrea_cpuimx25/env/bin/boot b/board/eukrea_cpuimx25/e=
nv/bin/boot
> new file mode 100644
> index 0000000..3311114
> --- /dev/null
> +++ b/board/eukrea_cpuimx25/env/bin/boot
> @@ -0,0 +1,53 @@
> +#!/bin/sh
> +
> +. /env/config
> +
> +if [ x$1 =3D xjffS2 ]; then
> +	root=3Djffs2
> +	kernel=3Dnand
> +fi
> +
> +if [ x$1 =3D xubifs ]; then
> +	root=3Dubifs
> +	kernel=3Dnand
> +fi
> +
> +if [ x$1 =3D xnet ]; then
> +	root=3Dnet
> +	kernel=3Dnet
> +fi
> +
> +if [ x$ip =3D xdhcp ]; then
> +	bootargs=3D"$bootargs ip=3Ddhcp"
> +else
> +	if [ x$ip =3D xoff ]; then
> +		bootargs=3D"$bootargs ip=3Doff"
> +	else
> +		bootargs=3D"$bootargs ip=3D$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$=
eth0.netmask:::"
> +	fi
> +fi
> +
> +if [ x$root =3D xjffs2 ]; then
> +	bootargs=3D"$bootargs root=3D/dev/mtdblock$rootpartnum_nand rootfstype=
=3Djffs2"
> +fi
> +
> +if [ x$root =3D xubifs ]; then
> +	bootargs=3D"$bootargs root=3Dubi0:root ubi.mtd=3D$rootpartnum_nand root=
fstype=3Dubifs"
> +fi
> +
> +if [ x$root =3D xnet ]; then
> +	bootargs=3D"$bootargs root=3D/dev/nfs nfsroot=3D$eth0.serverip:$nfsroot=
,v3,tcp"
> +fi
> +
> +bootargs=3D"$bootargs mtdparts=3Dmxc_nand:$nand_parts"
> +
> +if [ $kernel =3D net ]; then
> +	if [ x$ip =3D xdhcp ]; then
> +		dhcp
> +	fi
> +	tftp $uimage uImage || exit 1
> +	bootm uImage
> +else
> +	bootm /dev/nand0.kernel.bb
> +fi
> +
> diff --git a/board/eukrea_cpuimx25/env/bin/hush_hack b/board/eukrea_cpuim=
x25/env/bin/hush_hack
> new file mode 100644
> index 0000000..5fffa92
> --- /dev/null
> +++ b/board/eukrea_cpuimx25/env/bin/hush_hack
> @@ -0,0 +1 @@
> +nand -a /dev/nand0.*
> diff --git a/board/eukrea_cpuimx25/env/bin/init b/board/eukrea_cpuimx25/e=
nv/bin/init
> new file mode 100644
> index 0000000..8bcc732
> --- /dev/null
> +++ b/board/eukrea_cpuimx25/env/bin/init
> @@ -0,0 +1,38 @@
> +#!/bin/sh
> +
> +PATH=3D/env/bin
> +export PATH
> +
> +. /env/config
> +if [ -e /dev/nand0 ]; then
> +	addpart /dev/nand0 $nand_parts
> +
> +	# Uh, oh, hush first expands wildcards and then starts executing
> +	# commands. What a bug!
> +	source /env/bin/hush_hack
> +fi
> +
> +if [ -f /env/logo.bmp ]; then
> +	bmp /env/logo.bmp
> +fi
> +
> +if [ -z $eth0.ethaddr ]; then
> +	while [ -z $eth0.ethaddr ]; do
> +		readline "no MAC address set for eth0. please enter the one found on y=
our board: " eth0.ethaddr
> +	done
> +	echo -a /env/config "eth0.ethaddr=3D$eth0.ethaddr"
> +	saveenv
> +fi
> +
> +echo
> +echo -n "Hit any key to stop autoboot: "
> +timeout -a $autoboot_timeout
> +if [ $? !=3D 0 ]; then
> +	echo
> +	echo "type update_kernel [<imagename>] to update kernel into flash"
> +	echo "type update_root [<imagename>] to update rootfs into flash"
> +	echo
> +	exit
> +fi
> +
> +boot
> diff --git a/board/eukrea_cpuimx25/env/bin/update_kernel b/board/eukrea_c=
puimx25/env/bin/update_kernel
> new file mode 100644
> index 0000000..c2d2cc3
> --- /dev/null
> +++ b/board/eukrea_cpuimx25/env/bin/update_kernel
> @@ -0,0 +1,8 @@
> +#!/bin/sh
> +
> +. /env/config
> +
> +image=3D$uimage
> +part=3D/dev/nand0.kernel.bb
> +
> +. /env/bin/_update $1
> diff --git a/board/eukrea_cpuimx25/env/bin/update_root b/board/eukrea_cpu=
imx25/env/bin/update_root
> new file mode 100644
> index 0000000..dd89a5a
> --- /dev/null
> +++ b/board/eukrea_cpuimx25/env/bin/update_root
> @@ -0,0 +1,8 @@
> +#!/bin/sh
> +
> +. /env/config
> +
> +image=3D$rootfs
> +part=3D/dev/nand0.root.bb
> +
> +. /env/bin/_update $1
> diff --git a/board/eukrea_cpuimx25/env/config b/board/eukrea_cpuimx25/env=
/config
> new file mode 100644
> index 0000000..eb5fced
> --- /dev/null
> +++ b/board/eukrea_cpuimx25/env/config
> @@ -0,0 +1,26 @@
> +#!/bin/sh
> +
> +# can be either 'net' or 'jffs2' or 'ubifs'
> +kernel=3Dnand
> +root=3Djffs2
> +
> +basedir=3Dcpuimx25
> +uimage=3D$basedir/uImage
> +rootfs=3D$basedir/rootfs
> +
> +autoboot_timeout=3D1
> +
> +nfsroot=3D""
> +bootargs=3D"console=3Dttymxc0,115200"
> +
> +nand_parts=3D"256k(barebox)ro,128k(bareboxenv),2176k(kernel),-(root)"
> +rootpartnum_nand=3D3
> +
> +# use 'dhcp' to do dhcp in barebox and in kernel
> +ip=3Ddhcp
> +
> +# or set your networking parameters here
> +#eth0.ipaddr=3Da.b.c.d
> +#eth0.netmask=3Da.b.c.d
> +#eth0.gateway=3Da.b.c.d
> +eth0.serverip=3D192.168.1.15
> diff --git a/board/eukrea_cpuimx25/eukrea_cpuimx25.c b/board/eukrea_cpuim=
x25/eukrea_cpuimx25.c
> new file mode 100644
> index 0000000..478f2d4
> --- /dev/null
> +++ b/board/eukrea_cpuimx25/eukrea_cpuimx25.c
> @@ -0,0 +1,275 @@
> +/*
> + * (C) 2009 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
> + * (c) 2010 Eukrea Electromatique, Eric B=E9nard <eric@eukrea.com>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <environment.h>
> +#include <mach/imx-regs.h>
> +#include <asm/armlinux.h>
> +#include <mach/gpio.h>
> +#include <asm/io.h>
> +#include <asm/mmu.h>
> +
> +#include <partition.h>
> +#include <asm/mach-types.h>
> +#include <mach/imx-nand.h>
> +#include <mach/imxfb.h>
> +#include <fec.h>
> +#include <nand.h>
> +#include <mach/imx-flash-header.h>
> +#include <mach/iomux-mx25.h>
> +
> +extern unsigned long _stext;
> +
> +void __naked __flash_header_start go(void)
> +{
> +	__asm__ __volatile__("b exception_vectors\n");
> +}
> +
> +struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] =3D {
> +	{ .ptr_type =3D 4, .addr =3D 0xb8001010, .val =3D 0x00000004, },
> +	{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0x92100000, },
> +	{ .ptr_type =3D 1, .addr =3D 0x80000400, .val =3D 0x12344321, },
> +	{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0xa2100000, },
> +	{ .ptr_type =3D 4, .addr =3D 0x80000000, .val =3D 0x12344321, },
> +	{ .ptr_type =3D 4, .addr =3D 0x80000000, .val =3D 0x12344321, },
> +	{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0xb2100000, },
> +	{ .ptr_type =3D 1, .addr =3D 0x80000033, .val =3D 0xda, },
> +	{ .ptr_type =3D 1, .addr =3D 0x81000000, .val =3D 0xff, },
> +	{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0x82216080, },
> +	{ .ptr_type =3D 4, .addr =3D 0xb8001004, .val =3D 0x00295729, },
> +	{ .ptr_type =3D 4, .addr =3D 0x53f80008, .val =3D 0x20034000, },
> +};
> +
> +#define APP_DEST	0x80000000
> +
> +struct imx_flash_header __flash_header_0x400 eukrea_cpuimx25_header =3D {
> +	.app_code_jump_vector	=3D TEXT_BASE + 0x2000,
> +	.app_code_barker	=3D APP_CODE_BARKER,
> +	.app_code_csf		=3D 0,
> +	.dcd_ptr_ptr		=3D TEXT_BASE + 0x400 + offsetof(struct imx_flash_header,=
 dcd),
> +	.super_root_key		=3D 0,
> +	.dcd			=3D TEXT_BASE + 0x400 + offsetof(struct imx_flash_header, dcd_ba=
rker),
> +	.app_dest		=3D TEXT_BASE,
> +	.dcd_barker		=3D DCD_BARKER,
> +	.dcd_block_len		=3D sizeof(dcd_entry),
> +};
> +
> +extern unsigned long __bss_start;
> +
> +unsigned long __image_len_0x400 barebox_len =3D 0x40000;
> +
> +static struct fec_platform_data fec_info =3D {
> +	.xcv_type	=3D RMII,
> +	.phy_addr	=3D 1,
> +};
> +
> +static struct device_d fec_dev =3D {
> +	.name     =3D "fec_imx",
> +	.map_base =3D IMX_FEC_BASE,
> +	.platform_data	=3D &fec_info,
> +};
> +
> +static struct memory_platform_data sdram_pdata =3D {
> +	.name	=3D "ram0",
> +	.flags	=3D DEVFS_RDWR,
> +};
> +
> +static struct device_d sdram0_dev =3D {
> +	.name     =3D "mem",
> +	.map_base =3D IMX_SDRAM_CS0,
> +	.size     =3D 64 * 1024 * 1024,
> +	.platform_data =3D &sdram_pdata,
> +};
> +
> +struct imx_nand_platform_data nand_info =3D {
> +	.width	=3D 1,
> +	.hw_ecc	=3D 1,
> +};
> +
> +static struct device_d nand_dev =3D {
> +	.name     =3D "imx_nand",
> +	.map_base =3D IMX_NFC_BASE,
> +	.platform_data	=3D &nand_info,
> +};
> +
> +static struct imx_fb_videomode imxfb_mode =3D {
> +	.mode =3D {
> +		.name		=3D "CMO-QVGA",
> +		.refresh	=3D 60,
> +		.xres		=3D 320,
> +		.yres		=3D 240,
> +		.pixclock	=3D KHZ2PICOS(6500),
> +		.hsync_len	=3D 30,
> +		.left_margin	=3D 38,
> +		.right_margin	=3D 20,
> +		.vsync_len	=3D 3,
> +		.upper_margin	=3D 15,
> +		.lower_margin	=3D 4,
> +	},
> +	.pcr		=3D 0xCAD08B80,
> +	.bpp		=3D 16,
> +};
> +
> +static struct imx_fb_platform_data eukrea_cpuimx25_fb_data =3D {
> +	.mode		=3D &imxfb_mode,
> +	.pwmr		=3D 0x00A903FF,
> +	.lscr1		=3D 0x00120300,
> +	.dmacr		=3D 0x80040060,
> +};
> +
> +
> +static struct device_d imxfb_dev =3D {
> +	.name		=3D "imxfb",
> +	.map_base	=3D 0x53fbc000,
> +	.size		=3D 0x1000,
> +	.platform_data	=3D &eukrea_cpuimx25_fb_data,
> +};
> +
> +#ifdef CONFIG_MMU
> +static void eukrea_cpuimx25_mmu_init(void)
> +{
> +	mmu_init();
> +
> +	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
> +	arm_create_section(0x90000000, 0x80000000, 128, PMD_SECT_DEF_UNCACHED);
> +
> +	setup_dma_coherent(0x10000000);
> +
> +	mmu_enable();
> +}
> +#else
> +static void eukrea_cpuimx25_mmu_init(void)
> +{
> +}
> +#endif
> +
> +static struct pad_desc eukrea_cpuimx25_pads[] =3D {
> +	MX25_PAD_FEC_MDC__MDC,
> +	MX25_PAD_FEC_MDIO__MDIO,
> +	MX25_PAD_FEC_RDATA0__RDATA0,
> +	MX25_PAD_FEC_RDATA1__RDATA1,
> +	MX25_PAD_FEC_RX_DV__RX_DV,
> +	MX25_PAD_FEC_TDATA0__TDATA0,
> +	MX25_PAD_FEC_TDATA1__TDATA1,
> +	MX25_PAD_FEC_TX_CLK__TX_CLK,
> +	MX25_PAD_FEC_TX_EN__TX_EN,
> +	/* UART1 */
> +	MX25_PAD_UART1_RXD__RXD_MUX,
> +	MX25_PAD_UART1_TXD__TXD_MUX,
> +	MX25_PAD_UART1_RTS__RTS,
> +	MX25_PAD_UART1_CTS__CTS,
> +	/* LCDC */
> +	MX25_PAD_LD0__LCDC_LD0,
> +	MX25_PAD_LD1__LCDC_LD1,
> +	MX25_PAD_LD2__LCDC_LD2,
> +	MX25_PAD_LD3__LCDC_LD3,
> +	MX25_PAD_LD4__LCDC_LD4,
> +	MX25_PAD_LD5__LCDC_LD5,
> +	MX25_PAD_LD6__LCDC_LD6,
> +	MX25_PAD_LD7__LCDC_LD7,
> +	MX25_PAD_LD8__LCDC_LD8,
> +	MX25_PAD_LD9__LCDC_LD9,
> +	MX25_PAD_LD10__LCDC_LD10,
> +	MX25_PAD_LD11__LCDC_LD11,
> +	MX25_PAD_LD12__LCDC_LD12,
> +	MX25_PAD_LD13__LCDC_LD13,
> +	MX25_PAD_LD14__LCDC_LD14,
> +	MX25_PAD_LD15__LCDC_LD15,
> +	MX25_PAD_GPIO_E__LCDC_LD16,
> +	MX25_PAD_GPIO_F__LCDC_LD17,
> +	MX25_PAD_LSCLK__LCDC_LSCLK,
> +	MX25_PAD_OE_ACD__LCDC_OE_ACD,
> +	MX25_PAD_VSYNC__LCDC_VSYN,
> +	MX25_PAD_HSYNC__LCDC_HSYN,
> +	/* BACKLIGHT CONTROL */
> +	MX25_PAD_PWM__GPIO26,
> +};
> +
> +static int eukrea_cpuimx25_devices_init(void)
> +{
> +	eukrea_cpuimx25_mmu_init();
> +
> +	mxc_iomux_v3_setup_multiple_pads(eukrea_cpuimx25_pads,
> +		ARRAY_SIZE(eukrea_cpuimx25_pads));
> +	register_device(&fec_dev);
> +
> +	nand_info.width =3D 1;
> +	register_device(&nand_dev);
> +
> +	devfs_add_partition("nand0", 0x00000, 0x40000,
> +		PARTITION_FIXED, "self_raw");
> +	dev_add_bb_dev("self_raw", "self0");
> +
> +	devfs_add_partition("nand0", 0x40000, 0x40000,
> +		PARTITION_FIXED, "env_raw");
> +	dev_add_bb_dev("env_raw", "env0");
> +
> +	register_device(&sdram0_dev);
> +
> +	/* enable LCD */
> +	gpio_direction_output(26, 1);
> +	gpio_set_value(26, 1);
> +
> +	register_device(&imxfb_dev);
> +
> +	armlinux_add_dram(&sdram0_dev);
> +	armlinux_set_bootparams((void *)0x80000100);
> +	armlinux_set_architecture(MACH_TYPE_MX25_3DS);
> +
> +	return 0;
> +}
> +
> +device_initcall(eukrea_cpuimx25_devices_init);
> +
> +static struct device_d eukrea_cpuimx25_serial_device =3D {
> +	.name     =3D "imx_serial",
> +	.map_base =3D IMX_UART1_BASE,
> +	.size     =3D 16 * 1024,
> +};
> +
> +static int eukrea_cpuimx25_console_init(void)
> +{
> +	writel(0x03010101, IMX_CCM_BASE + CCM_PCDR3);
> +	register_device(&eukrea_cpuimx25_serial_device);
> +	return 0;
> +}
> +
> +console_initcall(eukrea_cpuimx25_console_init);
> +
> +#ifdef CONFIG_NAND_IMX_BOOT
> +void __bare_init nand_boot(void)
> +{
> +	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
> +}
> +#endif
> +
> +static int eukrea_cpuimx25_core_setup(void)
> +{
> +	writel(0x01010103, IMX_CCM_BASE + CCM_PCDR2);
> +	return 0;
> +
> +}
> +core_initcall(eukrea_cpuimx25_core_setup);
> diff --git a/board/eukrea_cpuimx25/lowlevel.c b/board/eukrea_cpuimx25/low=
level.c
> new file mode 100644
> index 0000000..b9d3ce5
> --- /dev/null
> +++ b/board/eukrea_cpuimx25/lowlevel.c
> @@ -0,0 +1,130 @@
> +/*
> + *
> + * (c) 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
> + * (c) 2010 Eukrea Electromatique, Eric B=E9nard <eric@eukrea.com>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +#include <common.h>
> +#include <init.h>
> +#include <mach/imx-regs.h>
> +#include <mach/imx-pll.h>
> +#include <mach/esdctl.h>
> +#include <asm/cache-l2x0.h>
> +#include <asm/io.h>
> +#include <mach/imx-nand.h>
> +#include <asm/barebox-arm.h>
> +#include <asm-generic/memory_layout.h>
> +#include <asm/system.h>
> +
> +static void __bare_init __naked insdram(void)
> +{
> +	uint32_t r;
> +
> +	/* setup a stack to be able to call imx_nand_load_image() */
> +	r =3D STACK_BASE + STACK_SIZE - 12;
> +	__asm__ __volatile__("mov sp, %0" : : "r"(r));
> +
> +	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
> +
> +	board_init_lowlevel_return();
> +}
> +
> +#define MX25_CCM_MCR	0x64
> +#define MX25_CCM_CGR0	0x0c
> +#define MX25_CCM_CGR1	0x10
> +#define MX25_CCM_CGR2	0x14
> +
> +void __bare_init __naked board_init_lowlevel(void)
> +{
> +	uint32_t r;
> +	unsigned int *trg, *src;
> +	int i;
> +
> +	/* AIPS setup - Only setup MPROTx registers. The PACR default values ar=
e good.
> +	 * Set all MPROTx to be non-bufferable, trusted for R/W,
> +	 * not forced to user-mode.
> +	 */
> +	writel(0x77777777, 0x43f00000);
> +	writel(0x77777777, 0x43f00004);
> +	writel(0x77777777, 0x53f00000);
> +	writel(0x77777777, 0x53f00004);
> +
> +	/* MAX (Multi-Layer AHB Crossbar Switch) setup
> +	 * MPR - priority for MX25 is (SDHC2/SDMA)>USBOTG>RTIC>IAHB>DAHB
> +	 */
> +	writel(0x00002143, 0x43f04000);
> +	writel(0x00002143, 0x43f04100);
> +	writel(0x00002143, 0x43f04200);
> +	writel(0x00002143, 0x43f04300);
> +	writel(0x00002143, 0x43f04400);
> +	/* SGPCR - always park on last master */
> +	writel(0x10, 0x43f04010);
> +	writel(0x10, 0x43f04110);
> +	writel(0x10, 0x43f04210);
> +	writel(0x10, 0x43f04310);
> +	writel(0x10, 0x43f04410);
> +	/* MGPCR - restore default values */
> +	writel(0x0, 0x43f04800);
> +	writel(0x0, 0x43f04900);
> +	writel(0x0, 0x43f04a00);
> +	writel(0x0, 0x43f04b00);
> +	writel(0x0, 0x43f04c00);
> +
> +	/* Configure M3IF registers
> +	 * M3IF Control Register (M3IFCTL) for MX25
> +	 * MRRP[0] =3D LCDC           on priority list (1 << 0)  =3D 0x00000001
> +	 * MRRP[1] =3D MAX1       not on priority list (0 << 1)  =3D 0x00000000
> +	 * MRRP[2] =3D MAX0       not on priority list (0 << 2)  =3D 0x00000000
> +	 * MRRP[3] =3D USB HOST   not on priority list (0 << 3)  =3D 0x00000000
> +	 * MRRP[4] =3D SDMA       not on priority list (0 << 4)  =3D 0x00000000
> +	 * MRRP[5] =3D SD/ATA/FEC not on priority list (0 << 5)  =3D 0x00000000
> +	 * MRRP[6] =3D SCMFBC     not on priority list (0 << 6)  =3D 0x00000000
> +	 * MRRP[7] =3D CSI        not on priority list (0 << 7)  =3D 0x00000000
> +	 *                                                       ----------
> +	 *                                                       0x00000001
> +	 */
> +	writel(0x1, 0xb8003000);
> +
> +	/* enable all the clocks */
> +	writel(0x038A81A2, IMX_CCM_BASE + MX25_CCM_CGR0);
> +	writel(0x24788F00, IMX_CCM_BASE + MX25_CCM_CGR1);
> +	writel(0x00004438, IMX_CCM_BASE + MX25_CCM_CGR2);
> +	writel(0x00, IMX_CCM_BASE + MX25_CCM_MCR);
> +
> +#ifdef CONFIG_NAND_IMX_BOOT
> +	/* skip NAND boot if not running from NFC space */
> +	r =3D get_pc();
> +	if (r < IMX_NFC_BASE || r > IMX_NFC_BASE + 0x1000)
> +		board_init_lowlevel_return();
> +
> +	src =3D (unsigned int *)IMX_NFC_BASE;
> +	trg =3D (unsigned int *)TEXT_BASE;
> +
> +	/* Move ourselves out of NFC SRAM */
> +	for (i =3D 0; i < 0x1000 / sizeof(int); i++)
> +		*trg++ =3D *src++;
> +
> +	/* Jump to SDRAM */
> +	r =3D (unsigned int)&insdram;
> +	__asm__ __volatile__("mov pc, %0" : : "r"(r));
> +#else
> +	board_init_lowlevel_return();
> +#endif
> +}
> -- =

> 1.6.3.3
> =

> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
