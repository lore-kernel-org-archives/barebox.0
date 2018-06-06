Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x244.google.com ([2607:f8b0:4001:c0b::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQeMl-0004zg-LE
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 19:45:10 +0000
Received: by mail-it0-x244.google.com with SMTP id j186-v6so9605947ita.5
 for <barebox@lists.infradead.org>; Wed, 06 Jun 2018 12:44:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180606141207.29686-1-m.niestroj@grinn-global.com>
References: <20180606141207.29686-1-m.niestroj@grinn-global.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 6 Jun 2018 12:44:56 -0700
Message-ID: <CAHQ1cqGeZBQBZDjPHw_nkQao5CFnzXGafio7zzqYr821FdU0tg@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX: Add liteboard support
To: Marcin Niestroj <m.niestroj@grinn-global.com>
Cc: Barebox List <barebox@lists.infradead.org>

Marcin:

Don't really have anything but minor feedback. See all of my optional
suggestions below:

On Wed, Jun 6, 2018 at 7:12 AM, Marcin Niestroj
<m.niestroj@grinn-global.com> wrote:
> liteboard is a development board which uses liteSOM as its
> base. liteSOM can't exist on its own, but is used as part
> of other boards - it only contains processor and memory.
>
> Hardware specification:
>  * liteSOM:
>    - i.MX6UL
>    - 256M or 512M DDR3 RAM
>    - eMMC (uSDHC2)
>  * Ethernet PHY
>  * USB host (usb_otg1)
>  * MicroSD slot (uSDHC1)
>
> Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
> ---
> Developed and tested on master branch: 03f2a17b10d0
>   ("usb: gadget: fastboot: fix barebox update without using buffer").
>
>  arch/arm/boards/Makefile                      |  1 +
>  arch/arm/boards/grinn-liteboard/Makefile      |  2 +
>  arch/arm/boards/grinn-liteboard/board.c       | 67 ++++++++++++++
>  .../flash-header-liteboard-256mb.imxcfg       |  6 ++
>  .../flash-header-liteboard-512mb.imxcfg       |  6 ++
>  .../grinn-liteboard/flash-header-liteboard.h  | 68 ++++++++++++++
>  arch/arm/boards/grinn-liteboard/lowlevel.c    | 89 ++++++++++++++++++
>  arch/arm/configs/imx_v7_defconfig             |  1 +
>  arch/arm/dts/Makefile                         |  1 +
>  arch/arm/dts/imx6ul-liteboard.dts             | 90 +++++++++++++++++++
>  arch/arm/mach-imx/Kconfig                     |  4 +
>  images/Makefile.imx                           | 10 +++
>  12 files changed, 345 insertions(+)
>  create mode 100644 arch/arm/boards/grinn-liteboard/Makefile
>  create mode 100644 arch/arm/boards/grinn-liteboard/board.c
>  create mode 100644 arch/arm/boards/grinn-liteboard/flash-header-liteboard-256mb.imxcfg
>  create mode 100644 arch/arm/boards/grinn-liteboard/flash-header-liteboard-512mb.imxcfg
>  create mode 100644 arch/arm/boards/grinn-liteboard/flash-header-liteboard.h
>  create mode 100644 arch/arm/boards/grinn-liteboard/lowlevel.c
>  create mode 100644 arch/arm/dts/imx6ul-liteboard.dts
>
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index b2fea4a40..343843750 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -52,6 +52,7 @@ obj-$(CONFIG_MACH_GE863)                      += telit-evk-pro3/
>  obj-$(CONFIG_MACH_GK802)                       += gk802/
>  obj-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG)                += globalscale-guruplug/
>  obj-$(CONFIG_MACH_GLOBALSCALE_MIRABOX)         += globalscale-mirabox/
> +obj-$(CONFIG_MACH_GRINN_LITEBOARD)             += grinn-liteboard/
>  obj-$(CONFIG_MACH_GUF_CUPID)                   += guf-cupid/
>  obj-$(CONFIG_MACH_GUF_SANTARO)                 += guf-santaro/
>  obj-$(CONFIG_MACH_GUF_VINCELL)                 += guf-vincell/
> diff --git a/arch/arm/boards/grinn-liteboard/Makefile b/arch/arm/boards/grinn-liteboard/Makefile
> new file mode 100644
> index 000000000..01c7a259e
> --- /dev/null
> +++ b/arch/arm/boards/grinn-liteboard/Makefile
> @@ -0,0 +1,2 @@
> +obj-y += board.o
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/grinn-liteboard/board.c b/arch/arm/boards/grinn-liteboard/board.c
> new file mode 100644
> index 000000000..d776ea24b
> --- /dev/null
> +++ b/arch/arm/boards/grinn-liteboard/board.c
> @@ -0,0 +1,67 @@
> +/*
> + * Copyright (C) 2018 Grinn
> + *
> + * Author: Marcin Niestroj <m.niestroj@grinn-global.com>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; version 2.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
> + * General Public License for more details.
> + */
> +
> +#define pr_fmt(fmt) "liteboard: " fmt
> +
> +#include <bootsource.h>
> +#include <common.h>
> +#include <envfs.h>
> +#include <init.h>
> +#include <mach/bbu.h>
> +#include <mach/imx6.h>
> +#include <malloc.h>
> +#include <mfd/imx6q-iomuxc-gpr.h>
> +#include <of.h>
> +
> +#define SD_IDX         0
> +#define EMMC_IDX       1
> +
> +static const struct {
> +       const char *name;
> +       const char *path;
> +} envs[] = {
> +       {"SD", "/chosen/environment-sd"},
> +       {"eMMC", "/chosen/environment-emmc"},
> +};
> +
> +static int liteboard_devices_init(void)
> +{
> +       int mmc_idx = 0;

mmc_idx = SD_IDX instead?

> +       int ret;
> +
> +       if (!of_machine_is_compatible("grinn,imx6ul-liteboard"))
> +               return 0;
> +
> +       barebox_set_hostname("liteboard");
> +
> +       if (bootsource_get() == BOOTSOURCE_MMC)
> +               mmc_idx = bootsource_get_instance();
> +
> +       ret = of_device_enable_path(envs[mmc_idx].path);
> +       if (ret < 0)
> +               pr_warn("Failed to enable environment partition '%s' (%d)\n",
> +                       envs[mmc_idx].path, ret);
> +
> +       pr_notice("Using environment in %s\n", envs[mmc_idx].name);
> +
> +       imx6_bbu_internal_mmc_register_handler("sd", "/dev/mmc0.barebox",
> +               mmc_idx == SD_IDX ? BBU_HANDLER_FLAG_DEFAULT : 0);
> +
> +       imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc1.barebox",
> +               mmc_idx == EMMC_IDX ? BBU_HANDLER_FLAG_DEFAULT : 0);

You can probably make use of the envs[] array and a for loop here and
get away with a single call to
imx6_bbu_internal_mmc_register_handler()

> +
> +       return 0;
> +}
> +device_initcall(liteboard_devices_init);
> diff --git a/arch/arm/boards/grinn-liteboard/flash-header-liteboard-256mb.imxcfg b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-256mb.imxcfg
> new file mode 100644
> index 000000000..1b980c784
> --- /dev/null
> +++ b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-256mb.imxcfg
> @@ -0,0 +1,6 @@
> +
> +#define SETUP_MDASP_MDCTL              \
> +       wm 32 0x021B0040 0x00000047;    \
> +       wm 32 0x021B0000 0x83180000
> +
> +#include "flash-header-liteboard.h"
> diff --git a/arch/arm/boards/grinn-liteboard/flash-header-liteboard-512mb.imxcfg b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-512mb.imxcfg
> new file mode 100644
> index 000000000..c93a2cc0f
> --- /dev/null
> +++ b/arch/arm/boards/grinn-liteboard/flash-header-liteboard-512mb.imxcfg
> @@ -0,0 +1,6 @@
> +
> +#define SETUP_MDASP_MDCTL              \
> +       wm 32 0x021B0040 0x0000004F;    \
> +       wm 32 0x021B0000 0x84180000
> +
> +#include "flash-header-liteboard.h"
> diff --git a/arch/arm/boards/grinn-liteboard/flash-header-liteboard.h b/arch/arm/boards/grinn-liteboard/flash-header-liteboard.h
> new file mode 100644
> index 000000000..60a39f524
> --- /dev/null
> +++ b/arch/arm/boards/grinn-liteboard/flash-header-liteboard.h
> @@ -0,0 +1,68 @@
> +
> +loadaddr 0x80000000
> +soc imx6
> +dcdofs 0x400
> +
> +wm 32 0x020c4068 0xffffffff
> +wm 32 0x020c406c 0xffffffff
> +wm 32 0x020c4070 0xffffffff
> +wm 32 0x020c4074 0xffffffff
> +wm 32 0x020c4078 0xffffffff
> +wm 32 0x020c407c 0xffffffff
> +wm 32 0x020c4080 0xffffffff
> +
> +wm 32 0x020E04B4 0x000C0000
> +wm 32 0x020E04AC 0x00000000
> +wm 32 0x020E027C 0x00000030
> +wm 32 0x020E0250 0x00000030
> +wm 32 0x020E024C 0x00000030
> +wm 32 0x020E0490 0x00000030
> +wm 32 0x020E0288 0x00000030
> +wm 32 0x020E0270 0x00000000
> +wm 32 0x020E0260 0x00000030
> +wm 32 0x020E0264 0x00000030
> +wm 32 0x020E04A0 0x00000030
> +wm 32 0x020E0494 0x00020000
> +wm 32 0x020E0280 0x00000030
> +wm 32 0x020E0284 0x00000030
> +wm 32 0x020E04B0 0x00020000
> +wm 32 0x020E0498 0x00000030
> +wm 32 0x020E04A4 0x00000030
> +wm 32 0x020E0244 0x00000030
> +wm 32 0x020E0248 0x00000030
> +wm 32 0x021B001C 0x00008000
> +wm 32 0x021B0800 0xA1390003
> +wm 32 0x021B080C 0x00000000
> +wm 32 0x021B083C 0x41480148
> +wm 32 0x021B0848 0x40403E42
> +wm 32 0x021B0850 0x40405852
> +wm 32 0x021B081C 0x33333333
> +wm 32 0x021B0820 0x33333333
> +wm 32 0x021B082C 0xf3333333
> +wm 32 0x021B0830 0xf3333333
> +wm 32 0x021B08C0 0x00922012
> +wm 32 0x021B0858 0x00000F00
> +wm 32 0x021B08b8 0x00000800
> +wm 32 0x021B0004 0x0002002D
> +wm 32 0x021B0008 0x1B333030
> +wm 32 0x021B000C 0x676B52F3
> +wm 32 0x021B0010 0xB66D0B63
> +wm 32 0x021B0014 0x01FF00DB
> +wm 32 0x021B0018 0x00211740
> +wm 32 0x021B001C 0x00008000
> +wm 32 0x021B002C 0x000026D2
> +wm 32 0x021B0030 0x006B1023
> +
> +SETUP_MDASP_MDCTL
> +
> +wm 32 0x021b0890 0x00400A38
> +wm 32 0x021B001C 0x02008032
> +wm 32 0x021B001C 0x00008033
> +wm 32 0x021B001C 0x00048031
> +wm 32 0x021B001C 0x15208030
> +wm 32 0x021B001C 0x04008040
> +wm 32 0x021B0020 0x00007800
> +wm 32 0x021B0818 0x00000227
> +wm 32 0x021B0004 0x0002556D
> +wm 32 0x021B0404 0x00011006
> +wm 32 0x021B001C 0x00000000
> diff --git a/arch/arm/boards/grinn-liteboard/lowlevel.c b/arch/arm/boards/grinn-liteboard/lowlevel.c
> new file mode 100644
> index 000000000..03f2660f9
> --- /dev/null
> +++ b/arch/arm/boards/grinn-liteboard/lowlevel.c
> @@ -0,0 +1,89 @@
> +/*
> + * Copyright (C) 2018 Grinn
> + *
> + * Author: Marcin Niestroj <m.niestroj@grinn-global.com>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; version 2.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
> + * General Public License for more details.
> + */
> +
> +#include <debug_ll.h>
> +#include <common.h>
> +#include <linux/sizes.h>
> +#include <io.h>
> +#include <image-metadata.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/sections.h>
> +#include <asm/cache.h>
> +#include <asm/mmu.h>
> +#include <mach/esdctl.h>
> +#include <mach/imx6.h>
> +
> +static inline void setup_uart(void)
> +{
> +       void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
> +       void __iomem *uart = IOMEM(MX6_UART1_BASE_ADDR);
> +
> +       imx6_ungate_all_peripherals();
> +
> +       /* TX */
> +       writel(0x0, iomuxbase + 0x84);
> +       writel(0x1b0b1, iomuxbase + 0x0310);
> +

You can probably make use of imx_setup_pad() from iomxu-v3.h here.

> +       /* RX */
> +       writel(0x0, iomuxbase + 0x88);
> +       writel(0x1b0b0, iomuxbase + 0x0314);
> +       writel(0x3, iomuxbase + 0x624);
> +

Is Rx actually being used before this is configured through DT?

> +       imx6_uart_setup(uart);
> +
> +       pbl_set_putc(imx_uart_putc, uart);
> +
> +       putc_ll('>');

Pbl_set_putc() is enabled by CONFIG_PBL_CONSOLE, but putc_ll() is not
(it is enabled by CONFIG_DEBUG_LL/DEBUG_IMX6Q_UART). I'd use regular
putchar() here instead because it is already properly configured by
pbl_set_putc().

Alternatively, since you are not really printing anything in this
file, you can keep puts_ll(), drop pbl_set_putc() and corresponding
early relocation and rely only on DEBUG_LL instead.

> +}
> +
> +BAREBOX_IMD_TAG_STRING(liteboard_memsize_SZ_256M, IMD_TYPE_PARAMETER, "memsize=256", 0);
> +BAREBOX_IMD_TAG_STRING(liteboard_memsize_SZ_512M, IMD_TYPE_PARAMETER, "memsize=512", 0);
> +
> +extern char __dtb_imx6ul_liteboard_start[];
> +
> +static void __noreturn start_imx6_liteboard(void)
> +{
> +       imx6ul_cpu_lowlevel_init();
> +
> +       arm_setup_stack(0x00910000 - 8);
> +
> +       arm_early_mmu_cache_invalidate();
> +
> +       relocate_to_current_adr();
> +       setup_c();
> +       barrier();
> +
> +       setup_uart();

I'd do:

if (IS_ENABLED(CONFIG_PBL_CONSOLE))
   setup_uart();

and also move

> +       relocate_to_current_adr();
> +       setup_c();
> +       barrier();

to be a part of setup_uart() to avoid doing needless configuration
when CONFIG_PBL_CONSOLE is disabled.

> +
> +       /* disable watchdog powerdown counters */
> +       writew(0x0, IOMEM(MX6_WDOG1_BASE_ADDR + 0x8));
> +       writew(0x0, IOMEM(MX6_WDOG2_BASE_ADDR + 0x8));
> +       writew(0x0, IOMEM(MX6ULL_WDOG3_BASE_ADDR + 0x8));

These three are starting to look like a common theme for i.MX6ULL
(same code exists in nxp-imx6ull-evk/lowlevel.c), so maybe they should
be move to a shared header?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
