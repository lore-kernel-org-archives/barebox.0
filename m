Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THBro-0007a9-1U
 for barebox@lists.infradead.org; Thu, 27 Sep 2012 11:02:53 +0000
Date: Thu, 27 Sep 2012 13:02:44 +0200
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20120927110244.GA5926@pengutronix.de>
References: <1348700206-30581-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <20120927095312.GU1322@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20120927095312.GU1322@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7049618737447354435=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] [RFC] i2c-imx: send a soft bus reset during probe
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, kernel@pengutronix.de, Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>


--===============7049618737447354435==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="3V7upXqbjpZ4EhLz"
Content-Disposition: inline


--3V7upXqbjpZ4EhLz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> I wonder if it's worth to have this as a general callback in the i2c
> layer.

There kernel has a framework in the making. I still need to give more
review to it:

http://article.gmane.org/gmane.linux.drivers.i2c/12558

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--3V7upXqbjpZ4EhLz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlBkMlQACgkQD27XaX1/VRuFwgCgsn90sL1PfWCnt7llyzapOCbo
nu0AmwTPg44rRuHhI6qa0lcTs+rYsj6I
=uY1e
-----END PGP SIGNATURE-----

--3V7upXqbjpZ4EhLz--


--===============7049618737447354435==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7049618737447354435==--
