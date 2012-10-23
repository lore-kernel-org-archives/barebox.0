Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQcbp-00023k-57
 for barebox@lists.infradead.org; Tue, 23 Oct 2012 11:25:22 +0000
Date: Tue, 23 Oct 2012 13:25:17 +0200
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20121023112517.GA21425@pengutronix.de>
References: <1350926048-12681-1-git-send-email-w.sang@pengutronix.de>
 <20121023070455.GJ27665@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20121023070455.GJ27665@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8557171577809357612=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] common: Makefile: 'cd' command could lead to broken
 default_env.h
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============8557171577809357612==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="YZ5djTAD1cGYuMQK"
Content-Disposition: inline


--YZ5djTAD1cGYuMQK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 23, 2012 at 09:04:55AM +0200, Sascha Hauer wrote:
> On Mon, Oct 22, 2012 at 07:14:08PM +0200, Wolfram Sang wrote:
> > Depending on the user's settings (CDPATH), 'cd' may print out the
> > directory which was changed to. This causes broken barebox_default_env.h
> > to be generated. Ignore the cd printout.
>=20
> I didn't know such a thing exists. This can cause unexpected behaviour
> of 'cd'. Wouldn't it be better to completely disable it by emptying
> CDPATH in scripts?

Yes, probably. You or me? :)

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--YZ5djTAD1cGYuMQK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlCGfp0ACgkQD27XaX1/VRuqNACdGtMOYoZRT9w6Dv7dEH8Tk1Ls
nW0An0mBg97fJ9bVo3AucHvWkUKNdqO4
=loyc
-----END PGP SIGNATURE-----

--YZ5djTAD1cGYuMQK--


--===============8557171577809357612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8557171577809357612==--
