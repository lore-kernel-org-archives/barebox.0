Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WWTSp-0007At-1p
 for barebox@lists.infradead.org; Sat, 05 Apr 2014 16:29:03 +0000
Date: Sat, 5 Apr 2014 18:28:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140405162840.GC27055@pengutronix.de>
References: <1396618659-27627-1-git-send-email-wjatscheslaw.stoljarski@kiwigrid.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1396618659-27627-1-git-send-email-wjatscheslaw.stoljarski@kiwigrid.com>
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
Subject: Re: [PATCH 1/3] imx-spi: enable v0.7 spi driver for imx53-cspi
To: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 04, 2014 at 03:37:39PM +0200, Wjatscheslaw Stoljarski (Slawa) wrote:
> From: "Wjatscheslaw Stoljarski" <wjatscheslaw.stoljarski@kiwigrid.com>
> 
> 
> Signed-off-by: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>

Applied, thanks

Sascha

> ---
>  drivers/spi/Kconfig |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> index 422693c..e429ea1 100644
> --- a/drivers/spi/Kconfig
> +++ b/drivers/spi/Kconfig
> @@ -25,7 +25,7 @@ config DRIVER_SPI_IMX_0_0
>  
>  config DRIVER_SPI_IMX_0_7
>  	bool
> -	depends on ARCH_IMX25 || ARCH_IMX35
> +	depends on ARCH_IMX25 || ARCH_IMX35 || ARCH_IMX53
>  	default y
>  
>  config DRIVER_SPI_IMX_2_3
> -- 
> 1.7.9.5
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
