Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVJQZ-0006x3-MK
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 19:05:41 +0000
Date: Wed, 21 Oct 2020 21:05:35 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20201021190535.umpkacojr72n6ssd@pengutronix.de>
References: <20201020111537.29328-1-u.kleine-koenig@pengutronix.de>
 <20201020133317.dc6yt2yt4tyk5ogm@pengutronix.de>
 <20201020140934.GS13710@pengutronix.de>
 <20201020142806.kmxoy6byavdwe5cv@pengutronix.de>
 <20201020145844.4id6iyuihl3hkt3x@pengutronix.de>
 <20201021054907.sunblqmijd4jl6zn@pengutronix.de>
 <20201021142915.2wfefcrazkq42bgv@pengutronix.de>
 <20201021152809.drictrgcuu7lhxwu@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20201021152809.drictrgcuu7lhxwu@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4310816299312335501=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] usb: i.MX: improve regulator handling
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============4310816299312335501==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sz2xj7opboldmrku"
Content-Disposition: inline


--sz2xj7opboldmrku
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 21, 2020 at 05:28:09PM +0200, Marco Felsch wrote:
> On 20-10-21 16:29, Marco Felsch wrote:
> > On 20-10-21 07:49, Uwe Kleine-K=F6nig wrote:
> > > On Tue, Oct 20, 2020 at 04:58:44PM +0200, Marco Felsch wrote:
> > > > On 20-10-20 16:28, Marco Felsch wrote:
> > > > > On 20-10-20 16:09, Sascha Hauer wrote:
> > > > > > On Tue, Oct 20, 2020 at 03:33:17PM +0200, Marco Felsch wrote:
> > > > > > > Hi Uwe,
> > > > > > >=20
> > > > > > > On 20-10-20 13:15, Uwe Kleine-K=F6nig wrote:
> > > > > > > > Instead of just ignoring errors related to regulator gettin=
g error out.
> > > > > > > > In case there is no regulator in the device tree, regulator=
_get() returns
> > > > > > > > the dummy regulator and not an error code, so the change is=
 right for
> > > > > > > > this situation, too.
> > > > > > > >=20
> > > > > > > > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutro=
nix.de>
> > > > > > > > ---
> > > > > > > >  drivers/usb/imx/chipidea-imx.c | 7 +++++--
> > > > > > > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > > > > > > >=20
> > > > > > > > diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/i=
mx/chipidea-imx.c
> > > > > > > > index 786beede6d89..dd0e3c1a2a58 100644
> > > > > > > > --- a/drivers/usb/imx/chipidea-imx.c
> > > > > > > > +++ b/drivers/usb/imx/chipidea-imx.c
> > > > > > > > @@ -267,8 +267,11 @@ static int imx_chipidea_probe(struct d=
evice_d *dev)
> > > > > > > >  	}
> > > > > > > > =20
> > > > > > > >  	ci->vbus =3D regulator_get(dev, "vbus");
> > > > > > > > -	if (IS_ERR(ci->vbus))
> > > > > > > > -		ci->vbus =3D NULL;
> > > > > > > > +	if (IS_ERR(ci->vbus)) {
> > > > > > > > +		ret =3D ERR_PTR(ci->vbus);
> > > > > > > > +		dev_err(dev, "Cannot get vbus regulator: %s\n", strerror=
(-ret));
> > > > > > > > +		return ret;
> > > > > > >=20
> > > > > > > Returning the error here can cause problems with exisiting bo=
ards, e.g.
> > > > > > > if the regulator support is missing for the specified vbus re=
gulator.
> > > > > > > This is often the case since we have very limited regulator s=
upport for
> > > > > > > now.
> > > > > >=20
> > > > > > But when there is a regulator we also have to control it, right?
> > > > >=20
> > > > > So you need to add each regulator driver or worst case you need t=
o add
> > > > > PMIC drivers.
> > >=20
> > > Right, as if you don't the hardware might be off and USB won't work
> > > without a useful error message.
> >=20
> > Adding a warining seems valid to me but returning a error is wrong since
> > the mainline driver explicite says: "/* no vbus regulator is needed */".
> >=20
> > > > > If I remember correctly, I added the same for mci which
> > > > > broke a lot of boards. Later you reverted those commit. Now Oleks=
ij
> > > > > added the regulator support for the fec driver and people are sta=
rting=20
> > > > > to remove the phy-supply handle from the barebox-dt's (commit 84c=
f5cfa9a
> > > > > ("ARM: dts: imx6qdl: pfla02: Remove fec phy-supply")). I'm not ag=
ain
> > >=20
> > > Looking at 84cf5cfa9a there is at least a comment missing about why t=
his
> > > property is deleted. Something like
> > >=20
> > > diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/i=
mx6qdl-phytec-pfla02.dtsi
> > > index b83511cb011f..7a12e2a06be4 100644
> > > --- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> > > +++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> > > @@ -84,6 +84,11 @@
> > >  };
> > > =20
> > >  &fec {
> > > +	/*
> > > +	 * barebox doesn't have a driver for the PMIC providing the phy-sup=
ply
> > > +	 * (dlg,da9063). So remove the phy-supply property and rely on the
> > > +	 * PMIC's reset default which has this supply enabled.
> > > +	 */
> > >  	/delete-property/ phy-supply;
> > >  };
> > > =20
> > >=20
> > > > > this patch, just wanted to show the consequences of it.
> > > >=20
> > > > Sorry I have to correct myself, pls check the linux driver:
> > > >=20
> > > > static int ci_get_platdata(struct device *dev,
> > > > 			   struct ci_hdrc_platform_data *platdata)
> > > > {
> > > >=20
> > > > ...
> > > >=20
> > > > /* Get the vbus regulator */
> > > > platdata->reg_vbus =3D devm_regulator_get_optional(dev, "vbus");
> > > > if (PTR_ERR(platdata->reg_vbus) =3D=3D -EPROBE_DEFER) {
> > > > 	return -EPROBE_DEFER;
> > > > } else if (PTR_ERR(platdata->reg_vbus) =3D=3D -ENODEV) {
> > > > 	/* no vbus regulator is needed */
> > > > 	platdata->reg_vbus =3D NULL;
> > > > } else if (IS_ERR(platdata->reg_vbus)) {
> > > > 	dev_err(dev, "Getting regulator error: %ld\n",
> > > > 		PTR_ERR(platdata->reg_vbus));
> > > > 	return PTR_ERR(platdata->reg_vbus);
> > > > }
> > >=20
> > > The difference between regulator_get and regulator_get_optional is th=
at
> > > the former doesn't return -ENODEV but yields the dummy regulator
> > > instead.=20
> >=20
> > Nope, regulator_get returns dummy-regulators too and -ENODEV is returned
> > in case of regulator_get_optional() too, pls. check:
> >=20
> > /* Internal regulator request function */
> > struct regulator *_regulator_get(struct device *dev, const char *id,
> > 				 enum regulator_get_type get_type)
> > {
> >     ...
> > }
>=20
> Sorry I read with one eye only...
>=20
> > > (Yes, this is the inversed semantic compared with
> > > gpio_get_optional() and clk_get_optional().) So using
> > > devm_regulator_get_optional and ignoring -ENODEV is kind of strange. =
 So
> > > I think the above can be simplified to:
> > >=20
> > > 	platdata->reg_vbus =3D devm_regulator_get(dev, "vbus");
> > > 	if (IS_ERR(platdata->reg_vbus))
> > > 		return dev_err_probe(dev, PTR_ERR(platdata->reg_vbus),
> > > 				     "Failed to get vbus regulator\n");
>=20
> This will (re-)introduce the dummy regulator message, pls check commit
> 782c1c49f3db ("usb: chipidea: core: change vbus-regulator as optional")
>=20
> Anyway, this is a bit off-topic here.
>=20
> > > and then it is more obvious that my barebox patch does the same.
> > >=20
> > > Am I missing something?
>=20
> We don't have dummy regulators and in barebox we need to set it to NULL
> instead. A few system integrators also adding supply nodes only to avoid
> the dummy regulator message. Technically the regulator nodes most the
> time are not required since they relying on their default value, however
> those default values are retrieved. Linux has support for a wide range
> of regulators and this works fine. In Barebox we don't have this wide
> range support and your commit will break existing working boards.

This sounds more harsh than (IMHO) appropriate. They break because my
suggested change makes it obvious that the support is incomplete. And I
don't think APIs or drivers that are optimistic (huh, there is no way to
satisfy the request, let's assume it works just fine and return a dummy)
are a good idea. That sounds like a temporary measure that became the
long term solution.

In my eyes it's wrong to paper over such things and it's better to check
in a strict way (and so gain proper error messages). And if there are
problems remove the regulator in the device tree (as done in 84cf5cfa9a
but with a proper comment).

Having said that I don't understand the suggested solutions yet that
solve this issue using a property that makes barebox do the right thing
(in the absence of a regulator driver) and still make the dtb suitable
for linux booting.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--sz2xj7opboldmrku
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl+QhnsACgkQwfwUeK3K
7AlWMAf/e/9x7ojtOjGOQNcpHydgHaqqNRhb2kqEis/XcirY1wMVyW9/Y1aLV7kM
Dxfgtuhz5G6L2937QtUK8jaesGJp0qgkUIYGbNxvL8AAbygHwVhTnxllpgDcXbOb
Hgr76kDG6o+KhvnTCFRvK272LdofTf57RMQrxd1iXIuTB1g/VUacfSwuCH/6OVR+
vIfDvNSiciVzne8lCKrog8p+4ETG9DdBhhGgP3VsqfCkjwD2WdgmLk9RpG84Xj+I
79GbVXuKXXWxTqFKFBzY3WtUHlCX5C9YeISuL034RQrJu57Z1thn/JARx1JchmJd
snQiV3cKKAOPmpI9GnquyGSSilLdkw==
=Bj5r
-----END PGP SIGNATURE-----

--sz2xj7opboldmrku--


--===============4310816299312335501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4310816299312335501==--
