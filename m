Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22a.google.com ([2a00:1450:400c:c09::22a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f5VCv-0000js-Jg
 for barebox@lists.infradead.org; Mon, 09 Apr 2018 11:43:35 +0000
Received: by mail-wm0-x22a.google.com with SMTP id t67so18587073wmt.0
 for <barebox@lists.infradead.org>; Mon, 09 Apr 2018 04:43:22 -0700 (PDT)
Message-ID: <1523274199.3785.15.camel@googlemail.com>
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Mon, 09 Apr 2018 13:43:19 +0200
In-Reply-To: <20180406192134.bqnu3gpf2w33matc@pengutronix.de>
References: <1522934149.24545.3.camel@googlemail.com>
 <20180406192134.bqnu3gpf2w33matc@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: chf.fritz@googlemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: Add Advantech imx6 board support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Fri, 2018-04-06 at 21:21 +0200, Sascha Hauer wrote:
> Hi Christoph,
> 
> On Thu, Apr 05, 2018 at 03:15:49PM +0200, Christoph Fritz wrote:
> > +	phy_register_fixup_for_uid(0x004dd072, 0xffffffef, ar8035_phy_fixup);
> > +
> > +	switch (bootsource_get()) {
> > +	case BOOTSOURCE_MMC:
> > +		environment_path = basprintf("/chosen/environment-sd%d",
> > +					     bootsource_get_instance() + 1);
> > +		envdev = "MMC";
> > +		break;
> > +	case BOOTSOURCE_SPI:
> > +	default:
> > +		environment_path = basprintf("/chosen/environment-sd4");
> > +		envdev = "MMC";
> > +		break;
> > +	}
> > +
> > +	if (environment_path) {
> > +		ret = of_device_enable_path(environment_path);
> > +		if (ret < 0)
> > +			pr_warn("Failed to enable env partition '%s' (%d)\n",
> > +				environment_path, ret);
> > +		free(environment_path);
> > +	}
> > +
> > +	pr_notice("Using environment in %s\n", envdev);
> 
> This is always "MMC", not very informative. Maybe "eMMC" and "external
> SD"?

I'll fix that.

> 
> > +
> > +	imx6_bbu_internal_mmc_register_handler("mmc3", "/dev/mmc3",
> > +						BBU_HANDLER_FLAG_DEFAULT);
> 
> That would be the eMMC, right? For this I can recommend putting barebox
> into the boot partitions of the eMMC. Normally there are two of them
> and with imx6_bbu_internal_mmcboot_register_handler() you even get a
> robust barebox A/B update mechanism.

I'm currently using here a hybrid u-boot into barebox boot and can't use
the eMMC SLC boot-partitions without changes on the u-boot side. That's
why I kept this config.

If you really want me to go for the boot0 partition, I can adapt this in
this mainline barebox setup?

> > +
> > +	return 0;
> > +}
> > +device_initcall(advantech_mx6_devices_init);
> > diff --git a/arch/arm/boards/advantech-mx6/flash-header-advantech-rom-7421.imxcfg b/arch/arm/boards/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
> > new file mode 100644
> > index 0000000..611e06b
> > --- /dev/null
> > +++ b/arch/arm/boards/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
> > @@ -0,0 +1,73 @@
> > +soc imx6
> > +loadaddr 0x10000000
> > +dcdofs 0x400
> > +
> > +wm 32 0x020e0774 0x000C0000
> 
> [...]
> 
> > +wm 32 0x021b0004 0x0002556D
> > +wm 32 0x021b0404 0x00011006
> > +wm 32 0x021b001c 0x00000000
> 
> > +wm 32 0x020c4068 0x00C03F3F
> > +wm 32 0x020c406c 0x0030FC03
> > +wm 32 0x020c4070 0x0FFFC000
> > +wm 32 0x020c4074 0x3FF00000
> > +wm 32 0x020c4078 0x00FFF300
> > +wm 32 0x020c407c 0x0F0000C3
> > +wm 32 0x020c4080 0x000003FF
> 
> Please remove writing these clock registers here. The registers get
> overwritten in a few moments by barebox anyway. Often enough these gate
> settings disable the USB clocks and then booting this image from USB is
> no longer possible.

I'll fix that.

> 
> > +wm 32 0x020e0010 0xF00000CF
> > +wm 32 0x020e0018 0x007F007F
> > +wm 32 0x020e001c 0x007F007F
> > diff --git a/arch/arm/boards/advantech-mx6/lowlevel.c b/arch/arm/boards/advantech-mx6/lowlevel.c
> > new file mode 100644
> > index 0000000..5efb91a
> > --- /dev/null
> > +++ b/arch/arm/boards/advantech-mx6/lowlevel.c
> > @@ -0,0 +1,58 @@
> > +/*
> > + * Copyright (C) 2018 Christoph Fritz <chf.fritz@googlemail.com>
> > + *
> > + * This program is free software; you can redistribute it and/or
> > + * modify it under the terms of the GNU General Public License as
> > + * published by the Free Software Foundation; either version 2 of
> > + * the License, or (at your option) any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + */
> > +
> > +#include <debug_ll.h>
> > +#include <common.h>
> > +#include <asm/barebox-arm-head.h>
> > +#include <asm/barebox-arm.h>
> > +#include <image-metadata.h>
> > +#include <mach/generic.h>
> > +#include <mach/esdctl.h>
> > +#include <linux/sizes.h>
> > +
> > +static inline void setup_uart(void)
> > +{
> > +	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
> > +
> > +	writel(0x3, iomuxbase + 0x4c);
> > +
> > +	imx6_ungate_all_peripherals();
> > +	imx6_uart_setup_ll();
> > +
> > +	putc_ll('>');
> > +}
> > +
> > +extern char __dtb_imx6dl_advantech_rom_7421_start[];
> > +
> > +BAREBOX_IMD_TAG_STRING(advantech_imx6dl_memsize_512M, IMD_TYPE_PARAMETER,
> > +		       "memsize=512", 0);
> > +
> > +ENTRY_FUNCTION(start_advantech_imx6dl_rom_7421, r0, r1, r2)
> > +{
> > +	void *fdt;
> > +
> > +	imx6_cpu_lowlevel_init();
> > +
> > +	arm_setup_stack(0x00920000 - 8);
> > +
> > +	IMD_USED(advantech_imx6dl_memsize_512M);
> > +
> > +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> > +		setup_uart();
> > +
> > +	fdt = __dtb_imx6dl_advantech_rom_7421_start - get_runtime_offset();
> 
> Since "a43e2bbc46 ARM: return positive offset in get_runtime_offset()"
> this must be '+' get_runtime_offset();

I'll rework all that init and use imx6q_barebox_entry(fdt) instead.

> 
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <arm/imx6dl.dtsi>
> > +#include "imx6dl.dtsi"
> > +
> > +/ {
> > +	model = "Advantech i.MX6 ROM-7421";
> > +	compatible = "advantech,imx6dl-rom-7421", "fsl,imx6dl";
> > +
> > +	chosen {
> > +		linux,stdout-path = &uart1;
> 
> just stdout-path. linux,stdout-path is the old binding.

I'll fix that.

> 
> > +
> > +		environment-sd2 {			/* Micro SD */
> > +			compatible = "barebox,environment";
> > +			device-path = &usdhc2, "partname:barebox-environment";
> > +			status = "disabled";
> > +		};
> > +
> > +		environment-sd4 {			/* eMMC */
> > +			compatible = "barebox,environment";
> > +			device-path = &usdhc4, "partname:barebox-environment";
> > +			status = "disabled";
> > +		};
> > +	};
> > +};
> > +
> > +&ecspi1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_ecspi1>;
> > +	fsl,spi-num-chipselects = <1>;
> > +	cs-gpios = <&gpio3 19 0>;
> > +	status = "okay";
> > +
> > +	flash: m25p80@0 {
> > +		compatible = "m25p80";
> > +		spi-max-frequency = <20000000>;
> > +		reg = <0>;
> > +		status = "okay";
> > +
> > +		#address-cells = <1>;
> > +		#size-cells = <1>;
> > +
> > +		partition@400 {
> > +			label = "SPL";
> > +			reg = <0x400 0xa0000>;
> > +		};
> > +
> > +		partition@d0000 {
> > +			label = "MAC";
> > +			reg = <0xd0000 0x1000>;
> > +		};
> 
> What's in the free space?

It is empty.

> If you can use the space up to 0xd0000 then
> you could put a full barebox before it instead of just a SPL (I guess
> this partitioning comes from the original vendor, right?)

Yes right.

Let me change the whole layout to a simple barebox mainline default.

> 
> > +	};
> > +};
> > +
> > +&usdhc4 {					/* eMMC */
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_usdhc4>;
> > +	bus-width = <8>;
> > +	non-removable;
> > +	no-1-8-v;
> > +	status = "okay";
> > +
> > +	#address-cells = <1>;
> > +	#size-cells = <1>;
> > +
> > +	partition@400 {
> > +		label = "CRC";
> > +		reg = <0x200000 0x200>;
> > +	};
> > +
> > +	partition@600 {
> > +		label = "barebox_CRCed";
> > +		reg = <0x200200 0x96000>;
> > +	};
> > +
> > +	partition@96600 {
> > +		label = "barebox-environment";
> > +		reg = <0x296200 0x20000>;
> > +	};
> 
> the @adr in the partition names do not match the actual start of the
> partitions, this should be fixed. Overall the partitions look strange.
> Aren't barebox_CRCed and barebox-environment in somewhere in the middle
> of the device which is already occupied by the regular partitions?

In my local hybrid config regular partitions start with a big offset.

Let me change the whole layout to a simple barebox mainline default.

> 
> > +};
> > +
> > +&iomuxc {
> > +	pinctrl-names = "default";
> > +
> > +	imx6dl-advantech-rom-742 {
> 
> This additional subnode is obsolete, please remove and move the pinctrl
> nodes one level up.

I'll fix that.

> 
> > diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> > index eb135c3..e4de3d1 100644
> > --- a/arch/arm/mach-imx/Kconfig
> > +++ b/arch/arm/mach-imx/Kconfig
> > @@ -39,6 +39,7 @@ config ARCH_TEXT_BASE
> >  	default 0x4fc00000 if MACH_UDOO
> >  	default 0x4fc00000 if MACH_VARISCITE_MX6
> >  	default 0x4fc00000 if MACH_PHYTEC_SOM_IMX6
> > +	default 0x4fc00000 if MACH_ADVANTECH_ROM_742X
> 
> You shouldn't need this.

I'll fix that.

Thanks
 -- Christoph


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
