Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STzMv-0006Oa-Sj
 for barebox@lists.infradead.org; Mon, 14 May 2012 17:47:38 +0000
Date: Mon, 14 May 2012 19:47:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120514174736.GI30400@pengutronix.de>
References: <20120514090531.GE30400@pengutronix.de>
 <1336992211-22986-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336992211-22986-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH v2] drivers/spi/spi.c: use DEVICE_ID_DYNAMIC when
 allocating a struct device_d
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 14, 2012 at 12:43:31PM +0200, Jan Luebbe wrote:
> This causes allocation of a free id and avoids conflicts if multiple
> identical SPI devices are attached.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied, thanks

Sascha

> ---
>  drivers/spi/spi.c |    2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> index 7a8aed4..a7fe10c 100644
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c
> @@ -78,6 +78,8 @@ struct spi_device *spi_new_device(struct spi_master *master,
>  	proxy->bits_per_word = chip->bits_per_word ? chip->bits_per_word : 8;
>  	proxy->dev.platform_data = chip->platform_data;
>  	strcpy(proxy->dev.name, chip->name);
> +	/* allocate a free id for this chip */
> +	proxy->dev.id = DEVICE_ID_DYNAMIC;
>  	proxy->dev.type_data = proxy;
>  	dev_add_child(master->dev, &proxy->dev);
>  
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
