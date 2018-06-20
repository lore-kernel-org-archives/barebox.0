Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVeaO-00045s-05
 for barebox@lists.infradead.org; Wed, 20 Jun 2018 14:59:53 +0000
Received: by mail-lf0-x243.google.com with SMTP id a13-v6so5430811lfk.12
 for <barebox@lists.infradead.org>; Wed, 20 Jun 2018 07:59:41 -0700 (PDT)
Date: Wed, 20 Jun 2018 18:00:03 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180620180003.277534580d9e38fe26980637@gmail.com>
In-Reply-To: <20180619171433.24921-1-antonynpavlov@gmail.com>
References: <20180619171433.24921-1-antonynpavlov@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] MIPS: dts: drop skeleton.dtsi
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 19 Jun 2018 20:14:33 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

Hi, Sascha!

Please ignore this patch.

I have to add `device_type =3D "memory";` to memory nodes.

Also I'm planning to move #address-cells and #size-cells definitions to a s=
eparate patch.

> Based on feedback from Sascha:
> =

>     http://lists.infradead.org/pipermail/barebox/2018-April/032694.html
>     "
>     skeleton.dtsi should no longer be used
>     "
> =

> Several reasons to remove skeleton.dtsi ares explained in
> the linux commit 3ebee5a2e141 ("arm64: dts: kill skeleton.dtsi").
> =

> Unit number is added to the /memory nodes to fix this dtc warning:
> =

>   Warning (unit_address_vs_reg): /memory: node has a reg or ranges
>   property, but no unit name
> =

> Also this commit adds #address-cells and #size-cells definitions
> to board and SoC dts file to avoid dtc warning, e.g.
> =

>   Warning (avoid_default_addr_size): /memory@0: Relying on default
>   #address-cells value
> =

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
> =

> diff --git a/arch/mips/dts/dlink-dir-320.dts b/arch/mips/dts/dlink-dir-32=
0.dts
> index b961c9dca3..e21700637f 100644
> --- a/arch/mips/dts/dlink-dir-320.dts
> +++ b/arch/mips/dts/dlink-dir-320.dts
> @@ -1,12 +1,13 @@
>  /dts-v1/;
>  =

> -#include "skeleton.dtsi"
> -
>  / {
>  	model =3D "D-Link DIR-320";
>  	compatible =3D "dlink,dir320";
>  =

> -	memory {
> +	#address-cells =3D <1>;
> +	#size-cells =3D <1>;
> +
> +	memory@0 {
>  		reg =3D <0x00000000 0x2000000>;
>  	};
>  =

> diff --git a/arch/mips/dts/img-ci20.dts b/arch/mips/dts/img-ci20.dts
> index da2a5bf625..d985666020 100644
> --- a/arch/mips/dts/img-ci20.dts
> +++ b/arch/mips/dts/img-ci20.dts
> @@ -24,7 +24,7 @@
>  	model =3D "MIPS Creator CI20";
>  	compatible =3D "img,ci20";
>  =

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
> diff --git a/arch/mips/dts/loongson-ls1b.dts b/arch/mips/dts/loongson-ls1=
b.dts
> index b81a951dc7..39e44eba35 100644
> --- a/arch/mips/dts/loongson-ls1b.dts
> +++ b/arch/mips/dts/loongson-ls1b.dts
> @@ -6,7 +6,7 @@
>  	model =3D "Loongson Tech LS1B Demo Board";
>  	compatible =3D "loongson,ls1b";
>  =

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
> diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
> index 9b0c594e87..0311baed41 100644
> --- a/arch/mips/dts/qemu-malta.dts
> +++ b/arch/mips/dts/qemu-malta.dts
> @@ -1,11 +1,12 @@
>  /dts-v1/;
>  =

> -/include/ "skeleton.dtsi"
> -
>  / {
>  	model =3D "qemu malta";
>  	compatible =3D "qemu,malta";
>  =

> +	#address-cells =3D <1>;
> +	#size-cells =3D <1>;
> +
>  	chosen {
>  		environment@0 {
>  			compatible =3D "barebox,environment";
> @@ -13,7 +14,7 @@
>  		};
>  	};
>  =

> -	memory {
> +	memory@0 {
>  		reg =3D <0x00000000 0x10000000>;
>  	};
>  =

> diff --git a/arch/mips/dts/rzx50.dts b/arch/mips/dts/rzx50.dts
> index 7ec3352666..8d4f92c98a 100644
> --- a/arch/mips/dts/rzx50.dts
> +++ b/arch/mips/dts/rzx50.dts
> @@ -6,7 +6,7 @@
>  	model =3D "Ritmix RZX-50";
>  	compatible =3D "ritmix,rzx50";
>  =

> -	memory {
> +	memory@0 {
>  		reg =3D <0x00000000 0x4000000>;
>  	};
>  =

> diff --git a/arch/mips/dts/skeleton.dtsi b/arch/mips/dts/skeleton.dtsi
> deleted file mode 100644
> index b41d241de2..0000000000
> --- a/arch/mips/dts/skeleton.dtsi
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -/*
> - * Skeleton device tree; the bare minimum needed to boot; just include a=
nd
> - * add a compatible value.  The bootloader will typically populate the m=
emory
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
> -- =

> 2.17.0
> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
