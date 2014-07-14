Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X6ZNp-0006dt-Gj
 for barebox@lists.infradead.org; Mon, 14 Jul 2014 06:05:06 +0000
Date: Mon, 14 Jul 2014 08:04:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140714060438.GR23235@pengutronix.de>
References: <1405081759-15028-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1405081759-15028-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/2] fixup! gpio: add driver for PCA95[357]x, PCA9698,
 TCA64xx, and MAX7310 SMBus I/O expanders
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 11, 2014 at 04:29:18PM +0400, Antony Pavlov wrote:
> ---
>  drivers/gpio/Kconfig | 1 -
>  1 file changed, 1 deletion(-)

Applied, or better: Fixed up.

Sascha

> 
> diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
> index 179c63d..6928fcb 100644
> --- a/drivers/gpio/Kconfig
> +++ b/drivers/gpio/Kconfig
> @@ -67,7 +67,6 @@ config GPIO_ORION
>  config GPIO_PCA953X
>  	bool "PCA95[357]x, PCA9698, TCA64xx, and MAX7310 I/O ports"
>  	depends on I2C
> -	select I2C_SMBUS
>  	help
>  	  Say yes here to provide access to several register-oriented
>  	  SMBus I/O expanders, made mostly by NXP or TI.  Compatible
> -- 
> 2.0.1
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
