Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZB1eY-000784-AQ
 for barebox@lists.infradead.org; Fri, 03 Jul 2015 14:09:18 +0000
References: <1435932461-27674-1-git-send-email-mkl@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <55969773.2090009@pengutronix.de>
Date: Fri, 3 Jul 2015 16:08:51 +0200
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
Content-Type: multipart/mixed; boundary="===============0982788613630070505=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] state: fix range check on uint8 and uint32 variables
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0982788613630070505==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="TX2gO91rnsJrS6v8SmicRNhIXhHnOoH0b"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--TX2gO91rnsJrS6v8SmicRNhIXhHnOoH0b
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

Doh! I forgot the second part to the patch - will send v2.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--TX2gO91rnsJrS6v8SmicRNhIXhHnOoH0b
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVlpdzAAoJEP5prqPJtc/HhsEH+wWHQyEfTkEmgVOHmXKbNL9m
kIXdq9qLVQ6PPJyaULLzYLwQf8he1jxRQA46o2u2lXckKLv/A2PwHSo4xpx0AS5f
+JhFXGauao0Dqtcj0zV//B3a0JcULXSHD1qdzIi7zpWp8QYUBzwVzJUJX2H3Y3zh
vpBTIw8CDFI3vEfdv1zJgynUDk/teNPWNvSjOqVAv6W28kYDrr56/ogrXfxLKKcD
phMUsFzKI70QPghFR490XYdzEsytgTn7k3g27QHkPGRU1oEp7eYZTJWuHjKzlM9i
57WfMtczaiwQ9kkIqVKs6Eg0LEC3UE26a2o8sgcU+osqVxZEWUxofhCP2aAhfGM=
=UMnp
-----END PGP SIGNATURE-----

--TX2gO91rnsJrS6v8SmicRNhIXhHnOoH0b--


--===============0982788613630070505==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0982788613630070505==--
