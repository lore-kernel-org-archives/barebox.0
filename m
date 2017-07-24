Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from stcim.de ([2a01:4f8:120:4065::2])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dZieF-0006Cb-NE
 for barebox@lists.infradead.org; Mon, 24 Jul 2017 19:04:10 +0000
Date: Mon, 24 Jul 2017 21:03:42 +0200
From: Stefan Lengfeld <contact@stefanchrist.eu>
Message-ID: <20170724190342.GA4436@sill.h.stcim.de>
References: <20170724145400.2279-1-andrew.smirnov@gmail.com>
 <20170724145400.2279-10-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170724145400.2279-10-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 9/9] ARM: i.MX: Add support for NXP i.MX7 SABRESD board
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Mon, Jul 24, 2017 at 07:54:00AM -0700, Andrey Smirnov wrote:
> Add minimal code to support NXP i.MX7 SABRESD board. Tested to have
> working SD card and first Ethernet port as well as being able to boot
> upstream Linux kernel (4.12+).
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/boards/Makefile                           |  1 +
>  arch/arm/boards/freescale-mx7-sabresd/Makefile     |  3 +
>  arch/arm/boards/freescale-mx7-sabresd/board.c      | 59 ++++++++++++++++
>  .../flash-header-mx7-sabresd.imxcfg                | 79 ++++++++++++++++++++++
>  arch/arm/boards/freescale-mx7-sabresd/lowlevel.c   | 46 +++++++++++++
>  arch/arm/dts/Makefile                              |  2 +-
>  arch/arm/dts/imx7d-sdb.dts                         | 70 +++++++++++++++++++
>  arch/arm/mach-imx/Kconfig                          |  7 ++
>  images/Makefile.imx                                |  5 ++
>  9 files changed, 271 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boards/freescale-mx7-sabresd/Makefile
>  create mode 100644 arch/arm/boards/freescale-mx7-sabresd/board.c
>  create mode 100644 arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
>  create mode 100644 arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
>  create mode 100644 arch/arm/dts/imx7d-sdb.dts
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 9bbdd684f..295a362bd 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -148,3 +148,4 @@ obj-$(CONFIG_MACH_WARP7)			+= element14-warp7/
>  obj-$(CONFIG_MACH_VF610_TWR)			+= freescale-vf610-twr/
>  obj-$(CONFIG_MACH_ZII_RDU2)			+= zii-imx6q-rdu2/
>  obj-$(CONFIG_MACH_ZII_VF610_DEV)		+= zii-vf610-dev/
> +obj-$(CONFIG_MACH_FREESCALE_MX7_SABRESD)	+= freescale-mx7-sabresd/
> diff --git a/arch/arm/boards/freescale-mx7-sabresd/Makefile b/arch/arm/boards/freescale-mx7-sabresd/Makefile
> new file mode 100644
> index 000000000..9c3707a01
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx7-sabresd/Makefile
> @@ -0,0 +1,3 @@
> +obj-y += board.o
> +lwl-y += lowlevel.o
> +bbenv-y += env

You are not adding any default environment files. So the above line is
not needed.

> diff --git a/arch/arm/boards/freescale-mx7-sabresd/board.c b/arch/arm/boards/freescale-mx7-sabresd/board.c
> new file mode 100644
> index 000000000..9c30707b2
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx7-sabresd/board.c
> @@ -0,0 +1,59 @@
> +/*
> + * Copyright (C) 2016 Zodiac Inflight Innovation
> + * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
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
> +#include <io.h>
> +#include <mach/imx7-regs.h>
> +#include <linux/phy.h>
> +#include <mfd/imx7-iomuxc-gpr.h>
> +
> +#define PHY_ID_BCM54220 0x600d8589
> +
> +static int bcm54220_phy_fixup(struct phy_device *dev)
> +{
> +	phy_write(dev, 0x1e, 0x21);
> +	phy_write(dev, 0x1f, 0x7ea8);
> +	phy_write(dev, 0x1e, 0x2f);
> +	phy_write(dev, 0x1f, 0x71b7);
> +
> +	return 0;
> +}
> +
> +static int mx7_sabresd_init_fec(void)
> +{
> +	void __iomem *gpr = IOMEM(MX7_IOMUXC_GPR_BASE_ADDR);
> +	uint32_t gpr1;
> +
> +	gpr1 = readl(gpr + IOMUXC_GPR1);
> +	gpr1 &= ~(IMX7D_GPR1_ENET1_TX_CLK_SEL_MASK |
> +		  IMX7D_GPR1_ENET1_CLK_DIR_MASK);
> +	writel(gpr1, gpr + IOMUXC_GPR1);
> +
> +	return 0;
> +}
> +coredevice_initcall(mx7_sabresd_init_fec);

As Sam as already pointed out, the fec init should not be done a
initcall. For multi image support just call the function in the body of
mx7_sabresd_coredevices_init(), so it's protected by the device tree
compatible.

> +
> +static int mx7_sabresd_coredevices_init(void)
> +{
> +	if (!of_machine_is_compatible("fsl,imx7d-sdb"))
> +		return 0;
> +
> +	phy_register_fixup_for_uid(PHY_ID_BCM54220, 0xffffffff,
> +				   bcm54220_phy_fixup);
> +
> +	return 0;
> +}
> +coredevice_initcall(mx7_sabresd_coredevices_init);
> diff --git a/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg b/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
> new file mode 100644
> index 000000000..c5e17f2a0
> --- /dev/null
> +++ b/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
> @@ -0,0 +1,79 @@
> +/*
> + * Copyright (C) 2016 NXP Semiconductors
> + *
> + * SPDX-License-Identifier:	GPL-2.0
> + *
> + * Refer docs/README.imxmage for more details about how-to configure
> + * and create imximage boot image
> + *
> + * The syntax is taken as close as possible with the kwbimage
> + */
> +
> +soc imx7
> +loadaddr 0x80000000
> +dcdofs 0x400
> +

Maybe add a short comment here, where you have found the DCD values. It
seems that they are copied from the u-boot fork of Freescale/NXP. So
just adding a URL and commit SHA1 would be fine.

It's quite hard to verify and track down the origin these magics values
any time later. Usually they pop up from somewhere and are never touched
again.

Kind regards,
    Stefan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
