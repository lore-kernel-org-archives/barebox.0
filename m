Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Orb62-0000Mf-Sy
	for barebox@lists.infradead.org; Fri, 03 Sep 2010 18:34:44 +0000
Date: Fri, 3 Sep 2010 20:34:41 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20100903183441.GB17152@pengutronix.de>
References: <20100902194046.GA21449@game.jcrosoft.org>
	<1283456510-28086-5-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1283456510-28086-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 5/9 V2] vsprintf: add %w and %w support to print unit
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hello Jean-Christophe,

On Thu, Sep 02, 2010 at 09:41:46PM +0200, Jean-Christophe PLAGNIOL-VILLARD =
wrote:
> Show a '%w' or %W thing.  This will show a unit
> at format xxx[.xxx][ ][ kMG] with iEEE 1541 support
> =

> The precision can not excess the base kMG of the current unit
> otherwise it will be automatically reduce
> =

> If no precision is specified and there is rest we will use a default
> precision of 3 as 66.667 M or 66.667M
> =

> %#w or %#W will add a space between the value and the unit
> =

> The base will be typically 1000 for Hz or B and 1024 for iB
> for 1024 the i is automactically add for val >=3D 1024
> =

> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  include/linux/kernel.h |   20 ++++++++++
>  lib/vsprintf.c         |   91 ++++++++++++++++++++++++++++++++++++++++++=
++++++
>  2 files changed, 111 insertions(+), 0 deletions(-)
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
> index 6066845..18ba371 100644
> --- a/lib/vsprintf.c
> +++ b/lib/vsprintf.c
> @@ -254,6 +254,88 @@ static char *symbol_string(char *buf, char *end, voi=
d *ptr, int field_width, int
>  }
>  =

>  /*
> + * Show a '%w' or %W thing.  This will show a unit
s/%W/'%W'/, and you should note here, that %W uses 1024 as base, %w uses
1000.  These formats expect a (signed) long, right?  What about making
this a flag to the usual %d and %u to support all integer types?

Something like: %lWuB to print an unsigned long using the ieee format
(with base 1024)?  (I don't know why you choosed 'w', is it just any
free letter or a 'real' abbreviation?)

> + * at format xxx[.xxx][ ][ kMG] with iEEE 1541 support
> + *
> + * The precision can not excess the base kMG of the current unit
> + * otherwise it will be automatically reduce
s/reduce/reduced./
> + *
> + * If no precision is specified and there is rest we will use a default
> + * precision of 3 as 66.667 M or 66.667M
> + *
> + * %#w or %#W will add a space between the value and the unit
> + *
> + * The base will be typically 1000 for Hz or B and 1024 for iB
> + * for 1024 the i is automactically add for val >=3D 1024
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
> +	buf =3D number(buf, end, integer, 10, field_width, -1, flags & ~LEFT);
> +
> +	if (rest !=3D 0 || precision !=3D -1) {
> +		if (buf < end)
> +			*buf =3D '.';
> +		buf++;
> +		buf =3D number(buf, end, rest, 10, -1, pr, flags | ZEROPAD);
> +	}
> +
> +	/* use SPECIAL as SPACE could be used for the interger part */
> +	if (flags & SPECIAL) {
> +		if (buf < end)
> +			*buf =3D ' ';
> +		buf++;
> +	}
> +
> +	if (pow > 0) {
> +		if (buf < end)
> +			*buf =3D format[pow];
> +		buf++;
> +		if (base =3D=3D 1024) {
> +			if (buf < end)
> +				*buf =3D 'i';
> +			buf++;
> +		}
> +	}
> +
> +	return buf;
> +}
> +
> +/*
>   * Show a '%p' thing.  A kernel extension is that the '%p' is followed
>   * by an extra set of alphanumeric characters that are extended format
>   * specifiers.
> @@ -291,6 +373,7 @@ static char *pointer(const char *fmt, char *buf, char=
 *end, void *ptr, int field
>   * %pS output the name of a text symbol
>   * %pF output the name of a function pointer
>   * %pR output the address range in a struct resource
> + * %W and %w output at unit format with iEEE 1541 support
>   *
>   * The return value is the number of characters which would
>   * be generated for the given input, excluding the trailing
> @@ -421,6 +504,14 @@ int vsnprintf(char *buf, size_t size, const char *fm=
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
