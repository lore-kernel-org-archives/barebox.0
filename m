Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKN8M-0006s3-Eb
 for barebox@lists.infradead.org; Tue, 05 Jul 2016 09:59:15 +0000
Date: Tue, 5 Jul 2016 11:58:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160705095849.GP20657@pengutronix.de>
References: <alpine.DEB.2.00.1607051136430.23712@blala.de>
 <alpine.DEB.2.00.1607051138040.23712@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.00.1607051138040.23712@blala.de>
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
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org, s.mueller-klieser@phytec.de

On Tue, Jul 05, 2016 at 11:47:08AM +0200, Alexander Kurz wrote:
> Hi Stefan,
> FYI, I just got a compiler warning obviously related to your patch
> On Fri Jul 1 07:48:39 PDT 2016, Stefan M=FCller-Klieser wrote:
> =

> > diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> > index 803aa94..be1259b 100644
> > --- a/arch/arm/lib/bootm.c
> > +++ b/arch/arm/lib/bootm.c
> > @@ -81,10 +81,15 @@ static int get_kernel_addresses(size_t image_size,
> >  		return ret;
> >  =

> >  	/*
> > -	 * We don't know the exact decompressed size so just use a =

> > conservative
> > -	 * default of 4 times the size of the compressed image.
> > +	 * The kernel documentation "Documentation/arm/Booting" advises
> > +	 * to place the compressed image outside of the lowest 32 MiB to
> > +	 * avoid relocation. We should do this if we have at least 64 MiB
> > +	 * of ram. If we have less space, we assume a maximum
> > +	 * compression factor of 5.
> >  	 */
> > -	image_decomp_size =3D PAGE_ALIGN(image_size * 4);
> > +	image_decomp_size =3D PAGE_ALIGN(image_size * 5);
> > +	if (mem_size >=3D SZ_64M)
> > +		image_decomp_size =3D max(image_decomp_size, SZ_32M);
> >  =

> >  	/*
> >  	 * By default put oftree/initrd close behind compressed kernel =

> > image to
> =

> this one:
> >   CC      arch/arm/lib/bootm.o
> > In file included from include/common.h:30:0,
> >                  from arch/arm/lib/bootm.c:2:
> > arch/arm/lib/bootm.c: In function 'get_kernel_addresses':
> > include/linux/kernel.h:110:17: warning: comparison of distinct pointer =

> > types lacks a cast
> >   (void) (&_max1 =3D=3D &_max2);  \

I get that aswell. Will change to:

	max_t(size_t, image_decomp_size, SZ_32M);

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
