Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIonr-0008Aj-Ls
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 22:17:16 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <wsa@pengutronix.de>) id 1SIonm-0001Rh-E2
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 00:17:10 +0200
Received: from wsa by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <wsa@pengutronix.de>) id 1SIonm-0008Ks-Cu
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 00:17:10 +0200
Date: Sat, 14 Apr 2012 00:17:10 +0200
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20120413221710.GB26836@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8525577551409643390=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: IMX_IIM on which SoCs?
To: barebox@lists.infradead.org


--===============8525577551409643390==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="rS8CxjVDS/+yyDmU"
Content-Disposition: inline


--rS8CxjVDS/+yyDmU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


I just stumbled over commit 97c37f4014b0e3bacf31fe5b6ba890cc7f465838 which
changes this:

-       depends on ARCH_IMX25 || ARCH_IMX35
+       depends on !ARCH_IMX21 && !ARCH_IMX21

The double !ARCH_IMX21 looks fishy. Can't tell if the second IMX21 should
have been something else.

Regards,

   Wolfram

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--rS8CxjVDS/+yyDmU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAk+IpeYACgkQD27XaX1/VRsVdQCdGTYDYNYagsXSuPuFsxNcoeRp
NKwAnifTz4K2iw0GjAHaKXW9SdHmR2yt
=yaqZ
-----END PGP SIGNATURE-----

--rS8CxjVDS/+yyDmU--


--===============8525577551409643390==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8525577551409643390==--
