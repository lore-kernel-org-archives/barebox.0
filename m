Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PWp5j-0006gl-76
	for barebox@lists.infradead.org; Sun, 26 Dec 2010 11:48:48 +0000
Date: Sun, 26 Dec 2010 12:48:41 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20101226114841.GH14221@pengutronix.de>
References: <AANLkTik+7KJrf3H6ZW3i9pA115p2Gn=k=CXYHg5YJwRY@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTik+7KJrf3H6ZW3i9pA115p2Gn=k=CXYHg5YJwRY@mail.gmail.com>
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
Subject: Re: [PATCH] Add a board specific fancy banner
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

Hello Franck,

On Thu, Dec 23, 2010 at 10:42:34PM +0100, Franck JULLIEN wrote:
> This is the first time I'm using git and submit a patch so if I made a
> mistake be cool :)
:-)

>  common/Kconfig   |    6 ++++++
>  common/console.c |   10 ++++++++++
>  2 files changed, 16 insertions(+), 0 deletions(-)
> =

> diff --git a/common/Kconfig b/common/Kconfig
> index 617f640..d46c8fc 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -248,6 +248,12 @@ config HUSH_FANCY_PROMPT
>    Allow to set PS1 from the command line. PS1 can have several escaped
> commands
>    like \h for CONFIG_BOARDINFO or \w for the current working directory.
> =

> +config BOARD_BANNER
> + bool
> + prompt "allow a board specific fancy banner"
> + help
> +  Allow to define a custom board banner (you must define BOARD_BANNER in
> your config.h)
Your patch is line broken, which makes is unapplicable.  I don't know
which MUA you're using, but you either should use git send-email or take
a look into

	http://git.kernel.org/?p=3Dgit/git.git;a=3Dblob;f=3DDocumentation/Submitti=
ngPatches;h=3D72741ebda12de8fbf786f12531d70ab465eecf42;hb=3DHEAD#l333

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
