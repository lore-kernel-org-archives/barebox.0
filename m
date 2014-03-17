Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPRcl-0001MS-KI
 for barebox@lists.infradead.org; Mon, 17 Mar 2014 07:06:17 +0000
Date: Mon, 17 Mar 2014 08:05:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140317070553.GG17250@pengutronix.de>
References: <1394958444-32489-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1394958444-32489-1-git-send-email-shc_work@mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: i.MX27: dts: Separate barebox-specific DT changes
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Mar 16, 2014 at 12:27:24PM +0400, Alexander Shiyan wrote:
> To ease DT import from Linux, which is still maintained in-tree, we
> separate barebox-specific changes by including the original dts in
> a separate DT file. This allows to overlay modifications and keep
> clean DT history. Additionally, this patch updates i.MX27 DTS tree.
> =

> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/dts/Makefile                          |   3 +-
>  arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts |  38 +++++++
>  arch/arm/dts/imx27-phytec-phycard-s-rdk.dts    |  39 +++++--
>  arch/arm/dts/imx27-phytec-phycard-s-som.dts    | 102 -----------------
>  arch/arm/dts/imx27-phytec-phycard-s-som.dtsi   | 103 +++++++++++++++++
>  arch/arm/dts/imx27-pingrp.h                    | 151 -------------------=
------
>  arch/arm/dts/imx27.dtsi                        |  59 +++++++++-
>  7 files changed, 229 insertions(+), 266 deletions(-)
>  create mode 100644 arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
>  delete mode 100644 arch/arm/dts/imx27-phytec-phycard-s-som.dts
>  create mode 100644 arch/arm/dts/imx27-phytec-phycard-s-som.dtsi
>  delete mode 100644 arch/arm/dts/imx27-pingrp.h
> =

> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 6bac3b9..8ba31b1 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -3,8 +3,7 @@ dtb-$(CONFIG_ARCH_AM33XX) +=3D \
>  	am335x-boneblack.dtb \
>  	am335x-phytec-phycore.dtb
>  dtb-$(CONFIG_ARCH_IMX25) +=3D imx25-karo-tx25.dtb
> -dtb-$(CONFIG_ARCH_IMX27) +=3D imx27-phytec-phycard-s-rdk.dtb \
> -	imx27-phytec-phycard-s-som.dtb
> +dtb-$(CONFIG_ARCH_IMX27) +=3D imx27-phytec-phycard-s-rdk-bb.dtb
>  dtb-$(CONFIG_ARCH_IMX51) +=3D imx51-babbage.dtb \
>  	imx51-genesi-efika-sb.dtb
>  dtb-$(CONFIG_ARCH_IMX53) +=3D imx53-mba53.dtb \
> diff --git a/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts b/arch/arm/dt=
s/imx27-phytec-phycard-s-rdk-bb.dts
> new file mode 100644
> index 0000000..cecfc5a
> --- /dev/null
> +++ b/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
> @@ -0,0 +1,38 @@
> +/*
> + * Barebox specific DT overlay for Phytec PCA100 RDK
> + */
> +
> +#include "imx27-phytec-phycard-s-rdk.dts"
> +
> +/ {
> +	chosen {
> +		linux,stdout-path =3D &uart1;
> +
> +		environment@0 {
> +			compatible =3D "barebox,environment";
> +			device-path =3D &nfc, "partname:environment";
> +		};
> +	};
> +};
> +
> +&nfc {
> +	partition@0 {
> +		label =3D "boot";
> +		reg =3D <0x0 0x80000>;
> +	};
> +
> +	partition@1 {
> +		label =3D "environment";
> +		reg =3D <0x80000 0x80000>;
> +	};
> +
> +	partition@2 {
> +		label =3D "kernel";
> +		reg =3D <0x100000 0x400000>;
> +	};
> +
> +	partition@3 {
> +		label =3D "root";
> +		reg =3D <0x500000 0x7b00000>;
> +	};
> +};
> diff --git a/arch/arm/dts/imx27-phytec-phycard-s-rdk.dts b/arch/arm/dts/i=
mx27-phytec-phycard-s-rdk.dts
> index fb2b874..3c3964a 100644
> --- a/arch/arm/dts/imx27-phytec-phycard-s-rdk.dts
> +++ b/arch/arm/dts/imx27-phytec-phycard-s-rdk.dts
> @@ -9,7 +9,7 @@
>   * http://www.gnu.org/copyleft/gpl.html
>   */
>  =

> -#include "imx27-phytec-phycard-s-som.dts"
> +#include "imx27-phytec-phycard-s-som.dtsi"
>  =

>  / {
>  	model =3D "Phytec pca100 rapid development kit";
> @@ -76,35 +76,54 @@
>  &iomuxc {
>  	imx27-phycard-s-rdk {
>  		pinctrl_i2c1: i2c1grp {
> -			fsl,pins =3D <MX27_I2C2_PINGRP1>;
> +			fsl,pins =3D <
> +				MX27_PAD_I2C2_SDA__I2C2_SDA 0x0
> +				MX27_PAD_I2C2_SCL__I2C2_SCL 0x0
> +			>;
>  		};
>  =

>  		pinctrl_owire1: owire1grp {
> -			fsl,pins =3D <MX27_OWIRE1_PINGRP1>;
> +			fsl,pins =3D <
> +				MX27_PAD_RTCK__OWIRE 0x0
> +			>;
>  		};
>  =

>  		pinctrl_sdhc2: sdhc2grp {
> -			fsl,pins =3D <MX27_SDHC2_PINGRP1>;
> +			fsl,pins =3D <
> +				MX27_PAD_SD2_CLK__SD2_CLK 0x0
> +				MX27_PAD_SD2_CMD__SD2_CMD 0x0
> +				MX27_PAD_SD2_D0__SD2_D0 0x0
> +				MX27_PAD_SD2_D1__SD2_D1 0x0
> +				MX27_PAD_SD2_D2__SD2_D2 0x0
> +				MX27_PAD_SD2_D3__SD2_D3 0x0
> +				MX27_PAD_SSI3_RXDAT__GPIO3_29 0x0 /* CD */
> +			>;
>  		};
>  =

>  		pinctrl_uart1: uart1grp {
>  			fsl,pins =3D <
> -				MX27_UART1_PINGRP1
> -				MX27_UART1_RTSCTS_PINGRP1
> +				MX27_PAD_UART1_TXD__UART1_TXD 0x0
> +				MX27_PAD_UART1_RXD__UART1_RXD 0x0
> +				MX27_PAD_UART1_CTS__UART1_CTS 0x0
> +				MX27_PAD_UART1_RTS__UART1_RTS 0x0
>  			>;
>  		};
>  =

>  		pinctrl_uart2: uart2grp {
>  			fsl,pins =3D <
> -				MX27_UART2_PINGRP1
> -				MX27_UART2_RTSCTS_PINGRP1
> +				MX27_PAD_UART2_TXD__UART2_TXD 0x0
> +				MX27_PAD_UART2_RXD__UART2_RXD 0x0
> +				MX27_PAD_UART2_CTS__UART2_CTS 0x0
> +				MX27_PAD_UART2_RTS__UART2_RTS 0x0
>  			>;
>  		};
>  =

>  		pinctrl_uart3: uart3grp {
>  			fsl,pins =3D <
> -				MX27_UART3_PINGRP1
> -				MX27_UART3_RTSCTS_PINGRP1
> +				MX27_PAD_UART3_TXD__UART3_TXD 0x0
> +				MX27_PAD_UART3_RXD__UART3_RXD 0x0
> +				MX27_PAD_UART3_CTS__UART3_CTS 0x0
> +				MX27_PAD_UART3_RTS__UART3_RTS 0x0
>  			>;
>  		};
>  	};
> diff --git a/arch/arm/dts/imx27-phytec-phycard-s-som.dts b/arch/arm/dts/i=
mx27-phytec-phycard-s-som.dts
> deleted file mode 100644
> index a48d4e1..0000000
> --- a/arch/arm/dts/imx27-phytec-phycard-s-som.dts
> +++ /dev/null
> @@ -1,102 +0,0 @@
> -/*
> - * Copyright 2012 Sascha Hauer, Uwe Kleine-K=F6nig, Steffen Trumtrar
> - * and Markus Pargmann, Pengutronix
> - *
> - * The code contained herein is licensed under the GNU General Public
> - * License. You may obtain a copy of the GNU General Public License
> - * Version 2 or later at the following locations:
> - *
> - * http://www.opensource.org/licenses/gpl-license.html
> - * http://www.gnu.org/copyleft/gpl.html
> - */
> -
> -/dts-v1/;
> -#include "imx27.dtsi"
> -
> -/ {
> -	model =3D "Phytec pca100";
> -	compatible =3D "phytec,imx27-pca100", "fsl,imx27";
> -
> -	chosen {
> -		linux,stdout-path =3D &uart1;
> -
> -		environment@0 {
> -			compatible =3D "barebox,environment";
> -			device-path =3D &nfc, "partname:environment";
> -		};
> -	};
> -
> -	memory {
> -		reg =3D <0xa0000000 0x08000000>; /* 128MB */
> -	};
> -};
> -
> -&cspi1 {
> -	fsl,spi-num-chipselects =3D <2>;
> -	cs-gpios =3D <&gpio4 28 GPIO_ACTIVE_HIGH>,
> -		   <&gpio4 27 GPIO_ACTIVE_HIGH>;
> -	status =3D "okay";
> -};
> -
> -&iomuxc {
> -	imx27-phycard-s-som {
> -		pinctrl_fec1: fec1grp {
> -			fsl,pins =3D <MX27_FEC1_PINGRP1>;
> -		};
> -
> -		pinctrl_i2c2: i2c2grp {
> -			fsl,pins =3D <MX27_I2C2_PINGRP1>;
> -		};
> -
> -		pinctrl_nfc: nfcgrp {
> -			fsl,pins =3D <MX27_NFC_PINGRP1>;
> -		};
> -	};
> -};
> -
> -&fec {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_fec1>;
> -	status =3D "okay";
> -};
> -
> -&i2c2 {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_i2c2>;
> -	status =3D "okay";
> -
> -	at24@52 {
> -		compatible =3D "at,24c32";
> -		pagesize =3D <32>;
> -		reg =3D <0x52>;
> -	};
> -};
> -
> -&nfc {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_nfc>;
> -	nand-bus-width =3D <8>;
> -	nand-ecc-mode =3D "hw";
> -	nand-on-flash-bbt;
> -	status =3D "okay";
> -
> -	partition@0 {
> -		label =3D "boot";
> -		reg =3D <0x0 0x80000>;
> -	};
> -
> -	partition@1 {
> -		label =3D "environment";
> -		reg =3D <0x80000 0x80000>;
> -	};
> -
> -	partition@2 {
> -		label =3D "kernel";
> -		reg =3D <0x100000 0x400000>;
> -	};
> -
> -	partition@3 {
> -		label =3D "root";
> -		reg =3D <0x500000 0x7b00000>;
> -	};
> -};
> diff --git a/arch/arm/dts/imx27-phytec-phycard-s-som.dtsi b/arch/arm/dts/=
imx27-phytec-phycard-s-som.dtsi
> new file mode 100644
> index 0000000..1b62480
> --- /dev/null
> +++ b/arch/arm/dts/imx27-phytec-phycard-s-som.dtsi
> @@ -0,0 +1,103 @@
> +/*
> + * Copyright 2012 Sascha Hauer, Uwe Kleine-K=F6nig, Steffen Trumtrar
> + * and Markus Pargmann, Pengutronix
> + *
> + * The code contained herein is licensed under the GNU General Public
> + * License. You may obtain a copy of the GNU General Public License
> + * Version 2 or later at the following locations:
> + *
> + * http://www.opensource.org/licenses/gpl-license.html
> + * http://www.gnu.org/copyleft/gpl.html
> + */
> +
> +/dts-v1/;
> +#include "imx27.dtsi"
> +
> +/ {
> +	model =3D "Phytec pca100";
> +	compatible =3D "phytec,imx27-pca100", "fsl,imx27";
> +
> +	memory {
> +		reg =3D <0xa0000000 0x08000000>; /* 128MB */
> +	};
> +};
> +
> +&cspi1 {
> +	fsl,spi-num-chipselects =3D <2>;
> +	cs-gpios =3D <&gpio4 28 GPIO_ACTIVE_HIGH>,
> +		   <&gpio4 27 GPIO_ACTIVE_HIGH>;
> +	status =3D "okay";
> +};
> +
> +&fec {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_fec1>;
> +	status =3D "okay";
> +};
> +
> +&i2c2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_i2c2>;
> +	status =3D "okay";
> +
> +	at24@52 {
> +		compatible =3D "at,24c32";
> +		pagesize =3D <32>;
> +		reg =3D <0x52>;
> +	};
> +};
> +
> +&iomuxc {
> +	imx27-phycard-s-som {
> +		pinctrl_fec1: fec1grp {
> +			fsl,pins =3D <
> +				MX27_PAD_SD3_CMD__FEC_TXD0 0x0
> +				MX27_PAD_SD3_CLK__FEC_TXD1 0x0
> +				MX27_PAD_ATA_DATA0__FEC_TXD2 0x0
> +				MX27_PAD_ATA_DATA1__FEC_TXD3 0x0
> +				MX27_PAD_ATA_DATA2__FEC_RX_ER 0x0
> +				MX27_PAD_ATA_DATA3__FEC_RXD1 0x0
> +				MX27_PAD_ATA_DATA4__FEC_RXD2 0x0
> +				MX27_PAD_ATA_DATA5__FEC_RXD3 0x0
> +				MX27_PAD_ATA_DATA6__FEC_MDIO 0x0
> +				MX27_PAD_ATA_DATA7__FEC_MDC 0x0
> +				MX27_PAD_ATA_DATA8__FEC_CRS 0x0
> +				MX27_PAD_ATA_DATA9__FEC_TX_CLK 0x0
> +				MX27_PAD_ATA_DATA10__FEC_RXD0 0x0
> +				MX27_PAD_ATA_DATA11__FEC_RX_DV 0x0
> +				MX27_PAD_ATA_DATA12__FEC_RX_CLK 0x0
> +				MX27_PAD_ATA_DATA13__FEC_COL 0x0
> +				MX27_PAD_ATA_DATA14__FEC_TX_ER 0x0
> +				MX27_PAD_ATA_DATA15__FEC_TX_EN 0x0
> +			>;
> +		};
> +
> +		pinctrl_i2c2: i2c2grp {
> +			fsl,pins =3D <
> +				MX27_PAD_I2C2_SDA__I2C2_SDA 0x0
> +				MX27_PAD_I2C2_SCL__I2C2_SCL 0x0
> +			>;
> +		};
> +
> +		pinctrl_nfc: nfcgrp {
> +			fsl,pins =3D <
> +				MX27_PAD_NFRB__NFRB 0x0
> +				MX27_PAD_NFCLE__NFCLE 0x0
> +				MX27_PAD_NFWP_B__NFWP_B 0x0
> +				MX27_PAD_NFCE_B__NFCE_B 0x0
> +				MX27_PAD_NFALE__NFALE 0x0
> +				MX27_PAD_NFRE_B__NFRE_B 0x0
> +				MX27_PAD_NFWE_B__NFWE_B 0x0
> +			>;
> +		};
> +	};
> +};
> +
> +&nfc {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_nfc>;
> +	nand-bus-width =3D <8>;
> +	nand-ecc-mode =3D "hw";
> +	nand-on-flash-bbt;
> +	status =3D "okay";
> +};
> diff --git a/arch/arm/dts/imx27-pingrp.h b/arch/arm/dts/imx27-pingrp.h
> deleted file mode 100644
> index 57ca02f..0000000
> --- a/arch/arm/dts/imx27-pingrp.h
> +++ /dev/null
> @@ -1,151 +0,0 @@
> -/*
> - * Copyright 2013 Markus Pargmann <mpa@pengutronix.de>, Pengutronix
> - *
> - * The code contained herein is licensed under the GNU General Public
> - * License. You may obtain a copy of the GNU General Public License
> - * Version 2 or later at the following locations:
> - *
> - * http://www.opensource.org/licenses/gpl-license.html
> - * http://www.gnu.org/copyleft/gpl.html
> - */
> -#ifndef __DTS_IMX27_PINGRP_H
> -#define __DTS_IMX27_PINGRP_H
> -
> -#include "imx27-pinfunc.h"
> -
> -#define MX27_CSPI1_PINGRP1 \
> -	MX27_PAD_CSPI1_MISO__CSPI1_MISO 0x0 \
> -	MX27_PAD_CSPI1_MOSI__CSPI1_MOSI 0x0 \
> -	MX27_PAD_CSPI1_SCLK__CSPI1_SCLK 0x0
> -
> -#define MX27_CSPI2_PINGRP1 \
> -	MX27_PAD_CSPI2_MISO__CSPI2_MISO 0x0 \
> -	MX27_PAD_CSPI2_MOSI__CSPI2_MOSI 0x0 \
> -	MX27_PAD_CSPI2_SCLK__CSPI2_SCLK 0x0
> -
> -#define MX27_CSPI3_PINGRP1 \
> -	MX27_PAD_SD1_CLK__CSPI3_SCLK 0x0 \
> -	MX27_PAD_SD1_D0__CSPI3_MISO 0x0 \
> -	MX27_PAD_SD1_CMD__CSPI3_MOSI 0x0
> -
> -#define MX27_FB_PINGRP1 \
> -	MX27_PAD_CLS__CLS 0x0 \
> -	MX27_PAD_CONTRAST__CONTRAST 0x0 \
> -	MX27_PAD_LD0__LD0 0x0 \
> -	MX27_PAD_LD1__LD1 0x0 \
> -	MX27_PAD_LD2__LD2 0x0 \
> -	MX27_PAD_LD3__LD3 0x0 \
> -	MX27_PAD_LD4__LD4 0x0 \
> -	MX27_PAD_LD5__LD5 0x0 \
> -	MX27_PAD_LD6__LD6 0x0 \
> -	MX27_PAD_LD7__LD7 0x0 \
> -	MX27_PAD_LD8__LD8 0x0 \
> -	MX27_PAD_LD9__LD9 0x0 \
> -	MX27_PAD_LD10__LD10 0x0 \
> -	MX27_PAD_LD11__LD11 0x0 \
> -	MX27_PAD_LD12__LD12 0x0 \
> -	MX27_PAD_LD13__LD13 0x0 \
> -	MX27_PAD_LD14__LD14 0x0 \
> -	MX27_PAD_LD15__LD15 0x0 \
> -	MX27_PAD_LD16__LD16 0x0 \
> -	MX27_PAD_LD17__LD17 0x0 \
> -	MX27_PAD_LSCLK__LSCLK 0x0 \
> -	MX27_PAD_OE_ACD__OE_ACD 0x0 \
> -	MX27_PAD_PS__PS 0x0 \
> -	MX27_PAD_REV__REV 0x0 \
> -	MX27_PAD_SPL_SPR__SPL_SPR 0x0 \
> -	MX27_PAD_HSYNC__HSYNC 0x0 \
> -	MX27_PAD_VSYNC__VSYNC 0x0
> -
> -#define MX27_FEC1_PINGRP1 \
> -	MX27_PAD_SD3_CMD__FEC_TXD0 0x0 \
> -	MX27_PAD_SD3_CLK__FEC_TXD1 0x0 \
> -	MX27_PAD_ATA_DATA0__FEC_TXD2 0x0 \
> -	MX27_PAD_ATA_DATA1__FEC_TXD3 0x0 \
> -	MX27_PAD_ATA_DATA2__FEC_RX_ER 0x0 \
> -	MX27_PAD_ATA_DATA3__FEC_RXD1 0x0 \
> -	MX27_PAD_ATA_DATA4__FEC_RXD2 0x0 \
> -	MX27_PAD_ATA_DATA5__FEC_RXD3 0x0 \
> -	MX27_PAD_ATA_DATA6__FEC_MDIO 0x0 \
> -	MX27_PAD_ATA_DATA7__FEC_MDC 0x0 \
> -	MX27_PAD_ATA_DATA8__FEC_CRS 0x0 \
> -	MX27_PAD_ATA_DATA9__FEC_TX_CLK 0x0 \
> -	MX27_PAD_ATA_DATA10__FEC_RXD0 0x0 \
> -	MX27_PAD_ATA_DATA11__FEC_RX_DV 0x0 \
> -	MX27_PAD_ATA_DATA12__FEC_RX_CLK 0x0 \
> -	MX27_PAD_ATA_DATA13__FEC_COL 0x0 \
> -	MX27_PAD_ATA_DATA14__FEC_TX_ER 0x0 \
> -	MX27_PAD_ATA_DATA15__FEC_TX_EN 0x0
> -
> -#define MX27_I2C1_PINGRP1 \
> -	MX27_PAD_I2C_DATA__I2C_DATA 0x0 \
> -	MX27_PAD_I2C_CLK__I2C_CLK 0x0
> -
> -#define MX27_I2C2_PINGRP1 \
> -	MX27_PAD_I2C2_SDA__I2C2_SDA 0x0 \
> -	MX27_PAD_I2C2_SCL__I2C2_SCL 0x0
> -
> -#define MX27_NFC_PINGRP1 \
> -	MX27_PAD_NFRB__NFRB 0x0 \
> -	MX27_PAD_NFCLE__NFCLE 0x0 \
> -	MX27_PAD_NFWP_B__NFWP_B 0x0 \
> -	MX27_PAD_NFCE_B__NFCE_B 0x0 \
> -	MX27_PAD_NFALE__NFALE 0x0 \
> -	MX27_PAD_NFRE_B__NFRE_B 0x0 \
> -	MX27_PAD_NFWE_B__NFWE_B 0x0
> -
> -#define MX27_OWIRE1_PINGRP1 \
> -	MX27_PAD_RTCK__OWIRE 0x0
> -
> -#define MX27_PWM_PINGRP1 \
> -	MX27_PAD_PWMO__PWMO 0x0
> -
> -#define MX27_SDHC1_PINGRP1 \
> -	MX27_PAD_SD1_CLK__SD1_CLK 0x0 \
> -	MX27_PAD_SD1_CMD__SD1_CMD 0x0 \
> -	MX27_PAD_SD1_D0__SD1_D0 0x0 \
> -	MX27_PAD_SD1_D1__SD1_D1 0x0 \
> -	MX27_PAD_SD1_D2__SD1_D2 0x0 \
> -	MX27_PAD_SD1_D3__SD1_D3 0x0
> -
> -#define MX27_SDHC2_PINGRP1 \
> -	MX27_PAD_SD2_CLK__SD2_CLK 0x0 \
> -	MX27_PAD_SD2_CMD__SD2_CMD 0x0 \
> -	MX27_PAD_SD2_D0__SD2_D0 0x0 \
> -	MX27_PAD_SD2_D1__SD2_D1 0x0 \
> -	MX27_PAD_SD2_D2__SD2_D2 0x0 \
> -	MX27_PAD_SD2_D3__SD2_D3 0x0
> -
> -#define MX27_SDHC3_PINGRP1 \
> -	MX27_PAD_SD3_CLK__SD3_CLK 0x0 \
> -	MX27_PAD_SD3_CMD__SD3_CMD 0x0 \
> -	MX27_PAD_SD3_D0__SD3_D0 0x0 \
> -	MX27_PAD_SD3_D1__SD3_D1 0x0 \
> -	MX27_PAD_SD3_D2__SD3_D2 0x0 \
> -	MX27_PAD_SD3_D3__SD3_D3 0x0
> -
> -#define MX27_UART1_PINGRP1 \
> -	MX27_PAD_UART1_TXD__UART1_TXD 0x0 \
> -	MX27_PAD_UART1_RXD__UART1_RXD 0x0
> -
> -#define MX27_UART1_RTSCTS_PINGRP1 \
> -	MX27_PAD_UART1_CTS__UART1_CTS 0x0 \
> -	MX27_PAD_UART1_RTS__UART1_RTS 0x0
> -
> -#define MX27_UART2_PINGRP1 \
> -	MX27_PAD_UART2_TXD__UART2_TXD 0x0 \
> -	MX27_PAD_UART2_RXD__UART2_RXD 0x0
> -
> -#define MX27_UART2_RTSCTS_PINGRP1 \
> -	MX27_PAD_UART2_CTS__UART2_CTS 0x0 \
> -	MX27_PAD_UART2_RTS__UART2_RTS 0x0
> -
> -#define MX27_UART3_PINGRP1 \
> -	MX27_PAD_UART3_TXD__UART3_TXD 0x0 \
> -	MX27_PAD_UART3_RXD__UART3_RXD 0x0
> -
> -#define MX27_UART3_RTSCTS_PINGRP1 \
> -	MX27_PAD_UART3_CTS__UART3_CTS 0x0 \
> -	MX27_PAD_UART3_RTS__UART3_RTS 0x0
> -
> -#endif /* __DTS_IMX27_PINGRP_H */
> diff --git a/arch/arm/dts/imx27.dtsi b/arch/arm/dts/imx27.dtsi
> index 7e98966..83a8247 100644
> --- a/arch/arm/dts/imx27.dtsi
> +++ b/arch/arm/dts/imx27.dtsi
> @@ -10,12 +10,13 @@
>   */
>  =

>  #include "skeleton.dtsi"
> -#include "imx27-pingrp.h"
> +#include "imx27-pinfunc.h"
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/gpio/gpio.h>
>  =

>  / {
>  	aliases {
> +		ethernet0 =3D &fec;
>  		gpio0 =3D &gpio1;
>  		gpio1 =3D &gpio2;
>  		gpio2 =3D &gpio3;
> @@ -70,6 +71,26 @@
>  		};
>  	};
>  =

> +	usbphy {
> +		compatible =3D "simple-bus";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		usbphy0: usbphy@0 {
> +			compatible =3D "usb-nop-xceiv";
> +			reg =3D <0>;
> +			clocks =3D <&clks 75>;
> +			clock-names =3D "main_clk";
> +		};
> +
> +		usbphy2: usbphy@2 {
> +			compatible =3D "usb-nop-xceiv";
> +			reg =3D <2>;
> +			clocks =3D <&clks 75>;
> +			clock-names =3D "main_clk";
> +		};
> +	};
> +
>  	soc {
>  		#address-cells =3D <1>;
>  		#size-cells =3D <1>;
> @@ -439,6 +460,42 @@
>  				iram =3D <&iram>;
>  			};
>  =

> +			usbotg: usb@10024000 {
> +				compatible =3D "fsl,imx27-usb";
> +				reg =3D <0x10024000 0x200>;
> +				interrupts =3D <56>;
> +				clocks =3D <&clks 15>;
> +				fsl,usbmisc =3D <&usbmisc 0>;
> +				fsl,usbphy =3D <&usbphy0>;
> +				status =3D "disabled";
> +			};
> +
> +			usbh1: usb@10024200 {
> +				compatible =3D "fsl,imx27-usb";
> +				reg =3D <0x10024200 0x200>;
> +				interrupts =3D <54>;
> +				clocks =3D <&clks 15>;
> +				fsl,usbmisc =3D <&usbmisc 1>;
> +				status =3D "disabled";
> +			};
> +
> +			usbh2: usb@10024400 {
> +				compatible =3D "fsl,imx27-usb";
> +				reg =3D <0x10024400 0x200>;
> +				interrupts =3D <55>;
> +				clocks =3D <&clks 15>;
> +				fsl,usbmisc =3D <&usbmisc 2>;
> +				fsl,usbphy =3D <&usbphy2>;
> +				status =3D "disabled";
> +			};
> +
> +			usbmisc: usbmisc@10024600 {
> +				#index-cells =3D <1>;
> +				compatible =3D "fsl,imx27-usbmisc";
> +				reg =3D <0x10024600 0x200>;
> +				clocks =3D <&clks 62>;
> +			};
> +
>  			sahara2: sahara@10025000 {
>  				compatible =3D "fsl,imx27-sahara";
>  				reg =3D <0x10025000 0x1000>;
> -- =

> 1.8.3.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
