Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVKiU-0006oJ-RQ
 for barebox@lists.infradead.org; Tue, 19 Jun 2018 17:46:59 +0000
Received: from [192.168.1.100] ([31.18.254.8]) by mail.gmx.com (mrgmx003
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0LqRKT-1g8oG61oS9-00e6VG for
 <barebox@lists.infradead.org>; Tue, 19 Jun 2018 19:46:39 +0200
References: <20180619171433.24921-1-antonynpavlov@gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <1d8e75cb-4170-31b5-5589-4c62f96fb72a@rempel-privat.de>
Date: Tue, 19 Jun 2018 19:46:38 +0200
MIME-Version: 1.0
In-Reply-To: <20180619171433.24921-1-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3350927551352831110=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] MIPS: dts: drop skeleton.dtsi
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3350927551352831110==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="lDAWvUdG5tiru9ZtjVoBkrg8p2mkacTVv"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--lDAWvUdG5tiru9ZtjVoBkrg8p2mkacTVv
Content-Type: multipart/mixed; boundary="0JDFdn7EsX9zsxbxe8f9Sc3rW8fabhsRt";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: barebox@lists.infradead.org
Message-ID: <1d8e75cb-4170-31b5-5589-4c62f96fb72a@rempel-privat.de>
Subject: Re: [PATCH] MIPS: dts: drop skeleton.dtsi
References: <20180619171433.24921-1-antonynpavlov@gmail.com>
In-Reply-To: <20180619171433.24921-1-antonynpavlov@gmail.com>

--0JDFdn7EsX9zsxbxe8f9Sc3rW8fabhsRt
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Tested-by Oleksij Rempel <linux@rempel-privat.de>

on dpt board.

Am 19.06.2018 um 19:14 schrieb Antony Pavlov:
> Based on feedback from Sascha:
>=20
>     http://lists.infradead.org/pipermail/barebox/2018-April/032694.html=

>     "
>     skeleton.dtsi should no longer be used
>     "
>=20
> Several reasons to remove skeleton.dtsi ares explained in
> the linux commit 3ebee5a2e141 ("arm64: dts: kill skeleton.dtsi").
>=20
> Unit number is added to the /memory nodes to fix this dtc warning:
>=20
>   Warning (unit_address_vs_reg): /memory: node has a reg or ranges
>   property, but no unit name
>=20
> Also this commit adds #address-cells and #size-cells definitions
> to board and SoC dts file to avoid dtc warning, e.g.
>=20
>   Warning (avoid_default_addr_size): /memory@0: Relying on default
>   #address-cells value
>=20
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/dts/dlink-dir-320.dts |  7 ++++---
>  arch/mips/dts/img-ci20.dts      |  2 +-
>  arch/mips/dts/jz4755.dtsi       |  5 +++--
>  arch/mips/dts/jz4780.dtsi       |  5 +++--
>  arch/mips/dts/loongson-ls1b.dts |  2 +-
>  arch/mips/dts/ls1b.dtsi         |  5 +++--
>  arch/mips/dts/qemu-malta.dts    |  7 ++++---
>  arch/mips/dts/rzx50.dts         |  2 +-
>  arch/mips/dts/skeleton.dtsi     | 13 -------------
>  9 files changed, 20 insertions(+), 28 deletions(-)
>=20
> diff --git a/arch/mips/dts/dlink-dir-320.dts b/arch/mips/dts/dlink-dir-=
320.dts
> index b961c9dca3..e21700637f 100644
> --- a/arch/mips/dts/dlink-dir-320.dts
> +++ b/arch/mips/dts/dlink-dir-320.dts
> @@ -1,12 +1,13 @@
>  /dts-v1/;
> =20
> -#include "skeleton.dtsi"
> -
>  / {
>  	model =3D "D-Link DIR-320";
>  	compatible =3D "dlink,dir320";
> =20
> -	memory {
> +	#address-cells =3D <1>;
> +	#size-cells =3D <1>;
> +
> +	memory@0 {
>  		reg =3D <0x00000000 0x2000000>;
>  	};
> =20
> diff --git a/arch/mips/dts/img-ci20.dts b/arch/mips/dts/img-ci20.dts
> index da2a5bf625..d985666020 100644
> --- a/arch/mips/dts/img-ci20.dts
> +++ b/arch/mips/dts/img-ci20.dts
> @@ -24,7 +24,7 @@
>  	model =3D "MIPS Creator CI20";
>  	compatible =3D "img,ci20";
> =20
> -	memory {
> +	memory@0 {
>  		device_type =3D "memory";
>  		reg =3D <0x0 0x10000000>;
>  	};
> diff --git a/arch/mips/dts/jz4755.dtsi b/arch/mips/dts/jz4755.dtsi
> index 137156df7e..5d929c5d83 100644
> --- a/arch/mips/dts/jz4755.dtsi
> +++ b/arch/mips/dts/jz4755.dtsi
> @@ -1,6 +1,7 @@
> -#include "skeleton.dtsi"
> -
>  / {
> +	#address-cells =3D <1>;
> +	#size-cells =3D <1>;
> +
>  	soc {
>  		compatible =3D "simple-bus";
>  		model =3D "Ingenic JZ4755";
> diff --git a/arch/mips/dts/jz4780.dtsi b/arch/mips/dts/jz4780.dtsi
> index 9f0de5d1ae..fbffe814bb 100644
> --- a/arch/mips/dts/jz4780.dtsi
> +++ b/arch/mips/dts/jz4780.dtsi
> @@ -1,6 +1,7 @@
> -#include "skeleton.dtsi"
> -
>  / {
> +	#address-cells =3D <1>;
> +	#size-cells =3D <1>;
> +
>  	soc {
>  		model =3D "Ingenic JZ4780";
>  		#address-cells =3D <1>;
> diff --git a/arch/mips/dts/loongson-ls1b.dts b/arch/mips/dts/loongson-l=
s1b.dts
> index b81a951dc7..39e44eba35 100644
> --- a/arch/mips/dts/loongson-ls1b.dts
> +++ b/arch/mips/dts/loongson-ls1b.dts
> @@ -6,7 +6,7 @@
>  	model =3D "Loongson Tech LS1B Demo Board";
>  	compatible =3D "loongson,ls1b";
> =20
> -	memory {
> +	memory@0 {
>  		reg =3D <0x00000000 0x4000000>;
>  	};
>  };
> diff --git a/arch/mips/dts/ls1b.dtsi b/arch/mips/dts/ls1b.dtsi
> index af7119f1d0..cb85814af4 100644
> --- a/arch/mips/dts/ls1b.dtsi
> +++ b/arch/mips/dts/ls1b.dtsi
> @@ -1,6 +1,7 @@
> -#include "skeleton.dtsi"
> -
>  / {
> +	#address-cells =3D <1>;
> +	#size-cells =3D <1>;
> +
>  	soc {
>  		#address-cells =3D <1>;
>  		#size-cells =3D <1>;
> diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dt=
s
> index 9b0c594e87..0311baed41 100644
> --- a/arch/mips/dts/qemu-malta.dts
> +++ b/arch/mips/dts/qemu-malta.dts
> @@ -1,11 +1,12 @@
>  /dts-v1/;
> =20
> -/include/ "skeleton.dtsi"
> -
>  / {
>  	model =3D "qemu malta";
>  	compatible =3D "qemu,malta";
> =20
> +	#address-cells =3D <1>;
> +	#size-cells =3D <1>;
> +
>  	chosen {
>  		environment@0 {
>  			compatible =3D "barebox,environment";
> @@ -13,7 +14,7 @@
>  		};
>  	};
> =20
> -	memory {
> +	memory@0 {
>  		reg =3D <0x00000000 0x10000000>;
>  	};
> =20
> diff --git a/arch/mips/dts/rzx50.dts b/arch/mips/dts/rzx50.dts
> index 7ec3352666..8d4f92c98a 100644
> --- a/arch/mips/dts/rzx50.dts
> +++ b/arch/mips/dts/rzx50.dts
> @@ -6,7 +6,7 @@
>  	model =3D "Ritmix RZX-50";
>  	compatible =3D "ritmix,rzx50";
> =20
> -	memory {
> +	memory@0 {
>  		reg =3D <0x00000000 0x4000000>;
>  	};
> =20
> diff --git a/arch/mips/dts/skeleton.dtsi b/arch/mips/dts/skeleton.dtsi
> deleted file mode 100644
> index b41d241de2..0000000000
> --- a/arch/mips/dts/skeleton.dtsi
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -/*
> - * Skeleton device tree; the bare minimum needed to boot; just include=
 and
> - * add a compatible value.  The bootloader will typically populate the=
 memory
> - * node.
> - */
> -
> -/ {
> -	#address-cells =3D <1>;
> -	#size-cells =3D <1>;
> -	chosen { };
> -	aliases { };
> -	memory { device_type =3D "memory"; reg =3D <0 0>; };
> -};
>=20


--=20
Regards,
Oleksij


--0JDFdn7EsX9zsxbxe8f9Sc3rW8fabhsRt--

--lDAWvUdG5tiru9ZtjVoBkrg8p2mkacTVv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQRXepfNdOKCSzfa+2sfAia5GSZtaQUCWylBfgAKCRAfAia5GSZt
aXNLAPwPrKHm/Filc8oViGjdXXUjpNrqYm5iXKIXlPkGzthv3wD+IQyNaahfqCwa
9y5zv8CBNYuLSc3IX6ecmMmLLJnJGpA=
=HFIT
-----END PGP SIGNATURE-----

--lDAWvUdG5tiru9ZtjVoBkrg8p2mkacTVv--


--===============3350927551352831110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3350927551352831110==--
