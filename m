Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x242.google.com ([2607:f8b0:4001:c0b::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVJQo-0008Hm-8c
 for barebox@lists.infradead.org; Tue, 19 Jun 2018 16:24:35 +0000
Received: by mail-it0-x242.google.com with SMTP id v83-v6so1246501itc.3
 for <barebox@lists.infradead.org>; Tue, 19 Jun 2018 09:24:23 -0700 (PDT)
MIME-Version: 1.0
References: <20180619054307.30618-1-andrew.smirnov@gmail.com>
 <20180619054307.30618-2-andrew.smirnov@gmail.com>
 <1529398276.7211.10.camel@pengutronix.de>
In-Reply-To: <1529398276.7211.10.camel@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Jun 2018 09:24:11 -0700
Message-ID: <CAHQ1cqGXRaf1qQ4MmKRvtnejANvkezvMPng9MJuKmBhXJn+7mw@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] ARM: i.MX: Add support for ZII RDU1 board
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>, Barebox List <barebox@lists.infradead.org>

On Tue, Jun 19, 2018 at 1:51 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Am Montag, den 18.06.2018, 22:43 -0700 schrieb Andrey Smirnov:
> > ZII RDU1 is a i.MX51 based, Babbade board derivative supported by
> > upstream kernel. This commit adds support for it to Barebox.
> >
> > > Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
> > > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  arch/arm/boards/Makefile                      |  1 +
> >  arch/arm/boards/zii-imx51-rdu1/Makefile       |  2 +
> >  arch/arm/boards/zii-imx51-rdu1/board.c        | 38 ++++++++++++
> >  .../flash-header-imx51-zii-rdu1.imxcfg        | 60 +++++++++++++++++++
> >  arch/arm/boards/zii-imx51-rdu1/lowlevel.c     | 46 ++++++++++++++
> >  arch/arm/configs/imx_v7_defconfig             |  1 +
> >  arch/arm/dts/Makefile                         |  1 +
> >  arch/arm/dts/imx51-zii-rdu1.dts               | 46 ++++++++++++++
> >  arch/arm/mach-imx/Kconfig                     |  5 ++
> >  images/Makefile.imx                           |  5 ++
> >  10 files changed, 205 insertions(+)
> >  create mode 100644 arch/arm/boards/zii-imx51-rdu1/Makefile
> >  create mode 100644 arch/arm/boards/zii-imx51-rdu1/board.c
> >  create mode 100644 arch/arm/boards/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg
> >  create mode 100644 arch/arm/boards/zii-imx51-rdu1/lowlevel.c
> >  create mode 100644 arch/arm/dts/imx51-zii-rdu1.dts
> >
> > diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> > index f1dc4c685..e5d217f52 100644
> > --- a/arch/arm/boards/Makefile
> > +++ b/arch/arm/boards/Makefile
> > > @@ -150,5 +150,6 @@ obj-$(CONFIG_MACH_VSCOM_BALTOS)                 += vscom-baltos/
> > >  obj-$(CONFIG_MACH_QEMU_VIRT64)                     += qemu-virt64/
> > >  obj-$(CONFIG_MACH_WARP7)                   += element14-warp7/
> > >  obj-$(CONFIG_MACH_VF610_TWR)                       += freescale-vf610-twr/
> > > +obj-$(CONFIG_MACH_ZII_RDU1)                        += zii-imx51-rdu1/
> > >  obj-$(CONFIG_MACH_ZII_RDU2)                        += zii-imx6q-rdu2/
> > >  obj-$(CONFIG_MACH_ZII_VF610_DEV)           += zii-vf610-dev/
> > diff --git a/arch/arm/boards/zii-imx51-rdu1/Makefile b/arch/arm/boards/zii-imx51-rdu1/Makefile
> > new file mode 100644
> > index 000000000..01c7a259e
> > --- /dev/null
> > +++ b/arch/arm/boards/zii-imx51-rdu1/Makefile
> > @@ -0,0 +1,2 @@
> > +obj-y += board.o
> > +lwl-y += lowlevel.o
> > diff --git a/arch/arm/boards/zii-imx51-rdu1/board.c b/arch/arm/boards/zii-imx51-rdu1/board.c
> > new file mode 100644
> > index 000000000..5e8f96ebd
> > --- /dev/null
> > +++ b/arch/arm/boards/zii-imx51-rdu1/board.c
> > @@ -0,0 +1,38 @@
> > +/*
> > + * Copyright (C) 2015 Nikita Yushchenko, CogentEmbedded, Inc
> > + * Copyright (C) 2015 Andrey Gusakov, CogentEmbedded, Inc
> > + * Copyright (C) 2007 Sascha Hauer, Pengutronix
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
> > + *
> > + *
> > + */
> > +
> > +#define pr_fmt(fmt) "zii-rdu1: " fmt
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <mach/bbu.h>
> > +
> > +static int zii_rdu1_init(void)
> > +{
> > > +   if (!of_machine_is_compatible("zii,imx51-rdu1"))
> > > +           return 0;
> > +
> > > +   barebox_set_hostname("rdu1");
> > +
> > > +   imx51_bbu_internal_mmc_register_handler("mmc", "/dev/mmc0", 0);
> > > +   imx51_bbu_internal_spi_i2c_register_handler("spi",
> > > +                                               "/dev/dataflash0.barebox",
> > +                                                 BBU_HANDLER_FLAG_DEFAULT);
>
> Did you test that this works? The Barebox partition has an offset and
> according the RM the BootROM looks at a specific location for the image
> header, so I think the Barebox image needs to be truncated for this to
> work.
>

No, missed this one, sorry. I'll drop this code until we figure out a
way to make it work with the least amount of hacks.

> Regards,
> Lucas
>
> > +     return 0;
> > +}
> > +coredevice_initcall(zii_rdu1_init);
> > \ No newline at end of file
>
> Please add the newline.

Sure.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
