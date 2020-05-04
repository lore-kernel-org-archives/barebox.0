Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVV7S-00047Y-Lr
 for barebox@lists.infradead.org; Mon, 04 May 2020 07:02:28 +0000
Date: Mon, 4 May 2020 09:02:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200504070225.GR5877@pengutronix.de>
References: <20200501160830.11990-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501160830.11990-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] spi: Kconfig: drop unneeded dependency
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, May 01, 2020 at 07:08:30PM +0300, Antony Pavlov wrote:
> The 'config DRIVER_SPI_MXS' section is already under 'if SPI'
> so 'depends on SPI' is unneeded.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/spi/Kconfig | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> index c696213f50..a53b961b89 100644
> --- a/drivers/spi/Kconfig
> +++ b/drivers/spi/Kconfig
> @@ -77,7 +77,6 @@ config DRIVER_SPI_IMX_2_3
>  config DRIVER_SPI_MXS
>  	bool "i.MX (23,28) SPI Master driver"
>  	depends on ARCH_IMX28
> -	depends on SPI
>  
>  config DRIVER_SPI_MVEBU
>  	bool "Marvell MVEBU SoC SPI master driver"
> -- 
> 2.25.0
> 
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
