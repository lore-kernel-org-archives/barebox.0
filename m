Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFKaj-00050n-64
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 11:11:09 +0000
References: <1436940123-25118-1-git-send-email-s.hauer@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <55A63FB1.2020804@pengutronix.de>
Date: Wed, 15 Jul 2015 13:10:41 +0200
MIME-Version: 1.0
In-Reply-To: <1436940123-25118-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3292883328999504646=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] scripts: imx-image: Do not pad image
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3292883328999504646==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="dVc1mKs5p1e9UfJaVvKatShiiu0UHvanj"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--dVc1mKs5p1e9UfJaVvKatShiiu0UHvanj
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 07/15/2015 08:02 AM, Sascha Hauer wrote:
> We have to pad the load size to the next 4k boundary, but we don't
> need to pad the image itself since we do not care what data the ROM
> actually loads.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

NACK - We do for the HABv4 case.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--dVc1mKs5p1e9UfJaVvKatShiiu0UHvanj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVpj+xAAoJEP5prqPJtc/HcY8IAKEiTGAs38vBCOaqkAcHJspj
Ulj0v69JerG2BrrO9BSiGzVuUhtGNFBMSJgG3dZr3x0+e66wcjZKIdAesiRXa9zL
Jnc1HBLBQIhkOcs6QwC7aET36OUroSlgX8h97Cyg8In6JjPoGShAE+dLHsLxNPpx
DL4KbpMQmRq3e2Xd57k7ZzkX/YrZic2YCxQx7jUxX909rF6RHlcnVnZSPJxW3l/N
zLmh8YDca+Kl3bnIeZ4gU32/gtFBU1k1IYRzS4jhh5OXrS/24tRYOy0GL7MudCMN
GVvsNTJ5BpGEvuIE4ZYQjNLBpWf9sHlqeXvkvl76Sn6LK/E0R7MiONcycXg+RAI=
=PNSt
-----END PGP SIGNATURE-----

--dVc1mKs5p1e9UfJaVvKatShiiu0UHvanj--


--===============3292883328999504646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3292883328999504646==--
