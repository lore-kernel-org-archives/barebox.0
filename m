Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdBhW-0001sw-PD
 for barebox@lists.infradead.org; Tue, 18 Jun 2019 10:50:56 +0000
Received: by mail-lf1-x144.google.com with SMTP id u10so8865655lfm.12
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2019 03:50:54 -0700 (PDT)
Date: Tue, 18 Jun 2019 13:50:50 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20190618135050.a689b99d8d35383d6f155c2d@gmail.com>
In-Reply-To: <20190617100056.25331-5-m.felsch@pengutronix.de>
References: <20190617100056.25331-1-m.felsch@pengutronix.de>
 <20190617100056.25331-5-m.felsch@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/4] i2c: gpio: add sda/scl-gpios property support
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 17 Jun 2019 12:00:56 +0200
Marco Felsch <m.felsch@pengutronix.de> wrote:

> The gpios property is marked as deprecated since kernel 4.15 so we
> should support the "new" mechanism too. The new mechanism has a higher
> priority than the deprecated one.
> =

> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/i2c/busses/i2c-gpio.c | 27 +++++++++++++++++----------
>  1 file changed, 17 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/i2c/busses/i2c-gpio.c b/drivers/i2c/busses/i2c-gpio.c
> index 708193344a..9508adab06 100644
> --- a/drivers/i2c/busses/i2c-gpio.c
> +++ b/drivers/i2c/busses/i2c-gpio.c
> @@ -94,18 +94,25 @@ static int of_i2c_gpio_probe(struct device_node *np,
>  	if (!IS_ENABLED(CONFIG_OFDEVICE))
>  		return -ENODEV;
>  =

> -	if (of_gpio_count(np) < 2)
> -		return -ENODEV;
> +	pdata->sda_pin =3D of_get_named_gpio_flags(np, "sda-gpios", 0, NULL);
> +	pdata->scl_pin =3D of_get_named_gpio_flags(np, "scl-gpios", 0, NULL);
> +
> +	if ((!gpio_is_valid(pdata->sda_pin) || !gpio_is_valid(pdata->sda_pin))

Double check of sda_pin here.

Can we change this line to

 +	if ((!gpio_is_valid(pdata->sda_pin) || !gpio_is_valid(pdata->scl_pin))


> +	    && (of_gpio_count(np) >=3D 2)) {
> +		/* Note: The gpios property is marked as deprecated */
> +		ret =3D of_get_gpio(np, 0);
> +		if (ret < 0)
> +			return ret;
> +		pdata->sda_pin =3D ret;
>  =

> -	ret =3D of_get_gpio(np, 0);
> -	if (ret < 0)
> -		return ret;
> -	pdata->sda_pin =3D ret;
> +		ret =3D of_get_gpio(np, 1);
> +		if (ret < 0)
> +			return ret;
> +		pdata->scl_pin =3D ret;
> +	}
>  =

> -	ret =3D of_get_gpio(np, 1);
> -	if (ret < 0)
> -		return ret;
> -	pdata->scl_pin =3D ret;
> +	if (!gpio_is_valid(pdata->sda_pin) || !gpio_is_valid(pdata->sda_pin))


Same here.

 +	if (!gpio_is_valid(pdata->sda_pin) || !gpio_is_valid(pdata->scl_pin))



> +		return -ENODEV;
>  =

>  	of_property_read_u32(np, "i2c-gpio,delay-us", &pdata->udelay);
>  =


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
