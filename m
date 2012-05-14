Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STrDh-0002Z9-DR
 for barebox@lists.infradead.org; Mon, 14 May 2012 09:05:34 +0000
Date: Mon, 14 May 2012 11:05:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120514090531.GE30400@pengutronix.de>
References: <1336984719-10670-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336984719-10670-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] drivers/spi/spi.c: when allocating a struct device_d
 specify id as -1
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 14, 2012 at 10:38:39AM +0200, Jan Luebbe wrote:
> This causes allocation of a free id and avoids conflicts if multiple
> identical SPI devices are attached.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  drivers/spi/spi.c |    1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> index 7a8aed4..b63d02f 100644
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c
> @@ -78,6 +78,7 @@ struct spi_device *spi_new_device(struct spi_master *master,
>  	proxy->bits_per_word = chip->bits_per_word ? chip->bits_per_word : 8;
>  	proxy->dev.platform_data = chip->platform_data;
>  	strcpy(proxy->dev.name, chip->name);
> +	proxy->dev.id = -1; /* allocate a free id for this chip */

Please use DEVICE_ID_DYNAMIC instead.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
