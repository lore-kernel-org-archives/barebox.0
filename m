Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZYTO-0005kd-SB
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 08:44:32 +0000
Date: Thu, 11 Jan 2018 09:44:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180111084418.gecceqokfwzuvrr4@pengutronix.de>
References: <20180110163159.16379-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180110163159.16379-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] i.MX: ecspi: Enable imx->clk as a part of initialization
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 10, 2018 at 08:31:59AM -0800, Andrey Smirnov wrote:
> Some SoCs (e. g. i.MX7) do not enable this clock by default, so add
> code to take care of that in the driver.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/spi/imx_spi.c | 7 +++++++
>  1 file changed, 7 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
> index 78198798a..30ed97c25 100644
> --- a/drivers/spi/imx_spi.c
> +++ b/drivers/spi/imx_spi.c
> @@ -621,6 +621,13 @@ static int imx_spi_probe(struct device_d *dev)
>  		goto err_free;
>  	}
>  
> +	ret = clk_enable(imx->clk);
> +	if (ret) {
> +		dev_err(dev, "Failed to enable clock: %s\n",
> +			strerror(ret));
> +		return ret;
> +	}
> +
>  	imx->chipselect = devdata->chipselect;
>  	imx->xchg_single = devdata->xchg_single;
>  	imx->do_transfer = devdata->do_transfer;
> -- 
> 2.14.3
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
