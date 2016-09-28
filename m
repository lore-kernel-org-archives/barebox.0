Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bp8NR-0001lc-EX
 for barebox@lists.infradead.org; Wed, 28 Sep 2016 06:29:58 +0000
Date: Wed, 28 Sep 2016 08:29:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160928062933.to36p6cbbgpyxfjc@pengutronix.de>
References: <20160927073058.20476-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160927073058.20476-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH] blspec: fix return value of entry_is_of_compatible()
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Sep 27, 2016 at 09:30:58AM +0200, Ulrich =D6lmann wrote:
> The function returns a boolean and not an integer. Hence the former
> explicit/implicit cast of an ERR_PTR to a boolean has led to a return val=
ue of
> true although a bootspec entry with a faulty devicetree is not compatible.
> =

> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  common/blspec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/common/blspec.c b/common/blspec.c
> index c205d481c911..40d4546d2880 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -398,7 +398,7 @@ static bool entry_is_of_compatible(struct blspec_entr=
y *entry)
>  =

>  	root =3D of_unflatten_dtb(fdt);
>  	if (IS_ERR(root)) {
> -		ret =3D PTR_ERR(root);
> +		ret =3D false;
>  		root =3D NULL;
>  		goto out;
>  	}
> -- =

> 2.9.3
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
