Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PXuKt-0001w5-4C
	for barebox@lists.infradead.org; Wed, 29 Dec 2010 11:36:56 +0000
Date: Wed, 29 Dec 2010 12:36:52 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20101229113652.GC14221@pengutronix.de>
References: <1293399652-2615-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1293399652-2615-1-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH] (reformated) Allow board specific fancy banner
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Dec 26, 2010 at 10:40:52PM +0100, Franck JULLIEN wrote:
> This time I used git to send the email. I think I get it right.
> However, I didn't find how to put this file in the thread we were later...
> I don't think it is possible since those emails didn't have ID's to use w=
ith
> the In-Reply-To option (right ?).
--in-reply-to 'AANLkTik+7KJrf3H6ZW3i9pA115p2Gn=3Dk=3DCXYHg5YJwRY@mail.gmail=
.com'
would have been the correct option.

And please put such infomal text after the tripple dash below, otherwise
it will end up in the commit log.

> ---
>  common/Kconfig   |    6 ++++++
>  common/console.c |   10 ++++++++++
>  2 files changed, 16 insertions(+), 0 deletions(-)
> =

> diff --git a/common/Kconfig b/common/Kconfig
> index 617f640..d46c8fc 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -248,6 +248,12 @@ config HUSH_FANCY_PROMPT
>  	  Allow to set PS1 from the command line. PS1 can have several escaped =
commands
>  	  like \h for CONFIG_BOARDINFO or \w for the current working directory.
>  =

> +config BOARD_BANNER
> +	bool
> +	prompt "allow a board specific fancy banner"
> +	help
> +	  Allow to define a custom board banner (you must define BOARD_BANNER i=
n your config.h)
The patch below seems to handle a missing BOARD_BANNER just fine, so
maybe s/must/can/.

Best regards
Uwe
> +
>  config HUSH_GETOPT
>  	bool
>  	depends on SHELL_HUSH
> diff --git a/common/console.c b/common/console.c
> index 82786f2..8a830e3 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -46,7 +46,17 @@ EXPORT_SYMBOL(console_list);
>  static void display_banner (void)
>  {
>  	printf (RELOC("\n\n%s\n\n"), RELOC_VAR(version_string));
> +#ifdef CONFIG_BOARD_BANNER
> +#ifdef BOARD_BANNER
> +	printf(RELOC(BOARD_BANNER));
> +#else
> +#define VT100_YELLOW	"\033[1;33m"
> +#define VT100_RESET	"\033[1;0m"
> +	printf(RELOC("Board: " VT100_YELLOW CONFIG_BOARDINFO VT100_RESET "\n"));
> +#endif
> +#else
>  	printf(RELOC("Board: " CONFIG_BOARDINFO "\n"));
> +#endif
>  }
>  =

>  static int __early_initdata initialized =3D 0;
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
