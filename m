Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVyUk-0007Q6-11
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 09:34:02 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Wed, 17 Feb 2016 10:33:27 +0100
Message-ID: <5075955.k1mrtVP51b@adelgunde>
In-Reply-To: <20160217072914.GM19372@pengutronix.de>
References: <1455648888-20678-1-git-send-email-mpa@pengutronix.de>
 <1455648888-20678-3-git-send-email-mpa@pengutronix.de>
 <20160217072914.GM19372@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6855889193352875042=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/4] fastboot: Fix usage of ubiformat for UBI image
 transfers
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============6855889193352875042==
Content-Type: multipart/signed; boundary="nextPart2246815.y7rkjad6SX"; micalg="pgp-sha256"; protocol="application/pgp-signature"


--nextPart2246815.y7rkjad6SX
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"

Hi,

On Wednesday, February 17, 2016 08:29:14 AM Sascha Hauer wrote:
> On Tue, Feb 16, 2016 at 07:54:47PM +0100, Markus Pargmann wrote:
> > Currently all fastboot flash commands with UBI images are handled b=
y a
> > final call to 'ubiformat'. This only makes sense for flash commands=

> > where the target file is a mtd device. If we just want to transfer =
a UBI
> > image we would expect a simple copy to the correct location.
> >=20
> > This patch checks if the destination file is a MTD device by openin=
g it
> > and calling an ioctl MEMGETINFO. Only for MTD devices, ubiformat is=

> > called.
> >=20
> > Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> > ---
> >  drivers/usb/gadget/f_fastboot.c | 17 ++++++++++++++++-
> >  1 file changed, 16 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f=
_fastboot.c
> > index bf28f7c22aaa..192c0d6eb7f4 100644
> > --- a/drivers/usb/gadget/f_fastboot.c
> > +++ b/drivers/usb/gadget/f_fastboot.c
> > @@ -686,7 +686,21 @@ static void cb_flash(struct usb_ep *ep, struct=
 usb_request *req, const char *cmd
> >  =09}
> > =20
> >  =09if (filetype =3D=3D filetype_ubi) {
> > -=09=09char *cmd =3D asprintf("ubiformat -y -f %s %s", FASTBOOT_TMP=
FILE, filename);
> > +=09=09char *cmd;
> > +=09=09int fd;
> > +=09=09struct mtd_info_user meminfo;
> > +
> > +=09=09fd =3D open(filename, O_RDONLY);
> > +=09=09if (!fd)
> > +=09=09=09goto copy;
>=20
> 0 is a valid file descriptor, though one that will never be returned =
by
> open(). You want to check for fd < 0 here.

Right, thanks, will fix that.

>=20
> > +
> > +=09=09ret =3D ioctl(fd, MEMGETINFO, &meminfo);
> > +=09=09close(fd);
> > +=09=09/* Not a MTD device, ubiformat is not a valid operation */
> > +=09=09if (ret)
> > +=09=09=09goto copy;
> > +
> > +=09=09cmd =3D asprintf("ubiformat -y -f %s %s", FASTBOOT_TMPFILE, =
filename);
>=20
> Hm, ubiformat should get a C api.

Yes, probably.

Best Regards,

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

--nextPart2246815.y7rkjad6SX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWxD5zAAoJEEpcgKtcEGQQwNwP/1LdijwPnk9EM79dweNDRbez
jZCL4jlaiRIo7Jizi7TohfCTqOG6dbKs/fsUldXWMHn9u6E3HJBKUK+5FPAcvyjD
RKuPF01RQFxjPqT2tJx8lv4soiySnU56n6/fStZi4bb848essrHEUqB6gmPqr8e7
DtPHen2a90Fq5WEVyVLi/WK1gTm6mM+NWicqETdOW12tgUicDMpnSL2TOBXdg4Pi
1nD4R6KmxFXk353/vW8p0BNS1dny4Zd9/98kVQWFeIV7R7L3vgYn0ododY+kG62Q
zygpPk/gr6BISvA8jmETbVLUoLBpQjPyy5oTNlJHYTl8j6c6j+qWC0rzkERTMqC6
Tpk1ojsla9/K3PyOP0EwcVa+wSlpN6oGkuj9PiA5sl2iuK3zT/VXL2MOwSCAgQC7
q2/7uyfoWqm/j1V89Im8WC37sz7tatCkkORHlOwGlFHGb/K57w3zl5uW0XxRMCP4
a32hiom/XPZDnB1x3vjZgzIGEYpM3mClrwWVy4ISeJc6c1jTw8RoYgklunRfrs5G
lcs4P11LAzOGR7weGevro9Lp51xf6YVymLHBCD0s6klwJGPeDGpWjY0IDitmmcaZ
pwzxEsSSCB6gimNShDf6/arj12IrIMA8xgl1BjAF4AyeSnc78a9lDYly9cHry+GJ
IoyqJrgNwqzSSAY49e7c
=Qx8D
-----END PGP SIGNATURE-----

--nextPart2246815.y7rkjad6SX--



--===============6855889193352875042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6855889193352875042==--
