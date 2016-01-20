Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aLndb-00085U-O4
 for barebox@lists.infradead.org; Wed, 20 Jan 2016 07:57:08 +0000
Date: Wed, 20 Jan 2016 08:56:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160120075645.GM13058@pengutronix.de>
References: <1453276010-4669-1-git-send-email-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1453276010-4669-1-git-send-email-uwe@kleine-koenig.org>
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
Subject: Re: [PATCH] kwboot: do a filetype check before sending the image
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc: barebox@lists.infradead.org

On Wed, Jan 20, 2016 at 08:46:50AM +0100, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> ---
>  scripts/kwboot.c | 45 +++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 45 insertions(+)
> =

> diff --git a/scripts/kwboot.c b/scripts/kwboot.c
> index 46328d8ed006..61f807d163f7 100644
> --- a/scripts/kwboot.c
> +++ b/scripts/kwboot.c
> @@ -546,6 +546,49 @@ out:
>  	return rc;
>  }
>  =

> +static void
> +kwboot_check_image(unsigned char *img, size_t size)
> +{
> +	size_t i;
> +	size_t header_size, image_size;
> +	unsigned char csum =3D 0;
> +
> +	switch (img[0x0]) {
> +		case 0x5a: /* SPI/NOR */
> +		case 0x69: /* UART0 */
> +		case 0x78: /* SATA */
> +		case 0x8b: /* NAND */
> +		case 0x9c: /* PCIe */
> +			break;
> +		default:
> +			printf("Unknown boot source: 0x%hhx\n", img[0x0]);
> +	}
> +
> +	if (img[0x8] !=3D 1)
> +		printf("Unknown version: 0x%hhx\n", img[0x8]);
> +
> +	image_size =3D img[0x4] | (img[0x5] << 8) |
> +		(img[0x6] << 16) | (img[0x7] << 24);
> +
> +	header_size =3D (img[0x9] << 16) | img[0xa] | (img[0xb] << 8);
> +
> +	if (header_size + image_size !=3D size) {
> +		printf("Size mismatch (%zu + %zu !=3D %zu)\n",
> +		       header_size, image_size, size);
> +	} else {
> +		for (i =3D 0; i < header_size; ++i)
> +			csum +=3D img[i];
> +
> +		csum -=3D img[0x1f];
> +
> +		if (csum !=3D img[0x1f])
> +			printf("Checksum mismatch: header: 0x%02hhx, calculated: 0x%02hhx\n",
> +			       img[0x1f], csum);
> +	}

Shouldn't these failures have any consequences like exiting the program
with an error?

> +}
> +
> +
> +

Please drop the multiple blank lines.

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
