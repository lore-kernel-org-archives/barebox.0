Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMgLY-0002cE-5s
	for barebox@lists.infradead.org; Thu, 10 Jun 2010 11:54:56 +0000
Date: Thu, 10 Jun 2010 13:54:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100610115454.GN20799@pengutronix.de>
References: <1275991382.18173.37.camel@lws-gamez>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1275991382.18173.37.camel@lws-gamez>
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
Subject: Re: [PATCH] mx2 GPIO OCRx register
To: Teresa Gamez <T.Gamez@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa,

On Tue, Jun 08, 2010 at 12:03:02PM +0200, Teresa Gamez wrote:
> The GPIO OCRx register has to be set correct or the output is not set as =
expected.

No. The gpio functions are not expected to change the iomuxer. This is
what imx_gpio_mode() is for.

Sascha


> =

> Signed-off-by: Teresa G=E1mez <T.Gamez@phytec.de> =

> ---
> Index: barebox-2010.06.0/arch/arm/mach-imx/gpio.c
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> --- barebox-2010.06.0/arch/arm/mach-imx/gpio.c	2010-06-02 10:36:28.000000=
000 +0200
> +++ barebox-2010.06.0/arch/arm/mach-imx/gpio.c	2010-06-08 11:02:31.282473=
877 +0200
> @@ -31,6 +31,8 @@
>  #if defined CONFIG_ARCH_IMX1 || defined CONFIG_ARCH_IMX21 || defined CON=
FIG_ARCH_IMX27
>  #define GPIO_DR		0x1c
>  #define GPIO_GDIR	0x00
> +#define GPIO_OCR1	0x04
> +#define GPIO_OCR2	0x08
>  #define GPIO_PSR	0x24
>  #define GPIO_ICR1	0x28
>  #define GPIO_ICR2	0x2C
> @@ -103,6 +105,18 @@
>  	if (!base)
>  		return -EINVAL;
>  =

> +#if defined GPIO_OCR1 && defined GPIO_OCR2
> +	if (shift < 16) {
> +		val =3D readl(base + GPIO_OCR1);
> +		val |=3D (3 << (shift * 2));
> +		writel(val, base + GPIO_OCR1);
> +	} else {
> +		val =3D readl(base + GPIO_OCR2);
> +		val |=3D (3 << ((shift - 16) * 2));
> +		writel(val, base + GPIO_OCR2);
> +	}
> +#endif
> +
>  	gpio_set_value(gpio, value);
>  =

>  	val =3D readl(base + GPIO_GDIR);
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
