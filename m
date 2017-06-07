Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dIZcf-0000jc-Rq
 for barebox@lists.infradead.org; Wed, 07 Jun 2017 11:59:39 +0000
Date: Wed, 7 Jun 2017 13:59:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170607115916.padh3ykffldk4gkz@pengutronix.de>
References: <20170607104542.11900-1-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170607104542.11900-1-jbe@pengutronix.de>
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
Subject: Re: [PATCH] i.MX/WD: setup the watchdog according to its datasheet
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 07, 2017 at 12:45:42PM +0200, Juergen Borleis wrote:
> From earlier SoCs like the i.MX21 up to i.MX7 their datasheets states
> after reset the watchdog timer has to be set first prior enabling the
> watchdog itself. This change do it this way.
> 
> Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
> ---
>  drivers/watchdog/imxwd.c | 6 ++++++
>  1 file changed, 6 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
> index b920c7234..5cc178f3e 100644
> --- a/drivers/watchdog/imxwd.c
> +++ b/drivers/watchdog/imxwd.c
> @@ -114,6 +114,12 @@ static int imx21_watchdog_set_timeout(struct imx_wd *priv, unsigned timeout)
>  	if (priv->ext_reset)
>  		val |= IMX21_WDOG_WCR_WDT;
>  
> +	/*
> +	 * set time and some write once bits first prior enabling the
> +	 * watchdog according to the datasheet
> +	 */
> +	writew(val, priv->base + IMX21_WDOG_WCR);
> +
>  	writew(IMX21_WDOG_WCR_WDE | val, priv->base + IMX21_WDOG_WCR);
>  
>  	/* Write Service Sequence */
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
