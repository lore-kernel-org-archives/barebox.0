Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1REbb1-00075r-Du
	for barebox@lists.infradead.org; Fri, 14 Oct 2011 06:50:21 +0000
Date: Fri, 14 Oct 2011 08:50:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111014065015.GV13898@pengutronix.de>
References: <1318543601-20819-1-git-send-email-loic.minier@linaro.org>
	<1318543601-20819-3-git-send-email-loic.minier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1318543601-20819-3-git-send-email-loic.minier@linaro.org>
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
Subject: Re: [PATCH 2/5] Avoid warnings by using format(__printf__)
To: =?iso-8859-15?Q?Lo=EFc?= Minier <loic.minier@linaro.org>
Cc: barebox@lists.infradead.org

Hi Lo=EFc,

On Fri, Oct 14, 2011 at 12:06:38AM +0200, Lo=EFc Minier wrote:
> When building sandbox, barebox is built with -Dprintf=3Dbarebox_printf as
> to not collide with the printf provided by libc.  This would also match
> the format(printf) function __attribute__.
> =

> Since gcc documents that __printf__ can be used instead of printf as a
> format attribute, use this instead and avoid a lot of noisy warnings.
> =

> NB: this relates to 6b082cfe9f9b5b2bea294918ad916c739490cea7 which was
> an earlier attempt at solving this, which got reverted due to other
> regressions.

\o/

Thank you for finding a solution for this. That was really an annoying
issue.

Sascha

> =

> Signed-off-by: Lo=EFc Minier <loic.minier@linaro.org>
> ---
>  include/stdio.h       |   12 ++++++------
>  scripts/mod/modpost.c |    2 +-
>  scripts/mod/modpost.h |    2 +-
>  3 files changed, 8 insertions(+), 8 deletions(-)
> =

> diff --git a/include/stdio.h b/include/stdio.h
> index c824764..a0d81d3 100644
> --- a/include/stdio.h
> +++ b/include/stdio.h
> @@ -9,7 +9,7 @@
>   */
>  =

>  /* serial stuff */
> -void	serial_printf(const char *fmt, ...) __attribute__ ((format(printf, =
1, 2)));
> +void	serial_printf(const char *fmt, ...) __attribute__ ((format(__printf=
__, 1, 2)));
>  =

>  /* stdin */
>  int	tstc(void);
> @@ -30,12 +30,12 @@ static inline void putchar(char c)
>  	console_putc(CONSOLE_STDOUT, c);
>  }
>  =

> -int	printf(const char *fmt, ...) __attribute__ ((format(printf, 1, 2)));
> +int	printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2=
)));
>  int	vprintf(const char *fmt, va_list args);
> -int	sprintf(char *buf, const char *fmt, ...) __attribute__ ((format(prin=
tf, 2, 3)));
> -int	snprintf(char *buf, size_t size, const char *fmt, ...) __attribute__=
 ((format(printf, 3, 4)));
> +int	sprintf(char *buf, const char *fmt, ...) __attribute__ ((format(__pr=
intf__, 2, 3)));
> +int	snprintf(char *buf, size_t size, const char *fmt, ...) __attribute__=
 ((format(__printf__, 3, 4)));
>  int	vsprintf(char *buf, const char *fmt, va_list args);
> -char	*asprintf(const char *fmt, ...) __attribute__ ((format(printf, 1, 2=
)));
> +char	*asprintf(const char *fmt, ...) __attribute__ ((format(__printf__, =
1, 2)));
>  char	*vasprintf(const char *fmt, va_list ap);
>  int	vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
>  int	vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
> @@ -54,7 +54,7 @@ int	vscnprintf(char *buf, size_t size, const char *fmt,=
 va_list args);
>  #define stderr		2
>  #define MAX_FILES	128
>  =

> -void	fprintf(int file, const char *fmt, ...) __attribute__ ((format(prin=
tf, 2, 3)));
> +void	fprintf(int file, const char *fmt, ...) __attribute__ ((format(__pr=
intf__, 2, 3)));
>  int	fputs(int file, const char *s);
>  int	fputc(int file, const char c);
>  int	ftstc(int file);
> diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
> index 08b75b6..e994486 100644
> --- a/scripts/mod/modpost.c
> +++ b/scripts/mod/modpost.c
> @@ -1300,7 +1300,7 @@ static void read_symbols(char *modname)
>   * following helper, then compare to the file on disk and
>   * only update the later if anything changed */
>  =

> -void __attribute__((format(printf, 2, 3))) buf_printf(struct buffer *buf,
> +void __attribute__((format(__printf__, 2, 3))) buf_printf(struct buffer =
*buf,
>  						      const char *fmt, ...)
>  {
>  	char tmp[SZ];
> diff --git a/scripts/mod/modpost.h b/scripts/mod/modpost.h
> index 4156dd3..0c23259 100644
> --- a/scripts/mod/modpost.h
> +++ b/scripts/mod/modpost.h
> @@ -94,7 +94,7 @@ struct buffer {
>  	int size;
>  };
>  =

> -void __attribute__((format(printf, 2, 3)))
> +void __attribute__((format(__printf__, 2, 3)))
>  buf_printf(struct buffer *buf, const char *fmt, ...);
>  =

>  void
> -- =

> 1.7.5.4
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
