Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OrBjK-0007ns-L3
	for barebox@lists.infradead.org; Thu, 02 Sep 2010 15:29:35 +0000
Date: Thu, 2 Sep 2010 17:29:33 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20100902152933.GQ14214@pengutronix.de>
References: <20100902141001.GA28968@game.jcrosoft.org>
	<1283436624-29567-5-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1283436624-29567-5-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/9] vsprintf: add %w and %w support to print unit
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hello Jean-Christophe,

On Thu, Sep 02, 2010 at 04:10:20PM +0200, Jean-Christophe PLAGNIOL-VILLARD =
wrote:
> Show a '%w' or %W thing.
> This will show a frequency or byte at format xxx[.xxx] [ kMG]
> the precision can not excess the base kMG of the current unit
> otherwise it will be automatically reduce
> if no precision is specified and there is rest we will use a default
> precision of 3 as 66.667 M
> base will be typically 1000 for Hz or B and 1024 for iB
I see this used e.g. as:

	printk("%WiB", somevalue)

right?  hmm, what if somevalue is say 5?  If I understand correctly the
output then is: "5 iB".

> =

> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  include/linux/kernel.h |   20 +++++++++++++
>  lib/vsprintf.c         |   73 ++++++++++++++++++++++++++++++++++++++++++=
++++++
>  2 files changed, 93 insertions(+), 0 deletions(-)
> =

> diff --git a/include/linux/kernel.h b/include/linux/kernel.h
> index e9e2f07..b605946 100644
> --- a/include/linux/kernel.h
> +++ b/include/linux/kernel.h
> @@ -5,6 +5,26 @@
>  #include <linux/barebox-wrapper.h>
>  =

>  /*
> + * This looks more complex than it should be. But we need to
> + * get the type for the ~ right in round_down (it needs to be
> + * as wide as the result!), and we want to evaluate the macro
> + * arguments just once each.
> + */
> +#define __round_mask(x, y) ((__typeof__(x))((y)-1))
> +#define round_up(x, y) ((((x)-1) | __round_mask(x, y))+1)
> +#define round_down(x, y) ((x) & ~__round_mask(x, y))
> +
> +#define FIELD_SIZEOF(t, f) (sizeof(((t*)0)->f))
> +#define DIV_ROUND_UP(n,d) (((n) + (d) - 1) / (d))
> +#define roundup(x, y) ((((x) + ((y) - 1)) / (y)) * (y))
> +#define DIV_ROUND_CLOSEST(x, divisor)(			\
> +{							\
> +	typeof(divisor) __divisor =3D divisor;		\
> +	(((x) + ((__divisor) / 2)) / (__divisor));	\
> +}							\
> +)
> +
> +/*
>   * min()/max()/clamp() macros that also do
>   * strict type-checking.. See the
>   * "unnecessary" pointer comparison.
> diff --git a/lib/vsprintf.c b/lib/vsprintf.c
> index 6066845..add8bd5 100644
> --- a/lib/vsprintf.c
> +++ b/lib/vsprintf.c
> @@ -254,6 +254,71 @@ static char *symbol_string(char *buf, char *end, voi=
d *ptr, int field_width, int
>  }
>  =

>  /*
> + * Show a '%w' or %W thing.  This will show a frequency or byte
> + * at format xxx[.xxx] [ kMG]
> + * the precision can not excess the base kMG of the current unit
> + * otherwise it will be automatically reduce
> + * if no precision is specified and there is rest we will use a default
> + * precision of 3 as 66.667 M
> + * base will be typically 1000 for Hz or B and 1024 for iB
> + */
> +static char *unit_string(char *buf, char *end, long val, int base, int f=
ield_width, int precision, int flags)
> +{
> +	long rest =3D 0;
> +	long integer;
> +	long pr =3D 3;
> +	long pr_mul =3D 1;
> +	long unit =3D 1;
> +	char format[] =3D " kMG";
> +	int pow, i;
> +
> +	for (pow =3D 0; pow < strlen(format) - 1; pow++) {
> +		if (val < unit * base)
> +			break;
> +		unit *=3D base;
> +	}
> +
> +	integer =3D val / unit;
> +
> +	if (precision !=3D -1) {
> +		if (precision > pow * 3)
> +			precision =3D pow * 3;
> +		pr =3D precision;
> +	}
> +
> +	for (i =3D 0; i < pr; i++) {
> +		pr_mul *=3D 10;
> +	}
> +
> +	if (val % unit) {
> +		rest =3D DIV_ROUND_CLOSEST(pr_mul * (val - (integer * unit)), unit);
> +
> +		if (rest >=3D pr_mul) {
> +			rest -=3D pr_mul;
> +			integer++;
> +		}
> +	}
> +
> +	buf =3D number(buf, end, integer, 10, field_width, -1, 0);
> +
> +	if (rest !=3D 0 || precision !=3D -1) {
> +		if (buf < end)
> +			*buf =3D '.';
> +		buf++;
> +		buf =3D number(buf, end, rest, 10, -1, pr, 0);
> +	}
> +
> +	if (buf < end)
> +		*buf =3D ' ';
> +	buf++;
> +	if (buf < end && pow !=3D 0)
> +		*buf =3D format[pow];
> +	buf++;
> +
> +	return buf;
> +}
> +
> +/*
>   * Show a '%p' thing.  A kernel extension is that the '%p' is followed
>   * by an extra set of alphanumeric characters that are extended format
>   * specifiers.
I think the kernel documents all available formats in a single place.
(Is that here in barebox?  If yes, please add your new formats here,
too.)

> @@ -421,6 +486,14 @@ int vsnprintf(char *buf, size_t size, const char *fm=
t, va_list args)
>  				str =3D string(str, end, va_arg(args, char *), field_width, precisio=
n, flags);
>  				continue;
>  =

> +			case 'W':
> +				str =3D unit_string(str, end, va_arg(args, long), 1024, field_width,=
 precision, flags);
> +				continue;
> +
> +			case 'w':
> +				str =3D unit_string(str, end, va_arg(args, long), 1000, field_width,=
 precision, flags);
> +				continue;
> +
>  			case 'p':
>  				str =3D pointer(fmt+1, str, end,
>  						va_arg(args, void *),
> -- =

> 1.7.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
