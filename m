Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpZTN-0000OK-Id
 for barebox@lists.infradead.org; Wed, 06 Sep 2017 12:30:26 +0000
Date: Wed, 6 Sep 2017 14:30:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170906123004.psgbwosw5hxpzz6p@pengutronix.de>
References: <20170801092528.31263-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170801092528.31263-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] regsubst.pl: fix typo in help text
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Aug 01, 2017 at 11:25:28AM +0200, Uwe Kleine-K=F6nig wrote:
> It seems I did too much assembler stuff ...
> =

> Fixes: e7fed4338441 ("scripts: Provide script that helps using cpp define=
s in dcd tables")
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  scripts/regsubst.pl | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/scripts/regsubst.pl b/scripts/regsubst.pl
> index 9621a58c47c6..3b6b8aa2e96d 100755
> --- a/scripts/regsubst.pl
> +++ b/scripts/regsubst.pl
> @@ -71,7 +71,7 @@ Then you can process the file with B<regsubst.pl>:
>  If the result looks ok, you can replace the file:
>  =

>   $ scripts/regsubst.pl -I arch/arm/mach-imx/include flash-header-myboard=
.imxcfg > u
> - $ mov u flash-header-myboard.imxcfg
> + $ mv u flash-header-myboard.imxcfg
>  =

>  =3Dcut
>  =

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
