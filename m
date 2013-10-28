Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VamCP-0004Jv-7P
 for barebox@lists.infradead.org; Mon, 28 Oct 2013 12:45:38 +0000
Date: Mon, 28 Oct 2013 13:45:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131028124514.GL30088@pengutronix.de>
References: <1382948810-10374-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1382948810-10374-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] SPI: i.MX: Fix incorrect bus number in case of DT probe.
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Mon, Oct 28, 2013 at 12:26:50PM +0400, Alexander Shiyan wrote:
> The SPI bus number is not assigned in DT case, so the device can
> be attached to the wrong SPI bus.

I stumbled upon the same problem just this morning. I fixed it by doing
what you did, but in the SPI core to make it available to all drivers.

Sascha

> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/spi/imx_spi.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
> index 6f942bf..5975dd6 100644
> --- a/drivers/spi/imx_spi.c
> +++ b/drivers/spi/imx_spi.c
> @@ -534,17 +534,20 @@ static int imx_spi_probe(struct device_d *dev)
>  
>  	master = &imx->master;
>  	master->dev = dev;
> -	master->bus_num = dev->id;
>  
>  	master->setup = imx_spi_setup;
>  	master->transfer = imx_spi_transfer;
>  
>  	if (pdata) {
> +		master->bus_num = dev->id;
>  		master->num_chipselect = pdata->num_chipselect;
>  		imx->cs_array = pdata->chipselect;
>  	} else {
> -		if (IS_ENABLED(CONFIG_OFDEVICE))
> -			imx_spi_dt_probe(imx);
> +		ret = of_alias_get_id(dev->device_node, "spi");
> +		if (ret < 0)
> +			goto err_free;
> +		master->bus_num = ret;
> +		imx_spi_dt_probe(imx);
>  	}
>  
>  	imx->clk = clk_get(dev, NULL);
> -- 
> 1.8.1.5
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
