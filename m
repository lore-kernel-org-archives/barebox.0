Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5sRu-0000Jg-FF
 for barebox@lists.infradead.org; Wed, 12 Aug 2020 15:13:55 +0000
Date: Wed, 12 Aug 2020 17:13:51 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20200812151351.rvhjjymyzaezz7kd@pengutronix.de>
References: <20200812085552.12688-1-o.rempel@pengutronix.de>
 <96efaeac-1ad4-b869-7ebf-c43a67d2358d@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <96efaeac-1ad4-b869-7ebf-c43a67d2358d@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5118419154294431854=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH fixup v1] of: base: register DT root as device
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============5118419154294431854==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2bxpthfc3sf2qc7d"
Content-Disposition: inline


--2bxpthfc3sf2qc7d
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 12, 2020 at 02:40:05PM +0200, Ahmad Fatoum wrote:
> Hello,
>=20
> On 8/12/20 10:55 AM, Oleksij Rempel wrote:
> > A usual board file contains at least one of_machine_is_compatible().
> > Some of the have a rather long list with complicated version logic.
> >=20
> > To avoid own implementation for driver management, register the root no=
de
> > of device tree as platform device. So, the main platform bus can attach
> > proper board driver. After this patch a typical board.c file can reuse
> > existing driver infrastructure.
> >=20
> > After this patch, you will be able to see all registered board drivers
> > with drvinfo as fallow:
> > ...
> > board-embest-riot
> > board-protonic-imx6
> >     dt-root.of
> > ...
> >=20
> > With devinfo, you'll be able to get some board specific information,
> > if this is implemented:
> > barebox@Protonic PRTI6Q board:/ devinfo dt-root.of
> > Driver: board-protonic-imx6
> > Bus: platform
> > Parameters:
> >   boardid: 0 (type: uint32)
> >   boardrev: 1 (type: uint32)
> >=20
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  drivers/of/base.c     | 2 ++
> >  drivers/of/platform.c | 5 +++++
> >  2 files changed, 7 insertions(+)
> >=20
> > diff --git a/drivers/of/base.c b/drivers/of/base.c
> > index 4c633bcd49..6f6cdc9379 100644
> > --- a/drivers/of/base.c
> > +++ b/drivers/of/base.c
> > @@ -2149,6 +2149,8 @@ int of_probe(void)
> >  	if (firmware)
> >  		of_platform_populate(firmware, NULL, NULL);
> > =20
> > +	of_platform_device_create(root_node, NULL);
> > +
> >  	of_clk_init(root_node, NULL);
> >  	of_platform_populate(root_node, of_default_bus_match_table, NULL);
> > =20
> > diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> > index ca84cede23..767beebe06 100644
> > --- a/drivers/of/platform.c
> > +++ b/drivers/of/platform.c
> > @@ -50,6 +50,11 @@ static void of_device_make_bus_id(struct device_d *d=
ev)
> >  	const __be32 *reg;
> >  	u64 addr;
> > =20
> > +	if (!node->parent) {
> > +		dev_set_name(dev, "dt-root.of");
>=20
> Couldn't we drop the dt-? just let it be root.of.
> dashes make use of device parameters less convenient should we
> want to use those in future IIRC.

dt is used to make clear: it is root of dt and not some random root of
what ever.

> > +		return;
> > +	}
>=20
> of_platform_device_create does:
>=20
> [-] check if device is available: not applicable to root node
> [-] populate io resources: not applicable to root node
> [-] use of_device_make_bus_id to get a name: not applicable to root node =
(prior to this patch)
> [-] configure dma: not applicable to root node
> [x] call platform_device_register

You make this assumption, just because this node has no parents?
Does it means, a parent less child may have no resources to do some work?
You should be ashamed of yourself! :D

But really, what prevents you to assign board specific resource to a
root node. It is just node as many others.

Regards,
Oleksij
--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--2bxpthfc3sf2qc7d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl80ByoACgkQ4omh9DUa
UbPodg/9GIugCwXwHuc5bww3RIC6YNihOuaQMjhmIPhytWEQ89vRCdiyXp1DeG2z
4MX1u/b5fwqy3jKUAZVtwOXWJD9nnZpoTmccc3COXrVGODRMQYQqnk34LH46gocK
zKreY5uOHlC7VeabqToVPnTCVpR+TfhgD/8h2TaOEFe17aEkFrR5fvBW/Ja3EvWV
P3fmFi32qINS8SWG83jDITIPBLl4khhiFWQ2qKzL375v8wuZq/RxCg9aOe2qelxv
XMT0fslHAnpUc6vdRyXrwzUjz+jA60AsQe1SkToTsxhpVSemfIdhqKuaYwpSKw90
jDSXYXmCBTZmIpRAM53SCL1AeXDRiWWit3b2BeC9PbfIk2X3nX538NP7k0sc2O3n
cBBNSyHlQtiH4cQpKC8/gtwTrVjOM2mFg4Ws+wSmAaNO6dFYMWVtn5JsWBO1a+eS
mRMmVi9jocJxnVhlfJu4mygH7xYjB88yc2UQF2/Mzgms75mrO41wUsbt8WZeyLx2
9PRb8YLk8D0gi1EuITxOfjwLklOeME34rc8YQb/u8ikGKvwSpUno3El/DQ8LZnYQ
hsODvaqBswhfWjKh/dhoNGOa5z+7X8Sn/JCeslYwhWjT1P8pbFoZ6pM+IJcd/8rP
yS5M+nijvN/i/f01ZYmDHe9smTXyCktVfb6LNOy5WGAZ5yAPQac=
=cmFe
-----END PGP SIGNATURE-----

--2bxpthfc3sf2qc7d--


--===============5118419154294431854==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5118419154294431854==--
