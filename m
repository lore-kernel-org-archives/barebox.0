Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxuSH-0002KN-61
 for barebox@lists.infradead.org; Fri, 29 Sep 2017 12:31:48 +0000
Received: from [192.168.1.241] ([31.18.251.132]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0LqW8j-1dTVO31ILx-00e5AC for
 <barebox@lists.infradead.org>; Fri, 29 Sep 2017 14:18:46 +0200
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
 <20170928231249.4158-3-antonynpavlov@gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <282b43e5-7a6d-8085-a4f3-5f100bfe4953@rempel-privat.de>
Date: Fri, 29 Sep 2017 14:18:40 +0200
MIME-Version: 1.0
In-Reply-To: <20170928231249.4158-3-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2655536832021414303=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC v4 02/10] RISC-V: add Erizo SoC support
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2655536832021414303==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="mhFr33QPJtTOwBc4qcj1TgfDSans1ekv0"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--mhFr33QPJtTOwBc4qcj1TgfDSans1ekv0
Content-Type: multipart/mixed; boundary="xeq5N1JHowpWjhBFVbnuAmIemaNEKOB4M";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: barebox@lists.infradead.org
Message-ID: <282b43e5-7a6d-8085-a4f3-5f100bfe4953@rempel-privat.de>
Subject: Re: [RFC v4 02/10] RISC-V: add Erizo SoC support
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
 <20170928231249.4158-3-antonynpavlov@gmail.com>
In-Reply-To: <20170928231249.4158-3-antonynpavlov@gmail.com>

--xeq5N1JHowpWjhBFVbnuAmIemaNEKOB4M
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Probably it is better to send it as patch not as RFC ;)

Am 29.09.2017 um 01:12 schrieb Antony Pavlov:
> Erizo is an opensource hardware SoC for FPGA.
>=20
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/riscv/Kconfig                         | 11 +++++++
>  arch/riscv/Makefile                        |  3 ++
>  arch/riscv/boards/erizo-generic/.gitignore |  1 +
>  arch/riscv/boards/erizo-generic/Makefile   |  1 +
>  arch/riscv/boards/erizo-generic/board.c    | 28 ++++++++++++++++++
>  arch/riscv/dts/erizo.dtsi                  | 46 ++++++++++++++++++++++=
++++++++
>  arch/riscv/dts/erizo_generic.dts           | 31 ++++++++++++++++++++
>  arch/riscv/mach-erizo/Kconfig              | 11 +++++++
>  arch/riscv/mach-erizo/Makefile             |  3 ++
>  9 files changed, 135 insertions(+)
>=20
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index b2f0817ef..f4bfbea7c 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -20,6 +20,15 @@ config GENERIC_LINKER_SCRIPT
> =20
>  menu "Machine selection"
> =20
> +choice
> +	prompt "System type"
> +	default MACH_ERIZO
> +
> +config MACH_ERIZO
> +	bool "erizo family"
> +
> +endchoice
> +
>  choice
>  	prompt "CPU selection"
>  	default CPU_RV_GENERIC
> @@ -62,6 +71,8 @@ config BUILTIN_DTB_NAME
>  	string "DTB to build into the barebox image"
>  	depends on BUILTIN_DTB
> =20
> +source arch/riscv/mach-erizo/Kconfig
> +
>  endmenu
> =20
>  source common/Kconfig
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index 4e3318cf1..8947a1860 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -7,6 +7,9 @@ cflags-y +=3D -Wall -Wmissing-prototypes -Wstrict-proto=
types \
>  LDFLAGS +=3D $(ldflags-y)
>  LDFLAGS_barebox +=3D -nostdlib
> =20
> +machine-$(CONFIG_MACH_ERIZO)	:=3D erizo
> +board-$(CONFIG_BOARD_ERIZO_GENERIC)	:=3D erizo-generic
> +
>  TEXT_BASE =3D $(CONFIG_TEXT_BASE)
>  CPPFLAGS +=3D -DTEXT_BASE=3D$(CONFIG_TEXT_BASE)
> =20
> diff --git a/arch/riscv/boards/erizo-generic/.gitignore b/arch/riscv/bo=
ards/erizo-generic/.gitignore
> new file mode 100644
> index 000000000..d1165788c
> --- /dev/null
> +++ b/arch/riscv/boards/erizo-generic/.gitignore
> @@ -0,0 +1 @@
> +barebox.lds
> diff --git a/arch/riscv/boards/erizo-generic/Makefile b/arch/riscv/boar=
ds/erizo-generic/Makefile
> new file mode 100644
> index 000000000..dcfc2937d
> --- /dev/null
> +++ b/arch/riscv/boards/erizo-generic/Makefile
> @@ -0,0 +1 @@
> +obj-y +=3D board.o
> diff --git a/arch/riscv/boards/erizo-generic/board.c b/arch/riscv/board=
s/erizo-generic/board.c
> new file mode 100644
> index 000000000..ecda85001
> --- /dev/null
> +++ b/arch/riscv/boards/erizo-generic/board.c
> @@ -0,0 +1,28 @@
> +/*
> + * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
> + *
> + * This file is part of barebox.
> + * See file CREDITS for list of people who contributed to this project=
=2E
> + *
> + * This program is free software; you can redistribute it and/or modif=
y
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <init.h>
> +
> +static int hostname_init(void)
> +{
> +	barebox_set_hostname("barebox");

please, use board name. Maybe: erizo-generic or so.
For network boot the filenames will be constructed as following:
username-hostname-filetype


> +
> +	return 0;
> +}
> +postcore_initcall(hostname_init);
> diff --git a/arch/riscv/dts/erizo.dtsi b/arch/riscv/dts/erizo.dtsi
> new file mode 100644
> index 000000000..1660ad104
> --- /dev/null
> +++ b/arch/riscv/dts/erizo.dtsi
> @@ -0,0 +1,46 @@
> +/dts-v1/;
> +
> +#include "skeleton.dtsi"
> +
> +/ {
> +	compatible =3D "miet-riscv-workgroup,erizo";
> +
> +	#address-cells =3D <1>;
> +	#size-cells =3D <1>;
> +
> +	clocks {
> +		ref_clk: ref_clk {
> +			#clock-cells =3D <0>;
> +			compatible =3D "fixed-clock";
> +			clock-frequency =3D <24000000>;
> +		};
> +	};
> +
> +	cpus {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		cpu@0 {
> +			device_type =3D "cpu";
> +			compatible =3D "cliffordwolf,picorv32";
> +			clocks =3D <&ref_clk>;
> +			reg =3D <0>;
> +		};
> +	};
> +
> +	uart0: uart@90000000 {
> +		compatible =3D "ns16550a";
> +		reg =3D <0x90000000 0x20>;
> +		reg-shift =3D <2>;
> +		clocks =3D <&ref_clk>;
> +	};
> +
> +	gpio0: gpio@91000000 {
> +		compatible =3D "wd,mbl-gpio";
> +		reg-names =3D "dat", "dirout";
> +		reg =3D <0x91000000 0x4>,
> +			<0x91000004 0x4>;
> +		#gpio-cells =3D <2>;
> +		gpio-controller;
> +	};
> +};
> diff --git a/arch/riscv/dts/erizo_generic.dts b/arch/riscv/dts/erizo_ge=
neric.dts
> new file mode 100644
> index 000000000..b2b1bdda5
> --- /dev/null
> +++ b/arch/riscv/dts/erizo_generic.dts
> @@ -0,0 +1,31 @@
> +#include "erizo.dtsi"
> +#include <dt-bindings/gpio/gpio.h>
> +
> +/ {
> +	model =3D "generic Erizo SoC board";
> +	compatible =3D "miet-riscv-workgroup,erizo-generic-board";
> +
> +	memory {
> +		device_type =3D "memory";
> +		reg =3D <0x80000000 0x00800000>;
> +	};
> +
> +	spi0 {
> +		compatible =3D "spi-gpio";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +		gpio-sck  =3D <&gpio0 0 GPIO_ACTIVE_HIGH>;
> +		gpio-miso =3D <&gpio0 1 GPIO_ACTIVE_HIGH>;
> +		gpio-mosi =3D <&gpio0 2 GPIO_ACTIVE_HIGH>;
> +		cs-gpios  =3D <&gpio0 3 GPIO_ACTIVE_LOW>;
> +		num-chipselects =3D <1>;
> +
> +		m25p128@0 {
> +			compatible =3D "m25p128", "jedec,spi-nor";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +			reg =3D <0>;
> +			spi-max-frequency =3D <1000000>;
> +		};
> +	};
> +};
> diff --git a/arch/riscv/mach-erizo/Kconfig b/arch/riscv/mach-erizo/Kcon=
fig
> new file mode 100644
> index 000000000..2400b4437
> --- /dev/null
> +++ b/arch/riscv/mach-erizo/Kconfig
> @@ -0,0 +1,11 @@
> +if MACH_ERIZO
> +
> +choice
> +	prompt "Board type"
> +
> +config BOARD_ERIZO_GENERIC
> +	bool "erizo generic board"
> +
> +endchoice
> +
> +endif
> diff --git a/arch/riscv/mach-erizo/Makefile b/arch/riscv/mach-erizo/Mak=
efile
> new file mode 100644
> index 000000000..d9c51e74c
> --- /dev/null
> +++ b/arch/riscv/mach-erizo/Makefile
> @@ -0,0 +1,3 @@
> +# just to build a built-in.o. Otherwise compilation fails when no o-fi=
les is
> +# created.
> +obj- +=3D dummy.o
>=20


--=20
Regards,
Oleksij


--xeq5N1JHowpWjhBFVbnuAmIemaNEKOB4M--

--mhFr33QPJtTOwBc4qcj1TgfDSans1ekv0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF4EAREIAAYFAlnOOiAACgkQHwImuRkmbWnSSQD/Rc3s9CHTSxmuuAMtu88fhMPJ
LZVJ5cc8Sz6UAdUgPiUA/1/8yfLj2SIz/DgqSEJhvDfZN1oODHiuFF5lIL493/Y1
=vgnu
-----END PGP SIGNATURE-----

--mhFr33QPJtTOwBc4qcj1TgfDSans1ekv0--


--===============2655536832021414303==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2655536832021414303==--
