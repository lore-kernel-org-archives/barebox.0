Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFa5M-0000ci-1e
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 08:34:21 +0000
Date: Wed, 2 Oct 2019 10:34:08 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20191002083408.mfs3bady4d5r7hlg@pengutronix.de>
References: <20190911145328.3246-1-m.felsch@pengutronix.de>
 <20191002072043.ujput2lroimm3yx6@pengutronix.de>
 <20191002072310.36lu4bxnao3eaulk@pengutronix.de>
 <bb944030-e292-151b-26df-c548e7b502d8@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bb944030-e292-151b-26df-c548e7b502d8@phytec.de>
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
Subject: Re: [PATCH] ARM: i.MX: phytec-som-imx6: phycore: fix updating pmic
 regulators
To: Stefan =?iso-8859-1?Q?Riedm=FCller?= <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org, s.christ@phytec.de, j.remmet@phytec.de

Hi Stefan,

On 19-10-02 09:34, Stefan Riedm=FCller wrote:
> Hi Marco, Sascha,
> On 02.10.19 09:23, Sascha Hauer wrote:
> > Marco,
> > =

> > On Wed, Oct 02, 2019 at 09:20:43AM +0200, Sascha Hauer wrote:
> > > +Cc Christian Hemp who is the author of b6bebb7aca
> > > =

> > > On Wed, Sep 11, 2019 at 04:53:28PM +0200, Marco Felsch wrote:
> > > > The PMIC is connected to i2c3 and not i2c1.
> > > > =

> > > > Fixes: b6bebb7aca ("ARM: i.MX: phytec-som-imx6: phycore: Set BUCK m=
ode to SYNC")
> > > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > > ---
> > > >   arch/arm/boards/phytec-som-imx6/board.c | 2 +-
> > > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > > =

> > > > diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boa=
rds/phytec-som-imx6/board.c
> > > > index 730115702b..38e5ede91a 100644
> > > > --- a/arch/arm/boards/phytec-som-imx6/board.c
> > > > +++ b/arch/arm/boards/phytec-som-imx6/board.c
> > > > @@ -117,7 +117,7 @@ static int phycore_da9062_setup_buck_mode(void)
> > > >   	struct i2c_adapter *adapter =3D NULL;
> > > >   	struct i2c_client client;
> > > >   	unsigned char value;
> > > > -	int bus =3D 0;
> > > > +	int bus =3D 2;
> > > >   	int ret;
> > > >   	adapter =3D i2c_get_adapter(bus);
> > =

> > You could test it directly on b6bebb7aca instead of master. Is this
> > change necessary there aswell or has the bus numbering changed in
> > between?
> =

> this bus numbering changed with Marco's patch to use the upstream device =
tree.
> =

> ARM: dts: imx6: phycore: make use of upstream dts
> =

> The phyCORE-i.MX 6 uses just one i2c interface but on the phyBOARD-Mira t=
wo
> more i2c interfaces are used.

Or if another baseboard uses the SoM and a Baseboard with more i2c interfac=
es.
After talking with Sascha we should fix this by using
of_find_i2c_adapter_by_node(). So it is fixed in my case and in your
case too. Are you agree?

Regards,
  Marco

> =

> Stefan
> =

> > =

> > Sascha
> > =

> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
