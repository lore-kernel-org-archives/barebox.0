Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ddH9d-0001er-8W
 for barebox@lists.infradead.org; Thu, 03 Aug 2017 14:31:16 +0000
Received: from [192.168.1.241] ([31.18.251.132]) by mail.gmx.com (mrgmx103
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0LaGfK-1dFjyb2aHG-00m3OJ for
 <barebox@lists.infradead.org>; Thu, 03 Aug 2017 16:30:47 +0200
References: <20170801180621.25325-1-linux@rempel-privat.de>
 <20170801180621.25325-4-linux@rempel-privat.de>
From: Oleksij Rempel <fishor@gmx.net>
Message-ID: <7935865f-204f-e965-60ac-51f7d59259ac@gmx.net>
Date: Thu, 3 Aug 2017 16:30:36 +0200
MIME-Version: 1.0
In-Reply-To: <20170801180621.25325-4-linux@rempel-privat.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6682813395363754338=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 3/3] MIPS: ath79: add TP-Link WDR4300 board support
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6682813395363754338==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="v6uebn9oV8wdwuJ91DUw9pB2wwHkBCvOk"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--v6uebn9oV8wdwuJ91DUw9pB2wwHkBCvOk
Content-Type: multipart/mixed; boundary="B8f3KuGa92TxScw1K9j3FfwNDomn2xEok";
 protected-headers="v1"
From: Oleksij Rempel <fishor@gmx.net>
To: barebox@lists.infradead.org
Message-ID: <7935865f-204f-e965-60ac-51f7d59259ac@gmx.net>
Subject: Re: [PATCH v1 3/3] MIPS: ath79: add TP-Link WDR4300 board support
References: <20170801180621.25325-1-linux@rempel-privat.de>
 <20170801180621.25325-4-linux@rempel-privat.de>
In-Reply-To: <20170801180621.25325-4-linux@rempel-privat.de>

--B8f3KuGa92TxScw1K9j3FfwNDomn2xEok
Content-Type: text/plain; charset=utf-8
Content-Language: ru
Content-Transfer-Encoding: quoted-printable

Am 01.08.2017 um 20:06 schrieb Oleksij Rempel:
> This provides low level initialization of pll and ddr2. Resulting binar=
y
> should work from SRAM, DDR2 and SPI flash. If started from DDR2 RAM
> level initialization will skipped.
>=20
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  arch/mips/Makefile                                 |  1 +
>  arch/mips/boards/tplink-wdr4300/Makefile           |  1 +
>  arch/mips/boards/tplink-wdr4300/board.c            | 28 ++++++++++
>  .../tplink-wdr4300/include/board/board_pbl_start.h | 62 ++++++++++++++=
++++++++
>  arch/mips/configs/tplink-wdr4300_defconfig         | 50 ++++++++++++++=
+++
>  arch/mips/dts/ar9344_tl_wdr3400.dts                | 47 ++++++++++++++=
++
>  arch/mips/mach-ath79/Kconfig                       | 10 ++++
>  7 files changed, 199 insertions(+)
>  create mode 100644 arch/mips/boards/tplink-wdr4300/Makefile
>  create mode 100644 arch/mips/boards/tplink-wdr4300/board.c
>  create mode 100644 arch/mips/boards/tplink-wdr4300/include/board/board=
_pbl_start.h
>  create mode 100644 arch/mips/configs/tplink-wdr4300_defconfi
>  create mode 100644 arch/mips/dts/ar9344_tl_wdr3400.dts

DTS file has wrong name. Should be wdr4300 instead of wdr3400


> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index 75761b5e7..dd5ceea20 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -80,6 +80,7 @@ board-$(CONFIG_BOARD_NETGEAR_WG102)	:=3D netgear-wg10=
2
> =20
>  machine-$(CONFIG_MACH_MIPS_ATH79)	:=3D ath79
>  board-$(CONFIG_BOARD_TPLINK_MR3020)	:=3D tplink-mr3020
> +board-$(CONFIG_BOARD_TPLINK_WDR4300)	:=3D tplink-wdr4300
>  board-$(CONFIG_BOARD_BLACK_SWIFT)	:=3D black-swift
> =20
>  machine-$(CONFIG_MACH_MIPS_BCM47XX)	:=3D bcm47xx
> diff --git a/arch/mips/boards/tplink-wdr4300/Makefile b/arch/mips/board=
s/tplink-wdr4300/Makefile
> new file mode 100644
> index 000000000..dcfc2937d
> --- /dev/null
> +++ b/arch/mips/boards/tplink-wdr4300/Makefile
> @@ -0,0 +1 @@
> +obj-y +=3D board.o
> diff --git a/arch/mips/boards/tplink-wdr4300/board.c b/arch/mips/boards=
/tplink-wdr4300/board.c
> new file mode 100644
> index 000000000..d6126fcb6
> --- /dev/null
> +++ b/arch/mips/boards/tplink-wdr4300/board.c
> @@ -0,0 +1,28 @@
> +/*
> + * Copyright (C) 2017 Oleksij Rempel <o.rempel@pengutronix.de>
> + * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
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
> +#include <init.h>
> +
> +static int model_hostname_init(void)
> +{
> +	barebox_set_hostname("wdr4300");
> +
> +	return 0;
> +}
> +postcore_initcall(model_hostname_init);
> diff --git a/arch/mips/boards/tplink-wdr4300/include/board/board_pbl_st=
art.h b/arch/mips/boards/tplink-wdr4300/include/board/board_pbl_start.h
> new file mode 100644
> index 000000000..7d4ee4bab
> --- /dev/null
> +++ b/arch/mips/boards/tplink-wdr4300/include/board/board_pbl_start.h
> @@ -0,0 +1,62 @@
> +/*
> + * Copyright (C) 2017 Oleksij Rempel <o.rempel@pengutronix.de>
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
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <mach/debug_ll_ar9344.h>
> +#include <asm/pbl_macros.h>
> +#include <mach/pbl_macros.h>
> +#include <mach/pbl_ll_init_ar9344_1.1.h>
> +#include <asm/pbl_nmon.h>
> +
> +	.macro	board_pbl_start
> +	.set	push
> +	.set	noreorder
> +
> +	mips_barebox_10h
> +
> +	debug_ll_ar9344_init
> +
> +	debug_ll_outc '1'
> +
> +	hornet_mips24k_cp0_setup
> +	debug_ll_outc '2'
> +
> +	/* test if we are in the SRAM */
> +	pbl_blt 0xbd000000 1f t8
> +	debug_ll_outc '3'
> +	b skip_flash_test
> +	nop
> +1:
> +	/* test if we are in the flash */
> +	pbl_blt 0xbf000000 skip_pll_ram_config t8
> +	debug_ll_outc '4'
> +skip_flash_test:
> +
> +	pbl_ar9344_v11_pll_config
> +	debug_ll_outc '5'
> +
> +	pbl_ar9344_v11_ddr2_config
> +
> +skip_pll_ram_config:
> +	debug_ll_outc '6'
> +	debug_ll_outnl
> +
> +	mips_nmon
> +
> +	copy_to_link_location	pbl_start
> +
> +	.set	pop
> +	.endm
> diff --git a/arch/mips/configs/tplink-wdr4300_defconfig b/arch/mips/con=
figs/tplink-wdr4300_defconfig
> new file mode 100644
> index 000000000..9114b86db
> --- /dev/null
> +++ b/arch/mips/configs/tplink-wdr4300_defconfig
> @@ -0,0 +1,50 @@
> +CONFIG_BUILTIN_DTB=3Dy
> +CONFIG_BUILTIN_DTB_NAME=3D"ar9344_tl_wdr3400"
> +CONFIG_MACH_MIPS_ATH79=3Dy
> +CONFIG_BOARD_TPLINK_WDR4300=3Dy
> +CONFIG_PBL_IMAGE=3Dy
> +CONFIG_IMAGE_COMPRESSION_XZKERN=3Dy
> +CONFIG_MMU=3Dy
> +CONFIG_TEXT_BASE=3D0xbfc00000
> +CONFIG_MALLOC_TLSF=3Dy
> +CONFIG_CMDLINE_EDITING=3Dy
> +CONFIG_AUTO_COMPLETE=3Dy
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=3Dy
> +CONFIG_DEBUG_INFO=3Dy
> +CONFIG_DEBUG_LL=3Dy
> +CONFIG_DEBUG_INITCALLS=3Dy
> +CONFIG_LONGHELP=3Dy
> +CONFIG_CMD_IOMEM=3Dy
> +CONFIG_CMD_MEMINFO=3Dy
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=3Dy
> +# CONFIG_CMD_BOOTM is not set
> +CONFIG_CMD_GO=3Dy
> +CONFIG_CMD_LOADB=3Dy
> +CONFIG_CMD_LOADY=3Dy
> +CONFIG_CMD_RESET=3Dy
> +CONFIG_CMD_SHA1SUM=3Dy
> +CONFIG_CMD_LET=3Dy
> +CONFIG_CMD_SLEEP=3Dy
> +CONFIG_CMD_EDIT=3Dy
> +CONFIG_CMD_MM=3Dy
> +CONFIG_CMD_CLK=3Dy
> +CONFIG_CMD_FLASH=3Dy
> +CONFIG_CMD_GPIO=3Dy
> +CONFIG_CMD_LED=3Dy
> +CONFIG_CMD_SPI=3Dy
> +CONFIG_CMD_LED_TRIGGER=3Dy
> +CONFIG_CMD_OF_NODE=3Dy
> +CONFIG_CMD_OF_PROPERTY=3Dy
> +CONFIG_CMD_OFTREE=3Dy
> +CONFIG_OFDEVICE=3Dy
> +CONFIG_DRIVER_SERIAL_NS16550=3Dy
> +CONFIG_DRIVER_SPI_ATH79=3Dy
> +CONFIG_MTD=3Dy
> +# CONFIG_MTD_OOB_DEVICE is not set
> +CONFIG_MTD_M25P80=3Dy
> +CONFIG_LED=3Dy
> +CONFIG_LED_GPIO=3Dy
> +CONFIG_LED_GPIO_OF=3Dy
> +CONFIG_LED_TRIGGERS=3Dy
> +CONFIG_DIGEST_SHA224_GENERIC=3Dy
> +CONFIG_DIGEST_SHA256_GENERIC=3Dy
> diff --git a/arch/mips/dts/ar9344_tl_wdr3400.dts b/arch/mips/dts/ar9344=
_tl_wdr3400.dts
> new file mode 100644
> index 000000000..825b4820d
> --- /dev/null
> +++ b/arch/mips/dts/ar9344_tl_wdr3400.dts
> @@ -0,0 +1,47 @@
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "ar9344.dtsi"
> +
> +/ {
> +	model =3D "TP-Link WDR4300";
> +	compatible =3D "tplink,tl-wdr4300";
> +
> +	aliases {
> +		serial0 =3D &uart0;
> +	};
> +
> +	memory@0 {
> +		device_type =3D "memory";
> +		reg =3D <0x0 0x8000000>;
> +	};
> +
> +	chosen {
> +		stdout-path =3D &uart0;
> +	};
> +};
> +
> +&ref {
> +	clock-frequency =3D <40000000>;
> +};
> +
> +&uart0 {
> +	status =3D "okay";
> +	clock-frequency =3D <40000000>;
> +};
> +
> +&spi {
> +	num-chipselects =3D <1>;
> +	status =3D "okay";
> +
> +	/* Winbond W25Q64CV SPI flash */
> +	spiflash: w25q64cv@0 {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		compatible =3D "winbond,w25q64cv", "jedec,spi-nor";
> +		spi-max-frequency =3D <104000000>;
> +		reg =3D <0>;
> +	};
> +};
> diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfi=
g
> index f2eae2532..9fec00c98 100644
> --- a/arch/mips/mach-ath79/Kconfig
> +++ b/arch/mips/mach-ath79/Kconfig
> @@ -7,6 +7,9 @@ config ARCH_TEXT_BASE
>  config SOC_QCA_AR9331
>  	bool
> =20
> +config SOC_QCA_AR9344
> +	bool
> +
>  choice
>  	prompt "Board type"
> =20
> @@ -17,6 +20,13 @@ config BOARD_TPLINK_MR3020
>  	select HAVE_IMAGE_COMPRESSION
>  	select HAS_NMON
> =20
> +config BOARD_TPLINK_WDR4300
> +	bool "TP-LINK WDR4300"
> +	select SOC_QCA_AR9344
> +	select HAVE_PBL_IMAGE
> +	select HAVE_IMAGE_COMPRESSION
> +	select HAS_NMON
> +
>  config BOARD_BLACK_SWIFT
>  	bool "Black Swift"
>  	select SOC_QCA_AR9331
>=20



--B8f3KuGa92TxScw1K9j3FfwNDomn2xEok--

--v6uebn9oV8wdwuJ91DUw9pB2wwHkBCvOk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iG4EAREIABYFAlmDM5EPHGZpc2hvckBnbXgubmV0AAoJEB8CJrkZJm1p6YsBAJka
eMJt71PBJxRe+XCkH1Jvw5qVA3eii7zp87/cMACFAP4vZsMPKRXjOb5arzgChFNG
iJzqHPeH0r5g9JaYH4q4FQ==
=A3hS
-----END PGP SIGNATURE-----

--v6uebn9oV8wdwuJ91DUw9pB2wwHkBCvOk--


--===============6682813395363754338==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6682813395363754338==--
