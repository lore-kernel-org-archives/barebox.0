Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtc52-0008FQ-2M
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 17:42:49 +0000
References: <38a77a39-1131-deed-993c-5f4f197f41ce@data-modul.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <7b2c6a9b-a41d-9a57-7290-960d7f7402fc@rempel-privat.de>
Date: Tue, 12 Feb 2019 18:42:41 +0100
MIME-Version: 1.0
In-Reply-To: <38a77a39-1131-deed-993c-5f4f197f41ce@data-modul.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7247929741761311410=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: cortex-m4 in Barebox
To: "Yazdani, Reyhaneh" <RYazdani@data-modul.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7247929741761311410==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="WexiCbdZX8SqxDUJu3m7NMxcOenK4qIAm"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--WexiCbdZX8SqxDUJu3m7NMxcOenK4qIAm
Content-Type: multipart/mixed; boundary="Y5CYAggKfHPB6KP7noyw9z0zz9VfspjGN";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: "Yazdani, Reyhaneh" <RYazdani@data-modul.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <7b2c6a9b-a41d-9a57-7290-960d7f7402fc@rempel-privat.de>
Subject: Re: cortex-m4 in Barebox
References: <38a77a39-1131-deed-993c-5f4f197f41ce@data-modul.com>
In-Reply-To: <38a77a39-1131-deed-993c-5f4f197f41ce@data-modul.com>

--Y5CYAggKfHPB6KP7noyw9z0zz9VfspjGN
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

Am 12.02.19 um 15:22 schrieb Yazdani, Reyhaneh:
> Hello everyone,
>=20
> I am using imx8m-evk board. To boot a cortex-m4 in the system, in u-boo=
t, there
> is a bootaux command, which runs the m4-image and boot cortex-m4.
>=20
> Is there any command available in Barebox to boot m4? Totally, what is =
available
> in Barebox regarding cortex-m4?
>=20
> Thanks in advance,

There are no special commands to do so.
I was thinking about porting remoteproc from linux to barebox. So we can
reuse existing images and be able to patch devicetree just before linux
start.

Right now I have no time for this, so patches are welcome.

--=20
Regards,
Oleksij


--Y5CYAggKfHPB6KP7noyw9z0zz9VfspjGN--

--WexiCbdZX8SqxDUJu3m7NMxcOenK4qIAm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEpENFL0P3hvQ7p0DDdQOiSHVI77QFAlxjBZEACgkQdQOiSHVI
77QOxggAsIFSv7sg8M6RBQqEeSHv6XQiyseKbygo+XvlHk2pqCsX7llRbahZBhs7
aUZqtXdOOYrrraVgDN2nYgsPTkHVOqfjntEFUQKIOmjgb6EYWYO3QJH0lJKn6b+l
pejE0s5E8lRIp+t4j5IExAA/SqssI57Bw9sd3M6LXU22O+/nIgshudRIhkYHJg3u
vqVi1p9DdO1x5hfMKNLlPLWHCMES6U1p3ZEyLqBnrI35YW999/J/8eZRhUbpMSpS
U7beFIqYkpv0+pfbGfNjXk6EfhMPO9NKf39YQ7Z9pve0vqqfzufaU1QIXCaCPgK9
lKEA9GbwsjSByiUfxj+0FVozVmnEgQ==
=fIl/
-----END PGP SIGNATURE-----

--WexiCbdZX8SqxDUJu3m7NMxcOenK4qIAm--


--===============7247929741761311410==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7247929741761311410==--
