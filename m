Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXo9I-0003CG-2z
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:09:06 +0000
Date: Fri, 14 Dec 2018 15:08:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181214140851.5r72avd74etxydzh@pengutronix.de>
References: <20181213080144.8401-1-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181213080144.8401-1-shc_work@mail.ru>
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
Subject: Re: [PATCH] spi: i.MX: Fix wrong bus nubering with devicetree
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Dec 13, 2018 at 11:01:43AM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> 

Applied, thanks

Sascha

> diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
> index 10621d00c..46e8955ab 100644
> --- a/drivers/spi/imx_spi.c
> +++ b/drivers/spi/imx_spi.c
> @@ -605,17 +605,20 @@ static int imx_spi_probe(struct device_d *dev)
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
> -	} else {
> -		if (IS_ENABLED(CONFIG_OFDEVICE))
> -			imx_spi_dt_probe(imx);
> +	} else if (IS_ENABLED(CONFIG_OFDEVICE)) {
> +		ret = of_alias_get_id(dev->device_node, "spi");
> +		if (ret < 0)
> +			goto err_free;
> +		master->bus_num = ret;
> +		imx_spi_dt_probe(imx);
>  	}
>  
>  	imx->clk = clk_get(dev, NULL);
> -- 
> 2.13.0
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
