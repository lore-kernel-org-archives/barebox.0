Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SfArc-0004N8-I6
 for barebox@lists.infradead.org; Thu, 14 Jun 2012 14:17:33 +0000
Date: Thu, 14 Jun 2012 16:17:30 +0200
From: Wolfram Sang <w.sang@pengutronix.de>
Message-ID: <20120614141730.GC14419@pengutronix.de>
References: <1339679583-8725-1-git-send-email-w.sang@pengutronix.de>
 <20120614141016.GU30400@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20120614141016.GU30400@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8916298243680988476=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH V2] arm: mxs: get MAC from OCOTP for MX28EVK
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============8916298243680988476==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="i7F3eY7HS/tUJxUd"
Content-Disposition: inline


--i7F3eY7HS/tUJxUd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 14, 2012 at 04:10:16PM +0200, Sascha Hauer wrote:
> On Thu, Jun 14, 2012 at 03:13:03PM +0200, Wolfram Sang wrote:
> > Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> > ---
> >=20
> > V2: rewrote code according to Sascha's style guide ;)
> >=20
> >  arch/arm/boards/freescale-mx28-evk/mx28-evk.c |   30 +++++++++++++++++=
++++++--
> >  arch/arm/mach-mxs/Kconfig                     |    1 +
> >  2 files changed, 29 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/b=
oards/freescale-mx28-evk/mx28-evk.c
> > index 9168ed8..fc395a0 100644
> > --- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
> > +++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
> > @@ -22,17 +22,18 @@
> >  #include <init.h>
> >  #include <mci.h>
> >  #include <io.h>
> > +#include <net.h>
> > =20
> >  #include <mach/clock.h>
> >  #include <mach/imx-regs.h>
> >  #include <mach/iomux-imx28.h>
> >  #include <mach/mci.h>
> > +#include <mach/fb.h>
> > +#include <mach/ocotp.h>
> > =20
> >  #include <asm/armlinux.h>
> >  #include <asm/mmu.h>
> > =20
> > -#include <mach/fb.h>
> > -
> >  #include <generated/mach-types.h>
> > =20
> >  #define MX28EVK_FEC_PHY_RESET_GPIO	141
> > @@ -118,6 +119,27 @@ static struct mxs_mci_platform_data mci_pdata =3D {
> >  };
> > =20
> >  /* fec */
> > +void mx28_evk_get_ethaddr(void)
>=20
> static?

Yes :/

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--i7F3eY7HS/tUJxUd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAk/Z8noACgkQD27XaX1/VRt4WACeN94gQ9xyLBKCyf06Dddj6a5g
uUEAoMY1hE30iA/2FRQ7pS2Kl627/aZt
=Cts6
-----END PGP SIGNATURE-----

--i7F3eY7HS/tUJxUd--


--===============8916298243680988476==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8916298243680988476==--
