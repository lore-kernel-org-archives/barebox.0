Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVywI-0000Dj-Ac
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 10:02:34 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Wed, 17 Feb 2016 11:02:08 +0100
Message-ID: <2479509.VfU6t0ZqeI@adelgunde>
In-Reply-To: <20160217073749.GN19372@pengutronix.de>
References: <1455648888-20678-1-git-send-email-mpa@pengutronix.de>
 <1455648888-20678-4-git-send-email-mpa@pengutronix.de>
 <20160217073749.GN19372@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6815226318927282531=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/4] fastboot: Add a ARM Barebox filetype handler
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============6815226318927282531==
Content-Type: multipart/signed; boundary="nextPart2425959.TD1FhfIhv8"; micalg="pgp-sha256"; protocol="application/pgp-signature"


--nextPart2425959.TD1FhfIhv8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"

On Wednesday, February 17, 2016 08:37:49 AM Sascha Hauer wrote:
> On Tue, Feb 16, 2016 at 07:54:48PM +0100, Markus Pargmann wrote:
> > This will automatically call barebox_update for the transfered file=
 if
> > it is an ARM Barebox image and the destination file is defined by s=
ome
> > update handler.
> >=20
> > Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> > ---
> >  drivers/usb/gadget/f_fastboot.c | 29 +++++++++++++++++++++++++++++=

> >  1 file changed, 29 insertions(+)
> >=20
> > diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f=
_fastboot.c
> > index 192c0d6eb7f4..ae18d068e93f 100644
> > --- a/drivers/usb/gadget/f_fastboot.c
> > +++ b/drivers/usb/gadget/f_fastboot.c
> > @@ -23,6 +23,7 @@
> >  #include <clock.h>
> >  #include <ioctl.h>
> >  #include <libbb.h>
> > +#include <bbu.h>
> >  #include <boot.h>
> >  #include <dma.h>
> >  #include <fs.h>
> > @@ -716,6 +717,34 @@ static void cb_flash(struct usb_ep *ep, struct=
 usb_request *req, const char *cmd
> >  =09=09goto out;
> >  =09}
> > =20
> > +=09if (filetype =3D=3D filetype_arm_barebox) {
>=20
> There are some other barebox image types, like filetype_mips_barebox =
and
> filetype_ch_image, so maybe we should check for them aswell? But then=

> again, ...
>=20
> > +=09=09struct bbu_data data =3D {
> > +=09=09=09.devicefile =3D filename,
> > +=09=09=09.imagefile =3D FASTBOOT_TMPFILE,
> > +=09=09=09.flags =3D BBU_FLAG_YES,
> > +=09=09};
> > +
> > +=09=09if (!barebox_update_handler_exists(&data))
> > +=09=09=09goto copy;
>=20
> ... Do we need the filetype check at all? Isn't this check enough? Wi=
th
> existing update handler for a device using barebox_update is the righ=
t
> way to go, no matter what the filetype check says.

There may be someone out there who wishes to write some arbitrary data
to the same device where the bootloader is. As far as I know the barebo=
x
update handler is able to write barebox images to the given device. I
don't know what happens with data that is not a barebox image. So I
would prefer to use the filetype checks first.

>=20
> > +
> > +=09=09fastboot_tx_print(f_fb, "INFOThis is an ARM Barebox image...=
");
> > +
> > +=09=09data.image =3D read_file(data.imagefile, &data.len);
> > +=09=09if (!data.image) {
> > +=09=09=09fastboot_tx_print(f_fb, "FAILreading bareboxs");
>=20
> s/bareboxs/barebox/

Will fix.

Thanks,

Markus

=2D-=20
Pengutronix e.K.                           |                           =
  |
Industrial Linux Solutions                 | http://www.pengutronix.de/=
  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0  =
  |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |

--nextPart2425959.TD1FhfIhv8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWxEUgAAoJEEpcgKtcEGQQFh8P/0o3yJlynGSEjCKnVKZhCBAe
mHzJ1hI2krptFHNy5VOXDR20S0P3BRKbApWBBiNVLwTwxT2n3QHomLVi6KLkIOw/
sgCNVL+zXWWJmJON/AeuhulZ5rcL3bIzQ2800RZ/oIRNEPUTXTbVqKC/N8+ME01I
SGKL+ubYaRC4Tb/qyfICOZcdUK1ma8xq/g9VwQf9QjdveU0I0Ixted8hVBTs54FQ
wAGgVRtP2rq8Sy+5vocK5DLvRgYEH9GZoHhapPdcGdzkuuH7hWkU84GmAiVkAqKg
Jdsc0Ryr/Bufk91UOWdffg4wVZRWbl6jpyB/Vc63K1xOF2yADTKG7imPSRK+HVSZ
QQtYK2FAmX9iF7i1ahlHzXdt/6CKvh8z6Q6PX9QP5Txo6nFjRolFKExVkTCEilBw
j+yOkf2hM6ZdtiBSQVGygCD22Dzt03Y6v++aR1K2geZnP0Yb/9GXVmvNfbhEhySo
ge7NJeYAOalyUia67GEyAHyJkhyqB6OUBjLIe6wPsLYivX6XUnqfvJk71PjvEuv8
U356Nfbtxme6d/n93O7cjV+Bne7MbomLYc9sMLktDdUBfnWMDllx30brglpoHyCH
wwlieg+P4mf4KplJQCz43zENegRc/3YCpKHIrjviYyrnHvWqQWfpgTDqYr5YdBli
MlBAE8/N2J8Dl3ub3m/6
=9n4b
-----END PGP SIGNATURE-----

--nextPart2425959.TD1FhfIhv8--



--===============6815226318927282531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6815226318927282531==--
