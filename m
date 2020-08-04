Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2pVg-0003qU-Cc
 for barebox@lists.infradead.org; Tue, 04 Aug 2020 05:29:13 +0000
Date: Tue, 4 Aug 2020 07:29:10 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20200804052910.w6kpqnznwhpfox6m@pengutronix.de>
References: <20200723103326.23226-1-o.rempel@pengutronix.de>
 <20200723103326.23226-7-o.rempel@pengutronix.de>
 <20200803201314.GI31536@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200803201314.GI31536@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2835456732371308632=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 06/11] net: fec_imx: use of_get_mac_address() to get
 mac address out of DT
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, david@protonic.nl


--===============2835456732371308632==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qerlajhzo67ayocq"
Content-Disposition: inline


--qerlajhzo67ayocq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 03, 2020 at 10:13:14PM +0200, Sascha Hauer wrote:
> On Thu, Jul 23, 2020 at 12:33:21PM +0200, Oleksij Rempel wrote:
> > A mac address can be provided by the DT over nvmem cell. Start to use
> > of_get_mac_address() since it will be able to read nvmem cell for us.
> >=20
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  drivers/net/fec_imx.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> >=20
> > diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> > index 0c2d600d12..578a85c28b 100644
> > --- a/drivers/net/fec_imx.c
> > +++ b/drivers/net/fec_imx.c
> > @@ -628,6 +628,7 @@ static void fec_free_receive_packets(struct fec_pri=
v *fec, int count, int size)
> >  static int fec_probe_dt(struct device_d *dev, struct fec_priv *fec)
> >  {
> >  	struct device_node *mdiobus;
> > +	const char *mac_addr;
> >  	int ret;
> > =20
> >  	ret =3D of_get_phy_mode(dev->device_node);
> > @@ -640,6 +641,14 @@ static int fec_probe_dt(struct device_d *dev, stru=
ct fec_priv *fec)
> >  	if (mdiobus)
> >  		fec->miibus.dev.device_node =3D mdiobus;
> > =20
> > +	mac_addr =3D of_get_mac_address(dev->device_node);
> > +	if (IS_ERR(mac_addr))
> > +		return PTR_ERR(mac_addr);
>=20
> A MAC address *can* be provided by the DT, but it's not mandatory, no?
> Shouldn't you return successfully here when no MAC adress is found?

ok, fixed.

Regards,
Oleksij
--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--qerlajhzo67ayocq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl8o8iAACgkQ4omh9DUa
UbNLAQ/+JDEyKed/o8Bc10EIK0XuNarGlDX/TA+pABMBvZxgGujgOhXAsTyxdWVl
DgmvrY6zhe9Q4kYugMhgS8PXhsW1/7aFfTHg0ZtKtxnRI0AWFtyb2ZfXuC38A5l2
pUr1kJWOxPKcW8zKIcs8TQ9ZzOjO1AqfZpR+vJp9xjUMA8hBZL2No6Df+mR8WxU3
tZUf2c5JWaxvVl56dZPlk8UPYZpOvYal3UKZdC1G2h27iYDZz26s82J0ZsTEYpFB
UQOEeA4pI4uNMCI+fdSmDWWAC3v2+2itzgb+3Dlsc7mp5/yfyQVE7BJZD0rXuUuU
3AZ/3zDkCqf0qTApPAa6ftZuEgbtJ55WnrIxKKnDCgVtG0pwC9OeGXhbBzH8A4Y4
wOe/ub0caTyBrsD2JXxHcg2wf2kBqfexiGRyrFMtUY4Egua3GKN9MegFeqCAWcXR
7XJZzyjgZlxD5/MIVQko5lB0pArlyEAwohtHyBI8MpIE0WKA/DS2rOzKdy/r/U/x
viV9EUNeiJ//i383pax3NWWppLQZIbA0/sovzBzN9DEhd5i37CpzKN3/mFfYwPUc
BAllk2ZCxDR2nVdy8DPaERhcInlUutKicEi/0dBI8FJMlLJ0tjP/tqZrSYkSWxDX
+fCSImixe5xm5FYnPW2kV4w7DgXyJO2EDnuqGFiKlq4HMYVDJcI=
=fgxG
-----END PGP SIGNATURE-----

--qerlajhzo67ayocq--


--===============2835456732371308632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2835456732371308632==--
