Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ob0-f177.google.com ([209.85.214.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TPjuV-00063a-Sd
 for barebox@lists.infradead.org; Sun, 21 Oct 2012 01:01:00 +0000
Received: by mail-ob0-f177.google.com with SMTP id wd20so1502333obb.36
 for <barebox@lists.infradead.org>; Sat, 20 Oct 2012 18:00:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1350645021.3484.14.camel@lws-weitzel>
References: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
 <1349736924-24667-15-git-send-email-vicencb@gmail.com>
 <1350645021.3484.14.camel@lws-weitzel>
Date: Sun, 21 Oct 2012 03:00:55 +0200
Message-ID: <CAAMcf8AymQQ6oXJJfFgAkm4oKkMyZfuczq+7y7MrPA5gOUYjbg@mail.gmail.com>
From: vj <vicencb@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 14/14] Add support for Archos G9 tablet
To: J.Weitzel@phytec.de
Cc: barebox@lists.infradead.org

On Fri, Oct 19, 2012 at 1:10 PM, Jan Weitzel <J.Weitzel@phytec.de> wrote:
>> diff --git a/arch/arm/boards/archosg9/lowlevel.c b/arch/arm/boards/archosg9/lowlevel.c
>> new file mode 100644
>> index 0000000..fa5be1d
>> --- /dev/null
>> +++ b/arch/arm/boards/archosg9/lowlevel.c
>> @@ -0,0 +1,79 @@
>> +/*
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
>> +
>> +#include <common.h>
>> +#include <io.h>
>> +#include <init.h>
>> +#include <mach/omap4-mux.h>
>> +#include <mach/omap4-silicon.h>
>> +#include <mach/omap4-clock.h>
>> +#include <mach/syslib.h>
>> +#include <asm/barebox-arm.h>
>> +#include <asm/barebox-arm-head.h>
>> +#include "mux.h"
>> +
>> +#define TPS62361_VSEL0_GPIO    7
>> +
>> +static const struct ddr_regs ddr_regs_400_mhz_2cs = {
>> +     .tim1         = 0x10EB0662,
>> +     .tim2         = 0x20370DD2,
>> +     .tim3         = 0x00B1C33F,
>> +     .phy_ctrl_1   = 0x849FF408,
>> +     .ref_ctrl     = 0x00000618,
>> +     .config_init  = 0x80000EB9,
>> +     .config_final = 0x80001AB9,
>> +     .zq_config    = 0xD00B3215,
>> +     .mr1          = 0x83,
>> +     .mr2          = 0x4
>> +};
>> +
>> +static noinline void archosg9_init_lowlevel(void)
>> +{
>> +     struct dpll_param core = OMAP4_CORE_DPLL_PARAM_19M2_DDR400;
>> +     struct dpll_param mpu = OMAP4_MPU_DPLL_PARAM_19M2_MPU600;
> This if OPP100 for 4430, for 4460 OPP100 defines 700MHz.
>> +     struct dpll_param iva = OMAP4_IVA_DPLL_PARAM_19M2;
>> +     struct dpll_param per = OMAP4_PER_DPLL_PARAM_19M2;
>> +     struct dpll_param abe = OMAP4_ABE_DPLL_PARAM_19M2;
>> +     struct dpll_param usb = OMAP4_USB_DPLL_PARAM_19M2;
>> +
>> +     writel(CM_SYS_CLKSEL_19M2, CM_SYS_CLKSEL);
>> +
>> +     /* Configure all DPLL's at 100% OPP */
>> +     omap4_configure_mpu_dpll(&mpu);
>> +     omap4_configure_iva_dpll(&iva);
>> +     omap4_configure_per_dpll(&per);
>> +     omap4_configure_abe_dpll(&abe);
>> +     omap4_configure_usb_dpll(&usb);
>> +
>> +     /* Enable all clocks */
>> +     omap4_enable_all_clocks();
>> +
>> +     set_muxconf_regs();
>> +
>> +     omap4_ddr_init(&ddr_regs_400_mhz_2cs, &core);
>> +
>> +     /* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
>> +     omap4_scale_vcores(TPS62361_VSEL0_GPIO);
> According to TIs DM the sequence for going into a higher OPP is to first
> raise the voltage. I saw this is also wrong on pandaboard.
> They also say rise core freq before mpu freq so the order should be
> omap4_scale_vcores
> omap4_ddr_init
> omap4_configure_mpu_dpll
>
> I'll fix and test the order on PCM049
>
> Jan

The only way I could make it work on archosG9 is with this order:
  set_muxconf_regs();
  writel(CM_SYS_CLKSEL_19M2, CM_SYS_CLKSEL);
  omap4_enable_all_clocks();
  omap4_scale_vcores(TPS62361_VSEL0_GPIO);
  omap4_ddr_init(&ddr_regs_400_mhz_2cs, &core);
  omap4_configure_mpu_dpll(&mpu);
  ...

Is this correct? That is, enable_all_clocks can be done before scale_vcores?
It will depend on the default clock frequencies, I think.

Vicente

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
