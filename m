Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1flYLc-0006Og-Tl
 for barebox@lists.infradead.org; Fri, 03 Aug 2018 11:34:23 +0000
References: <F272D9410BD38E429D604B94748C61547AB08E80@WIEMS02101.ceu.corp.heidelberg.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <a3bd0a48-665c-f654-0434-ca73cec7ca98@rempel-privat.de>
Date: Fri, 3 Aug 2018 13:34:06 +0200
MIME-Version: 1.0
In-Reply-To: <F272D9410BD38E429D604B94748C61547AB08E80@WIEMS02101.ceu.corp.heidelberg.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1993261125797357720=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: PATCH added tftp port to fsoptions
To: "Toews, Dietrich" <Dietrich.Toews@heidelberg.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1993261125797357720==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="IHnrP1D6Ks1So76B4WvWijvxkkLqNALfh"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--IHnrP1D6Ks1So76B4WvWijvxkkLqNALfh
Content-Type: multipart/mixed; boundary="fThkRND4lTqFWpQapsGsvVgWJcVcbB4rj";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: "Toews, Dietrich" <Dietrich.Toews@heidelberg.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <a3bd0a48-665c-f654-0434-ca73cec7ca98@rempel-privat.de>
Subject: Re: PATCH added tftp port to fsoptions
References: <F272D9410BD38E429D604B94748C61547AB08E80@WIEMS02101.ceu.corp.heidelberg.com>
In-Reply-To: <F272D9410BD38E429D604B94748C61547AB08E80@WIEMS02101.ceu.corp.heidelberg.com>

--fThkRND4lTqFWpQapsGsvVgWJcVcbB4rj
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Hi,

Am 03.08.2018 um 13:07 schrieb Toews, Dietrich:
> Hi all,
>=20
> we are using barebox for a while now, but we need different tftp-server=
 with different ports.
> Here a proposition for a patch, if someone else needs it also.
>=20
> Usage: tftp -o port=3D1234 ....

Good point. I assume, barebox way, would be to make it:
global.net.tftp_port
nv.net.tftp_port
nv.dev.<devname>.tftp_port

> Sincirely
> Dietrich
>=20
>=20
> From 062a4c8148c2d31c7ce1d405632051b297b64ce0 Mon Sep 17 00:00:00 2001
> From: Dietrich Toews <dietrich.toews@heidelberg.com>
> Date: Fri, 3 Aug 2018 12:55:53 +0200
> Subject: [PATCH] Added tftp port to fsoptions
>=20
> ---
>  fs/tftp.c | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
>=20
> diff --git a/fs/tftp.c b/fs/tftp.c
> index 847921a..13efa20 100644
> --- a/fs/tftp.c
> +++ b/fs/tftp.c
> @@ -87,6 +87,7 @@ struct file_priv {
>=20
>  struct tftp_priv {
>         IPaddr_t server;
> +       uint16_t port;
>  };
>=20
>  static int tftp_create(struct device_d *dev, const char *pathname, mod=
e_t mode)
> @@ -423,7 +424,7 @@ static struct file_priv *tftp_do_open(struct device=
_d *dev,
>                 goto out;
>         }
>=20
> -       priv->tftp_con =3D net_udp_new(tpriv->server, TFTP_PORT, tftp_h=
andler,
> +       priv->tftp_con =3D net_udp_new(tpriv->server, tpriv->port, tftp=
_handler,
>                         priv);
>         if (IS_ERR(priv->tftp_con)) {
>                 ret =3D PTR_ERR(priv->tftp_con);
> @@ -651,7 +652,22 @@ static int tftp_probe(struct device_d *dev)
>         dev->priv =3D priv;
>=20
>         priv->server =3D resolv(fsdev->backingstore);
> -
> +       priv->port   =3D TFTP_PORT;
> +       if( fsdev->options ) {
> +               // ToDo: if needed check other options.
> +               //       Assumption here: the only option used is 'port=
=3Dnxxxx'
> +               if( strncmp( fsdev->options, "port=3D", 5 ) =3D=3D 0 ) =
{
> +                       uint16_t p =3D 0;
> +                       for( uint8_t i=3D5; i<10; i++ ) {
> +                               // portnumber can only contain ascii ch=
ars 0..9
> +                               if( (fsdev->options[i] >=3D 48) && (fsd=
ev->options[i] < 58) )
> +                                       p =3D (p * 10) + (fsdev->option=
s[i] - 48);
> +                               else
> +                                       break;  // break on first char =
that is not a number
> +                       }
> +                       if( p > 0 ) priv->port =3D p;
> +               }
> +       }
>         return 0;
>  }
>=20
> --
> 1.9.1
>=20
>=20
> ________________________________
>=20
> Confidentiality note:
> The information in this email and any attachment may contain confidenti=
al and proprietary information of Heidelberger Druckmaschinen AG and/or i=
ts affiliates and may be privileged or otherwise protected from disclosur=
e. If you are not the intended recipient, you are hereby notified that an=
y review, reliance or distribution by others or forwarding without expres=
s permission is strictly prohibited and may cause liability. In case you =
have received this message due to an error in transmission, we kindly ask=
 you to notify the sender immediately and to delete this email and any at=
tachment from your system.
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>=20


--=20
Regards,
Oleksij


--fThkRND4lTqFWpQapsGsvVgWJcVcbB4rj--

--IHnrP1D6Ks1So76B4WvWijvxkkLqNALfh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQRXepfNdOKCSzfa+2sfAia5GSZtaQUCW2Q9rwAKCRAfAia5GSZt
aQXoAP9+TmtDVlHReBVtHCFXqgfMgtDXd0U2uwbjcAeLLboIxAD9FIyTQIh/7PxU
nl1bO/zvXNe1ClmpJTZBk/hhXlS92vc=
=W1K0
-----END PGP SIGNATURE-----

--IHnrP1D6Ks1So76B4WvWijvxkkLqNALfh--


--===============1993261125797357720==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1993261125797357720==--
