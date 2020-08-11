Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5Q7P-0005ga-Fg
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 08:58:52 +0000
Date: Tue, 11 Aug 2020 10:58:47 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20200811085847.ut5mfcjbt2bncsro@pengutronix.de>
References: <20200805101628.4698-1-o.rempel@pengutronix.de>
 <20200805101628.4698-13-o.rempel@pengutronix.de>
 <20200811083401.GK9475@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200811083401.GK9475@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6156488310883118754=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 12/13] of: add barebox-serial driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, david@protonic.nl


--===============6156488310883118754==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qcbfmq7ltbevcy3o"
Content-Disposition: inline


--qcbfmq7ltbevcy3o
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 11, 2020 at 10:34:01AM +0200, Sascha Hauer wrote:
> On Wed, Aug 05, 2020 at 12:16:27PM +0200, Oleksij Rempel wrote:
> > Provide a driver which should act as nvmem consumer
> > for board serial number information.
> >=20
> > To make use of this driver, DTS should contain a serial
> > node with compatibe "barebox,serial" and nvmem-cell-names
> > "serial-number":
> >=20
> > ...
> > 	chosen {
> > 		serial {
> > 			compatible =3D "barebox,serial";
> > 			nvmem-cell-names =3D "serial-number";
> > 			nvmem-cells =3D &some_provider;
> > 		};
> > 	};
>=20
> This driver only works when the EEPROM or whatever provides the NVMEM
> contains the serial number in exactly the same format as shall be added
> to the /serial-number property. This seems to be a special case only and
> doesn't seem to justify a generic driver.

As with usual devicetree based solution we can add additional
compatibles to better describe a variant or quirk which should be used
to convert raw data to the serial number in usable for environment and
device tree way. I hope, by having generic drivers other users will alight
with it by making new products or extend existing driver by mainlining
existing products.

Regards,
Oleksij
--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--qcbfmq7ltbevcy3o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl8yXcMACgkQ4omh9DUa
UbM8BA//TPPKDUl91KnWvZy9eS85J9FiblLFA2BumqLB1L0zVzL7Qu0/whOi6Irg
vy2VuPc2hf/klDzi7jA990jOkgalqox5/jGVYEy6hGqtGUHA0Ut395SuZDAfH0fx
83omw35e5umdMwd6s/TkZ7r1cGllGn6gkjX5CFPxPFjkKMXZavQR/SdYt4eyUXbk
ZeFe7AWvIHJ4m2MGhnVV9JCVM2pxON0rgO1oXfbIABh6DrUdI4cgbnUpPJGGu4Zq
UpXWHRX8qx7Ex5h6fb1VPius/DlkKXkoefKk3pve/qWWxasJ5oKb0Vtai6+prrr6
yLsPdmYRJH6UCw7B/WDAjsQOWZyrsro1+RsO7vkTEecS493ffobufgm0Ku+cM8a1
bJBlrt/BNeoj8VTV2W2Fb7nBxOHVHhOOfE+Egiwy0RUM/QT59iqIPgJtaeCzvWJs
GIRxcW/h2JfmTN8Ktr8v19dTRg5ucu6yA4PaGWRMNhkaY+67yJ6dM3tPLtD+SD23
FzuFd8y2NGX2/pGiKdgI7NeGi+erPax6apS0wxNCJu2lqULkkdP6gVPeX7zAJmB3
7/dtpphKuq9/UGdkQQCUB4AZj5YoR4VmoyxZs5NpRrYUAo6TOieHXKfvEbQWZGct
PEstiZwXwLuAg5uVzKIHma4JEoiIgIz8nbTuIFbg3+m5qFVD9cA=
=8vXA
-----END PGP SIGNATURE-----

--qcbfmq7ltbevcy3o--


--===============6156488310883118754==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6156488310883118754==--
