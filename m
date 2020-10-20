Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUt66-000286-4t
 for barebox@lists.infradead.org; Tue, 20 Oct 2020 14:58:47 +0000
Date: Tue, 20 Oct 2020 16:58:44 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20201020145844.4id6iyuihl3hkt3x@pengutronix.de>
References: <20201020111537.29328-1-u.kleine-koenig@pengutronix.de>
 <20201020133317.dc6yt2yt4tyk5ogm@pengutronix.de>
 <20201020140934.GS13710@pengutronix.de>
 <20201020142806.kmxoy6byavdwe5cv@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201020142806.kmxoy6byavdwe5cv@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

On 20-10-20 16:28, Marco Felsch wrote:
> On 20-10-20 16:09, Sascha Hauer wrote:
> > On Tue, Oct 20, 2020 at 03:33:17PM +0200, Marco Felsch wrote:
> > > Hi Uwe,
> > > =

> > > On 20-10-20 13:15, Uwe Kleine-K=F6nig wrote:
> > > > Instead of just ignoring errors related to regulator getting error =
out.
> > > > In case there is no regulator in the device tree, regulator_get() r=
eturns
> > > > the dummy regulator and not an error code, so the change is right f=
or
> > > > this situation, too.
> > > > =

> > > > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > > > ---
> > > >  drivers/usb/imx/chipidea-imx.c | 7 +++++--
> > > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > > > =

> > > > diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipi=
dea-imx.c
> > > > index 786beede6d89..dd0e3c1a2a58 100644
> > > > --- a/drivers/usb/imx/chipidea-imx.c
> > > > +++ b/drivers/usb/imx/chipidea-imx.c
> > > > @@ -267,8 +267,11 @@ static int imx_chipidea_probe(struct device_d =
*dev)
> > > >  	}
> > > >  =

> > > >  	ci->vbus =3D regulator_get(dev, "vbus");
> > > > -	if (IS_ERR(ci->vbus))
> > > > -		ci->vbus =3D NULL;
> > > > +	if (IS_ERR(ci->vbus)) {
> > > > +		ret =3D ERR_PTR(ci->vbus);
> > > > +		dev_err(dev, "Cannot get vbus regulator: %s\n", strerror(-ret));
> > > > +		return ret;
> > > =

> > > Returning the error here can cause problems with exisiting boards, e.=
g.
> > > if the regulator support is missing for the specified vbus regulator.
> > > This is often the case since we have very limited regulator support f=
or
> > > now.
> > =

> > But when there is a regulator we also have to control it, right?
> =

> So you need to add each regulator driver or worst case you need to add
> PMIC drivers. If I remember correctly, I added the same for mci which
> broke a lot of boards. Later you reverted those commit. Now Oleksij
> added the regulator support for the fec driver and people are starting =

> to remove the phy-supply handle from the barebox-dt's (commit 84cf5cfa9a
> ("ARM: dts: imx6qdl: pfla02: Remove fec phy-supply")). I'm not again
> this patch, just wanted to show the consequences of it.

Sorry I have to correct myself, pls check the linux driver:

static int ci_get_platdata(struct device *dev,
			   struct ci_hdrc_platform_data *platdata)
{

...

/* Get the vbus regulator */
platdata->reg_vbus =3D devm_regulator_get_optional(dev, "vbus");
if (PTR_ERR(platdata->reg_vbus) =3D=3D -EPROBE_DEFER) {
	return -EPROBE_DEFER;
} else if (PTR_ERR(platdata->reg_vbus) =3D=3D -ENODEV) {
	/* no vbus regulator is needed */
	platdata->reg_vbus =3D NULL;
} else if (IS_ERR(platdata->reg_vbus)) {
	dev_err(dev, "Getting regulator error: %ld\n",
		PTR_ERR(platdata->reg_vbus));
	return PTR_ERR(platdata->reg_vbus);
}

...

}

So if ENODEV is returned we can assign NULL here and the coming
deep-probe v3 address the -EPROBE_DEFER failure. So I'm not sure if this
patch is correct.

Regards,
  Marco

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
