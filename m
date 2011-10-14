Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1REc45-0007rL-Ve
	for barebox@lists.infradead.org; Fri, 14 Oct 2011 07:20:22 +0000
Date: Fri, 14 Oct 2011 09:20:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111014072020.GY13898@pengutronix.de>
References: <1318543601-20819-1-git-send-email-loic.minier@linaro.org>
	<1318543601-20819-6-git-send-email-loic.minier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1318543601-20819-6-git-send-email-loic.minier@linaro.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/5] Use size_t for memory offsets
To: =?iso-8859-15?Q?Lo=EFc?= Minier <loic.minier@linaro.org>
Cc: barebox@lists.infradead.org

On Fri, Oct 14, 2011 at 12:06:41AM +0200, Lo=EFc Minier wrote:
> mem_read() and mem_write() did arithmetic with a local ulong size
> variable, a size_t count and an ulong offset to return a ssize_t result.
> Change them to use size_t for size and offset and stop casting count to
> ulong.

You should change the prototypes in include/driver.h aswell.

Sascha

> =

> This fixes a warning when building for 64-bits.
> =

> This change might have impact on the exported symbols.
> =

> Signed-off-by: Lo=EFc Minier <loic.minier@linaro.org>
> ---
>  fs/fs.c |   12 ++++++------
>  1 files changed, 6 insertions(+), 6 deletions(-)
> =

> diff --git a/fs/fs.c b/fs/fs.c
> index 7d65ec8..0cb226d 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -1038,31 +1038,31 @@ static void memcpy_sz(void *_dst, const void *_sr=
c, ulong count, ulong rwsize)
>  	}
>  }
>  =

> -ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, ulong offse=
t, ulong flags)
> +ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, size_t offs=
et, ulong flags)
>  {
> -	ulong size;
> +	size_t size;
>  	struct device_d *dev;
>  =

>  	if (!cdev->dev || cdev->dev->num_resources < 1)
>  		return -1;
>  	dev =3D cdev->dev;
>  =

> -	size =3D min((ulong)count, dev->resource[0].size - offset);
> +	size =3D min(count, (size_t)dev->resource[0].size - offset);
>  	memcpy_sz(buf, dev_get_mem_region(dev, 0) + offset, size, flags & O_RWS=
IZE_MASK);
>  	return size;
>  }
>  EXPORT_SYMBOL(mem_read);
>  =

> -ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, ulon=
g offset, ulong flags)
> +ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, size=
_t offset, ulong flags)
>  {
> -	ulong size;
> +	size_t size;
>  	struct device_d *dev;
>  =

>  	if (!cdev->dev || cdev->dev->num_resources < 1)
>  		return -1;
>  	dev =3D cdev->dev;
>  =

> -	size =3D min((ulong)count, dev->resource[0].size - offset);
> +	size =3D min(count, (size_t)dev->resource[0].size - offset);
>  	memcpy_sz(dev_get_mem_region(dev, 0) + offset, buf, size, flags & O_RWS=
IZE_MASK);
>  	return size;
>  }
> -- =

> 1.7.5.4
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
