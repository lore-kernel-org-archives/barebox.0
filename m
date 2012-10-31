Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTU40-00035U-5S
 for barebox@lists.infradead.org; Wed, 31 Oct 2012 08:54:16 +0000
Date: Wed, 31 Oct 2012 09:54:14 +0100
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20121031085414.GC2582@pengutronix.de>
References: <1351606875-31558-1-git-send-email-w.sang@pengutronix.de>
 <201210310929.57007.jbe@pengutronix.de>
 <20121031083621.GB2582@pengutronix.de>
 <201210310948.31441.jbe@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <201210310948.31441.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7029843318859240424=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] dma: apbh: check for errors when resetting ip core
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============7029843318859240424==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="vOmOzSkFvhd7u8Ms"
Content-Disposition: inline


--vOmOzSkFvhd7u8Ms
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 31, 2012 at 09:48:31AM +0100, Juergen Beisert wrote:
> Wolfram Sang wrote:
> > On Wed, Oct 31, 2012 at 09:29:56AM +0100, Juergen Beisert wrote:
> > > Wolfram Sang wrote:
> > > > Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> > > > ---
> > > >  drivers/dma/apbh_dma.c |    4 +++-
> > > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
> > > > index 363878f..d30b8fb 100644
> > > > --- a/drivers/dma/apbh_dma.c
> > > > +++ b/drivers/dma/apbh_dma.c
> > > > @@ -555,7 +555,9 @@ int mxs_dma_init(void)
> > > >  	int ret, channel;
> > > >  	u32 val, reg;
> > > >
> > > > -	mxs_reset_block(apbh_regs, 0);
> > > > +	ret =3D mxs_reset_block(apbh_regs, 0);
> > > > +	if (ret)
> > > > +		return ret;
> > >
> > > In this case the user faces a "MXS: Timeout resetting block via regis=
ter
> > > ...". Do you think this message is helpful to give the user a pointer
> > > *where* the failure happens?
> >
> > Yes, since it points to the IP core which was used here. Which again,
> > makes clear which driver was trying to reset the IP core.
>=20
> You mean the reported register offset points to the corresponding IP core?

Yes, sure. Otherwise the error message would be useless :)

> But also Barebox has more users than developers.

There is nothing a user could do in this case except asking a developer
what could have happened? And that's the best option here.

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--vOmOzSkFvhd7u8Ms
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEARECAAYFAlCQ5zUACgkQD27XaX1/VRseLQCePHiz3U7/rsNo+5fDZ8FdkVzJ
SM8An0CZQTh2FHf2n6wX8wL86IG/6r2Y
=97pi
-----END PGP SIGNATURE-----

--vOmOzSkFvhd7u8Ms--


--===============7029843318859240424==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7029843318859240424==--
