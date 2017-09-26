Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dwjeU-0003XA-BM
 for barebox@lists.infradead.org; Tue, 26 Sep 2017 06:47:32 +0000
Date: Tue, 26 Sep 2017 08:47:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170926064708.iilzdfv2agqj7hun@pengutronix.de>
References: <20170921204455.21403-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170921204455.21403-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v2] gpiolib: check validity for gpio_info in *_active()
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 21, 2017 at 10:44:55PM +0200, Uwe Kleine-K=F6nig wrote:
> gpio_set_active, gpio_is_active and gpio_direction_active are public
> functions, accordingly there should be error checking.
> =

> If an invalid gpio number is given to these functions without checking
> gpio_adjust_value is called with gi =3D=3D NULL which then dereferences t=
his
> pointer.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> Changes since (implicit) v1:
> =

>  - make it compile (sigh)

Took this one instead.

Sascha

> =

>  drivers/gpio/gpiolib.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> =

> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index 67d771bae3a8..b83a27de7d21 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -204,6 +204,10 @@ EXPORT_SYMBOL(gpio_set_value);
>  void gpio_set_active(unsigned gpio, bool value)
>  {
>  	struct gpio_info *gi =3D gpio_to_desc(gpio);
> +
> +	if (!gi)
> +		return;
> +
>  	gpio_set_value(gpio, gpio_adjust_value(gi, value));
>  }
>  EXPORT_SYMBOL(gpio_set_active);
> @@ -229,6 +233,10 @@ EXPORT_SYMBOL(gpio_get_value);
>  int gpio_is_active(unsigned gpio)
>  {
>  	struct gpio_info *gi =3D gpio_to_desc(gpio);
> +
> +	if (!gi)
> +		return -ENODEV;
> +
>  	return gpio_adjust_value(gi, gpio_get_value(gpio));
>  }
>  EXPORT_SYMBOL(gpio_is_active);
> @@ -255,6 +263,10 @@ EXPORT_SYMBOL(gpio_direction_output);
>  int gpio_direction_active(unsigned gpio, bool value)
>  {
>  	struct gpio_info *gi =3D gpio_to_desc(gpio);
> +
> +	if (!gi)
> +		return -ENODEV;
> +
>  	return gpio_direction_output(gpio, gpio_adjust_value(gi, value));
>  }
>  EXPORT_SYMBOL(gpio_direction_active);
> -- =

> 2.11.0
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
