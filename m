Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bjKXa-0001Ve-Vm
 for barebox@lists.infradead.org; Mon, 12 Sep 2016 06:16:28 +0000
Date: Mon, 12 Sep 2016 08:16:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160912061602.pbmdgl27zw3x5grg@pengutronix.de>
References: <20160909062541.s4pgmxefhgq7rlge@pengutronix.de>
 <1473403042-20535-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1473403042-20535-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] xstrdup: don't panic on xstrdup(NULL)
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 09, 2016 at 08:37:22AM +0200, Uwe Kleine-K=F6nig wrote:
> Instead return just NULL. This matches the behaviour of kstrdup in the
> kernel and xstrdup in busybox.
> =

> This fixes a panic with CONFIG_CMD_MAGICVAR=3Dy and
> CONFIG_CMD_MAGICVAR_HELP unset in magicvar_add() where description is
> always NULL.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---

Applied, thanks

Sascha

>  lib/xfuncs.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> =

> diff --git a/lib/xfuncs.c b/lib/xfuncs.c
> index aaf078854429..1dc2ea92d84f 100644
> --- a/lib/xfuncs.c
> +++ b/lib/xfuncs.c
> @@ -56,10 +56,15 @@ EXPORT_SYMBOL(xzalloc);
>  =

>  char *xstrdup(const char *s)
>  {
> -	char *p =3D strdup(s);
> +	char *p;
> +
> +	if (!s)
> +		return NULL;
>  =

> +	p =3D strdup(s);
>  	if (!p)
>  		panic("ERROR: out of memory\n");
> +
>  	return p;
>  }
>  EXPORT_SYMBOL(xstrdup);
> -- =

> 2.8.1
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
