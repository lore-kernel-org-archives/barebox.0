Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6AsC-0008Sg-6g
 for barebox@lists.infradead.org; Wed, 11 Apr 2018 08:12:59 +0000
Date: Wed, 11 Apr 2018 10:12:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180411081240.st6jjhg2vzq7g3gc@pengutronix.de>
References: <1522934149.24545.3.camel@googlemail.com>
 <1523274839.3785.25.camel@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1523274839.3785.25.camel@googlemail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] ARM: Add Advantech imx6 board support
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 09, 2018 at 01:53:59PM +0200, Christoph Fritz wrote:
> Add support for Advantech i.MX6 SOM named ROM-7421.
> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> ---
> Changes since v0:
>  - distinguish between MMC environment names in pr_notice() board.c
>  - rework eMMC partition layout and don't use its hw-bootpartition for now
>  - purge writing clock registers
>  - rework and simplify lowlevel.c init and use imx6q_barebox_entry(fdt)
>  - s/linux,stdout-path/stdout-path in dts
>  - rework and simplify spi nor partition layout
>  - remove additional pinctrl subnode from dts
>  - remove setting of explicit ARCH_TEXT_BASE in Kconfig
>  - use bitop Macro for ar8035_phy_fixup()
>  - use imx_setup_pad() for early debug uart
> ---

Applied, thanks

Sascha

>  arch/arm/boards/Makefile                           |   1 +
>  arch/arm/boards/advantech-mx6/Makefile             |   2 +
>  arch/arm/boards/advantech-mx6/board.c              | 101 +++++++++
>  .../flash-header-advantech-rom-7421.imxcfg         |  66 ++++++
>  arch/arm/boards/advantech-mx6/lowlevel.c           |  56 +++++
>  arch/arm/configs/imx_v7_defconfig                  |   1 +
>  arch/arm/dts/Makefile                              |   1 +
>  arch/arm/dts/imx6dl-advantech-rom-7421.dts         | 225 +++++++++++++++++++++
>  arch/arm/mach-imx/Kconfig                          |   5 +
>  images/Makefile.imx                                |   5 +
>  10 files changed, 463 insertions(+)
>  create mode 100644 arch/arm/boards/advantech-mx6/Makefile
>  create mode 100644 arch/arm/boards/advantech-mx6/board.c
>  create mode 100644 arch/arm/boards/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
>  create mode 100644 arch/arm/boards/advantech-mx6/lowlevel.c
>  create mode 100755 arch/arm/dts/imx6dl-advantech-rom-7421.dts
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index ca187cc..521f37d 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -1,4 +1,5 @@
>  # keep sorted by CONFIG_* macro name.
> +obj-$(CONFIG_MACH_ADVANTECH_ROM_742X)		+= advantech-mx6/
>  obj-$(CONFIG_MACH_AFI_GF)			+= afi-gf/
>  obj-$(CONFIG_MACH_ANIMEO_IP)			+= animeo_ip/
>  obj-$(CONFIG_MACH_ARCHOSG9)			+= archosg9/
> diff --git a/arch/arm/boards/advantech-mx6/Makefile b/arch/arm/boards/advantech-mx6/Makefile
> new file mode 100644
> index 0000000..01c7a25
> --- /dev/null
> +++ b/arch/arm/boards/advantech-mx6/Makefile
> @@ -0,0 +1,2 @@
> +obj-y += board.o
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/advantech-mx6/board.c b/arch/arm/boards/advantech-mx6/board.c
> new file mode 100644
> index 0000000..4a30a84
> --- /dev/null
> +++ b/arch/arm/boards/advantech-mx6/board.c
> @@ -0,0 +1,101 @@
> +/*
> + * Copyright (C) 2018 Christoph Fritz <chf.fritz@googlemail.com>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
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
> +#include <platform_data/eth-fec.h>
> +#include <bootsource.h>
> +#include <mach/bbu.h>
> +
> +static int ar8035_phy_fixup(struct phy_device *dev)
> +{
> +	u16 val;
> +
> +	/* Ar803x phy SmartEEE feature cause link status generates glitch,
> +	 * which cause ethernet link down/up issue, so disable SmartEEE
> +	 */
> +	phy_write(dev, 0xd, 0x3);
> +	phy_write(dev, 0xe, 0x805d);
> +	phy_write(dev, 0xd, 0x4003);
> +
> +	val = phy_read(dev, 0xe);
> +	phy_write(dev, 0xe, val & ~BIT(8));
> +
> +	/* To enable AR8031 ouput a 125MHz clk from CLK_25M */
> +	phy_write(dev, 0xd, 0x7);
> +	phy_write(dev, 0xe, 0x8016);
> +	phy_write(dev, 0xd, 0x4007);
> +
> +	val = phy_read(dev, 0xe);
> +	val &= 0xffe3;
> +	val |= 0x18;
> +	phy_write(dev, 0xe, val);
> +
> +	/* introduce tx clock delay */
> +	phy_write(dev, 0x1d, 0x5);
> +	val = phy_read(dev, 0x1e);
> +	val |= 0x0100;
> +	phy_write(dev, 0x1e, val);
> +
> +	return 0;
> +}
> +
> +static int advantech_mx6_devices_init(void)
> +{
> +	int ret;
> +	char *environment_path, *envdev;
> +
> +	if (!of_machine_is_compatible("advantech,imx6dl-rom-7421"))
> +		return 0;
> +
> +	phy_register_fixup_for_uid(0x004dd072, 0xffffffef, ar8035_phy_fixup);
> +
> +	switch (bootsource_get()) {
> +	case BOOTSOURCE_MMC:
> +		environment_path = basprintf("/chosen/environment-sd%d",
> +					     bootsource_get_instance() + 1);
> +		if (bootsource_get_instance() + 1 == 4)
> +			envdev = "eMMC";
> +		else if (bootsource_get_instance() + 1 == 2)
> +			envdev = "microSD";
> +		else
> +			envdev = "MMC";
> +		break;
> +	case BOOTSOURCE_SPI:
> +		envdev = "SPI";
> +		environment_path = basprintf("/chosen/environment-spi");
> +		break;
> +	default:
> +		environment_path = basprintf("/chosen/environment-sd4");
> +		envdev = "MMC";
> +		break;
> +	}
> +
> +	if (environment_path) {
> +		ret = of_device_enable_path(environment_path);
> +		if (ret < 0)
> +			pr_warn("Failed to enable env partition '%s' (%d)\n",
> +				environment_path, ret);
> +		free(environment_path);
> +	}
> +
> +	pr_notice("Using environment in %s\n", envdev);
> +
> +	imx6_bbu_internal_mmc_register_handler("mmc3", "/dev/mmc3",
> +						BBU_HANDLER_FLAG_DEFAULT);
> +
> +	return 0;
> +}
> +device_initcall(advantech_mx6_devices_init);
> diff --git a/arch/arm/boards/advantech-mx6/flash-header-advantech-rom-7421.imxcfg b/arch/arm/boards/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
> new file mode 100644
> index 0000000..996ecc7
> --- /dev/null
> +++ b/arch/arm/boards/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
> @@ -0,0 +1,66 @@
> +soc imx6
> +loadaddr 0x10000000
> +dcdofs 0x400
> +
> +wm 32 0x020e0774 0x000C0000
> +wm 32 0x020e0754 0x00000000
> +wm 32 0x020e04ac 0x00000030
> +wm 32 0x020e04b0 0x00000030
> +wm 32 0x020e0464 0x00000030
> +wm 32 0x020e0490 0x00000030
> +wm 32 0x020e074c 0x00000030
> +wm 32 0x020e0494 0x00000030
> +wm 32 0x020e04a0 0x00000000
> +wm 32 0x020e04b4 0x00000030
> +wm 32 0x020e04b8 0x00000030
> +wm 32 0x020e076c 0x00000030
> +wm 32 0x020e0750 0x00020000
> +wm 32 0x020e04bc 0x00000030
> +wm 32 0x020e04c0 0x00000030
> +wm 32 0x020e04c4 0x00000030
> +wm 32 0x020e04c8 0x00000030
> +wm 32 0x020e0760 0x00020000
> +wm 32 0x020e0764 0x00000030
> +wm 32 0x020e0770 0x00000030
> +wm 32 0x020e0778 0x00000030
> +wm 32 0x020e077c 0x00000030
> +wm 32 0x020e0470 0x00000030
> +wm 32 0x020e0474 0x00000030
> +wm 32 0x020e0478 0x00000030
> +wm 32 0x020e047c 0x00000030
> +wm 32 0x021b0800 0xa1390003
> +wm 32 0x021b080c 0x001F001F
> +wm 32 0x021b0810 0x001F001F
> +wm 32 0x021b083c 0x42480248
> +wm 32 0x021b0840 0x022C0234
> +wm 32 0x021b0848 0x3E404244
> +wm 32 0x021b0850 0x30302C30
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b08b8 0x00000800
> +wm 32 0x021b0004 0x0002002D
> +wm 32 0x021b0008 0x00333030
> +wm 32 0x021b000c 0x3F435333
> +wm 32 0x021b0010 0xB68E8B63
> +wm 32 0x021b0014 0x01FF00DB
> +wm 32 0x021b0018 0x00001740
> +wm 32 0x021b001c 0x00008000
> +wm 32 0x021b002c 0x000026d2
> +wm 32 0x021b0030 0x00431023
> +wm 32 0x021b0040 0x00000017
> +wm 32 0x021b0000 0x83190000
> +wm 32 0x021b001c 0x04008032
> +wm 32 0x021b001c 0x00008033
> +wm 32 0x021b001c 0x00048031
> +wm 32 0x021b001c 0x05208030
> +wm 32 0x021b001c 0x04008040
> +wm 32 0x021b0020 0x00005800
> +wm 32 0x021b0818 0x00011117
> +wm 32 0x021b0004 0x0002556D
> +wm 32 0x021b0404 0x00011006
> +wm 32 0x021b001c 0x00000000
> +wm 32 0x020e0010 0xF00000CF
> +wm 32 0x020e0018 0x007F007F
> +wm 32 0x020e001c 0x007F007F
> diff --git a/arch/arm/boards/advantech-mx6/lowlevel.c b/arch/arm/boards/advantech-mx6/lowlevel.c
> new file mode 100644
> index 0000000..8921cd4
> --- /dev/null
> +++ b/arch/arm/boards/advantech-mx6/lowlevel.c
> @@ -0,0 +1,56 @@
> +/*
> + * Copyright (C) 2018 Christoph Fritz <chf.fritz@googlemail.com>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <debug_ll.h>
> +#include <common.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <image-metadata.h>
> +#include <mach/generic.h>
> +#include <mach/esdctl.h>
> +#include <mach/iomux-mx6.h>
> +#include <linux/sizes.h>
> +
> +#include <linux/sizes.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +static inline void setup_uart(void)
> +{
> +	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
> +
> +	imx6_ungate_all_peripherals();
> +
> +	imx_setup_pad(iomuxbase, MX6Q_PAD_CSI0_DAT10__UART1_TXD);
> +
> +	imx6_uart_setup_ll();
> +
> +	putc_ll('>');
> +}
> +
> +extern char __dtb_imx6dl_advantech_rom_7421_start[];
> +
> +ENTRY_FUNCTION(start_advantech_imx6dl_rom_7421, r0, r1, r2)
> +{
> +	imx6_cpu_lowlevel_init();
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +	barrier();
> +
> +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> +		setup_uart();
> +
> +	imx6q_barebox_entry(__dtb_imx6dl_advantech_rom_7421_start);
> +}
> diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
> index 62d6238..7a563a5 100644
> --- a/arch/arm/configs/imx_v7_defconfig
> +++ b/arch/arm/configs/imx_v7_defconfig
> @@ -30,6 +30,7 @@ CONFIG_MACH_UDOO=y
>  CONFIG_MACH_VARISCITE_MX6=y
>  CONFIG_MACH_GW_VENTANA=y
>  CONFIG_MACH_CM_FX6=y
> +CONFIG_MACH_ADVANTECH_ROM_742X=y
>  CONFIG_MACH_PHYTEC_PHYCORE_IMX7=y
>  CONFIG_IMX_IIM=y
>  CONFIG_IMX_IIM_FUSE_BLOW=y
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 0526a6f..f094bdb 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -7,6 +7,7 @@ endif
>  # created.
>  obj- += dummy.o
>  
> +pbl-dtb-$(CONFIG_MACH_ADVANTECH_ROM_742X) += imx6dl-advantech-rom-7421.dtb.o
>  pbl-dtb-$(CONFIG_MACH_AFI_GF) += am335x-afi-gf.dtb.o
>  pbl-dtb-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am335x-bone-common.dtb.o
>  pbl-dtb-$(CONFIG_MACH_CM_FX6) += imx6dl-cm-fx6.dtb.o imx6q-cm-fx6.dtb.o imx6q-utilite.dtb.o
> diff --git a/arch/arm/dts/imx6dl-advantech-rom-7421.dts b/arch/arm/dts/imx6dl-advantech-rom-7421.dts
> new file mode 100755
> index 0000000..1d5fd89
> --- /dev/null
> +++ b/arch/arm/dts/imx6dl-advantech-rom-7421.dts
> @@ -0,0 +1,225 @@
> +/*
> + * Copyright(c) 2018 Christoph Fritz <chf.fritz@googlemail.com>
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
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <arm/imx6dl.dtsi>
> +#include "imx6dl.dtsi"
> +
> +/ {
> +	model = "Advantech i.MX6 ROM-7421";
> +	compatible = "advantech,imx6dl-rom-7421", "fsl,imx6dl";
> +
> +	chosen {
> +		stdout-path = &uart1;
> +
> +		environment-sd2 {			/* Micro SD */
> +			compatible = "barebox,environment";
> +			device-path = &usdhc2, "partname:barebox-environment";
> +			status = "disabled";
> +		};
> +
> +		environment-sd4 {			/* eMMC */
> +			compatible = "barebox,environment";
> +			device-path = &usdhc4, "partname:barebox-environment";
> +			status = "disabled";
> +		};
> +
> +		environment-spi {			/* spi nor */
> +			compatible = "barebox,environment";
> +			device-path = &ecspi1, "partname:barebox-environment";
> +			status = "disabled";
> +		};
> +	};
> +};
> +
> +&ecspi1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi1>;
> +	fsl,spi-num-chipselects = <1>;
> +	cs-gpios = <&gpio3 19 0>;
> +	status = "okay";
> +
> +	flash: m25p80@0 {
> +		compatible = "m25p80";
> +		spi-max-frequency = <20000000>;
> +		reg = <0>;
> +		status = "okay";
> +
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		partition@0 {
> +			label = "barebox";
> +			reg = <0x0 0xe0000>;
> +		};
> +
> +		partition@e0000 {
> +			label = "barebox-environment";
> +			reg = <0xe0000 0x20000>;
> +		};
> +	};
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet1>;
> +	phy-mode = "rgmii";
> +	phy-reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
> +	fsl,magic-packet;
> +	status = "okay";
> +};
> +
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	status = "okay";
> +};
> +
> +&usbh1 {
> +	status = "okay";
> +};
> +
> +&usdhc2 {					/* Micro SD */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc2>;
> +	bus-width = <8>;
> +	cd-gpios = <&gpio2 0 0>;
> +	status = "okay";
> +
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	partition@0 {
> +		label = "barebox";
> +		reg = <0x0 0xe0000>;
> +	};
> +
> +	partition@e0000 {
> +		label = "barebox-environment";
> +		reg = <0xe0000 0x20000>;
> +	};
> +};
> +
> +&usdhc3 {					/* SD Card */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc3>;
> +	bus-width = <4>;
> +	cd-gpios = <&gpio2 1 0>;
> +	en-gpios = <&gpio2 2 0>;
> +	wp-gpios = <&gpio2 3 0>;
> +	status = "okay";
> +};
> +
> +&usdhc4 {					/* eMMC */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc4>;
> +	bus-width = <8>;
> +	non-removable;
> +	no-1-8-v;
> +	status = "okay";
> +
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	partition@0 {
> +		label = "barebox";
> +		reg = <0x0 0xe0000>;
> +	};
> +
> +	partition@e0000 {
> +		label = "barebox-environment";
> +		reg = <0xe0000 0x20000>;
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +
> +	pinctrl_ecspi1: ecspi1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_D16__ECSPI1_SCLK		0x100b1
> +			MX6QDL_PAD_EIM_D17__ECSPI1_MISO		0x100b1
> +			MX6QDL_PAD_EIM_D18__ECSPI1_MOSI		0x100b1
> +			MX6QDL_PAD_EIM_D19__GPIO3_IO19		0x80000000
> +		>;
> +	};
> +
> +	pinctrl_enet1: enet1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
> +			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
> +			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b030
> +			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b030
> +			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b030
> +			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b030
> +			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b030
> +			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b030
> +			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x0A0B1
> +			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b030
> +			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b030
> +			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b030
> +			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b030
> +			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b030
> +			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b030
> +			MX6QDL_PAD_ENET_CRS_DV__GPIO1_IO25	0x80000000
> +		>;
> +	};
> +
> +	pinctrl_uart1: uart1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_CSI0_DAT10__UART1_TX_DATA	0x1b0b1
> +			MX6QDL_PAD_CSI0_DAT11__UART1_RX_DATA	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD2_CMD__SD2_CMD		0x17059
> +			MX6QDL_PAD_SD2_CLK__SD2_CLK		0x10059
> +			MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x17059
> +			MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x17059
> +			MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x17059
> +			MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x17059
> +			MX6QDL_PAD_NANDF_D0__GPIO2_IO00		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_usdhc3: usdhc3grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x17059
> +			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x10059
> +			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x17059
> +			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17059
> +			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17059
> +			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17059
> +			MX6QDL_PAD_NANDF_D1__GPIO2_IO01		0x1b0b0
> +			MX6QDL_PAD_NANDF_D2__GPIO2_IO02		0x1b0b0
> +			MX6QDL_PAD_NANDF_D3__GPIO2_IO03		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_usdhc4: usdhc4grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD4_CMD__SD4_CMD		0x17059
> +			MX6QDL_PAD_SD4_CLK__SD4_CLK		0x10059
> +			MX6QDL_PAD_SD4_DAT0__SD4_DATA0		0x17059
> +			MX6QDL_PAD_SD4_DAT1__SD4_DATA1		0x17059
> +			MX6QDL_PAD_SD4_DAT2__SD4_DATA2		0x17059
> +			MX6QDL_PAD_SD4_DAT3__SD4_DATA3		0x17059
> +			MX6QDL_PAD_SD4_DAT4__SD4_DATA4		0x17059
> +			MX6QDL_PAD_SD4_DAT5__SD4_DATA5		0x17059
> +			MX6QDL_PAD_SD4_DAT6__SD4_DATA6		0x17059
> +			MX6QDL_PAD_SD4_DAT7__SD4_DATA7		0x17059
> +		>;
> +	};
> +};
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index eb135c3..0902ba6 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -383,6 +383,11 @@ config MACH_CM_FX6
>  	bool "CM FX6"
>  	select ARCH_IMX6
>  
> +config MACH_ADVANTECH_ROM_742X
> +	bool "Advantech ROM 742X"
> +	select ARCH_IMX6
> +	select ARM_USE_COMPRESSED_DTB
> +
>  config MACH_WARP7
>  	bool "NXP i.MX7: element 14 WaRP7 Board"
>  	select ARCH_IMX7
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index 5e0043f..131b3f2 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -465,6 +465,11 @@ CFG_start_imx6dl_eltec_hipercam.pblx.imximg = $(board)/eltec-hipercam/flash-head
>  FILE_barebox-eltec-hipercam.img = start_imx6dl_eltec_hipercam.pblx.imximg
>  image-$(CONFIG_MACH_ELTEC_HIPERCAM) += barebox-eltec-hipercam.img
>  
> +pblx-$(CONFIG_MACH_ADVANTECH_ROM_742X) += start_advantech_imx6dl_rom_7421
> +CFG_start_advantech_imx6dl_rom_7421.pblx.imximg = $(board)/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
> +FILE_barebox-advantech-imx6dl-rom-7421.img = start_advantech_imx6dl_rom_7421.pblx.imximg
> +image-$(CONFIG_MACH_ADVANTECH_ROM_742X) += barebox-advantech-imx6dl-rom-7421.img
> +
>  pblx-$(CONFIG_MACH_WARP7) += start_imx7s_element14_warp7
>  CFG_start_imx7s_element14_warp7.pblx.imximg = $(board)/element14-warp7/flash-header-mx7-warp.imxcfg
>  FILE_barebox-element14-imx7s-warp7.img = start_imx7s_element14_warp7.pblx.imximg
> -- 
> 2.1.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
