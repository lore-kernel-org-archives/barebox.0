Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXPPA-0002dP-FY
 for barebox@lists.infradead.org; Tue, 08 Apr 2014 06:21:08 +0000
Date: Tue, 8 Apr 2014 08:20:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140408062047.GX27055@pengutronix.de>
References: <1396873335-22946-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1396873335-22946-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] spi: i.MX: Fix direction for CS GPIOs
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, Apr 07, 2014 at 04:22:15PM +0400, Alexander Shiyan wrote:
> Direction for CS GPIOs (for some targets) is undefined.
> This patch fixes this issue.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  drivers/spi/imx_spi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
> index 6675729..45461bd 100644
> --- a/drivers/spi/imx_spi.c
> +++ b/drivers/spi/imx_spi.c
> @@ -167,7 +167,7 @@ static void cspi_0_0_chipselect(struct spi_device *spi, int is_active)
>  
>  	if (!is_active) {
>  		if (gpio >= 0)
> -			gpio_set_value(gpio, !cs);
> +			gpio_direction_output(gpio, !cs);
>  		return;
>  	}
>  
> @@ -253,7 +253,7 @@ static void cspi_0_7_chipselect(struct spi_device *spi, int is_active)
>  
>  	if (!is_active) {
>  		if (gpio >= 0)
> -			gpio_set_value(gpio, !cs);
> +			gpio_direction_output(gpio, !cs);
>  		return;
>  	}
>  
> -- 
> 1.8.3.2
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
