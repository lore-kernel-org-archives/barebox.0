Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYabx-0000sb-CV
 for barebox@lists.infradead.org; Fri, 30 Oct 2020 20:02:58 +0000
Date: Fri, 30 Oct 2020 21:02:51 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20201030200251.g26ph4m4pisyz4t4@pengutronix.de>
References: <20201030073157.11093-1-shc_work@mail.ru>
MIME-Version: 1.0
In-Reply-To: <20201030073157.11093-1-shc_work@mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5708270195445551792=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: CCMX51: Increase kernel partition size
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org


--===============5708270195445551792==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jyfbt32zdnt4hpsg"
Content-Disposition: inline


--jyfbt32zdnt4hpsg
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 30, 2020 at 10:31:57AM +0300, Alexander Shiyan wrote:
A few words about the motivation here would be great. Is 0x340000 to
small for a current kernel? Is this following some upstream change? Why
not install the kernel in the rootfs and get rid of the kernel
partition?

Best regards
Uwe

> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/dts/imx51-ccxmx51.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/arch/arm/dts/imx51-ccxmx51.dts b/arch/arm/dts/imx51-ccxmx51.=
dts
> index efe5dbf63..4aa32e4c8 100644
> --- a/arch/arm/dts/imx51-ccxmx51.dts
> +++ b/arch/arm/dts/imx51-ccxmx51.dts
> @@ -31,11 +31,11 @@
> =20
>  	partition@c0000 {
>  		label =3D "kernel";
> -		reg =3D <0xc0000 0x340000>;
> +		reg =3D <0xc0000 0x400000>;
>  	};
> =20
> -	partition@400000 {
> +	partition@4c0000 {
>  		label =3D "root";
> -		reg =3D <0x400000 0>;
> +		reg =3D <0x4c0000 0>;
>  	};
>  };
> --=20
> 2.26.2
>=20
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>=20

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--jyfbt32zdnt4hpsg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl+ccWkACgkQwfwUeK3K
7AnqhQf/Wb31r4rR9TEXYeIY+/rzhgpGO/Ko3E6OV8O9tyu+pd1IzvTjHcpT/QAW
878Q9HelHYiaQNlPVCzkKVEGsjKz56kL0UW8iO+w462FXqIVE+5u73O/BaEmb9CM
bilcx0dKPmfrzTxe8t7H3UwFz1x04qMeWerz/A3tQTvBPccnJi3nrnltADIwthtt
dkTDjjnJgLTV6wxiJth/FmloTBteRjb8JRjkKInG9iCEj8DAlm1ZCrSe1QG8EmRz
cKIPK+NvO1jpkwy8ViaH0+V6b6iOJsUvFdnHXDo3FrivxUpMUJvL9HfydrXoU/X0
d1CUDm5QXwcXfdOpSi896mVXDfxmhQ==
=ichI
-----END PGP SIGNATURE-----

--jyfbt32zdnt4hpsg--


--===============5708270195445551792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5708270195445551792==--
