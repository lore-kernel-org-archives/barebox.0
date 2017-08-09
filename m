Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dfSqU-0002En-TI
 for barebox@lists.infradead.org; Wed, 09 Aug 2017 15:24:33 +0000
Received: from [192.168.1.241] ([31.18.251.132]) by mail.gmx.com (mrgmx103
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0MO7Ca-1dkz8z2rDg-005dCN for
 <barebox@lists.infradead.org>; Wed, 09 Aug 2017 17:24:05 +0200
References: <20170807143927.1641-1-linux@rempel-privat.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <333af82b-7faa-4aaf-c056-95d0fb539416@rempel-privat.de>
Date: Wed, 9 Aug 2017 17:23:55 +0200
MIME-Version: 1.0
In-Reply-To: <20170807143927.1641-1-linux@rempel-privat.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6438998574069123993=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 01/13] MIPS: ath79: provide CONFIG_SOC_QCA_AR9331 option
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6438998574069123993==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="d5SxX3nxEAJOAn1XOEH47jjq47i5BIpLp"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--d5SxX3nxEAJOAn1XOEH47jjq47i5BIpLp
Content-Type: multipart/mixed; boundary="uvoTfImemELFKJ7HoNCOwJOTn9qfFkxF9";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: barebox@lists.infradead.org
Message-ID: <333af82b-7faa-4aaf-c056-95d0fb539416@rempel-privat.de>
Subject: Re: [PATCH v2 01/13] MIPS: ath79: provide CONFIG_SOC_QCA_AR9331
 option
References: <20170807143927.1641-1-linux@rempel-privat.de>
In-Reply-To: <20170807143927.1641-1-linux@rempel-privat.de>

--uvoTfImemELFKJ7HoNCOwJOTn9qfFkxF9
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

I assume it was bad idea to push this patches all together.

will split it and send in separate chunks.

Am 07.08.2017 um 16:39 schrieb Oleksij Rempel:
> QCA AR9331 and QCA AR9344 have some similar part but different uart eng=
ines.
> We need this flag to provide common debug_ll support.
>=20
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  arch/mips/mach-ath79/Kconfig | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfi=
g
> index 9b8e3946e..f2eae2532 100644
> --- a/arch/mips/mach-ath79/Kconfig
> +++ b/arch/mips/mach-ath79/Kconfig
> @@ -4,17 +4,22 @@ config ARCH_TEXT_BASE
>  	hex
>  	default 0xa0800000
> =20
> +config SOC_QCA_AR9331
> +	bool
> +
>  choice
>  	prompt "Board type"
> =20
>  config BOARD_TPLINK_MR3020
>  	bool "TP-LINK MR3020"
> +	select SOC_QCA_AR9331
>  	select HAVE_PBL_IMAGE
>  	select HAVE_IMAGE_COMPRESSION
>  	select HAS_NMON
> =20
>  config BOARD_BLACK_SWIFT
>  	bool "Black Swift"
> +	select SOC_QCA_AR9331
>  	select HAVE_PBL_IMAGE
>  	select HAVE_IMAGE_COMPRESSION
>  	select HAS_NMON
>=20


--=20
Regards,
Oleksij


--uvoTfImemELFKJ7HoNCOwJOTn9qfFkxF9--

--d5SxX3nxEAJOAn1XOEH47jjq47i5BIpLp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF4EAREIAAYFAlmLKRAACgkQHwImuRkmbWn+fwD/ed6Ch+CdFWeek+qkuhoWI+bp
/Uff8AdHaJkvbZJU0BABAIV3li42r6Zpqq2zK7RCRxr9zspWv0rFymWkqRzWbrfF
=wxx1
-----END PGP SIGNATURE-----

--d5SxX3nxEAJOAn1XOEH47jjq47i5BIpLp--


--===============6438998574069123993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6438998574069123993==--
