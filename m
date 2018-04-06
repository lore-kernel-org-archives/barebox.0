Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x241.google.com ([2607:f8b0:4001:c06::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f4Xbs-0001Yp-9c
 for barebox@lists.infradead.org; Fri, 06 Apr 2018 20:05:22 +0000
Received: by mail-io0-x241.google.com with SMTP id o4so3045646iod.3
 for <barebox@lists.infradead.org>; Fri, 06 Apr 2018 13:05:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1522934149.24545.3.camel@googlemail.com>
References: <1522934149.24545.3.camel@googlemail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 6 Apr 2018 13:05:06 -0700
Message-ID: <CAHQ1cqFnNum_jgC_R-TxB3Y0+SU-68eny3Zq=YkSCmz9a=jFSw@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: Add Advantech imx6 board support
To: chf.fritz@googlemail.com
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Apr 5, 2018 at 6:15 AM, Christoph Fritz
<chf.fritz@googlemail.com> wrote:
> Add support for Advantech i.MX6 SOM named ROM-7421.
>

I don't have any serious comments about this, just a bunch of nits below.

> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> ---
>  arch/arm/boards/Makefile                           |   1 +
>  arch/arm/boards/advantech-mx6/Makefile             |   2 +
>  arch/arm/boards/advantech-mx6/board.c              |  93 +++++++++
>  .../flash-header-advantech-rom-7421.imxcfg         |  73 +++++++
>  arch/arm/boards/advantech-mx6/lowlevel.c           |  58 ++++++
>  arch/arm/configs/imx_v7_defconfig                  |   1 +
>  arch/arm/dts/Makefile                              |   1 +
>  arch/arm/dts/imx6dl-advantech-rom-7421.dts         | 227 +++++++++++++++++++++
>  arch/arm/mach-imx/Kconfig                          |   6 +
>  images/Makefile.imx                                |   5 +
>  10 files changed, 467 insertions(+)
>  create mode 100644 arch/arm/boards/advantech-mx6/Makefile
>  create mode 100644 arch/arm/boards/advantech-mx6/board.c
>  create mode 100644 arch/arm/boards/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
>  create mode 100644 arch/arm/boards/advantech-mx6/lowlevel.c
>  create mode 100755 arch/arm/dts/imx6dl-advantech-rom-7421.dts
>
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index ca187cc..521f37d 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -1,4 +1,5 @@
>  # keep sorted by CONFIG_* macro name.
> +obj-$(CONFIG_MACH_ADVANTECH_ROM_742X)          += advantech-mx6/
>  obj-$(CONFIG_MACH_AFI_GF)                      += afi-gf/
>  obj-$(CONFIG_MACH_ANIMEO_IP)                   += animeo_ip/
>  obj-$(CONFIG_MACH_ARCHOSG9)                    += archosg9/
> diff --git a/arch/arm/boards/advantech-mx6/Makefile b/arch/arm/boards/advantech-mx6/Makefile
> new file mode 100644
> index 0000000..01c7a25
> --- /dev/null
> +++ b/arch/arm/boards/advantech-mx6/Makefile
> @@ -0,0 +1,2 @@
> +obj-y += board.o
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/advantech-mx6/board.c b/arch/arm/boards/advantech-mx6/board.c
> new file mode 100644
> index 0000000..8686a5e
> --- /dev/null
> +++ b/arch/arm/boards/advantech-mx6/board.c
> @@ -0,0 +1,93 @@
> +/*
> + * Copyright (C) 2018 Christoph Fritz <chf.fritz@googlemail.com>
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
> +
> +#include <common.h>
> +#include <init.h>
> +#include <platform_data/eth-fec.h>
> +#include <bootsource.h>
> +#include <mach/bbu.h>
> +
> +static int ar8035_phy_fixup(struct phy_device *dev)
> +{
> +       u16 val;
> +
> +       /* Ar803x phy SmartEEE feature cause link status generates glitch,
> +        * which cause ethernet link down/up issue, so disable SmartEEE
> +        */
> +       phy_write(dev, 0xd, 0x3);
> +       phy_write(dev, 0xe, 0x805d);
> +       phy_write(dev, 0xd, 0x4003);
> +
> +       val = phy_read(dev, 0xe);
> +       phy_write(dev, 0xe, val & ~(1 << 8));
> +

BIT(8)?

> +       /* To enable AR8031 ouput a 125MHz clk from CLK_25M */
> +       phy_write(dev, 0xd, 0x7);
> +       phy_write(dev, 0xe, 0x8016);
> +       phy_write(dev, 0xd, 0x4007);
> +
> +       val = phy_read(dev, 0xe);
> +       val &= 0xffe3;
> +       val |= 0x18;
> +       phy_write(dev, 0xe, val);
> +
> +       /* introduce tx clock delay */
> +       phy_write(dev, 0x1d, 0x5);
> +       val = phy_read(dev, 0x1e);
> +       val |= 0x0100;
> +       phy_write(dev, 0x1e, val);
> +
> +       return 0;
> +}
> +
> +static int advantech_mx6_devices_init(void)
> +{
> +       int ret;
> +       char *environment_path, *envdev;
> +
> +       if (!of_machine_is_compatible("advantech,imx6dl-rom-7421"))
> +               return 0;
> +
> +       phy_register_fixup_for_uid(0x004dd072, 0xffffffef, ar8035_phy_fixup);
> +
> +       switch (bootsource_get()) {
> +       case BOOTSOURCE_MMC:
> +               environment_path = basprintf("/chosen/environment-sd%d",
> +                                            bootsource_get_instance() + 1);
> +               envdev = "MMC";
> +               break;
> +       case BOOTSOURCE_SPI:
> +       default:
> +               environment_path = basprintf("/chosen/environment-sd4");
> +               envdev = "MMC";
> +               break;
> +       }
> +
> +       if (environment_path) {
> +               ret = of_device_enable_path(environment_path);
> +               if (ret < 0)
> +                       pr_warn("Failed to enable env partition '%s' (%d)\n",
> +                               environment_path, ret);
> +               free(environment_path);
> +       }
> +
> +       pr_notice("Using environment in %s\n", envdev);
> +
> +       imx6_bbu_internal_mmc_register_handler("mmc3", "/dev/mmc3",
> +                                               BBU_HANDLER_FLAG_DEFAULT);
> +
> +       return 0;
> +}
> +device_initcall(advantech_mx6_devices_init);
> diff --git a/arch/arm/boards/advantech-mx6/flash-header-advantech-rom-7421.imxcfg b/arch/arm/boards/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
> new file mode 100644
> index 0000000..611e06b
> --- /dev/null
> +++ b/arch/arm/boards/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
> @@ -0,0 +1,73 @@
> +soc imx6
> +loadaddr 0x10000000
> +dcdofs 0x400
> +
> +wm 32 0x020e0774 0x000C0000
> +wm 32 0x020e0754 0x00000000
> +wm 32 0x020e04ac 0x00000030
> +wm 32 0x020e04b0 0x00000030
> +wm 32 0x020e0464 0x00000030
> +wm 32 0x020e0490 0x00000030
> +wm 32 0x020e074c 0x00000030
> +wm 32 0x020e0494 0x00000030
> +wm 32 0x020e04a0 0x00000000
> +wm 32 0x020e04b4 0x00000030
> +wm 32 0x020e04b8 0x00000030
> +wm 32 0x020e076c 0x00000030
> +wm 32 0x020e0750 0x00020000
> +wm 32 0x020e04bc 0x00000030
> +wm 32 0x020e04c0 0x00000030
> +wm 32 0x020e04c4 0x00000030
> +wm 32 0x020e04c8 0x00000030
> +wm 32 0x020e0760 0x00020000
> +wm 32 0x020e0764 0x00000030
> +wm 32 0x020e0770 0x00000030
> +wm 32 0x020e0778 0x00000030
> +wm 32 0x020e077c 0x00000030
> +wm 32 0x020e0470 0x00000030
> +wm 32 0x020e0474 0x00000030
> +wm 32 0x020e0478 0x00000030
> +wm 32 0x020e047c 0x00000030
> +wm 32 0x021b0800 0xa1390003
> +wm 32 0x021b080c 0x001F001F
> +wm 32 0x021b0810 0x001F001F
> +wm 32 0x021b083c 0x42480248
> +wm 32 0x021b0840 0x022C0234
> +wm 32 0x021b0848 0x3E404244
> +wm 32 0x021b0850 0x30302C30
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b08b8 0x00000800
> +wm 32 0x021b0004 0x0002002D
> +wm 32 0x021b0008 0x00333030
> +wm 32 0x021b000c 0x3F435333
> +wm 32 0x021b0010 0xB68E8B63
> +wm 32 0x021b0014 0x01FF00DB
> +wm 32 0x021b0018 0x00001740
> +wm 32 0x021b001c 0x00008000
> +wm 32 0x021b002c 0x000026d2
> +wm 32 0x021b0030 0x00431023
> +wm 32 0x021b0040 0x00000017
> +wm 32 0x021b0000 0x83190000
> +wm 32 0x021b001c 0x04008032
> +wm 32 0x021b001c 0x00008033
> +wm 32 0x021b001c 0x00048031
> +wm 32 0x021b001c 0x05208030
> +wm 32 0x021b001c 0x04008040
> +wm 32 0x021b0020 0x00005800
> +wm 32 0x021b0818 0x00011117
> +wm 32 0x021b0004 0x0002556D
> +wm 32 0x021b0404 0x00011006
> +wm 32 0x021b001c 0x00000000
> +wm 32 0x020c4068 0x00C03F3F
> +wm 32 0x020c406c 0x0030FC03
> +wm 32 0x020c4070 0x0FFFC000
> +wm 32 0x020c4074 0x3FF00000
> +wm 32 0x020c4078 0x00FFF300
> +wm 32 0x020c407c 0x0F0000C3
> +wm 32 0x020c4080 0x000003FF
> +wm 32 0x020e0010 0xF00000CF
> +wm 32 0x020e0018 0x007F007F
> +wm 32 0x020e001c 0x007F007F
> diff --git a/arch/arm/boards/advantech-mx6/lowlevel.c b/arch/arm/boards/advantech-mx6/lowlevel.c
> new file mode 100644
> index 0000000..5efb91a
> --- /dev/null
> +++ b/arch/arm/boards/advantech-mx6/lowlevel.c
> @@ -0,0 +1,58 @@
> +/*
> + * Copyright (C) 2018 Christoph Fritz <chf.fritz@googlemail.com>
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
> +
> +#include <debug_ll.h>
> +#include <common.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <image-metadata.h>
> +#include <mach/generic.h>
> +#include <mach/esdctl.h>
> +#include <linux/sizes.h>
> +
> +static inline void setup_uart(void)
> +{
> +       void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
> +
> +       writel(0x3, iomuxbase + 0x4c);

You could use imx_setup_pad(iomuxbase,
MX6QDL_PAD_CSI0_DAT10__UART1_TX_DATA) instead here (I might have
gotten the pad constant that you need wrong).

> +
> +       imx6_ungate_all_peripherals();
> +       imx6_uart_setup_ll();
> +
> +       putc_ll('>');
> +}
> +
> +extern char __dtb_imx6dl_advantech_rom_7421_start[];
> +
> +BAREBOX_IMD_TAG_STRING(advantech_imx6dl_memsize_512M, IMD_TYPE_PARAMETER,
> +                      "memsize=512", 0);
> +
> +ENTRY_FUNCTION(start_advantech_imx6dl_rom_7421, r0, r1, r2)
> +{
> +       void *fdt;
> +
> +       imx6_cpu_lowlevel_init();
> +
> +       arm_setup_stack(0x00920000 - 8);
> +

Is this stack setup really needed? It'll be overridden as part of
barebox_arm_entry() a few lines below and the rest of the code doesn't
seem complicated enough to not warrant initializing the stack here.

> +       IMD_USED(advantech_imx6dl_memsize_512M);
> +
> +       if (IS_ENABLED(CONFIG_DEBUG_LL))
> +               setup_uart();
> +
> +       fdt = __dtb_imx6dl_advantech_rom_7421_start - get_runtime_offset();
> +
> +       barebox_arm_entry(0x10000000, SZ_512M, fdt);

imx6q_barebox_entry(fdt) instead?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
