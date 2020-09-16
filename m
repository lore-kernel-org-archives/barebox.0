Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIURj-0005o5-GT
 for barebox@lists.infradead.org; Wed, 16 Sep 2020 10:13:52 +0000
References: <20200915205417.15484-1-u.kleine-koenig@pengutronix.de>
 <20200915205417.15484-6-u.kleine-koenig@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <852764f4-0b7d-9787-8fca-0e318fedaa56@pengutronix.de>
Date: Wed, 16 Sep 2020 12:13:44 +0200
MIME-Version: 1.0
In-Reply-To: <20200915205417.15484-6-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5753849754511184601=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/7] scripts/rsatoc: relicense to allow distribution of
 binary linked with OpenSSL
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5753849754511184601==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="PGrGHKq7MeSfKqRNrAnk3DIE6iPyM2sWV"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--PGrGHKq7MeSfKqRNrAnk3DIE6iPyM2sWV
Content-Type: multipart/mixed; boundary="X9hAgxBlcoXxfpEVxtVKgj6qK7TUKiFz4";
 protected-headers="v1"
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 barebox@lists.infradead.org
Message-ID: <852764f4-0b7d-9787-8fca-0e318fedaa56@pengutronix.de>
Subject: Re: [PATCH 5/7] scripts/rsatoc: relicense to allow distribution of
 binary linked with OpenSSL
References: <20200915205417.15484-1-u.kleine-koenig@pengutronix.de>
 <20200915205417.15484-6-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20200915205417.15484-6-u.kleine-koenig@pengutronix.de>

--X9hAgxBlcoXxfpEVxtVKgj6qK7TUKiFz4
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: quoted-printable

On 9/15/20 10:54 PM, Uwe Kleine-K=C3=B6nig wrote:
> The GPL (both, versions 2 and 3) are incompatible with the OpenSSL lice=
nse.
> According to the Free Software Foundation the copyright holders of GPL
> software have to provide an exception to allow this linkage.
>=20
> This is effectively a license change and so needs confirmation by all
> copyright holders.
>=20
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>

Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>

> ---
>  scripts/rsatoc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
> index 8f2eb8fdedc9..142d71b89f9a 100644
> --- a/scripts/rsatoc.c
> +++ b/scripts/rsatoc.c
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0+
> +// SPDX-License-Identifier: GPL-2.0+ WITH OpenSSL-exception
>  /*
>   * rsatoc - utility to convert an RSA key to a C struct
>   *
>=20

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |


--X9hAgxBlcoXxfpEVxtVKgj6qK7TUKiFz4--

--PGrGHKq7MeSfKqRNrAnk3DIE6iPyM2sWV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAl9h5VgACgkQqclaivrt
76m/BAgAg4w7kbd24JbBwkSsJrpEtpoBdlnmf9F/IztW2zbklbC6Y/MRcJImuDR1
p8Tc5w9gmoxdoL8Qi5yMKJ7YybRHruEnYo8jeaHggC1XuEz6FNscyKY095BBKt/t
6J2fTx60q4e0NFqn9a+zUZzzEVyke3liPl8s8muGfd+51rW66toGURcEBMGlNoga
rDU2EurIHPDoClG6B9xAIBB+6voTMWNYBvZf8ZrBpstR9HhBsdqfU30jnXhhYA52
8fJ0/qCR/ux9R9mi8Sm/Cfizz+JbhJ0a/ZH5C2CmSFEgnVxF47DwHvKQGCdT2ZdK
n+gIATaxrZ2Uxor3AU7OCpSdzMR1Fg==
=G8tV
-----END PGP SIGNATURE-----

--PGrGHKq7MeSfKqRNrAnk3DIE6iPyM2sWV--


--===============5753849754511184601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5753849754511184601==--
