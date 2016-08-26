Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bd9wD-00031Y-LU
 for barebox@lists.infradead.org; Fri, 26 Aug 2016 05:44:23 +0000
Date: Fri, 26 Aug 2016 07:43:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160826054359.GO20657@pengutronix.de>
References: <1472042970-35151-1-git-send-email-w.egorov@phytec.de>
 <1472042970-35151-6-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1472042970-35151-6-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH v2 6/8] ARM: Add phyCORE-RK3288 SOM support
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Aug 24, 2016 at 02:49:28PM +0200, Wadim Egorov wrote:
> The phyCORE-RK3288 aka PCM-059 is a SoM (System on Module)
> containing a RK3288 SoC. The module can be connected to different
> carrier boards.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
>  arch/arm/boards/Makefile                           |   1 +
>  arch/arm/boards/phytec-som-rk3288/Makefile         |   3 +
>  arch/arm/boards/phytec-som-rk3288/board.c          |  31 +++++
>  .../defaultenv-physom-rk3288/boot/emmc             |   6 +
>  .../defaultenv-physom-rk3288/boot/mmc              |   6 +
>  .../defaultenv-physom-rk3288/init/automount        |  12 ++
>  .../defaultenv-physom-rk3288/init/bootsource       |   3 +
>  arch/arm/boards/phytec-som-rk3288/lowlevel.c       |  44 ++++++
>  arch/arm/dts/Makefile                              |   1 +
>  arch/arm/dts/rk3288-phycore-som.dts                | 148 +++++++++++++++++++++
>  arch/arm/mach-rockchip/Kconfig                     |   7 +
>  images/Makefile.rockchip                           |   4 +
>  12 files changed, 266 insertions(+)
>  create mode 100644 arch/arm/boards/phytec-som-rk3288/Makefile
>  create mode 100644 arch/arm/boards/phytec-som-rk3288/board.c
>  create mode 100644 arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/boot/emmc
>  create mode 100644 arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/boot/mmc
>  create mode 100644 arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/init/automount
>  create mode 100644 arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/init/bootsource
>  create mode 100644 arch/arm/boards/phytec-som-rk3288/lowlevel.c
>  create mode 100644 arch/arm/dts/rk3288-phycore-som.dts
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 9241b66..24ce130 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -95,6 +95,7 @@ obj-$(CONFIG_MACH_PM9G45)			+= pm9g45/
>  obj-$(CONFIG_MACH_QIL_A9260)			+= qil-a926x/
>  obj-$(CONFIG_MACH_QIL_A9G20)			+= qil-a926x/
>  obj-$(CONFIG_MACH_RADXA_ROCK)			+= radxa-rock/
> +obj-$(CONFIG_MACH_PHYTEC_SOM_RK3288)		+= phytec-som-rk3288/
>  obj-$(CONFIG_MACH_REALQ7)			+= datamodul-edm-qmx6/
>  obj-$(CONFIG_MACH_RPI_COMMON)			+= raspberry-pi/
>  obj-$(CONFIG_MACH_SABRELITE)			+= freescale-mx6-sabrelite/
> diff --git a/arch/arm/boards/phytec-som-rk3288/Makefile b/arch/arm/boards/phytec-som-rk3288/Makefile
> new file mode 100644
> index 0000000..6f34c9a
> --- /dev/null
> +++ b/arch/arm/boards/phytec-som-rk3288/Makefile
> @@ -0,0 +1,3 @@
> +obj-y += board.o
> +lwl-y += lowlevel.o
> +bbenv-y += defaultenv-physom-rk3288
> diff --git a/arch/arm/boards/phytec-som-rk3288/board.c b/arch/arm/boards/phytec-som-rk3288/board.c
> new file mode 100644
> index 0000000..8ea6c6c
> --- /dev/null
> +++ b/arch/arm/boards/phytec-som-rk3288/board.c
> @@ -0,0 +1,31 @@
> +/*
> + * Copyright (C) 2016 PHYTEC Messtechnik GmbH,
> + * Author: Wadim Egorov <w.egorov@phytec.de>
> + *
> + * Device initialization for the phyCORE-RK3288 SoM
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License
> + * version 2 as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <envfs.h>
> +
> +static int physom_devices_init(void)
> +{
> +	if (!of_machine_is_compatible("phytec,rk3288-phycore-som"))
> +		return 0;
> +
> +	barebox_set_hostname("pcm059");
> +	defaultenv_append_directory(defaultenv_physom_rk3288);
> +
> +	return 0;
> +}
> +device_initcall(physom_devices_init);
> diff --git a/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/boot/emmc b/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/boot/emmc
> new file mode 100644
> index 0000000..731b07f
> --- /dev/null
> +++ b/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/boot/emmc
> @@ -0,0 +1,6 @@
> +#!/bin/sh
> +
> +global.bootm.image=/mnt/emmc/linuximage
> +global.bootm.oftree=/mnt/emmc/oftree
> +
> +global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rw rootwait"
> diff --git a/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/boot/mmc b/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/boot/mmc
> new file mode 100644
> index 0000000..5b19dba
> --- /dev/null
> +++ b/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/boot/mmc
> @@ -0,0 +1,6 @@
> +#!/bin/sh
> +
> +global.bootm.image=/mnt/sdmmc/linuximage
> +global.bootm.oftree=/mnt/sdmmc/oftree
> +
> +global.linux.bootargs.dyn.root="root=/dev/mmcblk1p2 rw rootwait"
> diff --git a/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/init/automount b/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/init/automount
> new file mode 100644
> index 0000000..2f9d78a
> --- /dev/null
> +++ b/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/init/automount
> @@ -0,0 +1,12 @@
> +#!/bin/sh
> +
> +if [ "$1" = menu ]; then
> +	init-menu-add-entry "$0" "Automountpoints"
> +	exit
> +fi

This is no longer needed.

> +
> +mkdir -p /mnt/emmc
> +automount -d /mnt/emmc 'mshc0.probe=1 && [ -e /dev/mshc0.0 ] && mount /dev/mshc0.0 /mnt/emmc'
> +
> +mkdir -p /mnt/sdmmc
> +automount -d /mnt/sdmmc 'mshc1.probe=1 && [ -e /dev/mshc1.0 ] && mount /dev/mshc1.0 /mnt/sdmmc'

Maybe rename this to automount-mmc or similar to not overwrite the
generic automount file? You'll probably want to have the generic
automountpoints once you get network support.

> diff --git a/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/init/bootsource b/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/init/bootsource
> new file mode 100644
> index 0000000..36d34e3
> --- /dev/null
> +++ b/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/init/bootsource
> @@ -0,0 +1,3 @@
> +#!/bin/sh
> +
> +global.boot.default="emmc mmc"

This should go to defaultenv-physom-rk3288/nv/boot.default


> +&emmc {
> +	broken-cd;
> +	bus-width = <8>;
> +	cap-mmc-highspeed;
> +	disable-wp;
> +	non-removable;
> +	num-slots = <1>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&emmc_clk>, <&emmc_cmd>, <&emmc_pwr>, <&emmc_bus8>;
> +	vmmc-supply = <&vcc33>;
> +	vqmmc-supply = <&vcc18>;
> +	status = "okay";
> +
> +	#size-cells = <1>;
> +	#address-cells = <1>;
> +
> +	partition@8000 {
> +		label = "spl";
> +		reg = <0x8000 0x8000>;
> +	};
> +
> +	partition@20000 {
> +		label = "barebox";
> +		reg = <0x20000 0xe0000>;
> +	};
> +
> +	partition@e0000 {
> +		label = "barebox-environment";
> +		reg = <0xe0000 0x20000>;
> +	};
> +};

The reg property is <start size>, so it seems the barebox partition and
the barebox-environment partition overlap.

> +
> +&sdmmc {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	card-detect-delay = <200>;
> +	disable-wp;
> +	num-slots = <1>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc_clk>, <&sdmmc_cmd>, <&sdmmc_cd>, <&sdmmc_bus4>;
> +	vmmc-supply = <&vcc33>;
> +	status = "okay";
> +
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	partition@8000 {
> +		label = "spl";
> +		reg = <0x8000 0x8000>;
> +	};
> +
> +	partition@20000 {
> +		label = "barebox";
> +		reg = <0x20000 0xe0000>;
> +	};
> +
> +	partition@e0000 {
> +		label = "barebox-environment";
> +		reg = <0xe0000 0x20000>;
> +	};
> +};

Same here.

The rest of the series looks fine to me, enough to resend this patch.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
