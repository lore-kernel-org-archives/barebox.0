Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NhOoq-0005wL-Iw
	for barebox@lists.infradead.org; Tue, 16 Feb 2010 14:54:37 +0000
Message-ID: <4B7AB1A0.6070903@pengutronix.de>
Date: Tue, 16 Feb 2010 15:54:24 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1266331586-11253-1-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1266331586-11253-1-git-send-email-mkl@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1336571122=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 00/11] arch/arm and other random cleanups
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1336571122==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigE0BB92371A44DD1C7BCD6A0E"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigE0BB92371A44DD1C7BCD6A0E
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Marc Kleine-Budde wrote:
> Please review and consider to apply.

The following changes since commit 2e6eb64a396b99559cd46dfd49e649521c42c0=
10:
  Juergen Beisert (1):
        Fix compile time errors when DEBUG is defined

are available in the git repository at:

  git://git.pengutronix.de/git/mkl/barebox.git for-sha-cleanups

Marc Kleine-Budde (11):
      arm/Kconfig: delete trailing whitespace
      arm/Kconfig: removed unused TAG options
      arm/Makefile: keep list of boards sorted
      arm/cpu/Makefile: cleanup: propper indention
      drivers/video/Makefile: cleanup propper indention
      start-arm: cleanup: propper indention
      i2c.h: fix typo in copyright
      ioreadsb: put the whole ioreadsb function into the .text.readsb sec=
tion
      import recent include/linux/compiler*.h
      io.h: update definitions of __raw_{read,write}*
      common.h: add compile time check helper functions

 arch/arm/Kconfig              |   19 ------
 arch/arm/Makefile             |    2 +-
 arch/arm/cpu/Makefile         |   27 +++++----
 arch/arm/cpu/start-arm.S      |   12 ++--
 arch/arm/include/asm/io.h     |   12 ++--
 arch/arm/lib/io-readsb.S      |    4 +-
 drivers/video/Makefile        |    7 +-
 include/common.h              |   31 ++++++++++-
 include/i2c/i2c.h             |    2 +-
 include/linux/compiler-gcc.h  |   30 +++++++++-
 include/linux/compiler-gcc3.h |   11 +++-
 include/linux/compiler-gcc4.h |   32 ++++++++++-
 include/linux/compiler.h      |  124 +++++++++++++++++++++++++++++++++++=
+++---
 13 files changed, 243 insertions(+), 70 deletions(-)

Cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigE0BB92371A44DD1C7BCD6A0E
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAkt6saQACgkQjTAFq1RaXHMdDACdGjbiftT96NttZQDxdhof0XRQ
TPIAn0HtspUitaddFRsedB/6+zu3HV77
=fydt
-----END PGP SIGNATURE-----

--------------enigE0BB92371A44DD1C7BCD6A0E--


--===============1336571122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1336571122==--
