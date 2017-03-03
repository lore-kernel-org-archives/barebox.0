Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjkp1-0000mJ-RY
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 10:52:29 +0000
Date: Fri, 3 Mar 2017 11:52:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170303105205.q3q4t7m7xznlsdcw@pengutronix.de>
References: <20170303084841.28907-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170303084841.28907-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v2] tftp: implement forward seeking
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 03, 2017 at 09:48:41AM +0100, Uwe Kleine-K=F6nig wrote:
> Just abuse tftp_read to step forward.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> Hello,
> =

> this is v2 which compared to (implicit) v1 uses xmalloc and no debugging
> any more.
> =

> When tftp_lseek is entered with f->pos =3D=3D pos, the only thing that the
> function does is xmalloc, free, return. Is it worth to optimize that?
> I thought it's not worth the additional (even if trivial) complication,
> but want to at least point that out.

I don' think that's worth optimizing.

Applied, thanks

Sascha

> =

> Best regards
> Uwe
> =

>  fs/tftp.c | 27 ++++++++++++++++++++++++++-
>  1 file changed, 26 insertions(+), 1 deletion(-)
> =

> diff --git a/fs/tftp.c b/fs/tftp.c
> index 56d4365d773a..4bacd2ed7fcf 100644
> --- a/fs/tftp.c
> +++ b/fs/tftp.c
> @@ -591,7 +591,32 @@ static int tftp_read(struct device_d *dev, FILE *f, =
void *buf, size_t insize)
>  =

>  static loff_t tftp_lseek(struct device_d *dev, FILE *f, loff_t pos)
>  {
> -	/* not implemented in tftp protocol */
> +	/* We cannot seek backwards without reloading or caching the file */
> +	if (pos >=3D f->pos) {
> +		loff_t ret;
> +		char *buf =3D xmalloc(1024);
> +
> +		while (pos > f->pos) {
> +			size_t len =3D min_t(size_t, 1024, pos - f->pos);
> +
> +			ret =3D tftp_read(dev, f, buf, len);
> +
> +			if (!ret)
> +				/* EOF, so the desired pos is invalid. */
> +				ret =3D -EINVAL;
> +			if (ret < 0)
> +				goto out_free;
> +
> +			f->pos +=3D ret;
> +		}
> +
> +		ret =3D pos;
> +
> +out_free:
> +		free(buf);
> +		return ret;
> +	}
> +
>  	return -ENOSYS;
>  }
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
