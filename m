Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c7GfQ-0007N0-4Q
 for barebox@lists.infradead.org; Thu, 17 Nov 2016 06:59:29 +0000
Date: Thu, 17 Nov 2016 07:59:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161117065906.kgxiwv7zccrpvwvz@pengutronix.de>
References: <20161116121851.12399-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161116121851.12399-1-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] i2c: gpio: fix handling of return code of of_get_gpio
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 16, 2016 at 01:18:49PM +0100, Uwe Kleine-K=F6nig wrote:
> Instead of using gpio_is_valid just check the return code of of_get_gpio
> for being < 0. This fixes -EPROBE_DEFER handling as now this error code
> is handed to the caller instead of -ENODEV. If the gpio returned by
> of_get_gpio is an invalid number this isn't noticed by
> of_i2c_gpio_probe, but then gpio_request later fails which is good
> enough.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Applied, thanks

Sascha

> ---
>  drivers/i2c/busses/i2c-gpio.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/i2c/busses/i2c-gpio.c b/drivers/i2c/busses/i2c-gpio.c
> index 9362ed181fe3..850db7b2f652 100644
> --- a/drivers/i2c/busses/i2c-gpio.c
> +++ b/drivers/i2c/busses/i2c-gpio.c
> @@ -89,6 +89,7 @@ static int of_i2c_gpio_probe(struct device_node *np,
>  			     struct i2c_gpio_platform_data *pdata)
>  {
>  	u32 reg;
> +	int ret;
>  =

>  	if (!IS_ENABLED(CONFIG_OFDEVICE))
>  		return -ENODEV;
> @@ -96,14 +97,15 @@ static int of_i2c_gpio_probe(struct device_node *np,
>  	if (of_gpio_count(np) < 2)
>  		return -ENODEV;
>  =

> -	pdata->sda_pin =3D of_get_gpio(np, 0);
> -	pdata->scl_pin =3D of_get_gpio(np, 1);
> +	ret =3D of_get_gpio(np, 0);
> +	if (ret < 0)
> +		return ret;
> +	pdata->sda_pin =3D ret;
>  =

> -	if (!gpio_is_valid(pdata->sda_pin) || !gpio_is_valid(pdata->scl_pin)) {
> -		pr_err("%s: invalid GPIO pins, sda=3D%d/scl=3D%d\n",
> -		       np->full_name, pdata->sda_pin, pdata->scl_pin);
> -		return -ENODEV;
> -	}
> +	ret =3D of_get_gpio(np, 1);
> +	if (ret < 0)
> +		return ret;
> +	pdata->scl_pin =3D ret;
>  =

>  	of_property_read_u32(np, "i2c-gpio,delay-us", &pdata->udelay);
>  =

> -- =

> 2.10.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
