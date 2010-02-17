Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NhsGc-0008Bu-Ki
	for barebox@lists.infradead.org; Wed, 17 Feb 2010 22:21:16 +0000
Message-ID: <4B7C6BCB.5010706@pengutronix.de>
Date: Wed, 17 Feb 2010 23:20:59 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1266331586-11253-1-git-send-email-mkl@pengutronix.de>
	<4B7AB1A0.6070903@pengutronix.de>
	<20100217094609.GZ17643@pengutronix.de>
In-Reply-To: <20100217094609.GZ17643@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1574234780=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 00/11] arch/arm and other random cleanups
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1574234780==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigCF653803AA0D23184F2CA335"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigCF653803AA0D23184F2CA335
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Sascha Hauer wrote:
> On Tue, Feb 16, 2010 at 03:54:24PM +0100, Marc Kleine-Budde wrote:
>> Marc Kleine-Budde wrote:
>>> Please review and consider to apply.
>> The following changes since commit 2e6eb64a396b99559cd46dfd49e649521c4=
2c010:
>>   Juergen Beisert (1):
>>         Fix compile time errors when DEBUG is defined
>>
>> are available in the git repository at:
>>
>>   git://git.pengutronix.de/git/mkl/barebox.git for-sha-cleanups
>>
>> Marc Kleine-Budde (11):
>>       arm/Kconfig: delete trailing whitespace
>>       arm/Kconfig: removed unused TAG options
>>       arm/Makefile: keep list of boards sorted
>>       arm/cpu/Makefile: cleanup: propper indention
>>       drivers/video/Makefile: cleanup propper indention
>>       start-arm: cleanup: propper indention
>>       i2c.h: fix typo in copyright
>>       ioreadsb: put the whole ioreadsb function into the .text.readsb =
section
>>       import recent include/linux/compiler*.h
>>       io.h: update definitions of __raw_{read,write}*
>>       common.h: add compile time check helper functions
>=20
> Looks good modulo the changes mentioned.

The branch is updated, here a pull request:

Cheers, Marc

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
      arm/cpu/Makefile: cleanup: proper indention
      drivers/video/Makefile: cleanup proper indention
      start-arm: cleanup: proper indention
      i2c.h: fix typo in copyright
      ioreadsb: put the whole ioreadsb function into the .text.readsb sec=
tion
      import recent include/linux/compiler*.h
      io.h: update definitions of __raw_{read,write}*
      common.h: add compile time check helper functions

 arch/arm/Kconfig              |   19 ------
 arch/arm/Makefile             |    2 +-
 arch/arm/cpu/Makefile         |   11 ++--
 arch/arm/cpu/start-arm.S      |   12 ++--
 arch/arm/include/asm/io.h     |   12 ++--
 arch/arm/lib/io-readsb.S      |    4 +-
 drivers/video/Makefile        |    5 +-
 include/common.h              |   31 ++++++++++-
 include/i2c/i2c.h             |    2 +-
 include/linux/compiler-gcc.h  |   30 +++++++++-
 include/linux/compiler-gcc3.h |   11 +++-
 include/linux/compiler-gcc4.h |   32 ++++++++++-
 include/linux/compiler.h      |  124 +++++++++++++++++++++++++++++++++++=
+++---
 13 files changed, 234 insertions(+), 61 deletions(-)

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigCF653803AA0D23184F2CA335
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAkt8a8sACgkQjTAFq1RaXHMVAgCeN5EP5iMU1awjHyc6FjaJessH
jxAAoInFiEdfOI7LQaSqSgIWBfsKFycs
=Arcl
-----END PGP SIGNATURE-----

--------------enigCF653803AA0D23184F2CA335--


--===============1574234780==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1574234780==--
