Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XQzHl-0003Il-8h
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 13:47:13 +0000
Date: Mon, 8 Sep 2014 15:46:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140908134650.GP5352@pengutronix.de>
References: <1410181677-17441-1-git-send-email-poggi.raph@gmail.com>
 <1410181677-17441-2-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410181677-17441-2-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH] pinctrl: at91: add driver data
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 08, 2014 at 03:07:55PM +0200, Rapha=EBl Poggi wrote:
> This commit adds the driver data for the gpio-at91 driver.


Could you explain what exactly this patch fixes? It seems without this
patch the pinctrl part is non functional. Is this correct?

Sascha

> =

> Signed-off-by: Rapha=EBl Poggi <poggi.raph@gmail.com>
> ---
>  drivers/pinctrl/pinctrl-at91.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> =

> diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at9=
1.c
> index d3423d0..29e54cf 100644
> --- a/drivers/pinctrl/pinctrl-at91.c
> +++ b/drivers/pinctrl/pinctrl-at91.c
> @@ -606,8 +606,10 @@ static struct gpio_ops at91_gpio_ops =3D {
>  static struct of_device_id at91_gpio_dt_ids[] =3D {
>  	{
>  		.compatible =3D "atmel,at91rm9200-gpio",
> +                .data =3D (unsigned long)&at91rm9200_ops,
>  	}, {
>  		.compatible =3D "atmel,at91sam9x5-gpio",
> +		.data =3D (unsigned long)&at91sam9x5_ops,
>  	}, {
>  		/* sentinel */
>  	},
> @@ -629,6 +631,12 @@ static int at91_gpio_probe(struct device_d *dev)
>  =

>  	at91_gpio =3D &gpio_chip[alias_idx];
>  =

> +	ret =3D dev_get_drvdata(dev, (unsigned long *)&at91_gpio->ops);
> +        if (ret) {
> +                dev_err(dev, "dev_get_drvdata failed: %d\n", ret);
> +                return ret;
> +        }
> +
>  	clk =3D clk_get(dev, NULL);
>  	if (IS_ERR(clk)) {
>  		ret =3D PTR_ERR(clk);
> @@ -667,8 +675,10 @@ static int at91_gpio_probe(struct device_d *dev)
>  static struct platform_device_id at91_gpio_ids[] =3D {
>  	{
>  		.name =3D "at91rm9200-gpio",
> +                .driver_data =3D (unsigned long)&at91rm9200_ops,
>  	}, {
>  		.name =3D "at91sam9x5-gpio",
> +		.driver_data =3D (unsigned long)&at91sam9x5_ops,
>  	}, {
>  		/* sentinel */
>  	},
> -- =

> 2.1.0
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
