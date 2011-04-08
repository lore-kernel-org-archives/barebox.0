Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q88zd-0007KF-2C
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 10:32:46 +0000
Message-ID: <4D9EE44B.1080009@pengutronix.de>
Date: Fri, 08 Apr 2011 12:32:43 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1302258240-18284-1-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1302258240-18284-1-git-send-email-mkl@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1079101960=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/2] mxs: add mx28-evk
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1079101960==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigE9268A6B260E683A34397008"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigE9268A6B260E683A34397008
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 04/08/2011 12:23 PM, Marc Kleine-Budde wrote:
> Hello,
>=20
> this patch sereis adds mx28-evk support to barebox. No support for NAND=
,
> though. Booting from mmc with bootlets works fine, though.
>=20
> The first patch import the mxs_iomux_setup_multiple_pads functions from=
 the
> kernel, this way we can use the same pad setup as in the kernel. Howeve=
r it
> doesn't remove the old pad setup as several board rely on it.

On top of the default-env branch, you can pull the mx28-evk support:

The following changes since commit e86690ddd46d6ce4c6ec8ca930e5c5e82814f4=
93:

  defaultenv: add config template (2011-04-08 12:11:27 +0200)

are available in the git repository at:
  git://git.pengutronix.de/git/mkl/barebox.git for-next/mxs

Marc Kleine-Budde (2):
      mxs: import mxs_iomux_setup_multiple_pads from kernel
      mxs: add support for mx28-evk

 arch/arm/Makefile                              |    1 +
 arch/arm/boards/freescale-mx28-evk/Makefile    |    1 +
 arch/arm/boards/freescale-mx28-evk/config.h    |   16 +
 arch/arm/boards/freescale-mx28-evk/env/config  |   67 +++
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c  |  378 +++++++++++++++++
 arch/arm/boards/freescale-mx28-evk/tx28-stk5.c |  410 ++++++++++++++++++=

 arch/arm/mach-mxs/Kconfig                      |    7 +
 arch/arm/mach-mxs/include/mach/gpio.h          |    3 +
 arch/arm/mach-mxs/include/mach/iomux-mx23.h    |  355 ++++++++++++++++
 arch/arm/mach-mxs/include/mach/iomux-mx28.h    |  537 ++++++++++++++++++=
++++++
 arch/arm/mach-mxs/include/mach/iomux.h         |  168 ++++++++
 arch/arm/mach-mxs/include/mach/mxs.h           |   43 ++
 arch/arm/mach-mxs/iomux-imx.c                  |   80 ++++
 13 files changed, 2066 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx28-evk/Makefile
 create mode 100644 arch/arm/boards/freescale-mx28-evk/config.h
 create mode 100644 arch/arm/boards/freescale-mx28-evk/env/config
 create mode 100644 arch/arm/boards/freescale-mx28-evk/mx28-evk.c
 create mode 100644 arch/arm/boards/freescale-mx28-evk/tx28-stk5.c
 create mode 100644 arch/arm/mach-mxs/include/mach/iomux-mx23.h
 create mode 100644 arch/arm/mach-mxs/include/mach/iomux-mx28.h
 create mode 100644 arch/arm/mach-mxs/include/mach/iomux.h
 create mode 100644 arch/arm/mach-mxs/include/mach/mxs.h

cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigE9268A6B260E683A34397008
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk2e5EsACgkQjTAFq1RaXHOToQCglxobw9rRT3ah/Ka90gwsT+tT
Np0AoILUNfDy9+mFw38QkQt0+3SgeRyS
=hEPa
-----END PGP SIGNATURE-----

--------------enigE9268A6B260E683A34397008--


--===============1079101960==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1079101960==--
