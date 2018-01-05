Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXTIm-0002OM-GZ
 for barebox@lists.infradead.org; Fri, 05 Jan 2018 14:48:59 +0000
Date: Fri, 5 Jan 2018 15:48:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180105144843.rtr3ht5vikftwdnl@pengutronix.de>
References: <20171220103644.10918-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171220103644.10918-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] string.h: Implement strndup
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 20, 2017 at 11:36:44AM +0100, Uwe Kleine-K=F6nig wrote:
> I implemented this while trying to import mmc-utils into barebox. While
> I didn't finish this import this function might still be useful for
> someone?!
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

I find it useful, so:

Applied, thanks

Sascha

> ---
>  include/linux/string.h |  3 +++
>  lib/string.c           | 20 ++++++++++++++++++++
>  2 files changed, 23 insertions(+)
> =

> diff --git a/include/linux/string.h b/include/linux/string.h
> index 5df8c50e579a..ed4eeb5519e6 100644
> --- a/include/linux/string.h
> +++ b/include/linux/string.h
> @@ -80,6 +80,9 @@ extern __kernel_size_t strnlen(const char *,__kernel_si=
ze_t);
>  #ifndef __HAVE_ARCH_STRDUP
>  extern char * strdup(const char *);
>  #endif
> +#ifndef __HAVE_ARCH_STRNDUP
> +extern char *strndup(const char *, size_t);
> +#endif
>  #ifndef __HAVE_ARCH_STRSWAB
>  extern char * strswab(const char *);
>  #endif
> diff --git a/lib/string.c b/lib/string.c
> index 1d491c9c2fb5..f588933e8191 100644
> --- a/lib/string.c
> +++ b/lib/string.c
> @@ -323,6 +323,26 @@ char * strdup(const char *s)
>  #endif
>  EXPORT_SYMBOL(strdup);
>  =

> +#ifndef __HAVE_ARCH_STRNDUP
> +char *strndup(const char *s, size_t n)
> +{
> +	char *new;
> +	size_t len =3D strnlen(s, n);
> +
> +	if ((s =3D=3D NULL) ||
> +	    ((new =3D malloc(len + 1)) =3D=3D NULL)) {
> +		return NULL;
> +	}
> +
> +	memcpy(new, s, len);
> +	new[len] =3D '\0';
> +
> +	return new;
> +}
> +
> +#endif
> +EXPORT_SYMBOL(strndup);
> +
>  #ifndef __HAVE_ARCH_STRSPN
>  /**
>   * strspn - Calculate the length of the initial substring of @s which on=
ly
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
