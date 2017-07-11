Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUqSk-0006yX-9N
 for barebox@lists.infradead.org; Tue, 11 Jul 2017 08:24:08 +0000
Message-ID: <1499761422.18894.3.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 11 Jul 2017 10:23:42 +0200
In-Reply-To: <20170710194059.GA765@sill.h.stcim.de>
References: <20170710152108.23601-1-l.stach@pengutronix.de>
 <20170710194059.GA765@sill.h.stcim.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH] ARM: imx: phyCORE i.MX7 on phyBOARD-Zeta support
To: Stefan Lengfeld <contact@stefanchrist.eu>
Cc: barebox@lists.infradead.org

Hi Stefan,

Am Montag, den 10.07.2017, 21:40 +0200 schrieb Stefan Lengfeld:
> Hi Lucas,
> 
> On Mon, Jul 10, 2017 at 05:21:08PM +0200, Lucas Stach wrote:
> > From: Sascha Hauer <s.hauer@pengutronix.de>
> > 
> > This adds preliminary support for the phyCORE i.MX7 module on a
> > phyBOARD-Zeta baseboard. The DTs will likely change in the future
> > when PHYTEC finalizes their BSP.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> > lst: Rebased and fixed for upstream pinfunc changes. Tested PSCI
> > kernel booting.
> > ---
> >  arch/arm/boards/Makefile                           |   1 +
> >  arch/arm/boards/phytec-phycore-imx7/Makefile       |   2 +
> >  arch/arm/boards/phytec-phycore-imx7/board.c        |  42 ++++
> >  .../flash-header-phytec-phycore-imx7.imxcfg        |  76 ++++++
> >  arch/arm/boards/phytec-phycore-imx7/lowlevel.c     |  48 ++++
> >  arch/arm/configs/imx_v7_defconfig                  |   4 +-
> >  arch/arm/dts/Makefile                              |   1 +
> >  arch/arm/dts/imx7d-pba-c-09.dtsi                   | 272 +++++++++++++++++++++
> >  arch/arm/dts/imx7d-peb-av-02.dtsi                  | 104 ++++++++
> >  arch/arm/dts/imx7d-peb-eval-02.dtsi                | 130 ++++++++++
> >  arch/arm/dts/imx7d-phyboard-zeta.dts               | 144 +++++++++++
> >  arch/arm/dts/imx7d-phycore-som.dtsi                | 272 +++++++++++++++++++++
> >  arch/arm/mach-imx/Kconfig                          |   4 +
> >  images/Makefile.imx                                |   5 +
> >  14 files changed, 1104 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/arm/boards/phytec-phycore-imx7/Makefile
> >  create mode 100644 arch/arm/boards/phytec-phycore-imx7/board.c
> >  create mode 100644 arch/arm/boards/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
> >  create mode 100644 arch/arm/boards/phytec-phycore-imx7/lowlevel.c
> >  create mode 100644 arch/arm/dts/imx7d-pba-c-09.dtsi
> >  create mode 100644 arch/arm/dts/imx7d-peb-av-02.dtsi
> >  create mode 100644 arch/arm/dts/imx7d-peb-eval-02.dtsi
> >  create mode 100644 arch/arm/dts/imx7d-phyboard-zeta.dts
> >  create mode 100644 arch/arm/dts/imx7d-phycore-som.dtsi
> > 
> > diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> > index 9bbdd684fa6c..c6840a633c0d 100644
> > --- a/arch/arm/boards/Makefile
> > +++ b/arch/arm/boards/Makefile
> > @@ -89,6 +89,7 @@ obj-$(CONFIG_MACH_PCM043)			+= phytec-phycore-imx35/
> >  obj-$(CONFIG_MACH_PCM049)			+= phytec-phycore-omap4460/
> >  obj-$(CONFIG_MACH_PHYTEC_SOM_AM335X)		+= phytec-som-am335x/
> >  obj-$(CONFIG_MACH_PHYTEC_SOM_IMX6)		+= phytec-som-imx6/
> > +obj-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7)		+= phytec-phycore-imx7/
> >  obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
> >  obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6)	+= plathome-openblocks-a6/
> >  obj-$(CONFIG_MACH_PM9261)			+= pm9261/
> > diff --git a/arch/arm/boards/phytec-phycore-imx7/Makefile b/arch/arm/boards/phytec-phycore-imx7/Makefile
> > new file mode 100644
> > index 000000000000..01c7a259e9a5
> > --- /dev/null
> > +++ b/arch/arm/boards/phytec-phycore-imx7/Makefile
> > @@ -0,0 +1,2 @@
> > +obj-y += board.o
> > +lwl-y += lowlevel.o
> > diff --git a/arch/arm/boards/phytec-phycore-imx7/board.c b/arch/arm/boards/phytec-phycore-imx7/board.c
> > new file mode 100644
> > index 000000000000..d4451602b047
> > --- /dev/null
> > +++ b/arch/arm/boards/phytec-phycore-imx7/board.c
> > @@ -0,0 +1,42 @@
> > +/*
> > + * Copyright (C) 2017 Sascha Hauer, Pengutronix
> > + *
> > + * This program is free software; you can redistribute it and/or
> > + * modify it under the terms of the GNU General Public License as
> > + * published by the Free Software Foundation; either version 2 of
> > + * the License, or (at your option) any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + */
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <environment.h>
> > +#include <mach/bbu.h>
> > +#include <asm/armlinux.h>
> > +#include <generated/mach-types.h>
> > +#include <partition.h>
> > +#include <mach/generic.h>
> > +#include <linux/sizes.h>
> > +#include <asm/psci.h>
> > +#include <io.h>
> > +#include <mach/imx7-regs.h>
> > +#include <serial/imx-uart.h>
> > +#include <asm/secure.h>
> > +
> > +static int warp7_devices_init(void)
> 
> Maybe this function should be renamed to hide the origin of the code ;-)
> 
> > +{
> > +	if (!of_machine_is_compatible("phytec,imx7d-phycore-som"))
> > +		return 0;
> > +
> > +	imx6_bbu_internal_mmc_register_handler("mmc", "/dev/mmc2.boot0.barebox",
> > +					       BBU_HANDLER_FLAG_DEFAULT);
> > +
> > +	psci_set_putc(imx_uart_putc, IOMEM(MX7_UART5_BASE_ADDR));
> > +
> > +	return 0;
> > +}
> > +mem_initcall(warp7_devices_init);
> 
> Shouldn't this be a device_initcall()?  Using mem_initcall() for a
> function that does nothing memory specific is a bit strange. 

Yes, thanks for noticing. I'll change both in the next revision.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
