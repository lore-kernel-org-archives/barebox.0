Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1mZ4-0005Jx-B7
 for barebox@lists.infradead.org; Wed, 12 Feb 2020 07:36:07 +0000
Date: Wed, 12 Feb 2020 08:36:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200212073604.zl6yh6zbcqqo2fph@pengutronix.de>
References: <20200210180833.22153-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210180833.22153-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/5] mci: stm32_sdmmc2: don't ignore reset_control_get
 errors
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 10, 2020 at 07:08:30PM +0100, Ahmad Fatoum wrote:
> reset_control_get returns a NULL pointer when no resets were specified
> via device tree properties. If there's a malformed "resets"-property, we
> get an error pointer. This error should be propagated, only the NULL
> returns are the ones we can safely ignore.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/stm32_sdmmc2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
> index 44f7e6239949..695e61d1ccd7 100644
> --- a/drivers/mci/stm32_sdmmc2.c
> +++ b/drivers/mci/stm32_sdmmc2.c
> @@ -622,7 +622,7 @@ static int stm32_sdmmc2_probe(struct amba_device *adev,
>  
>  	priv->reset_ctl = reset_control_get(dev, NULL);
>  	if (IS_ERR(priv->reset_ctl))
> -		priv->reset_ctl = NULL;
> +		return PTR_ERR(priv->reset_ctl);
>  
>  	mci->f_min = 400000;
>  	/* f_max is taken from kernel v5.3 variant_stm32_sdmmc */
> -- 
> 2.25.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
