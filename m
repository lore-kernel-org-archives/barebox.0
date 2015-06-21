Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z6k7D-0003bA-Cg
 for barebox@lists.infradead.org; Sun, 21 Jun 2015 18:37:12 +0000
References: <1434699697-26688-1-git-send-email-j.remmet@phytec.de>
 <5583CA27.5000403@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <55870437.9000102@pengutronix.de>
Date: Sun, 21 Jun 2015 20:36:39 +0200
MIME-Version: 1.0
In-Reply-To: <5583CA27.5000403@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5347142885793452910=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] libdt: fix detection of eeprom devicepath
To: Jan Remmet <j.remmet@phytec.de>, u.kleine-koenig@pengutronix.de, s.hauer@pengutronix.de, Barebox List <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5347142885793452910==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="gvgknDIPCP4cO9R1cWSrgkq6bkhlu0CCV"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--gvgknDIPCP4cO9R1cWSrgkq6bkhlu0CCV
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 06/19/2015 09:52 AM, Marc Kleine-Budde wrote:
>> At the end of of_get_devicepath there is a check for eeproms, but then=

>> of_parse_partition looks for a reg property which is in a casse of a i=
2c
>> eeprom is the i2c address. This results in a wrong offset.
>=20
> doh!
>=20
>> With this patch a i2c eeprom backend works. It's not tested with a mtd=
 device
>> or a eeprom with a partition layout.
>=20
> AFAIK on Linux partition layouts are not supported on eeprom devices, a=
s
> they are not handled by the mtd layer. I'll apply this patch and test o=
n
> my standard device, which uses a mtd device.

applied to master.

Works here with the NAND-partition backend. However udev from
systemd-220 fails to find NAND-partition while systemd-219 works, no
matter if your patch is applied or not. Which systemd/udev version are
you using?

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--gvgknDIPCP4cO9R1cWSrgkq6bkhlu0CCV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVhwQ3AAoJEP5prqPJtc/Hb4oH/3ZQshQG9r80JhDLPWhJfPFP
QwmkyKJogYelxjnDfwPJNm2YKbY4iyWG+3ACj/I0sQjRFNBYrSDCQk/USz6AkHP3
uNfQH8f/g1DulouDD4ah6oKN+zB12vZWG69sJ42CzVVs24uAHLX/ZGp9VCX5Ecwb
iSir3wdFX6ojIgFOcUFrY/XwFxHo+22tznv8exzKyKpeLdIzpgQZF/7KkA/dhuqL
6FgnUAvJmk4CaufahssVI3SP8zUmWNa7AcD/1Kfp6tUWi5Z6DkdHKiI6ylNHb+CM
GSEcYQ2uivJ5tUs3f35l+/J+a+OvAweyiko/xj/ygDdlW6GCbLvG1YOXwkcFagQ=
=Bc1T
-----END PGP SIGNATURE-----

--gvgknDIPCP4cO9R1cWSrgkq6bkhlu0CCV--


--===============5347142885793452910==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5347142885793452910==--
