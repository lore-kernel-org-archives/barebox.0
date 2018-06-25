Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x241.google.com ([2607:f8b0:4001:c0b::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXU65-0007kW-L5
 for barebox@lists.infradead.org; Mon, 25 Jun 2018 16:12:12 +0000
Received: by mail-it0-x241.google.com with SMTP id u4-v6so13247485itg.0
 for <barebox@lists.infradead.org>; Mon, 25 Jun 2018 09:11:58 -0700 (PDT)
MIME-Version: 1.0
References: <20180620192430.16689-1-andrew.smirnov@gmail.com>
 <20180620192430.16689-5-andrew.smirnov@gmail.com>
 <1529917380.9910.2.camel@pengutronix.de>
In-Reply-To: <1529917380.9910.2.camel@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 25 Jun 2018 09:11:45 -0700
Message-ID: <CAHQ1cqEMipPPqTvVFPO4YYCB7ojNmh8Jq6Lcem8e7UMrKU83mQ@mail.gmail.com>
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
Subject: Re: [PATCH v2 4/4] ARM: i.MX: Add support for ZII RDU1 board
To: l.stach@pengutronix.de
Cc: nikita.yoush@cogentembedded.com, barebox@lists.infradead.org, cphealy@gmail.com

On Mon, Jun 25, 2018 at 2:03 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi Andrey,
>
> Am Mittwoch, den 20.06.2018, 12:24 -0700 schrieb Andrey Smirnov:
> > ZII RDU1 is a i.MX51 based, Babbage board derivative supported by
> > upstream kernel. This commit adds support for it to Barebox.
> >
> > > Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
> > > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  arch/arm/boards/Makefile                      |   1 +
> >  arch/arm/boards/zii-imx51-rdu1/Makefile       |   2 +
> >  arch/arm/boards/zii-imx51-rdu1/board.c        | 100 ++++++++++++++++++
> >  .../flash-header-imx51-zii-rdu1.imxcfg        |  60 +++++++++++
> >  arch/arm/boards/zii-imx51-rdu1/lowlevel.c     |  46 ++++++++
> >  arch/arm/configs/imx_v7_defconfig             |   1 +
> >  arch/arm/dts/Makefile                         |   1 +
> >  arch/arm/dts/imx51-zii-rdu1.dts               |  46 ++++++++
> >  arch/arm/mach-imx/Kconfig                     |   5 +
> >  images/Makefile.imx                           |   5 +
> >  10 files changed, 267 insertions(+)
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
> > index 000000000..c09285aa4
> > --- /dev/null
> > +++ b/arch/arm/boards/zii-imx51-rdu1/board.c
> > @@ -0,0 +1,100 @@
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
>
> I don't think we want that. At least we don't do it on RDU2, but I
> think Chris has an option here.
>

Sure, I'll drop it.

> > +#include <common.h>
> > +#include <init.h>
> > +#include <mach/bbu.h>
> > +#include <libfile.h>
> > +#include <mach/imx5.h>
> > +
> > > +#define ZII_RDU1_DATAFLASH         "/dev/dataflash0"
> > > +#define ZII_RDU1_DATAFLASH_CONFIG  ZII_RDU1_DATAFLASH ".config"
> > +
> > +/**
> > + * zii_rdu1_bbu_spi_update - RDU1 specific BBU handler
> > + *
> > > + * @handler:       BBU handler pointer passed down by BBU framework
> > > + * @data:  BBU data pointer passed down by BBU framework
> > + *
> > + * RDU1 design chose to use first page of the onboard dataflash to
> > + * store vendor board-specific paramters, which is problematic because
> > + * imx_bbu_internal_v1_update() will not spare that region when
> > + * peforming the update.
> > + *
> > + * This functions works as a thin wrapper around
> > + * imx_bbu_internal_v1_update() and saves the data before and restores
> > + * it after, keeping board specific data intact.
> > + */
>
> In general I like the idea of replacing the update handler in the
> board, as it shows clearly that this is some board specific quirk.
>
> I don't fully agree on the implementation of the handler though.
> Overwriting and restoring the config area still has the risk of
> destroying this data, leaving the unit in a bricked state.
>

The only info contained in config area is unit's MAC address and and
LCD panel type. Loosing this information, while inconvenient, is not
going to brick the unit. Additionally:

-  LCD type information could and is tentatively planed to be derived
from P/N information available via RAVE SP EEPROM, so that leaves us
with just MAC address.

- Config header in SPI NOR is also duplicated in SPI EEPROM connected
to i.MX51, so it can be resorted from there if need be.

- Removing this risk will do nothing to the risk of truly bricking the
unit via failed bootloader upgrade which is several orders of
magnitude more likely due to size difference of bootloader image vs
config area.

> As the config area is page aligned, there is no need to touch it at all
> (I think). All you need to do is to point the BBU target at the barebox
> partition on the dataflash and truncate the barebox image in the custom
> handler by changing data->image and data->len in the custom RDU1
> handler.
>

I'll give this approach a try since it sounds like it's going to allow
me to drop a bit of extra code, but if it doesn't I think the original
code is good enough and we should let the perfect be the enemy of the
good.

> > +static int zii_rdu1_bbu_spi_update(struct bbu_handler *handler,
> > > +                              struct bbu_data *data)
> > +{
> > > +   uint8_t *config;
> > > +   size_t size;
> > > +   int ret;
> > +
> > > +   config = read_file(ZII_RDU1_DATAFLASH_CONFIG, &size);
> > > +   if (!config)
> > > +           return -EIO;
> > +
> > > +   ret = imx_bbu_internal_v1_update(handler, data);
> > > +   if (ret < 0) {
> > > +           pr_warn("Failed to update '%s'\n", handler->name);
> > > +           /*
> > > +            * At this point we don't know what state the config
> > > +            * partition was left in, so we fall through and
> > > +            * re-write it with a known good data
> > > +            */
> > > +   }
> > +
> > > +   ret = write_file_flash(ZII_RDU1_DATAFLASH_CONFIG, config, size);
> > > +   if (ret < 0)
> > > +           return ret;
> > +
> > > +   return 0;
> > +}
> > +
> > +static int zii_rdu1_init(void)
> > +{
> > > +   struct bbu_handler *handler;
> > +
> > > +   if (!of_machine_is_compatible("zii,imx51-rdu1"))
> > > +           return 0;
> > +
> > > +   imx51_babbage_power_init();
> > +
> > > +   barebox_set_hostname("rdu1");
> > +
> > > +   imx51_bbu_internal_mmc_register_handler("mmc", "/dev/mmc0", 0);
> > > +   imx51_bbu_internal_spi_i2c_register_handler("spi",
> > > +                                               ZII_RDU1_DATAFLASH,
> > > +                                               BBU_HANDLER_FLAG_DEFAULT);
> > > +   /*
> > > +    * Overload freshly registered SPI update handler to deal with
> > > +    * RDU1 quirk (see above for description)
> > > +    */
> > > +   handler = bbu_find_handler_by_device(ZII_RDU1_DATAFLASH);
> > > +   if (WARN_ON(!handler))
> > > +           return -EINVAL;
> > +
> > > +   handler->handler = zii_rdu1_bbu_spi_update;
> > +
> > > +   return 0;
> > +}
> > +coredevice_initcall(zii_rdu1_init);
>
> [...]
>
> > diff --git a/arch/arm/boards/zii-imx51-rdu1/lowlevel.c b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
> > new file mode 100644
> > index 000000000..c28ca8653
> > --- /dev/null
> > +++ b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
> > @@ -0,0 +1,46 @@
> > +#include <debug_ll.h>
> > +#include <mach/clock-imx51_53.h>
> > +#include <mach/iomux-mx51.h>
> > +#include <common.h>
> > +#include <mach/esdctl.h>
> > +#include <mach/generic.h>
> > +#include <asm/barebox-arm-head.h>
> > +#include <asm/barebox-arm.h>
> > +
> > +static inline void setup_uart(void)
> > +{
> > > +   void __iomem *iomuxbase = IOMEM(MX51_IOMUXC_BASE_ADDR);
> > > +   void __iomem *ccmbase = IOMEM(MX51_CCM_BASE_ADDR);
> > +
> > > +   /*
> > > +    * Restore CCM values that might be changed by the Mask ROM
> > > +    * code.
> > > +    *
> > > +    * Source: RealView debug scripts provided by Freescale
> > > +    */
> > > +   writel(MX5_CCM_CBCDR_RESET_VALUE,  ccmbase + MX5_CCM_CBCDR);
> > > +   writel(MX5_CCM_CSCMR1_RESET_VALUE, ccmbase + MX5_CCM_CSCMR1);
> > > +   writel(MX5_CCM_CSCDR1_RESET_VALUE, ccmbase + MX5_CCM_CSCDR1);
> > +
> > > +   imx_setup_pad(iomuxbase, MX51_PAD_UART1_TXD__UART1_TXD);
> > +
> > > +   imx51_uart_setup_ll();
> > +
> > > +   putc_ll('>');
> > +}
> > +
> > +extern char __dtb_imx51_zii_rdu1_start[];
> > +
> > +ENTRY_FUNCTION(start_imx51_zii_rdu1, r0, r1, r2)
> > +{
> > > +   void *fdt;
> > +
> > > +   imx5_cpu_lowlevel_init();
> > +
> > > +   if (IS_ENABLED(CONFIG_DEBUG_LL))
> > > +           setup_uart();
> > +
> > > +   fdt = __dtb_imx51_zii_rdu1_start + get_runtime_offset();
> > +
> > > +   imx51_barebox_entry(fdt);
> > +}
> > \ No newline at end of file
>
> Add the newline to make git happy, please. There are more places like
> this.

Sure, will change in v3.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
