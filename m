Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVCqJ-000119-Ps
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 12:03:48 +0000
Date: Wed, 21 Oct 2020 14:03:43 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20201021120343.46wzcympd6r673lo@pengutronix.de>
References: <20201020111537.29328-1-u.kleine-koenig@pengutronix.de>
 <20201021100548.GA26805@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20201021100548.GA26805@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2069400036565460821=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] usb: i.MX: improve regulator handling
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============2069400036565460821==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7necnliggriuvlr7"
Content-Disposition: inline


--7necnliggriuvlr7
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 21, 2020 at 12:05:48PM +0200, Sascha Hauer wrote:
> On Tue, Oct 20, 2020 at 01:15:37PM +0200, Uwe Kleine-K=F6nig wrote:
> > Instead of just ignoring errors related to regulator getting error out.
> > In case there is no regulator in the device tree, regulator_get() retur=
ns
> > the dummy regulator and not an error code, so the change is right for
> > this situation, too.
> >=20
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  drivers/usb/imx/chipidea-imx.c | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-=
imx.c
> > index 786beede6d89..dd0e3c1a2a58 100644
> > --- a/drivers/usb/imx/chipidea-imx.c
> > +++ b/drivers/usb/imx/chipidea-imx.c
> > @@ -267,8 +267,11 @@ static int imx_chipidea_probe(struct device_d *dev)
> >  	}
> > =20
> >  	ci->vbus =3D regulator_get(dev, "vbus");
> > -	if (IS_ERR(ci->vbus))
> > -		ci->vbus =3D NULL;
> > +	if (IS_ERR(ci->vbus)) {
> > +		ret =3D ERR_PTR(ci->vbus);
> > +		dev_err(dev, "Cannot get vbus regulator: %s\n", strerror(-ret));
> > +		return ret;
> > +	}
>=20
> Ok, as Marco noted we had regressions in similar cases where we didn't
> have a driver for the regulator, but knew that it was default enabled.
> Therefore I am dropping this patch.

So you prefer "fails on some boards with a missleading (or at least
little helpful) error message" over "fails on some (other) boards with
an obvious error indication"?

I think I would have decided this differently. And IMHO then this should
at least result in a runtime warning instead of being silently
optimistic.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--7necnliggriuvlr7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl+QI5wACgkQwfwUeK3K
7AkkVwgAjXQmLJxD/Xgz3vv/rKFH6Gh8jMPjIdHhsg1Sl6YTV4dwBX/xyVwU8fvI
yHl30ojvP6OiGUqxJsWdsKtkegyigZI2Gh5LKFhNKd4wbwdrZPUXAI5Thk4/Agyc
LdZilOgkdZGCYeRCL/a+ZyUEz2ugMAZFwl3CyEFibgXCyXtzM0dsaKijtgu80p0/
1K/gv1ln+cWDFWHjVkC0Jl41Lhs4RLUJArQaUB6OlSXTp+jDq8HEIlBu0XcOUlwP
YczFCWidQoeU25VhQ5SOeOCD/kM8TaRwvCOHpLg3hbuv2X41FC6/rORLGbZdsJ/U
Q+Z+GIioWPySZKzKYsgJaJm4ywo3iQ==
=rmJq
-----END PGP SIGNATURE-----

--7necnliggriuvlr7--


--===============2069400036565460821==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2069400036565460821==--
