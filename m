Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zx9CK-0004mU-E3
 for barebox@lists.infradead.org; Fri, 13 Nov 2015 07:55:05 +0000
Date: Fri, 13 Nov 2015 08:54:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151113075442.GA8526@pengutronix.de>
References: <1447330735-7568-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447330735-7568-1-git-send-email-s.christ@phytec.de>
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
Subject: Re: [PATCH] wdog: imx-wd: watchdog cannot be disabled again
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 12, 2015 at 01:18:55PM +0100, Stefan Christ wrote:
> The i.MX21/i.MX6 watchdog cannot be disabled after it was activated.
> Bit 2 (WDE) cannot be set to 0 again. Notify the user about that by
> returning -ENOSYS.
> 
> Signed-off-by: Stefan Christ <s.christ@phytec.de>
> ---
>  drivers/watchdog/imxwd.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
> index dd11a62..bb0d2db 100644
> --- a/drivers/watchdog/imxwd.c
> +++ b/drivers/watchdog/imxwd.c
> @@ -97,14 +97,14 @@ static int imx21_watchdog_set_timeout(struct imx_wd *priv, int timeout)
>  
>  	dev_dbg(priv->dev, "%s: %d\n", __func__, timeout);
>  
> -	if (!timeout || timeout > 128)
> +	if (timeout < 0 || timeout > 128)
>  		return -EINVAL;
>  
> -	if (timeout > 0)
> -		val = ((timeout * 2 - 1) << 8) | IMX21_WDOG_WCR_SRS |
> -			IMX21_WDOG_WCR_WDA;
> -	else
> -		val = 0;
> +	if (timeout == 0) /* bit 2 (WDE) cannot be set to 0 again */
> +		return -ENOSYS;
> +
> +	val = ((timeout * 2 - 1) << 8) | IMX21_WDOG_WCR_SRS |
> +		IMX21_WDOG_WCR_WDA;
>  
>  	writew(val, priv->base + IMX21_WDOG_WCR);
>  	writew(IMX21_WDOG_WCR_WDE | val, priv->base + IMX21_WDOG_WCR);
> -- 
> 1.9.1
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
