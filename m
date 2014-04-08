Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WXPFr-0005zO-R1
 for barebox@lists.infradead.org; Tue, 08 Apr 2014 06:11:32 +0000
Date: Tue, 8 Apr 2014 08:11:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140408061111.GU27055@pengutronix.de>
References: <1396880259-26502-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1396880259-26502-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] GPIO: i.MX: Implement get_direction()
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, Apr 07, 2014 at 06:17:39PM +0400, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  drivers/gpio/gpio-imx.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
> index a71492a..d32638c 100644
> --- a/drivers/gpio/gpio-imx.c
> +++ b/drivers/gpio/gpio-imx.c
> @@ -113,11 +113,21 @@ static int imx_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
>  	return val & (1 << gpio) ? 1 : 0;
>  }
>  
> +static int imx_get_direction(struct gpio_chip *chip, unsigned offset)
> +{
> +	struct imx_gpio_chip *imxgpio = container_of(chip, struct imx_gpio_chip, chip);
> +	void __iomem *base = imxgpio->base;
> +	u32 val = readl(base + imxgpio->regs->gdir);
> +
> +	return (val & (1 << offset)) ? GPIOF_DIR_OUT : GPIOF_DIR_IN;
> +}
> +
>  static struct gpio_ops imx_gpio_ops = {
>  	.direction_input = imx_gpio_direction_input,
>  	.direction_output = imx_gpio_direction_output,
>  	.get = imx_gpio_get_value,
>  	.set = imx_gpio_set_value,
> +	.get_direction = imx_get_direction,
>  };
>  
>  static int imx_gpio_probe(struct device_d *dev)
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
