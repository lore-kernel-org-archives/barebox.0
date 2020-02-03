Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyWbX-0004n7-La
 for barebox@lists.infradead.org; Mon, 03 Feb 2020 07:57:13 +0000
Date: Mon, 3 Feb 2020 08:57:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200203075707.wc2q5f4isveehjuk@pengutronix.de>
References: <20200128130801.24890-1-u.kleine-koenig@pengutronix.de>
 <20200128130801.24890-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128130801.24890-2-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 1/3] commands/test: Bail out on incomplete command line
 options
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jan 28, 2020 at 02:07:59PM +0100, Uwe Kleine-K=F6nig wrote:
> This makes test emit an error (and fail) on e.g.
> =

> 	test -f

test -f in bash returns 0 as well and also doesn't emit an error.

> =

> and also on unimplemented options like
> =

> 	test -c /dev/null

test -H /foo/bar in bash says "bash: test: -H: unary operator expected".

I am not sure how relevant this is, but the behaviour you introduce is
not consistent to bash.

Sascha


> =

> .
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  commands/test.c | 5 +++++
>  1 file changed, 5 insertions(+)
> =

> diff --git a/commands/test.c b/commands/test.c
> index c4f493860f14..ab108fc845d5 100644
> --- a/commands/test.c
> +++ b/commands/test.c
> @@ -208,6 +208,11 @@ static int do_test(int argc, char *argv[])
>  			}
>  		}
>  =

> +		if (left < adv) {
> +			printf("test: failed to parse arguments\n");
> +			return 1;
> +		}
> +
>  		if (last_cmp =3D=3D 0)
>  			expr =3D last_expr || expr;
>  		else if (last_cmp =3D=3D 1)
> -- =

> 2.24.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
