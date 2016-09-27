Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bolnF-0002gb-Cb
 for barebox@lists.infradead.org; Tue, 27 Sep 2016 06:23:06 +0000
Date: Tue, 27 Sep 2016 08:22:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160927062226.gakimgn2sx6eaets@pengutronix.de>
References: <20160927054524.26545-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160927054524.26545-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH] blspec: fix erroneus free in entry_is_of_compatible()
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Sep 27, 2016 at 07:45:24AM +0200, Ulrich =D6lmann wrote:
> Whenever of_unflatten_dtb() encountered an error it already released the =
memory
> before returning the error code. Make this apparent by setting the pointe=
r to
> NULL to avoid an erroneus free.
> =

> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  common/blspec.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> =

> diff --git a/common/blspec.c b/common/blspec.c
> index 66decb161ebd..c205d481c911 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -399,6 +399,7 @@ static bool entry_is_of_compatible(struct blspec_entr=
y *entry)
>  	root =3D of_unflatten_dtb(fdt);
>  	if (IS_ERR(root)) {
>  		ret =3D PTR_ERR(root);
> +		root =3D NULL;
>  		goto out;
>  	}
>  =

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
