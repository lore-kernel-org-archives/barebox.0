Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1So8QL-0005cI-HA
 for barebox@lists.infradead.org; Mon, 09 Jul 2012 07:30:36 +0000
Date: Mon, 9 Jul 2012 09:30:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120709073020.GQ30009@pengutronix.de>
References: <1341483767-20487-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1341483767-20487-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 1/3] string: add strim for ONFI code
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 05, 2012 at 12:22:45PM +0200, Eric B=E9nard wrote:
> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  include/linux/string.h |    3 +++
>  lib/string.c           |   39 +++++++++++++++++++++++++++++++++++++++
>  2 files changed, 42 insertions(+), 0 deletions(-)

Applied all three

Sascha

> =

> diff --git a/include/linux/string.h b/include/linux/string.h
> index 62d743e..afd0aa6 100644
> --- a/include/linux/string.h
> +++ b/include/linux/string.h
> @@ -93,6 +93,9 @@ extern int memcmp(const void *,const void *,__kernel_si=
ze_t);
>  #ifndef __HAVE_ARCH_MEMCHR
>  extern void * memchr(const void *,int,__kernel_size_t);
>  #endif
> +extern char * skip_spaces(const char *);
> +
> +extern char *strim(char *);
>  =

>  #ifdef __cplusplus
>  }
> diff --git a/lib/string.c b/lib/string.c
> index 2865088..db4f2ae 100644
> --- a/lib/string.c
> +++ b/lib/string.c
> @@ -567,3 +567,42 @@ void *memchr(const void *s, int c, size_t n)
>  #endif
>  EXPORT_SYMBOL(memchr);
>  =

> +/**
> + * skip_spaces - Removes leading whitespace from @str.
> + * @str: The string to be stripped.
> + *
> + * Returns a pointer to the first non-whitespace character in @str.
> + */
> +char *skip_spaces(const char *str)
> +{
> +	while (isspace(*str))
> +		++str;
> +	return (char *)str;
> +}
> +
> +/**
> + * strim - Removes leading and trailing whitespace from @s.
> + * @s: The string to be stripped.
> + *
> + * Note that the first trailing whitespace is replaced with a %NUL-termi=
nator
> + * in the given string @s. Returns a pointer to the first non-whitespace
> + * character in @s.
> + */
> +char *strim(char *s)
> +{
> +	size_t size;
> +	char *end;
> +
> +	s =3D skip_spaces(s);
> +	size =3D strlen(s);
> +	if (!size)
> +		return s;
> +
> +	end =3D s + size - 1;
> +	while (end >=3D s && isspace(*end))
> +		end--;
> +	*(end + 1) =3D '\0';
> +
> +	return s;
> +}
> +EXPORT_SYMBOL(strim);
> -- =

> 1.7.7.6
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
