Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22e.google.com ([2a00:1450:400c:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XMHSF-0004xs-82
 for barebox@lists.infradead.org; Tue, 26 Aug 2014 14:10:36 +0000
Received: by mail-we0-f174.google.com with SMTP id x48so14702660wes.5
 for <barebox@lists.infradead.org>; Tue, 26 Aug 2014 07:10:11 -0700 (PDT)
Message-ID: <53FC953F.2050009@gmail.com>
Date: Tue, 26 Aug 2014 16:10:07 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1408825163-6135-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <1408825163-6135-3-git-send-email-ezequiel.garcia@free-electrons.com>
In-Reply-To: <1408825163-6135-3-git-send-email-ezequiel.garcia@free-electrons.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] ARM: mvebu: Add Plat'home's Kirkwood Openblocks A6
 board support
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

On 08/23/2014 10:19 PM, Ezequiel Garcia wrote:
> This commit adds a new Marvell Kirkwood-based board, by following the currently
> supported boards.
>
> Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Acked-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

> ---
>   arch/arm/boards/Makefile                          |  1 +
>   arch/arm/boards/plathome-openblocks-a6/Makefile   |  2 ++
>   arch/arm/boards/plathome-openblocks-a6/board.c    |  1 +
>   arch/arm/boards/plathome-openblocks-a6/lowlevel.c | 32 +++++++++++++++++++++++
>   arch/arm/dts/Makefile                             |  1 +
>   arch/arm/dts/kirkwood-openblocks_a6-bb.dts        | 13 +++++++++
>   arch/arm/mach-mvebu/Kconfig                       |  3 +++
>   images/Makefile.mvebu                             | 11 ++++++++
>   8 files changed, 64 insertions(+)
>   create mode 100644 arch/arm/boards/plathome-openblocks-a6/Makefile
>   create mode 100644 arch/arm/boards/plathome-openblocks-a6/board.c
>   create mode 100644 arch/arm/boards/plathome-openblocks-a6/lowlevel.c
>   create mode 100644 arch/arm/dts/kirkwood-openblocks_a6-bb.dts
>
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index c60da81..122f5cd 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -79,6 +79,7 @@ obj-$(CONFIG_MACH_PCM049)			+= phytec-phycore-omap4460/
>   obj-$(CONFIG_MACH_PCM051)			+= phytec-phycore-am335x/
>   obj-$(CONFIG_MACH_PHYTEC_PFLA02)		+= phytec-phyflex-imx6/
>   obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
> +obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6)	+= plathome-openblocks-a6/
>   obj-$(CONFIG_MACH_PM9261)			+= pm9261/
>   obj-$(CONFIG_MACH_PM9263)			+= pm9263/
>   obj-$(CONFIG_MACH_PM9G45)			+= pm9g45/
> diff --git a/arch/arm/boards/plathome-openblocks-a6/Makefile b/arch/arm/boards/plathome-openblocks-a6/Makefile
> new file mode 100644
> index 0000000..01c7a25
> --- /dev/null
> +++ b/arch/arm/boards/plathome-openblocks-a6/Makefile
> @@ -0,0 +1,2 @@
> +obj-y += board.o
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/plathome-openblocks-a6/board.c b/arch/arm/boards/plathome-openblocks-a6/board.c
> new file mode 100644
> index 0000000..40a8c17
> --- /dev/null
> +++ b/arch/arm/boards/plathome-openblocks-a6/board.c
> @@ -0,0 +1 @@
> +/* empty */
> diff --git a/arch/arm/boards/plathome-openblocks-a6/lowlevel.c b/arch/arm/boards/plathome-openblocks-a6/lowlevel.c
> new file mode 100644
> index 0000000..b37a3d6
> --- /dev/null
> +++ b/arch/arm/boards/plathome-openblocks-a6/lowlevel.c
> @@ -0,0 +1,32 @@
> +/*
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
> +#include <sizes.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/barebox-arm-head.h>
> +#include <mach/lowlevel.h>
> +
> +extern char __dtb_kirkwood_openblocks_a6_bb_start[];
> +
> +ENTRY_FUNCTION(start_plathome_openblocks_a6, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_kirkwood_openblocks_a6_bb_start -
> +		get_runtime_offset();
> +
> +	mvebu_barebox_entry(fdt);
> +}
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 9bff8a0..4b8d58a 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -23,6 +23,7 @@ pbl-dtb-$(CONFIG_MACH_PCM038) += imx27-phytec-phycore-rdk.dtb.o
>   pbl-dtb-$(CONFIG_MACH_PCM051) += am335x-phytec-phycore.dtb.o
>   pbl-dtb-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6s-phytec-pbab01.dtb.o imx6dl-phytec-pbab01.dtb.o imx6q-phytec-pbab01.dtb.o
>   pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
> +pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
>   pbl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
>   pbl-dtb-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
>   pbl-dtb-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
> diff --git a/arch/arm/dts/kirkwood-openblocks_a6-bb.dts b/arch/arm/dts/kirkwood-openblocks_a6-bb.dts
> new file mode 100644
> index 0000000..42bfb07
> --- /dev/null
> +++ b/arch/arm/dts/kirkwood-openblocks_a6-bb.dts
> @@ -0,0 +1,13 @@
> +/*
> + * Barebox specific DT overlay for OpenBlocks A6 board
> + */
> +
> +#include "arm/kirkwood-openblocks_a6.dts"
> +
> +/ {
> +	gpio-leds {
> +		led-green {
> +			barebox,default-trigger = "heartbeat";
> +		};
> +	};
> +};
> diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
> index 131f3a6..3270f92 100644
> --- a/arch/arm/mach-mvebu/Kconfig
> +++ b/arch/arm/mach-mvebu/Kconfig
> @@ -81,6 +81,9 @@ if ARCH_KIRKWOOD
>   config MACH_GLOBALSCALE_GURUPLUG
>   	bool "Guruplug"
>
> +config MACH_PLATHOME_OPENBLOCKS_A6
> +	bool "PlatHome OpenBlocks A6"
> +
>   config MACH_USI_TOPKICK
>   	bool "Topkick"
>
> diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
> index 009807d..5e90855 100644
> --- a/images/Makefile.mvebu
> +++ b/images/Makefile.mvebu
> @@ -72,6 +72,17 @@ image-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += barebox-globalscale-guruplug.img
>   image-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += barebox-globalscale-guruplug-uart.img
>   image-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += barebox-globalscale-guruplug-2nd.img
>
> +PLATHOME_OPENBLOCKS_A6_KWBOPTS = ${KWBOPTS} -i $(board)/plathome-openblocks-a6/kwbimage.cfg
> +OPTS_start_plathome_openblocks_a6.pblx.kwbimg = $(PLATHOME_OPENBLOCKS_A6_KWBOPTS)
> +OPTS_start_plathome_openblocks_a6.pblx.kwbuartimg = -m uart $(PLATHOME_OPENBLOCKS_A6_KWBOPTS)
> +FILE_barebox-plathome-openblocks-a6.img   = start_plathome_openblocks_a6.pblx.kwbimg
> +FILE_barebox-plathome-openblocks-a6-uart.img = start_plathome_openblocks_a6.pblx.kwbuartimg
> +FILE_barebox-plathome-openblocks-a6-2nd.img = start_plathome_openblocks_a6.pblx
> +pblx-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += start_plathome_openblocks_a6
> +image-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += barebox-plathome-openblocks-a6.img
> +image-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += barebox-plathome-openblocks-a6-uart.img
> +image-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += barebox-plathome-openblocks-a6-2nd.img
> +
>   USI_TOPKICK_KWBOPTS = ${KWBOPTS} -i $(board)/usi-topkick/kwbimage.cfg
>   OPTS_start_usi_topkick.pblx.kwbimg = $(USI_TOPKICK_KWBOPTS)
>   OPTS_start_usi_topkick.pblx.kwbuartimg = -m uart $(USI_TOPKICK_KWBOPTS)
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
