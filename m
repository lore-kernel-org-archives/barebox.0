Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UBTgZ-0007Vq-66
 for barebox@lists.infradead.org; Fri, 01 Mar 2013 17:23:55 +0000
Date: Fri, 1 Mar 2013 18:23:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130301172353.GT1906@pengutronix.de>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
 <1362129773-4579-7-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362129773-4579-7-git-send-email-dev@lynxeye.de>
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
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 01, 2013 at 10:22:52AM +0100, Lucas Stach wrote:
> Replace the ad-hoc clocksource implementation with a proper driver for
> the Tegra 20 timer. This driver is able to do the required hardware
> initialisation itself.
> 
> +
> +static int tegra20_timer_probe(struct device_d *dev)
> +{
> +	struct clk *timer_clk;
> +	unsigned long rate;
> +
> +	/* use only one timer */
> +	if (timer_base)
> +		return -EBUSY;
> +
> +	timer_base = dev_request_mem_region(dev, 0);
> +	if (!timer_base) {
> +		dev_err(dev, "could not get memory region\n");
> +		return -ENODEV;
> +	}
> +
> +	timer_clk = clk_get(dev, NULL);
> +	if (!timer_clk) {
> +		dev_err(dev, "could not get clock\n");
> +		return -ENODEV;
> +	}
> +
> +	clk_enable(timer_clk);
> +
> +	/*
> +	 * calibrate timer to run at 1MHz

We don't need the timer to be running at a certain frequency, you can
just use clocks_calc_mult_shift to calculate the correct values from
whatever frequency.

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
