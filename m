Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q88ta-0007Hc-JH
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 10:26:31 +0000
Message-ID: <4D9EE2D0.20203@pengutronix.de>
Date: Fri, 08 Apr 2011 12:26:24 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1302257948-18174-1-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1302257948-18174-1-git-send-email-mkl@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0791061077=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/7] defaultenv updates
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0791061077==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig275504AEDF6EE80E7670DE77"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig275504AEDF6EE80E7670DE77
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 04/08/2011 12:19 PM, Marc Kleine-Budde wrote:
> Hello,
>=20
> this patch series updates the default env. It takes care about some pro=
blems
> that arise if linux has two network interfaces (e.g. the mx28) and adds=

> support for kernel and/or rootfs location disk. Which can be a mmc
> (in case of the mx28) or in the x86 case a bios disk.
>=20
> please review and consider to apply.

The following changes since commit 8dfebf96d79aa8e37c2299af8c02a84d30f5e9=
e7:

  Merge branch 'nand-pu' into next (2011-04-06 09:21:56 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/mkl/barebox.git for-next/defaultenv

Marc Kleine-Budde (7):
      defaultenv: simplify scripting
      defaultenv: boot: add backwards compatibility for kernel_loc=3Dnet
      defaultenv: boot: add eth0 to ip configuration
      defaultenv: boot: add serverip to static ip configuration
      defaultenv: boot: add support to boot from disk
      defaultenv: update: add support to update kernel on disk
      defaultenv: add config template

 defaultenv/bin/_update_help |    2 +-
 defaultenv/bin/boot         |   17 +++++++++--
 defaultenv/bin/update       |   11 ++++--
 defaultenv/config           |   67 +++++++++++++++++++++++++++++++++++++=
++++++
 4 files changed, 89 insertions(+), 8 deletions(-)
 create mode 100644 defaultenv/config

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig275504AEDF6EE80E7670DE77
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk2e4tQACgkQjTAFq1RaXHPiywCggRMXK0wF6WKfWP9dG0v3VNp7
fn8AmwVGs8dHZq0RaUj01zhrDE/D6ShO
=E3X4
-----END PGP SIGNATURE-----

--------------enig275504AEDF6EE80E7670DE77--


--===============0791061077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0791061077==--
