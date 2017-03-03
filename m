Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjgTD-0004N8-8x
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 06:13:40 +0000
Date: Fri, 3 Mar 2017 07:13:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170303061317.mgfquekqb6rep5sa@pengutronix.de>
References: <20170302155528.20781-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170302155528.20781-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] tftp: implement forward seeking
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Mar 02, 2017 at 04:55:28PM +0100, Uwe Kleine-K=F6nig wrote:
> Just abuse tftp_read to step forward.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  fs/tftp.c | 25 +++++++++++++++++++++++--
>  1 file changed, 23 insertions(+), 2 deletions(-)
> =

> diff --git a/fs/tftp.c b/fs/tftp.c
> index 56d4365d773a..272a7106eb51 100644
> --- a/fs/tftp.c
> +++ b/fs/tftp.c
> @@ -591,8 +591,29 @@ static int tftp_read(struct device_d *dev, FILE *f, =
void *buf, size_t insize)
>  =

>  static loff_t tftp_lseek(struct device_d *dev, FILE *f, loff_t pos)
>  {
> -	/* not implemented in tftp protocol */
> -	return -ENOSYS;
> +	if (pos >=3D f->pos) {
> +		char buf[1024];

Better use an allocated buffer? 1KiB is quite large for allocating on
the stack.

> +		int ret;
> +		while (pos > f->pos) {
> +			size_t len =3D min(sizeof(buf), (size_t)(pos - f->pos));
> +			ret =3D tftp_read(dev, f, buf, len);
> +
> +			if (ret < 0)
> +				return ret;
> +			else if (!ret)
> +				return -EINVAL;
> +			f->pos +=3D ret;
> +
> +			memory_display(buf, f->pos - len, 0x10, 4, 0);

debugging leftover?

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
