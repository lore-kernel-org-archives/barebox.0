Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvHLN-0005xr-Jc
 for barebox@lists.infradead.org; Thu, 30 Aug 2018 07:26:19 +0000
Date: Thu, 30 Aug 2018 09:26:05 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20180830072605.ebnmfuq4lc4w6igz@pengutronix.de>
References: <20180829221727.15273-1-m.grzeschik@pengutronix.de>
 <20180830044515.GA18792@ravnborg.org>
 <20180830063120.hujijl5aslb2taci@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20180830063120.hujijl5aslb2taci@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1726756404402707361=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3] lxc: add new package
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: barebox@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>


--===============1726756404402707361==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nmd7qztrygbop6po"
Content-Disposition: inline


--nmd7qztrygbop6po
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 30, 2018 at 08:31:20AM +0200, Robert Schwebel wrote:
> On Thu, Aug 30, 2018 at 06:45:15AM +0200, Sam Ravnborg wrote:
> > Hi Michael.
> > On Thu, Aug 30, 2018 at 12:17:27AM +0200, Michael Grzeschik wrote:
> > > This patch adds support for the lxc container system. We install the
> > > userspace lib and application.
> > >=20
> > > To make sure all necessary kernel options are enabled use:
> > > $ CONFIG=3D/path/to/kernelconfig lxc-checkconfig
> > >=20
> > > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> >=20
> > -WRONGMAILLIST?
>=20
> Barebox Container FTW! :-)

It has been a bit late yesterday!
Which lukily gives me the option to fix
a mistake in that patch! :D

Thanks,
Michael

--=20
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--nmd7qztrygbop6po
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAluHnAQACgkQC+njFXoe
LGQIJw//duYOzWJ3H5BHvEDndvtMHaNeEFRVQ2Uh0iG1xvsXRq3+KRkfli618vJ7
Tyzcc0tUyZrTSgZwtxqTK85XwxMmB6TA/8JNgaeRQ4FsGYbg+f3cs1i4LBG8+XQ6
Y5ljAgvQz6ahOGyG/ld3MVRfZmz4ZREvydBwGeT3x/G9aWnY9rtjOLgjMMd4rWJK
7ei+qhOs5nqPzNwPpNyXOJj6yn5EA90xXgqO2fg9Wy2uQZqO5eZ/aZiiEnMMn2UF
O2qbsoJRK+E2whd71k0eVpH/K9zlfFD4qJqdJijtkbEdaN6C/ggFsdoQZGTtSw6Q
4sN0sdBoYw/PDkcN0KmRDkbtdlCg/dx5Kh2hR5SFg6bmW/+MaiN8jGGpn2VakY+Y
f6mHtSpGlHUllt17VdwS8sP+jlOc95dmZhnNW2y0R7apsbxO7fHeoIJqPfRKbgF7
bc1DWoGvT0pOTfKXUzXBnlFM1+rv1vYOhmw2BjheFVQoN0+/xgh9qeJ89y7n6oLR
FSG7AikXsikjxDTPyXFkzY4LUn0dn7I5GPiAyoGY7qBLwSiRwbWOSqjXatpw0sQP
mxYvEOuLJ7bcinCVsYgLk2tNRKH4EFcoaSlSmI0OKA88tLEaRdawm/l29/7gJSfW
IOb16mAdCsXnSakoHfVy2773dSHfZ9XFfbL71XDcRttusnuI5vY=
=pc7z
-----END PGP SIGNATURE-----

--nmd7qztrygbop6po--


--===============1726756404402707361==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1726756404402707361==--
