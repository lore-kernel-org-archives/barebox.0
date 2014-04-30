Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WfQlM-0005y9-55
 for barebox@lists.infradead.org; Wed, 30 Apr 2014 09:25:14 +0000
Received: by mail-lb0-f169.google.com with SMTP id s7so118670lbd.28
 for <barebox@lists.infradead.org>; Wed, 30 Apr 2014 02:24:49 -0700 (PDT)
Date: Wed, 30 Apr 2014 13:35:23 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140430133523.167039f6fd81aef1fb0bb4f4@gmail.com>
In-Reply-To: <1398848852-29093-1-git-send-email-c.hemp@phytec.de>
References: <1398848852-29093-1-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH v2] imx6: Add support for phyCARD-i.MX6
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, 30 Apr 2014 11:07:32 +0200
Christian Hemp <c.hemp@phytec.de> wrote:

> Add support for Phytec phyCARD-i.MX6.
> 	- 1GB RAM on two banks
> 	- 1GB RAM on one bank
> 	- 2GB RAM on two banks
> =

> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> ---
> v2: - remove IP addresses from env
>    - remove boot/net
>    - add ethernet pinmux to pcaaxl3
>    - add common function to lowlevel.c
> =

>  arch/arm/boards/Makefile                           |    1 +
>  arch/arm/boards/phytec-phycard-imx6/Makefile       |    2 +
>  arch/arm/boards/phytec-phycard-imx6/board.c        |   60 ++++++++
>  arch/arm/boards/phytec-phycard-imx6/env/boot/nand  |   12 ++
>  .../boards/phytec-phycard-imx6/env/boot/sd-ext3    |   11 ++
>  .../boards/phytec-phycard-imx6/env/config-board    |    7 +
>  .../flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg  |    7 +
>  .../flash-header-phytec-pcaaxl3-1gib.imxcfg        |    7 +
>  .../flash-header-phytec-pcaaxl3-2gib.imxcfg        |    8 +
>  .../flash-header-phytec-pcaaxl3.h                  |   97 +++++++++++++
>  arch/arm/boards/phytec-phycard-imx6/lowlevel.c     |   87 ++++++++++++
>  arch/arm/configs/imx_v7_defconfig                  |    1 +
>  arch/arm/dts/Makefile                              |    4 +-
>  arch/arm/dts/imx6q-phytec-pbaa03.dts               |   34 +++++
>  arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi             |  147 ++++++++++++++=
++++++
>  arch/arm/mach-imx/Kconfig                          |    5 +
>  images/Makefile.imx                                |   16 ++
>  17 files changed, 505 insertions(+), 1 deletions(-)
>  create mode 100644 arch/arm/boards/phytec-phycard-imx6/Makefile
>  create mode 100644 arch/arm/boards/phytec-phycard-imx6/board.c
>  create mode 100644 arch/arm/boards/phytec-phycard-imx6/env/boot/nand
>  create mode 100644 arch/arm/boards/phytec-phycard-imx6/env/boot/sd-ext3
>  create mode 100644 arch/arm/boards/phytec-phycard-imx6/env/config-board
>  create mode 100644 arch/arm/boards/phytec-phycard-imx6/flash-header-phyt=
ec-pcaaxl3-1gib-1bank.imxcfg
>  create mode 100644 arch/arm/boards/phytec-phycard-imx6/flash-header-phyt=
ec-pcaaxl3-1gib.imxcfg
>  create mode 100644 arch/arm/boards/phytec-phycard-imx6/flash-header-phyt=
ec-pcaaxl3-2gib.imxcfg
>  create mode 100644 arch/arm/boards/phytec-phycard-imx6/flash-header-phyt=
ec-pcaaxl3.h
>  create mode 100644 arch/arm/boards/phytec-phycard-imx6/lowlevel.c
>  create mode 100644 arch/arm/dts/imx6q-phytec-pbaa03.dts
>  create mode 100644 arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
> =

> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 0c1497f..e08ac13 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -63,6 +63,7 @@ obj-$(CONFIG_MACH_PANDA)			+=3D panda/
>  obj-$(CONFIG_MACH_PCA100)			+=3D phytec-phycard-imx27/
>  obj-$(CONFIG_MACH_PCAAL1)			+=3D phytec-phycard-omap3/
>  obj-$(CONFIG_MACH_PCAAXL2)			+=3D phytec-phycard-omap4/
> +obj-$(CONFIG_MACH_PCAAXL3)			+=3D phytec-phycard-imx6/
>  obj-$(CONFIG_MACH_PCM037)			+=3D phytec-phycore-imx31/
>  obj-$(CONFIG_MACH_PCM038)			+=3D phytec-phycore-imx27/
>  obj-$(CONFIG_MACH_PCM043)			+=3D phytec-phycore-imx35/
> diff --git a/arch/arm/boards/phytec-phycard-imx6/Makefile b/arch/arm/boar=
ds/phytec-phycard-imx6/Makefile
> new file mode 100644
> index 0000000..01c7a25
> --- /dev/null
> +++ b/arch/arm/boards/phytec-phycard-imx6/Makefile
> @@ -0,0 +1,2 @@
> +obj-y +=3D board.o
> +lwl-y +=3D lowlevel.o
> diff --git a/arch/arm/boards/phytec-phycard-imx6/board.c b/arch/arm/board=
s/phytec-phycard-imx6/board.c
> new file mode 100644
> index 0000000..6ed431a
> --- /dev/null
> +++ b/arch/arm/boards/phytec-phycard-imx6/board.c
> @@ -0,0 +1,60 @@
> +/*
> + * Copyright (C) 2014 Christian Hemp, Phytec Messtechnik GmbH
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
> + * Foundation.
> + *
> + */
> +
> +#include <environment.h>
> +#include <bootsource.h>
> +#include <common.h>
> +#include <gpio.h>
> +#include <init.h>
> +#include <of.h>
> +
> +#include <mach/bbu.h>
> +#include <mach/imx6.h>
> +
> +static int phytec_pcaaxl3_init(void)
> +{
> +	if (!of_machine_is_compatible("phytec,imx6q-pcaaxl3"))
> +		return 0;
> +
> +	switch (bootsource_get()) {
> +	case BOOTSOURCE_MMC:
> +		of_device_enable_path("/chosen/environment-sd");
> +		break;
> +	default:
> +	case BOOTSOURCE_NAND:
> +		of_device_enable_path("/chosen/environment-nand");
> +		break;
> +	}
> +
> +	imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
> +
> +	return 0;
> +}
> +device_initcall(phytec_pcaaxl3_init);
> +
> +static int phytec_pcaaxl3_core_init(void)
> +{
> +	if (!of_machine_is_compatible("phytec,imx6q-pcaaxl3"))
> +		return 0;
> +
> +	imx6_init_lowlevel();
> +
> +	return 0;
> +}
> +postcore_initcall(phytec_pcaaxl3_core_init);
> diff --git a/arch/arm/boards/phytec-phycard-imx6/env/boot/nand b/arch/arm=
/boards/phytec-phycard-imx6/env/boot/nand
> new file mode 100644
> index 0000000..a51da9e
> --- /dev/null
> +++ b/arch/arm/boards/phytec-phycard-imx6/env/boot/nand
> @@ -0,0 +1,12 @@
> +#!/bin/sh
> +
> +if [ "$1" =3D menu ]; then
> +        boot-menu-add-entry "$0" "Kernel:nand;rootfs:nand"
> +        exit
> +fi
> +
> +global.bootm.image=3D"/dev/nand0.kernel.bb"
> +#global.bootm.oftree=3D"/env/oftree"
> +bootargs-ip
> +global.linux.bootargs.dyn.root=3D"root=3Dubi0:root ubi.mtd=3Dnand0.root =
rootfstype=3Dubifs"
> +
> diff --git a/arch/arm/boards/phytec-phycard-imx6/env/boot/sd-ext3 b/arch/=
arm/boards/phytec-phycard-imx6/env/boot/sd-ext3
> new file mode 100644
> index 0000000..fa1e9d6
> --- /dev/null
> +++ b/arch/arm/boards/phytec-phycard-imx6/env/boot/sd-ext3
> @@ -0,0 +1,11 @@
> +#!/bin/sh
> +
> +if [ "$1" =3D menu ]; then
> +        boot-menu-add-entry "$0" "MMC (ext3)"
> +        exit
> +fi
> +
> +global.bootm.image=3D"/mnt/kernel/linuximage"
> +#global.bootm.oftree=3D"/boot/oftree"
> +bootargs-ip
> +global.linux.bootargs.dyn.root=3D"root=3D/dev/mmcblk0p2 rootfstype=3Dext=
3 rootwait"
> diff --git a/arch/arm/boards/phytec-phycard-imx6/env/config-board b/arch/=
arm/boards/phytec-phycard-imx6/env/config-board
> new file mode 100644
> index 0000000..44008aa
> --- /dev/null
> +++ b/arch/arm/boards/phytec-phycard-imx6/env/config-board
> @@ -0,0 +1,7 @@
> +#!/bin/sh
> +
> +# board defaults, do not change in running system. Change /env/config
> +# instead
> +
> +global.hostname=3DphyCARD-i.MX6
> +global.linux.bootargs.base=3D"console=3Dttymxc2,115200"
> diff --git a/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaa=
xl3-1gib-1bank.imxcfg b/arch/arm/boards/phytec-phycard-imx6/flash-header-ph=
ytec-pcaaxl3-1gib-1bank.imxcfg
> new file mode 100644
> index 0000000..481e085
> --- /dev/null
> +++ b/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-1gi=
b-1bank.imxcfg
> @@ -0,0 +1,7 @@
> +#define SETUP_1GIB_2GIB			\
> +	wm 32 0x021b000c 0x54597955;	\
> +	wm 32 0x021b0030 0x00591023;	\
> +	wm 32 0x021b0040 0x00000027;	\
> +	wm 32 0x021b0000 0x831a0000
> +
> +#include "flash-header-phytec-pcaaxl3.h"
> diff --git a/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaa=
xl3-1gib.imxcfg b/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-p=
caaxl3-1gib.imxcfg
> new file mode 100644
> index 0000000..b21bd89
> --- /dev/null
> +++ b/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-1gi=
b.imxcfg
> @@ -0,0 +1,7 @@
> +#define SETUP_1GIB_2GIB			\
> +	wm 32 0x021b000c 0x3a3f7975;	\
> +	wm 32 0x021b0030 0x003f1023;	\
> +	wm 32 0x021b0040 0x00000017;	\
> +	wm 32 0x021b0000 0xc21a0000
> +
> +#include "flash-header-phytec-pcaaxl3.h"
> diff --git a/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaa=
xl3-2gib.imxcfg b/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-p=
caaxl3-2gib.imxcfg
> new file mode 100644
> index 0000000..858b6d7
> --- /dev/null
> +++ b/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-2gi=
b.imxcfg
> @@ -0,0 +1,8 @@
> +
> +#define SETUP_1GIB_2GIB			\
> +	wm 32 0x021b000c 0x54597955;	\
> +	wm 32 0x021b0030 0x00591023;	\
> +	wm 32 0x021b0040 0x00000027;	\
> +	wm 32 0x021b0000 0xc31a0000
> +
> +#include "flash-header-phytec-pcaaxl3.h"
> diff --git a/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaa=
xl3.h b/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3.h
> new file mode 100644
> index 0000000..aecaf16
> --- /dev/null
> +++ b/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3.h
> @@ -0,0 +1,97 @@
> +soc imx6
> +loadaddr 0x20000000
> +dcdofs 0x400
> +
> +wm 32 0x020e05a8 0x00000028
> +wm 32 0x020e05b0 0x00000028
> +wm 32 0x020e0524 0x00000028
> +wm 32 0x020e051c 0x00000028
> +wm 32 0x020e0518 0x00000028
> +wm 32 0x020e050c 0x00000028
> +wm 32 0x020e05b8 0x00000028
> +wm 32 0x020e05c0 0x00000028
> +wm 32 0x020e05ac 0x00000028
> +wm 32 0x020e05b4 0x00000028
> +wm 32 0x020e0528 0x00000028
> +wm 32 0x020e0520 0x00000028
> +wm 32 0x020e0514 0x00000028
> +wm 32 0x020e0510 0x00000028
> +wm 32 0x020e05bc 0x00000028
> +wm 32 0x020e05c4 0x00000028
> +wm 32 0x020e056c 0x00000028
> +wm 32 0x020e0578 0x00000028
> +wm 32 0x020e0588 0x00000028
> +wm 32 0x020e0594 0x00000028
> +wm 32 0x020e057c 0x00000028
> +wm 32 0x020e0590 0x00003000
> +wm 32 0x020e0598 0x00003000
> +wm 32 0x020e058c 0x00000000
> +wm 32 0x020e059c 0x00000028
> +wm 32 0x020e05a0 0x00000028
> +wm 32 0x020e0784 0x00000028
> +wm 32 0x020e0788 0x00000028
> +wm 32 0x020e0794 0x00000028
> +wm 32 0x020e079c 0x00000028
> +wm 32 0x020e07a0 0x00000028
> +wm 32 0x020e07a4 0x00000028
> +wm 32 0x020e07a8 0x00000028
> +wm 32 0x020e0748 0x00000028
> +wm 32 0x020e074c 0x00000028
> +wm 32 0x020e0750 0x00020000
> +wm 32 0x020e0758 0x00000000
> +wm 32 0x020e0774 0x00020000
> +wm 32 0x020e078c 0x00000028
> +wm 32 0x020e0798 0x000c0000
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b481c 0x33333333
> +wm 32 0x021b4820 0x33333333
> +wm 32 0x021b4824 0x33333333
> +wm 32 0x021b4828 0x33333333
> +wm 32 0x021b0018 0x00091740
> +wm 32 0x021b001c 0x00008000
> +wm 32 0x021b0010 0xff328f64
> +wm 32 0x021b0014 0x01ff00db
> +wm 32 0x021b002c 0x000026d2
> +wm 32 0x021b0008 0x09444040
> +wm 32 0x021b0004 0x00025576
> +
> +SETUP_1GIB_2GIB
> +
> +wm 32 0x021b001c 0x04088032
> +wm 32 0x021b001c 0x0408803a
> +wm 32 0x021b001c 0x00008033
> +wm 32 0x021b001c 0x0000803b
> +wm 32 0x021b001c 0x00048031
> +wm 32 0x021b001c 0x00048039
> +wm 32 0x021b001c 0x09408030
> +wm 32 0x021b001c 0x09408038
> +wm 32 0x021b001c 0x04008040
> +wm 32 0x021b001c 0x04008048
> +wm 32 0x021b0800 0xa1390003
> +wm 32 0x021b4800 0xa1380003
> +wm 32 0x021b0020 0x00007800
> +wm 32 0x021b0818 0x00011117
> +wm 32 0x021b4818 0x00011117
> +wm 32 0x021b083c 0x4350035e
> +wm 32 0x021b0840 0x035c0358
> +wm 32 0x021b483c 0x436e0376
> +wm 32 0x021b4840 0x03770352
> +wm 32 0x021b0848 0x3c333436
> +wm 32 0x021b4848 0x35332f3b
> +wm 32 0x021b0850 0x37363e39
> +wm 32 0x021b4850 0x432f433d
> +wm 32 0x021b080c 0x0013001b
> +wm 32 0x021b0810 0x003b0034
> +wm 32 0x021b480c 0x0037004b
> +wm 32 0x021b4810 0x004b0055
> +wm 32 0x021b08b8 0x00000800
> +wm 32 0x021b48b8 0x00000800
> +wm 32 0x021b001c 0x00000000
> +wm 32 0x021b0404 0x00011006
> +wm 32 0x020e0010 0xf00000ff
> +wm 32 0x020e0018 0x007f007f
> +wm 32 0x020e001c 0x007f007f
> +wm 32 0x020c8000 0x80002021
> diff --git a/arch/arm/boards/phytec-phycard-imx6/lowlevel.c b/arch/arm/bo=
ards/phytec-phycard-imx6/lowlevel.c
> new file mode 100644
> index 0000000..14a9d84
> --- /dev/null
> +++ b/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
> @@ -0,0 +1,87 @@
> +/*
> + * Copyright (C) 2014 Christian Hemp <c.hemp@phytec.de>
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
> + */
> +#include <debug_ll.h>
> +#include <common.h>
> +#include <sizes.h>
> +#include <io.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/sections.h>
> +#include <asm/cache.h>
> +#include <asm/mmu.h>
> +#include <mach/imx6-mmdc.h>
> +#include <mach/imx6.h>
> +
> +static inline void setup_uart(void)
> +{
> +	void __iomem *ccmbase =3D (void *)MX6_CCM_BASE_ADDR;
> +	void __iomem *uartbase =3D (void *)MX6_UART3_BASE_ADDR;
> +	void __iomem *iomuxbase =3D (void *)MX6_IOMUXC_BASE_ADDR;
> +
> +	writel(0x4, iomuxbase + 0x01f8);
> +
> +	writel(0xffffffff, ccmbase + 0x68);
> +	writel(0xffffffff, ccmbase + 0x6c);
> +	writel(0xffffffff, ccmbase + 0x70);
> +	writel(0xffffffff, ccmbase + 0x74);
> +	writel(0xffffffff, ccmbase + 0x78);
> +	writel(0xffffffff, ccmbase + 0x7c);
> +	writel(0xffffffff, ccmbase + 0x80);
> +
> +	writel(0x00000000, uartbase + 0x80);
> +	writel(0x00004027, uartbase + 0x84);
> +	writel(0x00000704, uartbase + 0x88);
> +	writel(0x00000a81, uartbase + 0x90);
> +	writel(0x0000002b, uartbase + 0x9c);
> +	writel(0x00013880, uartbase + 0xb0);
> +	writel(0x0000047f, uartbase + 0xa4);
> +	writel(0x0000c34f, uartbase + 0xa8);
> +	writel(0x00000001, uartbase + 0x80);
> +
> +	putc_ll('>');
> +}
> +
> +extern char __dtb_imx6q_phytec_pbaa03_start[];
> +
> +static void __noreturn start_imx6q_phytec_pbaa03_common(uint32_t size)
> +{
> +	uint32_t fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	arm_setup_stack(0x00920000 - 8);
> +
> +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> +		setup_uart();
> +
> +	fdt =3D (uint32_t)__dtb_imx6q_phytec_pbaa03_start - get_runtime_offset(=
);
> +
> +	barebox_arm_entry(0x10000000, size, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_phytec_pbaa03_1gib, r0, r1, r2)
> +{
> +	start_imx6q_phytec_pbaa03_common(SZ_1G);
> +}
> +
> +ENTRY_FUNCTION(start_phytec_pbaa03_1gib_1bank, r0, r1, r2)
> +{
> +	start_imx6q_phytec_pbaa03_common(SZ_1G);
> +}
> +
> +ENTRY_FUNCTION(start_phytec_pbaa03_2gib, r0, r1, r2)
> +{
> +	start_imx6q_phytec_pbaa03_common(SZ_2G);
> +}
> diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_=
defconfig
> index f29c968..dbdc957 100644
> --- a/arch/arm/configs/imx_v7_defconfig
> +++ b/arch/arm/configs/imx_v7_defconfig
> @@ -5,6 +5,7 @@ CONFIG_MACH_FREESCALE_MX51_PDK=3Dy
>  CONFIG_MACH_FREESCALE_MX53_LOCO=3Dy
>  CONFIG_MACH_TQMA53=3Dy
>  CONFIG_MACH_FREESCALE_MX53_VMX53=3Dy
> +CONFIG_MACH_PCAAXL3=3Dy
>  CONFIG_MACH_PHYTEC_PFLA02=3Dy
>  CONFIG_MACH_DFI_FS700_M60=3Dy
>  CONFIG_MACH_GUF_SANTARO=3Dy
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 58dc38b..63fe854 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -27,7 +27,8 @@ dtb-$(CONFIG_ARCH_IMX6) +=3D imx6q-gk802.dtb \
>  	imx6q-nitrogen6x.dtb \
>  	imx6dl-nitrogen6x.dtb \
>  	imx6q-udoo.dtb \
> -	imx6q-var-custom.dtb
> +	imx6q-var-custom.dtb \
> +	imx6q-phytec-pbaa03.dtb
>  dtb-$(CONFIG_ARCH_MVEBU) +=3D dove-cubox-bb.dtb
>  dtb-$(CONFIG_ARCH_SOCFPGA) +=3D socfpga_cyclone5_sockit.dtb \
>  	socfpga_cyclone5_socrates.dtb
> @@ -65,6 +66,7 @@ pbl-$(CONFIG_MACH_GUF_SANTARO) +=3D imx6q-guf-santaro.d=
tb.o
>  pbl-$(CONFIG_MACH_NITROGEN6X) +=3D imx6q-nitrogen6x.dtb.o imx6dl-nitroge=
n6x.dtb.o
>  pbl-$(CONFIG_MACH_UDOO) +=3D imx6q-udoo.dtb.o
>  pbl-$(CONFIG_MACH_VARISCITE_MX6) +=3D imx6q-var-custom.dtb.o
> +pbl-$(CONFIG_MACH_PCAAXL3) +=3D imx6q-phytec-pbaa03.dtb.o
>  =

>  .SECONDARY: $(obj)/$(BUILTIN_DTB).dtb.S
>  .SECONDARY: $(patsubst %,$(obj)/%.S,$(dtb-y))
> diff --git a/arch/arm/dts/imx6q-phytec-pbaa03.dts b/arch/arm/dts/imx6q-ph=
ytec-pbaa03.dts
> new file mode 100644
> index 0000000..bcb3dd7
> --- /dev/null
> +++ b/arch/arm/dts/imx6q-phytec-pbaa03.dts
> @@ -0,0 +1,34 @@
> +/*
> + * Copyright 2014 Christian Hemp, Phytec Messtechnik GmbH
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
> +#include "imx6q-phytec-pcaaxl3.dtsi"
> +
> +/ {
> +	model =3D "Phytec phyCARD-i.MX6 Quad Carrier-Board";
> +	compatible =3D "phytec,imx6q-pbaa03", "phytec,imx6q-pcaaxl3", "fsl,imx6=
q";
> +
> +	chosen {
> +		linux,stdout-path =3D &uart3;
> +	};
> +};
> +
> +&fec {
> +	status =3D "okay";
> +};
> +
> +&uart3 {
> +	status =3D "okay";
> +};
> +
> +&usdhc3 {
> +	status =3D "okay";
> +};
> diff --git a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi b/arch/arm/dts/imx6q-=
phytec-pcaaxl3.dtsi
> new file mode 100644
> index 0000000..e497898
> --- /dev/null
> +++ b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
> @@ -0,0 +1,147 @@
> +/*
> + * Copyright 2014444 Christian Hemp, Phytec Messtechnik GmbH
> + *
> + * The code contained herein is licensed under the GNU General Public
> + * License. You may obtain a copy of the GNU General Public License
> + * Version 2 or later at the following locations:
> + *
> + * http://www.opensource.org/licenses/gpl-license.html
> + * http://www.gnu.org/copyleft/gpl.html
> + */
> +
> +#include "imx6q.dtsi"
> +
> +/ {
> +	model =3D "Phytec phyCARD-i.MX6 Quad";
> +	compatible =3D "phytec,imx6q-pcaaxl3", "fsl,imx6q";
> +
> +	chosen {
> +		environment-sd {
> +			compatible =3D "barebox,environment";
> +			device-path =3D &usdhc3, "partname:barebox-environment";
> +			status =3D "disabled";
> +		};
> +
> +		environment-nand {
> +			compatible =3D "barebox,environment";
> +			device-path =3D &gpmi, "partname:barebox-environment";
> +			status =3D "disabled";
> +		};
> +	};
> +};
> +
> +&i2c1 {
> +	status =3D "okay";
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_i2c1>;
> +
> +	eeprom: m24c32@50 {
> +		compatible =3D "st,24c32", "at24";
> +		reg =3D <0x50>;
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl-names =3D "default";
> +
> +	imx6q-phytec-pcaaxl3 {
> +		pinctrl_enet: enetgrp {
> +			fsl,pins =3D <
> +				MX6QDL_ENET_PINGRP5
> +				MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
> +				MX6QDL_PAD_KEY_COL0__ENET_RX_DATA3	0x1b0b0
> +				MX6QDL_PAD_KEY_ROW0__ENET_TX_DATA3	0x1b0b0
> +				MX6QDL_PAD_KEY_ROW1__ENET_COL		0x1b0b0
> +				MX6QDL_PAD_KEY_COL2__ENET_RX_DATA2	0x1b0b0
> +				MX6QDL_PAD_KEY_ROW2__ENET_TX_DATA2	0x1b0b0
> +				MX6QDL_PAD_KEY_COL3__ENET_CRS		0x1b0b0
> +				MX6QDL_PAD_GPIO_18__ENET_RX_CLK		0x1b0b0
> +				MX6QDL_PAD_GPIO_19__ENET_TX_ER		0x1b0b0
> +			>;
> +		};
> +
> +		pinctrl_gpmi_nand: gpmigrp {
> +			fsl,pins =3D <MX6QDL_GPMI_NAND_PINGRP1>;
> +		};
> +
> +		pinctrl_i2c1: i2c1grp {
> +			fsl,pins =3D <MX6QDL_I2C1_PINGRP1>;
> +		};
> +
> +		pinctrl_uart3: uart3grp {
> +			fsl,pins =3D <MX6QDL_UART3_PINGRP3>;
> +		};
> +
> +		pinctrl_usdhc3: usdhc3grp {
> +			fsl,pins =3D <
> +				MX6QDL_USDHC3_PINGRP_D4
> +				MX6QDL_PAD_CSI0_DAT4__GPIO5_IO22  0x80000000 /* CD */
> +			>;
> +		};
> +	};
> +};
> +
> +&fec {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_enet>;
> +	phy-mode =3D "mii";
> +	status =3D "disabled";
> +};
> +
> +&gpmi {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_gpmi_nand>;
> +	nand-on-flash-bbt;
> +	status =3D "okay";
> +	#address-cells =3D <1>;
> +	#size-cells =3D <1>;
> +
> +	partition@0 {
> +		label =3D "barebox";
> +		reg =3D <0x0 0x400000>;
> +	};
> +
> +	partition@1 {
> +		label =3D "barebox-environment";
> +		reg =3D <0x400000 0x20000>;
> +	};
> +
> +	partition@2 {
> +		label =3D "kernel";
> +		reg =3D <0x420000 0x800000>;
> +	};
> +
> +	partition@3 {
> +		label =3D "root";
> +		reg =3D <0xC20000 0x0>;
> +	};
> +};
> +
> +&ocotp {
> +	barebox,provide-mac-address =3D <&fec 0x620>;
> +};
> +
> +&uart3 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart3>;
> +	status =3D "disabled";
> +};
> +
> +&usdhc3 {
> +        pinctrl-names =3D "default";
> +        pinctrl-0 =3D <&pinctrl_usdhc3>;
> +        cd-gpios =3D <&gpio5 22 0>;
> +        status =3D "disabled";
> +
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
> index d40c944..a64cf30 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -40,6 +40,7 @@ config ARCH_TEXT_BASE
>  	default 0x4fc00000 if MACH_DFI_FS700_M60
>  	default 0x4fc00000 if MACH_UDOO
>  	default 0x4fc00000 if MACH_VARISCITE_MX6
> +	default 0x4fc00000 if MACH_PCAAXL3
>  =

>  config ARCH_IMX_INTERNAL_BOOT
>  	bool "support internal boot mode"
> @@ -208,6 +209,10 @@ config MACH_FREESCALE_MX53_VMX53
>  	  Say Y here if you are using the Voipac Technologies X53-DMM-668
>  	  module equipped with a Freescale i.MX53 Processor
>  =

> +config MACH_PCAAXL3
> +        bool "Phytec phyCARD-i.MX6 Quad"
> +        select ARCH_IMX6
> +
>  config MACH_PHYTEC_PFLA02
>  	bool "Phytec phyFLEX-i.MX6"
>  	select ARCH_IMX6
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index 06794fd..0b24a34 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -166,3 +166,19 @@ pblx-$(CONFIG_MACH_VARISCITE_MX6) +=3D start_varisci=
te_custom
>  CFG_start_variscite_custom.pblx.imximg =3D $(board)/variscite-mx6/flash-=
header-variscite.imxcfg
>  FILE_barebox-variscite-custom.img =3D start_variscite_custom.pblx.imximg
>  image-$(CONFIG_MACH_VARISCITE_MX6) +=3D barebox-variscite-custom.img
> +
> +pblx-$(CONFIG_MACH_PCAAXL3) +=3D start_phytec_pbaa03_1gib
> +CFG_start_phytec_pbaa03_1gib.pblx.imximg =3D $(board)/phytec-phycard-imx=
6/flash-header-phytec-pcaaxl3-1gib.imxcfg
> +FILE_barebox-phytec-pbaa03-1gib.img =3D start_phytec_pbaa03_1gib.pblx.im=
ximg
> +image-$(CONFIG_MACH_PCAAXL3) +=3D barebox-phytec-pbaa03-1gib.img
> +
> +pblx-$(CONFIG_MACH_PCAAXL3) +=3D start_phytec_pbaa03_1gib_1bank
> +CFG_start_phytec_pbaa03_1gib_1bank.pblx.imximg =3D $(board)/phytec-phyca=
rd-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
> +FILE_barebox-phytec-pbaa03-1gib-1bank.img =3D start_phytec_pbaa03_1gib_1=
bank.pblx.imximg
> +image-$(CONFIG_MACH_PCAAXL3) +=3D barebox-phytec-pbaa03-1gib-1bank.img
> +
> +pblx-$(CONFIG_MACH_PCAAXL3) +=3D start_phytec_pbaa03_2gib
> +CFG_start_phytec_pbaa03_2gib.pblx.imximg =3D $(board)/phytec-phycard-imx=
6/flash-header-phytec-pcaaxl3-2gib.imxcfg
> +FILE_barebox-phytec-pbaa03-2gib.img =3D start_phytec_pbaa03_2gib.pblx.im=
ximg
> +image-$(CONFIG_MACH_PCAAXL3) +=3D barebox-phytec-pbaa03-2gib.img
> +

Do you really want to add new blank line at EOF?

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
