Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMq0Y-0004qQ-2C
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 06:17:55 +0000
Date: Mon, 19 Jun 2017 08:17:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170619061734.zpqebgend2n2fw5i@pengutronix.de>
References: <20170613220207.18376-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170613220207.18376-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] scripts/kwbimage: support empty binary.0 files
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 14, 2017 at 12:02:07AM +0200, Uwe Kleine-K=F6nig wrote:
> While it doesn't make sense to use empty binary headers on a machine for
> first stage, it is convenient to support this for build testing.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  scripts/kwbimage.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
> index 5b84db3f7a23..2a052a7ff385 100644
> --- a/scripts/kwbimage.c
> +++ b/scripts/kwbimage.c
> @@ -967,7 +967,11 @@ static void *image_create_v1(struct image_cfg_elemen=
t *image_cfg,
>  =

>  		cur +=3D (binarye->binary.nargs + 1) * sizeof(unsigned int);
>  =

> -		ret =3D fread(cur, s.st_size, 1, bin);
> +		if (s.st_size)
> +			ret =3D fread(cur, s.st_size, 1, bin);
> +		else
> +			ret =3D 1;
> +
>  		if (ret !=3D 1) {
>  			fprintf(stderr,
>  				"Could not read binary image %s\n",
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
