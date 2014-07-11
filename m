Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X5hLh-0001t4-OD
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 20:23:20 +0000
Received: by mail-la0-f41.google.com with SMTP id hz20so1275187lab.14
 for <barebox@lists.infradead.org>; Fri, 11 Jul 2014 13:22:53 -0700 (PDT)
Date: Sat, 12 Jul 2014 00:35:13 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140712003513.0d0211ad7835ed0df1b543c4@gmail.com>
In-Reply-To: <1405108344-29002-1-git-send-email-rockford@yandex.ru>
References: <1405108344-29002-1-git-send-email-rockford@yandex.ru>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: i.MX6Q: Add support for Embedsky E9 board.
To: rockford@yandex.ru
Cc: barebox@lists.infradead.org

On Fri, 11 Jul 2014 23:52:24 +0400
rockford@yandex.ru wrote:

Your arch/arm/configs/embedsky-e9_defconfig file is just .config with strip=
ped ^# lines.

Please use 'make savedefconfig' for *_defconfig file creation.

'make savedefconfig' will save a minimal config to a file named "defconfig".
Next just rename "defconfig" to arch/arm/configs/embedsky-e9_defconfig.

> From: Andrey Panov <rockford@yandex.ru>
> =

> This will add support for Embedsky E9.
> It is a small board based on i.MX6 Quad with 2G of RAM.
> =

> http://en.embedsky.com/product_info.php?cateid=3D169&id=3D169
> =

> Signed-off-by: Andrey Panov <rockford@yandex.ru>
> ---
>  arch/arm/boards/Makefile                           |   1 +
>  arch/arm/boards/embedsky-e9/Makefile               |   3 +
>  arch/arm/boards/embedsky-e9/board.c                |  85 +++++
>  arch/arm/boards/embedsky-e9/env/config-board       |   6 +
>  arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg | 115 ++++++
>  arch/arm/boards/embedsky-e9/lowlevel.c             |  18 +
>  arch/arm/configs/embedsky-e9_defconfig             | 269 +++++++++++++
>  arch/arm/dts/Makefile                              |   4 +-
>  arch/arm/dts/imx6q-embedsky-e9.dts                 |  42 +++
>  arch/arm/mach-imx/Kconfig                          |   6 +
>  dts/src/arm/imx6q-embedsky-e9.dtsi                 | 415 +++++++++++++++=
++++++
>  images/Makefile.imx                                |   5 +
>  12 files changed, 968 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boards/embedsky-e9/Makefile
>  create mode 100644 arch/arm/boards/embedsky-e9/board.c
>  create mode 100644 arch/arm/boards/embedsky-e9/env/config-board
>  create mode 100644 arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg
>  create mode 100644 arch/arm/boards/embedsky-e9/lowlevel.c
>  create mode 100644 arch/arm/configs/embedsky-e9_defconfig
>  create mode 100644 arch/arm/dts/imx6q-embedsky-e9.dts
>  create mode 100644 dts/src/arm/imx6q-embedsky-e9.dtsi
> =

> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index d200512..2ed3730 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -28,6 +28,7 @@ obj-$(CONFIG_MACH_EDB9307)			+=3D edb93xx/
>  obj-$(CONFIG_MACH_EDB9315A)			+=3D edb93xx/
>  obj-$(CONFIG_MACH_EDB9315)			+=3D edb93xx/
>  obj-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK)		+=3D efika-mx-smartbook/
> +obj-$(CONFIG_MACH_EMBEDSKY_E9)			+=3D embedsky-e9/
>  obj-$(CONFIG_MACH_EMBEST_RIOTBOARD)		+=3D embest-riotboard/
>  obj-$(CONFIG_MACH_EUKREA_CPUIMX25)		+=3D eukrea_cpuimx25/
>  obj-$(CONFIG_MACH_EUKREA_CPUIMX27)		+=3D eukrea_cpuimx27/
> diff --git a/arch/arm/boards/embedsky-e9/Makefile b/arch/arm/boards/embed=
sky-e9/Makefile
> new file mode 100644
> index 0000000..445c3c8
> --- /dev/null
> +++ b/arch/arm/boards/embedsky-e9/Makefile
> @@ -0,0 +1,3 @@
> +obj-y +=3D board.o flash-header-e9.dcd.o
> +extra-y +=3D flash-header-e9.dcd.S flash-header-e9.dcd
> +lwl-y +=3D lowlevel.o
> diff --git a/arch/arm/boards/embedsky-e9/board.c b/arch/arm/boards/embeds=
ky-e9/board.c
> new file mode 100644
> index 0000000..4a9867d
> --- /dev/null
> +++ b/arch/arm/boards/embedsky-e9/board.c
> @@ -0,0 +1,85 @@
> +/*
> + * Copyright (C) 2014 Andrey Panov <rockford@yandex.ru>
> + *
> + * based on arch/arm/boards/freescale-mx6-sabresd/board.c
> + * Copyright (C) 2013 Hubert Feurstein <h.feurstein@gmail.com>
> + *
> + * based on arch/arm/boards/freescale-mx6-sabrelite/board.c
> + * Copyright (C) 2012 Steffen Trumtrar, Pengutronix
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
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <environment.h>
> +#include <mach/imx6-regs.h>
> +#include <fec.h>
> +#include <gpio.h>
> +#include <asm/armlinux.h>
> +#include <generated/mach-types.h>
> +#include <partition.h>
> +#include <linux/phy.h>
> +#include <asm/io.h>
> +#include <asm/mmu.h>
> +#include <mach/generic.h>
> +#include <sizes.h>
> +#include <net.h>
> +#include <mach/imx6.h>
> +#include <mach/devices-imx6.h>
> +#include <mach/iomux-mx6.h>
> +#include <spi/spi.h>
> +#include <mach/spi.h>
> +#include <mach/usb.h>
> +
> +#define PHY_ID_RTL8211E	0x001cc915
> +#define PHY_ID_MASK	0xffffffff
> +
> +/*
> + * This should reset a PHY. Taken from E9 U-Boot/Linux source.
> + */
> +static int rtl8211e_phy_fixup(struct phy_device *dev)
> +{
> +	phy_write(dev, 0x00, 0x3140);
> +	mdelay(10);
> +	phy_write(dev, 0x00, 0x3340);
> +	mdelay(10);
> +
> +	return 0;
> +}
> +
> +static int e9_devices_init(void)
> +{
> +	if (!of_machine_is_compatible("embedsky,e9"))
> +		return 0;
> +
> +	armlinux_set_architecture(3980);
> +	barebox_set_hostname("e9");
> +
> +	return 0;
> +}
> +device_initcall(e9_devices_init);
> +
> +static int e9_coredevices_init(void)
> +{
> +	if (!of_machine_is_compatible("embedsky,e9"))
> +		return 0;
> +
> +	phy_register_fixup_for_uid(PHY_ID_RTL8211E, PHY_ID_MASK,
> +			rtl8211e_phy_fixup);
> +
> +	return 0;
> +}
> +/*
> + * Do this before the fec initializes but after our
> + * gpios are available.
> + */
> +coredevice_initcall(e9_coredevices_init);
> diff --git a/arch/arm/boards/embedsky-e9/env/config-board b/arch/arm/boar=
ds/embedsky-e9/env/config-board
> new file mode 100644
> index 0000000..ee0472a
> --- /dev/null
> +++ b/arch/arm/boards/embedsky-e9/env/config-board
> @@ -0,0 +1,6 @@
> +#!/bin/sh
> +
> +# board defaults, do not change in running system. Change /env/config
> +# instead
> +
> +global.linux.bootargs.base=3D"earlyprintk loglevel=3D10 panic=3D10 rootw=
ait root=3D/dev/mmcblk0p2"
> diff --git a/arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg b/arch/ar=
m/boards/embedsky-e9/flash-header-e9.imxcfg
> new file mode 100644
> index 0000000..2151de6
> --- /dev/null
> +++ b/arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg
> @@ -0,0 +1,115 @@
> +loadaddr 0x27800000
> +soc imx6
> +dcdofs 0x400
> +
> +wm 32 0x020e0798 0x000c0000
> +wm 32 0x020e0758 0x00000000
> +wm 32 0x020e0588 0x00000030
> +wm 32 0x020e0594 0x00000030
> +wm 32 0x020e056c 0x00000030
> +wm 32 0x020e0578 0x00000030
> +wm 32 0x020e074c 0x00000030
> +wm 32 0x020e057c 0x00000030
> +wm 32 0x020e058c 0x00000000
> +wm 32 0x020e059c 0x00000030
> +wm 32 0x020e05a0 0x00000030
> +wm 32 0x020e078c 0x00000030
> +wm 32 0x020e0750 0x00020000
> +wm 32 0x020e05a8 0x00000018
> +wm 32 0x020e05b0 0x00000018
> +wm 32 0x020e0524 0x00000018
> +wm 32 0x020e051c 0x00000018
> +wm 32 0x020e0518 0x00000018
> +wm 32 0x020e050c 0x00000018
> +wm 32 0x020e05b8 0x00000018
> +wm 32 0x020e05c0 0x00000018
> +wm 32 0x020e0774 0x00020000
> +wm 32 0x020e0784 0x00000018
> +wm 32 0x020e0788 0x00000018
> +wm 32 0x020e0794 0x00000018
> +wm 32 0x020e079c 0x00000018
> +wm 32 0x020e07a0 0x00000018
> +wm 32 0x020e07a4 0x00000018
> +wm 32 0x020e07a8 0x00000018
> +wm 32 0x020e0748 0x00000018
> +wm 32 0x020e05ac 0x00000018
> +wm 32 0x020e05b4 0x00000018
> +wm 32 0x020e0528 0x00000018
> +wm 32 0x020e0520 0x00000018
> +wm 32 0x020e0514 0x00000018
> +wm 32 0x020e0510 0x00000018
> +wm 32 0x020e05bc 0x00000018
> +wm 32 0x020e05c4 0x00000018
> +wm 32 0x021b0800 0xa1390003
> +wm 32 0x021b080c 0x001f001f
> +wm 32 0x021b0810 0x001f001f
> +wm 32 0x021b480c 0x001f001f
> +wm 32 0x021b4810 0x001f001f
> +wm 32 0x021b083c 0x4333033f
> +wm 32 0x021b0840 0x032c031d
> +wm 32 0x021b483c 0x43200332
> +wm 32 0x021b4840 0x031a026a
> +wm 32 0x021b0848 0x4d464746
> +wm 32 0x021b4848 0x47453f4d
> +wm 32 0x021b0850 0x3e434440
> +wm 32 0x021b4850 0x47384839
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b481c 0x33333333
> +wm 32 0x021b4820 0x33333333
> +wm 32 0x021b4824 0x33333333
> +wm 32 0x021b4828 0x33333333
> +wm 32 0x021b08b8 0x00000800
> +wm 32 0x021b48b8 0x00000800
> +wm 32 0x021b0004 0x00020036
> +wm 32 0x021b0008 0x09444040
> +wm 32 0x021b000c 0x8a8f7955
> +wm 32 0x021b0010 0xff328f64
> +wm 32 0x021b0014 0x01ff00db
> +wm 32 0x021b0018 0x00001740
> +wm 32 0x021b001c 0x00008000
> +wm 32 0x021b002c 0x000026d2
> +wm 32 0x021b0030 0x008f1023
> +wm 32 0x021b0040 0x00000047
> +wm 32 0x021b0000 0x841a0000
> +wm 32 0x021b001c 0x04088032
> +wm 32 0x021b001c 0x00008033
> +wm 32 0x021b001c 0x00048031
> +wm 32 0x021b001c 0x09408030
> +wm 32 0x021b001c 0x04008040
> +wm 32 0x021b0020 0x00005800
> +wm 32 0x021b0818 0x00011117
> +wm 32 0x021b4818 0x00011117
> +wm 32 0x021b0004 0x00025576
> +wm 32 0x021b0404 0x00011006
> +wm 32 0x021b001c 0x00000000
> +
> +wm 32 0x021b0404 0x00011006
> +
> +/* set the default clock gate to save power */
> +wm 32 0x020c4068 0x00C03F3F
> +wm 32 0x020c406c 0x0030FC03
> +wm 32 0x020c4070 0x0FFFC000
> +wm 32 0x020c4074 0x3FF00000
> +wm 32 0x020c4078 0x00FFF300
> +wm 32 0x020c407c 0x0F0000C3
> +wm 32 0x020c4080 0x000003FF
> +
> +/* enable AXI cache for VDOA/VPU/IPU */
> +wm 32 0x020e0010 0xF00000CF
> +/* set IPU AXI-id0 Qos=3D0xf(bypass) AXI-id1 Qos=3D0x7 */
> +wm 32 0x020e0018 0x007F007F
> +wm 32 0x020e001c 0x007F007F
> +
> +/*
> + * Setup CCM_CCOSR register as follows:
> + *
> + * cko1_en  =3D 1	   --> CKO1 enabled
> + * cko1_div =3D 111  --> divide by 8
> + * cko1_sel =3D 1011 --> ahb_clk_root
> + *
> + * This sets CKO1 at ahb_clk_root/8 =3D 132/8 =3D 16.5 MHz
> + */
> +wm 32 0x020c4060 0x000000fb
> diff --git a/arch/arm/boards/embedsky-e9/lowlevel.c b/arch/arm/boards/emb=
edsky-e9/lowlevel.c
> new file mode 100644
> index 0000000..fee1011
> --- /dev/null
> +++ b/arch/arm/boards/embedsky-e9/lowlevel.c
> @@ -0,0 +1,18 @@
> +#include <common.h>
> +#include <sizes.h>
> +#include <mach/generic.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +
> +extern char __dtb_imx6q_embedsky_e9_start[];
> +
> +ENTRY_FUNCTION(start_imx6q_embedsky_e9, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	imx6_cpu_lowlevel_init();
> +
> +	fdt =3D __dtb_imx6q_embedsky_e9_start - get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_2G, fdt);
> +}
> diff --git a/arch/arm/configs/embedsky-e9_defconfig b/arch/arm/configs/em=
bedsky-e9_defconfig
> new file mode 100644
> index 0000000..20e876c
> --- /dev/null
> +++ b/arch/arm/configs/embedsky-e9_defconfig
> @@ -0,0 +1,269 @@
> +CONFIG_ARM=3Dy
> +CONFIG_ARM_LINUX=3Dy
> +CONFIG_ARCH_IMX=3Dy
> +CONFIG_CPU_32=3Dy
> +CONFIG_CPU_V7=3Dy
> +CONFIG_CPU_32v7=3Dy
> +CONFIG_BAREBOX_MAX_IMAGE_SIZE=3D0xffffffff
> +CONFIG_ARCH_IMX_IMXIMAGE=3Dy
> +CONFIG_ARCH_IMX6=3Dy
> +CONFIG_IMX_MULTI_BOARDS=3Dy
> +CONFIG_MACH_EMBEDSKY_E9=3Dy
> +CONFIG_IMX_IIM=3Dy
> +CONFIG_IMX_IIM_FUSE_BLOW=3Dy
> +CONFIG_IMX_OCOTP=3Dy
> +CONFIG_AEABI=3Dy
> +CONFIG_ARM_BOARD_APPEND_ATAG=3Dy
> +CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=3Dy
> +CONFIG_ARM_EXCEPTIONS=3Dy
> +CONFIG_ARM_UNWIND=3Dy
> +CONFIG_DEFCONFIG_LIST=3D"$ARCH_DEFCONFIG"
> +CONFIG_GREGORIAN_CALENDER=3Dy
> +CONFIG_HAS_KALLSYMS=3Dy
> +CONFIG_HAS_MODULES=3Dy
> +CONFIG_ENV_HANDLING=3Dy
> +CONFIG_GENERIC_GPIO=3Dy
> +CONFIG_BOOTM=3Dy
> +CONFIG_BLOCK=3Dy
> +CONFIG_BLOCK_WRITE=3Dy
> +CONFIG_FILETYPE=3Dy
> +CONFIG_BINFMT=3Dy
> +CONFIG_UIMAGE=3Dy
> +CONFIG_GLOBALVAR=3Dy
> +CONFIG_STDDEV=3Dy
> +CONFIG_LOCALVERSION=3D""
> +CONFIG_LOCALVERSION_AUTO=3Dy
> +CONFIG_BANNER=3Dy
> +CONFIG_MEMINFO=3Dy
> +CONFIG_ENVIRONMENT_VARIABLES=3Dy
> +CONFIG_HAVE_PBL_IMAGE=3Dy
> +CONFIG_HAVE_PBL_MULTI_IMAGES=3Dy
> +CONFIG_HAVE_IMAGE_COMPRESSION=3Dy
> +CONFIG_PBL_IMAGE=3Dy
> +CONFIG_PBL_MULTI_IMAGES=3Dy
> +CONFIG_PBL_RELOCATABLE=3Dy
> +CONFIG_IMAGE_COMPRESSION=3Dy
> +CONFIG_IMAGE_COMPRESSION_LZO=3Dy
> +CONFIG_MMU=3Dy
> +CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=3Dy
> +CONFIG_TEXT_BASE=3D0x27800000
> +CONFIG_BAREBOX_MAX_PBL_SIZE=3D0xffffffff
> +CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=3D0xffffffff
> +CONFIG_STACK_SIZE=3D0x8000
> +CONFIG_MALLOC_SIZE=3D0x4000000
> +CONFIG_BROKEN=3Dy
> +CONFIG_EXPERIMENTAL=3Dy
> +CONFIG_MALLOC_TLSF=3Dy
> +CONFIG_KALLSYMS=3Dy
> +CONFIG_RELOCATABLE=3Dy
> +CONFIG_PROMPT=3D"barebox:"
> +CONFIG_BAUDRATE=3D115200
> +CONFIG_CBSIZE=3D1024
> +CONFIG_SHELL_HUSH=3Dy
> +CONFIG_GLOB=3Dy
> +CONFIG_GLOB_SORT=3Dy
> +CONFIG_PROMPT_HUSH_PS2=3D"> "
> +CONFIG_HUSH_FANCY_PROMPT=3Dy
> +CONFIG_CMDLINE_EDITING=3Dy
> +CONFIG_AUTO_COMPLETE=3Dy
> +CONFIG_MENU=3Dy
> +CONFIG_DYNAMIC_CRC_TABLE=3Dy
> +CONFIG_ERRNO_MESSAGES=3Dy
> +CONFIG_TIMESTAMP=3Dy
> +CONFIG_CONSOLE_FULL=3Dy
> +CONFIG_CONSOLE_ACTIVATE_ALL=3Dy
> +CONFIG_PARTITION=3Dy
> +CONFIG_PARTITION_DISK=3Dy
> +CONFIG_PARTITION_DISK_DOS=3Dy
> +CONFIG_DEFAULT_ENVIRONMENT=3Dy
> +CONFIG_DEFAULT_COMPRESSION_LZO=3Dy
> +CONFIG_HAVE_DEFAULT_ENVIRONMENT_NEW=3Dy
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=3Dy
> +CONFIG_DEFAULT_ENVIRONMENT_PATH=3D"arch/arm/boards/embedsky-e9/env"
> +CONFIG_BAREBOXENV_TARGET=3Dy
> +CONFIG_BAREBOXCRC32_TARGET=3Dy
> +CONFIG_RESET_SOURCE=3Dy
> +CONFIG_COMPILE_LOGLEVEL=3D6
> +CONFIG_DEFAULT_LOGLEVEL=3D7
> +CONFIG_DEBUG_LL=3Dy
> +CONFIG_DEBUG_IMX6Q_UART=3Dy
> +CONFIG_DEBUG_IMX_UART_PORT=3D4
> +CONFIG_HAS_DEBUG_LL=3Dy
> +CONFIG_COMMAND_SUPPORT=3Dy
> +CONFIG_COMPILE_DIGEST=3Dy
> +CONFIG_COMPILE_MEMORY=3Dy
> +CONFIG_CMD_ARM_CPUINFO=3Dy
> +CONFIG_CMD_DEVINFO=3Dy
> +CONFIG_CMD_DRVINFO=3Dy
> +CONFIG_CMD_HELP=3Dy
> +CONFIG_LONGHELP=3Dy
> +CONFIG_CMD_IOMEM=3Dy
> +CONFIG_CMD_MEMINFO=3Dy
> +CONFIG_CMD_ARM_MMUINFO=3Dy
> +CONFIG_CMD_VERSION=3Dy
> +CONFIG_FLEXIBLE_BOOTARGS=3Dy
> +CONFIG_CMD_BOOT=3Dy
> +CONFIG_CMD_BOOTM=3Dy
> +CONFIG_CMD_BOOTM_SHOW_TYPE=3Dy
> +CONFIG_CMD_BOOTM_VERBOSE=3Dy
> +CONFIG_CMD_BOOTM_INITRD=3Dy
> +CONFIG_CMD_BOOTM_OFTREE=3Dy
> +CONFIG_CMD_BOOTM_OFTREE_UIMAGE=3Dy
> +CONFIG_CMD_BOOTM_AIMAGE=3Dy
> +CONFIG_CMD_BOOTU=3Dy
> +CONFIG_CMD_BOOTZ=3Dy
> +CONFIG_CMD_GO=3Dy
> +CONFIG_CMD_LOADB=3Dy
> +CONFIG_CMD_LOADS=3Dy
> +CONFIG_CMD_LOADY=3Dy
> +CONFIG_CMD_RESET=3Dy
> +CONFIG_CMD_SAVES=3Dy
> +CONFIG_CMD_UIMAGE=3Dy
> +CONFIG_CMD_PARTITION=3Dy
> +CONFIG_CMD_AUTOMOUNT=3Dy
> +CONFIG_CMD_MOUNT=3Dy
> +CONFIG_CMD_UMOUNT=3Dy
> +CONFIG_CMD_EXPORT=3Dy
> +CONFIG_CMD_GLOBAL=3Dy
> +CONFIG_CMD_LOADENV=3Dy
> +CONFIG_CMD_PRINTENV=3Dy
> +CONFIG_CMD_MAGICVAR=3Dy
> +CONFIG_CMD_MAGICVAR_HELP=3Dy
> +CONFIG_CMD_SAVEENV=3Dy
> +CONFIG_CMD_BASENAME=3Dy
> +CONFIG_CMD_CAT=3Dy
> +CONFIG_CMD_CD=3Dy
> +CONFIG_CMD_CP=3Dy
> +CONFIG_CMD_DIRNAME=3Dy
> +CONFIG_CMD_FILETYPE=3Dy
> +CONFIG_CMD_LN=3Dy
> +CONFIG_CMD_LS=3Dy
> +CONFIG_CMD_MD5SUM=3Dy
> +CONFIG_CMD_MKDIR=3Dy
> +CONFIG_CMD_PWD=3Dy
> +CONFIG_CMD_READLINK=3Dy
> +CONFIG_CMD_RM=3Dy
> +CONFIG_CMD_RMDIR=3Dy
> +CONFIG_CMD_SHA1SUM=3Dy
> +CONFIG_CMD_SHA224SUM=3Dy
> +CONFIG_CMD_SHA256SUM=3Dy
> +CONFIG_CMD_UNCOMPRESS=3Dy
> +CONFIG_CMD_FALSE=3Dy
> +CONFIG_CMD_GETOPT=3Dy
> +CONFIG_CMD_LET=3Dy
> +CONFIG_CMD_MSLEEP=3Dy
> +CONFIG_CMD_READF=3Dy
> +CONFIG_CMD_SLEEP=3Dy
> +CONFIG_CMD_TEST=3Dy
> +CONFIG_CMD_TRUE=3Dy
> +CONFIG_CMD_DHCP=3Dy
> +CONFIG_CMD_HOST=3Dy
> +CONFIG_NET_CMD_IFUP=3Dy
> +CONFIG_CMD_MIITOOL=3Dy
> +CONFIG_CMD_PING=3Dy
> +CONFIG_CMD_TFTP=3Dy
> +CONFIG_CMD_CLEAR=3Dy
> +CONFIG_CMD_ECHO=3Dy
> +CONFIG_CMD_ECHO_E=3Dy
> +CONFIG_CMD_EDIT=3Dy
> +CONFIG_CMD_MENU=3Dy
> +CONFIG_CMD_MENU_MANAGEMENT=3Dy
> +CONFIG_CMD_READLINE=3Dy
> +CONFIG_CMD_TIMEOUT=3Dy
> +CONFIG_CMD_CRC=3Dy
> +CONFIG_CMD_CRC_CMP=3Dy
> +CONFIG_CMD_MD=3Dy
> +CONFIG_CMD_MEMCMP=3Dy
> +CONFIG_CMD_MEMCPY=3Dy
> +CONFIG_CMD_MEMSET=3Dy
> +CONFIG_CMD_MM=3Dy
> +CONFIG_CMD_MW=3Dy
> +CONFIG_CMD_CLK=3Dy
> +CONFIG_CMD_DETECT=3Dy
> +CONFIG_CMD_FLASH=3Dy
> +CONFIG_CMD_GPIO=3Dy
> +CONFIG_CMD_I2C=3Dy
> +CONFIG_CMD_SPI=3Dy
> +CONFIG_CMD_USB=3Dy
> +CONFIG_CMD_OF_DUMP=3Dy
> +CONFIG_CMD_OF_NODE=3Dy
> +CONFIG_CMD_OF_PROPERTY=3Dy
> +CONFIG_CMD_OFTREE=3Dy
> +CONFIG_CMD_TIME=3Dy
> +CONFIG_NET=3Dy
> +CONFIG_NET_NFS=3Dy
> +CONFIG_NET_NETCONSOLE=3Dy
> +CONFIG_NET_RESOLV=3Dy
> +CONFIG_NET_IFUP=3Dy
> +CONFIG_OFTREE=3Dy
> +CONFIG_OFTREE_MEM_GENERIC=3Dy
> +CONFIG_DTC=3Dy
> +CONFIG_OFDEVICE=3Dy
> +CONFIG_OF_NET=3Dy
> +CONFIG_OF_GPIO=3Dy
> +CONFIG_OF_BAREBOX_DRIVERS=3Dy
> +CONFIG_DRIVER_SERIAL_IMX=3Dy
> +CONFIG_ARCH_HAS_FEC_IMX=3Dy
> +CONFIG_PHYLIB=3Dy
> +CONFIG_DRIVER_NET_FEC_IMX=3Dy
> +CONFIG_SPI=3Dy
> +CONFIG_DRIVER_SPI_IMX=3Dy
> +CONFIG_DRIVER_SPI_IMX_2_3=3Dy
> +CONFIG_I2C=3Dy
> +CONFIG_I2C_IMX=3Dy
> +CONFIG_MTD=3Dy
> +CONFIG_MTD_WRITE=3Dy
> +CONFIG_MTD_OOB_DEVICE=3Dy
> +CONFIG_DISK=3Dy
> +CONFIG_DISK_WRITE=3Dy
> +CONFIG_USB=3Dy
> +CONFIG_USB_IMX_CHIPIDEA=3Dy
> +CONFIG_USB_IMX_PHY=3Dy
> +CONFIG_USB_EHCI=3Dy
> +CONFIG_USB_STORAGE=3Dy
> +CONFIG_USB_HAVE_GADGET_DRIVER=3Dy
> +CONFIG_MCI=3Dy
> +CONFIG_MCI_STARTUP=3Dy
> +CONFIG_MCI_INFO=3Dy
> +CONFIG_MCI_WRITE=3Dy
> +CONFIG_MCI_MMC_BOOT_PARTITIONS=3Dy
> +CONFIG_MCI_IMX_ESDHC=3Dy
> +CONFIG_HAVE_CLK=3Dy
> +CONFIG_CLKDEV_LOOKUP=3Dy
> +CONFIG_COMMON_CLK=3Dy
> +CONFIG_SRAM=3Dy
> +CONFIG_WATCHDOG_IMX_RESET_SOURCE=3Dy
> +CONFIG_MXS_APBH_DMA=3Dy
> +CONFIG_GPIOLIB=3Dy
> +CONFIG_GPIO_IMX=3Dy
> +CONFIG_PINCTRL=3Dy
> +CONFIG_PINCTRL_IMX_IOMUX_V3=3Dy
> +CONFIG_REGULATOR=3Dy
> +CONFIG_REGULATOR_FIXED=3Dy
> +CONFIG_FS=3Dy
> +CONFIG_FS_AUTOMOUNT=3Dy
> +CONFIG_FS_CRAMFS=3Dy
> +CONFIG_FS_EXT4=3Dy
> +CONFIG_FS_RAMFS=3Dy
> +CONFIG_FS_DEVFS=3Dy
> +CONFIG_FS_TFTP=3Dy
> +CONFIG_FS_NFS=3Dy
> +CONFIG_FS_FAT=3Dy
> +CONFIG_FS_FAT_WRITE=3Dy
> +CONFIG_FS_FAT_LFN=3Dy
> +CONFIG_FS_UIMAGEFS=3Dy
> +CONFIG_PARAMETER=3Dy
> +CONFIG_UNCOMPRESS=3Dy
> +CONFIG_ZLIB=3Dy
> +CONFIG_PROCESS_ESCAPE_SEQUENCE=3Dy
> +CONFIG_LZO_DECOMPRESS=3Dy
> +CONFIG_QSORT=3Dy
> +CONFIG_XYMODEM=3Dy
> +CONFIG_STMP_DEVICE=3Dy
> +CONFIG_CRC32=3Dy
> +CONFIG_CRC16=3Dy
> +CONFIG_DIGEST=3Dy
> +CONFIG_MD5=3Dy
> +CONFIG_SHA1=3Dy
> +CONFIG_SHA224=3Dy
> +CONFIG_SHA256=3Dy
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 72ad5e6..18e4519 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -31,7 +31,8 @@ dtb-$(CONFIG_ARCH_IMX6) +=3D imx6q-gk802.dtb \
>  	imx6q-udoo.dtb \
>  	imx6q-var-custom.dtb \
>  	imx6s-riotboard.dtb \
> -	imx6q-phytec-pbaa03.dtb
> +	imx6q-phytec-pbaa03.dtb \
> +	imx6q-embedsky-e9.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3188-radxarock.dtb
>  dtb-$(CONFIG_ARCH_SOCFPGA) +=3D socfpga_cyclone5_sockit.dtb \
>  	socfpga_cyclone5_socrates.dtb
> @@ -47,6 +48,7 @@ obj-$(CONFIG_BUILTIN_DTB) +=3D $(BUILTIN_DTB).dtb.o
>  pbl-$(CONFIG_MACH_BEAGLEBONE) +=3D am335x-bone.dtb.o am335x-boneblack.dt=
b.o am335x-bone-common.dtb.o
>  pbl-$(CONFIG_MACH_DFI_FS700_M60) +=3D imx6q-dfi-fs700-m60-6q.dtb.o imx6d=
l-dfi-fs700-m60-6s.dtb.o
>  pbl-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) +=3D imx51-genesi-efika-sb.dtb.o
> +pbl-$(CONFIG_MACH_EMBEDSKY_E9) +=3D imx6q-embedsky-e9.dtb.o
>  pbl-$(CONFIG_MACH_EMBEST_RIOTBOARD) +=3D imx6s-riotboard.dtb.o
>  pbl-$(CONFIG_MACH_FREESCALE_MX51_PDK) +=3D imx51-babbage.dtb.o
>  pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) +=3D imx53-qsb.dtb.o imx53-qsrb.d=
tb.o
> diff --git a/arch/arm/dts/imx6q-embedsky-e9.dts b/arch/arm/dts/imx6q-embe=
dsky-e9.dts
> new file mode 100644
> index 0000000..14f6d5f
> --- /dev/null
> +++ b/arch/arm/dts/imx6q-embedsky-e9.dts
> @@ -0,0 +1,42 @@
> +/*
> + * Copyright 2012 Freescale Semiconductor, Inc.
> + * Copyright 2011 Linaro Ltd.
> + *
> + * The code contained herein is licensed under the GNU General Public
> + * License. You may obtain a copy of the GNU General Public License
> + * Version 2 or later at the following locations:
> + *
> + * http://www.opensource.org/licenses/gpl-license.html
> + * http://www.gnu.org/copyleft/gpl.html
> + */
> +
> +/dts-v1/;
> +
> +#include "imx6q.dtsi"
> +#include <arm/imx6q-embedsky-e9.dtsi>
> +
> +/ {
> +	chosen {
> +		linux,stdout-path =3D &uart4;
> +
> +		environment@0 {
> +			compatible =3D "barebox,environment";
> +			device-path =3D &usdhc2, "partname:barebox-environment";
> +		};
> +
> +	};
> +};
> +
> +&usdhc2 {
> +	#address-cells =3D <1>;
> +	#size-cells =3D <1>;
> +
> +	partition@0 {
> +		label =3D "barebox";
> +		reg =3D <0x0 0x80000>;
> +	};
> +	partition@1 {
> +		label =3D "barebox-environment";
> +		reg =3D <0x80000 0x80000>;
> +	};
> +};
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 2d99f3e..53a44a0 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -208,6 +208,12 @@ config MACH_EFIKA_MX_SMARTBOOK
>  	help
>  	  Choose this to compile barebox for the Efika MX Smartbook
>  =

> +config MACH_EMBEDSKY_E9
> +	bool "Embedsky E9 Mini-PC"
> +	select ARCH_IMX6
> +	help
> +	  Choose this to compile barebox for the Embedsky E9 Mini PC
> +
>  config MACH_FREESCALE_MX51_PDK
>  	bool "Freescale i.MX51 PDK"
>  	select ARCH_IMX51
> diff --git a/dts/src/arm/imx6q-embedsky-e9.dtsi b/dts/src/arm/imx6q-embed=
sky-e9.dtsi
> new file mode 100644
> index 0000000..1f3fddc
> --- /dev/null
> +++ b/dts/src/arm/imx6q-embedsky-e9.dtsi
> @@ -0,0 +1,415 @@
> +/*
> + * Copyright 2012 Freescale Semiconductor, Inc.
> + * Copyright 2011 Linaro Ltd.
> + *
> + * The code contained herein is licensed under the GNU General Public
> + * License. You may obtain a copy of the GNU General Public License
> + * Version 2 or later at the following locations:
> + *
> + * http://www.opensource.org/licenses/gpl-license.html
> + * http://www.gnu.org/copyleft/gpl.html
> + */
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	model =3D "Embedsky E9";
> +	compatible =3D "embedsky,e9", "fsl,imx6q";
> +
> +	memory {
> +		reg =3D <0x10000000 0x80000000>;
> +	};
> +
> +	regulators {
> +		compatible =3D "simple-bus";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		reg_2p5v: regulator@0 {
> +			compatible =3D "regulator-fixed";
> +			reg =3D <0>;
> +			regulator-name =3D "2P5V";
> +			regulator-min-microvolt =3D <2500000>;
> +			regulator-max-microvolt =3D <2500000>;
> +			regulator-always-on;
> +		};
> +
> +		reg_3p3v: regulator@1 {
> +			compatible =3D "regulator-fixed";
> +			reg =3D <1>;
> +			regulator-name =3D "3P3V";
> +			regulator-min-microvolt =3D <3300000>;
> +			regulator-max-microvolt =3D <3300000>;
> +			regulator-always-on;
> +		};
> +
> +		reg_usb_otg_vbus: regulator@2 {
> +			compatible =3D "regulator-fixed";
> +			reg =3D <2>;
> +			regulator-name =3D "usb_otg_vbus";
> +			regulator-min-microvolt =3D <5000000>;
> +			regulator-max-microvolt =3D <5000000>;
> +			gpio =3D <&gpio3 22 0>;
> +			enable-active-high;
> +		};
> +
> +		reg_usb_h1_vbus: regulator@3 {
> +			compatible =3D "regulator-fixed";
> +			reg =3D <3>;
> +			regulator-name =3D "usb_h1_vbus";
> +			regulator-min-microvolt =3D <5000000>;
> +			regulator-max-microvolt =3D <5000000>;
> +			gpio =3D <&gpio1 29 0>;
> +			enable-active-high;
> +		};
> +
> +	};
> +
> +	gpio-keys {
> +		compatible =3D "gpio-keys";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_gpio_keys>;
> +/*
> +		power {
> +			label =3D "Power Button";
> +			gpios =3D <&gpio3 29 GPIO_ACTIVE_LOW>;
> +			gpio-key,wakeup;
> +			linux,code =3D <KEY_POWER>;
> +		};
> +*/
> +		volume-up {
> +			label =3D "Volume Up";
> +			gpios =3D <&gpio1 4 GPIO_ACTIVE_LOW>;
> +			gpio-key,wakeup;
> +			linux,code =3D <KEY_VOLUMEUP>;
> +		};
> +
> +		volume-down {
> +			label =3D "Volume Down";
> +			gpios =3D <&gpio1 5 GPIO_ACTIVE_LOW>;
> +			gpio-key,wakeup;
> +			linux,code =3D <KEY_VOLUMEDOWN>;
> +		};
> +	};
> +
> +};
> +
> +&audmux {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_audmux>;
> +	status =3D "okay";
> +};
> +
> +&ecspi1 {
> +	fsl,spi-num-chipselects =3D <1>;
> +	cs-gpios =3D <&gpio4 9 0>;
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_ecspi1>;
> +	status =3D "okay";
> +};
> +
> +&fec {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_enet>;
> +	phy-mode =3D "rgmii";
> +//	local-mac-address =3D [00 04 9F 01 1B B8];
> +	phy-supply=3D<&reg_3p3v>;
> +	status =3D "okay";
> +};
> +
> +&i2c1 {
> +	clock-frequency =3D <100000>;
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_i2c1>;
> +	status =3D "okay";
> +
> +};
> +
> +&i2c2 {
> +	clock-frequency =3D <100000>;
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_i2c2>;
> +	status =3D "okay";
> +};
> +
> +&i2c3 {
> +	clock-frequency =3D <100000>;
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_i2c3>;
> +	status =3D "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_hog>;
> +
> +	imx6qdl-embedsky-e9 {
> +
> +		pinctrl_hog: hoggrp {
> +			fsl,pins =3D <
> +				/* Power-on pin */
> +				MX6QDL_PAD_EIM_BCLK__GPIO6_IO31		0x80000000
> +
> +				MX6QDL_PAD_NANDF_D0__GPIO2_IO00		0x80000000
> +				MX6QDL_PAD_NANDF_D1__GPIO2_IO01		0x80000000
> +				MX6QDL_PAD_NANDF_D2__GPIO2_IO02		0x80000000
> +				MX6QDL_PAD_NANDF_D3__GPIO2_IO03		0x80000000
> +
> +				MX6QDL_PAD_GPIO_0__CCM_CLKO1		0x130b0
> +				MX6QDL_PAD_NANDF_CLE__GPIO6_IO07	0x80000000
> +				MX6QDL_PAD_ENET_TXD1__GPIO1_IO29	0x80000000
> +				MX6QDL_PAD_EIM_D22__GPIO3_IO22 		0x80000000
> +
> +			>;
> +		};
> +
> +		pinctrl_audmux: audmuxgrp {
> +			fsl,pins =3D <
> +				MX6QDL_PAD_CSI0_DAT7__AUD3_RXD		0x130b0
> +				MX6QDL_PAD_CSI0_DAT4__AUD3_TXC		0x130b0
> +				MX6QDL_PAD_CSI0_DAT5__AUD3_TXD		0x110b0
> +				MX6QDL_PAD_CSI0_DAT6__AUD3_TXFS		0x130b0
> +			>;
> +		};
> +
> +		pinctrl_ecspi1: ecspi1grp {
> +			fsl,pins =3D <
> +				MX6QDL_PAD_KEY_COL1__ECSPI1_MISO	0x100b1
> +				MX6QDL_PAD_KEY_ROW0__ECSPI1_MOSI	0x100b1
> +				MX6QDL_PAD_KEY_COL0__ECSPI1_SCLK	0x100b1
> +			>;
> +		};
> +
> +		pinctrl_enet: enetgrp {
> +			fsl,pins =3D <
> +				MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
> +				MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
> +				MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b0b0
> +				MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b0b0
> +				MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b0b0
> +				MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b0b0
> +				MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b0b0
> +				MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b0b0
> +				MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
> +				MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b0b0
> +				MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b0b0
> +				MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b0b0
> +				MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b0b0
> +				MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b0b0
> +				MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b0b0
> +				MX6QDL_PAD_ENET_CRS_DV__GPIO1_IO25	0x4001b0a8
> +				MX6QDL_PAD_GPIO_16__ENET_REF_CLK	0x4001b0a8
> +				MX6QDL_PAD_ENET_RXD1__GPIO1_IO26	0x4001b0a8
> +			>;
> +		};
> +
> +		pinctrl_gpio_keys: gpio_keysgrp {
> +			fsl,pins =3D <
> +//				MX6QDL_PAD_EIM_D29__GPIO3_IO29		0x80000000
> +				MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x80000000
> +				MX6QDL_PAD_GPIO_5__GPIO1_IO05		0x80000000
> +			>;
> +		};
> +
> +		pinctrl_i2c1: i2c1grp {
> +			fsl,pins =3D <
> +				MX6QDL_PAD_CSI0_DAT8__I2C1_SDA		0x4001b8b1
> +				MX6QDL_PAD_CSI0_DAT9__I2C1_SCL		0x4001b8b1
> +			>;
> +		};
> +
> +		pinctrl_i2c2: i2c2grp {
> +			fsl,pins =3D <
> +				MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b8b1
> +				MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b8b1
> +			>;
> +		};
> +
> +		pinctrl_i2c3: i2c3grp {
> +			fsl,pins =3D <
> +				MX6QDL_PAD_GPIO_3__I2C3_SCL		0x4001b8b1
> +				MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b8b1
> +			>;
> +		};
> +
> +		pinctrl_uart1: uart1grp {
> +			fsl,pins =3D <
> +				MX6QDL_PAD_SD3_DAT7__UART1_TX_DATA	0x1b0b1
> +				MX6QDL_PAD_SD3_DAT6__UART1_RX_DATA	0x1b0b1
> +			>;
> +		};
> +
> +		pinctrl_uart2: uart2grp {
> +			fsl,pins =3D <
> +				MX6QDL_PAD_EIM_D26__UART2_RX_DATA	0x1b0b1
> +				MX6QDL_PAD_EIM_D27__UART2_TX_DATA	0x1b0b1
> +				MX6QDL_PAD_EIM_D28__UART2_DTE_CTS_B	0x1b0b1
> +				MX6QDL_PAD_EIM_D29__UART2_DTE_RTS_B	0x1b0b1
> +			>;
> +		};
> +
> +		pinctrl_uart3: uart3grp {
> +			fsl,pins =3D <
> +				MX6QDL_PAD_EIM_D24__UART3_TX_DATA	0x1b0b1
> +				MX6QDL_PAD_EIM_D25__UART3_RX_DATA	0x1b0b1
> +			>;
> +		};
> +
> +		pinctrl_uart4: uart4grp {
> +			fsl,pins =3D <
> +				MX6QDL_PAD_KEY_COL0__UART4_TX_DATA	0x1b0b1
> +				MX6QDL_PAD_KEY_ROW0__UART4_RX_DATA	0x1b0b1
> +			>;
> +		};
> +
> +		pinctrl_usbotg: usbotggrp {
> +			fsl,pins =3D <
> +				MX6QDL_PAD_ENET_RX_ER__USB_OTG_ID	0x17059
> +			>;
> +		};
> +
> +		pinctrl_usdhc1: usdhc1grp {
> +			fsl,pins =3D <
> +				MX6QDL_PAD_SD1_CMD__SD1_CMD		0x17059
> +				MX6QDL_PAD_SD1_CLK__SD1_CLK		0x10059
> +				MX6QDL_PAD_SD1_DAT0__SD1_DATA0		0x17059
> +				MX6QDL_PAD_SD1_DAT1__SD1_DATA1		0x17059
> +				MX6QDL_PAD_SD1_DAT2__SD1_DATA2		0x17059
> +				MX6QDL_PAD_SD1_DAT3__SD1_DATA3		0x17059
> +			>;
> +		};
> +
> +		pinctrl_usdhc2: usdhc2grp {
> +			fsl,pins =3D <
> +				MX6QDL_PAD_SD2_CMD__SD2_CMD		0x17059
> +				MX6QDL_PAD_SD2_CLK__SD2_CLK		0x10059
> +				MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x17059
> +				MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x17059
> +				MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x17059
> +				MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x17059
> +				MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x1f071
> +			>;
> +		};
> +
> +		pinctrl_usdhc3: usdhc3grp {
> +			fsl,pins =3D <
> +				MX6QDL_PAD_SD3_CMD__SD3_CMD		0x17059
> +				MX6QDL_PAD_SD3_CLK__SD3_CLK		0x10059
> +				MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x17059
> +				MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17059
> +				MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17059
> +				MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17059
> +			>;
> +		};
> +
> +		pinctrl_usdhc4: usdhc4grp {
> +			fsl,pins =3D <
> +				MX6QDL_PAD_SD4_CMD__SD4_CMD		0x17059
> +				MX6QDL_PAD_SD4_CLK__SD4_CLK		0x10059
> +				MX6QDL_PAD_SD4_DAT0__SD4_DATA0		0x17059
> +				MX6QDL_PAD_SD4_DAT1__SD4_DATA1		0x17059
> +				MX6QDL_PAD_SD4_DAT2__SD4_DATA2		0x17059
> +				MX6QDL_PAD_SD4_DAT3__SD4_DATA3		0x17059
> +				MX6QDL_PAD_SD4_DAT4__SD4_DATA4		0x17059
> +				MX6QDL_PAD_SD4_DAT5__SD4_DATA5		0x17059
> +				MX6QDL_PAD_SD4_DAT6__SD4_DATA6		0x17059
> +				MX6QDL_PAD_SD4_DAT7__SD4_DATA7		0x17059
> +			>;
> +		};
> +	};
> +};
> +
> +&ldb {
> +	status =3D "okay";
> +};
> +
> +&uart1 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart1>;
> +	status =3D "okay";
> +};
> +
> +&uart2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart2>;
> +	status =3D "okay";
> +};
> +
> +&uart3 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart3>;
> +	status =3D "okay";
> +};
> +
> +&uart4 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart4>;
> +	status =3D "okay";
> +};
> +
> +&usbh1 {
> +	vbus-supply =3D <&reg_usb_h1_vbus>;
> +	status =3D "okay";
> +};
> +
> +&usbotg {
> +	vbus-supply =3D <&reg_usb_otg_vbus>;
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_usbotg>;
> +	disable-over-current;
> +	status =3D "okay";
> +};
> +
> +&usdhc1 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_usdhc1>;
> +//	cd-gpios =3D <&gpio7 0 0>;
> +//	wp-gpios =3D <&gpio7 1 0>;
> +	vmmc-supply =3D <&reg_3p3v>;
> +	status =3D "okay";
> +};
> +
> +&usdhc2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_usdhc2>;
> +	cd-gpios =3D <&gpio1 4 0>;
> +	vmmc-supply =3D <&reg_3p3v>;
> +	status =3D "okay";
> +};
> +
> +&usdhc4 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_usdhc4>;
> +	vmmc-supply =3D <&reg_3p3v>;
> +	non-removable;
> +	status =3D "okay";
> +};
> +
> +&ldb {
> +	status =3D "okay";
> +};
> +
> +&hdmi {
> +	status =3D "okay";
> +};
> +
> +&pcie {
> +	status =3D "okay";
> +};
> +
> +&can1 {
> +	status =3D "okay";
> +};
> +
> +&sata {
> +	status =3D "okay";
> +};
> +
> +&usdhc3 {
> +	status =3D "disabled";
> +};
> +
> +&ecspi1 {
> +	status =3D "disabled";
> +};
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index 1d0edd2..dd10c39 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -175,6 +175,11 @@ CFG_start_variscite_custom.pblx.imximg =3D $(board)/=
variscite-mx6/flash-header-var
>  FILE_barebox-variscite-custom.img =3D start_variscite_custom.pblx.imximg
>  image-$(CONFIG_MACH_VARISCITE_MX6) +=3D barebox-variscite-custom.img
>  =

> +pblx-$(CONFIG_MACH_EMBEDSKY_E9) +=3D start_imx6q_embedsky_e9
> +CFG_start_imx6q_embedsky_e9.pblx.imximg =3D $(board)/embedsky-e9/flash-h=
eader-e9.imxcfg
> +FILE_barebox-freescale-imx6q-embedsky-e9.img =3D start_imx6q_embedsky_e9=
.pblx.imximg
> +image-$(CONFIG_MACH_EMBEDSKY_E9) +=3D barebox-freescale-imx6q-embedsky-e=
9.img
> +
>  pblx-$(CONFIG_MACH_EMBEST_RIOTBOARD) +=3D start_imx6s_riotboard
>  CFG_start_imx6s_riotboard.pblx.imximg =3D $(board)/embest-riotboard/flas=
h-header-embest-riotboard.imxcfg
>  FILE_barebox-embest-imx6s-riotboard.img =3D start_imx6s_riotboard.pblx.i=
mximg
> -- =

> 2.0.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
