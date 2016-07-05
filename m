Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKMyn-0002is-NW
 for barebox@lists.infradead.org; Tue, 05 Jul 2016 09:49:22 +0000
Date: Tue, 5 Jul 2016 11:47:08 +0200 (CEST)
From: Alexander Kurz <akurz@blala.de>
In-Reply-To: <alpine.DEB.2.00.1607051136430.23712@blala.de>
Message-ID: <alpine.DEB.2.00.1607051138040.23712@blala.de>
References: <alpine.DEB.2.00.1607051136430.23712@blala.de>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED;
 BOUNDARY="-598520180-187463408-1467712028=:23712"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: bootm: recalculate decompression space
To: s.mueller-klieser@phytec.de
Cc: barebox@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---598520180-187463408-1467712028=:23712
Content-Type: TEXT/PLAIN; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable

Hi Stefan,
FYI, I just got a compiler warning obviously related to your patch
On Fri Jul 1 07:48:39 PDT 2016, Stefan M=FCller-Klieser wrote:

> diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> index 803aa94..be1259b 100644
> --- a/arch/arm/lib/bootm.c
> +++ b/arch/arm/lib/bootm.c
> @@ -81,10 +81,15 @@ static int get_kernel_addresses(size_t image_size,
>  		return ret;
> =20
>  	/*
> -	 * We don't know the exact decompressed size so just use a=20
> conservative
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
> =20
>  	/*
>  	 * By default put oftree/initrd close behind compressed kernel=20
> image to

this one:
>   CC      arch/arm/lib/bootm.o
> In file included from include/common.h:30:0,
>                  from arch/arm/lib/bootm.c:2:
> arch/arm/lib/bootm.c: In function 'get_kernel_addresses':
> include/linux/kernel.h:110:17: warning: comparison of distinct pointer=20
> types lacks a cast
>   (void) (&_max1 =3D=3D &_max2);  \
>                 ^
> arch/arm/lib/bootm.c:92:23: note: in expansion of macro 'max'
>    image_decomp_size =3D max(image_decomp_size, SZ_32M);
>                        ^

I am using
$ gcc --version
arm-arm1136jfs-linux-gnueabi-gcc (crosstool-NG crosstool-ng-1.22.0) 5.2.0

Regards, Alexander
---598520180-187463408-1467712028=:23712
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

---598520180-187463408-1467712028=:23712--
