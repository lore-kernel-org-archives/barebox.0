Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kV6zl-0000cS-PT
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 05:49:10 +0000
Date: Wed, 21 Oct 2020 07:49:07 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20201021054907.sunblqmijd4jl6zn@pengutronix.de>
References: <20201020111537.29328-1-u.kleine-koenig@pengutronix.de>
 <20201020133317.dc6yt2yt4tyk5ogm@pengutronix.de>
 <20201020140934.GS13710@pengutronix.de>
 <20201020142806.kmxoy6byavdwe5cv@pengutronix.de>
 <20201020145844.4id6iyuihl3hkt3x@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20201020145844.4id6iyuihl3hkt3x@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2982877634790720814=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] usb: i.MX: improve regulator handling
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============2982877634790720814==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h5pvzwvmeoqaobpa"
Content-Disposition: inline


--h5pvzwvmeoqaobpa
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 20, 2020 at 04:58:44PM +0200, Marco Felsch wrote:
> On 20-10-20 16:28, Marco Felsch wrote:
> > On 20-10-20 16:09, Sascha Hauer wrote:
> > > On Tue, Oct 20, 2020 at 03:33:17PM +0200, Marco Felsch wrote:
> > > > Hi Uwe,
> > > >=20
> > > > On 20-10-20 13:15, Uwe Kleine-K=F6nig wrote:
> > > > > Instead of just ignoring errors related to regulator getting erro=
r out.
> > > > > In case there is no regulator in the device tree, regulator_get()=
 returns
> > > > > the dummy regulator and not an error code, so the change is right=
 for
> > > > > this situation, too.
> > > > >=20
> > > > > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > > > > ---
> > > > >  drivers/usb/imx/chipidea-imx.c | 7 +++++--
> > > > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > > > >=20
> > > > > diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chi=
pidea-imx.c
> > > > > index 786beede6d89..dd0e3c1a2a58 100644
> > > > > --- a/drivers/usb/imx/chipidea-imx.c
> > > > > +++ b/drivers/usb/imx/chipidea-imx.c
> > > > > @@ -267,8 +267,11 @@ static int imx_chipidea_probe(struct device_=
d *dev)
> > > > >  	}
> > > > > =20
> > > > >  	ci->vbus =3D regulator_get(dev, "vbus");
> > > > > -	if (IS_ERR(ci->vbus))
> > > > > -		ci->vbus =3D NULL;
> > > > > +	if (IS_ERR(ci->vbus)) {
> > > > > +		ret =3D ERR_PTR(ci->vbus);
> > > > > +		dev_err(dev, "Cannot get vbus regulator: %s\n", strerror(-ret)=
);
> > > > > +		return ret;
> > > >=20
> > > > Returning the error here can cause problems with exisiting boards, =
e.g.
> > > > if the regulator support is missing for the specified vbus regulato=
r.
> > > > This is often the case since we have very limited regulator support=
 for
> > > > now.
> > >=20
> > > But when there is a regulator we also have to control it, right?
> >=20
> > So you need to add each regulator driver or worst case you need to add
> > PMIC drivers.

Right, as if you don't the hardware might be off and USB won't work
without a useful error message.

> > If I remember correctly, I added the same for mci which
> > broke a lot of boards. Later you reverted those commit. Now Oleksij
> > added the regulator support for the fec driver and people are starting=
=20
> > to remove the phy-supply handle from the barebox-dt's (commit 84cf5cfa9a
> > ("ARM: dts: imx6qdl: pfla02: Remove fec phy-supply")). I'm not again

Looking at 84cf5cfa9a there is at least a comment missing about why this
property is deleted. Something like

diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl=
-phytec-pfla02.dtsi
index b83511cb011f..7a12e2a06be4 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -84,6 +84,11 @@
 };
=20
 &fec {
+	/*
+	 * barebox doesn't have a driver for the PMIC providing the phy-supply
+	 * (dlg,da9063). So remove the phy-supply property and rely on the
+	 * PMIC's reset default which has this supply enabled.
+	 */
 	/delete-property/ phy-supply;
 };
=20

> > this patch, just wanted to show the consequences of it.
>=20
> Sorry I have to correct myself, pls check the linux driver:
>=20
> static int ci_get_platdata(struct device *dev,
> 			   struct ci_hdrc_platform_data *platdata)
> {
>=20
> ...
>=20
> /* Get the vbus regulator */
> platdata->reg_vbus =3D devm_regulator_get_optional(dev, "vbus");
> if (PTR_ERR(platdata->reg_vbus) =3D=3D -EPROBE_DEFER) {
> 	return -EPROBE_DEFER;
> } else if (PTR_ERR(platdata->reg_vbus) =3D=3D -ENODEV) {
> 	/* no vbus regulator is needed */
> 	platdata->reg_vbus =3D NULL;
> } else if (IS_ERR(platdata->reg_vbus)) {
> 	dev_err(dev, "Getting regulator error: %ld\n",
> 		PTR_ERR(platdata->reg_vbus));
> 	return PTR_ERR(platdata->reg_vbus);
> }

The difference between regulator_get and regulator_get_optional is that
the former doesn't return -ENODEV but yields the dummy regulator
instead. (Yes, this is the inversed semantic compared with
gpio_get_optional() and clk_get_optional().) So using
devm_regulator_get_optional and ignoring -ENODEV is kind of strange.  So
I think the above can be simplified to:

	platdata->reg_vbus =3D devm_regulator_get(dev, "vbus");
	if (IS_ERR(platdata->reg_vbus))
		return dev_err_probe(dev, PTR_ERR(platdata->reg_vbus),
				     "Failed to get vbus regulator\n");
=09

and then it is more obvious that my barebox patch does the same.

Am I missing something?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--h5pvzwvmeoqaobpa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl+Py9AACgkQwfwUeK3K
7Akr4wf/fpxyMr9ez2VqE1twzTXFf5A0cBpJsS1+eWbgH6HnJhktfO3ebDQ/n8iO
oQayqpGZGZF8HTJ+IFuiJV/O4JLuCWppb2PsTdXMVLnTznvb3SSSYeVK5vFIAkdC
3VVNlLqCmzBhBjLiIT9/KJkOZaGphWPcU0GSEOh/pmpS6pdwRp/6peUn9M52NWQ3
izGIk2wKwihLRw3LjzNS7IG36+qzFiiQHtP+n+VWlyf8Y7eEmCF13tf5c3e4KP+S
ArdMsJVYA+j/3rkZZogzhh3gR3wJH+6JQIe+1hFwkHoQNA4mElLgqWt2ZAJMjWCi
+CQARDD2jhWRh6vVF3x8j+js6cEo+Q==
=O3M7
-----END PGP SIGNATURE-----

--h5pvzwvmeoqaobpa--


--===============2982877634790720814==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2982877634790720814==--
