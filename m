Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TJjGZ-0002nT-Vd
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 11:06:56 +0000
Date: Thu, 4 Oct 2012 13:06:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121004110653.GH1322@pengutronix.de>
References: <1349348135-509-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349348135-509-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1 v2] arm: add generic smp twd timer
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 04, 2012 at 12:55:35PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> on Cortex A9 and Cortex A5 we have a generic timer which we can use as
> clocksource
> 
> Limit the timer frequency to < 25Mhz
> 
> +	return ~readl(twd_base + TWD_TIMER_COUNTER);
> +}
> +
> +static struct clocksource smp_twd_clksrc = {
> +	.read	= smp_twd_read,
> +	.shift	= 20,
> +	.mask	= CLOCKSOURCE_MASK(32),
> +};
> +
> +#define SMP_TWD_MAX_FREQ (25 *1000 * 1000)
> +
> +static int smp_twd_probe(struct device_d *dev)
> +{
> +	u32 tick_rate;
> +	u32 val;
> +	int ret;
> +	u32 presc = 0;
> +
> +	twd_clk = clk_get(dev, NULL);
> +	if (IS_ERR(twd_clk)) {
> +		ret = PTR_ERR(twd_clk);
> +		dev_err(dev, "clock not found: %d\n", ret);

Still do you really really want to bloat the binary with such strings?
This message will only ever be seen by developers. I would find it much
more useful to turn this into dev_dbg and instead add a dev_err in the
driver code when a device fails to probe. That would give a developer
enough hints to know where to increase the debug level.

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
