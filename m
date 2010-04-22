Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O4uOk-0002uS-3L
	for barebox@lists.infradead.org; Thu, 22 Apr 2010 11:16:46 +0000
Date: Thu, 22 Apr 2010 13:16:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100422111644.GI7882@pengutronix.de>
References: <1271665698-23163-1-git-send-email-w.sang@pengutronix.de>
	<1271665698-23163-3-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1271665698-23163-3-git-send-email-w.sang@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/7] imx/gpio: make gpio_get_value actually work
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 19, 2010 at 10:28:13AM +0200, Wolfram Sang wrote:
> From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> =

> Newer i.MX-variants can route the content of the Sample Status Register t=
o the
> Data Register, but older ones can't. So, use the Sample Register to be ge=
neric.
> As a drawback, the ability to read back the values of output GPIOs is los=
t.

I never heard of this. Anyway, output gpios are not supposed to be able
to read back in the GPIO API, so I suggest we use Uwes original commit
message.

Sascha


> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> ---
>  arch/arm/mach-imx/gpio.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> =

> diff --git a/arch/arm/mach-imx/gpio.c b/arch/arm/mach-imx/gpio.c
> index 6157bd1..c6a59a6 100644
> --- a/arch/arm/mach-imx/gpio.c
> +++ b/arch/arm/mach-imx/gpio.c
> @@ -121,7 +121,7 @@ int gpio_get_value(unsigned gpio)
>  	if (!base)
>  		return -EINVAL;
>  =

> -	val =3D readl(base + GPIO_DR);
> +	val =3D readl(base + GPIO_PSR);
>  =

>  	return val & (1 << shift) ? 1 : 0;
>  }
> -- =

> 1.7.0
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
