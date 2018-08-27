Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuCFe-0002oy-Cy
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 07:47:56 +0000
Date: Mon, 27 Aug 2018 09:47:41 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20180827074741.rnmenb6mvjzv2qto@pengutronix.de>
References: <20180824151739.8883-1-m.grzeschik@pengutronix.de>
 <20180824170407.geeahhgkqntovpi5@pengutronix.de>
 <20180824195556.jihqkka6bj5tbqpq@pengutronix.de>
 <CAOMZO5AMUiaPyaGcfNz2NtApwgthYGSYSH0Xx94F83q1qESKxQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOMZO5AMUiaPyaGcfNz2NtApwgthYGSYSH0Xx94F83q1qESKxQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5685758926198995681=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] imx{5,6}: reset otg port after usb-serial boot
To: Fabio Estevam <festevam@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>


--===============5685758926198995681==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vd4qvul4ko3rtjey"
Content-Disposition: inline


--vd4qvul4ko3rtjey
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 24, 2018 at 05:18:02PM -0300, Fabio Estevam wrote:
> Hi Michael,
>=20
> On Fri, Aug 24, 2018 at 4:55 PM, Michael Grzeschik <mgr@pengutronix.de> w=
rote:
>=20
> > I get that it is not safe to toggle bits if the clock is not
> > there. We could check for the bootsource. Is it possible to
> > ensure that we are started by imx-usb-loader?
>=20
> It is possible to determine if we have started via USB download mode.
>=20
> Check the is_boot_from_usb() implementation in U-Boot for a reference.

Right, So it seems to be safe to reach for the phys registers on mx6.

On mx5 and similar we have a nop phy and the only way to
communicate with it is through usbmisc, which is also in the
register space that leads to a hang if one clock is missing.

I will search for another solutions on those SoCs.

mgr

--=20
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--vd4qvul4ko3rtjey
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAluDrJkACgkQC+njFXoe
LGSlyg/+KFr/D3/Jhh/8kJn81rbc0PvGSQQsFLLp30jjmI+xvlYJlu0g33539g5I
uA6Z3exXlJ9v/Nv7aPj/ypi9WC4Ivoh12JU2MZgXiOlDJUb2dooHGpos+TtAkIh1
XLGh+HqgkCEii/qrt8E3OuBxckaeEaA0I16SIhfxhQTw6qpIiHhXbRidAHGms+N7
vp1hJNg3CqusOBr7RyvPm5qonkZ8U5t2L4qlzOi2Xe4uTrRIBszZvTQuaHZyQR0A
cSFVzbC87y6Rzs7jEF0XbnKzBSA+zjZmIwaBqOKCf8N7LkYu6sJh4ETtxu+ATfK9
rKsAfrx4u5Q34P9/U0zkM7rqRDUK0t/AHAIuCq4bchX8tYDfJlHJiCtLwmOjJGrk
kLErrhdH0geMjrjpKI/FozgXaGoBi3MgD7Bgs9oXyBlTkq/eJwngKrRy1PdxhM63
PyDXKps0YwHgDRM4WFneB2wVK+nv5sRoeRK2Jyh6WIeM1Ylzx6sZurGaR0VA/pZ0
Rz3Uu1qKrE4UINxalnWP3NsciWYKRy48A1pC1Yx+GfQkOIBvn9SlkmSBOgKyl9/k
pPwG3m6jOmwSS6rDiH4rT26WpJmCYBFi+49vhsEQ7fL3nRWqoSNh3sExMOfUYRfJ
hinK54/YadUYo5w6GZU83z8lOayJX7oDLG7sG0rWBW9eevptpqY=
=Lz/Y
-----END PGP SIGNATURE-----

--vd4qvul4ko3rtjey--


--===============5685758926198995681==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5685758926198995681==--
