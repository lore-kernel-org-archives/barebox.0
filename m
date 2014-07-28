Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XBrwc-0003Iy-18
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 20:54:54 +0000
Date: Mon, 28 Jul 2014 22:54:31 +0200
From: Markus Pargmann <mpa@pengutronix.de>
Message-ID: <20140728205431.GB13842@pengutronix.de>
References: <1406578981-3761-1-git-send-email-mpa@pengutronix.de>
 <53D6B685.9000806@gmail.com>
MIME-Version: 1.0
In-Reply-To: <53D6B685.9000806@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7135936338502314519=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] usb: chipidea: Add DT vbus-supply parsing
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org


--===============7135936338502314519==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="raC6veAxrt5nqIoY"
Content-Disposition: inline


--raC6veAxrt5nqIoY
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 28, 2014 at 10:45:57PM +0200, Sebastian Hesselbarth wrote:
> On 07/28/2014 10:23 PM, Markus Pargmann wrote:
> > Add some code to parse and enable vbus supply when probing.
> >=20
> > Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> > ---
> >  drivers/usb/imx/chipidea-imx.c | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >=20
> > diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-=
imx.c
> > index 9b6829b8f59f..a4cf4a1a5f3d 100644
> > --- a/drivers/usb/imx/chipidea-imx.c
> > +++ b/drivers/usb/imx/chipidea-imx.c
> > @@ -15,6 +15,7 @@
> >  #include <common.h>
> >  #include <init.h>
> >  #include <io.h>
> > +#include <linux/err.h>
> >  #include <of.h>
> >  #include <errno.h>
> >  #include <driver.h>
> > @@ -23,6 +24,7 @@
> >  #include <usb/chipidea-imx.h>
> >  #include <usb/ulpi.h>
> >  #include <usb/fsl_usb2.h>
> > +#include <regulator.h>
> > =20
> >  #define MXC_EHCI_PORTSC_MASK ((0xf << 28) | (1 << 25))
> > =20
> > @@ -187,6 +189,16 @@ static int imx_chipidea_probe(struct device_d *dev)
> >  		ret =3D -ENODEV;
> >  	}
> > =20
> > +	if (ci->mode =3D=3D IMX_USB_MODE_HOST) {
> > +		struct regulator *vbus =3D regulator_get(dev, "vbus");
> > +		if (!IS_ERR(vbus)) {
> > +			regulator_enable(vbus);
> > +		} else {
> > +			dev_err(dev, "Failed to get vbus regulator %ld\n", PTR_ERR(vbus));
> > +			ret =3D PTR_ERR(vbus);
> > +		}
>=20
> regulator_get should return a NULL pointer if there is no regulator for
> "vbus". The NULL regulator is a valid (dummy) regulator that can be used
> as if there was a real one.
>=20
> That basically means, you should check for an error and always use
> regulator_enable otherwise:
>=20
> struct regulator *vbus =3D regulator_get(dev, "vbus");
> if (IS_ERR(vbus)) {
> 	dev_err(dev, "Failed to get vbus regulator %ld\n", PTR_ERR(vbus));
> 	return PTR_ERR(vbus);
> }
>=20
> regulator_enable(vbus);

Thanks, will change that.

>=20
> But even more important: You should also check for a regulator on
> peripheral/otg mode. That's the cases where you can actually break
> things when you don't disable the regulator.

Oh right, I didn't thought about that. I will change the code so that it
is either enabled or disabled, depending on the mode.

Thanks,

Markus

--=20
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--raC6veAxrt5nqIoY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBAgAGBQJT1riHAAoJEEpcgKtcEGQQCKYQAIAxxrBiekM0ab2RsscDmf/5
Bbk3eDvERZG5w4VD4yylJ/MGWirGq5uaMVonBTzw6xd1CFIXRlVQwrRiiUYrN0x1
mNMgokUuQXGyp7sjXehKyNpfMXv+w/MTobcAKh6jADkGZyAImkXuA6WmqhMw0gRx
yOrlUy1SjuYp5kyT3oPV/1OYIKWdn144v+qN/Bnd38JXtDYbOrMtiIcX7mvQ6O3T
K/NjZKMG/GH8j5kdhXejveVYnYPd6H/Q9/GZpZtjVZzX1yQV5ILnwy2itmZHD60d
7D6FC/w179FcSgH9CE8FfzGJ//QlA5PDX0MhElqD0X+SCqHx7u+FcsKbiFMprKII
S/nUkKrHsEupONacZXaYjawkoNvyIluL0zqUypowoE4BQxzLS9hbOVOvCwD62moE
Uz2mWf4gg3gbNPgJ+t0P6ZGg4w+j1N8WCp8YokIN96x+AAsYX61NYw7zf6/K4GTs
R9yvtRneSqOKJs58luyB0LVz4AwPyRfVHF0vxZUB08qTLefPo0hFcNu+XxXvpdws
za/iXHY/tlcyvgF72VfSsaIeGUq7DRg+gWxu5z1+m0NcTI4Jpmo35tZYDVnWTvo0
VXPMyKsbHcePHt4eWqH6nI+gLpClQpyTq7ozknStLlYyLA0/doTin9nR/fqJZqp3
GM9Qym1v5HAehJHCS+g3
=kobW
-----END PGP SIGNATURE-----

--raC6veAxrt5nqIoY--


--===============7135936338502314519==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7135936338502314519==--
