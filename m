Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bK0Es-0000kL-UV
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 09:32:27 +0000
Date: Mon, 4 Jul 2016 11:32:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160704093204.GI20657@pengutronix.de>
References: <1467384519-23059-1-git-send-email-s.mueller-klieser@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467384519-23059-1-git-send-email-s.mueller-klieser@phytec.de>
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
Subject: Re: [PATCH] ARM: bootm: recalculate decompression space
To: Stefan =?iso-8859-15?Q?M=FCller-Klieser?= <s.mueller-klieser@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 01, 2016 at 04:48:39PM +0200, Stefan M=FCller-Klieser wrote:
> According to the kernel documentation it is recommended to place the
> compressed image between 32 MiB and 128 MiB. The DTB and initrd should
> be placed above 128 MiB. We will follow the recommendation as long as we
> have enough RAM. If this is not the case, we fall back to the scheme.
> This change is required because of the ARM default kernel config changes
> regarding RODATA layout, which lead to an increased compression factor
> of the kernel image.
> This should be regarded as an intermediate solution until there is a
> mechanism for the kernel image to report the decompressed layout
> requirements to the bootloader.
> =

> Signed-off-by: Stefan M=FCller-Klieser <s.mueller-klieser@phytec.de>
> ---
>  arch/arm/lib/bootm.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)

Applied, thanks.

Let's hope we don't have to revisit this too soon.

Sascha

> =

> diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> index 803aa94..be1259b 100644
> --- a/arch/arm/lib/bootm.c
> +++ b/arch/arm/lib/bootm.c
> @@ -81,10 +81,15 @@ static int get_kernel_addresses(size_t image_size,
>  		return ret;
>  =

>  	/*
> -	 * We don't know the exact decompressed size so just use a conservative
> -	 * default of 4 times the size of the compressed image.
> +	 * The kernel documentation "Documentation/arm/Booting" advises
> +	 * to place the compressed image outside of the lowest 32 MiB to
> +	 * avoid relocation. We should do this if we have at least 64 MiB
> +	 * of ram. If we have less space, we assume a maximum
> +	 * compression factor of 5.
>  	 */
> -	image_decomp_size =3D PAGE_ALIGN(image_size * 4);
> +	image_decomp_size =3D PAGE_ALIGN(image_size * 5);
> +	if (mem_size >=3D SZ_64M)
> +		image_decomp_size =3D max(image_decomp_size, SZ_32M);
>  =

>  	/*
>  	 * By default put oftree/initrd close behind compressed kernel image to
> @@ -113,6 +118,13 @@ static int get_kernel_addresses(size_t image_size,
>  =

>  	*mem_free =3D PAGE_ALIGN(*load_address + image_size + spacing);
>  =

> +	/*
> +	 * Place oftree/initrd outside of the first 128 MiB, if we have space
> +	 * for it. This avoids potential conflicts with the kernel decompressor.
> +	 */
> +	if (mem_size > SZ_256M)
> +		*mem_free =3D max(*mem_free, mem_start + SZ_128M);
> +
>  	return 0;
>  }
>  =

> -- =

> 1.9.1
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
