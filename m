Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTTmi-0007s0-85
 for barebox@lists.infradead.org; Wed, 31 Oct 2012 08:36:24 +0000
Date: Wed, 31 Oct 2012 09:36:21 +0100
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20121031083621.GB2582@pengutronix.de>
References: <1351606875-31558-1-git-send-email-w.sang@pengutronix.de>
 <1351606875-31558-2-git-send-email-w.sang@pengutronix.de>
 <201210310929.57007.jbe@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <201210310929.57007.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3672954507764159650=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] dma: apbh: check for errors when resetting ip core
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============3672954507764159650==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="XOIedfhf+7KOe/yw"
Content-Disposition: inline


--XOIedfhf+7KOe/yw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 31, 2012 at 09:29:56AM +0100, Juergen Beisert wrote:
> Wolfram Sang wrote:
> > Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> > ---
> >  drivers/dma/apbh_dma.c |    4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
> > index 363878f..d30b8fb 100644
> > --- a/drivers/dma/apbh_dma.c
> > +++ b/drivers/dma/apbh_dma.c
> > @@ -555,7 +555,9 @@ int mxs_dma_init(void)
> >  	int ret, channel;
> >  	u32 val, reg;
> >
> > -	mxs_reset_block(apbh_regs, 0);
> > +	ret =3D mxs_reset_block(apbh_regs, 0);
> > +	if (ret)
> > +		return ret;
>=20
> In this case the user faces a "MXS: Timeout resetting block via register =
=2E..".=20
> Do you think this message is helpful to give the user a pointer *where* t=
he=20
> failure happens?

Yes, since it points to the IP core which was used here. Which again,
makes clear which driver was trying to reset the IP core.

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--XOIedfhf+7KOe/yw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEARECAAYFAlCQ4wUACgkQD27XaX1/VRswAwCgjVPBDhDMOenNClK+ptZ1eIiD
Iy4AoIYLhSrPlKmJWTr31wdv9yvOSfTR
=Ga15
-----END PGP SIGNATURE-----

--XOIedfhf+7KOe/yw--


--===============3672954507764159650==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3672954507764159650==--
