Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z5r6O-0008B1-9f
 for barebox@lists.infradead.org; Fri, 19 Jun 2015 07:52:41 +0000
References: <1434699697-26688-1-git-send-email-j.remmet@phytec.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <5583CA27.5000403@pengutronix.de>
Date: Fri, 19 Jun 2015 09:52:07 +0200
MIME-Version: 1.0
In-Reply-To: <1434699697-26688-1-git-send-email-j.remmet@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8464312400656048971=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] libdt: fix detection of eeprom devicepath
To: Jan Remmet <j.remmet@phytec.de>, u.kleine-koenig@pengutronix.de, s.hauer@pengutronix.de, Barebox List <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8464312400656048971==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="ic1Qee2I2sIIvdqNx3qgIeT3QWxmXpt4W"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--ic1Qee2I2sIIvdqNx3qgIeT3QWxmXpt4W
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hey Jan,

I think it's okay to use the barebox list for dt-utils related stuff. :)

On 06/19/2015 09:41 AM, Jan Remmet wrote:
> If nodepath can directly be translated to a device, the device can also=

> be a eeprom. Set default size to 0. The real size can be got from the
> path.
>=20
> Signed-off-by: Jan Remmet <j.remmet@phytec.de>
> ---
> I my setup I have an eeprom as backend:
>   backend =3D "/soc/aips-bus@02100000/i2c@021a0000/eeprom@50";
> barebox-state runs in a initramfs without udev daemon, but wih libudev =
and
> devtmpfs
>=20
> of_find_device_by_node_path directly found a devices and it was handled=
 as mtd
> device. I added a check for eeprom. Setting the size to 0 let barebox-s=
tate
> check the size by itself.
>=20
> At the end of of_get_devicepath there is a check for eeproms, but then
> of_parse_partition looks for a reg property which is in a casse of a i2=
c
> eeprom is the i2c address. This results in a wrong offset.

doh!

> With this patch a i2c eeprom backend works. It's not tested with a mtd =
device
> or a eeprom with a partition layout.

AFAIK on Linux partition layouts are not supported on eeprom devices, as
they are not handled by the mtd layer. I'll apply this patch and test on
my standard device, which uses a mtd device.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--ic1Qee2I2sIIvdqNx3qgIeT3QWxmXpt4W
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVg8onAAoJEP5prqPJtc/HU9oH/Ajyr7ZThI6ALVsE495zBje8
12KTsLgjx4C4QodznqUBBSIrbnP8RN+37/h1Gk4Com3DPwo2BbNJ8Rx73PwNIWuw
NsM1Wwa0T8CpP0wbbAIM2k6BKy6BC9rd48O5BhUd8qMtPKUoqwBHSGDdh45p0zML
hfEOeTjoOc/QzcU/b6VoJYHtxlctZiVm9JlrOnXhk3XMXiAx0KA8xcI3bbIHu+Kw
xCGRFgJlC6kCIX3TO4tfca8hHqUxuMBziGSIwwK5eY11o/+Ra/xSv0s+Ilj5Hkj2
TE9Lqi0Sw3hz2kF18/sBMTecBGo1sl6EFD3BGP5Gm3Pu8yI0CKmLCYULiAtzL7Y=
=+SPn
-----END PGP SIGNATURE-----

--ic1Qee2I2sIIvdqNx3qgIeT3QWxmXpt4W--


--===============8464312400656048971==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8464312400656048971==--
