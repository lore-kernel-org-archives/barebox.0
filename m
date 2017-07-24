Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ua0-x243.google.com ([2607:f8b0:400c:c08::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dZiu3-0008TS-Bj
 for barebox@lists.infradead.org; Mon, 24 Jul 2017 19:20:29 +0000
Received: by mail-ua0-x243.google.com with SMTP id 80so10440921uas.4
 for <barebox@lists.infradead.org>; Mon, 24 Jul 2017 12:20:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170724155915.GB18294@ravnborg.org>
References: <20170724145400.2279-1-andrew.smirnov@gmail.com>
 <20170724145400.2279-10-andrew.smirnov@gmail.com>
 <20170724155915.GB18294@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 24 Jul 2017 12:20:04 -0700
Message-ID: <CAHQ1cqFONQFNOsm4qg5AsMsHi_UH630g=5+o+46oe9yYePRwmw@mail.gmail.com>
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
To: Sam Ravnborg <sam@ravnborg.org>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Jul 24, 2017 at 8:59 AM, Sam Ravnborg <sam@ravnborg.org> wrote:
> Hi Andrey.
>
> On Mon, Jul 24, 2017 at 07:54:00AM -0700, Andrey Smirnov wrote:
>> Add minimal code to support NXP i.MX7 SABRESD board. Tested to have
>> working SD card and first Ethernet port as well as being able to boot
>> upstream Linux kernel (4.12+).
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  arch/arm/boards/Makefile                           |  1 +
>>  arch/arm/boards/freescale-mx7-sabresd/Makefile     |  3 +
>>  arch/arm/boards/freescale-mx7-sabresd/board.c      | 59 ++++++++++++++++
>>  .../flash-header-mx7-sabresd.imxcfg                | 79 ++++++++++++++++++++++
>>  arch/arm/boards/freescale-mx7-sabresd/lowlevel.c   | 46 +++++++++++++
>>  arch/arm/dts/Makefile                              |  2 +-
>>  arch/arm/dts/imx7d-sdb.dts                         | 70 +++++++++++++++++++
>>  arch/arm/mach-imx/Kconfig                          |  7 ++
>>  images/Makefile.imx                                |  5 ++
>>  9 files changed, 271 insertions(+), 1 deletion(-)
>>  create mode 100644 arch/arm/boards/freescale-mx7-sabresd/Makefile
>>  create mode 100644 arch/arm/boards/freescale-mx7-sabresd/board.c
>>  create mode 100644 arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
>>  create mode 100644 arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
>>  create mode 100644 arch/arm/dts/imx7d-sdb.dts
>>
>> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
>> index 9bbdd684f..295a362bd 100644
>> --- a/arch/arm/boards/Makefile
>> +++ b/arch/arm/boards/Makefile
>> @@ -148,3 +148,4 @@ obj-$(CONFIG_MACH_WARP7)                  += element14-warp7/
>>  obj-$(CONFIG_MACH_VF610_TWR)                 += freescale-vf610-twr/
>>  obj-$(CONFIG_MACH_ZII_RDU2)                  += zii-imx6q-rdu2/
>>  obj-$(CONFIG_MACH_ZII_VF610_DEV)             += zii-vf610-dev/
>> +obj-$(CONFIG_MACH_FREESCALE_MX7_SABRESD)     += freescale-mx7-sabresd/
> Other entries in this file looks like they are sorted after the CONFIG_ name,
> so add this entry also in alphabetical order.
>
>
>> +++ b/arch/arm/boards/freescale-mx7-sabresd/board.c
>> @@ -0,0 +1,59 @@
>> +/*
>> + * Copyright (C) 2016 Zodiac Inflight Innovation
> Nitpick - 2016 or 2017?
>

Oops, copied from another source file that was done in 2016. Will fix.

>> + * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
>> + *
>> + * This program is free software; you can redistribute it and/or
>> + * modify it under the terms of the GNU General Public License as
>> + * published by the Free Software Foundation; either version 2 of
>> + * the License, or (at your option) any later version.
>> + *
>> + * This program is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> + * GNU General Public License for more details.
>> + */
> Should this file use the SPDX thingy used for licenses?
>

Not sure, I don't think it's being used anywhere

>> +
>> +#include <common.h>
>> +#include <init.h>
>> +#include <io.h>
>> +#include <mach/imx7-regs.h>
>> +#include <linux/phy.h>
>> +#include <mfd/imx7-iomuxc-gpr.h>
>> +
>> +#define PHY_ID_BCM54220 0x600d8589
> This define belongs in a header file as it may be used by more than one board.
> In the kernel it is in: arch/arm/mach-imx/mach-imx7d.c
> Not a header file, but a common imx7d file.
>

That's not really the case for a large number of PHY fixups for i.MX
boards (a lot of them re-define those constants), but it's pretty
trivial to move it out to a header file, so will do in v2.

>> +static int mx7_sabresd_coredevices_init(void)
>> +{
>> +     if (!of_machine_is_compatible("fsl,imx7d-sdb"))
>> +             return 0;
>> +
>> +     phy_register_fixup_for_uid(PHY_ID_BCM54220, 0xffffffff,
>> +                                bcm54220_phy_fixup);
>> +
>> +     return 0;
>> +}
>> +coredevice_initcall(mx7_sabresd_coredevices_init);
>
> I fail to grasp why we shall test for:
>
>> +     if (!of_machine_is_compatible("fsl,imx7d-sdb"))
>> +             return 0;
>
> It will in this case prevent us from calling
> phy_register_fixup_for_uid() but not the other board specific setup.
>
> And "return 0" will not signal any error.
> The documentation suggest to add the above in a function
> called by device_initcall(foo) - but I assume this is not relevant.
> I likely just shows my ignorance towards multi-image support...
>

Other boards specific code not protected by the same idiom is a
mistake on my part and all of the initcall code should be guarded this
way. Will fix in v2.

The purpose of that is to make sure that the following initialization
steps would be executed only for i.MX7 SabreSD boards in multi-image
environment, because multi-image binaries execute all of the initcalls
registered for every board that they support.


>> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
>> index d8abe452b..603d88922 100644
>> --- a/arch/arm/dts/Makefile
>> +++ b/arch/arm/dts/Makefile
>> @@ -99,6 +99,6 @@ pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
>>       vf610-zii-scu4-aib-rev-c.dtb.o
>>
>>  pbl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
>> -
>> +pbl-dtb-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += imx7d-sdb.dtb.o
> In this file entries are also sorted alpabetically by their CONFIG_ names.
> The last one (CONFIG_MACH_AT91SAM9X5EK) is not, but blame whoever
> reviewed the patch that added this entry.
>

I'll re-arrange both to be alphabetical in v2.

>         Sam
>>
>> +config MACH_FREESCALE_MX7_SABRESD
>> +     bool "NXP i.MX7 SabreSD Board"
>> +     select ARCH_IMX7
>> +     # Nedded to de-assert reset on Ethernet PHY
>> +     select DRIVER_SPI_GPIO if DRIVER_NET_FEC_IMX
>> +     select GPIO_74164 if DRIVER_NET_FEC_IMX
>
> A small help text that introduces the board (maybe with an URL) would be nice.
>

Sure. Coming in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
