Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5tLK-0006yx-JR
 for barebox@lists.infradead.org; Wed, 12 Aug 2020 16:11:11 +0000
Date: Wed, 12 Aug 2020 18:11:09 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20200812161109.66jgmksevsru3w5c@pengutronix.de>
References: <20200812085552.12688-1-o.rempel@pengutronix.de>
 <96efaeac-1ad4-b869-7ebf-c43a67d2358d@pengutronix.de>
 <20200812151351.rvhjjymyzaezz7kd@pengutronix.de>
 <b2c40e80-946d-ede0-97b2-b0a1d4dccace@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <b2c40e80-946d-ede0-97b2-b0a1d4dccace@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1489075462370796304=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH fixup v1] of: base: register DT root as device
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============1489075462370796304==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ceg7ktnctptfj53y"
Content-Disposition: inline


--ceg7ktnctptfj53y
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 12, 2020 at 05:37:33PM +0200, Ahmad Fatoum wrote:
> Hello,
>=20
> On 8/12/20 5:13 PM, Oleksij Rempel wrote:
> >>> +		dev_set_name(dev, "dt-root.of");
> >>
> >> Couldn't we drop the dt-? just let it be root.of.
> >> dashes make use of device parameters less convenient should we
> >> want to use those in future IIRC.
> >=20
> > dt is used to make clear: it is root of dt and not some random root of
> > what ever.
>=20
> It's redundant, there is already a .of suffix.
> I like machine.of more though.
>=20
> >> of_platform_device_create does:
> >>
> >> [-] check if device is available: not applicable to root node
> >> [-] populate io resources: not applicable to root node
> >> [-] use of_device_make_bus_id to get a name: not applicable to root no=
de (prior to this patch)
> >> [-] configure dma: not applicable to root node
> >> [x] call platform_device_register
> >=20
> > You make this assumption, just because this node has no parents?
> > Does it means, a parent less child may have no resources to do some wor=
k?
> > You should be ashamed of yourself! :D
> >=20
> > But really, what prevents you to assign board specific resource to a
> > root node. It is just node as many others.
>=20
> It makes no sense for the root node to have resources.
> What is a machine-wide interrupt? Or a machine-wide MMIO region?
> What size would that region even have, when you have no parent
> bus that defines address/size cells?

yes, you are right.

> Do you have any examples of oftree resources for the root node?

Do you have any example of the root node used as device?

> I'd rather not litter core code with an if-clause that evaluates to
> true only once,

How many ifs are added in this patch and how many ifs will by added by
your suggestion?=20

> to support your (IMHO wrong)  use of a helper.

Interesting change of conversation. Please stay technical.

> of_device_make_bus_id is taken from Linux and does per comment:
>=20
> This routine will first try using the translated bus address to
> derive a unique name. If it cannot, then it will prepend names from
> parent nodes until a unique name can be derived.
>=20
> IMO, it should stay that way.

Ok, i'll send a patch to rename of_device_make_bus_id to of_device_make_id.
In this case it will reflect new reality and keep the code readable.

If you have arguments in following topics:
- it will significantly affect performance
- it will affect size of executable
- it will affect maintainability

Please use them

Regards,
Oleksij
--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--ceg7ktnctptfj53y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl80FI8ACgkQ4omh9DUa
UbNwNg/+JmPgKJKclvD2zvEN9qeYCl9a+UcfoIbabphqY9peqN47sOXwB3gvFMu7
++ABoxbDUitbU5+0wLNvxDl0B/5vCFoLK1nrwoalC+yLRLur2UMXMA0jUvoVBwcu
Z202FpDysQYjOQcL3TdPa3+8oaaoCq33DQepTPsQ1d8UEA14YrxqnNNIGaMZjvoY
SEG6hdd24c2iHwxz9v4/0fPMRb38kgd2M/0KBoj1RXQ9atB62y6Le6lOBGl8dPG6
kvIDbyplYpFilAhtRYerHWkDnVcOadAh49aCnqz+jbtImkkI6J1e8OcdL/HZ6MXf
Ar9giXCI1gVBUzLAYmzgg7y0wt5RFK9cea2bbEKHUOHjulR8XHZZMbskj0g3QVng
DFPFvSzMKegFHVN+UB6C4VUj4JNLUCCXneD60VFxCvIO+WmXlkvKbAefONq1X/4a
5esBGFvQteLSXQHr8gc3grFs3wlrAtCrgq/pZlQ2eMcvlFwmWqLIuDSWO9LQFwC5
/GLAbw8+98t4jPvRqrTb2bTzJ8aEULMnVLWXPpht2Rq0tiawj1aSCLI35d+eYp3O
kfxdHAsCDWOQigr5brMGgwSCFH6zv3o8iAktdQTluEEtjFF5eWitiXXwhQqZPbEo
mPsWkJcKDArtiHSEKOrv+gLYNfx8ePloBsLtMzveRIjTFfw8XFo=
=U4Ob
-----END PGP SIGNATURE-----

--ceg7ktnctptfj53y--


--===============1489075462370796304==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1489075462370796304==--
