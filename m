Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a4qKI-0001sg-0i
 for barebox@lists.infradead.org; Fri, 04 Dec 2015 13:23:06 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Fri, 04 Dec 2015 14:22:41 +0100
Message-ID: <1989254.mZAv1P8XvC@adelgunde>
In-Reply-To: <20151204071255.GS11966@pengutronix.de>
References: <1449064131-12659-1-git-send-email-mpa@pengutronix.de>
 <1449064131-12659-6-git-send-email-mpa@pengutronix.de>
 <20151204071255.GS11966@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7938953960004336737=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/9] lib: Import reed solomon code from kernel
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============7938953960004336737==
Content-Type: multipart/signed; boundary="nextPart63027739.7dgzLcF04o"; micalg="pgp-sha256"; protocol="application/pgp-signature"


--nextPart63027739.7dgzLcF04o
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"

Hi,

On Friday 04 December 2015 08:12:55 Sascha Hauer wrote:
> On Wed, Dec 02, 2015 at 02:48:47PM +0100, Markus Pargmann wrote:
> > reed solomon code is used by RAMOOPS to check and fix data stored i=
n
> > volatile memory.
> >=20
> > Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> > ---
> >  include/linux/rslib.h           | 109 ++++++++++++
> >  lib/Kconfig                     |  15 ++
> >  lib/Makefile                    |   1 +
> >  lib/reed_solomon/Makefile       |   6 +
> >  lib/reed_solomon/decode_rs.c    | 271 ++++++++++++++++++++++++++++=
+
> >  lib/reed_solomon/encode_rs.c    |  54 ++++++
> >  lib/reed_solomon/reed_solomon.c | 377 ++++++++++++++++++++++++++++=
++++++++++++
> >  7 files changed, 833 insertions(+)
> >  create mode 100644 include/linux/rslib.h
> >  create mode 100644 lib/reed_solomon/Makefile
> >  create mode 100644 lib/reed_solomon/decode_rs.c
> >  create mode 100644 lib/reed_solomon/encode_rs.c
> >  create mode 100644 lib/reed_solomon/reed_solomon.c
> >=20
>=20
> > diff --git a/lib/Kconfig b/lib/Kconfig
> > index fbf9f0f34849..f2f3b5775ace 100644
> > --- a/lib/Kconfig
> > +++ b/lib/Kconfig
> > @@ -22,6 +22,21 @@ config XZ_DECOMPRESS
> >  =09bool "include xz uncompression support"
> >  =09select UNCOMPRESS
> > =20
> > +config REED_SOLOMON
> > +=09bool
> > +
> > +config REED_SOLOMON_ENC8
> > +=09bool
> > +
> > +config REED_SOLOMON_DEC8
> > +=09bool
> > +
> > +config REED_SOLOMON_ENC16
> > +=09bool
> > +
> > +config REED_SOLOMON_DEC16
> > +=09bool
> > +
>=20
> These fine grained config options seem unnecessary. Can we limit this=
 to
> a single config REED_SOLOMON only? The linker will discard unused
> symbols anyway.

Ok, I reduced this to just the single config symbol 'REED_SOLOMON'.

Best Regards,

Markus

=2D-=20
Pengutronix e.K.                           |                           =
  |
Industrial Linux Solutions                 | http://www.pengutronix.de/=
  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0  =
  |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |

--nextPart63027739.7dgzLcF04o
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWYZOhAAoJEEpcgKtcEGQQk70QALLD+3bIRSqduXqbEu1NIL7n
cxpn16Ckoq3lKvsdZeSI6PERsVbeAa74SHi+gyIFqAhzDKhOgguQRHpkx680YKpW
qxBlJ5BC10l8rOy0hEZmW+HYIDJfdnx4i7lkDZrHtVPilnwkrKeSa3KA/EbwOpD2
6jymx9C4Tr/UGKoWcaWI6rmc6CG1yK4sWxDeGCeJp05rF4Cm2EymZ7UfLH5X0tYi
C/R3uJ4LS2b7SDhlCqeiGvVKLCtmIRwc4XNQcXpKOibrCnogQ4oGAbpy7Fl8FOlD
dc5t5/933UkKkqoKEoNj2izogfwV0SgdHZ+ZPW3T6ubSLPbExE+QWBkOPqtjzFGG
Vt7cS18CvD0IZStEMkOZfeq4u2lMOyWKXxYdi5An9X2santy9TPFdIu8V66JAyE0
Y1RXH6VOjS5+uUFqfel1VjhZQ9Am3bkpeWBKjKHm0MSVFxOvuxFGZ7dRNyn4LolA
FDvup2oAqZrNPcHjN7qAZEMwOSRrJ/SY/RvpKPMvwY93hXdEofI4/ILpIkaSDrsP
w/mwSWYRIcVY2GBxzql8bmXRyn4u9WuobUqxetLRk9GOng3kreXCPFncKNcYxFN9
hK4W4Qbqpt9PWs2zrng4dTlyUNm5Cinge7+/vUPnLouAt7NxY+348/+z+i4mU8Cs
H7Y8ZbFN7E3XUrqaAAR6
=j1s1
-----END PGP SIGNATURE-----

--nextPart63027739.7dgzLcF04o--



--===============7938953960004336737==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7938953960004336737==--
