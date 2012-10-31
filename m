Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTTca-0007Ra-Cb
 for barebox@lists.infradead.org; Wed, 31 Oct 2012 08:25:57 +0000
Date: Wed, 31 Oct 2012 09:25:52 +0100
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20121031082552.GA2582@pengutronix.de>
References: <1351614606-16461-1-git-send-email-s.hauer@pengutronix.de>
 <1351614606-16461-3-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <1351614606-16461-3-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2144420122157662345=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] net fec: call fec_init at probe time
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============2144420122157662345==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="huq684BweRXVnRxX"
Content-Disposition: inline


--huq684BweRXVnRxX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 30, 2012 at 05:30:06PM +0100, Sascha Hauer wrote:
> fec_init() initializes some bits important for phy access, so do
> this before the mdiobus is registered. This fixes mdiobus support
> on i.MX28 boards in RMII mode.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Extremly minor:

Reported-by: Wolfram Sang <w.sang@pengutronix.de>

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--huq684BweRXVnRxX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEARECAAYFAlCQ4JAACgkQD27XaX1/VRvmJwCdHCiExUXM7mgo2mDod8QzWNJJ
RpUAoMG5+Y+BikQBGGz2WOTt+qCA+Mfc
=6GTh
-----END PGP SIGNATURE-----

--huq684BweRXVnRxX--


--===============2144420122157662345==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2144420122157662345==--
