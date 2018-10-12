Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gAraY-0007wL-VE
 for barebox@lists.infradead.org; Fri, 12 Oct 2018 07:10:24 +0000
Date: Fri, 12 Oct 2018 09:10:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181012071011.chvpz3fft2qagwps@pengutronix.de>
References: <20181010122340.28241-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181010122340.28241-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH] state: backend_bucket_circular: remove unused variables
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Oct 10, 2018 at 02:23:40PM +0200, Ulrich =D6lmann wrote:
> This has been forgotten in commit 9d6d91931afb ("state: Remove -EUCLEAN c=
heck
> from userspace tool").
> =

> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  common/state/backend_bucket_circular.c | 2 --
>  1 file changed, 2 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/common/state/backend_bucket_circular.c b/common/state/backen=
d_bucket_circular.c
> index 277b94d79737..4b71d8751da6 100644
> --- a/common/state/backend_bucket_circular.c
> +++ b/common/state/backend_bucket_circular.c
> @@ -155,8 +155,6 @@ static int state_mtd_peb_read(struct state_backend_st=
orage_bucket_circular *circ
>  {
>  	int ret;
>  	off_t offset =3D suboffset;
> -	struct mtd_ecc_stats stat1, stat2;
> -	bool nostats =3D false;
>  =

>  	offset +=3D (off_t)circ->eraseblock * circ->mtd->erasesize;
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
