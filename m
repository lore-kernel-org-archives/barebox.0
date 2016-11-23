Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c9U6y-0003RQ-6L
 for barebox@lists.infradead.org; Wed, 23 Nov 2016 09:45:05 +0000
Date: Wed, 23 Nov 2016 10:44:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161123094442.aw4obuzrhk4saq6r@pengutronix.de>
References: <20161122152121.25568-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161122152121.25568-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH] ubi: Only read necessary size when reading the VID header
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Nov 22, 2016 at 04:21:21PM +0100, Ulrich =D6lmann wrote:
> Based on kernel commit 8a8e8d2fdbab ("ubi: Only read necessary size when =
reading
> the VID header") by Sascha Hauer <s.hauer@pengutronix.de>:
> =

>     When reading the vid hdr from the device UBI always reads a whole
>     page. Instead, read only the data we actually need and speed up
>     attachment of UBI devices by potentially making use of reading
>     subpages if the NAND driver supports it.
> =

>     Since the VID header may be at offset vid_hdr_shift in the page and
>     we can only read from the beginning of a page we have to add that
>     offset to the read size.
> =

> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>

Applied, thanks

Sascha

> ---
>  drivers/mtd/ubi/io.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/mtd/ubi/io.c b/drivers/mtd/ubi/io.c
> index 43af4a52dff9..6d08f92ea647 100644
> --- a/drivers/mtd/ubi/io.c
> +++ b/drivers/mtd/ubi/io.c
> @@ -711,7 +711,7 @@ int ubi_io_read_vid_hdr(struct ubi_device *ubi, int p=
num,
>  =

>  	p =3D (char *)vid_hdr - ubi->vid_hdr_shift;
>  	read_err =3D ubi_io_read(ubi, p, pnum, ubi->vid_hdr_aloffset,
> -			  ubi->vid_hdr_alsize);
> +			  ubi->vid_hdr_shift + UBI_VID_HDR_SIZE);
>  	if (read_err && read_err !=3D UBI_IO_BITFLIPS && !mtd_is_eccerr(read_er=
r))
>  		return read_err;
>  =

> -- =

> 2.10.2
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
