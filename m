Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eNiC8-0005Rk-AX
 for barebox@lists.infradead.org; Sat, 09 Dec 2017 16:41:46 +0000
Received: by mail-lf0-x241.google.com with SMTP id l81so14874022lfl.6
 for <barebox@lists.infradead.org>; Sat, 09 Dec 2017 08:41:23 -0800 (PST)
Date: Sat, 9 Dec 2017 19:54:48 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20171209195448.aab27cc3fc8eb0cd1de05611@gmail.com>
In-Reply-To: <20171209095938.30160-4-linux@rempel-privat.de>
References: <20171209095938.30160-1-linux@rempel-privat.de>
 <20171209095938.30160-4-linux@rempel-privat.de>
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
Subject: Re: [PATCH v1 4/4] MIPS: add support for DPTechnics DPT-Module v1
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Sat,  9 Dec 2017 10:59:38 +0100
Oleksij Rempel <linux@rempel-privat.de> wrote:

> This product can be found here:
> https://dptechnics.com/en/products/dpt-module-v1.html
> =

> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  arch/mips/Makefile                                 |  1 +
>  arch/mips/boards/dptechnics-dpt-module/Makefile    |  1 +
>  arch/mips/boards/dptechnics-dpt-module/board.c     |  8 ++
>  .../include/board/board_pbl_start.h                | 20 +++++
>  arch/mips/configs/dptechnics-dpt-module_defconfig  | 89 ++++++++++++++++=
++++++
>  arch/mips/dts/ar9331-dptechnics-dpt-module.dts     | 31 ++++++++
>  arch/mips/mach-ath79/Kconfig                       |  7 ++
>  7 files changed, 157 insertions(+)
>  create mode 100644 arch/mips/boards/dptechnics-dpt-module/Makefile
>  create mode 100644 arch/mips/boards/dptechnics-dpt-module/board.c
>  create mode 100644 arch/mips/boards/dptechnics-dpt-module/include/board/=
board_pbl_start.h
>  create mode 100644 arch/mips/configs/dptechnics-dpt-module_defconfig
>  create mode 100644 arch/mips/dts/ar9331-dptechnics-dpt-module.dts
> =

> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index dd5ceea20..b965a9c17 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -79,6 +79,7 @@ machine-$(CONFIG_MACH_MIPS_AR231X)	:=3D ar231x
>  board-$(CONFIG_BOARD_NETGEAR_WG102)	:=3D netgear-wg102
>  =

>  machine-$(CONFIG_MACH_MIPS_ATH79)	:=3D ath79
> +board-$(CONFIG_BOARC_DPTECHNICS_DPT_MODULE)	:=3D dptechnics-dpt-module
>  board-$(CONFIG_BOARD_TPLINK_MR3020)	:=3D tplink-mr3020
>  board-$(CONFIG_BOARD_TPLINK_WDR4300)	:=3D tplink-wdr4300
>  board-$(CONFIG_BOARD_BLACK_SWIFT)	:=3D black-swift
> diff --git a/arch/mips/boards/dptechnics-dpt-module/Makefile b/arch/mips/=
boards/dptechnics-dpt-module/Makefile
> new file mode 100644
> index 000000000..dcfc2937d
> --- /dev/null
> +++ b/arch/mips/boards/dptechnics-dpt-module/Makefile
> @@ -0,0 +1 @@
> +obj-y +=3D board.o
> diff --git a/arch/mips/boards/dptechnics-dpt-module/board.c b/arch/mips/b=
oards/dptechnics-dpt-module/board.c
> new file mode 100644
> index 000000000..7ec7ef8a5
> --- /dev/null
> +++ b/arch/mips/boards/dptechnics-dpt-module/board.c
> @@ -0,0 +1,8 @@
> +#include <common.h>
> +#include <init.h>
> +
> +static int dummy_init(void)
> +{
> +	return 0;
> +}
> +postcore_initcall(dummy_init);


Do we really need this dummy_init()?


> diff --git a/arch/mips/boards/dptechnics-dpt-module/include/board/board_p=
bl_start.h b/arch/mips/boards/dptechnics-dpt-module/include/board/board_pbl=
_start.h
> new file mode 100644
> index 000000000..9d6b1b86b
> --- /dev/null
> +++ b/arch/mips/boards/dptechnics-dpt-module/include/board/board_pbl_star=
t.h
> @@ -0,0 +1,20 @@
> +/*
> + * Copyright (C) 2017 Oleksij Rempel <linux@rempel-privat.de>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + */
> +
> +#include <asm/pbl_macros.h>
> +#include <mach/pbl_macros.h>
> +#include <asm/pbl_nmon.h>
> +
> +	.macro	board_pbl_start
> +	.set	push
> +	.set	noreorder
> +
> +	ar9331_pbl_generic_start
> +
> +	.set	pop
> +	.endm
> diff --git a/arch/mips/configs/dptechnics-dpt-module_defconfig b/arch/mip=
s/configs/dptechnics-dpt-module_defconfig
> new file mode 100644
> index 000000000..dbad08fe6
> --- /dev/null
> +++ b/arch/mips/configs/dptechnics-dpt-module_defconfig
> @@ -0,0 +1,89 @@
> +CONFIG_BUILTIN_DTB=3Dy
> +CONFIG_BUILTIN_DTB_NAME=3D"ar9331-dptechnics-dpt-module"
> +CONFIG_MACH_MIPS_ATH79=3Dy
> +CONFIG_BOARC_QCA_AR9331_GENERIC=3Dy
> +CONFIG_PBL_IMAGE=3Dy
> +CONFIG_IMAGE_COMPRESSION_XZKERN=3Dy
> +CONFIG_MMU=3Dy
> +CONFIG_TEXT_BASE=3D0x82000000
> +CONFIG_MALLOC_TLSF=3Dy
> +CONFIG_HUSH_FANCY_PROMPT=3Dy
> +CONFIG_CMDLINE_EDITING=3Dy
> +CONFIG_AUTO_COMPLETE=3Dy
> +CONFIG_CONSOLE_RATP=3Dy
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=3Dy
> +CONFIG_RESET_SOURCE=3Dy
> +CONFIG_CMD_DMESG=3Dy
> +CONFIG_LONGHELP=3Dy
> +CONFIG_CMD_IOMEM=3Dy
> +CONFIG_CMD_IMD=3Dy
> +CONFIG_CMD_MEMINFO=3Dy
> +CONFIG_CMD_GO=3Dy
> +CONFIG_CMD_LOADB=3Dy
> +CONFIG_CMD_LOADY=3Dy
> +CONFIG_CMD_RESET=3Dy
> +CONFIG_CMD_EXPORT=3Dy
> +CONFIG_CMD_DEFAULTENV=3Dy
> +CONFIG_CMD_LOADENV=3Dy
> +CONFIG_CMD_MAGICVAR=3Dy
> +CONFIG_CMD_MAGICVAR_HELP=3Dy
> +CONFIG_CMD_SAVEENV=3Dy
> +CONFIG_CMD_SHA1SUM=3Dy
> +CONFIG_CMD_UNCOMPRESS=3Dy
> +CONFIG_CMD_LET=3Dy
> +CONFIG_CMD_MSLEEP=3Dy
> +CONFIG_CMD_READF=3Dy
> +CONFIG_CMD_SLEEP=3Dy
> +CONFIG_CMD_DHCP=3Dy
> +CONFIG_CMD_HOST=3Dy
> +CONFIG_CMD_MIITOOL=3Dy
> +CONFIG_CMD_PING=3Dy
> +CONFIG_CMD_ECHO_E=3Dy
> +CONFIG_CMD_EDIT=3Dy
> +CONFIG_CMD_READLINE=3Dy
> +CONFIG_CMD_TIMEOUT=3Dy
> +CONFIG_CMD_CRC=3Dy
> +CONFIG_CMD_MEMTEST=3Dy
> +CONFIG_CMD_MM=3Dy
> +CONFIG_CMD_CLK=3Dy
> +CONFIG_CMD_DETECT=3Dy
> +CONFIG_CMD_FLASH=3Dy
> +CONFIG_CMD_GPIO=3Dy
> +CONFIG_CMD_LED=3Dy
> +CONFIG_CMD_POWEROFF=3Dy
> +CONFIG_CMD_SPI=3Dy
> +CONFIG_CMD_LED_TRIGGER=3Dy
> +CONFIG_CMD_WD=3Dy
> +CONFIG_CMD_BAREBOX_UPDATE=3Dy
> +CONFIG_CMD_OF_NODE=3Dy
> +CONFIG_CMD_OF_PROPERTY=3Dy
> +CONFIG_CMD_OFTREE=3Dy
> +CONFIG_CMD_TIME=3Dy
> +CONFIG_NET=3Dy
> +CONFIG_NET_NFS=3Dy
> +CONFIG_NET_NETCONSOLE=3Dy
> +CONFIG_NET_SNTP=3Dy
> +CONFIG_OFDEVICE=3Dy
> +CONFIG_OF_BAREBOX_DRIVERS=3Dy
> +CONFIG_OF_BAREBOX_ENV_IN_FS=3Dy
> +CONFIG_DRIVER_SERIAL_AR933X=3Dy
> +CONFIG_DRIVER_NET_AG71XX=3Dy
> +CONFIG_AR8327N_PHY=3Dy
> +CONFIG_AT803X_PHY=3Dy
> +CONFIG_MDIO_BITBANG=3Dy
> +CONFIG_MDIO_GPIO=3Dy
> +CONFIG_DRIVER_SPI_ATH79=3Dy
> +CONFIG_MTD=3Dy
> +# CONFIG_MTD_OOB_DEVICE is not set
> +CONFIG_MTD_M25P80=3Dy
> +CONFIG_LED=3Dy
> +CONFIG_LED_GPIO=3Dy
> +CONFIG_LED_GPIO_OF=3Dy
> +CONFIG_LED_TRIGGERS=3Dy
> +CONFIG_WATCHDOG=3Dy
> +CONFIG_WATCHDOG_AR9344=3Dy
> +CONFIG_FS_TFTP=3Dy
> +CONFIG_FS_NFS=3Dy
> +CONFIG_FS_RATP=3Dy
> +CONFIG_DIGEST_SHA224_GENERIC=3Dy
> +CONFIG_DIGEST_SHA256_GENERIC=3Dy
> diff --git a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts b/arch/mips/d=
ts/ar9331-dptechnics-dpt-module.dts
> new file mode 100644
> index 000000000..39eb36600
> --- /dev/null
> +++ b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
> @@ -0,0 +1,31 @@
> +#include <mips/qca/ar9331_dpt_module.dts>
> +#include "ar9331.dtsi"
> +
> +/ {
> +	aliases {
> +		spiflash =3D &spiflash;
> +	};
> +
> +	chosen {
> +		environment@0 {
> +			compatible =3D "barebox,environment";
> +			device-path =3D &spiflash, "partname:barebox-environment";
> +		};
> +	};
> +};
> +
> +&spiflash {
> +	partition@0 {
> +		label =3D "barebox";
> +		reg =3D <0 0x80000>;
> +	};
> +
> +	partition@80000 {
> +		label =3D "barebox-environment";
> +		reg =3D <0x80000 0x10000>;
> +	};
> +};
> +
> +&mac0 {
> +	status =3D "okay";
> +};
> diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
> index 9fec00c98..4655ce890 100644
> --- a/arch/mips/mach-ath79/Kconfig
> +++ b/arch/mips/mach-ath79/Kconfig
> @@ -13,6 +13,13 @@ config SOC_QCA_AR9344
>  choice
>  	prompt "Board type"
>  =

> +config BOARC_DPTECHNICS_DPT_MODULE
> +	bool "DPTechnics DPT-Module"
> +	select SOC_QCA_AR9331
> +	select HAVE_PBL_IMAGE
> +	select HAVE_IMAGE_COMPRESSION
> +	select HAS_NMON
> +
>  config BOARD_TPLINK_MR3020
>  	bool "TP-LINK MR3020"
>  	select SOC_QCA_AR9331
> -- =

> 2.14.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
