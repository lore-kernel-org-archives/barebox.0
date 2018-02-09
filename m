Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek6HA-000386-Tm
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 10:51:31 +0000
References: <20180209100124.4119-1-s.hauer@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <9e7d3a20-794e-1b49-9377-4b076e25e1e1@pengutronix.de>
Date: Fri, 9 Feb 2018 11:50:34 +0100
MIME-Version: 1.0
In-Reply-To: <20180209100124.4119-1-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7004924857578077085=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] bootm: fit: add option to add DT snipped that contains
 fit public key
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7004924857578077085==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="VMQNmQlYhBeMmDlNwSoiUUus6xQGuDHnY"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--VMQNmQlYhBeMmDlNwSoiUUus6xQGuDHnY
Content-Type: multipart/mixed; boundary="KNdH4XVvALTpTJPUMV72VLETT38NWgxBd";
 protected-headers="v1"
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Message-ID: <9e7d3a20-794e-1b49-9377-4b076e25e1e1@pengutronix.de>
Subject: Re: [PATCH] bootm: fit: add option to add DT snipped that contains
 fit public key
References: <20180209100124.4119-1-s.hauer@pengutronix.de>
In-Reply-To: <20180209100124.4119-1-s.hauer@pengutronix.de>

--KNdH4XVvALTpTJPUMV72VLETT38NWgxBd
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: quoted-printable

On 02/09/2018 11:01 AM, Sascha Hauer wrote:
> From: Marc Kleine-Budde <mkl@pengutronix.de>
>=20
> This makes it easier for build systems to include a configurable dts
> snippet which holds the public keys for FIT images.
>=20
> Usage:
>=20
> Add to your dts:
>=20
>  #ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
>  #include CONFIG_BOOTM_FITIMAGE_PUBKEY
>  #endif
>=20
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/Kconfig       | 7 +++++++
>  scripts/Makefile.lib | 6 ++++++
>  2 files changed, 13 insertions(+)
>=20
> diff --git a/common/Kconfig b/common/Kconfig
> index 93b1d89274..33e15490e9 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -632,6 +632,13 @@ config BOOTM_FITIMAGE_SIGNATURE
>  	  Additionally the barebox device tree needs a /signature node with t=
he
>  	  public key with which the image has been signed.
> =20
> +config BOOTM_FITIMAGE_PUBKEY
> +	string "Path to dtsi containing pubkey"
> +	default "../fit/pubkey.dtsi"
> +	depends on BOOTM_FITIMAGE_SIGNATURE
> +	help
> +	  FIXME

Set Path to a dts snippet which holds the public keys for FIT images.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--KNdH4XVvALTpTJPUMV72VLETT38NWgxBd--

--VMQNmQlYhBeMmDlNwSoiUUus6xQGuDHnY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEENrCndlB/VnAEWuH5k9IU1zQoZfEFAlp9fPoACgkQk9IU1zQo
ZfEwuAf/SnamOmuGHHihBEDIl7toFjbjWFW3qI+BKKKOxe78a5cJQCgQNfO6p0E/
HAuM+flTEFXYkBiEBCrC6CZUV04n4/PGUqRrpaY8WSsWo8hN91faW9DzNMe+s4gO
xPHB4d+7iilU2G8HUdhHizbyoe3noKjFbVmW9NFRFhNF+AwwqiH0bRFZYkMsg9bE
n6yL1WyWzQAHTuXNOSNkYrbx/M6RNPn4GlDR8O++IxcaarT7mLNfAaK0qgAZHwf8
Axr8fKuisB1YmVjghCgmZU76X7NK70aewDWuHsJmRHemf9OfzfE7D6v3Yngm1Ep4
1009DauvM7lxR4S5s4VEeEAUWK3zDA==
=7PYy
-----END PGP SIGNATURE-----

--VMQNmQlYhBeMmDlNwSoiUUus6xQGuDHnY--


--===============7004924857578077085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7004924857578077085==--
