Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([62.4.15.54])
 by bombadil.infradead.org with esmtp (Exim 4.89 #1 (Red Hat Linux))
 id 1eZwJV-0006W9-67
 for barebox@lists.infradead.org; Fri, 12 Jan 2018 10:11:55 +0000
Date: Fri, 12 Jan 2018 11:11:32 +0100
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Message-ID: <20180112101132.ebgz3aqj5scahe5a@flea.lan>
References: <54fc425c0bfd47078982f16247bd164b@XCGVAG27.northgrum.com>
 <20180112074226.s7dyuvovw3t6y3t7@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20180112074226.s7dyuvovw3t6y3t7@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6603012822290123152=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Barebox device tree overlay support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "'barebox@lists.infradead.org'" <barebox@lists.infradead.org>, "Dgien,
 David [US] (MS)" <David.Dgien@ngc.com>


--===============6603012822290123152==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ywsjyl33ueml4237"
Content-Disposition: inline


--ywsjyl33ueml4237
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Jan 12, 2018 at 08:42:26AM +0100, Sascha Hauer wrote:
> On Thu, Jan 11, 2018 at 03:40:49PM +0000, Dgien, David [US] (MS) wrote:
> > Hello,
> >=20
> > When going through the archives it looks like a set of patches
> > were submitted to support device tree overlays in barebox in
> > http://lists.infradead.org/pipermail/barebox/2015-March/022674.html.
> > But they weren't accepted because overlays weren't fully
> > implemented in the DTC yet.
> >=20
> > It looks like overlay support was mainlined in the kernel in
> > 4.11. ( kernel/git/torvalds/linux.git:
> > be5165a51d2500ae1afa1236a8b09858831fdf7e )
>=20
> I am still not sure which parts got merged and which are still pending.
> There are still overlay patches floating around.

The only thing that's missing in the kernel at the moment is a
user-space interface to load overlays, but the rest has been there for
quite some time.

> > Would it be possible to take another look at pulling these patches
> > into the barebox mainline?
>=20
> Generally yes. If you like, please rebase test and respin the patches.

The libfdt gained support to apply overlays quite some time ago
already, so this should be as easy as updating it to a recent enough
version, and creating a wrapper around fdt_apply. This is what U-Boot
is doing.

Maxime

--=20
Maxime Ripard, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com

--ywsjyl33ueml4237
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE0VqZU19dR2zEVaqr0rTAlCFNr3QFAlpYidMACgkQ0rTAlCFN
r3SZJA/8DJRJW9EJ8O7BP2lFWViZO3lHcyS+iYEyxdkhCpajyyfRO04hPwkCu4lP
HzOZwpOOoAjZTHcphOLEAo2yzC98ncRRmj/WxPDNUJEa5W8lHUtQ7+6+rBadMFhf
xLZPkHGGOoA0SGGiU4OhGAHibJ+Cykz1o+U9MVyd+Q//brJsG4sHUGxfXVZdUiwI
+h0uODoNcsHzAK79OVjn6Xc59tDVVbVdF1RphayAkbehWvcyfOIewbxikb6mNswU
zBf6gXavXbSZl1vgEA0+R+HhSeZukYlss+/+yPZM6HNK57qEVTRSHfvg0rMxOrLa
zjoMXSxZyB2uBZr4K5JafV2JGcSUQI+AQIOKW//SM8+GfjXHbgBIe26kEkZeHlhe
TDoWcnbD6pMlkW7OK8bbEbmddiTmtJ+po4zCr/MS6N83RFKuxMZK+7tyMXWZJrRm
RQEUxwlC2QOVRYtc+Q5serGvfTdwh1HUmGeShFvrQRBL0EP0YhL5XXORdo32OICY
olzUwdXll2s2uw2vkcsQ02ipbQ7thDzEzziwBxGvWMMFA3NOy5FUrznx+7HxEecz
+PCNpQBmY7RzzZ+lt1uSO95XZcoLSQB68osjL+gDW1aZxIdm0K6xf/ucr50gG/fy
5XROXEENVxfRWQYn2pPSQbh0EwTvosEcJ4eB0rb6sIze3HhlRj4=
=BGE+
-----END PGP SIGNATURE-----

--ywsjyl33ueml4237--


--===============6603012822290123152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6603012822290123152==--
