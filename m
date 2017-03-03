Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjgVH-0005oU-V0
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 06:15:49 +0000
Date: Fri, 3 Mar 2017 07:15:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170303061525.vio7e2attbv4ywuy@pengutronix.de>
References: <20170302160136.20616-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170302160136.20616-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] tftp: trivial code simplification
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Mar 02, 2017 at 05:01:36PM +0100, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  fs/tftp.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/fs/tftp.c b/fs/tftp.c
> index 272a7106eb51..bc3580289286 100644
> --- a/fs/tftp.c
> +++ b/fs/tftp.c
> @@ -568,13 +568,11 @@ static int tftp_read(struct device_d *dev, FILE *f,=
 void *buf, size_t insize)
>  =

>  	while (insize) {
>  		now =3D kfifo_get(priv->fifo, buf, insize);
> +		outsize +=3D now;
> +		buf +=3D now;
> +		insize -=3D now;
>  		if (priv->state =3D=3D STATE_DONE)
> -			return outsize + now;
> -		if (now) {
> -			outsize +=3D now;
> -			buf +=3D now;
> -			insize -=3D now;
> -		}
> +			return outsize;
>  =

>  		if (TFTP_FIFO_SIZE - kfifo_len(priv->fifo) >=3D priv->blocksize)
>  			tftp_send(priv);
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
