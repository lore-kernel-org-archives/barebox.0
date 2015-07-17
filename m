Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZG1kz-0002GN-N1
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 09:16:38 +0000
Message-ID: <1437124574.3498.73.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Fri, 17 Jul 2015 11:16:14 +0200
In-Reply-To: <1437036707-48320-1-git-send-email-d.schultz@phytec.de>
References: <1437036707-48320-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH v2 2/2] ARM: am335x: Changed timer
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Do, 2015-07-16 at 10:51 +0200, Daniel Schultz wrote:
> The dmtimer0 is too inaccurate to be used for measurements.
> We switch to the more accurate dmtimer2.

What are you trying to measure? Is the resolution or the accuracy too
low?

> +#define CLK_M_OSC	25000000

> +static int dmtimer_init(void)
> +{
> +	dmtimer_cs.mult = clocksource_hz2mult(CLK_M_OSC, dmtimer_cs.shift);
> +	/* Enable counter */
> +	writel(0x3, base + TCLR);
> +
> +	return init_clock(&dmtimer_cs);

You use a fixed M_OSC of 25 MHz, but this value actually depends on the
the board. The AM335x supports 19.2, 24 and 26 MHz in addition to 25
MHz.

The advantage of using dmtimer0 is that it is always available and runs
at 32KiHz on every board.

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
