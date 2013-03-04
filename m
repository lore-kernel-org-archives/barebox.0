Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCYtO-0003ZS-Jn
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 17:09:42 +0000
Message-ID: <1362416972.1957.3.camel@antimon>
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 04 Mar 2013 18:09:32 +0100
In-Reply-To: <CAA4bVAGCm2Bh+VBxk3bP83RnSgk3PBHKXdbJa+ShgQxm=_Nr=g@mail.gmail.com>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
 <1362129773-4579-7-git-send-email-dev@lynxeye.de>
 <20130301172353.GT1906@pengutronix.de> <1362266024.2127.3.camel@antimon>
 <CAA4bVAGCm2Bh+VBxk3bP83RnSgk3PBHKXdbJa+ShgQxm=_Nr=g@mail.gmail.com>
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
Subject: Re: [PATCH 6/7] tegra: add proper timer driver
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Am Sonntag, den 03.03.2013, 11:07 +0400 schrieb Antony Pavlov:
> On 3 March 2013 03:13, Lucas Stach <dev@lynxeye.de> wrote:
> > Am Freitag, den 01.03.2013, 18:23 +0100 schrieb Sascha Hauer:
> >> On Fri, Mar 01, 2013 at 10:22:52AM +0100, Lucas Stach wrote:
> >> > Replace the ad-hoc clocksource implementation with a proper driver for
> >> > the Tegra 20 timer. This driver is able to do the required hardware
> >> > initialisation itself.
> >> >
> >> > +
> >> > +static int tegra20_timer_probe(struct device_d *dev)
> >> > +{
> >> > +   struct clk *timer_clk;
> >> > +   unsigned long rate;
> >> > +
> >> > +   /* use only one timer */
> >> > +   if (timer_base)
> >> > +           return -EBUSY;
> >> > +
> >> > +   timer_base = dev_request_mem_region(dev, 0);
> >> > +   if (!timer_base) {
> >> > +           dev_err(dev, "could not get memory region\n");
> >> > +           return -ENODEV;
> >> > +   }
> >> > +
> >> > +   timer_clk = clk_get(dev, NULL);
> >> > +   if (!timer_clk) {
> >> > +           dev_err(dev, "could not get clock\n");
> >> > +           return -ENODEV;
> >> > +   }
> >> > +
> >> > +   clk_enable(timer_clk);
> >> > +
> >> > +   /*
> >> > +    * calibrate timer to run at 1MHz
> >>
> >> We don't need the timer to be running at a certain frequency, you can
> >> just use clocks_calc_mult_shift to calculate the correct values from
> >> whatever frequency.
> >
> > Other hardware blocks like the flow controller might assume the timer to
> > be running at 1MHz. The timer and time register is named US (like usec)
> > for a reason. It's the officially correct way to initialize this timer
> > (as documented in the Tegra TRM).
> 
> IMHO, then Jean-Christophe speaking about 'just use
> clocks_calc_mult_shift'  he mean this part of your
> arch/arm/mach-tegra/tegra20-timer.c:
> 
> +static struct clocksource cs = {
> +       .read   = tegra20_timer_cs_read,
> +       .mask   = CLOCKSOURCE_MASK(32),
> +       .mult   = 1000,
> +};
> 
> He want to say "please don't use fixed 'mult' value, use
> clocks_calc_mult_shift to calculate it".
> 
> Please try to examine existing clocksources.
> 
> The command
>    grep -R -A 5 "static struct clocksource.*=" arch/arm/
> will show you some results like this
> 
> arch/arm/mach-imx/clocksource.c:static struct clocksource cs = {
> arch/arm/mach-imx/clocksource.c-        .read   = imx_clocksource_read,
> arch/arm/mach-imx/clocksource.c-        .mask   = CLOCKSOURCE_MASK(32),
> arch/arm/mach-imx/clocksource.c-        .shift  = 10,
> arch/arm/mach-imx/clocksource.c-};
> 
> or even like that
> arch/arm/mach-clps711x/clock.c:static struct clocksource cs = {
> arch/arm/mach-clps711x/clock.c- .read   = clocksource_read,
> arch/arm/mach-clps711x/clock.c- .mask   = CLOCKSOURCE_MASK(16),
> arch/arm/mach-clps711x/clock.c-};
> 
> But I can't find any example of 'struct clocksource' definition with
> fixed 'mult' value.
> 

I've looked at other clocksource drivers before implementing the Tegra
one and it's right that all other clocksources calculate the mult at
runtime. But as the Tegra clocksource is guaranteed to run at 1MHz at
every point in time I don't really see any benefit of calculating the
mult over just having it as static init data.

Is there anything I'm missing?

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
