Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVF78-0004d8-Hf
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 14:29:19 +0000
Date: Wed, 21 Oct 2020 16:29:15 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20201021142915.2wfefcrazkq42bgv@pengutronix.de>
References: <20201020111537.29328-1-u.kleine-koenig@pengutronix.de>
 <20201020133317.dc6yt2yt4tyk5ogm@pengutronix.de>
 <20201020140934.GS13710@pengutronix.de>
 <20201020142806.kmxoy6byavdwe5cv@pengutronix.de>
 <20201020145844.4id6iyuihl3hkt3x@pengutronix.de>
 <20201021054907.sunblqmijd4jl6zn@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201021054907.sunblqmijd4jl6zn@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] usb: i.MX: improve regulator handling
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On 20-10-21 07:49, Uwe Kleine-K=F6nig wrote:
> On Tue, Oct 20, 2020 at 04:58:44PM +0200, Marco Felsch wrote:
> > On 20-10-20 16:28, Marco Felsch wrote:
> > > On 20-10-20 16:09, Sascha Hauer wrote:
> > > > On Tue, Oct 20, 2020 at 03:33:17PM +0200, Marco Felsch wrote:
> > > > > Hi Uwe,
> > > > > =

> > > > > On 20-10-20 13:15, Uwe Kleine-K=F6nig wrote:
> > > > > > Instead of just ignoring errors related to regulator getting er=
ror out.
> > > > > > In case there is no regulator in the device tree, regulator_get=
() returns
> > > > > > the dummy regulator and not an error code, so the change is rig=
ht for
> > > > > > this situation, too.
> > > > > > =

> > > > > > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.=
de>
> > > > > > ---
> > > > > >  drivers/usb/imx/chipidea-imx.c | 7 +++++--
> > > > > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > > > > > =

> > > > > > diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/c=
hipidea-imx.c
> > > > > > index 786beede6d89..dd0e3c1a2a58 100644
> > > > > > --- a/drivers/usb/imx/chipidea-imx.c
> > > > > > +++ b/drivers/usb/imx/chipidea-imx.c
> > > > > > @@ -267,8 +267,11 @@ static int imx_chipidea_probe(struct devic=
e_d *dev)
> > > > > >  	}
> > > > > >  =

> > > > > >  	ci->vbus =3D regulator_get(dev, "vbus");
> > > > > > -	if (IS_ERR(ci->vbus))
> > > > > > -		ci->vbus =3D NULL;
> > > > > > +	if (IS_ERR(ci->vbus)) {
> > > > > > +		ret =3D ERR_PTR(ci->vbus);
> > > > > > +		dev_err(dev, "Cannot get vbus regulator: %s\n", strerror(-re=
t));
> > > > > > +		return ret;
> > > > > =

> > > > > Returning the error here can cause problems with exisiting boards=
, e.g.
> > > > > if the regulator support is missing for the specified vbus regula=
tor.
> > > > > This is often the case since we have very limited regulator suppo=
rt for
> > > > > now.
> > > > =

> > > > But when there is a regulator we also have to control it, right?
> > > =

> > > So you need to add each regulator driver or worst case you need to add
> > > PMIC drivers.
> =

> Right, as if you don't the hardware might be off and USB won't work
> without a useful error message.

Adding a warining seems valid to me but returning a error is wrong since
the mainline driver explicite says: "/* no vbus regulator is needed */".

> > > If I remember correctly, I added the same for mci which
> > > broke a lot of boards. Later you reverted those commit. Now Oleksij
> > > added the regulator support for the fec driver and people are startin=
g =

> > > to remove the phy-supply handle from the barebox-dt's (commit 84cf5cf=
a9a
> > > ("ARM: dts: imx6qdl: pfla02: Remove fec phy-supply")). I'm not again
> =

> Looking at 84cf5cfa9a there is at least a comment missing about why this
> property is deleted. Something like
> =

> diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6q=
dl-phytec-pfla02.dtsi
> index b83511cb011f..7a12e2a06be4 100644
> --- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> +++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> @@ -84,6 +84,11 @@
>  };
>  =

>  &fec {
> +	/*
> +	 * barebox doesn't have a driver for the PMIC providing the phy-supply
> +	 * (dlg,da9063). So remove the phy-supply property and rely on the
> +	 * PMIC's reset default which has this supply enabled.
> +	 */
>  	/delete-property/ phy-supply;
>  };
>  =

> =

> > > this patch, just wanted to show the consequences of it.
> > =

> > Sorry I have to correct myself, pls check the linux driver:
> > =

> > static int ci_get_platdata(struct device *dev,
> > 			   struct ci_hdrc_platform_data *platdata)
> > {
> > =

> > ...
> > =

> > /* Get the vbus regulator */
> > platdata->reg_vbus =3D devm_regulator_get_optional(dev, "vbus");
> > if (PTR_ERR(platdata->reg_vbus) =3D=3D -EPROBE_DEFER) {
> > 	return -EPROBE_DEFER;
> > } else if (PTR_ERR(platdata->reg_vbus) =3D=3D -ENODEV) {
> > 	/* no vbus regulator is needed */
> > 	platdata->reg_vbus =3D NULL;
> > } else if (IS_ERR(platdata->reg_vbus)) {
> > 	dev_err(dev, "Getting regulator error: %ld\n",
> > 		PTR_ERR(platdata->reg_vbus));
> > 	return PTR_ERR(platdata->reg_vbus);
> > }
> =

> The difference between regulator_get and regulator_get_optional is that
> the former doesn't return -ENODEV but yields the dummy regulator
> instead. =


Nope, regulator_get returns dummy-regulators too and -ENODEV is returned
in case of regulator_get_optional() too, pls. check:

/* Internal regulator request function */
struct regulator *_regulator_get(struct device *dev, const char *id,
				 enum regulator_get_type get_type)
{
    ...
}

Regards,
  Marco

> (Yes, this is the inversed semantic compared with
> gpio_get_optional() and clk_get_optional().) So using
> devm_regulator_get_optional and ignoring -ENODEV is kind of strange.  So
> I think the above can be simplified to:
> =

> 	platdata->reg_vbus =3D devm_regulator_get(dev, "vbus");
> 	if (IS_ERR(platdata->reg_vbus))
> 		return dev_err_probe(dev, PTR_ERR(platdata->reg_vbus),
> 				     "Failed to get vbus regulator\n");
> 	=

> =

> and then it is more obvious that my barebox patch does the same.
> =

> Am I missing something?
> =

> Best regards
> Uwe
> =

> -- =

> Pengutronix e.K.                           | Uwe Kleine-K=F6nig          =
  |
> Industrial Linux Solutions                 | https://www.pengutronix.de/ |



> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
