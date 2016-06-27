Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHQKO-0002Mw-NB
 for barebox@lists.infradead.org; Mon, 27 Jun 2016 06:47:29 +0000
Date: Mon, 27 Jun 2016 08:47:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160627064706.GU20657@pengutronix.de>
References: <1466780662-15866-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1466780662-15866-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] spi: imx: Remove the use of property "fsl,
 spi-num-chipselects"
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Jun 24, 2016 at 06:04:22PM +0300, Alexander Shiyan wrote:
> The "fsl,spi-num-chipselects" property will be marked obsolete soon.
> This patch updates the driver to be ready to such changes.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/spi/imx_spi.c | 17 +++++------------
>  1 file changed, 5 insertions(+), 12 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
> index 99ec228..dc7a8c8 100644
> --- a/drivers/spi/imx_spi.c
> +++ b/drivers/spi/imx_spi.c
> @@ -515,23 +515,16 @@ static __maybe_unused struct spi_imx_devtype_data spi_imx_devtype_data_2_3 = {
>  static int imx_spi_dt_probe(struct imx_spi *imx)
>  {
>  	struct device_node *node = imx->master.dev->device_node;
> -	int ret, i;
> -	u32 num_cs;
> +	int i;
>  
>  	if (!node)
>  		return -ENODEV;
>  
> -	ret = of_property_read_u32(node, "fsl,spi-num-chipselects", &num_cs);
> -	if (ret)
> -		return ret;
> -
> -	imx->master.num_chipselect = num_cs;
> -	imx->cs_array = xzalloc(sizeof(u32) * num_cs);
> +	imx->master.num_chipselect = of_gpio_named_count(node, "cs-gpios");
> +	imx->cs_array = xzalloc(sizeof(u32) * imx->master.num_chipselect);
>  
> -	for (i = 0; i < num_cs; i++) {
> -		int cs_gpio = of_get_named_gpio(node, "cs-gpios", i);
> -		imx->cs_array[i] = cs_gpio;
> -	}
> +	for (i = 0; i < imx->master.num_chipselect; i++)
> +		imx->cs_array[i] = of_get_named_gpio(node, "cs-gpios", i);
>  
>  	return 0;
>  }
> -- 
> 2.4.9
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
