Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8shS-0000rp-Ou
	for barebox@lists.infradead.org; Wed, 28 Sep 2011 11:53:19 +0000
Date: Wed, 28 Sep 2011 13:53:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110928115316.GX31404@pengutronix.de>
References: <201109281208.11561.jbe@pengutronix.de>
	<201109281212.10811.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201109281212.10811.jbe@pengutronix.de>
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
Subject: Re: [PATCH] S3C24xx/GPIO: Fix compile time warning
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi J=FCrgen,

On Wed, Sep 28, 2011 at 12:12:10PM +0200, Juergen Beisert wrote:
> Without this patch the compiler spits a warning:
> =

> arch/arm/mach-s3c24xx/gpio-s3c24x0.c: In function 'gpio_is_valid':
> arch/arm/mach-s3c24xx/gpio-s3c24x0.c:176:11: warning: unused variable 're=
g'
> arch/arm/mach-s3c24xx/gpio-s3c24x0.c:174:11: warning: unused variable 'bi=
t'
> =

> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> =

> ---
>  arch/arm/mach-s3c24xx/gpio-s3c24x0.c |    2 --
>  1 file changed, 2 deletions(-)
> =

> Index: barebox-git/arch/arm/mach-s3c24xx/gpio-s3c24x0.c
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> --- barebox-git.orig/arch/arm/mach-s3c24xx/gpio-s3c24x0.c
> +++ barebox-git/arch/arm/mach-s3c24xx/gpio-s3c24x0.c
> @@ -170,9 +170,7 @@ void s3c_gpio_mode(unsigned gpio_mode)
>  int gpio_is_valid(int gpio)
>  {
>  	unsigned group =3D gpio >> 5;
> -	unsigned bit =3D gpio % 32;
>  	unsigned offset;
> -	uint32_t reg;

Both patches do not apply. We do not have a gpio_is_valid() function
in this file.

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
