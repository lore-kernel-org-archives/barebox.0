Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwO5w-0004Iy-NY
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 09:23:14 +0000
Date: Wed, 20 Feb 2019 10:23:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190220092310.u2wlf3ewxaxoeyhj@pengutronix.de>
References: <20190219172150.11901-1-a.fatoum@pengutronix.de>
 <20190219172150.11901-8-a.fatoum@pengutronix.de>
 <20190220092032.qgmere6l5haeqlyb@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190220092032.qgmere6l5haeqlyb@pengutronix.de>
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
Subject: Re: [PATCH v2 07/16] ARM: at91: import early_udelay from at91bootstrap
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 20, 2019 at 10:20:32AM +0100, Sascha Hauer wrote:
> On Tue, Feb 19, 2019 at 06:21:41PM +0100, Ahmad Fatoum wrote:
> > For use by the incoming at91bootstrap DDRAMC initialization code,
> > this commit provides an early_udelay function usable in PBL imported from
> > https://github.com/linux4sam/at91bootstrap/blob/v3.8.12/driver/at91_pit.c
> > 
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > ---
> >  arch/arm/mach-at91/Makefile                   |  1 +
> >  arch/arm/mach-at91/early_udelay.c             | 53 +++++++++++++++++++
> >  .../include/mach/at91_lowlevel_clock.h        |  9 ++++
> >  .../arm/mach-at91/include/mach/early_udelay.h | 13 +++++
> >  4 files changed, 76 insertions(+)
> >  create mode 100644 arch/arm/mach-at91/early_udelay.c
> >  create mode 100644 arch/arm/mach-at91/include/mach/early_udelay.h
> > 
> > diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
> > index 7c4c58b080a1..b8ff6428d05a 100644
> > --- a/arch/arm/mach-at91/Makefile
> > +++ b/arch/arm/mach-at91/Makefile
> > @@ -1,5 +1,6 @@
> >  obj-y += setup.o
> >  pbl-y += lowlevel_clock.o
> > +pbl-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += early_udelay.o
> >  
> >  ifeq ($(CONFIG_COMMON_CLK_OF_PROVIDER),)
> >  obj-y += clock.o
> > diff --git a/arch/arm/mach-at91/early_udelay.c b/arch/arm/mach-at91/early_udelay.c
> > new file mode 100644
> > index 000000000000..fb8d8bba5434
> > --- /dev/null
> > +++ b/arch/arm/mach-at91/early_udelay.c
> > @@ -0,0 +1,53 @@
> > +// SPDX-License-Identifier: BSD-1-Clause
> > +/*
> > + * Copyright (c) 2012, Atmel Corporation
> > + */
> > +
> > +#include <mach/hardware.h>
> > +#include <asm/io.h>
> > +#include <mach/at91_lowlevel_clock.h>
> > +#include <mach/at91_pit.h>
> > +#include <mach/early_udelay.h>
> > +
> > +static unsigned int master_clock;
> > +static void __iomem *pmc, *pit;
> > +
> > +/* Because the below statement is used in the function:
> > + *	((MASTER_CLOCK >> 10) * usec) is used,
> > + * to our 32-bit system. the argu "usec" maximum value is:
> > + * supposed "MASTER_CLOCK" is 132M.
> > + *	132000000 / 1024 = 128906
> > + *	(0xffffffff) / 128906 = 33318.
> > + * So the maximum delay time is 33318 us.
> > + */
> > +/* requires PIT to be initialized, but not the clocksource framework */
> > +void early_udelay(unsigned int usec)
> > +{
> > +	unsigned int delay;
> > +	unsigned int current;
> > +	unsigned int base = readl(pit + AT91_PIT_PIIR);
> > +
> > +	if (at91_pmc_check_mck_h32mxdiv(pmc))
> > +		master_clock /= 2;
> > +
> > +	delay = ((master_clock >> 10) * usec) >> 14;
> > +
> > +	do {
> > +		current = readl(pit + AT91_PIT_PIIR);
> > +		current -= base;
> > +	} while (current < delay);
> > +}
> > +
> > +void early_udelay_init(void __iomem *pmc_base,
> > +		       void __iomem *pit_base,
> > +		       unsigned clock,
> > +		       unsigned int master_clock_rate)
> > +{
> > +	master_clock = master_clock_rate;
> > +	pmc = pmc_base;
> > +	pit = pit_base;
> > +
> > +	writel(AT91_PIT_PIV | AT91_PIT_PITEN, pit + AT91_PIT_MR);
> > +
> > +	at91_pmc_enable_periph_clock(pmc_base, clock);
> > +}
> > diff --git a/arch/arm/mach-at91/include/mach/at91_lowlevel_clock.h b/arch/arm/mach-at91/include/mach/at91_lowlevel_clock.h
> > index 8d04e30b644b..e4bdaade740c 100644
> > --- a/arch/arm/mach-at91/include/mach/at91_lowlevel_clock.h
> > +++ b/arch/arm/mach-at91/include/mach/at91_lowlevel_clock.h
> > @@ -9,6 +9,7 @@
> >  #include <errno.h>
> >  #include <asm/io.h>
> >  #include <mach/at91_pmc.h>
> > +#include <linux/types.h>
> >  
> >  void at91_lowlevel_clock_init(void __iomem *pmc_base);
> >  void at91_pmc_cfg_mck(void __iomem *pmc_base, u32 pmc_mckr);
> > @@ -40,4 +41,12 @@ static inline int at91_pmc_enable_periph_clock(void __iomem *pmc_base,
> >  	return 0;
> >  }
> >  
> > +static inline bool at91_pmc_check_mck_h32mxdiv(void __iomem *pmc_base)
> > +{
> > +	if (IS_ENABLED(CONFIG_HAVE_AT91_H32MX))
> > +		return readl(pmc_base + AT91_PMC_MCKR) & AT91_PMC_H32MXDIV;
> 
> Okay, here's another build time dependency on the SoC type. In this case
> early_udelay_init() would need a flag whether to apply this additional
> divider or not. Even better create SoC specific variants of
> early_udelay_init() to make it more convenient for the caller.

Another thing worth considering: The accuracy of early_udelay is
probably not critical. Maybe you could in doubt simply use the longer
delay.

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
