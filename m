Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjAzg-00022b-Jq
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 15:46:41 +0000
Received: from katana.hi.pengutronix.de ([2001:6f8:1178:2:221:70ff:fe71:1890]
 helo=pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <w.sang@pengutronix.de>) id 1TjAzf-0001Su-B9
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 16:46:39 +0100
Date: Thu, 13 Dec 2012 16:46:39 +0100
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20121213154639.GB2632@pengutronix.de>
References: <1355413554-16312-1-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <1355413554-16312-1-git-send-email-w.sang@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6006164366479230717=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] commands: add scrub
To: barebox@lists.infradead.org


--===============6006164366479230717==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="eAbsdosE1cNLO4uF"
Content-Disposition: inline


--eAbsdosE1cNLO4uF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 13, 2012 at 04:45:54PM +0100, Wolfram Sang wrote:
> Allows erasing a whole NAND device including the bad blocks. Only meant
> for development where one might accidently overwrite real bad block
> information.
>=20
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>

Ooops, wrong one. Please discard until I post the whole series later.

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--eAbsdosE1cNLO4uF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEARECAAYFAlDJ+F8ACgkQD27XaX1/VRtyEQCfRY50uiLUxhFVh8cFR5LkxVDt
T/wAn3osZNGYJaZ4Crf/PkqbOjdSkAMN
=F3OL
-----END PGP SIGNATURE-----

--eAbsdosE1cNLO4uF--


--===============6006164366479230717==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6006164366479230717==--
