Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hahw8-0003md-Dk
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 14:39:49 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23994550AbfFKOjkfU8ZY (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Tue, 11 Jun 2019 16:39:40 +0200
Date: Tue, 11 Jun 2019 16:39:39 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20190611143939.GA26816@lenoch>
References: <20190611094319.9143-1-a.fatoum@pengutronix.de>
 <20190611094319.9143-4-a.fatoum@pengutronix.de>
 <20190611121438.GA20474@lenoch>
 <5dc3d5de-fdbc-ecf3-449b-ecb8ef9d7e1e@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5dc3d5de-fdbc-ecf3-449b-ecb8ef9d7e1e@pengutronix.de>
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
Subject: Re: [PATCH v2 3/6] watchdog: add stm32 watchdog and reset driver
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 11, 2019 at 03:26:10PM +0200, Ahmad Fatoum wrote:
> On 11/6/19 14:14, Ladislav Michl wrote:
> > +static int __init at91wdt_probe(struct device_d *dev)
> > +{
> > +	u32 tmp, delta, value;
> > +	struct resource *iores;
> > +	struct at91wdt *wdt;
> > +
> > +	wdt = xzalloc(sizeof(*wdt));
> > +	if (!wdt)
> > +		return -ENOMEM;
> 
> xfuncs never fail so no need to check.

That's heavily modified kernel driver, so it is probably ok to add just
another modification and remove check :)

> > +
> > +	iores = dev_request_mem_resource(dev, 0);
> > +	if (IS_ERR(iores))
> > +		return PTR_ERR(iores);
> > +
> > +	wdt->base = IOMEM(iores->start);
> > +
> > +	tmp = wdt_read(wdt, AT91_WDT_MR);
> > +	if (tmp & AT91_WDT_WDDIS) {
> > +		dev_err(dev, "watchdog is disabled\n");
> > +		return -EINVAL;
> > +	}
> 
> This precludes the possibility of monitoring kernel boot:
> barebox enables the watchdog at boot or keeps polling till
> shortly after and then watchdog remains untouched till userspace
> comes up. The system integrator should be able to configure the
> watchdog for this scenario.

That is not how the hardware works. SoC powers up with watchdog enabled
and system integrator can only disable it or modify timeout (plus
some other here non-important settings). So if barebox-mlo (or
at91bootstrap) disable watchdog - AT91_WDT_WDDIS bit is set - we
can only bail out. There is no way to enable it again.

> > +
> > +	value = tmp & AT91_WDT_WDV;
> > +	delta = (tmp & AT91_WDT_WDD) >> 16;
> > +
> > +	wdt->wdd.timeout_max = ticks_to_secs(value);
> > +	wdt->wdd.timeout_cur = ticks_to_secs((value + delta) / 2);
> > +	wdt->wdd.set_timeout = at91_wdt_set_timeout;
> > +	wdt->wdd.poller_enable = 1;
> > +	wdt->wdd.hwdev = dev;
> 
> clock enable?

Driven by slow clock oscilator. Could be done but it fact just
makes code bigger.

> > +
> > +	return watchdog_register(&wdt->wdd);
> > +}
> > +
> > +static const struct of_device_id at91_wdt_dt_ids[] = {
> > +	{ .compatible = "atmel,at91sam9260-wdt" },
> 
> The driver can be used for the sama5d4 watchdog as well.
> 
> > +	{ /* sentinel */ }
> > +};
> > +
> > +static struct driver_d at91_wdt_driver = {
> > +	.probe		= at91wdt_probe,
> > +	.name		= "at91_wdt",
> > +	.of_compatible = DRV_OF_COMPAT(at91_wdt_dt_ids),
> > +};
> > +device_platform_driver(at91_wdt_driver);
> > diff --git a/drivers/watchdog/at91sam9_wdt.h b/drivers/watchdog/at91sam9_wdt.h
> > new file mode 100644
> > index 000000000..390941c65
> > --- /dev/null
> > +++ b/drivers/watchdog/at91sam9_wdt.h
> > @@ -0,0 +1,36 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ */
> > +/*
> > + * drivers/watchdog/at91sam9_wdt.h
> > + *
> > + * Copyright (C) 2007 Andrew Victor
> > + * Copyright (C) 2007 Atmel Corporation.
> > + *
> > + * Watchdog Timer (WDT) - System peripherals regsters.
> > + * Based on AT91SAM9261 datasheet revision D.
> > + *
> > + */
> > +
> > +#ifndef AT91_WDT_H
> > +#define AT91_WDT_H
> > +
> > +#define AT91_WDT_CR		0x00			/* Watchdog Control Register */
> > +#define		AT91_WDT_WDRSTT		(1    << 0)		/* Restart */
> > +#define		AT91_WDT_KEY		(0xa5 << 24)		/* KEY Password */
> > +
> > +#define AT91_WDT_MR		0x04			/* Watchdog Mode Register */
> > +#define		AT91_WDT_WDV		(0xfff << 0)		/* Counter Value */
> > +#define			AT91_WDT_SET_WDV(x)	((x) & AT91_WDT_WDV)
> > +#define		AT91_WDT_WDFIEN		(1     << 12)		/* Fault Interrupt Enable */
> > +#define		AT91_WDT_WDRSTEN	(1     << 13)		/* Reset Processor */
> > +#define		AT91_WDT_WDRPROC	(1     << 14)		/* Timer Restart */
> > +#define		AT91_WDT_WDDIS		(1     << 15)		/* Watchdog Disable */
> > +#define		AT91_WDT_WDD		(0xfff << 16)		/* Delta Value */
> > +#define			AT91_WDT_SET_WDD(x)	(((x) << 16) & AT91_WDT_WDD)
> > +#define		AT91_WDT_WDDBGHLT	(1     << 28)		/* Debug Halt */
> > +#define		AT91_WDT_WDIDLEHLT	(1     << 29)		/* Idle Halt */
> > +
> > +#define AT91_WDT_SR		0x08			/* Watchdog Status Register */
> > +#define		AT91_WDT_WDUNF		(1 << 0)		/* Watchdog Underflow */
> > +#define		AT91_WDT_WDERR		(1 << 1)		/* Watchdog Error */
> > +
> > +#endif
> > diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
> > index e6e5ddecd..b0f73baf7 100644
> > --- a/drivers/watchdog/wd_core.c
> > +++ b/drivers/watchdog/wd_core.c
> > @@ -97,6 +97,9 @@ static int watchdog_register_poller(struct watchdog *wd)
> >  	p = dev_add_param_bool(&wd->dev, "autoping", watchdog_set_poller,
> >  			NULL, &wd->poller_enable, wd);
> >  
> > +	wd->poller_enable = 1;
> 
> if (wd->poller_enable)
> ?

No. You can only disable watchdog and if you don't, you have to poll it. Thus
driver has to force poller, otherwise there's no point enabling watchdog
driver - driver would be reset anyway.

> > +	watchdog_poller_start(wd);
> > +
> >  	return PTR_ERR_OR_ZERO(p);
> >  }
> >  
> > 
> 
> I find the existing approach of 'have the system integrator configure it via
> the environment' to be the best approach. After all, they can just skip
> configuring the watchdog if they want Linux to initialize it, no benefit
> on enforcing this.

If you skip watchdog initialization, you have to poll it. In fact there are
only two options:
1) Disable watchdog
2) Poll it
2a) ...and eventualy reconfigure it for different timeout, but that can
    be done only once.

> (I see now I force-on the watchdog even if the PBL
> hasn't. I'll fix this). What scenarios do you have in mind that aren't
> covered by this?

Barebox has no clue whenever it starts executing with watchdog enabled or
disabled or even how is it configured. This watchdog could be already 
configured, so poll must occur in window between 0 and WDD (would you
mind reading manual?).

Thank you,
	ladis
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
