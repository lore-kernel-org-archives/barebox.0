Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZB1lp-0002Xu-Ck
 for barebox@lists.infradead.org; Fri, 03 Jul 2015 14:16:50 +0000
References: <1435932461-27674-1-git-send-email-mkl@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <55969936.5020904@pengutronix.de>
Date: Fri, 3 Jul 2015 16:16:22 +0200
MIME-Version: 1.0
In-Reply-To: <1435932461-27674-1-git-send-email-mkl@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5827101577394582938=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] state: fix range check on uint8 and uint32 variables
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5827101577394582938==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="XTpn3f8WS8oT64W2wNd5KFi8xX5gJpEEF"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--XTpn3f8WS8oT64W2wNd5KFi8xX5gJpEEF
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 07/03/2015 04:07 PM, Marc Kleine-Budde wrote:
> The patch "8bfd06f073c8 state: uint8: add range check for uint8" as app=
lied not
> correctly to the repository. It was supposed to change the state_uint8_=
create()
> function:
>=20
> |  static struct state_variable *state_uint8_create(struct state *state=
,
> |
> |  	su32 =3D xzalloc(sizeof(*su32));
> |
> | -	param =3D dev_add_param_int(&state->dev, name, state_set_dirty,
> | -				  NULL, &su32->value, "%u", state);
> | +	param =3D dev_add_param_int(&state->dev, name, state_uint8_set,
> | +				  NULL, &su32->value, "%u", su32);
>=20
> but the state_uint32_create() was changed instead, which leads to broke=
n range
> checks on uint32 variables and no range checks on uint8. This patch fix=
es the
> problem.

Sorry for the noise, that error occurred while rebasing my code to the
current release....origin/next is fine.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--XTpn3f8WS8oT64W2wNd5KFi8xX5gJpEEF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVlpk2AAoJEP5prqPJtc/H3e8H/A2pLTNYYufs6V81GhDV5SsM
E+kCfZh7ZvUsfjCSr0ZY/tvKE+BRVBcFrgEg5WaunTegi9O91uer+mrCWuJi3Gxz
zqxjFC/FZ6M4098SrrxV0pQU8jfiHax1+Llys1DxUPKu4SKvrBIgFwdzLn3AYG3o
PWEV2btgizv3kc8TzQgEELhl197F33S+W5J0w+AAabVde+uGwclS/RSo76TZwBf4
BlWHckKon3uGkK8G59ZfDswikjFoniccykW2YBKyhm0bmidKAzv9NY/IFuoTlejU
68Yujh1UnH6Gl93AYIieiKZXUkWgu2yXcxJtmRiJIKAE7l7oD6iO0D07MCiOYq8=
=t2Q/
-----END PGP SIGNATURE-----

--XTpn3f8WS8oT64W2wNd5KFi8xX5gJpEEF--


--===============5827101577394582938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5827101577394582938==--
