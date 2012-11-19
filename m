Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TaOAY-0005OY-19
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 10:01:35 +0000
Received: from mail606.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 504E7DC2EB0
 for <barebox@lists.infradead.org>; Mon, 19 Nov 2012 11:09:12 +0100 (CET)
Date: Mon, 19 Nov 2012 10:59:29 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121119095929.GH8327@game.jcrosoft.org>
References: <20121116175355.GB8327@game.jcrosoft.org>
 <1353088545-19406-1-git-send-email-plagnioj@jcrosoft.com>
 <1353088545-19406-2-git-send-email-plagnioj@jcrosoft.com>
 <20121119093613.GI10369@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121119093613.GI10369@pengutronix.de>
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
Subject: Re: [PATCH 2/7] watchdog: add at91sam9 watchdog support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:36 Mon 19 Nov     , Sascha Hauer wrote:
> 
> On Fri, Nov 16, 2012 at 06:55:40PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > with keep alive support
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/watchdog/Kconfig        |    7 +++
> >  drivers/watchdog/Makefile       |    1 +
> >  drivers/watchdog/at91sam9_wdt.c |  131 +++++++++++++++++++++++++++++++++++++++
> >  drivers/watchdog/at91sam9_wdt.h |   38 ++++++++++++
> >  4 files changed, 177 insertions(+)
> >  create mode 100644 drivers/watchdog/at91sam9_wdt.c
> >  create mode 100644 drivers/watchdog/at91sam9_wdt.h
> > 
> > diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> > index 21480a1..5bd1083 100644
> > --- a/drivers/watchdog/Kconfig
> > +++ b/drivers/watchdog/Kconfig
> > @@ -7,6 +7,13 @@ menuconfig WATCHDOG
> >  
> >  if WATCHDOG
> >  
> > +config WATCHDOG_AT91SAM9X
> > +	tristate "AT91SAM9X / AT91CAP9 watchdog"
> > +	depends on ARCH_AT91
> > +	help
> > +	  Watchdog timer embedded into AT91SAM9X and AT91CAP9 chips. This will
> > +	  reboot your system when the timeout is reached.
> > +
> >  config WATCHDOG_MXS28
> >  	bool "i.MX28"
> >  	depends on ARCH_IMX28
> > diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
> > index b29103b..4e863a5 100644
> > --- a/drivers/watchdog/Makefile
> > +++ b/drivers/watchdog/Makefile
> > @@ -1,2 +1,3 @@
> >  obj-$(CONFIG_WATCHDOG) += wd_core.o
> > +obj-$(CONFIG_WATCHDOG_AT91SAM9X) += at91sam9_wdt.o
> >  obj-$(CONFIG_WATCHDOG_MXS28) += im28wd.o
> > diff --git a/drivers/watchdog/at91sam9_wdt.c b/drivers/watchdog/at91sam9_wdt.c
> > new file mode 100644
> > index 0000000..203d83a
> > --- /dev/null
> > +++ b/drivers/watchdog/at91sam9_wdt.c
> > @@ -0,0 +1,131 @@
> > +/*
> > + * (c) 2012 Juergen Beisert <kernel@pengutronix.de>
> 
> Juergen Beisert?
> 
> > + *
> > + * This program is free software; you can redistribute it and/or modify
> > + * it under the terms of the GNU General Public License as published by
> > + * the Free Software Foundation; either version 2 of the License, or
> > + * (at your option) any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + * Note: this driver works for the i.MX28 SoC. It might work for the
> > + * i.MX23 Soc as well, but is not tested yet.
> 
> This might work on i.MX23?
> 
> > +
> > +static void at91sam9_wdt_keep_alive(struct watchdog *wdt)
> > +{
> > +	struct at91sam9_wdt *at91wdt = to_at91sam9_wdt(wdt);
> > +
> > +	wdt_write(at91wdt, AT91_WDT_CR, AT91_WDT_KEY | AT91_WDT_WDRSTT);
> > +}
> > +
> > +static int at91sam9_wdt_settimeout(struct watchdog *wdt, unsigned int timeout)
> > +{
> > +	struct at91sam9_wdt *at91wdt = to_at91sam9_wdt(wdt);
> > +	unsigned int reg;
> > +	unsigned int mr;
> > +
> > +	/* Check if disabled */
> > +	mr = wdt_read(at91wdt, AT91_WDT_MR);
> > +	if (mr & AT91_WDT_WDDIS) {
> > +		pr_err("sorry, watchdog is disabled\n");
> > +		return -EIO;
> > +	}
> > +
> > +	if (!timeout) {
> > +		wdt_write(at91wdt, AT91_WDT_MR, AT91_WDT_WDDIS);
> > +		return 0;
> > +	}
> > +
> > +	/*
> > +	 * All counting occurs at SLOW_CLOCK / 128 = 256 Hz
> > +	 *
> > +	 * Since WDV is a 12-bit counter, the maximum period is
> > +	 * 4096 / 256 = 16 seconds.
> > +	 */
> > +	reg = AT91_WDT_WDRSTEN	/* causes watchdog reset */
> > +		/* | AT91_WDT_WDRPROC	causes processor reset only */
> > +		| AT91_WDT_WDDBGHLT	/* disabled in debug mode */
> > +		| AT91_WDT_WDD		/* restart at any time */
> > +		| (timeout & AT91_WDT_WDV);  /* timer value */
> > +	wdt_write(at91wdt, AT91_WDT_MR, reg);
> 
> This driver does not work like the watchdog API is supposed to work. It
> currently works in the way that the watchdog command calls the
> settimeout callback to keep the watchdog alive, hence we do not need
> an explicit keepalive callback. Whether this API is good is debatable,
> but this patch violates it and renders the watchdog command useless.
The watchdod commad just need to enable the watchdog/change the timeout or
diabled 

the rest need to be automatic

so we need to fix the API

because I can not add wd command in long nfs or tftp transfert

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
