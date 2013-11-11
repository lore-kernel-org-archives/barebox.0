Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VfoXd-0002hV-Su
 for barebox@lists.infradead.org; Mon, 11 Nov 2013 10:16:22 +0000
Date: Mon, 11 Nov 2013 11:15:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131111101559.GG24559@pengutronix.de>
References: <1383821285-28892-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1383821285-28892-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] blspec: Fix another crash with menu disabled
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, =?iso-8859-15?Q?J=FCrgen?= Beisert <jbe@pengutronix.de>

On Thu, Nov 07, 2013 at 11:48:05AM +0100, Uwe Kleine-K=F6nig wrote:
> boot -l crashes with CONFIG_MENU disabled because blspec_alloc returns
> with blspec->menu being NULL in this case. So guard the usage of
> blspec->menu accordingly.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Applied, thanks

Sascha

> ---
>  commands/boot.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> =

> diff --git a/commands/boot.c b/commands/boot.c
> index 8105889..cce4c30 100644
> --- a/commands/boot.c
> +++ b/commands/boot.c
> @@ -87,7 +87,10 @@ static struct blspec *bootentries_collect(void)
>  	struct blspec *blspec;
>  =

>  	blspec =3D blspec_alloc();
> -	blspec->menu->display =3D asprintf("boot");
> +
> +	if (IS_ENABLED(CONFIG_MENU))
> +		blspec->menu->display =3D asprintf("boot");
> +
>  	bootsources_menu_env_entries(blspec);
>  	if (IS_ENABLED(CONFIG_BLSPEC))
>  		blspec_scan_devices(blspec);
> -- =

> 1.8.4.rc3
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
