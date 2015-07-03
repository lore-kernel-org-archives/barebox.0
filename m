Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAvle-0008KX-N3
 for barebox@lists.infradead.org; Fri, 03 Jul 2015 07:52:15 +0000
References: <1435909794-17349-1-git-send-email-mkl@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <55963F13.9080106@pengutronix.de>
Date: Fri, 3 Jul 2015 09:51:47 +0200
MIME-Version: 1.0
In-Reply-To: <1435909794-17349-1-git-send-email-mkl@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0435235940591015568=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] mtd: mark devname argument of add_mtd_device as const
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0435235940591015568==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="abgs1E2d5GLGO3PXfTKutaI0M6mmpAOwk"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--abgs1E2d5GLGO3PXfTKutaI0M6mmpAOwk
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 07/03/2015 09:49 AM, Marc Kleine-Budde wrote:
> This patch fixes the following warning:
>=20
> | drivers/mtd/devices/m25p80.c: In function 'm25p_probe':
> | drivers/mtd/devices/m25p80.c:271:14: warning: assignment discards 'co=
nst' qualifier from pointer target type
> |   flash_name =3D dev->id_entry->name;
> |                 ^
>=20
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>

This patch applies to master. I can rebase it to -next if needed.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--abgs1E2d5GLGO3PXfTKutaI0M6mmpAOwk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVlj8TAAoJEP5prqPJtc/HS/wH/2jycFTris+NhHn8crRhxIIz
8dS6JxlCXgUAv8kept6j+PnjFzCyCGA+X73XndWhPWAaJ6TUlyAg0PELkO54n0AH
N/06nbsp4XNgVX5XrztC9sZYjsU9d/4QK079XuVM0Hy7u/hNjPuxNYVdzkR4t+EU
U431i4L1xrRrjxzAo58eEMQGZKB6MiwZH5mWczYXRpTLvJ7MvvdqaIXlQwpUFnYj
xuAem+0ohj+gKuS+bI9rKqM9pC6O6WfD1GeUw2aEWSEs8rxlg6FWBMKq0rH2M6cn
vZ+8R3FgRLkvFM/XAncaGDzT8rzICPK4vr8uo2gESbOR8MZQxdB3i/WN+kCZ/ss=
=5aqw
-----END PGP SIGNATURE-----

--abgs1E2d5GLGO3PXfTKutaI0M6mmpAOwk--


--===============0435235940591015568==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0435235940591015568==--
