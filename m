Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbHpX-0007A8-NB
 for barebox@lists.infradead.org; Wed, 20 May 2020 06:03:56 +0000
Date: Wed, 20 May 2020 08:03:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200520060349.GS11869@pengutronix.de>
References: <cover.1589477005.git.dg@emlix.com>
 <76fd510b47399354e06406a6bb82f562d350d4cf.1589477005.git.dg@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <76fd510b47399354e06406a6bb82f562d350d4cf.1589477005.git.dg@emlix.com>
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
Subject: Re: [PATCH v2 04/10] Introduce idle slice
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: barebox@lists.infradead.org

On Thu, May 14, 2020 at 08:21:52PM +0200, Daniel Gl=F6ckner wrote:
> Some code can't foresee which resources will be used by its poller. This
> is the case especially in pollers that will execute arbitrary commands
> input by the user. With this commit a special slice is introduced that is
> released only when Barebox is waiting for console input and only when it
> is doing that outside of any command. Code that wants to depend on the
> idle slice must select CONFIG_IDLE_SLICE to make it available.
> =

> Signed-off-by: Daniel Gl=F6ckner <dg@emlix.com>
> ---
>  common/Kconfig             |  4 ++++
>  common/binfmt.c            |  3 +++
>  common/command.c           |  3 +++
>  common/console_countdown.c |  3 +++
>  common/poller.c            |  2 ++
>  common/slice.c             | 24 ++++++++++++++++++++++++
>  include/slice.h            | 10 ++++++++++
>  lib/readline.c             |  8 +++++++-
>  8 files changed, 56 insertions(+), 1 deletion(-)
> =

> diff --git a/common/Kconfig b/common/Kconfig
> index 400c0553c..2fa9140de 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -913,6 +913,10 @@ config BAREBOXCRC32_TARGET
>  config POLLER
>  	bool "generic polling infrastructure"
>  =

> +config IDLE_SLICE
> +	bool
> +	default n

We discussed config SLICE away, is there a reason to introduce config
IDLE_SLICE?

> +
>  config STATE
>  	bool "generic state infrastructure"
>  	select CRC32
> diff --git a/common/binfmt.c b/common/binfmt.c
> index f2ff62458..899f270d4 100644
> --- a/common/binfmt.c
> +++ b/common/binfmt.c
> @@ -10,6 +10,7 @@
>  #include <malloc.h>
>  #include <command.h>
>  #include <errno.h>
> +#include <slice.h>
>  =

>  static LIST_HEAD(binfmt_hooks);
>  =

> @@ -23,7 +24,9 @@ static int binfmt_run(char *file, int argc, char **argv)
>  		if (b->type !=3D type)
>  			continue;
>  =

> +		idle_slice_acquire();
>  		ret =3D b->hook(b, file, argc, argv);
> +		idle_slice_release();
>  		if (ret !=3D -ERESTARTNOHAND)
>  			return ret;
>  	}
> diff --git a/common/command.c b/common/command.c
> index 49845938a..2b10248f5 100644
> --- a/common/command.c
> +++ b/common/command.c
> @@ -30,6 +30,7 @@
>  #include <init.h>
>  #include <complete.h>
>  #include <getopt.h>
> +#include <slice.h>
>  =

>  LIST_HEAD(command_list);
>  EXPORT_SYMBOL(command_list);
> @@ -72,7 +73,9 @@ int execute_command(int argc, char **argv)
>  	/* Look up command in command table */
>  	if ((cmdtp =3D find_cmd(argv[0]))) {
>  		/* OK - call function to do the command */
> +		idle_slice_acquire();
>  		ret =3D cmdtp->cmd(argc, argv);
> +		idle_slice_release();

The command could be a shell in which case we would never be able to
release the idle slice as long this shell is running.

> @@ -200,11 +201,16 @@ int readline(const char *prompt, char *buf, int len)
>  	puts (prompt);
>  =

>  	while (1) {
> +		idle_slice_release();
>  		while (!tstc()) {
>  			poller_call();
> -			if (IS_ENABLED(CONFIG_CONSOLE_RATP))
> +			if (IS_ENABLED(CONFIG_CONSOLE_RATP)) {
> +				idle_slice_acquire();
>  				barebox_ratp_command_run();
> +				idle_slice_release();
> +			}
>  		}
> +		idle_slice_acquire();

I am not sure this is the right place to release the idle slice, I would
rather do it in the caller. readline() may be called from different
places, not all of them seem to be appropriate for releasing the idle
slice.

I think the idle slice should be released right before the shell calls
into readline and acquired again right afterwards.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
