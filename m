Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2poN-0005vF-EA
 for barebox@lists.infradead.org; Tue, 04 Aug 2020 05:48:32 +0000
Date: Tue, 4 Aug 2020 07:48:29 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20200804054829.44eqvc47p5q67jam@pengutronix.de>
References: <20200723103326.23226-1-o.rempel@pengutronix.de>
 <20200723103326.23226-12-o.rempel@pengutronix.de>
 <20200803211259.GL31536@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200803211259.GL31536@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5128347324770833579=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 11/11] ARM: dts: imx6q-prti6q: add barebox.serial node
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, david@protonic.nl


--===============5128347324770833579==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="noxgm4pxly2rqgjf"
Content-Disposition: inline


--noxgm4pxly2rqgjf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 03, 2020 at 11:12:59PM +0200, Sascha Hauer wrote:
> On Thu, Jul 23, 2020 at 12:33:26PM +0200, Oleksij Rempel wrote:
> > Add serial node provider
> >=20
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  arch/arm/dts/imx6q-prti6q.dts | 5 +++++
> >  1 file changed, 5 insertions(+)
> >=20
> > diff --git a/arch/arm/dts/imx6q-prti6q.dts b/arch/arm/dts/imx6q-prti6q.=
dts
> > index 76bb4d53d3..67e7f63979 100644
> > --- a/arch/arm/dts/imx6q-prti6q.dts
> > +++ b/arch/arm/dts/imx6q-prti6q.dts
> > @@ -18,6 +18,11 @@
> >  			compatible =3D "barebox,environment";
> >  			device-path =3D &ecspi1, "partname:env";
> >  		};
> > +		serial {
> > +			compatible =3D "barebox,serial";
> > +			nvmem-cell-names =3D "serial-number";
> > +			/* nvmem-cells will added board code */
>=20
> You probably mean "nvmem-cells will be added by board code".
>=20
> You need board code to fully describe the device which triggers a
> freshly written driver which puts the found serial number as
> /serial-number into dt. Is this really worth it? I'd just read the
> serial number in board code and put it into dt, maybe add some helper
> function to set the right property from a given string.

If eeprom should only be used to read serial-number - yes. But this
RFID-eeprom provides more space and functionality. Why not make it
available for barebox and linux to be able to do more things with it?

> BTW you seem to be lucky that the i2c eeprom driver probes before the
> barebox,serial driver, otherwise I think this doesn't work.

We would have the same issue with the board code. It seems to work just for
this particular barebox version and i2c controller was accidentally probed
before board code.

I think it is time to talk about deferred probe patches made by Lucas ;)

Regards,
Oleksij
--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--noxgm4pxly2rqgjf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl8o9qkACgkQ4omh9DUa
UbPMJg//Ugv/SVgaV41VWUoHCFM2qg+Kq1m6mwZ4EBTfFrG50U3TivN0gGx1tyZi
wrj4WKn3/k4wJLQyNpNtnH18iHlycz3LzwSbbOXH5cI+8Cdcr1MJlb3Qr1mA3+0X
n1jrtcMhMHoA6WZhWfWj5bebK36/CvDEKFi3f8AdBbIh1wE7xDsq3EhJkGUaxodP
A/2rXBAWz8bjz+09SlDNRvyHEX/6htDWIxwCiChoKD63nXhxIDJ97MVbRKdb8Sug
Wfx5ZNv/E/RtXuET1BuuTcu56FcDxap8Mey7d6CPm0h2OwtAGbdeihVsWxqpWL+/
jKkohHGinjRLRXoo9DAaFzz1jqu9R+OkwzUj9WBjbB0Nz6wP7c6KcGso1v/DOP9s
nCVxEmS+LjSidmyn/ho33EVMBECYXl3gHGN5kxIhrnH4wWz9cTmMzebB+kM80Bbw
Z5oXaoRYw1EgWO1MVtAgi5Ao6BdFEl6FZF/LUyqKy2v/eVdwBPsigkWI0pkXVYVb
L8WnzebBDXbM806mgfgAiPkqCrVNcOpEv3FtyVgMtoH1njuH5QvxqPCrcSst7q2n
ts4wGcXb/m831PwXUilSjOx6opLZF1z7FHEmfJ2D4nXEKqJbg3Sstn7OQlEh93JD
YKqkkxOg8d6MVlIfyipnJppVqwiI6ImiEiyf7o+/KwLokC2uXU0=
=dmxl
-----END PGP SIGNATURE-----

--noxgm4pxly2rqgjf--


--===============5128347324770833579==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5128347324770833579==--
