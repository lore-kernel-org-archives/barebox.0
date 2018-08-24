Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ftIBl-0004Md-ON
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 19:56:11 +0000
Date: Fri, 24 Aug 2018 21:55:56 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20180824195556.jihqkka6bj5tbqpq@pengutronix.de>
References: <20180824151739.8883-1-m.grzeschik@pengutronix.de>
 <20180824170407.geeahhgkqntovpi5@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20180824170407.geeahhgkqntovpi5@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5171828005897616336=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] imx{5,6}: reset otg port after usb-serial boot
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============5171828005897616336==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="w2goxcbt6veaeft5"
Content-Disposition: inline


--w2goxcbt6veaeft5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 24, 2018 at 07:04:07PM +0200, Sascha Hauer wrote:
> On Fri, Aug 24, 2018 at 05:17:39PM +0200, Michael Grzeschik wrote:
> > The ROM loader leaves the otg port in peripheral mode which confuses the
> > host controller. After the handover to barebox we ensure to bring in the
> > port into the otg state by resetting it.
> >=20
> > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > ---
> > This was tested with mx53 and mx6 for now. I suppose we should
> > adopt this to the mx2 and mx3 models.
>=20
> Looks like a variant of the patch I posted here:
> https://www.spinics.net/lists/u-boot-v2/msg34153.html
> I have given the reason this can't be applied directly here:
> https://www.spinics.net/lists/u-boot-v2/msg34196.html

Just toggling RS was not enough in my case.

I get that it is not safe to toggle bits if the clock is not
there. We could check for the bootsource. Is it possible to
ensure that we are started by imx-usb-loader?

mgr

--=20
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--w2goxcbt6veaeft5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAluAYskACgkQC+njFXoe
LGQAHQ//R/FBCTx6FkbrVbU+Kkd13OzclWLRgmhZZE3g8FZb43OrUZNVZ+5HG6X4
g19aOpyFSwuEmJXShF3jVU4eTV9rTmn5wq4udI7RbP3Jqs1j780hnmK+c+0aPDAU
NShVh0MQVZM9HC+WrUqpXcGXuWuJ4o46TvYDQHqU51uOFnIZYLFrIwCMtGsFvbsc
o4nLukNac/ejfOxsXLjl/cT+lqmk1+DlRbQH8VazZ+9arw7M/WomEWSxt4Z5yYpW
Gb+GtuDdgGXCFnGC1DuukB+hH2DwJeImVrlh0PKCct1hivh2sgiZgcFjvHFJV5IS
IEBLRCOYQGwy4nr9yS8+BkmEspAZgwbf2uXKAffzpzl2UiBXAnDDfG8cKMiXjydg
laLnbQl/zga5z3kBwkDg0fYT2sOG9OAY49nBlawSStgf4CFFEM5O+qqsvDnND/22
ZJ37IV86aWzy6O6dI9AA6Fp9s3rBQyNWDPTpRVSd0UgSpc6fOMoPkZqFwqzGFIrW
xMAr90cYV24zXTBHav7ZNFz5TrllL4rXdFGJDy8CMn2HuSSTGseUz5pbvqu4bTzA
WS30b9L1v5ZG17RGjZoSuLz2RHoHgbt5vR9ArKFsJf4cB8A6EbtRw/NVti1NsNUK
fHqZ5tGAl/bhfL1z0hH+aTwTaavaL7ALlzxkSXX02f5nhSMRmKI=
=qhOl
-----END PGP SIGNATURE-----

--w2goxcbt6veaeft5--


--===============5171828005897616336==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5171828005897616336==--
