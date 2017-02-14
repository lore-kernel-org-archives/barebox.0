Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdXqN-0000sK-6V
 for barebox@lists.infradead.org; Tue, 14 Feb 2017 07:48:13 +0000
Date: Tue, 14 Feb 2017 08:47:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170214074749.4eqvjtshejqrvinw@pengutronix.de>
References: <20170211195752.13616-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170211195752.13616-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 1/2] scripts: kwboot: fix image check for padded images
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, bodhi <tlibertin@gmail.com>

On Sat, Feb 11, 2017 at 08:57:51PM +0100, Uwe Kleine-K=F6nig wrote:
> When there is some padding between header and payload the claim
> =

> 	header_size + image_size =3D=3D file_size
> =

> fails. Relax the check accordingly to:
> =

> 	header_size <=3D image_offset &&
> 	image_offset + image_size =3D=3D file_size
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  scripts/kwboot.c | 16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/scripts/kwboot.c b/scripts/kwboot.c
> index 9e4181e539ac..3ab26cd936c5 100644
> --- a/scripts/kwboot.c
> +++ b/scripts/kwboot.c
> @@ -603,7 +603,7 @@ static int
>  kwboot_check_image(unsigned char *img, size_t size)
>  {
>  	size_t i;
> -	size_t header_size, image_size;
> +	size_t header_size, image_size, image_offset;
>  	unsigned char csum =3D 0;
>  =

>  	if (size < 0x20) {
> @@ -640,12 +640,20 @@ kwboot_check_image(unsigned char *img, size_t size)
>  =

>  	image_size =3D img[0x4] | (img[0x5] << 8) |
>  		(img[0x6] << 16) | (img[0x7] << 24);
> +	image_offset =3D img[0xc] | (img[0xd] << 8) |
> +		(img[0xe] << 16) | (img[0xf] << 24);
>  =

>  	header_size =3D (img[0x9] << 16) | img[0xa] | (img[0xb] << 8);
>  =

> -	if (header_size + image_size !=3D size) {
> -		fprintf(stderr, "Size mismatch (%zu + %zu !=3D %zu)\n",
> -			header_size, image_size, size);
> +	if (header_size > image_offset) {
> +		fprintf(stderr, "Header (%zu) expands over image start (%zu)\n",
> +			header_size, image_offset);
> +		return 1;
> +	}
> +
> +	if (image_offset + image_size !=3D size) {
> +		fprintf(stderr, "Image doesn't end at file end (%zu + %zu !=3D %zu)\n",
> +			image_offset, image_size, size);
>  		return 1;
>  	}
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
