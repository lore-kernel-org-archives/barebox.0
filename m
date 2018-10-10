Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gA7F1-0000g8-Nl
 for barebox@lists.infradead.org; Wed, 10 Oct 2018 05:41:05 +0000
Date: Wed, 10 Oct 2018 07:40:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181010054051.ew7alumaqjbtkht7@pengutronix.de>
References: <20181008174523.25757-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181008174523.25757-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH] state: backend_bucket_circular: fix memory leak
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Oct 08, 2018 at 07:45:23PM +0200, Ulrich =D6lmann wrote:
> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  common/state/backend_bucket_circular.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/common/state/backend_bucket_circular.c b/common/state/backen=
d_bucket_circular.c
> index 0529421a2c2f..277b94d79737 100644
> --- a/common/state/backend_bucket_circular.c
> +++ b/common/state/backend_bucket_circular.c
> @@ -480,7 +480,8 @@ int state_backend_bucket_circular_create(struct devic=
e_d *dev, const char *path,
>  	circ->fd =3D open(path, O_RDWR);
>  	if (circ->fd < 0) {
>  		pr_err("Failed to open circular bucket '%s'\n", path);
> -		return -errno;
> +		ret =3D -errno;
> +		goto out_free;
>  	}
>  #endif
>  =

> @@ -489,7 +490,7 @@ int state_backend_bucket_circular_create(struct devic=
e_d *dev, const char *path,
>  		dev_info(dev, "Not using eraseblock %u, it is marked as bad (%d)\n",
>  			 circ->eraseblock, ret);
>  		ret =3D -EIO;
> -		goto out_free;
> +		goto out_close;
>  	}
>  =

>  	circ->bucket.read =3D state_backend_bucket_circular_read;
> @@ -499,13 +500,15 @@ int state_backend_bucket_circular_create(struct dev=
ice_d *dev, const char *path,
>  =

>  	ret =3D state_backend_bucket_circular_init(*bucket);
>  	if (ret)
> -		goto out_free;
> +		goto out_close;
>  =

>  	return 0;
>  =

> -out_free:
> +out_close:
>  #ifndef __BAREBOX__
>  	close(circ->fd);
> +out_free:
> +	free(circ->mtd);
>  #endif
>  	free(circ);
>  =

> -- =

> 2.19.0
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
