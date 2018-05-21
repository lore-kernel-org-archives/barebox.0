Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKnAR-0000Rq-VN
 for barebox@lists.infradead.org; Mon, 21 May 2018 15:56:13 +0000
References: <20180521115438.26493-1-pmamonov@gmail.com>
 <20180521115438.26493-13-pmamonov@gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <71181caa-caa9-1f41-81ba-53aaf55aef9e@rempel-privat.de>
Date: Mon, 21 May 2018 17:50:55 +0200
MIME-Version: 1.0
In-Reply-To: <20180521115438.26493-13-pmamonov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2734998054284994761=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 12/12] fixup! MIPS: import optimized string functions
 from Linux
To: Peter Mamonov <pmamonov@gmail.com>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2734998054284994761==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="QgsHQiaMexiY7gWmIqJUbmKGnbDOd7N8t"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--QgsHQiaMexiY7gWmIqJUbmKGnbDOd7N8t
Content-Type: multipart/mixed; boundary="nxpaI7ZskzDqNCH0OqxBieyzn7oAxxAl2";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Peter Mamonov <pmamonov@gmail.com>, barebox@lists.infradead.org
Message-ID: <71181caa-caa9-1f41-81ba-53aaf55aef9e@rempel-privat.de>
Subject: Re: [PATCH v2 12/12] fixup! MIPS: import optimized string functions
 from Linux
References: <20180521115438.26493-1-pmamonov@gmail.com>
 <20180521115438.26493-13-pmamonov@gmail.com>
In-Reply-To: <20180521115438.26493-13-pmamonov@gmail.com>

--nxpaI7ZskzDqNCH0OqxBieyzn7oAxxAl2
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Please, no fixup in master log.

Am 21.05.2018 um 13:54 schrieb Peter Mamonov:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  arch/mips/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index ef23837f4..ce63ec1ae 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -342,6 +342,7 @@ config NMON_HELP
> =20
>  config MIPS_OPTIMIZED_STRING_FUNCTIONS
>  	bool "use assembler optimized string functions"
> +	depends on !64BIT
>  	default y
>  	help
>  	  Say yes here to use assembler optimized memcpy / memset functions.
>=20


--=20
Regards,
Oleksij


--nxpaI7ZskzDqNCH0OqxBieyzn7oAxxAl2--

--QgsHQiaMexiY7gWmIqJUbmKGnbDOd7N8t
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQRXepfNdOKCSzfa+2sfAia5GSZtaQUCWwLq3wAKCRAfAia5GSZt
abuhAP9QzSxka89/g2ZQgoh/u7FDP7QM3+BbDgU08r8BguuUKwD/R+Z6jMJ8oKu0
4dZ/+jqcl6rfvBCyoi35/+2ia0uXnTE=
=UPjy
-----END PGP SIGNATURE-----

--QgsHQiaMexiY7gWmIqJUbmKGnbDOd7N8t--


--===============2734998054284994761==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2734998054284994761==--
