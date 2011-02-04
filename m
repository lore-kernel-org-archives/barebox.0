Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PlMOu-0002I6-Me
	for barebox@lists.infradead.org; Fri, 04 Feb 2011 14:12:41 +0000
Message-ID: <4D4C0953.5020704@pengutronix.de>
Date: Fri, 04 Feb 2011 15:12:35 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1296823849-8692-1-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1296823849-8692-1-git-send-email-mkl@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0621942781=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] defaultenv/bin/update: fix return values
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org, sha@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0621942781==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig63357FD816A4CFBBD01C7542"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig63357FD816A4CFBBD01C7542
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 02/04/2011 01:50 PM, Marc Kleine-Budde wrote:
> This patch fixes the return values of the update script.
>=20
> - Exit with an error of the "_update" script fails.
> - Add a "else; true" to the crc check, otherwise the script
>   exits with "1".
>=20
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>=20
> Changes since v1:
> - fix exists type in commit message
               typo

that is

Marc
>=20
>  defaultenv/bin/update |    4 +++-
>  1 files changed, 3 insertions(+), 1 deletions(-)
>=20
> diff --git a/defaultenv/bin/update b/defaultenv/bin/update
> index 43d3097..7c37c36 100644
> --- a/defaultenv/bin/update
> +++ b/defaultenv/bin/update
> @@ -64,7 +64,9 @@ if [ x${mode} !=3D xtftp ] && [ x${mode} !=3D xxmodem=
 ] ; then
>  	exit 1
>  fi
> =20
> -. /env/bin/_update
> +. /env/bin/_update || exit 1
>  if [ x${check} =3D xy ]; then
>  	crc32 -f $image -F $part
> +else
> +	true
>  fi


--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig63357FD816A4CFBBD01C7542
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk1MCVYACgkQjTAFq1RaXHOKiQCgjCox8Z5lnrg60NAUfK0w2unZ
vjwAniMZljylQt1O5ixPj1CIKlfGHZa4
=MLGg
-----END PGP SIGNATURE-----

--------------enig63357FD816A4CFBBD01C7542--


--===============0621942781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0621942781==--
