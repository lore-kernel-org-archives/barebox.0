Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c7GeM-00072W-V7
 for barebox@lists.infradead.org; Thu, 17 Nov 2016 06:58:23 +0000
Date: Thu, 17 Nov 2016 07:58:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161117065801.bak5owik6gnti7bw@pengutronix.de>
References: <20161116095244.14288-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161116095244.14288-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v2 1/4] scripts/kwbimage: fix handling of binary header
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 16, 2016 at 10:52:41AM +0100, Uwe Kleine-K=F6nig wrote:
> A binary header is 12 bytes + (4 bytes * Number of Arguments) bigger
> than the actual binary. Before this commit image extraction was wrong an
> made binary.0 too big by four bytes at the end (which were 0 in all usual
> cases). Image creation had the same problem which resulted in broken
> images when the binary doesn't end in 4 bytes containing 0.
> =

> Further handle binaries with a length that is not aligned to 4 bytes.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Applied, thanks

Sascha

> ---
> Changes since (implicit) v1:
>  - make it patch 1 as it is a fix
> =

>  scripts/kwbimage.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> =

> diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
> index 448ac2a5d416..c560f581a727 100644
> --- a/scripts/kwbimage.c
> +++ b/scripts/kwbimage.c
> @@ -490,7 +490,7 @@ static int image_extract_binary_hdr_v1(const void *bi=
nary, const char *output,
>  	}
>  =

>  	ret =3D fwrite(binary + (nargs + 1) * sizeof(unsigned int),
> -		     binsz - (nargs + 1) * sizeof(unsigned int), 1,
> +		     binsz - (nargs + 2) * sizeof(unsigned int), 1,
>  		     binaryout);
>  	if (ret !=3D 1) {
>  		fprintf(stderr, "Could not write to output file %s\n",
> @@ -869,8 +869,8 @@ static void *image_create_v1(struct image_cfg_element=
 *image_cfg,
>  			return NULL;
>  		}
>  =

> -		headersz +=3D s.st_size +
> -			binarye->binary.nargs * sizeof(unsigned int);
> +		headersz +=3D ALIGN_SUP(s.st_size, 4) +
> +			12 + binarye->binary.nargs * sizeof(unsigned int);
>  		hasext =3D 1;
>  	}
>  =

> @@ -951,8 +951,8 @@ static void *image_create_v1(struct image_cfg_element=
 *image_cfg,
>  		fstat(fileno(bin), &s);
>  =

>  		binhdrsz =3D sizeof(struct opt_hdr_v1) +
> -			(binarye->binary.nargs + 1) * sizeof(unsigned int) +
> -			s.st_size;
> +			(binarye->binary.nargs + 2) * sizeof(unsigned int) +
> +			ALIGN_SUP(s.st_size, 4);
>  		hdr->headersz_lsb =3D binhdrsz & 0xFFFF;
>  		hdr->headersz_msb =3D (binhdrsz & 0xFFFF0000) >> 16;
>  =

> @@ -976,7 +976,7 @@ static void *image_create_v1(struct image_cfg_element=
 *image_cfg,
>  =

>  		fclose(bin);
>  =

> -		cur +=3D s.st_size;
> +		cur +=3D ALIGN_SUP(s.st_size, 4);
>  =

>  		/*
>  		 * For now, we don't support more than one binary
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
