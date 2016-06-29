Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bIAYS-0008Pa-Qk
 for barebox@lists.infradead.org; Wed, 29 Jun 2016 08:09:06 +0000
Date: Wed, 29 Jun 2016 10:08:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160629080842.GT20657@pengutronix.de>
References: <1466606944-22735-1-git-send-email-s.mueller-klieser@phytec.de>
 <1466606944-22735-2-git-send-email-s.mueller-klieser@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1466606944-22735-2-git-send-email-s.mueller-klieser@phytec.de>
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
Subject: Re: [RFC 1/1] ARM: bootm: recalculate decompression space
To: Stefan =?iso-8859-15?Q?M=FCller-Klieser?= <s.mueller-klieser@phytec.de>
Cc: barebox@lists.infradead.org

Hi Stefan,

On Wed, Jun 22, 2016 at 04:49:04PM +0200, Stefan M=FCller-Klieser wrote:
> According to the kernel documentation it is recommended to place the
> compressed image between 32MiB and 128MiB. We will conform to this if we
> have at least 64MiB of RAM. If this is not the case, we fall back to the
> old scheme but take the relocated image into account.
> This is required because of the ARM default kernel config changes
> regarding RODATA layout, which lead to an increased compression factor
> of the kernel image.
> =

> Signed-off-by: Stefan M=FCller-Klieser <s.mueller-klieser@phytec.de>
> ---
>  arch/arm/lib/bootm.c | 24 +++++++++++++++---------
>  1 file changed, 15 insertions(+), 9 deletions(-)
> =

> diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> index 803aa94..d4fe9a4 100644
> --- a/arch/arm/lib/bootm.c
> +++ b/arch/arm/lib/bootm.c
> @@ -73,18 +73,24 @@ static int get_kernel_addresses(size_t image_size,
>  {
>  	unsigned long mem_start, mem_size;
>  	int ret;
> -	size_t image_decomp_size;
> -	unsigned long spacing;
> +	unsigned long decomp_space, spacing;

I renamed back decomp_space to image_decomp_size which leads to this
easier to read patch:

> diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> index 803aa94..8630f2c 100644
> --- a/arch/arm/lib/bootm.c
> +++ b/arch/arm/lib/bootm.c
> @@ -81,10 +81,17 @@ static int get_kernel_addresses(size_t image_size,
>  		return ret;
>  =

>  	/*
> -	 * We don't know the exact decompressed size so just use a conservative
> -	 * default of 4 times the size of the compressed image.
> +	 * The kernel documentation "Documentation/arm/Booting" advises
> +	 * to place the compressed image outside of the lowest 32MiB to
> +	 * avoid relocation. We should do this if we have at least 64MiB
> +	 * of ram. If we have less space, we assume a maximum
> +	 * compression factor of 4 plus 1. The latter factor is the
> +	 * space for the relocated image.

Why space for the relocated image? Our mission is to place the image
where it doesn't have to be relocated.

>  	 */
> -	image_decomp_size =3D PAGE_ALIGN(image_size * 4);
> +	if (mem_size >=3D SZ_64M)
> +		image_decomp_size =3D SZ_32M;
> +	else
> +		image_decomp_size =3D PAGE_ALIGN(image_size * 5);

	image_decomp_size =3D PAGE_ALIGN(image_size * 5);
	if (mem_size >=3D SZ_64M)
		image_decomp_size =3D max(image_decomp_size, SZ_32M);

>  =

>  	/*
>  	 * By default put oftree/initrd close behind compressed kernel image to
> @@ -111,7 +118,7 @@ static int get_kernel_addresses(size_t image_size,
>  		spacing +=3D image_decomp_size;
>  	}
>  =

> -	*mem_free =3D PAGE_ALIGN(*load_address + image_size + spacing);
> +	*mem_free =3D PAGE_ALIGN(*load_address + image_decomp_size + spacing);

Now why this change? We have two cases to consider. First, when the
*load_address is unspecified, we aim for this setup:

|- uncompressed image -||- compressed image -||- spacing -||- free for init=
rd/oftree -|

The code should be correct for this case without this hunk:

*load_address =3D mem_start + image_decomp_size
*mem_free =3D *load_address + image_size + spacing

Second case is when the load address is specified. In this case we
adjust the spacing by image_decomp_size, this also seems to be done
correctly in the current code.

So I think this hunk is wrong.

Instead we should consider adding the following at the end:

	if (mem_size > SZ_256M)
		*mem_free =3D max(*mem_free, mem_start + SZ_128M);

This would make sure to follow the recommendation to put the
initrd/device tree at 128MiB.

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
