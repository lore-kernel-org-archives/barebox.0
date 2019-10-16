Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKb12-0004WQ-62
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 04:34:29 +0000
Date: Wed, 16 Oct 2019 06:34:26 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20191016043426.peutxkqx2s62ds5r@pengutronix.de>
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
Content-Type: multipart/mixed; boundary="===============2508169550697991695=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] MIPS: init cache before flashing it
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org


--===============2508169550697991695==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="x3whm4yaieptdcwj"
Content-Disposition: inline


--x3whm4yaieptdcwj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 15, 2019 at 11:41:06PM +0300, Antony Pavlov wrote:
> On Tue, 15 Oct 2019 18:09:45 +0200
> Oleksij Rempel <o.rempel@pengutronix.de> wrote:
>=20
> Hi!
>=20
> Please review this thread http://lists.infradead.org/pipermail/barebox/20=
19-June/038530.html
> AFAIR we have to clear BSS before calling r4k_cache_init().

Hm... your patch need some rework as well. I'll send updated version.

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
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>=20

--=20
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--x3whm4yaieptdcwj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl2mndEACgkQ4omh9DUa
UbPAGRAAhtuPGv4rd55cVC1OYahQm/H8wzdPC6KZjCrvGYc8Ad5shmMef9aDwpnI
Yh3UuLKD3wnNJHqWnJxsZA3EkujSKaKUygO2ANxgCP/KTOW/kUN5LzA+TUM+HnnK
q8N68taqwDxR3+v0jdBJTgPqnQSMB84Q4LG9wGYJThLZjGPu40mFNgy83N8FfAP3
BVDk9hIz3V/jn8ZrK+37e4D96fjcJ6qKFY24/4xvB2GoYICpmjob2TzKt8tjAzH9
vFe6PLAgM3R5qqQfGJ786RMtJG//nhfRHEKumsXa4EBp6aYE19La7JAQzV4fbeN0
IxJgZ6/oRGvY82rH1nRYOr4U3k/yD++fANPpcCz+EMt5L336O+BmXUIiFFTkyOTM
VHy2UtZBi/PMCtNy+Uee19IlS1HOQhIWlGlzbC79SHjtEU2SPWj7CN4OPB34lHJ8
Yu0jhjTvoOYw1DynQ9uiwK+R61jIZWWbM+2huGZsPF7WIlKg/s/nnZervoOvepU1
3KvFeza1f3PqoaD3/naDotkvWkaLn55cB1EPije1nWmTGR17Q44zw0z14C5hRTB9
ZZqeKHKUVYzyZJZhfJPA7XHzAIPMOyLMB7bjNpXW9KOhcQLWmxbrLLC8+pFp3Uo3
nGRWf5FYz34MMhxij/J1qJDXwh8txMJMEOBIQkaYjxRTfYKc4js=
=FPQJ
-----END PGP SIGNATURE-----

--x3whm4yaieptdcwj--


--===============2508169550697991695==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2508169550697991695==--
