Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQ7Js-00071I-H9
 for barebox@lists.infradead.org; Thu, 21 Jul 2016 06:18:53 +0000
Date: Thu, 21 Jul 2016 08:18:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160721061831.GR20657@pengutronix.de>
References: <1468994248-12641-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1468994248-12641-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] mc13xxx: make driver-provided SPI frequency overridable
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 20, 2016 at 07:57:28AM +0200, Alexander Kurz wrote:
> The preset SPI frequency for mc13xxx PMIC introduced with patch 6e18b3a48ee4
> ("mc13xxx: Define maximum SPI clock frequency global to driver") is not
> desirable or working on all boards. Provide a possibility to override
> the default SPI max_speed_hz from board code.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  drivers/mfd/mc13xxx.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
> index 68d70c5..b2fcd95 100644
> --- a/drivers/mfd/mc13xxx.c
> +++ b/drivers/mfd/mc13xxx.c
> @@ -330,7 +330,8 @@ static int __init mc13xxx_probe(struct device_d *dev)
>  		mc_dev->spi = dev->type_data;
>  		mc_dev->spi->mode = SPI_MODE_0 | SPI_CS_HIGH;
>  		mc_dev->spi->bits_per_word = 32;
> -		mc_dev->spi->max_speed_hz = 20000000;
> +		mc_dev->spi->max_speed_hz = mc_dev->spi->max_speed_hz ?
> +			mc_dev->spi->max_speed_hz : 20000000;
>  		mc_dev->map = regmap_init(dev, &regmap_mc13xxx_spi_bus,
>  			     mc_dev, &mc13xxx_regmap_spi_config);
>  	}
> -- 
> 2.1.4
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
