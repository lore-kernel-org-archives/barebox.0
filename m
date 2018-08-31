Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvclu-0004dX-Nu
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 06:19:08 +0000
Date: Fri, 31 Aug 2018 08:18:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180831061854.fsqc7ymes5wkegab@pengutronix.de>
References: <1535533700-23464-1-git-send-email-oleg.karfich@wago.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1535533700-23464-1-git-send-email-oleg.karfich@wago.com>
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
Subject: Re: [PATCH] gpio: pca953x: add oftree support
To: Oleg.Karfich@wago.com
Cc: barebox@lists.infradead.org

On Wed, Aug 29, 2018 at 09:08:27AM +0000, Oleg.Karfich@wago.com wrote:
> Signed-off-by: Oleg Karfich <oleg.karfich@wago.com>
> ---
> 
> Hi,
> 
> this Patch adds oftree support to the pca953x driver. I ported the
> of_device_id table from the kernel and reduced it to the currently supported
> devices in barebox (sufficient for us).
> Documentation is already there [1].
> 
> [1] dts/Bindings/gpio/gpio-pca953x.txt
> 
> ---
>  drivers/gpio/gpio-pca953x.c | 35 +++++++++++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/gpio/gpio-pca953x.c b/drivers/gpio/gpio-pca953x.c
> index 3c95230..53e8c76 100644
> --- a/drivers/gpio/gpio-pca953x.c
> +++ b/drivers/gpio/gpio-pca953x.c
> @@ -468,9 +468,44 @@ static int pca953x_probe(struct device_d *dev)
>  	return 0;
>  }
>  
> +/* convenience to stop overlong match-table lines */
> +#define OF_953X(__nrgpio, __int) (void *)(__nrgpio | PCA953X_TYPE | __int)
> +#define OF_957X(__nrgpio, __int) (void *)(__nrgpio | PCA957X_TYPE | __int)
> +
> +static const struct of_device_id pca953x_dt_ids[] = {
> +	{ .compatible = "nxp,pca9505", .data = OF_953X(40, PCA_INT), },
> +	{ .compatible = "nxp,pca9534", .data = OF_953X( 8, PCA_INT), },
> +	{ .compatible = "nxp,pca9535", .data = OF_953X(16, PCA_INT), },
> +	{ .compatible = "nxp,pca9536", .data = OF_953X( 4, 0), },
> +	{ .compatible = "nxp,pca9537", .data = OF_953X( 4, PCA_INT), },
> +	{ .compatible = "nxp,pca9538", .data = OF_953X( 8, PCA_INT), },
> +	{ .compatible = "nxp,pca9539", .data = OF_953X(16, PCA_INT), },
> +	{ .compatible = "nxp,pca9554", .data = OF_953X( 8, PCA_INT), },
> +	{ .compatible = "nxp,pca9555", .data = OF_953X(16, PCA_INT), },
> +	{ .compatible = "nxp,pca9556", .data = OF_953X( 8, 0), },
> +	{ .compatible = "nxp,pca9557", .data = OF_953X( 8, 0), },
> +	{ .compatible = "nxp,pca9574", .data = OF_957X( 8, PCA_INT), },
> +	{ .compatible = "nxp,pca9575", .data = OF_957X(16, PCA_INT), },
> +	{ .compatible = "nxp,pca9698", .data = OF_953X(40, 0), },
> +
> +	{ .compatible = "maxim,max7310", .data = OF_953X( 8, 0), },
> +	{ .compatible = "maxim,max7312", .data = OF_953X(16, PCA_INT), },
> +	{ .compatible = "maxim,max7313", .data = OF_953X(16, PCA_INT), },
> +	{ .compatible = "maxim,max7315", .data = OF_953X( 8, PCA_INT), },
> +
> +	{ .compatible = "ti,pca6107", .data = OF_953X( 8, PCA_INT), },
> +	{ .compatible = "ti,tca6408", .data = OF_953X( 8, PCA_INT), },
> +	{ .compatible = "ti,tca6416", .data = OF_953X(16, PCA_INT), },
> +	{ .compatible = "ti,tca6424", .data = OF_953X(24, PCA_INT), },
> +
> +	{ .compatible = "exar,xra1202", .data = OF_953X( 8, 0), },
> +	{ }
> +};
> +
>  static struct driver_d pca953x_driver = {
>  	.name	= "pca953x",
>  	.probe		= pca953x_probe,
> +	.of_compatible	= DRV_OF_COMPAT(pca953x_dt_ids),
>  	.id_table	= pca953x_id,
>  };
>  
> -- 
> 2.7.4
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
