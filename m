Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1REcBN-0007y7-3Z
	for barebox@lists.infradead.org; Fri, 14 Oct 2011 07:27:53 +0000
Date: Fri, 14 Oct 2011 09:27:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111014072751.GA13898@pengutronix.de>
References: <1318533811-18568-1-git-send-email-loic.minier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1318533811-18568-1-git-send-email-loic.minier@linaro.org>
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
Subject: Re: [PATCH] Fix spelling of "omitted"; found by lintian
To: =?iso-8859-15?Q?Lo=EFc?= Minier <loic.minier@linaro.org>
Cc: barebox@lists.infradead.org

On Thu, Oct 13, 2011 at 09:23:31PM +0200, Lo=EFc Minier wrote:
> Signed-off-by: Lo=EFc Minier <loic.minier@linaro.org>

Applied to master.

Sascha

> ---
>  commands/mem.c     |    2 +-
>  commands/saveenv.c |    2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/commands/mem.c b/commands/mem.c
> index 8df5f0a..5963cfb 100644
> --- a/commands/mem.c
> +++ b/commands/mem.c
> @@ -223,7 +223,7 @@ static const __maybe_unused char cmd_md_help[] =3D
>  "\n"
>  "Memory regions:\n"
>  "Memory regions can be specified in two different forms: start+size\n"
> -"or start-end, If <start> is ommitted it defaults to 0. If end is ommite=
d it\n"
> +"or start-end, If <start> is omitted it defaults to 0. If end is omitted=
 it\n"
>  "defaults to the end of the device, except for interactive commands like=
 md\n"
>  "and mw for which it defaults to 0x100.\n"
>  "Sizes can be specified as decimal, or if prefixed with 0x as hexadecima=
l.\n"
> diff --git a/commands/saveenv.c b/commands/saveenv.c
> index 11a9fee..c63080b 100644
> --- a/commands/saveenv.c
> +++ b/commands/saveenv.c
> @@ -109,7 +109,7 @@ BAREBOX_CMD_END
>   * @page saveenv_command
>  =

>  <p>\<envfs> is usually a block in flash but can be any other file. If
> -ommitted, \<directory> defaults to /env and \<envfs> defaults to
> +omitted, \<directory> defaults to /env and \<envfs> defaults to
>  /dev/env0. Note that envfs can only handle files, directories are being
>  skipped silently.</p>
>  =

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
