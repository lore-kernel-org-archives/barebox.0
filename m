Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kkmcb-0002ER-JF
 for barebox@lists.infradead.org; Thu, 03 Dec 2020 11:18:02 +0000
Date: Thu, 3 Dec 2020 12:17:59 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20201203111759.teb7lddad3ujfmq5@pengutronix.de>
References: <20201203104257.8263-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20201203104257.8263-1-a.fatoum@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0559816345325048879=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/2] usb: host: ehci: fix mismatch in format string
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============0559816345325048879==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2nozsdbuvlq7l4gr"
Content-Disposition: inline


--2nozsdbuvlq7l4gr
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 03, 2020 at 11:42:56AM +0100, Ahmad Fatoum wrote:
> sz is of type size_t. Use the appropriate format string specifier for
> printing it.
>=20
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>


--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--2nozsdbuvlq7l4gr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl/IyWQACgkQwfwUeK3K
7AlMgwgAnWukOJJcX8rgWrQSvyRq6ci4yXJtzyXDDbfkyp7vOI2lKm7E9tMP0FZU
uhtYkdcXb+MojH0KmEciFDPmkVxPkekHTSF5zweLhFVS1xXAafxeWPa147unHlHW
6b7+q4XSi8o69CMVoAH6Vsa0Aff+wNw8HvjaaxiJz2q01ZuC7J63LLWy1kbu4NmT
XSSYhJx5hG8GGZxRvYq03f4vA+JfvhbOMWo9a1ZaDKd6Pq+mUV2i6pP8F+exYXV9
cKiBcvIlTQXxEINnSQM1goOWjipWNlOV+yGZV3dwr9WugdYlcF0uLTCERTxEzXQY
fYttQf/L0onmWpiBVcZL3pBscYAKgw==
=ndqR
-----END PGP SIGNATURE-----

--2nozsdbuvlq7l4gr--


--===============0559816345325048879==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0559816345325048879==--
