Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhfVb-0001AK-FI
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 10:52:52 +0000
Date: Mon, 2 Jan 2012 11:52:41 +0100
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20120102105241.GA4453@pengutronix.de>
References: <1324667611-31597-1-git-send-email-w.sang@pengutronix.de>
 <1324718856.2483.4.camel@HAISPEED>
MIME-Version: 1.0
In-Reply-To: <1324718856.2483.4.camel@HAISPEED>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0606825095075693453=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mxs: add support for mx28-evk
To: =?iso-8859-15?Q?J=FCrgen?= Kilb <J.Kilb@gmx.de>
Cc: barebox@lists.infradead.org


--===============0606825095075693453==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="PNTmBPCT7hxwcZjr"
Content-Disposition: inline


--PNTmBPCT7hxwcZjr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> Sascha has pointed me that kernelimage_type is not needed anymore. bootm
> is able to detect the correct image type.

Right, thanks!

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--PNTmBPCT7hxwcZjr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEARECAAYFAk8BjHkACgkQD27XaX1/VRvwAACffZCgIG75SfVoGUO8r+ApWA9r
negAniaiE7vx//BCUj1yFjEphNsohYid
=EIG1
-----END PGP SIGNATURE-----

--PNTmBPCT7hxwcZjr--


--===============0606825095075693453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0606825095075693453==--
