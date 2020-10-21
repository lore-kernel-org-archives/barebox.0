Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kV7Hy-0002Je-Lj
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 06:07:59 +0000
Date: Wed, 21 Oct 2020 08:07:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201021060756.GT13710@pengutronix.de>
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] usb: i.MX: improve regulator handling
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>

On Wed, Oct 21, 2020 at 07:49:07AM +0200, Uwe Kleine-K=F6nig wrote:
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
> =

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

Yes, such a comment should really be there. I don't like this approach
very much though as this devicetree no longer boots Linux properly.
Just ignoring errors is also not very nice as it means that we hide real
errors. Adding each and every regulator driver seems desirable, but
sometimes just not necessary.

We could add a way for boards to allow a dummy regulator for a specific
device. This could be a function call or maybe a barebox specific devicetree
property.

Sascha


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
