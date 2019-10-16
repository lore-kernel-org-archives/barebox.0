Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKavh-00014Q-3l
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 04:28:58 +0000
Date: Wed, 16 Oct 2019 06:28:47 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20191016042847.kgf7f4u7fvc2dy5r@pengutronix.de>
References: <20191015160945.7930-1-o.rempel@pengutronix.de>
 <20191015234106.9cfb8923875a4354d94b31ea@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191015234106.9cfb8923875a4354d94b31ea@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5266492390840975147=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] MIPS: init cache before flashing it
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org


--===============5266492390840975147==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yn6cmp4yaxziz2we"
Content-Disposition: inline


--yn6cmp4yaxziz2we
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Antony,

On Tue, Oct 15, 2019 at 11:41:06PM +0300, Antony Pavlov wrote:
> On Tue, 15 Oct 2019 18:09:45 +0200
> Oleksij Rempel <o.rempel@pengutronix.de> wrote:
>=20
> Hi!
>=20
> Please review this thread http://lists.infradead.org/pipermail/barebox/20=
19-June/038530.html
> AFAIR we have to clear BSS before calling r4k_cache_init().

Ah... you right! Can you please resend your patch?

Best regards,
Oleksij

> --=20
> Best regards,
> =C2=A0 Antony Pavlov
>=20
> > Cache information was not initialized on flush_cache_all(). This was the
> > reason for relatively slow boot speed on MIPS.
> >=20
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  arch/mips/lib/reloc.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >=20
> > diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
> > index 9a9e404f7e..3d05ff1381 100644
> > --- a/arch/mips/lib/reloc.c
> > +++ b/arch/mips/lib/reloc.c
> > @@ -40,6 +40,7 @@
> >  #include <linux/sizes.h>
> >  #include <asm-generic/memory_layout.h>
> > =20
> > +void r4k_cache_init(void);
> >  void main_entry(void *fdt, u32 fdt_size);
> >  void relocate_code(void *fdt, u32 fdt_size, u32 relocaddr);
> > =20
> > @@ -146,6 +147,7 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram=
_size)
> >  		apply_reloc(type, (void *)addr, off);
> >  	}
> > =20
> > +	r4k_cache_init();
> >  	/* Ensure the icache is coherent */
> >  	flush_cache_all();
> > =20
> > --=20
> > 2.23.0
> >=20
> >=20
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
>=20

--=20
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--yn6cmp4yaxziz2we
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl2mnH4ACgkQ4omh9DUa
UbOtXBAAyzzYWqwNHK6iS+aneuUMGbiXRrkw8n3CvIWqA9lCZU0P6WU0ZB294xee
R+tPOBsRLTyO3L2mPgfopcVJ982eRVkLR4PSxM0v26yu5Av4j4295A0seqGtoX4G
fFQLOCOtk4FnN1CbvKygQHjNoLYtshfEcn4llwkMRB5ka29sA7RLJmTVDQmJw4Wk
QnXa3cQGMxyecuZ1Ra4BHOuxx0BrIiuw/XP1xKeSDOJtsYqTaeia5jRwxv8LjFec
+jYxZ3CfEpT0VuykA4JzsbX32rk0g9NYHXS/eQOKhydeXwCvT8K+cpTMGbqJqWRO
tqSF7SfGQWs+lr6XvxjXzS7T6UfNPBICAi/YEkQxrFHdNM8bhvssfhWWyjFSjb24
4jmCKhHpyLb5o94kbRUoJrTjMq6v+NCu6csrCk8zwBMBJ9BiyQOVWUiJ9eK8Eum6
yu6wcjmgMSJ73hWRH9Jqqn4yYqOOCy1rUXavFK3O1T8IzaDCQ+pU9f81lOHDyc8r
hxE9wvN36gN989HEJB83LhzTnKNuYdL16QC/y0jJX7phLANlk8WUXSLXLox6lCqZ
TbRaqsbnLikdRf4Ji+4vNF+61onbIFlSalgnTuAFA/Tp7G0kVcSchUL9JLWNGtdx
D/xBb0n1CTmKu0KTHKA4fGn/Jyeg5Gdz3iXf2kn8u7Wcdu33Wsg=
=EM63
-----END PGP SIGNATURE-----

--yn6cmp4yaxziz2we--


--===============5266492390840975147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5266492390840975147==--
