Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grYN0-0003QT-FC
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 01:20:52 +0000
Received: by mail-wr1-x441.google.com with SMTP id l9so9656278wrt.13
 for <barebox@lists.infradead.org>; Wed, 06 Feb 2019 17:20:50 -0800 (PST)
MIME-Version: 1.0
References: <20190206184122.14423-1-christian.hemp@posteo.de>
In-Reply-To: <20190206184122.14423-1-christian.hemp@posteo.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 6 Feb 2019 17:20:37 -0800
Message-ID: <CAHQ1cqHrTGZj0aHY3Wr46aAdjT0TQJHijXBo06Tns2FMh3qO1w@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: phyCORE-i.MX8M SOM support
To: Christian Hemp <christian.hemp@posteo.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Feb 6, 2019 at 10:42 AM Christian Hemp <christian.hemp@posteo.de> wrote:
>
> The phyCORE-i.MX8M aka PCL-066 is a SoM containing a i.MX8M SoC.
>
> phyCORE-i.MX8M:
>  - 1GB LPDDR4 RAM
>  - eMMC
>  - microSD
>  - Ethernet
>
> Signed-off-by: Christian Hemp <christian.hemp@posteo.de>
> ---
>  arch/arm/boards/Makefile                      |   1 +
>  arch/arm/boards/phytec-som-imx8m/.gitignore   |   1 +
>  arch/arm/boards/phytec-som-imx8m/Makefile     |   2 +
>  arch/arm/boards/phytec-som-imx8m/board.c      |  55 +
>  arch/arm/boards/phytec-som-imx8m/ddr.h        |  28 +
>  arch/arm/boards/phytec-som-imx8m/ddr_init.c   | 225 +++++
>  .../boards/phytec-som-imx8m/ddrphy_train.c    | 947 ++++++++++++++++++
>  .../flash-header-phycore-imx8mq.imxcfg        |   5 +
>  arch/arm/boards/phytec-som-imx8m/lowlevel.c   | 127 +++
>  arch/arm/configs/imx_v8_defconfig             |   2 +
>  arch/arm/dts/Makefile                         |   1 +
>  arch/arm/dts/imx8mq-phytec-phycore-som.dts    | 328 ++++++
>  arch/arm/mach-imx/Kconfig                     |   7 +
>  images/Makefile.imx                           |   5 +
>  14 files changed, 1734 insertions(+)
>  create mode 100644 arch/arm/boards/phytec-som-imx8m/.gitignore
>  create mode 100644 arch/arm/boards/phytec-som-imx8m/Makefile
>  create mode 100644 arch/arm/boards/phytec-som-imx8m/board.c
>  create mode 100644 arch/arm/boards/phytec-som-imx8m/ddr.h
>  create mode 100644 arch/arm/boards/phytec-som-imx8m/ddr_init.c
>  create mode 100644 arch/arm/boards/phytec-som-imx8m/ddrphy_train.c
>  create mode 100644 arch/arm/boards/phytec-som-imx8m/flash-header-phycore-imx8mq.imxcfg
>  create mode 100644 arch/arm/boards/phytec-som-imx8m/lowlevel.c
>  create mode 100644 arch/arm/dts/imx8mq-phytec-phycore-som.dts
>
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index ab5191fe0..b39bbe8c2 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -95,6 +95,7 @@ obj-$(CONFIG_MACH_PCM049)                     += phytec-phycore-omap4460/
>  obj-$(CONFIG_MACH_PHYTEC_SOM_AM335X)           += phytec-som-am335x/
>  obj-$(CONFIG_MACH_PHYTEC_SOM_IMX6)             += phytec-som-imx6/
>  obj-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7)         += phytec-phycore-imx7/
> +obj-$(CONFIG_MACH_PHYTEC_SOM_IMX8M)            += phytec-som-imx8m/
>  obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)     += plathome-openblocks-ax3/
>  obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6)      += plathome-openblocks-a6/
>  obj-$(CONFIG_MACH_PM9261)                      += pm9261/
> diff --git a/arch/arm/boards/phytec-som-imx8m/.gitignore b/arch/arm/boards/phytec-som-imx8m/.gitignore
> new file mode 100644
> index 000000000..ef13747c9
> --- /dev/null
> +++ b/arch/arm/boards/phytec-som-imx8m/.gitignore
> @@ -0,0 +1 @@
> +*.ddr-phy-fw*
> diff --git a/arch/arm/boards/phytec-som-imx8m/Makefile b/arch/arm/boards/phytec-som-imx8m/Makefile
> new file mode 100644
> index 000000000..2995f06f0
> --- /dev/null
> +++ b/arch/arm/boards/phytec-som-imx8m/Makefile
> @@ -0,0 +1,2 @@
> +obj-y += board.o
> +lwl-y += lowlevel.o ddr_init.o ddrphy_train.o
> diff --git a/arch/arm/boards/phytec-som-imx8m/board.c b/arch/arm/boards/phytec-som-imx8m/board.c
> new file mode 100644
> index 000000000..7779946d1
> --- /dev/null
> +++ b/arch/arm/boards/phytec-som-imx8m/board.c
> @@ -0,0 +1,55 @@
> +/*
> + * Copyright (C) 2018 Christian Hemp
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
> +#include <asm/memory.h>
> +#include <bootsource.h>
> +#include <environment.h>
> +#include <common.h>
> +#include <init.h>
> +#include <linux/sizes.h>
> +#include <mach/bbu.h>
> +
> +#include <envfs.h>
> +
> +static int physom_imx8m_devices_init(void)
> +{
> +       int flags;
> +
> +       if (!of_machine_is_compatible("phytec,imx8mq-pcl066"))
> +               return 0;
> +
> +       barebox_set_hostname("phycore-imx8mq");
> +
> +       flags = bootsource_get_instance() == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
> +       imx8mq_bbu_internal_mmc_register_handler("eMMC",
> +                                                "/dev/mmc0.barebox", flags);
> +
> +       flags = bootsource_get_instance() == 1 ? BBU_HANDLER_FLAG_DEFAULT : 0;
> +       imx8mq_bbu_internal_mmc_register_handler("SD",
> +                                                "/dev/mmc1.barebox", flags);
> +
> +       if (bootsource_get_instance() == 0)
> +               of_device_enable_path("/chosen/environment-emmc");
> +       else
> +               of_device_enable_path("/chosen/environment-sd");
> +

I made a similar suggestion to Lucas when he submitted that code for
EVK board, so at the risk of sounding like a broken record, you can
simplify this to:

switch (bootsource_get_instance()) {
    case 0:
        flags_mmc = BBU_HANDLER_FLAG_DEFAULT;
        flags_sd  = 0;
        of_device_enable_path("/chosen/environment-emmc");
        break;
    case 1:
        flags_mmc = 0;
        flags_sd  = BBU_HANDLER_FLAG_DEFAULT;
        of_device_enable_path("/chosen/environment-sd");
    break;
}

imx8mq_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc0.barebox",

   flags_mmc);
imx8mq_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox",

   flags_sd);


Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
