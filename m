Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvebk-0006ZP-M3
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 08:49:02 +0000
Date: Mon, 18 Feb 2019 09:48:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190218084859.kcqwqlx4ipsqpzfd@pengutronix.de>
References: <20190214133634.7669-1-tomaz.solc@tablix.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190214133634.7669-1-tomaz.solc@tablix.org>
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
Subject: Re: [PATCH] watchdog: bcm2835: set timeout_max.
To: Tomaz Solc <tomaz.solc@tablix.org>
Cc: barebox@lists.infradead.org

On Thu, Feb 14, 2019 at 02:36:34PM +0100, Tomaz Solc wrote:
> BCM2835 watchdog timeout can be set to maximum 15 seconds (0xffffff >> 16).
> ---
>  drivers/watchdog/bcm2835_wdt.c | 5 +++++
>  1 file changed, 5 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/watchdog/bcm2835_wdt.c b/drivers/watchdog/bcm2835_wdt.c
> index d0c51ed9e..781626fa0 100644
> --- a/drivers/watchdog/bcm2835_wdt.c
> +++ b/drivers/watchdog/bcm2835_wdt.c
> @@ -45,6 +45,10 @@
>  
>  #define SECS_TO_WDOG_TICKS(x) ((x) << 16)
>  
> +/* Largest value where SECS_TO_WDOG_TICKS doesn't overflow 20 bits
> + * (PM_WDOG_TIME_SET) */
> +#define WDOG_SECS_MAX 15
> +
>  struct bcm2835_wd {
>  	struct watchdog wd;
>  	void __iomem *base;
> @@ -101,6 +105,7 @@ static int bcm2835_wd_probe(struct device_d *dev)
>  	}
>  	priv->base = IOMEM(iores->start);
>  	priv->wd.set_timeout = bcm2835_wd_set_timeout;
> +	priv->wd.timeout_max = WDOG_SECS_MAX;
>  	priv->wd.hwdev = dev;
>  	priv->dev = dev;
>  
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
