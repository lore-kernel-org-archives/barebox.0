Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UBvcx-0003rb-R5
 for barebox@lists.infradead.org; Sat, 02 Mar 2013 23:14:04 +0000
Message-ID: <1362266024.2127.3.camel@antimon>
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 03 Mar 2013 00:13:44 +0100
In-Reply-To: <20130301172353.GT1906@pengutronix.de>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
 <1362129773-4579-7-git-send-email-dev@lynxeye.de>
 <20130301172353.GT1906@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Freitag, den 01.03.2013, 18:23 +0100 schrieb Sascha Hauer:
> On Fri, Mar 01, 2013 at 10:22:52AM +0100, Lucas Stach wrote:
> > Replace the ad-hoc clocksource implementation with a proper driver for
> > the Tegra 20 timer. This driver is able to do the required hardware
> > initialisation itself.
> > 
> > +
> > +static int tegra20_timer_probe(struct device_d *dev)
> > +{
> > +	struct clk *timer_clk;
> > +	unsigned long rate;
> > +
> > +	/* use only one timer */
> > +	if (timer_base)
> > +		return -EBUSY;
> > +
> > +	timer_base = dev_request_mem_region(dev, 0);
> > +	if (!timer_base) {
> > +		dev_err(dev, "could not get memory region\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	timer_clk = clk_get(dev, NULL);
> > +	if (!timer_clk) {
> > +		dev_err(dev, "could not get clock\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	clk_enable(timer_clk);
> > +
> > +	/*
> > +	 * calibrate timer to run at 1MHz
> 
> We don't need the timer to be running at a certain frequency, you can
> just use clocks_calc_mult_shift to calculate the correct values from
> whatever frequency.

Other hardware blocks like the flow controller might assume the timer to
be running at 1MHz. The timer and time register is named US (like usec)
for a reason. It's the officially correct way to initialize this timer
(as documented in the Tegra TRM).

Regards,
Lucas



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
