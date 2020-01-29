Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwfm6-0005rB-A4
 for barebox@lists.infradead.org; Wed, 29 Jan 2020 05:20:27 +0000
Date: Wed, 29 Jan 2020 06:20:14 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20200129052014.h2a6abkijbg46tgz@pengutronix.de>
References: <20200128175307.13584-1-pmamonov@gmail.com>
 <20200128182951.vq4pfer3zinz36ih@pengutronix.de>
 <20200128203105.GA9757@chr>
MIME-Version: 1.0
In-Reply-To: <20200128203105.GA9757@chr>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3663012630697812961=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] MIPS: relocate_code: fix relocation area size
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org


--===============3663012630697812961==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="au24q5y7fg6szh7v"
Content-Disposition: inline


--au24q5y7fg6szh7v
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 28, 2020 at 11:31:06PM +0300, Peter Mamonov wrote:
> On Tue, Jan 28, 2020 at 07:29:51PM +0100, Oleksij Rempel wrote:
> > On Tue, Jan 28, 2020 at 08:53:07PM +0300, Peter Mamonov wrote:
> > > relocate_code() calculates relocation area size as a sum (barebox_ima=
ge_size +
> > > bss_len). barebox_image_size and bss_len are calculated as (__image_e=
nd -
> > > __image_start) and (__bss_stop - __bss_start) respectively. This does=
n't take
> > > into account relocation data placed between  __image_end and __bss_st=
art.
> > > However relocation preserves BSS position relative to image start, as=
 if
> > > relocation data is still there. This causes RAM overflow during BSS
> > > initialization in main_entry(). This problem may be hidden due to the=
 alignment
> > > of the `relocaddr`.
> >=20
> > Thx! Works on ar9331
>=20
> Guess you should squash this patch into "MIPS: remove .bss to __rel_start=
=20
> overlay", since it fixes the issue caused by the latter.

ACK

> Regards,
> Peter
>=20
> >=20
> > Tested-by: Oleksij Rempel <o.rempel@pengutronix.de>
> >=20
> > > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> > > ---
> > >  arch/mips/lib/reloc.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >=20
> > > diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
> > > index 32d776a6a6..41e2d5c75f 100644
> > > --- a/arch/mips/lib/reloc.c
> > > +++ b/arch/mips/lib/reloc.c
> > > @@ -121,7 +121,7 @@ void relocate_code(void *fdt, u32 fdt_size, u32 r=
am_size)
> > >  	memset(__bss_start, 0, bss_len);
> > >  	cpu_probe();
> > > =20
> > > -	length =3D barebox_image_size + bss_len;
> > > +	length =3D __bss_stop - __image_start;
> > >  	relocaddr =3D ALIGN_DOWN(ram_size - length, SZ_64K);
> > >  	relocaddr =3D KSEG0ADDR(relocaddr);
> > >  	new_stack =3D relocaddr - MALLOC_SIZE - 16;
> > > --=20
> > > 2.24.0
> > >=20
> > >=20
> > > _______________________________________________
> > > barebox mailing list
> > > barebox@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/barebox
> > >=20
> >=20
> > --=20
> > Pengutronix e.K.                           |                           =
  |
> > Steuerwalder Str. 21                       | http://www.pengutronix.de/=
  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0  =
  |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |
>=20
>=20
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--au24q5y7fg6szh7v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl4xFgkACgkQ4omh9DUa
UbPfoBAAshbnRlhdFWmK7HQlZoT6MyZT/B53FqasnkSWnUTklkViQgZGehY2vvs+
UHB8M2diSflAGepHwRTvQBzVkLqylRWmm+5dVoy88NPTs6dyABgDLZO6b6HhLHbW
WPLG+xWMciuI0J/2U7O/ECXKAFVb05FdFTz5ng9xNwtdLYC9z3IW8sVeHRbhe/M1
9rsPjMw98YHz2+l18wvc5sl+obaLH2eoN0hqj8vZ3VJEUMsZeCkKQBOI2YBSLtEg
ei1COQw1H6L3omwwxQs6lE8FNWdn8fETATPw2ZhzTQUYkHAPml7DEEGdRhU69shy
FH9dSM5BxiXg1lD2hLswPSvaIicI7fDwlHcLR3d/HGsKc87vVTeLtkbgbeJoRLXq
jvBjZe7jKRWoVk9N4JvguRSxEJ88QWWlmZifRlu5gNgpAEGSg04Y6MBWM09UeUPL
dTZTzKz+BekfmPsJoJ2P3NCGeFQNS9Fcl7uQyH/sZ4rp3Uxd2wc1CpunlEZlD/po
yF+nz/GsarjCdXKlS30EUayPnAPbKvJ66Elj6Sk/pBXkGwnxsCsaa47sdg562Qqm
0vfhllGAjuGHNhbVrSiAtssFxcEW1SUVJC6PqZeuev6JQ0vdDrdd7Z6BiSAszLIU
gcWCMfbD9zAjQNlI5g0SKhyjLJ5/XqJBX9ebopJpjrTTKk6hfFw=
=Glkr
-----END PGP SIGNATURE-----

--au24q5y7fg6szh7v--


--===============3663012630697812961==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3663012630697812961==--
