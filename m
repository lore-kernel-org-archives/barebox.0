Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqem-0005Tx-W4
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 12:22:42 +0000
Date: Mon, 17 Jun 2019 14:22:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190617122239.i3eofdvgtuletu6s@pengutronix.de>
References: <20190614203726.20148-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614203726.20148-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH] pcf857x: fix CONFIG_OF to OFDEVICE
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 14, 2019 at 10:37:26PM +0200, Michael Grzeschik wrote:
> There is not CONFIG_OF symbol. We fix this
> by using OFDEVICE instead.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  drivers/gpio/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
> index 6a4de7fbc8..7a1503198b 100644
> --- a/drivers/gpio/Kconfig
> +++ b/drivers/gpio/Kconfig
> @@ -101,7 +101,7 @@ config GPIO_PCA953X
>  config GPIO_PCF857X
>  	tristate "PCF857x, PCA{85,96}7x, and MAX732[89] I2C GPIO expanders"
>  	depends on I2C
> -	depends on CONFIG_OF
> +	depends on OFDEVICE
>  	help
>  	  Say yes here to provide access to most "quasi-bidirectional" I2C
>  	  GPIO expanders used for additional digital outputs or inputs.
> -- 
> 2.20.1
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
