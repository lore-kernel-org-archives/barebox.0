Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjgOv-0002pb-Mv
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 06:09:15 +0000
Date: Fri, 3 Mar 2017 07:08:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170303060851.lf4uv6nclvhrowp3@pengutronix.de>
References: <20170302143703.25167-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170302143703.25167-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] lseek: tighten error checking and allow negative offsets
 for SEEK_END
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Mar 02, 2017 at 03:37:03PM +0100, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  fs/fs.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/fs/fs.c b/fs/fs.c
> index e7b696591433..1901c94ad1ea 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -910,6 +910,8 @@ loff_t lseek(int fildes, loff_t offset, int whence)
>  	case SEEK_SET:
>  		if (f->size !=3D FILE_SIZE_STREAM && offset > f->size)
>  			goto out;
> +		if (offset < 0)
> +			goto out;
>  		pos =3D offset;
>  		break;
>  	case SEEK_CUR:
> @@ -918,9 +920,9 @@ loff_t lseek(int fildes, loff_t offset, int whence)
>  		pos =3D f->pos + offset;
>  		break;
>  	case SEEK_END:
> -		if (offset)
> +		if (offset > 0)
>  			goto out;
> -		pos =3D f->size;
> +		pos =3D f->size + offset;
>  		break;
>  	default:
>  		goto out;
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
