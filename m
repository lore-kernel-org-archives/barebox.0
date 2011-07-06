Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QeNQp-0005LM-If
	for barebox@lists.infradead.org; Wed, 06 Jul 2011 08:26:04 +0000
Date: Wed, 6 Jul 2011 10:26:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110706082600.GR6069@pengutronix.de>
References: <1309904090-9100-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1309904090-9100-1-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH] spi: add bits_per_word to proxy structure
To: franck.jullien@gmail.com
Cc: barebox@lists.infradead.org

All applied to master.

Thanks
 Sascha

On Wed, Jul 06, 2011 at 12:14:48AM +0200, franck.jullien@gmail.com wrote:
> From: Franck Jullien <franck.jullien@gmail.com>
> 
> During the creation of a new spi device, we need to
> have the possiblility to give the bits_per_word value
> to master->setup.
> 
> As a matter of fact, spi master could check the spi
> device bits_per_word and compare this value against its
> capabilities.
> 
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  drivers/spi/spi.c |    1 +
>  include/spi/spi.h |    1 +
>  2 files changed, 2 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> index 6456897..5f3272b 100644
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c
> @@ -75,6 +75,7 @@ struct spi_device *spi_new_device(struct spi_master *master,
>  	proxy->chip_select = chip->chip_select;
>  	proxy->max_speed_hz = chip->max_speed_hz;
>  	proxy->mode = chip->mode;
> +	proxy->bits_per_word = chip->bits_per_word;
>  	proxy->dev.platform_data = chip->platform_data;
>  	strcpy(proxy->dev.name, chip->name);
>  	proxy->dev.type_data = proxy;
> diff --git a/include/spi/spi.h b/include/spi/spi.h
> index ac2013a..948e050 100644
> --- a/include/spi/spi.h
> +++ b/include/spi/spi.h
> @@ -15,6 +15,7 @@ struct spi_board_info {
>  	 * where the default of SPI_CS_HIGH = 0 is wrong.
>  	 */
>  	u8	mode;
> +	u8	bits_per_word;
>  	void	*platform_data;
>  };
>  
> -- 
> 1.7.0.4
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
