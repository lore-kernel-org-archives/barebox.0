Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QYzaA-000487-6K
	for barebox@lists.infradead.org; Tue, 21 Jun 2011 11:57:27 +0000
Date: Tue, 21 Jun 2011 13:57:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110621115723.GX23771@pengutronix.de>
References: <1308606394-7510-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1308606394-7510-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [RFC PATCH 1/3] spi: add platform_data pointer to spi_board_info
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

Applied this series to -next.

Sascha

On Mon, Jun 20, 2011 at 11:46:32PM +0200, Hubert Feurstein wrote:
> In the spi layer this pointer will be assigned to the
> platform_data pointer of the new spi device, thus it can
> be accessed in the drivers 'probe' handler.
> 
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> ---
>  drivers/spi/spi.c |    1 +
>  include/spi/spi.h |    4 ++--
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> index 4560259..588c263 100644
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c
> @@ -75,6 +75,7 @@ struct spi_device *spi_new_device(struct spi_master *master,
>  	proxy->chip_select = chip->chip_select;
>  	proxy->max_speed_hz = chip->max_speed_hz;
>  	proxy->mode = chip->mode;
> +	proxy->dev.platform_data = chip->platform_data;
>  	strcpy(proxy->dev.name, chip->name);
>  	proxy->dev.type_data = proxy;
>  	status = register_device(&proxy->dev);
> diff --git a/include/spi/spi.h b/include/spi/spi.h
> index 8dce8db..c76f3b7 100644
> --- a/include/spi/spi.h
> +++ b/include/spi/spi.h
> @@ -14,8 +14,8 @@ struct spi_board_info {
>  	/* mode becomes spi_device.mode, and is essential for chips
>  	 * where the default of SPI_CS_HIGH = 0 is wrong.
>  	 */
> -	u8		mode;
> -
> +	u8	mode;
> +	void	*platform_data;
>  };
>  
>  /**
> -- 
> 1.7.4.1
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
