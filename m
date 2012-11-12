Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TXpXB-0001Ei-MW
 for barebox@lists.infradead.org; Mon, 12 Nov 2012 08:38:22 +0000
Date: Mon, 12 Nov 2012 09:38:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121112083819.GS10369@pengutronix.de>
References: <1348663120-18758-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348663120-18758-1-git-send-email-jlu@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] omap3_spi: fix bus numbers according to omap3_add_spi[1-4]
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 26, 2012 at 02:38:40PM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  drivers/spi/omap3_spi.c |   14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/spi/omap3_spi.c b/drivers/spi/omap3_spi.c
> index 3008977..bf98092 100644
> --- a/drivers/spi/omap3_spi.c
> +++ b/drivers/spi/omap3_spi.c
> @@ -327,10 +327,10 @@ static int omap3_spi_setup(struct spi_device *spi)
>  {
>  	struct spi_master *master = spi->master;
>  
> -	if (((master->bus_num == 0) && (spi->chip_select > 3)) ||
> -			((master->bus_num == 1) && (spi->chip_select > 1)) ||
> +	if (((master->bus_num == 1) && (spi->chip_select > 3)) ||
>  			((master->bus_num == 2) && (spi->chip_select > 1)) ||
> -			((master->bus_num == 3) && (spi->chip_select > 0))) {
> +			((master->bus_num == 3) && (spi->chip_select > 1)) ||
> +			((master->bus_num == 4) && (spi->chip_select > 0))) {
>  		printf("SPI error: unsupported chip select %i \
>  			on bus %i\n", spi->chip_select, master->bus_num);
>  		return -EINVAL;
> @@ -363,10 +363,10 @@ static int omap3_spi_probe(struct device_d *dev)
>  	/*
>  	 * OMAP3 McSPI (MultiChannel SPI) has 4 busses (modules)
>  	 * with different number of chip selects (CS, channels):
> -	 * McSPI1 has 4 CS (bus 0, cs 0 - 3)
> -	 * McSPI2 has 2 CS (bus 1, cs 0 - 1)
> -	 * McSPI3 has 2 CS (bus 2, cs 0 - 1)
> -	 * McSPI4 has 1 CS (bus 3, cs 0)
> +	 * McSPI1 has 4 CS (bus 1, cs 0 - 3)
> +	 * McSPI2 has 2 CS (bus 2, cs 0 - 1)
> +	 * McSPI3 has 2 CS (bus 3, cs 0 - 1)
> +	 * McSPI4 has 1 CS (bus 4, cs 0)
>  	 *
>  	 * The board code has to make sure that it does not use
>  	 * invalid buses or chip selects.
> -- 
> 1.7.10.4
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
