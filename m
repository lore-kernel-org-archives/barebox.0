Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fBFuV-0004jA-Sc
 for barebox@lists.infradead.org; Wed, 25 Apr 2018 08:36:26 +0000
Date: Wed, 25 Apr 2018 10:36:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180425083617.ugyiosdtusotkjax@pengutronix.de>
References: <20180422183007.23235-1-mail@schmidt-andreas.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180422183007.23235-1-mail@schmidt-andreas.de>
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
Subject: Re: [PATCH] watchdog: omap: set hwdev before call watchdog_register
To: Andreas Schmidt <mail@schmidt-andreas.de>
Cc: barebox@lists.infradead.org

On Sun, Apr 22, 2018 at 08:30:07PM +0200, Andreas Schmidt wrote:
> Since watchdog_register access to hwdev (see
> commit 65a644388e845bde01215bf378d4df2a6a260a6a)
> hwdev has to be initiate/set before calling watchdog_register.
> 
> Signed-off-by: Andreas Schmidt <mail@schmidt-andreas.de>
> ---
>  drivers/watchdog/omap_wdt.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/watchdog/omap_wdt.c b/drivers/watchdog/omap_wdt.c
> index 27fdfd13a..c8a7ccf60 100644
> --- a/drivers/watchdog/omap_wdt.c
> +++ b/drivers/watchdog/omap_wdt.c
> @@ -160,6 +160,7 @@ static int omap_wdt_probe(struct device_d *dev)
>  
>  	wdev = xzalloc(sizeof(*wdev));
>  	wdev->wdog.set_timeout	= omap_wdt_set_timeout;
> +	wdev->wdog.hwdev = dev;
>  	wdev->wdt_trgr_pattern	= 0x1234;
>  
>  	/* reserve static register mappings */
> -- 
> 2.14.1
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
