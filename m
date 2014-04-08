Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXPEF-0001yo-Oe
 for barebox@lists.infradead.org; Tue, 08 Apr 2014 06:09:52 +0000
Date: Tue, 8 Apr 2014 08:09:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140408060929.GS27055@pengutronix.de>
References: <1396857039-17837-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1396857039-17837-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] spi: altera_spi: fix altera_spi_setup() return error codes
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 07, 2014 at 11:50:39AM +0400, Antony Pavlov wrote:
> Reported-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied. Thanks for fixing this, now there's one place less to copy
wrong code :)

Sascha

> ---
>  drivers/spi/altera_spi.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/spi/altera_spi.c b/drivers/spi/altera_spi.c
> index 8803d9e..983b877 100644
> --- a/drivers/spi/altera_spi.c
> +++ b/drivers/spi/altera_spi.c
> @@ -34,18 +34,18 @@ static int altera_spi_setup(struct spi_device *spi)
>  	if (spi->bits_per_word != altera_spi->databits) {
>  		dev_err(master->dev, " master doesn't support %d bits per word requested by %s\n",
>  			spi->bits_per_word, spi_dev.name);
> -		return -1;
> +		return -EINVAL;
>  	}
>  
>  	if ((spi->mode & (SPI_CPHA | SPI_CPOL)) != altera_spi->mode) {
>  		dev_err(master->dev, " master doesn't support SPI_MODE%d requested by %s\n",
>  			spi->mode & (SPI_CPHA | SPI_CPOL), spi_dev.name);
> -		return -1;
> +		return -EINVAL;
>  	}
>  
>  	if (spi->max_speed_hz < altera_spi->speed) {
>  		dev_err(master->dev, " frequency is too high for %s\n", spi_dev.name);
> -		return -1;
> +		return -EINVAL;
>  	}
>  
>  	altera_spi_cs_inactive(spi);
> -- 
> 1.9.0
> 
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
